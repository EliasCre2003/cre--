from emit import *
from lex import *

class Routine:
    def __init__(self, function, *args):
        self.function = function
        self.args = args

    def execute(self):
        self.function(*self.args)

    def __eq__(self, routine: "Routine") -> bool:
        return self.function == routine.function and self.args == routine.args


class RoutineHandler:
    def __init__(self, emitter: Emitter):
        self.emitter: Emitter = emitter
        self.routines: list[Routine] = []
        self.routine_labels: list[str] = []
        self.emit_state: bool = False
        self.heap_pointer: int = 0
        self.memory_control: int = 0
        self.routine_label_counter: int = 0
    
    def add_routine(self, routine: Routine) -> bool:
        label = f"SR{self.routine_label_counter}"
        if routine in self.routines:
            label = self.routine_labels[self.routines.index(routine)]
            self.emitter.emit_instruction(Opcode.JMS, label)
            return False
        self.routines.append(routine)
        self.routine_labels.append(label)
        self.routine_label_counter += 1
        self.emitter.emit_instruction(Opcode.JMS, label)
        return True

    def abort(self, message: str) -> None:
        sys.exit(f"Parser error. {message}")

    def select_word_in_memory(self, address: int | None = None):
        if self.emit_state:
            self.emitter.emit_instruction(Opcode.LD, Opcode.R13)
            self.emitter.emit_instruction(Opcode.DCL)
            self.emitter.emit_instruction(Opcode.SRC, Opcode.P7)
            return 
        if address is None:
            self.heap_pointer, self.memory_control = -1, -1
        elif self.memory_control == address >> 8 and address & 0xFF == self.heap_pointer:
            return
        else:
            if (address >> 8 != self.memory_control):
                self.memory_control = address >> 8
                self.emitter.emit_instruction(Opcode.FIM, Opcode.P6, self.memory_control)
            if address & 0xFF != self.heap_pointer:
                self.heap_pointer = address & 0xFF
                self.emitter.emit_instruction(Opcode.FIM, Opcode.P7, self.heap_pointer)
        self.add_routine(Routine(self.select_word_in_memory, None))
    
    def load_to_reg(self, address: int | None, reg: int) -> None:
        if self.emit_state:
            self.emitter.emit_instruction(Opcode.RDM)
            self.emitter.emit_instruction(Opcode.XCH, f"R{reg}")
            return
        if reg < 0 or reg > 15:
            self.abort(f"Invalid register number: {reg}")
        self.select_word_in_memory(address)
        self.add_routine(Routine(self.load_to_reg, None, reg))
        

    def save_from_reg(self, address: int | None, reg: int) -> None:
        if self.emit_state:
            self.emitter.emit_instruction(Opcode.LD, f"R{reg}")
            self.emitter.emit_instruction(Opcode.WRM)
            return
        if reg < 0 or reg > 15:
            self.abort(f"Invalid register number: {reg}")
        self.select_word_in_memory(address)
        self.add_routine(Routine(self.save_from_reg, None, reg))

    def load_to_pair(self, address: int, pair: int) -> None:
        if pair < 0 or pair > 7:
            self.abort(f"Invalid pair number: {pair}")
        reg = pair * 2
        self.load_to_reg(address, reg)
        if address is None:
            self.emitter.emit_instruction(Opcode.INC, Opcode.R15)
            self.select_word_in_memory()
            self.load_to_reg(None, reg + 1)
        else:
            self.load_to_reg(address + 1, reg + 1)
    
    def save_from_pair(self, address: int | None, pair: int) -> None:
        if pair < 0 or pair > 7:
            self.abort(f"Invalid pair number: {pair}")
        reg = pair * 2
        self.save_from_reg(address, reg)
        if address is None:
            self.emitter.emit_instruction(Opcode.INC, Opcode.R15)
            self.select_word_in_memory()
            self.save_from_reg(None, reg + 1)
        else:
            self.save_from_reg(address + 1, reg + 1)


    # Cannot be made into a sub-routine as the content in the accumulator has to be preserved.
    def opperation_reg_to_reg_in_acc(self, reg1: int, reg2: int, opperation: TokenType) -> None:
        if reg1 == reg2:
            self.abort(f"Cannot add a register to itself.")
        if reg1 < 0 or reg1 > 15 or reg2 < 0 or reg2 > 15:
            self.abort(f"Invalid register number: {reg1} or {reg2}")
        if opperation == TokenType.PLUS:
            opcode = Opcode.ADD
        elif opperation == TokenType.MINUS:
            opcode = Opcode.SUB
        else:
            self.abort(f"Invalid opperation: {opperation}")
        self.emitter.emit_instruction(Opcode.LD, f"R{reg1}")
        self.emitter.emit_instruction(opcode, f"R{reg2}")


    def opperation_reg_to_reg(self, reg1: int, reg2: int, opperation: TokenType) -> None:
        if self.emit_state:
            self.opperation_reg_to_reg_in_acc(reg1, reg2, opperation)
            self.emitter.emit_instruction(Opcode.XCH, f"R{reg1}")
        else:
            self.add_routine(Routine(self.opperation_reg_to_reg, reg1, reg2, opperation))
    
    def opperation_reg_to_pair(self, pair: int, reg: int, opperation: TokenType) -> None:
        if self.emit_state:
            pair = pair*2, pair*2+1
            self.opperation_reg_to_reg(pair[1], reg, opperation)
            self.emitter.emit_instruction(Opcode.JCN, '0b1010', self.emitter.generate_next_long_label())
            if opperation == TokenType.PLUS:
                opcode = Opcode.IAC
            elif opperation == TokenType.MINUS:
                opcode = Opcode.DAC
            else:
                self.abort(f"Invalid opperation: {opperation}")
            self.emitter.emit_instruction(Opcode.LD, f"R{pair[0]}")
            self.emitter.emit_instruction(opcode)
            self.emitter.emit_instruction(Opcode.XCH, f"R{pair[0]}")
            self.emitter.emit_label(self.emitter.get_next_label())
            return
        if pair < 0 or pair > 7 or reg < 0 or reg > 15:
            self.abort(f"Invalid pair number: {pair} or register number: {reg}")
        self.add_routine(Routine(self.opperation_reg_to_pair, pair, reg, opperation))
        
    
    def opperation_pair_pair(self, pair1: int, pair2: int, opperation: TokenType) -> None:
        if pair1 == pair2:
            self.abort(f"Cannot add a pair to itself.")
        if pair1 < 0 or pair1 > 7 or pair2 < 0 or pair2 > 7:
            self.abort(f"Invalid pair number: {pair1} or {pair2}")
        pair1 = pair1*2, pair1*2+1
        self.opperation_reg_to_pair(pair2, pair1[1], opperation)
        self.opperation_reg_to_reg(pair2*2, pair1[0], opperation)

    def twelve_bit_add(self, pair1: int, pair2: int, carry_reg: int) -> None:
        if self.emit_state:
            pair1 = pair1*2, pair1*2+1
            pair2 = pair2*2, pair2*2+1
            self.add_reg_to_reg(pair1[1], pair2[1])
            label = self.emitter.generate_next_long_label()
            self.emitter.emit_instruction(Opcode.JCN, '0b1010', label)
            self.emitter.emit_instruction(Opcode.ISZ, f"R{pair1[0]}", label)
            self.emitter.emit_instruction(Opcode.INC, f"R{carry_reg}")
            self.emitter.emit_label(self.emitter.get_next_label())
            self.add_reg_to_reg(pair1[0], pair2[0])
            self.emitter.emit_instruction(Opcode.JCN, '0b1010', self.emitter.generate_next_long_label())
            self.emitter.emit_instruction(Opcode.INC, carry_reg)
            self.emitter.emit_label(self.emitter.get_next_label())
            return
        if pair1 == pair2:
            self.abort(f"Cannot add a pair to itself.")
        if pair1 < 0 or pair1 > 7 or pair2 < 0 or pair2 > 7:
            self.abort(f"Invalid pair number: {pair1} or {pair2}")
        if carry_reg in [pair1*2, pair1*2+1, pair2*2, pair2*2+1]:
            self.abort(f"Carry register cannot be in the pair.")
        self.add_routine(Routine(self.twelve_bit_add, pair1, pair2, carry_reg))
        

    def add_reg_to_reg(self, reg1: int, reg2: int) -> None:
        self.opperation_reg_to_reg(reg1, reg2, TokenType.PLUS)

    def add_reg_to_pair(self, pair: int, reg: int) -> None:
        self.opperation_reg_to_pair(pair, reg, TokenType.PLUS)
    
    def add_pair_to_pair(self, pair1: int, pair2: int) -> None:
        self.opperation_pair_pair(pair1, pair2, TokenType.PLUS)

    def sub_reg_from_reg(self, reg1: int, reg2: int) -> None:
        self.opperation_reg_to_reg(reg1, reg2, TokenType.MINUS)

    def sub_reg_from_pair(self, pair: int, reg: int) -> None:
        self.opperation_reg_to_pair(pair, reg, TokenType.MINUS)
    
    def sub_pair_from_pair(self, pair1: int, pair2: int) -> None:
        self.opperation_pair_pair(pair1, pair2, TokenType.MINUS)

    def load_reg_to_reg(self, reg1: int, reg2: int) -> None:
        if reg1 < 0 or reg1 > 15 or reg2 < 0 or reg2 > 15:
            self.abort(f"Invalid register number: {reg1} or {reg2}")
        self.emitter.emit_instruction(Opcode.LD, f"R{reg1}")
        self.emitter.emit_instruction(Opcode.XCH, f"R{reg2}")

    def load_pair_to_pair(self, pair1: int, pair2: int) -> None:
        if pair1 < 0 or pair1 > 7 or pair2 < 0 or pair2 > 7:
            self.abort(f"Invalid pair number: {pair1} or {pair2}")
        pair1 = pair1*2, pair1*2+1
        pair2 = pair2*2, pair2*2+1
        self.load_reg_to_reg(pair1[0], pair2[0])
        self.load_reg_to_reg(pair1[1], pair2[1])
    
    def increment_reg(self, reg: int) -> None:
        if reg < 0 or reg > 15:
            self.abort(f"Invalid register number: {reg}")
        self.emitter.emit_instruction(Opcode.INC, f"R{reg}")

    def decrement_reg(self, reg: int) -> None:
        if self.emit_state:
            self.emitter.emit_instruction(Opcode.LD, f"R{reg}")
            self.emitter.emit_instruction(Opcode.DAC)
            self.emitter.emit_instruction(Opcode.XCH, f"R{reg}")
        if reg < 0 or reg > 15:
            self.abort(f"Invalid register number: {reg}")
        self.add_routine(Routine(self.decrement_reg, reg))
    
    def increment_pair(self, pair: int) -> None:
        if pair < 0 or pair > 7:
            self.abort(f"Invalid pair number: {pair}")
        pair = pair*2, pair*2+1
        self.emitter.emit_instruction(Opcode.ISZ, f"R{pair[1]}", self.emitter.generate_next_long_label())
        self.emitter.emit_instruction(Opcode.INC, f"R{pair[0]}")
        self.emitter.emit_label(self.emitter.get_next_label())

    def decrement_pair(self, pair: int) -> None:
        if self.emit_state:
            pair = pair*2, pair*2+1
            self.decrement_reg(pair[1])
            self.emitter.emit_instruction(Opcode.JCN, '0b1010', self.emitter.generate_next_long_label())
            self.decrement_reg(pair[0])
            self.emitter.emit_label(self.emitter.get_next_label())
        if pair < 0 or pair > 7:
            self.abort(f"Invalid pair number: {pair}")
        self.add_routine(Routine(self.decrement_pair, pair))

    def shift_reg(self, reg: int, left: bool, with_carry: bool = False) -> None:
        if self.emit_state:
            if not with_carry:
                self.emitter.emit_instruction(Opcode.CLC)
            self.emitter.emit_instruction(Opcode.LD, f"R{reg}")
            if left:
                self.emitter.emit_instruction(Opcode.RAL)
            else:
                self.emitter.emit_instruction(Opcode.RAR)
            self.emitter.emit_instruction(Opcode.XCH, f"R{reg}")
        if reg < 0 or reg > 15:
            self.abort(f"Invalid register number: {reg}")
        self.add_routine(Routine(self.rshift_reg, reg, left, with_carry))

    def rshift_reg(self, reg: int) -> None:
        self.shift_reg(reg, left=False)

    def lshift_reg(self, reg: int) -> None:
        self.shift_reg(reg, right=True)

    def rshift_pair(self, pair: int) -> None:
        if pair < 0 or pair > 7:
            self.abort(f"Invalid pair number: {pair}")
        pair = pair*2, pair*2+1
        self.shift_reg(pair[0], left=False)
        self.shift_reg(pair[1], left=False, with_carry=True)
    
    def lshift_pair(self, pair: int) -> None:
        if pair < 0 or pair > 7:
            self.abort(f"Invalid pair number: {pair}")
        pair = pair*2, pair*2+1
        self.shift_reg(pair[1], left=True)
        self.shift_reg(pair[0], left=True, with_carry=True)

    def emit(self):
        self.emit_state = True
        for routine, label in zip(self.routines, self.routine_labels):
            self.emitter.emit(f"\n; {routine.function.__name__}")
            self.emitter.emit_label(label)
            routine.execute()
            self.emitter.emit_instruction(Opcode.BBL, 0)