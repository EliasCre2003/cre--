from lex import *
from emit import *
from parse import *
from heap import *
from assembler import assemble


def main():
    print("cre++ Compiler")

    # if len(sys.argv) != 2:
    #     sys.exit("Usage: cre++.py filename")
    # filepath = sys.argv[1]
    filepath = "test.cre"
    with open(filepath, 'r') as f:
        source = f.read()

    lexer = Lexer(source)
    emitter = Emitter("out.s")
    heap = Heap(4096)
    parser = Parser(lexer, emitter, heap)

    parser.program()    # Start the parser.
    emitter.write_file()    # Write the output to file.
    print("Compiling completed.")
    result = assemble("out.s", "out.bin")   # Assemble the output.
    print("Assembling completed.")
    print(result)


if __name__ == "__main__":
    main()