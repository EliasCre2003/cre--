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
    
    # expression ::= term {( "-" | "+" ) term}
    def expression(self) -> None:
        # print("EXPRESSION")
        # self.unary()
        # while self.check_token(TokenType.PLUS) or self.check_token(TokenType.MINUS):
        #     self.emitter.emit("")  # TODO: Add code generation
        #     self.next_token()
        #     self.unary()
        self.next_token()
        # if self.check_token(TokenType.NUMBER):
        #     if not (type == TokenType.INT8 or type == TokenType.INT4):
        #         self.abort(f"Assigning number to non-integer variable.")
        #     if type == TokenType.INT8:
        #         if int(self.cur_token.text) > 255:
        #             self.abort(f"Assigning number greater than 255 to INT8 variable.")
        #         # GENERATE CODE
            
        #     elif type == TokenType.INT4:
        #         if int(self.cur_token.text) > 15:
        #             self.abort(f"Assigning number greater than 15 to INT4 variable.")
            
        # elif self.check_token(TokenType.CHARACTER):
        #     if type != TokenType.CHAR:
        #         self.abort(f"Assigning character to non-character variable.")
        # elif self.check_token(TokenType.IDENT):
        #     if self.cur_token.text not in self.symbols:
        #         self.abort(f"Assigning from undeclared variable {self.cur_token.text}.")
        #     elif self.symbols[self.cur_token.text][1] != type:
        #         self.abort("Assigning from different type.")
        #     else:
        # if self.check_token(TokenType.NUMBER):

            

    def unary(self) -> None:
        print("UNARY")
        if self.check_token(TokenType.PLUS) or self.check_token(TokenType.MINUS):
            self.emitter.emit("")   # TODO: Add code generation
            self.next_token()
        self.primary()
        
    def primary(self) -> None:
        print("PRIMARY")
        if self.check_token(TokenType.NUMBER):
            self.emitter.emit("")   # TODO: Add code generation
            self.next_token()
        elif self.check_token(TokenType.IDENT):
            # Ensure the variable already exists.
            if self.cur_token.text not in self.symbols:
                self.abort(f"Referencing variable before assignment: {self.cur_token.text}")
            self.emitter.emit()     # TODO: Add code generation
            self.next_token()
        else:
            self.abort(f"Unexpected token at {self.cur_token.text}")
    
    # comparison ::= expression (("==" | "!=" | ">" | ">=" | "<" | "<=") expression)
    def comparison(self) -> None:
        print("COMPARISON")
        self.expression()
        if self.is_comparison_operator():
            self.emitter.emit("")   # TODO: Add code generation
            self.next_token()
            self.expression()
        else:
            self.abort(f"Expected comparison operator at {self.cur_token.text}")
    
        # Can have 0 or more comparison operator and expressions.
        while self.is_comparison_operator():
            self.emitter.emit("")   # TODO: Add code generation
            self.next_token()
            self.expression()

    def declaration(self, type: TokenType) -> None:
        self.next_token()
        if not self.check_token(TokenType.IDENT):
            self.abort(f"Expected identifier after declaration, got {self.cur_token.type.name} instead.")
        if self.cur_token.text in self.symbols:
            self.abort(f"Variable {self.cur_token.text} already declared.")
        address = self.heap.add_variable(type)
        if address is None:
            self.abort("Out of memory.")
        self.symbols[self.cur_token.text] = address
        self.assignment()


    # assignment ::= IDENT "=" comparison
    def assignment(self) -> None:
        if not self.check_token(TokenType.IDENT):
            self.abort(f"Expected identifier, got {self.cur_token.type.name} instead.")
        if self.cur_token.text not in self.symbols:
            self.abort(f"Assigning to undeclared variable {self.cur_token.text}.")
        
        self.emitter.emit_line(f"FIM P7 {self.symbols[self.cur_token.text][0]}")

        type = self.symbols[self.cur_token.text][1]
        self.next_token()
        self.match(TokenType.EQ)
        if self.expression() != type:
            self.abort("Type mismatch in assignment.")


        
    def statement(self) -> None:
        # Check the first token to see what kind of statement this is.
        if self.check_token(TokenType.INT8) or self.check_token(TokenType.INT4) or self.check_token(TokenType.CHAR):
            self.declaration(self.cur_token.type)


    def save_R0(self, address: int) -> None:
        if (address // 8 != self.memory_control):
            self.memory_control = address // 8
            self.emitter.emit(
                f"FIM P6 {self.memory_control}\n" +
                 "LD  R13\n" +
                 "DCL\n"
            )
        self.emitter.emit_line("LD  R0")
        if address != self.heap_pointer:
            self.emitter.emit(
                f"FIM P7 {address}\n" +
                 "SRC P7\n"
            )
            self.heap_pointer = address
        self.emitter.emit_line("WRM")

    def save_R1(self, address: int) -> None:
        if (address // 8 != self.memory_control):
            self.memory_control = address // 8
            self.emitter.emit(
                f"FIM P6 {self.memory_control}\n" +
                 "LD  R13\n" +
                 "DCL\n"
            )
        self.emitter.emit_line("LD  R1")
        if address != self.heap_pointer:
            self.emitter.emit(
                f"FIM P7 {address}\n" +
                 "SRC P7\n"
            )
            self.heap_pointer = address
        self.emitter.emit_line("WRM")

    def save_P0(self, address: int) -> None:
        self.save_R0(address)
        address += 1
        self.save_R1(address)

    def load_R0(self, address: int) -> None:
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
        self.emitter.emit_line("XCH R0")
    
    def load_R1(self, address: int) -> None:
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
        self.emitter.emit_line("XCH R1")
    
    def load_P0(self, address: int) -> None:
        self.load_R0(address)
        address += 1
        self.load_R1(address)
    
    def load_R2(self, address: int) -> None:
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
        self.emitter.emit_line("XCH R2")
    
    def load_R3(self, address: int) -> None:
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
        self.emitter.emit_line("XCH R3")
    
    def load_P1(self, address: int) -> None:
        self.load_R2(address)
        address += 1
        self.load_R3(address)


    def program(self) -> None:

        # Parse all the statements in the program.
        while not self.check_token(TokenType.EOF):
            self.statement()
        
        # Add an infinite loop to the end of the program.
        self.emitter.emit_line("EOP, JUN EOP")

        # Check that each label referenced in a GOTO is declared.
        for label in self.labels_gotoed:
            if label not in self.labels_declared:
                self.abort(f"Attempting to GOTO to undeclared label: {label}")