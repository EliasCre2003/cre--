from enum import Enum

class NodeType(Enum):
    INT8 = 1
    INT4 = 2
    CHAR = 3

class Node:
    def __init__(self, value: int, datatype: NodeType, size: int):
        self.value: int = value
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

    def insert(self, node: Node) -> bool:
        if self.size + node.required_space() > self.max_size:
            return False
        
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
            self.heap[self.next_empty_8] = node
            self.next_empty_8 += node.size * 2
            self.next_empty = self.next_empty_8
            self.next_empty_4.append(self.next_empty_8)

    def get(self, address: int) -> Node:
        return self.heap[address]