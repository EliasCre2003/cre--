from os import close
import sys

from lex import *
from emit import *
from heap import *

# Parser object keeps track of current token and checks if the code matches the grammar.
class Parser:
    def __init__(self, lexer: Lexer, emitter: Emitter, heap: Heap):
        self.lexer: Lexer = lexer
        self.emitter: Emitter = emitter
        self.heap: Heap = heap

        self.heap_pointer: int = 0
        self.memory_control: int = 0

        self.symbols: dict[str, tuple[int, TokenType]] = {}   # Variables declared so far. {symbol: (address, type)}
        self.labels_declared: set = set()
        self.labels_gotoed: set = set()

        self.label_stack: list[str] = []
        self.label_counter: int = 0

        self.scopes: list["Statement"] = []

        self.cur_token: Token = None
        self.peek_token: Token = None
        self.next_token(); self.next_token()    # Call this twice to initialize current and peek.

    # Return true if the current token matches.
    def check_token(self, type: TokenType) -> bool:
        return type == self.cur_token.type

    # Return true if the next token matches.
    def check_peek(self, type: TokenType) -> bool:
        return type == self.peek_token.type
    
    # Try to match current token. If not, error. Advances the current token.
    def match(self, type: TokenType) -> None:
        if not self.check_token(type):
            self.abort(f"Expected {type.name}, got {self.cur_token.type.name} instead.")
        self.next_token()
    
    # Advances the current token.
    def next_token(self) -> Token:
        self.cur_token = self.peek_token
        self.peek_token = self.lexer.get_token()
        # No need to worry about passing the EOF, lexer will handle it.
    
    def abort(self, message: str) -> None:
        sys.exit(f"Parser error. {message}")
    
    def end_statement(self) -> None:
        print("End statement")
        self.match(TokenType.END_STATEMENT)

    def is_comparison_operator(self) -> bool:
        for type in [TokenType.GT, TokenType.GTEQ, TokenType.LT, TokenType.LTEQ, TokenType.EQEQ, TokenType.NOTEQ]:
            if self.check_token(type): return True
        return False
    
    def generate_a_label(self) -> str:
        label = f"L{self.label_counter}"
        self.label_counter += 1
        return label
    
    def generate_next_label(self) -> str:
        label = self.generate_a_label()
        self.label_stack.append(label)
        return label
    
    def get_next_label(self) -> str:
        return self.label_stack.pop()
    
    def open_scope(self, scope: "Statement") -> None:
        if isinstance(scope, If) or isinstance(scope, While):
            self.scopes.append(scope)

    def close_scope(self) -> "Statement":
        if len(self.scopes) == 0:
            self.abort("No scope to close.")
        return self.scopes.pop()
    
    def load_to_reg(self, address: int, reg: int) -> None:
        if reg < 0 or reg > 15:
            self.abort(f"Invalid register number: {reg}")
        if (address // 8 != self.memory_control):
            self.memory_control = address // 8
            self.emitter.emit(
                f"FIM P6 {self.memory_control}\n" +
                 "LD  R13\n" +
                 "DCL\n"
            )
        if address != self.heap_pointer:
            self.emitter.emit(
                f"FIM P7 {address}\n" +
                 "SRC P7\n"
            )
            self.heap_pointer = address
        self.emitter.emit_line("RDM")
        self.emitter.emit_line(f"XCH R{reg}")

    def save_from_reg(self, address: int, reg: int) -> None:
        if reg < 0 or reg > 15:
            self.abort(f"Invalid register number: {reg}")
        if (address // 8 != self.memory_control):
            self.memory_control = address // 8
            self.emitter.emit(
                f"FIM P6 {self.memory_control}\n" +
                 "LD  R13\n" +
                 "DCL\n"
            )
        self.emitter.emit_line(f"LD  R{reg}")
        if address != self.heap_pointer:
            self.emitter.emit(
                f"FIM P7 {address}\n" +
                 "SRC P7\n"
            )
            self.heap_pointer = address
        self.emitter.emit_line("WRM")

    def load_to_pair(self, address: int, pair: int) -> None:
        if pair < 0 or pair > 7:
            self.abort(f"Invalid pair number: {pair}")
        reg = pair * 2
        self.load_to_reg(address, reg)
        self.load_to_reg(address + 1, reg + 1)
    
    def save_from_pair(self, address: int, pair: int) -> None:
        if pair < 0 or pair > 7:
            self.abort(f"Invalid pair number: {pair}")
        reg = pair * 2
        self.save_from_reg(address, reg)
        self.save_from_reg(address + 1, reg + 1)

    def opperation_reg_to_reg_in_acc(self, reg1: int, reg2: int, opperation: TokenType) -> None:
        if reg1 == reg2:
            self.abort(f"Cannot add a register to itself.")
        if reg1 < 0 or reg1 > 15 or reg2 < 0 or reg2 > 15:
            self.abort(f"Invalid register number: {reg1} or {reg2}")
        if opperation == TokenType.PLUS:
            opcode = "ADD"
        elif opperation == TokenType.MINUS:
            opcode = "SUB"
        else:
            self.abort(f"Invalid opperation: {opperation}")
        self.emitter.emit(
            f"LD  R{reg1}\n" +
            f"{opcode} R{reg2}\n"
        )


    def opperation_reg_to_reg(self, reg1: int, reg2: int, opperation: TokenType) -> None:
        self.opperation_reg_to_reg_in_acc(reg1, reg2, opperation)
        self.emitter.emit_line(f"XCH R{reg1}")
    
    def opperation_reg_to_pair(self, pair: int, reg: int, opperation: TokenType) -> None:
        if pair < 0 or pair > 7 or reg < 0 or reg > 15:
            self.abort(f"Invalid pair number: {pair} or register number: {reg}")
        pair = pair*2, pair*2+1
        self.opperation_reg_to_reg(pair[1], reg, opperation)
        self.emitter.emit_line(f"JCN 0b1010 {self.generate_next_label()}") # TODO: Implement correct label generation
        if opperation == TokenType.PLUS:
            opcode = "IAC"
        elif opperation == TokenType.MINUS:
            opcode = "DAC"
        else:
            self.abort(f"Invalid opperation: {opperation}")
        self.emitter.emit(
            f"XCH R{pair[0]}\n" + 
            f"{opcode}\n" + 
            f"XCH R{pair[0]}\n" +
            f"{self.get_next_label()},"    # TODO: Implement correct label generation
        )
    
    def opperation_pair_pair(self, pair1: int, pair2: int, opperation: TokenType) -> None:
        if pair1 == pair2:
            self.abort(f"Cannot add a pair to itself.")
        if pair1 < 0 or pair1 > 7 or pair2 < 0 or pair2 > 7:
            self.abort(f"Invalid pair number: {pair1} or {pair2}")
        pair1 = pair1*2, pair1*2+1
        self.opperation_reg_to_pair(pair2, pair1[1], opperation)
        self.opperation_reg_to_reg(pair2*2, pair1[0], opperation)

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

    def statement(self) -> None:
        if self.cur_token.type in [TokenType.INT8, TokenType.INT4, TokenType.CHAR]:
            declaretion_tokens: list[Token] = [self.cur_token]
            while True:
                self.next_token()
                if self.check_token(TokenType.END_STATEMENT):
                    break
                declaretion_tokens.append(self.cur_token)
            successfull_emit = Declaretion(declaretion_tokens, self).emit()
            if not successfull_emit:
                self.abort("Invalid declaretion.")
            self.end_statement()
            return
        
        elif self.check_token(TokenType.IDENT):
            if self.check_peek(TokenType.EQ):
                assignment_tokens: list[Token] = [self.cur_token]
                while True:
                    self.next_token()
                    if self.check_token(TokenType.END_STATEMENT):
                        break
                    if self.check_token(TokenType.EOF):
                        self.abort("Unexpected EOF.")
                    assignment_tokens.append(self.cur_token)
                successfull_emit = Assignment(assignment_tokens, self).emit()
                if not successfull_emit:
                    self.abort("Invalid assignment.")
                self.end_statement()
                return
            elif self.check_peek(TokenType.PLUS_EQ):
                ...
            elif self.check_peek(TokenType.MINUS_EQ):
                ...
            elif self.check_peek(TokenType.INC):
                ...
            elif self.check_peek(TokenType.DEC):
                ...
            else:
                self.abort("Invalid statement.")

        elif self.check_token(TokenType.IF):
            if_tokens: list[Token] = [self.cur_token]
            while not self.check_token(TokenType.OPENBODY):
                self.next_token()
                if_tokens.append(self.cur_token)
            if_statement: If = If(if_tokens, self)
            successfull_emit = if_statement.emit()
            if not successfull_emit:
                self.abort("Invalid if statement.")
            self.open_scope(if_statement)
            self.next_token()

        elif self.check_token(TokenType.WHILE):
            while_tokens: list[Token] = [self.cur_token]
            while not self.check_token(TokenType.OPENBODY):
                self.next_token()
                while_tokens.append(self.cur_token)
            while_statement: While = While(while_tokens, self)
            while_statement.top_label = self.generate_a_label()
            successfull_emit = while_statement.emit()
            if not successfull_emit:
                self.abort("Invalid while statement.")
            self.open_scope(while_statement)
            self.next_token()
                
        elif self.check_token(TokenType.CLOSEBODY):
            scope = self.close_scope()
            if isinstance(scope, If):
                self.emitter.emit(f"{self.get_next_label()},")
            elif isinstance(scope, While):
                self.emitter.emit_line(f"JUN {scope.top_label}")
                self.emitter.emit_line(f"{self.get_next_label()},")
            self.next_token()

        else:
            self.abort("Invalid statement.")
            
                

    def program(self) -> None:

        # Parse all the statements in the program.
        while not self.check_token(TokenType.EOF):
            self.statement()
        
        # Add an infinite loop to the end of the program.
        self.emitter.emit_line("\nEOP, JUN EOP")

        # Check that each label referenced in a GOTO is declared.
        for label in self.labels_gotoed:
            if label not in self.labels_declared:
                self.abort(f"Attempting to GOTO to undeclared label: {label}")


from statements import *