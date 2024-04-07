labels: dict[int, str] = {}


def generate_lines(data: bytes) -> list[str]:
    global labels
    data_pointer = 0
    lines = []
    while data_pointer < len(data):
        byte = data[data_pointer]
        opr = byte >> 4
        opa = byte & 0xF
        if data_pointer in labels:
            line = "{:<9}".format(labels[data_pointer] + ", ")
        else:
            line = " " * 9
        match opr:
            case 0x0:
                line += f"NOP"
                data_pointer += 1
            case 0x1:
                line += f"JCN {opa} {labels[data[data_pointer + 1]]}"
                data_pointer += 2
            case 0x2:
                if opa % 2 == 0:
                    line += f"FIM {opa >> 1} {data[data_pointer + 1]}"
                    data_pointer += 2
                else:
                    line += f"SRC {opa >> 1}"
                    data_pointer += 1
            case 0x3:
                if opa % 2 == 0:
                    line += f"FIN {opa >> 1}"
                    data_pointer += 1
                else:
                    line += f"JIN {opa >> 1}"
                    data_pointer += 1
            case 0x4:
                address = (opa << 8) + data[data_pointer + 1]
                line += f"JUN {labels[address]}"
                data_pointer += 2
            case 0x5:
                address = (opa << 8) + data[data_pointer + 1]
                line += f"JMS {labels[address]}"
                data_pointer += 2
            case 0x6:
                line += f"INC {opa}"
                data_pointer += 1
            case 0x7:
                line += f"ISZ {opa} {labels[data[data_pointer + 1]]}"
                data_pointer += 2
            case 0x8:
                line += f"ADD {opa}"
                data_pointer += 1
            case 0x9:
                line += f"SUB {opa}"
                data_pointer += 1
            case 0xA:
                line += f"LD {opa}"
                data_pointer += 1
            case 0xB:
                line += f"XCH {opa}"
                data_pointer += 1
            case 0xC:
                line += f"BBL {opa}"
                data_pointer += 1
            case 0xD:
                line += f"LDM {opa}"
                data_pointer += 1
            case 0xE:
                match opa:
                    case 0x0:
                        line += f"WRM"
                    case 0x1:
                        line += f"WMP"
                    case 0x2:
                        line += f"WRR"
                    case 0x3:
                        line += f"WPM"
                    case 0x4:
                        line += f"WR0"
                    case 0x5:
                        line += f"WR1"
                    case 0x6:
                        line += f"WR2"
                    case 0x7:
                        line += f"WR3"
                    case 0x8:
                        line += f"SBM"
                    case 0x9:
                        line += f"RDM"
                    case 0xA:
                        line += f"RDR"
                    case 0xB:
                        line += f"ADM"
                    case 0xC:
                        line += f"RD0"
                    case 0xD:
                        line += f"RD1"
                    case 0xE:
                        line += f"RD2"
                    case 0xF:
                        line += f"RD3"
                data_pointer += 1
            case 0xF:
                match opa:
                    case 0x0:
                        line += f"CLB"
                    case 0x1:
                        line += f"CLC"
                    case 0x2:
                        line += f"IAC"
                    case 0x3:
                        line += f"CMA"
                    case 0x4:
                        line += f"CMC"
                    case 0x5:
                        line += f"RAL"
                    case 0x6:
                        line += f"RAR"
                    case 0x7:
                        line += f"TCC"
                    case 0x8:
                        line += f"DAC"
                    case 0x9:
                        line += f"TCS"
                    case 0xA:
                        line += f"STC"
                    case 0xB:
                        line += f"DAA"
                    case 0xC:
                        line += f"KBP"
                    case 0xD:
                        line += f"DCL"
                    # case _:

                        # raise Exception("Invalid opcode")
                data_pointer += 1
        lines.append(line)
    return lines


def generate_labels(data: bytes) -> None:
    data_pointer = 0
    while data_pointer < len(data):
        byte = data[data_pointer]
        opr = byte >> 4
        opa = byte & 0xF
        match opr:
            case 0x1:
                address = data[data_pointer + 1]
                labels[address] = f"LBL_{len(labels)}"
            # case 0x2:
            #     address = data[data_pointer + 1]
            #     labels[address] = f"LBL_{len(labels)}"
            case 0x4:
                address = (opa << 8) + data[data_pointer + 1]
                labels[address] = f"LBL_{len(labels)}"
            case 0x5:
                address = (opa << 8) + data[data_pointer + 1]
                labels[address] = f"LBL_{len(labels)}"
            case 0x7:
                address = data[data_pointer + 1]
                labels[address] = f"LBL_{len(labels)}"
            case _:
                data_pointer -= 1
        data_pointer += 2


def main():
    with open("test2.bin", "rb") as f:
        data = f.read()
    generate_labels(data)
    lines = generate_lines(data)
    with open("test3.txt", "w") as f:
        for line in lines:
            f.write(line + "\n")


if __name__ == "__main__":
    main()
