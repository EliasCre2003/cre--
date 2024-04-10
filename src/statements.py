from math import e
from emit import Opcode
from lex import Token, TokenType
from parse import Parser
from emit import Emitter



class Statement:
    def __init__(self, tokens: list[Token], parser: Parser):
        self.tokens: list[Token] = tokens
        self.parser: Parser = parser
        self.emitter: Emitter = parser.emitter

    def check_validity(self) -> bool:
        pass
    
    def emit(self) -> bool:
        pass


class Expression(Statement):
    def __init__(self, tokens: list[Token], parser: Parser):
        super().__init__(tokens, parser)

    def check_validity(self) -> bool:
        for i in range(0, len(self.tokens), 2):
            if self.tokens[i].type not in [TokenType.NUMBER, TokenType.CHARACTER, TokenType.IDENT]:
                return False
            if self.tokens[i].type == TokenType.IDENT:
                if self.tokens[i].text not in self.parser.symbols:
                    return False
            if i == len(self.tokens) - 1:
                break
            if self.tokens[i+1].type not in [TokenType.PLUS, TokenType.MINUS]:
                return False
        return True
    
    def emit(self, pair_offset: int = 0) -> bool:
        if not self.simplify():
            return False
        next_opperation = None
        for i in range(0, len(self.tokens), 2):
            if i == 0:
                pair = pair_offset
            else:
                pair = pair_offset + 1
            token = self.tokens[i]
            if token.type == TokenType.NUMBER:
                self.emitter.emit_instruction(Opcode.FIM, f"P{pair}", int(token.text))
            elif token.type == TokenType.CHARACTER:
                self.emitter.emit_instruction(Opcode.FIM, f"P{pair}", ord(token.text))
            elif token.type == TokenType.IDENT:
                variable = self.parser.symbols[token.text]
                if variable[1] in [TokenType.INT8, TokenType.CHAR]:
                    self.parser.routine_handler.load_to_pair(variable[0], pair)
                elif variable[1] == TokenType.INT4:
                    self.emitter.emit_instruction(Opcode.FIM, f"P{pair}", 0)
                    self.parser.routine_handler.load_to_reg(variable[0], 2*pair+1)
            if i == 0:
                if len(self.tokens) == 1:
                    break
                next_opperation = self.tokens[i+1].type
                continue
            self.parser.routine_handler.opperation_pair_pair(pair_offset+1, pair_offset, next_opperation)
            if i == len(self.tokens) - 1:
                break
            next_opperation = self.tokens[i+1].type
        return True
    
    def simplify(self) -> bool:
        if not self.check_validity():
            return False
        i = 0
        while i < len(self.tokens) - 2:    
            a, b = i, i+2
            if self.tokens[a].type != TokenType.NUMBER:
                i += 2
                continue
            while self.tokens[b].type != TokenType.NUMBER:
                b += 2
                if b > len(self.tokens) - 1:
                    break
            if b > len(self.tokens) - 1:
                break
            if self.tokens[b-1].type == TokenType.PLUS:
                self.tokens[a].text = str(int(self.tokens[a].text) + int(self.tokens[b].text))
            else:
                self.tokens[a].text = str(int(self.tokens[a].text) - int(self.tokens[b].text))
            self.tokens.pop(b-1)
            self.tokens.pop(b-1)
        return True
        

class Assignment(Statement):

    # Edge case:
    DECLARETION = 1

    def __init__(self, tokens: list[Token], parser: Parser):
        super().__init__(tokens, parser)
        self.expression: Expression = Expression(self.tokens[2:], self.parser)

    def check_validity(self, edge_case: int = 0) -> bool:
        if len(self.tokens) < 3:
            return False
        if self.tokens[0].type != TokenType.IDENT or self.tokens[1].type != TokenType.EQ:
            return False
        if self.tokens[0].text not in self.parser.symbols and edge_case != Assignment.DECLARETION:
            return False
        return self.expression.check_validity()  
    
    def emit(self) -> bool:
        if not self.check_validity():
            return False
        self.expression.emit()
        variable = self.parser.symbols[self.tokens[0].text]
        if variable[1] in [TokenType.INT8, TokenType.CHAR]:          
            self.parser.routine_handler.save_from_pair(variable[0], 0)
        elif variable[1] == TokenType.INT4:
            self.parser.routine_handler.save_from_reg(variable[0], 1)
        return True
        

class Declaretion(Statement):
    def __init__(self, tokens: list[Token], parser: Parser):
        super().__init__(tokens, parser)
        if len(self.tokens) > 3 and self.tokens[0].type != TokenType.OPENBRACKET:
            self.assignment: Assignment = Assignment(self.tokens[1:], self.parser)
        else:
            self.assignment: Assignment = None
    
    def check_validity(self) -> bool:
        if len(self.tokens) < 2:
            return False                                # No tokens
        if self.tokens[0].type not in [TokenType.INT8, TokenType.INT4, TokenType.CHAR, TokenType.OPENBRACKET]:
            return False                                # No type
        if self.tokens[0].type == TokenType.OPENBRACKET:    # Array variable
            if len(self.tokens) != 6:
                return False                            # Invalid number of tokens
            if self.tokens[1].type not in [TokenType.INT8, TokenType.INT4, TokenType.CHAR]:
                return False                            # No type
            if self.tokens[2].type != TokenType.COMMA:
                return False                            # No comma
            if self.tokens[3].type != TokenType.NUMBER:
                return False                        # No size
            if int(self.tokens[3].text) > 256 and self.tokens[1].type == TokenType.INT4:
                return False                            # Size too large
            if int(self.tokens[3].text) > 128 and self.tokens[1].type in [TokenType.INT8, TokenType.CHAR]:
                return False                            # Size too large
            if self.tokens[4].type != TokenType.CLOSEBRACKET:
                return False                            # No closing bracket
            if self.tokens[5].type != TokenType.IDENT:
                return False                            # No variable name
            if self.tokens[5].text in self.parser.symbols:
                return False                            # Variable already declared
            return True
        else:       # Normal variablem
            if self.tokens[1].type != TokenType.IDENT:
                return False                                # No variable name
            if self.tokens[1].text in self.parser.symbols:
                return False                                # Variable already declared
            if len(self.tokens) == 2:
                return True                                 # No assignment, EX: int8 a;
            if self.tokens[2] == TokenType.EQ:
                return self.assignment.check_validity(Assignment.DECLARETION)     # Assignment, EX: int8 a = 5;
    
    def emit(self) -> bool:
        self.check_validity()
        if self.tokens[0].type == TokenType.OPENBRACKET:
            datatype = self.tokens[1].type
            size = int(self.tokens[3].text)     # TODO: Add support for compile time expressions
            variable_name = self.tokens[5].text
        else:
            datatype = self.tokens[0].type
            size = 1
            variable_name = self.tokens[1].text
        address = self.parser.heap.add_variable(datatype, size)
        self.parser.symbols[variable_name] = (address, datatype)
        if self.assignment is not None:
            return self.assignment.emit()
        return True


class Comparision(Statement):
    def __init__(self, tokens: list[Token], parser: Parser):
        super().__init__(tokens, parser)
        for i in range(len(self.tokens)):
            if 250 <= self.tokens[i].type.value <= 260:
                self.opperation = self.tokens[i].type
                break
        else:
            self.parser.abort("Invalid comparision.")
        self.expression1 = Expression(self.tokens[:i], self.parser)
        self.expression2 = Expression(self.tokens[i+1:], self.parser)
    
    def check_validity(self) -> bool: 
        return self.expression1.check_validity() and self.expression2.check_validity()
    
    # C1 = 0 Do not invert jump condition
    # C1 = 1 Invert jump condition
    # C2 = 1 Jump if the accumulator content is zero
    # C3 = 1 Jump if the carry/link content is 1
    # C4 = 1 Jump if test signal (pin 10 on 4004) is zero.
    def emit(self) -> bool:
        if not self.check_validity():
            return False
        # self.emitter.emit_instruction(Opcode.FIM, Opcode.P0, 0x0)
        self.expression1.emit(0)
        # self.emitter.emit_instruction(Opcode.FIM, Opcode.P1, 0x0)
        self.expression2.emit(1)
        self.parser.routine_handler.opperation_reg_to_reg_in_acc(0, 2, TokenType.MINUS)
        match self.opperation:
            case TokenType.EQEQ:
                self.emitter.emit_instruction(Opcode.JCN, "0b1100", self.emitter.generate_next_long_label())
                self.parser.routine_handler.opperation_reg_to_reg_in_acc(1, 3, TokenType.MINUS)
                self.emitter.emit_instruction(Opcode.JCN, "0b1100", self.emitter.peek_next_label())
            case TokenType.NOTEQ:
                self.emitter.emit_instruction(Opcode.JCN, "0b1100", self.emitter.generate_next_long_label())
                self.parser.routine_handler.opperation_reg_to_reg_in_acc(1, 3, TokenType.MINUS)
                self.emitter.emit_instruction(Opcode.JCN, "0b0100", self.emitter.peek_next_label())
            case TokenType.LT:
                self.emitter.emit_instruction(Opcode.JCN, "0b1110", self.emitter.generate_next_long_label())
                self.emitter.emit_instruction(Opcode.JCN, "0b0010", self.emitter.generate_next_long_label())
                self.parser.routine_handler.opperation_reg_to_reg_in_acc(1, 3, TokenType.MINUS)
                self.emitter.emit_instruction(Opcode.JCN, "0b1010", self.emitter.peek_next_label(2))
                self.emitter.emit_label(self.emitter.get_next_label())
            case TokenType.LTEQ:
                self.emitter.emit_instruction(Opcode.JCN, "0b1110", self.emitter.generate_next_long_label())
                self.emitter.emit_instruction(Opcode.JCN, "0b0010", self.emitter.generate_next_long_label())
                self.parser.routine_handler.opperation_reg_to_reg_in_acc(1, 3, TokenType.MINUS)
                self.emitter.emit_instruction(Opcode.JCN, "0b1110", self.emitter.peek_next_label(2))
                self.emitter.emit_label(self.emitter.get_next_label())
            case TokenType.GT:
                self.emitter.emit_instruction(Opcode.JCN, "0b0010", self.emitter.generate_next_long_label())
                self.emitter.emit_instruction(Opcode.JCN, "0b1110", self.emitter.generate_next_long_label())
                self.parser.routine_handler.opperation_reg_to_reg_in_acc(1, 3, TokenType.MINUS)
                self.emitter.emit_instruction(Opcode.JCN, "0b0110", self.emitter.peek_next_label(2))
                self.emitter.emit_label(self.emitter.get_next_label())
            case TokenType.GTEQ:
                self.emitter.emit_instruction(Opcode.JCN, "0b0010", self.emitter.generate_next_long_label())
                self.emitter.emit_instruction(Opcode.JCN, "0b1110", self.emitter.generate_next_long_label())
                self.parser.routine_handler.opperation_reg_to_reg_in_acc(1, 3, TokenType.MINUS)
                self.emitter.emit_instruction(Opcode.JCN, "0b0010", self.emitter.peek_next_label(2))
                self.emitter.emit_label(self.emitter.get_next_label())
            case _:
                return False
        return True


class If(Statement):
    def __init__(self, tokens: list[Token], parser: Parser):
        super().__init__(tokens, parser)
        self.comparision = Comparision(self.tokens[1:-1], self.parser)
        self.memory_pointer_vals = self.parser.routine_handler.memory_control, self.parser.routine_handler.heap_pointer
    
    def check_validity(self) -> bool:
        return self.tokens[0].type == TokenType.IF and self.tokens[-1].type == TokenType.OPENBODY and self.comparision.check_validity()
    
    def emit(self) -> bool:
        if not self.check_validity():
            return False
        self.comparision.emit()
        return True
    
    def match_memory_pointer_vals(self) -> None:
        if not self.memory_pointer_vals == (self.parser.routine_handler.memory_control, self.parser.routine_handler.heap_pointer):
            self.parser.routine_handler.memory_control, self.parser.routine_handler.heap_pointer = -1, -1


class While(Statement):
    def __init__(self, tokens: list[Token], parser: Parser):
        super().__init__(tokens, parser)
        self.comparision: Comparision = Comparision(self.tokens[1:-1], self.parser)
        self.top_label: str = None
        self.memory_pointer_vals = self.parser.routine_handler.memory_control, self.parser.routine_handler.heap_pointer

    def check_validity(self) -> bool:
        return self.tokens[0].type == TokenType.WHILE and self.tokens[-1].type == TokenType.OPENBODY and self.comparision.check_validity()
    
    def emit(self) -> bool:
        if not self.check_validity():
            return False
        self.emitter.emit_label(self.top_label)
        self.comparision.emit()
        return True

    def match_memory_pointer_vals(self) -> None:
        if self.memory_pointer_vals != (self.parser.routine_handler.memory_control, self.parser.routine_handler.heap_pointer):
            self.parser.routine_handler.memory_control, self.parser.routine_handler.heap_pointer = -1, -1