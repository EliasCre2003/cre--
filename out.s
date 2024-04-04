    FIM     P0    0x0 ; 0x000
    LD      R0        ; 0x002
    WRM               ; 0x003
    LD      R1        ; 0x004
    FIM     P7      1 ; 0x005
    SRC     P7        ; 0x007
    WRM               ; 0x008
    FIM     P0    0x0 ; 0x009
    LD      R0        ; 0x00b
    FIM     P7      2 ; 0x00c
    SRC     P7        ; 0x00e
    WRM               ; 0x00f
    LD      R1        ; 0x010
    FIM     P7      3 ; 0x011
    SRC     P7        ; 0x013
    WRM               ; 0x014
    FIM     P0    0x0 ; 0x015
    LD      R0        ; 0x017
    FIM     P7      4 ; 0x018
    SRC     P7        ; 0x01a
    WRM               ; 0x01b
    LD      R1        ; 0x01c
    FIM     P7      5 ; 0x01d
    SRC     P7        ; 0x01f
    WRM               ; 0x020
    FIM     P0    0x1 ; 0x021
    LD      R0        ; 0x023
    FIM     P7      6 ; 0x024
    SRC     P7        ; 0x026
    WRM               ; 0x027
    LD      R1        ; 0x028
    FIM     P7      7 ; 0x029
    SRC     P7        ; 0x02b
    WRM               ; 0x02c

L0,
    FIM     P0      0 ; 0x02d
    FIM     P7     12 ; 0x02f
    SRC     P7        ; 0x031
    RDM               ; 0x032
    XCH     R0        ; 0x033
    FIM     P7     13 ; 0x034
    SRC     P7        ; 0x036
    RDM               ; 0x037
    XCH     R1        ; 0x038
    FIM     P1      0 ; 0x039
    FIM     P1   0x17 ; 0x03b
    LD      R0        ; 0x03d
    SUB     R2        ; 0x03e
    JCN 0b1110     L1 ; 0x03f
    JCN 0b0010     L2 ; 0x041
    LD      R1        ; 0x043
    SUB     R3        ; 0x044
    JCN 0b1010     L1 ; 0x045

L2,
    FIM     P7      2 ; 0x047
    SRC     P7        ; 0x049
    RDM               ; 0x04a
    XCH     R0        ; 0x04b
    FIM     P7      3 ; 0x04c
    SRC     P7        ; 0x04e
    RDM               ; 0x04f
    XCH     R1        ; 0x050
    FIM     P7      6 ; 0x051
    SRC     P7        ; 0x053
    RDM               ; 0x054
    XCH     R2        ; 0x055
    FIM     P7      7 ; 0x056
    SRC     P7        ; 0x058
    RDM               ; 0x059
    XCH     R3        ; 0x05a
    LD      R1        ; 0x05b
    ADD     R3        ; 0x05c
    XCH     R1        ; 0x05d
    JCN 0b1010     L3 ; 0x05e
    LD      R0        ; 0x060
    IAC               ; 0x061
    XCH     R0        ; 0x062

L3,
    LD      R0        ; 0x063
    ADD     R2        ; 0x064
    XCH     R0        ; 0x065
    LD      R0        ; 0x066
    FIM     P7     10 ; 0x067
    SRC     P7        ; 0x069
    WRM               ; 0x06a
    LD      R1        ; 0x06b
    FIM     P7     11 ; 0x06c
    SRC     P7        ; 0x06e
    WRM               ; 0x06f
    FIM     P7      0 ; 0x070
    SRC     P7        ; 0x072
    RDM               ; 0x073
    XCH     R0        ; 0x074
    FIM     P7      1 ; 0x075
    SRC     P7        ; 0x077
    RDM               ; 0x078
    XCH     R1        ; 0x079
    FIM     P7      4 ; 0x07a
    SRC     P7        ; 0x07c
    RDM               ; 0x07d
    XCH     R2        ; 0x07e
    FIM     P7      5 ; 0x07f
    SRC     P7        ; 0x081
    RDM               ; 0x082
    XCH     R3        ; 0x083
    LD      R1        ; 0x084
    ADD     R3        ; 0x085
    XCH     R1        ; 0x086
    JCN 0b1010     L4 ; 0x087
    LD      R0        ; 0x089
    IAC               ; 0x08a
    XCH     R0        ; 0x08b

L4,
    LD      R0        ; 0x08c
    ADD     R2        ; 0x08d
    XCH     R0        ; 0x08e
    LD      R0        ; 0x08f
    FIM     P7      8 ; 0x090
    SRC     P7        ; 0x092
    WRM               ; 0x093
    LD      R1        ; 0x094
    FIM     P7      9 ; 0x095
    SRC     P7        ; 0x097
    WRM               ; 0x098
    FIM     P0      0 ; 0x099
    FIM     P7     10 ; 0x09b
    SRC     P7        ; 0x09d
    RDM               ; 0x09e
    XCH     R0        ; 0x09f
    FIM     P7     11 ; 0x0a0
    SRC     P7        ; 0x0a2
    RDM               ; 0x0a3
    XCH     R1        ; 0x0a4
    FIM     P1      0 ; 0x0a5
    FIM     P7      6 ; 0x0a7
    SRC     P7        ; 0x0a9
    RDM               ; 0x0aa
    XCH     R2        ; 0x0ab
    FIM     P7      7 ; 0x0ac
    SRC     P7        ; 0x0ae
    RDM               ; 0x0af
    XCH     R3        ; 0x0b0
    LD      R0        ; 0x0b1
    SUB     R2        ; 0x0b2
    JCN 0b1110     L5 ; 0x0b3
    JCN 0b0010     L6 ; 0x0b5
    LD      R1        ; 0x0b7
    SUB     R3        ; 0x0b8
    JCN 0b1010     L5 ; 0x0b9

L6,
    FIM     P7      8 ; 0x0bb
    SRC     P7        ; 0x0bd
    RDM               ; 0x0be
    XCH     R0        ; 0x0bf
    FIM     P7      9 ; 0x0c0
    SRC     P7        ; 0x0c2
    RDM               ; 0x0c3
    XCH     R1        ; 0x0c4
    FIM     P1    0x1 ; 0x0c5
    LD      R1        ; 0x0c7
    ADD     R3        ; 0x0c8
    XCH     R1        ; 0x0c9
    JCN 0b1010     L7 ; 0x0ca
    LD      R0        ; 0x0cc
    IAC               ; 0x0cd
    XCH     R0        ; 0x0ce

L7,
    LD      R0        ; 0x0cf
    ADD     R2        ; 0x0d0
    XCH     R0        ; 0x0d1
    LD      R0        ; 0x0d2
    FIM     P7      8 ; 0x0d3
    SRC     P7        ; 0x0d5
    WRM               ; 0x0d6
    LD      R1        ; 0x0d7
    FIM     P7      9 ; 0x0d8
    SRC     P7        ; 0x0da
    WRM               ; 0x0db

L5,
    FIM     P7      6 ; 0x0dc
    SRC     P7        ; 0x0de
    RDM               ; 0x0df
    XCH     R0        ; 0x0e0
    FIM     P7      7 ; 0x0e1
    SRC     P7        ; 0x0e3
    RDM               ; 0x0e4
    XCH     R1        ; 0x0e5
    LD      R0        ; 0x0e6
    FIM     P7      2 ; 0x0e7
    SRC     P7        ; 0x0e9
    WRM               ; 0x0ea
    LD      R1        ; 0x0eb
    FIM     P7      3 ; 0x0ec
    SRC     P7        ; 0x0ee
    WRM               ; 0x0ef
    FIM     P7     10 ; 0x0f0
    SRC     P7        ; 0x0f2
    RDM               ; 0x0f3
    XCH     R0        ; 0x0f4
    FIM     P7     11 ; 0x0f5
    SRC     P7        ; 0x0f7
    RDM               ; 0x0f8
    XCH     R1        ; 0x0f9
    LD      R0        ; 0x0fa
    JUN L8

L1,
    JUN L9

L8,
    FIM     P7      6 ; 0x100
    SRC     P7        ; 0x100
    WRM               ; 0x101
    LD      R1        ; 0x102
    FIM     P7      7 ; 0x103
    SRC     P7        ; 0x105
    WRM               ; 0x106
    FIM     P7      4 ; 0x107
    SRC     P7        ; 0x109
    RDM               ; 0x10a
    XCH     R0        ; 0x10b
    FIM     P7      5 ; 0x10c
    SRC     P7        ; 0x10e
    RDM               ; 0x10f
    XCH     R1        ; 0x110
    LD      R0        ; 0x111
    FIM     P7      0 ; 0x112
    SRC     P7        ; 0x114
    WRM               ; 0x115
    LD      R1        ; 0x116
    FIM     P7      1 ; 0x117
    SRC     P7        ; 0x119
    WRM               ; 0x11a
    FIM     P7      8 ; 0x11b
    SRC     P7        ; 0x11d
    RDM               ; 0x11e
    XCH     R0        ; 0x11f
    FIM     P7      9 ; 0x120
    SRC     P7        ; 0x122
    RDM               ; 0x123
    XCH     R1        ; 0x124
    LD      R0        ; 0x125
    FIM     P7      4 ; 0x126
    SRC     P7        ; 0x128
    WRM               ; 0x129
    LD      R1        ; 0x12a
    FIM     P7      5 ; 0x12b
    SRC     P7        ; 0x12d
    WRM               ; 0x12e
    FIM     P7     12 ; 0x12f
    SRC     P7        ; 0x131
    RDM               ; 0x132
    XCH     R0        ; 0x133
    FIM     P7     13 ; 0x134
    SRC     P7        ; 0x136
    RDM               ; 0x137
    XCH     R1        ; 0x138
    FIM     P1    0x1 ; 0x139
    LD      R1        ; 0x13b
    ADD     R3        ; 0x13c
    XCH     R1        ; 0x13d
    JCN 0b1010    L10 ; 0x13e
    LD      R0        ; 0x140
    IAC               ; 0x141
    XCH     R0        ; 0x142

L10,
    LD      R0        ; 0x143
    ADD     R2        ; 0x144
    XCH     R0        ; 0x145
    LD      R0        ; 0x146
    FIM     P7     12 ; 0x147
    SRC     P7        ; 0x149
    WRM               ; 0x14a
    LD      R1        ; 0x14b
    FIM     P7     13 ; 0x14c
    SRC     P7        ; 0x14e
    WRM               ; 0x14f
    JUN     L0        ; 0x150

L9,

EOP,
    JUN    EOP        ; 0x152
