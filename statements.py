from lex import Token, TokenType
from parse import Parser

class Statement:
    def __init__(self, tokens: list[Token], parser: Parser):
        self.tokens: list[Token] = tokens
        self.parser: Parser = parser

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
    
    def emit(self, pair_offset: int = 0, skip_last: bool = False) -> bool:
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
                num_text:str = f"0x{hex(int(token.text) % 256)[2:].upper()}"
                self.parser.emitter.emit_line(f"FIM P{pair} {num_text}")
            elif token.type == TokenType.CHARACTER:
                self.parser.emitter.emit_line(f"FIM P{pair} {ord(token.text)}")
            elif token.type == TokenType.IDENT:
                variable = self.parser.symbols[token.text]
                if variable[1] in [TokenType.INT8, TokenType.CHAR]:
                    self.parser.load_to_pair(variable[0], pair)
                elif variable[1] == TokenType.INT4:
                    self.parser.load_to_reg(variable[0], 2*pair+1)
            if i == 0:
                if len(self.tokens) == 1:
                    break
                next_opperation = self.tokens[i+1].type
                continue
            self.parser.opperation_pair_pair(pair_offset+1, pair_offset, next_opperation, skip_last)
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
            self.parser.save_from_pair(variable[0], 0)
        elif variable[1] == TokenType.INT4:
            self.parser.save_from_reg(variable[0], 1)
        return True
        

class Declaretion(Statement):
    def __init__(self, tokens: list[Token], parser: Parser):
        super().__init__(tokens, parser)
        if len(self.tokens) > 3:
            self.assignment: Assignment = Assignment(self.tokens[1:], self.parser)
        else:
            self.assignment: Assignment = None
    
    def check_validity(self) -> bool:
        if len(self.tokens) < 2:
            return False                                # No tokens
        if self.tokens[0].type not in [TokenType.INT8, TokenType.INT4, TokenType.CHAR]:
            return False                                # No type
        if self.tokens[1].type != TokenType.IDENT:
            return False                                # No variable name
        if self.tokens[1].text in self.parser.symbols:
            return False                                # Variable already declared
        if self.tokens[2] == TokenType.EQ:
            return self.assignment.check_validity(Assignment.DECLARETION)     # Assignment, EX: int8 a = 5;
        return True                                     # No assigmnent, EX: int8 a;
    
    def emit(self) -> bool:
        self.check_validity()
        address = self.parser.heap.add_variable(self.tokens[0].type)
        self.parser.symbols[self.tokens[1].text] = (address, self.tokens[0].type)
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
    
    def emit(self) -> bool:
        if not self.check_validity():
            return False
        self.expression1.emit(0)
        self.expression2.emit(1)
        self.parser.sub_pair_from_pair(0, 1)
        match self.opperation:
            case TokenType.EQ:
                condition = "0b1100"
            case TokenType.NOTEQ:
                condition = "0b0100"
            case TokenType.LT:
                condition = "0b1010"
            case TokenType.LTEQ:
                condition = "0b1110"
            case TokenType.GT:
                condition = "0b0110"
            case TokenType.GTEQ:
                condition = "0b0010"
            case _:
                return False
        self.parser.emitter.emit_line(f"JCN {condition} {self.parser.generate_next_label()}")
        return True
    

class If(Statement):
    def __init__(self, tokens: list[Token], parser: Parser):
        super().__init__(tokens, parser)
        self.comparision = Comparision(self.tokens[1:-1], self.parser)
    
    def check_validity(self) -> bool:
        return self.tokens[0].type == TokenType.IF and self.tokens[-1].type == TokenType.OPENBODY and self.comparision.check_validity()
    
    def emit(self) -> bool:
        if not self.check_validity():
            return False
        self.comparision.emit()
        return True


class While(Statement):
    def __init__(self, tokens: list[Token], parser: Parser):
        super().__init__(tokens, parser)
        self.comparision = Comparision(self.tokens[1:-1], self.parser)

    def check_validity(self) -> bool:
        return self.tokens[0].type == TokenType.WHILE and self.tokens[-1].type == TokenType.OPENBODY and self.comparision.check_validity()
    
    def emit(self) -> bool:
        if not self.check_validity():
            return False
        # outside_label = self.parser.get_next_label()
        # self.parser.open_scope()
        # self.parser.emitter.emit_line(self.parser.get_next_label())
        # self.comparision.emit()
        return True