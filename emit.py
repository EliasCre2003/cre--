# Emitter object keeps track of the generated code and outputs it.

class Emitter:
    def __init__(self, full_path: str):
        self.full_path: str = full_path
        self.code: str = ""
    
    def emit(self, code: str) -> None:
        self.code += code
    
    def emit_line(self, code: str) -> None:
        self.code += code + '\n'
    
    def write_file(self) -> None:
        with open(self.full_path, 'w') as f:
            f.write(self.code)