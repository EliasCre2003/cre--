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
    FIM     P0    0x0 ; 0x042
    FIM     P7     10 ; 0x044
    JMS    SR1        ; 0x046
    JMS    SR0        ; 0x048
    FIM     P7     11 ; 0x04a
    JMS    SR1        ; 0x04c
    JMS    SR2        ; 0x04e
    FIM     P0    0x0 ; 0x050
    FIM     P7     12 ; 0x052
    JMS    SR1        ; 0x054
    JMS    SR0        ; 0x056
    FIM     P7     13 ; 0x058
    JMS    SR1        ; 0x05a
    JMS    SR2        ; 0x05c
    FIM     P0    0x1 ; 0x05e
    FIM     P7     14 ; 0x060
    JMS    SR1        ; 0x062
    JMS    SR0        ; 0x064
    FIM     P7     15 ; 0x066
    JMS    SR1        ; 0x068
    JMS    SR2        ; 0x06a
    FIM     P0    0x0 ; 0x06c
    FIM     P7     16 ; 0x06e
    JMS    SR1        ; 0x070
    JMS    SR0        ; 0x072
    FIM     P7     17 ; 0x074
    JMS    SR1        ; 0x076
    JMS    SR2        ; 0x078
    FIM     P0    0x0 ; 0x07a
    FIM     P7     18 ; 0x07c
    JMS    SR1        ; 0x07e
    JMS    SR0        ; 0x080
    FIM     P7     19 ; 0x082
    JMS    SR1        ; 0x084
    JMS    SR2        ; 0x086
    FIM     P0    0x0 ; 0x088
    FIM     P7     20 ; 0x08a
    JMS    SR1        ; 0x08c
    JMS    SR0        ; 0x08e
    FIM     P7     21 ; 0x090
    JMS    SR1        ; 0x092
    JMS    SR2        ; 0x094
    FIM     P0    0x0 ; 0x096
    FIM     P7     22 ; 0x098
    JMS    SR1        ; 0x09a
    JMS    SR0        ; 0x09c
    FIM     P7     23 ; 0x09e
    JMS    SR1        ; 0x0a0
    JMS    SR2        ; 0x0a2
    FIM     P4    0x0 ; 0x0a4
    FIM     P3     24 ; 0x0a6
    FIM     P5      0 ; 0x0a8
    JMS    SR3        ; 0x0aa
    FIM     P7      0 ; 0x0ac
    JMS    SR1        ; 0x0ae
    JMS    SR4        ; 0x0b0
    FIM     P7      1 ; 0x0b2
    JMS    SR1        ; 0x0b4
    JMS    SR5        ; 0x0b6
    LD      R8        ; 0x0b8
    XCH    R14        ; 0x0b9
    LD      R9        ; 0x0ba
    XCH    R15        ; 0x0bb
    LD     R11        ; 0x0bc
    XCH    R13        ; 0x0bd
    JMS    SR1        ; 0x0be
    JMS    SR1        ; 0x0c0
    JMS    SR0        ; 0x0c2
    INC    R15        ; 0x0c4
    JMS    SR1        ; 0x0c5
    JMS    SR1        ; 0x0c7
    JMS    SR2        ; 0x0c9
    FIM     P4    0x2 ; 0x0cb
    FIM     P3     24 ; 0x0cd
    FIM     P5      0 ; 0x0cf
    JMS    SR3        ; 0x0d1
    FIM     P6      0 ; 0x0d3
    FIM     P7      2 ; 0x0d5
    JMS    SR1        ; 0x0d7
    JMS    SR4        ; 0x0d9
    FIM     P7      3 ; 0x0db
    JMS    SR1        ; 0x0dd
    JMS    SR5        ; 0x0df
    LD      R8        ; 0x0e1
    XCH    R14        ; 0x0e2
    LD      R9        ; 0x0e3
    XCH    R15        ; 0x0e4
    LD     R11        ; 0x0e5
    XCH    R13        ; 0x0e6
    JMS    SR1        ; 0x0e7
    JMS    SR1        ; 0x0e9
    JMS    SR0        ; 0x0eb
    INC    R15        ; 0x0ed
    JMS    SR1        ; 0x0ee
    JMS    SR1        ; 0x0f0
    JMS    SR2        ; 0x0f2
    FIM     P4    0x4 ; 0x0f4
    FIM     P3     24 ; 0x0f6
    FIM     P5      0 ; 0x0f8
    JMS    SR3        ; 0x0fa
    FIM     P6      0 ; 0x0fc
    FIM     P7      4 ; 0x100
    JMS    SR1        ; 0x102
    JMS    SR4        ; 0x104
    FIM     P7      5 ; 0x106
    JMS    SR1        ; 0x108
    JMS    SR5        ; 0x10a
    LD      R8        ; 0x10c
    XCH    R14        ; 0x10d
    LD      R9        ; 0x10e
    XCH    R15        ; 0x10f
    LD     R11        ; 0x110
    XCH    R13        ; 0x111
    JMS    SR1        ; 0x112
    JMS    SR1        ; 0x114
    JMS    SR0        ; 0x116
    INC    R15        ; 0x118
    JMS    SR1        ; 0x119
    JMS    SR1        ; 0x11b
    JMS    SR2        ; 0x11d
    FIM     P4    0x6 ; 0x11f
    FIM     P3     24 ; 0x121
    FIM     P5      0 ; 0x123
    JMS    SR3        ; 0x125
    FIM     P6      0 ; 0x127
    FIM     P7      6 ; 0x129
    JMS    SR1        ; 0x12b
    JMS    SR4        ; 0x12d
    FIM     P7      7 ; 0x12f
    JMS    SR1        ; 0x131
    JMS    SR5        ; 0x133
    LD      R8        ; 0x135
    XCH    R14        ; 0x136
    LD      R9        ; 0x137
    XCH    R15        ; 0x138
    LD     R11        ; 0x139
    XCH    R13        ; 0x13a
    JMS    SR1        ; 0x13b
    JMS    SR1        ; 0x13d
    JMS    SR0        ; 0x13f
    INC    R15        ; 0x141
    JMS    SR1        ; 0x142
    JMS    SR1        ; 0x144
    JMS    SR2        ; 0x146
    FIM     P4    0x8 ; 0x148
    FIM     P3     24 ; 0x14a
    FIM     P5      0 ; 0x14c
    JMS    SR3        ; 0x14e
    FIM     P6      0 ; 0x150
    FIM     P7      8 ; 0x152
    JMS    SR1        ; 0x154
    JMS    SR4        ; 0x156
    FIM     P7      9 ; 0x158
    JMS    SR1        ; 0x15a
    JMS    SR5        ; 0x15c
    LD      R8        ; 0x15e
    XCH    R14        ; 0x15f
    LD      R9        ; 0x160
    XCH    R15        ; 0x161
    LD     R11        ; 0x162
    XCH    R13        ; 0x163
    JMS    SR1        ; 0x164
    JMS    SR1        ; 0x166
    JMS    SR0        ; 0x168
    INC    R15        ; 0x16a
    JMS    SR1        ; 0x16b
    JMS    SR1        ; 0x16d
    JMS    SR2        ; 0x16f
    FIM     P4    0xA ; 0x171
    FIM     P3     24 ; 0x173
    FIM     P5      0 ; 0x175
    JMS    SR3        ; 0x177
    FIM     P6      0 ; 0x179
    FIM     P7     10 ; 0x17b
    JMS    SR1        ; 0x17d
    JMS    SR4        ; 0x17f
    FIM     P7     11 ; 0x181
    JMS    SR1        ; 0x183
    JMS    SR5        ; 0x185
    LD      R8        ; 0x187
    XCH    R14        ; 0x188
    LD      R9        ; 0x189
    XCH    R15        ; 0x18a
    LD     R11        ; 0x18b
    XCH    R13        ; 0x18c
    JMS    SR1        ; 0x18d
    JMS    SR1        ; 0x18f
    JMS    SR0        ; 0x191
    INC    R15        ; 0x193
    JMS    SR1        ; 0x194
    JMS    SR1        ; 0x196
    JMS    SR2        ; 0x198
    FIM     P4    0xC ; 0x19a
    FIM     P3     24 ; 0x19c
    FIM     P5      0 ; 0x19e
    JMS    SR3        ; 0x1a0
    FIM     P6      0 ; 0x1a2
    FIM     P7     12 ; 0x1a4
    JMS    SR1        ; 0x1a6
    JMS    SR4        ; 0x1a8
    FIM     P7     13 ; 0x1aa
    JMS    SR1        ; 0x1ac
    JMS    SR5        ; 0x1ae
    LD      R8        ; 0x1b0
    XCH    R14        ; 0x1b1
    LD      R9        ; 0x1b2
    XCH    R15        ; 0x1b3
    LD     R11        ; 0x1b4
    XCH    R13        ; 0x1b5
    JMS    SR1        ; 0x1b6
    JMS    SR1        ; 0x1b8
    JMS    SR0        ; 0x1ba
    INC    R15        ; 0x1bc
    JMS    SR1        ; 0x1bd
    JMS    SR1        ; 0x1bf
    JMS    SR2        ; 0x1c1
    FIM     P4    0xE ; 0x1c3
    FIM     P3     24 ; 0x1c5
    FIM     P5      0 ; 0x1c7
    JMS    SR3        ; 0x1c9
    FIM     P6      0 ; 0x1cb
    FIM     P7     14 ; 0x1cd
    JMS    SR1        ; 0x1cf
    JMS    SR4        ; 0x1d1
    FIM     P7     15 ; 0x1d3
    JMS    SR1        ; 0x1d5
    JMS    SR5        ; 0x1d7
    LD      R8        ; 0x1d9
    XCH    R14        ; 0x1da
    LD      R9        ; 0x1db
    XCH    R15        ; 0x1dc
    LD     R11        ; 0x1dd
    XCH    R13        ; 0x1de
    JMS    SR1        ; 0x1df
    JMS    SR1        ; 0x1e1
    JMS    SR0        ; 0x1e3
    INC    R15        ; 0x1e5
    JMS    SR1        ; 0x1e6
    JMS    SR1        ; 0x1e8
    JMS    SR2        ; 0x1ea
    FIM     P0    0x8 ; 0x1ec
    FIM     P6      1 ; 0x1ee
    FIM     P7     24 ; 0x1f0
    JMS    SR1        ; 0x1f2
    JMS    SR0        ; 0x1f4
    FIM     P7     25 ; 0x1f6
    JMS    SR1        ; 0x1f8
    JMS    SR2        ; 0x1fa

L0,
    FIM     P0      0 ; 0x1fc
    FIM     P7     24 ; 0x200
    JMS    SR1        ; 0x202
    JMS    SR4        ; 0x204
    FIM     P7     25 ; 0x206
    JMS    SR1        ; 0x208
    JMS    SR5        ; 0x20a
    FIM     P1      0 ; 0x20c
    FIM     P1   0x80 ; 0x20e
    LD      R0        ; 0x210
    SUB     R2        ; 0x211
    JCN 0b1110     L1 ; 0x212
    JCN 0b0010     L2 ; 0x214
    LD      R1        ; 0x216
    SUB     R3        ; 0x217
    JCN 0b1010     L1 ; 0x218

L2,
    FIM     P6      0 ; 0x21a
    FIM     P7      6 ; 0x21c
    JMS    SR1        ; 0x21e
    JMS    SR4        ; 0x220
    FIM     P7      7 ; 0x222
    JMS    SR1        ; 0x224
    JMS    SR5        ; 0x226
    FIM     P7     14 ; 0x228
    JMS    SR1        ; 0x22a
    JMS    SR6        ; 0x22c
    FIM     P7     15 ; 0x22e
    JMS    SR1        ; 0x230
    JMS    SR7        ; 0x232
    JMS    SR8        ; 0x234
    JMS    SR9        ; 0x236
    FIM     P7     22 ; 0x238
    JMS    SR1        ; 0x23a
    JMS    SR0        ; 0x23c
    FIM     P7     23 ; 0x23e
    JMS    SR1        ; 0x240
    JMS    SR2        ; 0x242
    FIM     P7      4 ; 0x244
    JMS    SR1        ; 0x246
    JMS    SR4        ; 0x248
    FIM     P7      5 ; 0x24a
    JMS    SR1        ; 0x24c
    JMS    SR5        ; 0x24e
    FIM     P7     12 ; 0x250
    JMS    SR1        ; 0x252
    JMS    SR6        ; 0x254
    FIM     P7     13 ; 0x256
    JMS    SR1        ; 0x258
    JMS    SR7        ; 0x25a
    JMS    SR8        ; 0x25c
    JMS    SR9        ; 0x25e
    FIM     P7     20 ; 0x260
    JMS    SR1        ; 0x262
    JMS    SR0        ; 0x264
    FIM     P7     21 ; 0x266
    JMS    SR1        ; 0x268
    JMS    SR2        ; 0x26a
    FIM     P7      2 ; 0x26c
    JMS    SR1        ; 0x26e
    JMS    SR4        ; 0x270
    FIM     P7      3 ; 0x272
    JMS    SR1        ; 0x274
    JMS    SR5        ; 0x276
    FIM     P7     10 ; 0x278
    JMS    SR1        ; 0x27a
    JMS    SR6        ; 0x27c
    FIM     P7     11 ; 0x27e
    JMS    SR1        ; 0x280
    JMS    SR7        ; 0x282
    JMS    SR8        ; 0x284
    JMS    SR9        ; 0x286
    FIM     P7     18 ; 0x288
    JMS    SR1        ; 0x28a
    JMS    SR0        ; 0x28c
    FIM     P7     19 ; 0x28e
    JMS    SR1        ; 0x290
    JMS    SR2        ; 0x292
    FIM     P7      0 ; 0x294
    JMS    SR1        ; 0x296
    JMS    SR4        ; 0x298
    FIM     P7      1 ; 0x29a
    JMS    SR1        ; 0x29c
    JMS    SR5        ; 0x29e
    FIM     P7      8 ; 0x2a0
    JMS    SR1        ; 0x2a2
    JMS    SR6        ; 0x2a4
    FIM     P7      9 ; 0x2a6
    JMS    SR1        ; 0x2a8
    JMS    SR7        ; 0x2aa
    JMS    SR8        ; 0x2ac
    JMS    SR9        ; 0x2ae
    FIM     P7     16 ; 0x2b0
    JMS    SR1        ; 0x2b2
    JMS    SR0        ; 0x2b4
    FIM     P7     17 ; 0x2b6
    JMS    SR1        ; 0x2b8
    JMS    SR2        ; 0x2ba
    FIM     P0      0 ; 0x2bc
    FIM     P7     22 ; 0x2be
    JMS    SR1        ; 0x2c0
    JMS    SR4        ; 0x2c2
    FIM     P7     23 ; 0x2c4
    JMS    SR1        ; 0x2c6
    JMS    SR5        ; 0x2c8
    FIM     P1      0 ; 0x2ca
    FIM     P7     14 ; 0x2cc
    JMS    SR1        ; 0x2ce
    JMS    SR6        ; 0x2d0
    FIM     P7     15 ; 0x2d2
    JMS    SR1        ; 0x2d4
    JMS    SR7        ; 0x2d6
    LD      R0        ; 0x2d8
    SUB     R2        ; 0x2d9
    JCN 0b1110     L3 ; 0x2da
    JCN 0b0010     L4 ; 0x2dc
    LD      R1        ; 0x2de
    SUB     R3        ; 0x2df
    JCN 0b1010     L3 ; 0x2e0

L4,
    FIM     P7     20 ; 0x2e2
    JMS    SR1        ; 0x2e4
    JMS    SR4        ; 0x2e6
    FIM     P7     21 ; 0x2e8
    JMS    SR1        ; 0x2ea
    JMS    SR5        ; 0x2ec
    ISZ     R1     L5 ; 0x2ee
    INC     R0        ; 0x2f0

L5,
    FIM     P7     20 ; 0x2f1
    JMS    SR1        ; 0x2f3
    JMS    SR0        ; 0x2f5
    FIM     P7     21 ; 0x2f7
    JMS    SR1        ; 0x2f9
    JUN L6

L3,
    JUN L7

L1,
    JUN L8
    NOP

L6,
    JMS    SR2        ; 0x300

L7,
    FIM     P0      0 ; 0x300
    FIM     P7     20 ; 0x302
    JMS    SR1        ; 0x304
    JMS    SR4        ; 0x306
    FIM     P7     21 ; 0x308
    JMS    SR1        ; 0x30a
    JMS    SR5        ; 0x30c
    FIM     P1      0 ; 0x30e
    FIM     P7     12 ; 0x310
    JMS    SR1        ; 0x312
    JMS    SR6        ; 0x314
    FIM     P7     13 ; 0x316
    JMS    SR1        ; 0x318
    JMS    SR7        ; 0x31a
    LD      R0        ; 0x31c
    SUB     R2        ; 0x31d
    JCN 0b1110     L9 ; 0x31e
    JCN 0b0010    L10 ; 0x320
    LD      R1        ; 0x322
    SUB     R3        ; 0x323
    JCN 0b1010     L9 ; 0x324

L10,
    FIM     P7     18 ; 0x326
    JMS    SR1        ; 0x328
    JMS    SR4        ; 0x32a
    FIM     P7     19 ; 0x32c
    JMS    SR1        ; 0x32e
    JMS    SR5        ; 0x330
    ISZ     R1    L11 ; 0x332
    INC     R0        ; 0x334

L11,
    FIM     P7     18 ; 0x335
    JMS    SR1        ; 0x337
    JMS    SR0        ; 0x339
    FIM     P7     19 ; 0x33b
    JMS    SR1        ; 0x33d
    JMS    SR2        ; 0x33f

L9,
    FIM     P0      0 ; 0x341
    FIM     P7     18 ; 0x343
    JMS    SR1        ; 0x345
    JMS    SR4        ; 0x347
    FIM     P7     19 ; 0x349
    JMS    SR1        ; 0x34b
    JMS    SR5        ; 0x34d
    FIM     P1      0 ; 0x34f
    FIM     P7     10 ; 0x351
    JMS    SR1        ; 0x353
    JMS    SR6        ; 0x355
    FIM     P7     11 ; 0x357
    JMS    SR1        ; 0x359
    JMS    SR7        ; 0x35b
    LD      R0        ; 0x35d
    SUB     R2        ; 0x35e
    JCN 0b1110    L12 ; 0x35f
    JCN 0b0010    L13 ; 0x361
    LD      R1        ; 0x363
    SUB     R3        ; 0x364
    JCN 0b1010    L12 ; 0x365

L13,
    FIM     P7     16 ; 0x367
    JMS    SR1        ; 0x369
    JMS    SR4        ; 0x36b
    FIM     P7     17 ; 0x36d
    JMS    SR1        ; 0x36f
    JMS    SR5        ; 0x371
    ISZ     R1    L14 ; 0x373
    INC     R0        ; 0x375

L14,
    FIM     P7     16 ; 0x376
    JMS    SR1        ; 0x378
    JMS    SR0        ; 0x37a
    FIM     P7     17 ; 0x37c
    JMS    SR1        ; 0x37e
    JMS    SR2        ; 0x380

L12,
    FIM     P7     14 ; 0x382
    JMS    SR1        ; 0x384
    JMS    SR4        ; 0x386
    FIM     P7     15 ; 0x388
    JMS    SR1        ; 0x38a
    JMS    SR5        ; 0x38c
    FIM     P7      6 ; 0x38e
    JMS    SR1        ; 0x390
    JMS    SR0        ; 0x392
    FIM     P7      7 ; 0x394
    JMS    SR1        ; 0x396
    JMS    SR2        ; 0x398
    FIM     P7     22 ; 0x39a
    JMS    SR1        ; 0x39c
    JMS    SR4        ; 0x39e
    FIM     P7     23 ; 0x3a0
    JMS    SR1        ; 0x3a2
    JMS    SR5        ; 0x3a4
    FIM     P7     14 ; 0x3a6
    JMS    SR1        ; 0x3a8
    JMS    SR0        ; 0x3aa
    FIM     P7     15 ; 0x3ac
    JMS    SR1        ; 0x3ae
    JMS    SR2        ; 0x3b0
    FIM     P7     12 ; 0x3b2
    JMS    SR1        ; 0x3b4
    JMS    SR4        ; 0x3b6
    FIM     P7     13 ; 0x3b8
    JMS    SR1        ; 0x3ba
    JMS    SR5        ; 0x3bc
    FIM     P7      4 ; 0x3be
    JMS    SR1        ; 0x3c0
    JMS    SR0        ; 0x3c2
    FIM     P7      5 ; 0x3c4
    JMS    SR1        ; 0x3c6
    JMS    SR2        ; 0x3c8
    FIM     P7     20 ; 0x3ca
    JMS    SR1        ; 0x3cc
    JMS    SR4        ; 0x3ce
    FIM     P7     21 ; 0x3d0
    JMS    SR1        ; 0x3d2
    JMS    SR5        ; 0x3d4
    FIM     P7     12 ; 0x3d6
    JMS    SR1        ; 0x3d8
    JMS    SR0        ; 0x3da
    FIM     P7     13 ; 0x3dc
    JMS    SR1        ; 0x3de
    JMS    SR2        ; 0x3e0
    FIM     P7     10 ; 0x3e2
    JMS    SR1        ; 0x3e4
    JMS    SR4        ; 0x3e6
    FIM     P7     11 ; 0x3e8
    JMS    SR1        ; 0x3ea
    JMS    SR5        ; 0x3ec
    FIM     P7      2 ; 0x3ee
    JMS    SR1        ; 0x3f0
    JMS    SR0        ; 0x3f2
    FIM     P7      3 ; 0x3f4
    JMS    SR1        ; 0x3f6
    JMS    SR2        ; 0x3f8
    FIM     P7     18 ; 0x3fa
    JUN L15

L8,
    JUN L16
    NOP

L15,
    JMS    SR1        ; 0x400
    JMS    SR4        ; 0x400
    FIM     P7     19 ; 0x402
    JMS    SR1        ; 0x404
    JMS    SR5        ; 0x406
    FIM     P7     10 ; 0x408
    JMS    SR1        ; 0x40a
    JMS    SR0        ; 0x40c
    FIM     P7     11 ; 0x40e
    JMS    SR1        ; 0x410
    JMS    SR2        ; 0x412
    FIM     P7      8 ; 0x414
    JMS    SR1        ; 0x416
    JMS    SR4        ; 0x418
    FIM     P7      9 ; 0x41a
    JMS    SR1        ; 0x41c
    JMS    SR5        ; 0x41e
    FIM     P7      0 ; 0x420
    JMS    SR1        ; 0x422
    JMS    SR0        ; 0x424
    FIM     P7      1 ; 0x426
    JMS    SR1        ; 0x428
    JMS    SR2        ; 0x42a
    FIM     P7     16 ; 0x42c
    JMS    SR1        ; 0x42e
    JMS    SR4        ; 0x430
    FIM     P7     17 ; 0x432
    JMS    SR1        ; 0x434
    JMS    SR5        ; 0x436
    FIM     P7      8 ; 0x438
    JMS    SR1        ; 0x43a
    JMS    SR0        ; 0x43c
    FIM     P7      9 ; 0x43e
    JMS    SR1        ; 0x440
    JMS    SR2        ; 0x442
    FIM     P6      1 ; 0x444
    FIM     P7     24 ; 0x446
    JMS    SR1        ; 0x448
    JMS   SR10        ; 0x44a
    FIM     P7     25 ; 0x44c
    JMS    SR1        ; 0x44e
    JMS   SR11        ; 0x450
    FIM     P7     24 ; 0x452
    JMS    SR1        ; 0x454
    JMS   SR12        ; 0x456
    FIM     P7     25 ; 0x458
    JMS    SR1        ; 0x45a
    JMS   SR13        ; 0x45c
    JMS   SR14        ; 0x45e
    JMS   SR15        ; 0x460
    FIM     P3     24 ; 0x462
    FIM     P5      0 ; 0x464
    JMS    SR3        ; 0x466
    FIM     P6      0 ; 0x468
    FIM     P7     16 ; 0x46a
    JMS    SR1        ; 0x46c
    JMS    SR4        ; 0x46e
    FIM     P7     17 ; 0x470
    JMS    SR1        ; 0x472
    JMS    SR5        ; 0x474
    LD      R8        ; 0x476
    XCH    R14        ; 0x477
    LD      R9        ; 0x478
    XCH    R15        ; 0x479
    LD     R11        ; 0x47a
    XCH    R13        ; 0x47b
    JMS    SR1        ; 0x47c
    JMS    SR1        ; 0x47e
    JMS    SR0        ; 0x480
    INC    R15        ; 0x482
    JMS    SR1        ; 0x483
    JMS    SR1        ; 0x485
    JMS    SR2        ; 0x487
    FIM     P6      1 ; 0x489
    FIM     P7     24 ; 0x48b
    JMS    SR1        ; 0x48d
    JMS   SR10        ; 0x48f
    FIM     P7     25 ; 0x491
    JMS    SR1        ; 0x493
    JMS   SR11        ; 0x495
    FIM     P5    0x2 ; 0x497
    JMS   SR14        ; 0x499
    JMS   SR15        ; 0x49b
    FIM     P7     24 ; 0x49d
    JMS    SR1        ; 0x49f
    JMS   SR12        ; 0x4a1
    FIM     P7     25 ; 0x4a3
    JMS    SR1        ; 0x4a5
    JMS   SR13        ; 0x4a7
    JMS   SR14        ; 0x4a9
    JMS   SR15        ; 0x4ab
    FIM     P3     24 ; 0x4ad
    FIM     P5      0 ; 0x4af
    JMS    SR3        ; 0x4b1
    FIM     P6      0 ; 0x4b3
    FIM     P7     18 ; 0x4b5
    JMS    SR1        ; 0x4b7
    JMS    SR4        ; 0x4b9
    FIM     P7     19 ; 0x4bb
    JMS    SR1        ; 0x4bd
    JMS    SR5        ; 0x4bf
    LD      R8        ; 0x4c1
    XCH    R14        ; 0x4c2
    LD      R9        ; 0x4c3
    XCH    R15        ; 0x4c4
    LD     R11        ; 0x4c5
    XCH    R13        ; 0x4c6
    JMS    SR1        ; 0x4c7
    JMS    SR1        ; 0x4c9
    JMS    SR0        ; 0x4cb
    INC    R15        ; 0x4cd
    JMS    SR1        ; 0x4ce
    JMS    SR1        ; 0x4d0
    JMS    SR2        ; 0x4d2
    FIM     P6      1 ; 0x4d4
    FIM     P7     24 ; 0x4d6
    JMS    SR1        ; 0x4d8
    JMS   SR10        ; 0x4da
    FIM     P7     25 ; 0x4dc
    JMS    SR1        ; 0x4de
    JMS   SR11        ; 0x4e0
    FIM     P5    0x4 ; 0x4e2
    JMS   SR14        ; 0x4e4
    JMS   SR15        ; 0x4e6
    FIM     P7     24 ; 0x4e8
    JMS    SR1        ; 0x4ea
    JMS   SR12        ; 0x4ec
    FIM     P7     25 ; 0x4ee
    JMS    SR1        ; 0x4f0
    JMS   SR13        ; 0x4f2
    JMS   SR14        ; 0x4f4
    JMS   SR15        ; 0x4f6
    FIM     P3     24 ; 0x4f8
    FIM     P5      0 ; 0x4fa
    JUN L17

L16,
    JUN L18
    NOP

L17,
    JMS    SR3        ; 0x500
    FIM     P6      0 ; 0x500
    FIM     P7     20 ; 0x502
    JMS    SR1        ; 0x504
    JMS    SR4        ; 0x506
    FIM     P7     21 ; 0x508
    JMS    SR1        ; 0x50a
    JMS    SR5        ; 0x50c
    LD      R8        ; 0x50e
    XCH    R14        ; 0x50f
    LD      R9        ; 0x510
    XCH    R15        ; 0x511
    LD     R11        ; 0x512
    XCH    R13        ; 0x513
    JMS    SR1        ; 0x514
    JMS    SR1        ; 0x516
    JMS    SR0        ; 0x518
    INC    R15        ; 0x51a
    JMS    SR1        ; 0x51b
    JMS    SR1        ; 0x51d
    JMS    SR2        ; 0x51f
    FIM     P6      1 ; 0x521
    FIM     P7     24 ; 0x523
    JMS    SR1        ; 0x525
    JMS   SR10        ; 0x527
    FIM     P7     25 ; 0x529
    JMS    SR1        ; 0x52b
    JMS   SR11        ; 0x52d
    FIM     P5    0x6 ; 0x52f
    JMS   SR14        ; 0x531
    JMS   SR15        ; 0x533
    FIM     P7     24 ; 0x535
    JMS    SR1        ; 0x537
    JMS   SR12        ; 0x539
    FIM     P7     25 ; 0x53b
    JMS    SR1        ; 0x53d
    JMS   SR13        ; 0x53f
    JMS   SR14        ; 0x541
    JMS   SR15        ; 0x543
    FIM     P3     24 ; 0x545
    FIM     P5      0 ; 0x547
    JMS    SR3        ; 0x549
    FIM     P6      0 ; 0x54b
    FIM     P7     22 ; 0x54d
    JMS    SR1        ; 0x54f
    JMS    SR4        ; 0x551
    FIM     P7     23 ; 0x553
    JMS    SR1        ; 0x555
    JMS    SR5        ; 0x557
    LD      R8        ; 0x559
    XCH    R14        ; 0x55a
    LD      R9        ; 0x55b
    XCH    R15        ; 0x55c
    LD     R11        ; 0x55d
    XCH    R13        ; 0x55e
    JMS    SR1        ; 0x55f
    JMS    SR1        ; 0x561
    JMS    SR0        ; 0x563
    INC    R15        ; 0x565
    JMS    SR1        ; 0x566
    JMS    SR1        ; 0x568
    JMS    SR2        ; 0x56a
    FIM     P6      1 ; 0x56c
    FIM     P7     24 ; 0x56e
    JMS    SR1        ; 0x570
    JMS    SR4        ; 0x572
    FIM     P7     25 ; 0x574
    JMS    SR1        ; 0x576
    JMS    SR5        ; 0x578
    FIM     P1    0x4 ; 0x57a
    JMS    SR8        ; 0x57c
    JMS    SR9        ; 0x57e
    FIM     P7     24 ; 0x580
    JMS    SR1        ; 0x582
    JMS    SR0        ; 0x584
    FIM     P7     25 ; 0x586
    JMS    SR1        ; 0x588
    JMS    SR2        ; 0x58a
    JUN     L0        ; 0x58c

L18,

EOP,
    JUN    EOP        ; 0x58e

; save_from_reg
SR0,
    LD      R0        ; 0x590
    WRM               ; 0x591
    BBL      0        ; 0x592

; select_word_in_memory
SR1,
    LD     R13        ; 0x593
    DCL               ; 0x594
    SRC     P7        ; 0x595
    BBL      0        ; 0x596

; save_from_reg
SR2,
    LD      R1        ; 0x597
    WRM               ; 0x598
    BBL      0        ; 0x599

; twelve_bit_add
SR3,
    LD      R9        ; 0x59a
    ADD     R7        ; 0x59b
    XCH     R9        ; 0x59c
    JCN 0b1010    L19 ; 0x59d
    ISZ     R8    L19 ; 0x59f
    INC    R11        ; 0x5a1

L19,
    LD      R8        ; 0x5a2
    ADD     R6        ; 0x5a3
    XCH     R8        ; 0x5a4
    JCN 0b1010    L20 ; 0x5a5
    INC     11        ; 0x5a7

L20,
    BBL      0        ; 0x5a8

; load_to_reg
SR4,
    RDM               ; 0x5a9
    XCH     R0        ; 0x5aa
    BBL      0        ; 0x5ab

; load_to_reg
SR5,
    RDM               ; 0x5ac
    XCH     R1        ; 0x5ad
    BBL      0        ; 0x5ae

; load_to_reg
SR6,
    RDM               ; 0x5af
    XCH     R2        ; 0x5b0
    BBL      0        ; 0x5b1

; load_to_reg
SR7,
    RDM               ; 0x5b2
    XCH     R3        ; 0x5b3
    BBL      0        ; 0x5b4

; opperation_reg_to_pair
SR8,
    LD      R1        ; 0x5b5
    ADD     R3        ; 0x5b6
    XCH     R1        ; 0x5b7
    JCN 0b1010    L21 ; 0x5b8
    LD      R0        ; 0x5ba
    IAC               ; 0x5bb
    XCH     R0        ; 0x5bc

L21,
    BBL      0        ; 0x5bd

; opperation_reg_to_reg
SR9,
    LD      R0        ; 0x5be
    ADD     R2        ; 0x5bf
    XCH     R0        ; 0x5c0
    BBL      0        ; 0x5c1

; load_to_reg
SR10,
    RDM               ; 0x5c2
    XCH     R8        ; 0x5c3
    BBL      0        ; 0x5c4

; load_to_reg
SR11,
    RDM               ; 0x5c5
    XCH     R9        ; 0x5c6
    BBL      0        ; 0x5c7

; load_to_reg
SR12,
    RDM               ; 0x5c8
    XCH    R10        ; 0x5c9
    BBL      0        ; 0x5ca

; load_to_reg
SR13,
    RDM               ; 0x5cb
    XCH    R11        ; 0x5cc
    BBL      0        ; 0x5cd

; opperation_reg_to_pair
SR14,
    LD      R9        ; 0x5ce
    ADD    R11        ; 0x5cf
    XCH     R9        ; 0x5d0
    JCN 0b1010    L22 ; 0x5d1
    LD      R8        ; 0x5d3
    IAC               ; 0x5d4
    XCH     R8        ; 0x5d5

L22,
    BBL      0        ; 0x5d6

; opperation_reg_to_reg
SR15,
    LD      R8        ; 0x5d7
    ADD    R10        ; 0x5d8
    XCH     R8        ; 0x5d9
    BBL      0        ; 0x5da
