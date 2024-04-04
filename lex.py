import sys
from enum import Enum

class TokenType(Enum):
    EOF = -1
    END_STATEMENT = 0
    NUMBER = 1
    IDENT = 2
    CHARACTER = 3

    # Keywords.
    LABEL = 101
    GOTO = 102
    PRINT = 103
    IF = 106
    WHILE = 109
    OPENBODY = 112
    CLOSEBODY = 113
    INT8 = 114
    INT4 = 115
    CHAR = 116

    # Operators.
    EQ = 201
    PLUS = 202
    MINUS = 203
    INC = 212
    DEC = 213
    PLUS_EQ = 214
    MINUS_EQ = 215
    EQEQ = 250
    NOTEQ = 251
    LT = 252
    LTEQ = 253
    GT = 254
    GTEQ = 255


class Token:
    def __init__(self, token_text: str, token_type: TokenType):
        self.text: str = token_text  # The token's actual text. Used for identifiers, strings, and numbers.
        self.type: TokenType = token_type  # The TokenType that this token is classified as.

    @staticmethod
    def check_if_keyword(token_text: str) -> TokenType | None:
        # Check if the given token text is a keyword.
        for type in TokenType:
            if type.name.lower() == token_text and type.value >= 100 and type.value <= 200:
                return type
        if token_text == "{":
            return TokenType.OPENBODY
        if token_text == "}":
            return TokenType.CLOSEBODY
        return TokenType.IDENT
    

class Lexer:
    def __init__(self, source: str):
        self.source: str = source + '\n'  # Source code to lex as a string. Append a newline to simplify lexing/parsing the last token/statement.
        self.cur_char: str = '' # Current character in the string.
        self.cur_pos: int = -1  # Current position in the string.
        self.next_char()

    # Process the next character.
    def next_char(self) -> None:
        self.cur_pos += 1
        if self.cur_pos >= len(self.source):
            self.cur_char = '\0'  # EOF
        else:
            self.cur_char = self.source[self.cur_pos]

    # Return the lookahead character.
    def peek(self) -> str:
        if self.cur_pos + 1 >= len(self.source):
            return '\0'
        return self.source[self.cur_pos + 1]
    
    # Invalid token found, print error message and exit.
    def abort(self, message: str):
        sys.exit("Lexing error. " + message)
    
    # Skip special characters
    def skip_special_characters(self):
        skip = False
        while self.cur_char in [' ', '\t', '\r', '\n']:
            skip = True
            self.next_char()
        return skip
    
    # Skip comments in the code.
    def skip_comment(self):
        if self.cur_char == '/' and self.peek() == '/':
            while self.cur_char != '\n':
                self.next_char()
            return True
        return False
    
    # Return the next token.
    def get_token(self) -> Token:
        skip = True
        while skip:
            skip = self.skip_special_characters() or self.skip_comment()

        # Check the first character of this token to see if we can decide what it is.
        # If it is a multiple character operator (e.g., !=), number, identifier, or keyword then we will process the rest.

        match self.cur_char:
            case '+':
                if self.peek() == '+':
                    last_char = self.cur_char
                    self.next_char()
                    token = Token(last_char + self.cur_char, TokenType.INC)
                elif self.peek() == '=':
                    last_char = self.cur_char
                    self.next_char()
                    token = Token(last_char + self.cur_char, TokenType.PLUS_EQ)
                else:
                    token = Token(self.cur_char, TokenType.PLUS)
            case '-':
                if self.peek() == '-':
                    last_char = self.cur_char
                    self.next_char()
                    token = Token(last_char + self.cur_char, TokenType.DEC)
                elif self.peek() == '=':
                    last_char = self.cur_char
                    self.next_char()
                    token = Token(last_char + self.cur_char, TokenType.MINUS_EQ)
                else:
                    token = Token(self.cur_char, TokenType.MINUS)
            case '=':
                # Check whether this token is = or ==
                if self.peek() == '=':
                    last_char = self.cur_char
                    self.next_char()
                    token = Token(last_char + self.cur_char, TokenType.EQEQ)
                else:
                    token = Token(self.cur_char, TokenType.EQ)
            case '>':
                 # Check whether this is token is > or >=
                if self.peek() == '=':
                    last_char = self.cur_char
                    self.next_char()
                    token = Token(last_char + self.cur_char, TokenType.GTEQ)
                else:
                    token = Token(self.cur_char, TokenType.GT)
            case '<':
                # Check whether this is token is < or <=
                if self.peek() == '=':
                    last_char = self.cur_char
                    self.next_char()
                    token = Token(last_char + self.cur_char, TokenType.LTEQ)
                else:
                    token = Token(self.cur_char, TokenType.LT)
            case '!':
                # Check whether this is token is !=
                if self.peek() == '=':
                    last_char = self.cur_char
                    self.next_char()
                    token = Token(last_char + self.cur_char, TokenType.NOTEQ)
                else:
                    self.abort(f"Expected !=, got !{self.peek()}")
            case '\'':
                # Get character between quotes.
                self.next_char()
                start_pos = self.cur_pos
                while self.cur_char != '\'':
                    # Don't allow special characters in the character literal.
                    if self.cur_char == '' or self.cur_char == '\n' or self.cur_pos - start_pos > 4:
                        self.abort("Expected closing quote for character.")
                    self.next_char()
                token_text = self.source[start_pos:self.cur_pos]
                if token_text.isascii():
                    token = Token(token_text, TokenType.CHARACTER)
                else:
                    self.abort(f"Unrecognized character: {token_text}")
            case ';':
                token = Token(self.cur_char, TokenType.END_STATEMENT)
            case '\0':
                token = Token('', TokenType.EOF)
            case '{':
                token = Token(self.cur_char, TokenType.OPENBODY)
            case '}':
                token = Token(self.cur_char, TokenType.CLOSEBODY)
            case item if item.isdigit():
                start_pos = self.cur_pos
                while self.peek().isdigit():
                    self.next_char()
                token_text = self.source[start_pos:self.cur_pos + 1]
                token = Token(token_text, TokenType.NUMBER)
            case item if item.isalpha():
                start_pos = self.cur_pos
                while self.peek().isalnum() or self.peek() in ['[', ']']:
                    self.next_char()
                token_text = self.source[start_pos:self.cur_pos + 1]
                token_type = Token.check_if_keyword(token_text)
                token = Token(token_text, token_type)

            case _:
                self.abort(f"Unrecognized character: {self.cur_char}")
        self.next_char()
        return token

