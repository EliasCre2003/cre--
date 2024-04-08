import sys
from lex import *
from emit import *
from heap import *
from routine import *

# Parser object keeps track of current token and checks if the code matches the grammar.
class Parser:
    def __init__(self, lexer: Lexer, emitter: Emitter):
        self.lexer: Lexer = lexer
        self.emitter: Emitter = emitter
        self.heap: Heap = Heap(4096)
        self.routine_handler: RoutineHandler = RoutineHandler(emitter)

        # self.heap_pointer: int = 0
        # self.memory_control: int = 0

        self.symbols: dict[str, tuple[int, TokenType]] = {}   # Variables declared so far. {symbol: (address, type)}
        self.labels_declared: set = set()
        self.labels_gotoed: set = set()

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
        self.match(TokenType.END_STATEMENT)

    def is_comparison_operator(self) -> bool:
        for type in [TokenType.GT, TokenType.GTEQ, TokenType.LT, TokenType.LTEQ, TokenType.EQEQ, TokenType.NOTEQ]:
            if self.check_token(type): return True
        return False
    
    def open_scope(self, scope: "Statement") -> None:
        if isinstance(scope, If) or isinstance(scope, While):
            self.scopes.append(scope)

    def close_scope(self) -> "Statement":
        if len(self.scopes) == 0:
            self.abort("No scope to close.")
        return self.scopes.pop()

    def statement(self) -> None:
        if self.cur_token.type in [TokenType.INT8, TokenType.INT4, TokenType.CHAR, TokenType.OPENBRACKET]:
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
            if self.check_peek(TokenType.OPENBRACKET):
                address, datatype = self.symbols[self.cur_token.text]
                if address is None:
                    self.abort(f"Variable {self.cur_token} not declared.")
                self.next_token()
                self.next_token()
                expression_tokens: list[Token] = [self.cur_token]
                while True:
                    self.next_token()
                    if self.check_token(TokenType.CLOSEBRACKET):
                        break
                    if self.check_token(TokenType.EOF):
                        self.abort("Unexpected EOF.")
                    expression_tokens.append(self.cur_token)
                if datatype in [TokenType.INT8, TokenType.CHAR]:
                    expression_tokens.append(Token('+', TokenType.PLUS))
                    for i in range(len(expression_tokens)-1):
                        expression_tokens.append(expression_tokens[i])
                expression = Expression(expression_tokens, self)
                successfull_emit = expression.emit(4)
                if not successfull_emit:
                    self.abort("Invalid expression.")
                self.emitter.emit_instruction(Opcode.FIM, Opcode.P3, address & 0xFF)
                self.emitter.emit_instruction(Opcode.FIM, Opcode.P5, address >> 8)
                self.routine_handler.twelve_bit_add(4, 3, 11)
                self.next_token()
                self.match(TokenType.EQ)
                expression_tokens: list[Token] = [self.cur_token]
                while True:
                    self.next_token()
                    if self.check_token(TokenType.END_STATEMENT):
                        break
                    if self.check_token(TokenType.EOF):
                        self.abort("Unexpected EOF.")
                    expression_tokens.append(self.cur_token)
                expression = Expression(expression_tokens, self)
                if not (successfull_emit := expression.emit()):
                    self.abort("Invalid expression.")
                self.routine_handler.load_pair_to_pair(4, 7)
                self.routine_handler.load_reg_to_reg(11, 13)
                self.routine_handler.select_word_in_memory()
                if datatype in [TokenType.INT8, TokenType.CHAR]:
                    self.routine_handler.save_from_pair(address=None, pair=0)
                elif datatype == TokenType.INT4:
                    self.routine_handler.save_from_reg(address=None, pair=1)
                self.end_statement()
                return

            elif self.check_peek(TokenType.EQ):
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
            elif self.check_peek(TokenType.PLUS_EQ) or self.check_peek(TokenType.MINUS_EQ):
                variable = self.cur_token
                assignment_tokens: list[Token] = [variable, Token('=', TokenType.EQ)]
                self.next_token()
                minus_eq = self.check_token(TokenType.MINUS_EQ)
                while True:
                    self.next_token()
                    if self.check_token(TokenType.END_STATEMENT):
                        break
                    if self.check_token(TokenType.EOF):
                        self.abort("Unexpected EOF.")
                    assignment_tokens.append(self.cur_token)
                if minus_eq:
                    for i in range(len(assignment_tokens)):
                        if assignment_tokens[i].type == TokenType.PLUS:
                            assignment_tokens[i] = Token('-', TokenType.MINUS)
                        elif assignment_tokens[i].type == TokenType.MINUS:
                            assignment_tokens[i] = Token('+', TokenType.PLUS)
                assignment_tokens.insert(2, variable)
                assignment_tokens.insert(3, Token('-', TokenType.MINUS) if minus_eq else Token('+', TokenType.PLUS))
                successfull_emit = Assignment(assignment_tokens, self).emit()
                if not successfull_emit:
                    self.abort("Invalid assignment.")
                self.end_statement()
                return

            elif self.check_peek(TokenType.INC) or self.check_peek(TokenType.DEC):
                if self.symbols[self.cur_token.text] is None:
                    self.abort(f"Variable {self.cur_token} not declared.")
                address, datatype = self.symbols[self.cur_token.text]
                self.next_token()
                if datatype in [TokenType.INT8, TokenType.CHAR]:
                    self.routine_handler.load_to_pair(address, 0)
                    if self.check_token(TokenType.INC):
                        self.routine_handler.increment_pair(0)
                    elif self.check_token(TokenType.DEC):
                        self.routine_handler.decrement_pair(0)
                    self.routine_handler.save_from_pair(address, 0)
                elif datatype == TokenType.INT4:
                    self.routine_handler.load_to_reg(address, 0)
                    if self.check_token(TokenType.INC):
                        self.routine_handler.increment_reg(0)
                    elif self.check_token(TokenType.DEC):
                        self.routine_handler.decrement_reg(0)
                    self.routine_handler.save_from_reg(address, 0)
                self.next_token()
                self.end_statement()
                return
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
            while_statement.top_label = self.emitter.generate_long_label()
            successfull_emit = while_statement.emit()
            if not successfull_emit:
                self.abort("Invalid while statement.")
            self.open_scope(while_statement)
            self.next_token()
        elif self.check_token(TokenType.CLOSEBODY):
            scope = self.close_scope()
            if isinstance(scope, If):
                self.emitter.emit_label(self.emitter.get_next_label())
            elif isinstance(scope, While):
                self.emitter.emit_instruction(Opcode.JUN, scope.top_label)
                self.emitter.emit_label(self.emitter.get_next_label())
            self.next_token()
        else:
            self.abort("Invalid statement.")
            
                

    def program(self) -> None:

        # Parse all the statements in the program.
        while not self.check_token(TokenType.EOF):
            self.statement()
        
        # Add an infinite loop to the end of the program.
        self.emitter.emit_label("EOP")
        self.emitter.emit_instruction(Opcode.JUN, "EOP")
        self.routine_handler.emit()

        # Check that each label referenced in a GOTO is declared.
        for label in self.labels_gotoed:
            if label not in self.labels_declared:
                self.abort(f"Attempting to GOTO to undeclared label: {label}")


from statements import *