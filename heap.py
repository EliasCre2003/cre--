from enum import Enum

from lex import TokenType

class NodeType(Enum):
    INT8 = 1
    INT4 = 2
    CHAR = 3

class Node:
    def __init__(self, datatype: NodeType, size: int):
        self.datatype: NodeType = datatype
        self.size: int = size

    def required_space(self) -> int:
        if self.datatype == NodeType.INT8 or self.datatype == NodeType.CHAR:
            return 2 * self.size
        return self.size

class Heap:
    def __init__(self, max_size: int):
        self.heap: dict[int, Node] = {}
        self.max_size: int = max_size
        self.size: int = 0
        self.next_empty_4: list[int] = [0]
        self.next_empty_8: int = 0

    def add_variable(self, type: TokenType, size: int = 1) -> int | None:
        match type:
            case TokenType.INT8:
                node = Node(NodeType.INT8, size)
            case TokenType.INT4:
                node = Node(NodeType.INT4, size)
            case TokenType.CHAR:
                node = Node(NodeType.CHAR, size)
            case _:
                return None
        return self.insert(node)


    def insert(self, node: Node) -> int | None:

        # Function is a bit broken, the size is not calculated correctly

        if self.size + node.required_space() > self.max_size:
            return None
        
        if node.datatype == NodeType.INT4:
            if (node.size == 1):
                address = self.next_empty_4.pop(0)
                self.heap[address] = node
                if len(self.next_empty_4) == 0:
                    self.next_empty_4 = [address + 1]
            else:
                address = self.next_empty_4.pop(-1)
                self.heap[address] = node
                self.next_empty_4.append(address + node.size)
            self.next_empty_8 = address + node.size
            if self.next_empty_8 % 2 != 0:
                self.next_empty_8 += 1
        else:
            address = self.next_empty_8
            self.heap[address] = node
            self.next_empty_8 += node.size * 2
            if address in self.next_empty_4:
                self.next_empty_4.remove(address)
            self.next_empty_4.append(self.next_empty_8)

        self.size += node.required_space()
        return address

    def get(self, address: int) -> Node:
        return self.heap[address]