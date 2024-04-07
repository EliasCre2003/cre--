    FIM     P0    0x0 ; 0x000
    JMS    SR0        ; 0x002
    FIM     P7      1 ; 0x004
    JMS    SR1        ; 0x006
    JMS    SR2        ; 0x008
    FIM     P0    0x0 ; 0x00a
    FIM     P7      2 ; 0x00c
    JMS    SR1        ; 0x00e
    JMS    SR0        ; 0x010
    FIM     P7      3 ; 0x012
    JMS    SR1        ; 0x014
    JMS    SR2        ; 0x016
    FIM     P0    0x0 ; 0x018
    FIM     P7      4 ; 0x01a
    JMS    SR1        ; 0x01c
    JMS    SR0        ; 0x01e
    FIM     P7      5 ; 0x020
    JMS    SR1        ; 0x022
    JMS    SR2        ; 0x024
    FIM     P0    0x0 ; 0x026
    FIM     P7      6 ; 0x028
    JMS    SR1        ; 0x02a
    JMS    SR0        ; 0x02c
    FIM     P7      7 ; 0x02e
    JMS    SR1        ; 0x030
    JMS    SR2        ; 0x032
    FIM     P0    0x0 ; 0x034
    FIM     P7      8 ; 0x036
    JMS    SR1        ; 0x038
    JMS    SR0        ; 0x03a
    FIM     P7      9 ; 0x03c
    JMS    SR1        ; 0x03e
    JMS    SR2        ; 0x040
    FIM     P0    0x1 ; 0x042
    FIM     P7     10 ; 0x044
    JMS    SR1        ; 0x046
    JMS    SR0        ; 0x048
    FIM     P7     11 ; 0x04a
    JMS    SR1        ; 0x04c
    JMS    SR2        ; 0x04e
    FIM     P4    0x0 ; 0x050
    FIM     P3     20 ; 0x052
    FIM     P5      0 ; 0x054
    JMS    SR3        ; 0x056
    FIM     P7      0 ; 0x058
    JMS    SR1        ; 0x05a
    JMS    SR4        ; 0x05c
    FIM     P7      1 ; 0x05e
    JMS    SR1        ; 0x060
    JMS    SR5        ; 0x062
    LD      R8        ; 0x064
    XCH    R14        ; 0x065
    LD      R9        ; 0x066
    XCH    R15        ; 0x067
    LD     R11        ; 0x068
    XCH    R13        ; 0x069
    JMS    SR1        ; 0x06a
    JMS    SR1        ; 0x06c
    JMS    SR0        ; 0x06e
    INC    R15        ; 0x070
    JMS    SR1        ; 0x071
    JMS    SR1        ; 0x073
    JMS    SR2        ; 0x075
    FIM     P4    0x2 ; 0x077
    FIM     P3     20 ; 0x079
    FIM     P5      0 ; 0x07b
    JMS    SR3        ; 0x07d
    FIM     P6      0 ; 0x07f
    FIM     P7      2 ; 0x081
    JMS    SR1        ; 0x083
    JMS    SR4        ; 0x085
    FIM     P7      3 ; 0x087
    JMS    SR1        ; 0x089
    JMS    SR5        ; 0x08b
    LD      R8        ; 0x08d
    XCH    R14        ; 0x08e
    LD      R9        ; 0x08f
    XCH    R15        ; 0x090
    LD     R11        ; 0x091
    XCH    R13        ; 0x092
    JMS    SR1        ; 0x093
    JMS    SR1        ; 0x095
    JMS    SR0        ; 0x097
    INC    R15        ; 0x099
    JMS    SR1        ; 0x09a
    JMS    SR1        ; 0x09c
    JMS    SR2        ; 0x09e
    FIM     P4    0x4 ; 0x0a0
    FIM     P3     20 ; 0x0a2
    FIM     P5      0 ; 0x0a4
    JMS    SR3        ; 0x0a6
    FIM     P6      0 ; 0x0a8
    FIM     P7      4 ; 0x0aa
    JMS    SR1        ; 0x0ac
    JMS    SR4        ; 0x0ae
    FIM     P7      5 ; 0x0b0
    JMS    SR1        ; 0x0b2
    JMS    SR5        ; 0x0b4
    LD      R8        ; 0x0b6
    XCH    R14        ; 0x0b7
    LD      R9        ; 0x0b8
    XCH    R15        ; 0x0b9
    LD     R11        ; 0x0ba
    XCH    R13        ; 0x0bb
    JMS    SR1        ; 0x0bc
    JMS    SR1        ; 0x0be
    JMS    SR0        ; 0x0c0
    INC    R15        ; 0x0c2
    JMS    SR1        ; 0x0c3
    JMS    SR1        ; 0x0c5
    JMS    SR2        ; 0x0c7
    FIM     P4    0x6 ; 0x0c9
    FIM     P3     20 ; 0x0cb
    FIM     P5      0 ; 0x0cd
    JMS    SR3        ; 0x0cf
    FIM     P6      0 ; 0x0d1
    FIM     P7      6 ; 0x0d3
    JMS    SR1        ; 0x0d5
    JMS    SR4        ; 0x0d7
    FIM     P7      7 ; 0x0d9
    JMS    SR1        ; 0x0db
    JMS    SR5        ; 0x0dd
    LD      R8        ; 0x0df
    XCH    R14        ; 0x0e0
    LD      R9        ; 0x0e1
    XCH    R15        ; 0x0e2
    LD     R11        ; 0x0e3
    XCH    R13        ; 0x0e4
    JMS    SR1        ; 0x0e5
    JMS    SR1        ; 0x0e7
    JMS    SR0        ; 0x0e9
    INC    R15        ; 0x0eb
    JMS    SR1        ; 0x0ec
    JMS    SR1        ; 0x0ee
    JMS    SR2        ; 0x0f0
    FIM     P4    0x8 ; 0x0f2
    FIM     P3     20 ; 0x0f4
    FIM     P5      0 ; 0x0f6
    JMS    SR3        ; 0x0f8
    FIM     P6      0 ; 0x0fa
    FIM     P7      8 ; 0x0fc
    JMS    SR1        ; 0x0fe
    JMS    SR4        ; 0x100
    FIM     P7      9 ; 0x102
    JMS    SR1        ; 0x104
    JMS    SR5        ; 0x106
    LD      R8        ; 0x108
    XCH    R14        ; 0x109
    LD      R9        ; 0x10a
    XCH    R15        ; 0x10b
    LD     R11        ; 0x10c
    XCH    R13        ; 0x10d
    JMS    SR1        ; 0x10e
    JMS    SR1        ; 0x110
    JMS    SR0        ; 0x112
    INC    R15        ; 0x114
    JMS    SR1        ; 0x115
    JMS    SR1        ; 0x117
    JMS    SR2        ; 0x119
    FIM     P4    0xA ; 0x11b
    FIM     P3     20 ; 0x11d
    FIM     P5      0 ; 0x11f
    JMS    SR3        ; 0x121
    FIM     P6      0 ; 0x123
    FIM     P7     10 ; 0x125
    JMS    SR1        ; 0x127
    JMS    SR4        ; 0x129
    FIM     P7     11 ; 0x12b
    JMS    SR1        ; 0x12d
    JMS    SR5        ; 0x12f
    LD      R8        ; 0x131
    XCH    R14        ; 0x132
    LD      R9        ; 0x133
    XCH    R15        ; 0x134
    LD     R11        ; 0x135
    XCH    R13        ; 0x136
    JMS    SR1        ; 0x137
    JMS    SR1        ; 0x139
    JMS    SR0        ; 0x13b
    INC    R15        ; 0x13d
    JMS    SR1        ; 0x13e
    JMS    SR1        ; 0x140
    JMS    SR2        ; 0x142
    FIM     P0    0x6 ; 0x144
    FIM     P6      0 ; 0x146
    FIM     P7     18 ; 0x148
    JMS    SR1        ; 0x14a
    JMS    SR0        ; 0x14c
    FIM     P7     19 ; 0x14e
    JMS    SR1        ; 0x150
    JMS    SR2        ; 0x152

L0,
    FIM     P0      0 ; 0x154
    FIM     P7     18 ; 0x156
    JMS    SR1        ; 0x158
    JMS    SR4        ; 0x15a
    FIM     P7     19 ; 0x15c
    JMS    SR1        ; 0x15e
    JMS    SR5        ; 0x160
    FIM     P1      0 ; 0x162
    FIM     P1   0x6C ; 0x164
    JUN L2

L1,
    JUN L3

L2,
    LD      R0        ; 0x100
    SUB     R2        ; 0x100
    JCN 0b1110     L1 ; 0x101
    JCN 0b0010     L4 ; 0x103
    LD      R1        ; 0x105
    SUB     R3        ; 0x106
    JCN 0b1010     L1 ; 0x107

L4,
    FIM     P7      4 ; 0x109
    JMS    SR1        ; 0x10b
    JMS    SR4        ; 0x10d
    FIM     P7      5 ; 0x10f
    JMS    SR1        ; 0x111
    JMS    SR5        ; 0x113
    FIM     P7     10 ; 0x115
    JMS    SR1        ; 0x117
    JMS    SR6        ; 0x119
    FIM     P7     11 ; 0x11b
    JMS    SR1        ; 0x11d
    JMS    SR7        ; 0x11f
    JMS    SR8        ; 0x121
    JMS    SR9        ; 0x123
    JMS   SR10        ; 0x125
    FIM     P7     16 ; 0x127
    JMS    SR1        ; 0x129
    JMS    SR0        ; 0x12b
    FIM     P7     17 ; 0x12d
    JMS    SR1        ; 0x12f
    JMS    SR2        ; 0x131
    FIM     P7      2 ; 0x133
    JMS    SR1        ; 0x135
    JMS    SR4        ; 0x137
    FIM     P7      3 ; 0x139
    JMS    SR1        ; 0x13b
    JMS    SR5        ; 0x13d
    FIM     P7      8 ; 0x13f
    JMS    SR1        ; 0x141
    JMS    SR6        ; 0x143
    FIM     P7      9 ; 0x145
    JMS    SR1        ; 0x147
    JMS    SR7        ; 0x149
    JMS    SR8        ; 0x14b
    JMS    SR9        ; 0x14d
    JMS   SR10        ; 0x14f
    FIM     P7     14 ; 0x151
    JMS    SR1        ; 0x153
    JMS    SR0        ; 0x155
    FIM     P7     15 ; 0x157
    JMS    SR1        ; 0x159
    JMS    SR2        ; 0x15b
    FIM     P7      0 ; 0x15d
    JMS    SR1        ; 0x15f
    JMS    SR4        ; 0x161
    FIM     P7      1 ; 0x163
    JMS    SR1        ; 0x165
    JMS    SR5        ; 0x167
    FIM     P7      6 ; 0x169
    JMS    SR1        ; 0x16b
    JMS    SR6        ; 0x16d
    FIM     P7      7 ; 0x16f
    JMS    SR1        ; 0x171
    JMS    SR7        ; 0x173
    JMS    SR8        ; 0x175
    JMS    SR9        ; 0x177
    JMS   SR10        ; 0x179
    FIM     P7     12 ; 0x17b
    JMS    SR1        ; 0x17d
    JMS    SR0        ; 0x17f
    FIM     P7     13 ; 0x181
    JMS    SR1        ; 0x183
    JMS    SR2        ; 0x185
    FIM     P0      0 ; 0x187
    FIM     P7     16 ; 0x189
    JMS    SR1        ; 0x18b
    JMS    SR4        ; 0x18d
    FIM     P7     17 ; 0x18f
    JMS    SR1        ; 0x191
    JMS    SR5        ; 0x193
    FIM     P1      0 ; 0x195
    FIM     P7     10 ; 0x197
    JMS    SR1        ; 0x199
    JMS    SR6        ; 0x19b
    FIM     P7     11 ; 0x19d
    JMS    SR1        ; 0x19f
    JMS    SR7        ; 0x1a1
    LD      R0        ; 0x1a3
    SUB     R2        ; 0x1a4
    JCN 0b1110     L5 ; 0x1a5
    JCN 0b0010     L6 ; 0x1a7
    LD      R1        ; 0x1a9
    SUB     R3        ; 0x1aa
    JCN 0b1010     L5 ; 0x1ab

L6,
    FIM     P7     14 ; 0x1ad
    JMS    SR1        ; 0x1af
    JMS    SR4        ; 0x1b1
    FIM     P7     15 ; 0x1b3
    JMS    SR1        ; 0x1b5
    JMS    SR5        ; 0x1b7
    FIM     P1    0x1 ; 0x1b9
    JMS    SR8        ; 0x1bb
    JMS    SR9        ; 0x1bd
    JMS   SR10        ; 0x1bf
    FIM     P7     14 ; 0x1c1
    JMS    SR1        ; 0x1c3
    JMS    SR0        ; 0x1c5
    FIM     P7     15 ; 0x1c7
    JMS    SR1        ; 0x1c9
    JMS    SR2        ; 0x1cb

L5,
    FIM     P0      0 ; 0x1cd
    FIM     P7     14 ; 0x1cf
    JMS    SR1        ; 0x1d1
    JMS    SR4        ; 0x1d3
    FIM     P7     15 ; 0x1d5
    JMS    SR1        ; 0x1d7
    JMS    SR5        ; 0x1d9
    FIM     P1      0 ; 0x1db
    FIM     P7      8 ; 0x1dd
    JMS    SR1        ; 0x1df
    JMS    SR6        ; 0x1e1
    FIM     P7      9 ; 0x1e3
    JMS    SR1        ; 0x1e5
    JMS    SR7        ; 0x1e7
    LD      R0        ; 0x1e9
    SUB     R2        ; 0x1ea
    JCN 0b1110     L7 ; 0x1eb
    JCN 0b0010     L8 ; 0x1ed
    LD      R1        ; 0x1ef
    SUB     R3        ; 0x1f0
    JCN 0b1010     L7 ; 0x1f1

L8,
    FIM     P7     12 ; 0x1f3
    JMS    SR1        ; 0x1f5
    JMS    SR4        ; 0x1f7
    FIM     P7     13 ; 0x1f9
    JUN L9

L7,
    JUN L10

L3,
    JUN L11

L9,
    JMS    SR1        ; 0x200
    JMS    SR5        ; 0x200
    FIM     P1    0x1 ; 0x202
    JMS    SR8        ; 0x204
    JMS    SR9        ; 0x206
    JMS   SR10        ; 0x208
    FIM     P7     12 ; 0x20a
    JMS    SR1        ; 0x20c
    JMS    SR0        ; 0x20e
    FIM     P7     13 ; 0x210
    JMS    SR1        ; 0x212
    JMS    SR2        ; 0x214

L10,
    FIM     P7     10 ; 0x216
    JMS    SR1        ; 0x218
    JMS    SR4        ; 0x21a
    FIM     P7     11 ; 0x21c
    JMS    SR1        ; 0x21e
    JMS    SR5        ; 0x220
    FIM     P7      4 ; 0x222
    JMS    SR1        ; 0x224
    JMS    SR0        ; 0x226
    FIM     P7      5 ; 0x228
    JMS    SR1        ; 0x22a
    JMS    SR2        ; 0x22c
    FIM     P7     16 ; 0x22e
    JMS    SR1        ; 0x230
    JMS    SR4        ; 0x232
    FIM     P7     17 ; 0x234
    JMS    SR1        ; 0x236
    JMS    SR5        ; 0x238
    FIM     P7     10 ; 0x23a
    JMS    SR1        ; 0x23c
    JMS    SR0        ; 0x23e
    FIM     P7     11 ; 0x240
    JMS    SR1        ; 0x242
    JMS    SR2        ; 0x244
    FIM     P7      8 ; 0x246
    JMS    SR1        ; 0x248
    JMS    SR4        ; 0x24a
    FIM     P7      9 ; 0x24c
    JMS    SR1        ; 0x24e
    JMS    SR5        ; 0x250
    FIM     P7      2 ; 0x252
    JMS    SR1        ; 0x254
    JMS    SR0        ; 0x256
    FIM     P7      3 ; 0x258
    JMS    SR1        ; 0x25a
    JMS    SR2        ; 0x25c
    FIM     P7     14 ; 0x25e
    JMS    SR1        ; 0x260
    JMS    SR4        ; 0x262
    FIM     P7     15 ; 0x264
    JMS    SR1        ; 0x266
    JMS    SR5        ; 0x268
    FIM     P7      8 ; 0x26a
    JMS    SR1        ; 0x26c
    JMS    SR0        ; 0x26e
    FIM     P7      9 ; 0x270
    JMS    SR1        ; 0x272
    JMS    SR2        ; 0x274
    FIM     P7      6 ; 0x276
    JMS    SR1        ; 0x278
    JMS    SR4        ; 0x27a
    FIM     P7      7 ; 0x27c
    JMS    SR1        ; 0x27e
    JMS    SR5        ; 0x280
    FIM     P7      0 ; 0x282
    JMS    SR1        ; 0x284
    JMS    SR0        ; 0x286
    FIM     P7      1 ; 0x288
    JMS    SR1        ; 0x28a
    JMS    SR2        ; 0x28c
    FIM     P7     12 ; 0x28e
    JMS    SR1        ; 0x290
    JMS    SR4        ; 0x292
    FIM     P7     13 ; 0x294
    JMS    SR1        ; 0x296
    JMS    SR5        ; 0x298
    FIM     P7      6 ; 0x29a
    JMS    SR1        ; 0x29c
    JMS    SR0        ; 0x29e
    FIM     P7      7 ; 0x2a0
    JMS    SR1        ; 0x2a2
    JMS    SR2        ; 0x2a4
    FIM     P7     18 ; 0x2a6
    JMS    SR1        ; 0x2a8
    JMS   SR11        ; 0x2aa
    FIM     P7     19 ; 0x2ac
    JMS    SR1        ; 0x2ae
    JMS   SR12        ; 0x2b0
    FIM     P7     18 ; 0x2b2
    JMS    SR1        ; 0x2b4
    JMS   SR13        ; 0x2b6
    FIM     P7     19 ; 0x2b8
    JMS    SR1        ; 0x2ba
    JMS   SR14        ; 0x2bc
    JMS   SR15        ; 0x2be
    JMS   SR16        ; 0x2c0
    JMS   SR17        ; 0x2c2
    FIM     P3     20 ; 0x2c4
    FIM     P5      0 ; 0x2c6
    JMS    SR3        ; 0x2c8
    FIM     P7     12 ; 0x2ca
    JMS    SR1        ; 0x2cc
    JMS    SR4        ; 0x2ce
    FIM     P7     13 ; 0x2d0
    JMS    SR1        ; 0x2d2
    JMS    SR5        ; 0x2d4
    LD      R8        ; 0x2d6
    XCH    R14        ; 0x2d7
    LD      R9        ; 0x2d8
    XCH    R15        ; 0x2d9
    LD     R11        ; 0x2da
    XCH    R13        ; 0x2db
    JMS    SR1        ; 0x2dc
    JMS    SR1        ; 0x2de
    JMS    SR0        ; 0x2e0
    INC    R15        ; 0x2e2
    JMS    SR1        ; 0x2e3
    JMS    SR1        ; 0x2e5
    JMS    SR2        ; 0x2e7
    FIM     P6      0 ; 0x2e9
    FIM     P7     18 ; 0x2eb
    JMS    SR1        ; 0x2ed
    JMS   SR11        ; 0x2ef
    FIM     P7     19 ; 0x2f1
    JMS    SR1        ; 0x2f3
    JMS   SR12        ; 0x2f5
    FIM     P5    0x2 ; 0x2f7
    JMS   SR15        ; 0x2f9
    JUN L12

L11,
    JUN L13

L12,
    JMS   SR16        ; 0x300
    JMS   SR17        ; 0x300
    FIM     P7     18 ; 0x302
    JMS    SR1        ; 0x304
    JMS   SR13        ; 0x306
    FIM     P7     19 ; 0x308
    JMS    SR1        ; 0x30a
    JMS   SR14        ; 0x30c
    JMS   SR15        ; 0x30e
    JMS   SR16        ; 0x310
    JMS   SR17        ; 0x312
    FIM     P3     20 ; 0x314
    FIM     P5      0 ; 0x316
    JMS    SR3        ; 0x318
    FIM     P7     14 ; 0x31a
    JMS    SR1        ; 0x31c
    JMS    SR4        ; 0x31e
    FIM     P7     15 ; 0x320
    JMS    SR1        ; 0x322
    JMS    SR5        ; 0x324
    LD      R8        ; 0x326
    XCH    R14        ; 0x327
    LD      R9        ; 0x328
    XCH    R15        ; 0x329
    LD     R11        ; 0x32a
    XCH    R13        ; 0x32b
    JMS    SR1        ; 0x32c
    JMS    SR1        ; 0x32e
    JMS    SR0        ; 0x330
    INC    R15        ; 0x332
    JMS    SR1        ; 0x333
    JMS    SR1        ; 0x335
    JMS    SR2        ; 0x337
    FIM     P6      0 ; 0x339
    FIM     P7     18 ; 0x33b
    JMS    SR1        ; 0x33d
    JMS   SR11        ; 0x33f
    FIM     P7     19 ; 0x341
    JMS    SR1        ; 0x343
    JMS   SR12        ; 0x345
    FIM     P5    0x4 ; 0x347
    JMS   SR15        ; 0x349
    JMS   SR16        ; 0x34b
    JMS   SR17        ; 0x34d
    FIM     P7     18 ; 0x34f
    JMS    SR1        ; 0x351
    JMS   SR13        ; 0x353
    FIM     P7     19 ; 0x355
    JMS    SR1        ; 0x357
    JMS   SR14        ; 0x359
    JMS   SR15        ; 0x35b
    JMS   SR16        ; 0x35d
    JMS   SR17        ; 0x35f
    FIM     P3     20 ; 0x361
    FIM     P5      0 ; 0x363
    JMS    SR3        ; 0x365
    FIM     P7     16 ; 0x367
    JMS    SR1        ; 0x369
    JMS    SR4        ; 0x36b
    FIM     P7     17 ; 0x36d
    JMS    SR1        ; 0x36f
    JMS    SR5        ; 0x371
    LD      R8        ; 0x373
    XCH    R14        ; 0x374
    LD      R9        ; 0x375
    XCH    R15        ; 0x376
    LD     R11        ; 0x377
    XCH    R13        ; 0x378
    JMS    SR1        ; 0x379
    JMS    SR1        ; 0x37b
    JMS    SR0        ; 0x37d
    INC    R15        ; 0x37f
    JMS    SR1        ; 0x380
    JMS    SR1        ; 0x382
    JMS    SR2        ; 0x384
    FIM     P6      0 ; 0x386
    FIM     P7     18 ; 0x388
    JMS    SR1        ; 0x38a
    JMS    SR4        ; 0x38c
    FIM     P7     19 ; 0x38e
    JMS    SR1        ; 0x390
    JMS    SR5        ; 0x392
    FIM     P1    0x3 ; 0x394
    JMS    SR8        ; 0x396
    JMS    SR9        ; 0x398
    JMS   SR10        ; 0x39a
    FIM     P7     18 ; 0x39c
    JMS    SR1        ; 0x39e
    JMS    SR0        ; 0x3a0
    FIM     P7     19 ; 0x3a2
    JMS    SR1        ; 0x3a4
    JMS    SR2        ; 0x3a6
    JUN     L0        ; 0x3a8

L13,

EOP,
    JUN    EOP        ; 0x3aa

SR0,
    LD      R0        ; 0x3ac
    WRM               ; 0x3ad
    BBL      0        ; 0x3ae

SR1,
    LD     R13        ; 0x3af
    DCL               ; 0x3b0
    SRC     P7        ; 0x3b1
    BBL      0        ; 0x3b2

SR2,
    LD      R1        ; 0x3b3
    WRM               ; 0x3b4
    BBL      0        ; 0x3b5

SR3,
    LD      R9        ; 0x3b6
    ADD     R7        ; 0x3b7
    XCH     R9        ; 0x3b8
    JCN 0b1010    L14 ; 0x3b9
    ISZ     R8    L14 ; 0x3bb
    INC    R11        ; 0x3bd

L14,
    LD      R8        ; 0x3be
    ADD     R6        ; 0x3bf
    XCH     R8        ; 0x3c0
    JCN 0b1010    L15 ; 0x3c1
    INC     11        ; 0x3c3

L15,
    BBL      0        ; 0x3c4

SR4,
    RDM               ; 0x3c5
    XCH     R0        ; 0x3c6
    BBL      0        ; 0x3c7

SR5,
    RDM               ; 0x3c8
    XCH     R1        ; 0x3c9
    BBL      0        ; 0x3ca

SR6,
    RDM               ; 0x3cb
    XCH     R2        ; 0x3cc
    BBL      0        ; 0x3cd

SR7,
    RDM               ; 0x3ce
    XCH     R3        ; 0x3cf
    BBL      0        ; 0x3d0

SR8,
    LD      R1        ; 0x3d1
    ADD     R3        ; 0x3d2
    XCH     R1        ; 0x3d3
    BBL      0        ; 0x3d4

SR9,
    JCN 0b1010    L16 ; 0x3d5
    LD      R0        ; 0x3d7
    IAC               ; 0x3d8
    XCH     R0        ; 0x3d9

L16,
    BBL      0        ; 0x3da

SR10,
    LD      R0        ; 0x3db
    ADD     R2        ; 0x3dc
    XCH     R0        ; 0x3dd
    BBL      0        ; 0x3de

SR11,
    RDM               ; 0x3df
    XCH     R8        ; 0x3e0
    BBL      0        ; 0x3e1

SR12,
    RDM               ; 0x3e2
    XCH     R9        ; 0x3e3
    BBL      0        ; 0x3e4

SR13,
    RDM               ; 0x3e5
    XCH    R10        ; 0x3e6
    BBL      0        ; 0x3e7

SR14,
    RDM               ; 0x3e8
    XCH    R11        ; 0x3e9
    BBL      0        ; 0x3ea

SR15,
    LD      R9        ; 0x3eb
    ADD    R11        ; 0x3ec
    XCH     R9        ; 0x3ed
    BBL      0        ; 0x3ee

SR16,
    JCN 0b1010    L17 ; 0x3ef
    LD      R8        ; 0x3f1
    IAC               ; 0x3f2
    XCH     R8        ; 0x3f3

L17,
    BBL      0        ; 0x3f4

SR17,
    LD      R8        ; 0x3f5
    ADD    R10        ; 0x3f6
    XCH     R8        ; 0x3f7
    BBL      0        ; 0x3f8
