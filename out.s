    FIM     P0    0x0 ; 0x000
    LD      R0        ; 0x002
    WRM               ; 0x003
    FIM     P7      1 ; 0x004
    SRC     P7        ; 0x006
    LD      R1        ; 0x007
    WRM               ; 0x008
    FIM     P0    0x0 ; 0x009
    FIM     P7      2 ; 0x00b
    SRC     P7        ; 0x00d
    LD      R0        ; 0x00e
    WRM               ; 0x00f
    FIM     P7      3 ; 0x010
    SRC     P7        ; 0x012
    LD      R1        ; 0x013
    WRM               ; 0x014
    FIM     P0    0x0 ; 0x015
    FIM     P7      4 ; 0x017
    SRC     P7        ; 0x019
    LD      R0        ; 0x01a
    WRM               ; 0x01b
    FIM     P7      5 ; 0x01c
    SRC     P7        ; 0x01e
    LD      R1        ; 0x01f
    WRM               ; 0x020
    FIM     P0    0x1 ; 0x021
    FIM     P7      6 ; 0x023
    SRC     P7        ; 0x025
    LD      R0        ; 0x026
    WRM               ; 0x027
    FIM     P7      7 ; 0x028
    SRC     P7        ; 0x02a
    LD      R1        ; 0x02b
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
    FIM     P1   0x2E ; 0x03b
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
    FIM     P7     10 ; 0x066
    SRC     P7        ; 0x068
    LD      R0        ; 0x069
    WRM               ; 0x06a
    FIM     P7     11 ; 0x06b
    SRC     P7        ; 0x06d
    LD      R1        ; 0x06e
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
    FIM     P7      8 ; 0x08f
    SRC     P7        ; 0x091
    LD      R0        ; 0x092
    WRM               ; 0x093
    FIM     P7      9 ; 0x094
    SRC     P7        ; 0x096
    LD      R1        ; 0x097
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
    FIM     P7      8 ; 0x0d2
    SRC     P7        ; 0x0d4
    LD      R0        ; 0x0d5
    WRM               ; 0x0d6
    FIM     P7      9 ; 0x0d7
    SRC     P7        ; 0x0d9
    LD      R1        ; 0x0da
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
    FIM     P7      2 ; 0x0e6
    SRC     P7        ; 0x0e8
    LD      R0        ; 0x0e9
    WRM               ; 0x0ea
    FIM     P7      3 ; 0x0eb
    SRC     P7        ; 0x0ed
    LD      R1        ; 0x0ee
    WRM               ; 0x0ef
    FIM     P7     10 ; 0x0f0
    SRC     P7        ; 0x0f2
    RDM               ; 0x0f3
    XCH     R0        ; 0x0f4
    FIM     P7     11 ; 0x0f5
    SRC     P7        ; 0x0f7
    RDM               ; 0x0f8
    XCH     R1        ; 0x0f9
    FIM     P7      6 ; 0x0fa
    JUN L8

L1,
    JUN L9

L8,
    SRC     P7        ; 0x100
    LD      R0        ; 0x100
    WRM               ; 0x101
    FIM     P7      7 ; 0x102
    SRC     P7        ; 0x104
    LD      R1        ; 0x105
    WRM               ; 0x106
    FIM     P7      4 ; 0x107
    SRC     P7        ; 0x109
    RDM               ; 0x10a
    XCH     R0        ; 0x10b
    FIM     P7      5 ; 0x10c
    SRC     P7        ; 0x10e
    RDM               ; 0x10f
    XCH     R1        ; 0x110
    FIM     P7      0 ; 0x111
    SRC     P7        ; 0x113
    LD      R0        ; 0x114
    WRM               ; 0x115
    FIM     P7      1 ; 0x116
    SRC     P7        ; 0x118
    LD      R1        ; 0x119
    WRM               ; 0x11a
    FIM     P7      8 ; 0x11b
    SRC     P7        ; 0x11d
    RDM               ; 0x11e
    XCH     R0        ; 0x11f
    FIM     P7      9 ; 0x120
    SRC     P7        ; 0x122
    RDM               ; 0x123
    XCH     R1        ; 0x124
    FIM     P7      4 ; 0x125
    SRC     P7        ; 0x127
    LD      R0        ; 0x128
    WRM               ; 0x129
    FIM     P7      5 ; 0x12a
    SRC     P7        ; 0x12c
    LD      R1        ; 0x12d
    WRM               ; 0x12e
    FIM     P7     12 ; 0x12f
    SRC     P7        ; 0x131
    RDM               ; 0x132
    XCH     R8        ; 0x133
    FIM     P7     13 ; 0x134
    SRC     P7        ; 0x136
    RDM               ; 0x137
    XCH     R9        ; 0x138
    FIM     P7     12 ; 0x139
    SRC     P7        ; 0x13b
    RDM               ; 0x13c
    XCH    R10        ; 0x13d
    FIM     P7     13 ; 0x13e
    SRC     P7        ; 0x140
    RDM               ; 0x141
    XCH    R11        ; 0x142
    LD      R9        ; 0x143
    ADD    R11        ; 0x144
    XCH     R9        ; 0x145
    JCN 0b1010    L10 ; 0x146
    LD      R8        ; 0x148
    IAC               ; 0x149
    XCH     R8        ; 0x14a

L10,
    LD      R8        ; 0x14b
    ADD    R10        ; 0x14c
    XCH     R8        ; 0x14d
    FIM     P3     14 ; 0x14e
    FIM     P5      0 ; 0x150
    LD      R9        ; 0x152
    ADD     R7        ; 0x153
    XCH     R9        ; 0x154
    JCN 0b1010    L11 ; 0x155
    ISZ     R8    L11 ; 0x157
    INC    R11        ; 0x159

L11,
    LD      R8        ; 0x15a
    ADD     R6        ; 0x15b
    XCH     R8        ; 0x15c
    JCN 0b1010    L12 ; 0x15d
    INC     11        ; 0x15f

L12,
    FIM     P7      8 ; 0x160
    SRC     P7        ; 0x162
    RDM               ; 0x163
    XCH     R0        ; 0x164
    FIM     P7      9 ; 0x165
    SRC     P7        ; 0x167
    RDM               ; 0x168
    XCH     R1        ; 0x169
    LD      R8        ; 0x16a
    XCH    R14        ; 0x16b
    LD      R9        ; 0x16c
    XCH    R15        ; 0x16d
    LD     R11        ; 0x16e
    XCH    R13        ; 0x16f
    LD     R13        ; 0x170
    DCL               ; 0x171
    SRC     P7        ; 0x172
    LD     R13        ; 0x173
    DCL               ; 0x174
    SRC     P7        ; 0x175
    LD      R0        ; 0x176
    WRM               ; 0x177
    INC    R15        ; 0x178
    LD     R13        ; 0x179
    DCL               ; 0x17a
    SRC     P7        ; 0x17b
    LD     R13        ; 0x17c
    DCL               ; 0x17d
    SRC     P7        ; 0x17e
    LD      R1        ; 0x17f
    WRM               ; 0x180
    FIM     P6      0 ; 0x181
    LD     R13        ; 0x183
    DCL               ; 0x184
    FIM     P7     12 ; 0x185
    SRC     P7        ; 0x187
    RDM               ; 0x188
    XCH     R8        ; 0x189
    FIM     P7     13 ; 0x18a
    SRC     P7        ; 0x18c
    RDM               ; 0x18d
    XCH     R9        ; 0x18e
    FIM     P5    0x2 ; 0x18f
    LD      R9        ; 0x191
    ADD    R11        ; 0x192
    XCH     R9        ; 0x193
    JCN 0b1010    L13 ; 0x194
    LD      R8        ; 0x196
    IAC               ; 0x197
    XCH     R8        ; 0x198

L13,
    LD      R8        ; 0x199
    ADD    R10        ; 0x19a
    XCH     R8        ; 0x19b
    FIM     P7     12 ; 0x19c
    SRC     P7        ; 0x19e
    RDM               ; 0x19f
    XCH    R10        ; 0x1a0
    FIM     P7     13 ; 0x1a1
    SRC     P7        ; 0x1a3
    RDM               ; 0x1a4
    XCH    R11        ; 0x1a5
    LD      R9        ; 0x1a6
    ADD    R11        ; 0x1a7
    XCH     R9        ; 0x1a8
    JCN 0b1010    L14 ; 0x1a9
    LD      R8        ; 0x1ab
    IAC               ; 0x1ac
    XCH     R8        ; 0x1ad

L14,
    LD      R8        ; 0x1ae
    ADD    R10        ; 0x1af
    XCH     R8        ; 0x1b0
    FIM     P3     14 ; 0x1b1
    FIM     P5      0 ; 0x1b3
    LD      R9        ; 0x1b5
    ADD     R7        ; 0x1b6
    XCH     R9        ; 0x1b7
    JCN 0b1010    L15 ; 0x1b8
    ISZ     R8    L15 ; 0x1ba
    INC    R11        ; 0x1bc

L15,
    LD      R8        ; 0x1bd
    ADD     R6        ; 0x1be
    XCH     R8        ; 0x1bf
    JCN 0b1010    L16 ; 0x1c0
    INC     11        ; 0x1c2

L16,
    FIM     P7     10 ; 0x1c3
    SRC     P7        ; 0x1c5
    RDM               ; 0x1c6
    XCH     R0        ; 0x1c7
    FIM     P7     11 ; 0x1c8
    SRC     P7        ; 0x1ca
    RDM               ; 0x1cb
    XCH     R1        ; 0x1cc
    LD      R8        ; 0x1cd
    XCH    R14        ; 0x1ce
    LD      R9        ; 0x1cf
    XCH    R15        ; 0x1d0
    LD     R11        ; 0x1d1
    XCH    R13        ; 0x1d2
    LD     R13        ; 0x1d3
    DCL               ; 0x1d4
    SRC     P7        ; 0x1d5
    LD     R13        ; 0x1d6
    DCL               ; 0x1d7
    SRC     P7        ; 0x1d8
    LD      R0        ; 0x1d9
    WRM               ; 0x1da
    INC    R15        ; 0x1db
    LD     R13        ; 0x1dc
    DCL               ; 0x1dd
    SRC     P7        ; 0x1de
    LD     R13        ; 0x1df
    DCL               ; 0x1e0
    SRC     P7        ; 0x1e1
    LD      R1        ; 0x1e2
    WRM               ; 0x1e3
    FIM     P6      0 ; 0x1e4
    LD     R13        ; 0x1e6
    DCL               ; 0x1e7
    FIM     P7     12 ; 0x1e8
    SRC     P7        ; 0x1ea
    RDM               ; 0x1eb
    XCH     R0        ; 0x1ec
    FIM     P7     13 ; 0x1ed
    SRC     P7        ; 0x1ef
    RDM               ; 0x1f0
    XCH     R1        ; 0x1f1
    FIM     P1    0x2 ; 0x1f2
    LD      R1        ; 0x1f4
    ADD     R3        ; 0x1f5
    XCH     R1        ; 0x1f6
    JCN 0b1010    L17 ; 0x1f7
    LD      R0        ; 0x1f9
    IAC               ; 0x1fa
    JUN L18

L17,
    JUN L19

L9,
    JUN L20

L18,
    XCH     R0        ; 0x200

L19,
    LD      R0        ; 0x200
    ADD     R2        ; 0x201
    XCH     R0        ; 0x202
    FIM     P7     12 ; 0x203
    SRC     P7        ; 0x205
    LD      R0        ; 0x206
    WRM               ; 0x207
    FIM     P7     13 ; 0x208
    SRC     P7        ; 0x20a
    LD      R1        ; 0x20b
    WRM               ; 0x20c
    JUN     L0        ; 0x20d

L20,

EOP,
    JUN    EOP        ; 0x20f
