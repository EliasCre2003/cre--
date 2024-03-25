from fileinput import filename
from lex import *

def main():
    print("cre++ Compiler")

    # if len(sys.argv) != 2:
    #     sys.exit("Usage: cre++.py filename")
    # filepath = sys.argv[1]
    filepath = "test.cre"
    with open(filepath, 'r') as f:
        source = f.read()

    lexer = Lexer(source)

    token = lexer.get_token()
    while token.type != TokenType.EOF:
        print(token.type)
        token = lexer.get_token()

if __name__ == "__main__":
    main()