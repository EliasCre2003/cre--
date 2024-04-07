from lex import *
from emit import *
from parse import *
from heap import *
from routine import *
from assembler import assemble


def main():
    print("cre++ Compiler")

    # if len(sys.argv) != 2:
    #     sys.exit("Usage: cre++.py filename")
    # filepath = sys.argv[1]
    filepath = "src/test.cre"
    name = filepath.split("/")[-1].split(".")[0]
    with open(filepath, 'r') as f:
        source = f.read()

    destination = "out/"
    lexer = Lexer(source)
    emitter = Emitter(f"{destination}{name}.s")
    heap = Heap(4096)
    routine_handler = RoutineHandler(emitter)

    parser = Parser(lexer, emitter, heap, routine_handler)

    parser.program()    # Start the parser.
    emitter.write_file()    # Write the output to file.
    print("Compiling completed.")
    result = assemble(f"{destination}{name}.s", f"{destination}{name}.bin")   # Assemble the output.
    print("Assembling completed.")
    for i in range(len(result)):
        print(hex(result[i]), end=", ")
        if i % 16 == 15:
            print()


if __name__ == "__main__":
    main()