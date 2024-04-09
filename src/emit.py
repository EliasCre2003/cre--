# Emitter object keeps track of the generated code and outputs it.

from enum import Enum


class Opcode(Enum):
    # Single word instructions
    NOP = 0
    FIN = 1
    JIN = 2
    INC = 3
    ADD = 4
    SUB = 5
    LD  = 6
    XCH = 7
    BBL = 8
    LDM = 9
    CLB = 10
    CLC = 11
    IAC = 12
    CMC = 13    
    CMA = 14
    RAL = 15
    RAR = 16
    TCC = 17
    DAC = 18
    TCS = 19
    STC = 20
    DAA = 21
    KBP = 22
    DCL = 23
    SRC = 24
    WRM = 25
    WMP = 26
    WRR = 27
    WPM = 28
    WR0 = 29
    WR1 = 30
    WR2 = 31
    WR3 = 32
    SBM = 33
    RDM = 34
    RDR = 35
    ADM = 36
    RD0 = 37
    RD1 = 38
    RD2 = 39
    RD3 = 40

    # Two word instructions
    JCN = 100
    FIM = 101
    JUN = 102
    JMS = 103
    ISZ = 104

    # Pairs
    P0 = 200
    P1 = 201
    P2 = 202
    P3 = 203
    P4 = 204
    P5 = 205
    P6 = 206
    P7 = 207

    # Registers
    R0 = 300
    R1 = 301
    R2 = 302
    R3 = 303
    R4 = 304
    R5 = 305
    R6 = 306
    R7 = 307
    R8 = 308
    R9 = 309
    R10 = 310
    R11 = 311
    R12 = 312
    R13 = 313
    R14 = 314
    R15 = 315


class Emitter:
    def __init__(self, full_path: str):
        self.full_path: str = full_path
        self.code: str = ""
        self.page_address: int = 0
        self.page: int = 0
        self.label_stack: list[str] = []
        self.short_label_stack: list[str] = []
        self.label_counter: int = 0

    
    def emit(self, code: str) -> None:
        self.code += code

    def emit_instruction(self, opcode: Opcode, arg1: int | str | Opcode = None, arg2: int | str = None) -> bool:
        if not isinstance(opcode, Opcode) or opcode is None:
            return False
        prev_page_address = (self.page << 8) | self.page_address
        self.page_address += 1
        if 100 <= opcode.value <= 104:
            self.page_address += 1
        if self.handle_page_support() != -1:
            prev_page_address = (self.page << 8) | self.page_address
        opcode = opcode.name.ljust(3, ' ')
        if arg1 is None:
            arg1 = ""
        elif isinstance(arg1, Opcode) and 200 <= arg1.value <= 315 :
            arg1 = arg1.name
        elif not (isinstance(arg1, int) or isinstance(arg1, str)):
            return False
        if arg2 is None:
            arg2 = ""
        elif not (isinstance(arg2, int) or isinstance(arg1, str)):
            return False
        if isinstance(arg1, int):
            arg1 = Emitter.hexadecimal(arg1)
        if isinstance(arg2, int):
            arg2 = Emitter.hexadecimal(arg2)
        line = f"{opcode} {arg1.rjust(6, ' ')} {arg2.rjust(6, ' ')} ; 0x{hex(prev_page_address)[2:].rjust(3, '0')}"
        self.emit_line(line)
        return True
    
    def handle_page_support(self) -> int:
        if (overshoot := (254 - len(self.label_stack) - self.page_address)) > 0:
            return -1
        self.page_address = 0
        self.page += 1
        if len(self.label_stack) == 0:
            return -1
        page_top_label = self.generate_long_label()
        self.emit_line(f"JUN {page_top_label}")
        temp_stack = self.label_stack.copy()
        self.label_stack.clear()
        while len(temp_stack) > 0:
            label = temp_stack.pop()
            self.emit_label(label)
            self.emit_line(f"JUN {self.generate_next_long_label()}")
        self.label_stack.reverse()
        if overshoot == -1:
            self.emit_line("NOP")
        self.emit_label(page_top_label)
        return -overshoot
    
    def emit_label(self, label: str) -> None:
        self.code += f"\n{label},\n"
            
    
    def emit_line(self, code: str) -> None:
        self.code += f"    {code}\n"
    
    def write_file(self) -> None:
        with open(self.full_path, 'w') as f:
            f.write(self.code)

    def generate_long_label(self) -> str:
        label = f"L{self.label_counter}"
        self.label_counter += 1
        return label
    
    def peek_next_label(self, depth: int = 1) -> str:
        return self.label_stack[-depth]
    
    def generate_next_long_label(self) -> str:
        label = self.generate_long_label()
        self.label_stack.append(label)
        return label
    
    def generate_next_short_label(self) -> str:
        label = f"S{self.label_counter}"
        self.label_counter += 1
        self.label_stack.append(label)
        self.short_label_stack.append(label)
        return label
    
    def get_next_label(self) -> str:
        label = self.label_stack.pop()
        if label in self.short_label_stack:
            self.short_label_stack.remove(label)
        return label
    
    def get_label(self, depth: int = 1) -> str:
        return self.label_stack.pop(-depth)
    
    @staticmethod
    def hexadecimal(num: int, length: int = 2) -> str:
        return f"0x{hex(num)[2:].rjust(length, '0')}"