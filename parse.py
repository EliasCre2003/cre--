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

        self.symbols: dict[str, int] = dict   # Variables declared so far. {symbol: address}
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
        print("EXPRESSION")
        self.unary()
        while self.check_token(TokenType.PLUS) or self.check_token(TokenType.MINUS):
            self.emitter.emit("")  # TODO: Add code generation
            self.next_token()
            self.unary()

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
        
    def statement(self) -> None:
        ...