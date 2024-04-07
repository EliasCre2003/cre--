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
    JMS   SR10        ; 0x238
    FIM     P7     22 ; 0x23a
    JMS    SR1        ; 0x23c
    JMS    SR0        ; 0x23e
    FIM     P7     23 ; 0x240
    JMS    SR1        ; 0x242
    JMS    SR2        ; 0x244
    FIM     P7      4 ; 0x246
    JMS    SR1        ; 0x248
    JMS    SR4        ; 0x24a
    FIM     P7      5 ; 0x24c
    JMS    SR1        ; 0x24e
    JMS    SR5        ; 0x250
    FIM     P7     12 ; 0x252
    JMS    SR1        ; 0x254
    JMS    SR6        ; 0x256
    FIM     P7     13 ; 0x258
    JMS    SR1        ; 0x25a
    JMS    SR7        ; 0x25c
    JMS    SR8        ; 0x25e
    JMS    SR9        ; 0x260
    JMS   SR10        ; 0x262
    FIM     P7     20 ; 0x264
    JMS    SR1        ; 0x266
    JMS    SR0        ; 0x268
    FIM     P7     21 ; 0x26a
    JMS    SR1        ; 0x26c
    JMS    SR2        ; 0x26e
    FIM     P7      2 ; 0x270
    JMS    SR1        ; 0x272
    JMS    SR4        ; 0x274
    FIM     P7      3 ; 0x276
    JMS    SR1        ; 0x278
    JMS    SR5        ; 0x27a
    FIM     P7     10 ; 0x27c
    JMS    SR1        ; 0x27e
    JMS    SR6        ; 0x280
    FIM     P7     11 ; 0x282
    JMS    SR1        ; 0x284
    JMS    SR7        ; 0x286
    JMS    SR8        ; 0x288
    JMS    SR9        ; 0x28a
    JMS   SR10        ; 0x28c
    FIM     P7     18 ; 0x28e
    JMS    SR1        ; 0x290
    JMS    SR0        ; 0x292
    FIM     P7     19 ; 0x294
    JMS    SR1        ; 0x296
    JMS    SR2        ; 0x298
    FIM     P7      0 ; 0x29a
    JMS    SR1        ; 0x29c
    JMS    SR4        ; 0x29e
    FIM     P7      1 ; 0x2a0
    JMS    SR1        ; 0x2a2
    JMS    SR5        ; 0x2a4
    FIM     P7      8 ; 0x2a6
    JMS    SR1        ; 0x2a8
    JMS    SR6        ; 0x2aa
    FIM     P7      9 ; 0x2ac
    JMS    SR1        ; 0x2ae
    JMS    SR7        ; 0x2b0
    JMS    SR8        ; 0x2b2
    JMS    SR9        ; 0x2b4
    JMS   SR10        ; 0x2b6
    FIM     P7     16 ; 0x2b8
    JMS    SR1        ; 0x2ba
    JMS    SR0        ; 0x2bc
    FIM     P7     17 ; 0x2be
    JMS    SR1        ; 0x2c0
    JMS    SR2        ; 0x2c2
    FIM     P0      0 ; 0x2c4
    FIM     P7     22 ; 0x2c6
    JMS    SR1        ; 0x2c8
    JMS    SR4        ; 0x2ca
    FIM     P7     23 ; 0x2cc
    JMS    SR1        ; 0x2ce
    JMS    SR5        ; 0x2d0
    FIM     P1      0 ; 0x2d2
    FIM     P7     14 ; 0x2d4
    JMS    SR1        ; 0x2d6
    JMS    SR6        ; 0x2d8
    FIM     P7     15 ; 0x2da
    JMS    SR1        ; 0x2dc
    JMS    SR7        ; 0x2de
    LD      R0        ; 0x2e0
    SUB     R2        ; 0x2e1
    JCN 0b1110     L3 ; 0x2e2
    JCN 0b0010     L4 ; 0x2e4
    LD      R1        ; 0x2e6
    SUB     R3        ; 0x2e7
    JCN 0b1010     L3 ; 0x2e8

L4,
    FIM     P7     20 ; 0x2ea
    JMS    SR1        ; 0x2ec
    JMS    SR4        ; 0x2ee
    FIM     P7     21 ; 0x2f0
    JMS    SR1        ; 0x2f2
    JMS    SR5        ; 0x2f4
    FIM     P1    0x1 ; 0x2f6
    JMS    SR8        ; 0x2f8
    JUN L5

L3,
    JUN L6

L1,
    JUN L7

L5,
    JMS    SR9        ; 0x300
    JMS   SR10        ; 0x300
    FIM     P7     20 ; 0x302
    JMS    SR1        ; 0x304
    JMS    SR0        ; 0x306
    FIM     P7     21 ; 0x308
    JMS    SR1        ; 0x30a
    JMS    SR2        ; 0x30c

L6,
    FIM     P0      0 ; 0x30e
    FIM     P7     20 ; 0x310
    JMS    SR1        ; 0x312
    JMS    SR4        ; 0x314
    FIM     P7     21 ; 0x316
    JMS    SR1        ; 0x318
    JMS    SR5        ; 0x31a
    FIM     P1      0 ; 0x31c
    FIM     P7     12 ; 0x31e
    JMS    SR1        ; 0x320
    JMS    SR6        ; 0x322
    FIM     P7     13 ; 0x324
    JMS    SR1        ; 0x326
    JMS    SR7        ; 0x328
    LD      R0        ; 0x32a
    SUB     R2        ; 0x32b
    JCN 0b1110     L8 ; 0x32c
    JCN 0b0010     L9 ; 0x32e
    LD      R1        ; 0x330
    SUB     R3        ; 0x331
    JCN 0b1010     L8 ; 0x332

L9,
    FIM     P7     18 ; 0x334
    JMS    SR1        ; 0x336
    JMS    SR4        ; 0x338
    FIM     P7     19 ; 0x33a
    JMS    SR1        ; 0x33c
    JMS    SR5        ; 0x33e
    FIM     P1    0x1 ; 0x340
    JMS    SR8        ; 0x342
    JMS    SR9        ; 0x344
    JMS   SR10        ; 0x346
    FIM     P7     18 ; 0x348
    JMS    SR1        ; 0x34a
    JMS    SR0        ; 0x34c
    FIM     P7     19 ; 0x34e
    JMS    SR1        ; 0x350
    JMS    SR2        ; 0x352

L8,
    FIM     P0      0 ; 0x354
    FIM     P7     18 ; 0x356
    JMS    SR1        ; 0x358
    JMS    SR4        ; 0x35a
    FIM     P7     19 ; 0x35c
    JMS    SR1        ; 0x35e
    JMS    SR5        ; 0x360
    FIM     P1      0 ; 0x362
    FIM     P7     10 ; 0x364
    JMS    SR1        ; 0x366
    JMS    SR6        ; 0x368
    FIM     P7     11 ; 0x36a
    JMS    SR1        ; 0x36c
    JMS    SR7        ; 0x36e
    LD      R0        ; 0x370
    SUB     R2        ; 0x371
    JCN 0b1110    L10 ; 0x372
    JCN 0b0010    L11 ; 0x374
    LD      R1        ; 0x376
    SUB     R3        ; 0x377
    JCN 0b1010    L10 ; 0x378

L11,
    FIM     P7     16 ; 0x37a
    JMS    SR1        ; 0x37c
    JMS    SR4        ; 0x37e
    FIM     P7     17 ; 0x380
    JMS    SR1        ; 0x382
    JMS    SR5        ; 0x384
    FIM     P1    0x1 ; 0x386
    JMS    SR8        ; 0x388
    JMS    SR9        ; 0x38a
    JMS   SR10        ; 0x38c
    FIM     P7     16 ; 0x38e
    JMS    SR1        ; 0x390
    JMS    SR0        ; 0x392
    FIM     P7     17 ; 0x394
    JMS    SR1        ; 0x396
    JMS    SR2        ; 0x398

L10,
    FIM     P7     14 ; 0x39a
    JMS    SR1        ; 0x39c
    JMS    SR4        ; 0x39e
    FIM     P7     15 ; 0x3a0
    JMS    SR1        ; 0x3a2
    JMS    SR5        ; 0x3a4
    FIM     P7      6 ; 0x3a6
    JMS    SR1        ; 0x3a8
    JMS    SR0        ; 0x3aa
    FIM     P7      7 ; 0x3ac
    JMS    SR1        ; 0x3ae
    JMS    SR2        ; 0x3b0
    FIM     P7     22 ; 0x3b2
    JMS    SR1        ; 0x3b4
    JMS    SR4        ; 0x3b6
    FIM     P7     23 ; 0x3b8
    JMS    SR1        ; 0x3ba
    JMS    SR5        ; 0x3bc
    FIM     P7     14 ; 0x3be
    JMS    SR1        ; 0x3c0
    JMS    SR0        ; 0x3c2
    FIM     P7     15 ; 0x3c4
    JMS    SR1        ; 0x3c6
    JMS    SR2        ; 0x3c8
    FIM     P7     12 ; 0x3ca
    JMS    SR1        ; 0x3cc
    JMS    SR4        ; 0x3ce
    FIM     P7     13 ; 0x3d0
    JMS    SR1        ; 0x3d2
    JMS    SR5        ; 0x3d4
    FIM     P7      4 ; 0x3d6
    JMS    SR1        ; 0x3d8
    JMS    SR0        ; 0x3da
    FIM     P7      5 ; 0x3dc
    JMS    SR1        ; 0x3de
    JMS    SR2        ; 0x3e0
    FIM     P7     20 ; 0x3e2
    JMS    SR1        ; 0x3e4
    JMS    SR4        ; 0x3e6
    FIM     P7     21 ; 0x3e8
    JMS    SR1        ; 0x3ea
    JMS    SR5        ; 0x3ec
    FIM     P7     12 ; 0x3ee
    JMS    SR1        ; 0x3f0
    JMS    SR0        ; 0x3f2
    FIM     P7     13 ; 0x3f4
    JMS    SR1        ; 0x3f6
    JMS    SR2        ; 0x3f8
    FIM     P7     10 ; 0x3fa
    JUN L12

L7,
    JUN L13
    NOP

L12,
    JMS    SR1        ; 0x400
    JMS    SR4        ; 0x400
    FIM     P7     11 ; 0x402
    JMS    SR1        ; 0x404
    JMS    SR5        ; 0x406
    FIM     P7      2 ; 0x408
    JMS    SR1        ; 0x40a
    JMS    SR0        ; 0x40c
    FIM     P7      3 ; 0x40e
    JMS    SR1        ; 0x410
    JMS    SR2        ; 0x412
    FIM     P7     18 ; 0x414
    JMS    SR1        ; 0x416
    JMS    SR4        ; 0x418
    FIM     P7     19 ; 0x41a
    JMS    SR1        ; 0x41c
    JMS    SR5        ; 0x41e
    FIM     P7     10 ; 0x420
    JMS    SR1        ; 0x422
    JMS    SR0        ; 0x424
    FIM     P7     11 ; 0x426
    JMS    SR1        ; 0x428
    JMS    SR2        ; 0x42a
    FIM     P7      8 ; 0x42c
    JMS    SR1        ; 0x42e
    JMS    SR4        ; 0x430
    FIM     P7      9 ; 0x432
    JMS    SR1        ; 0x434
    JMS    SR5        ; 0x436
    FIM     P7      0 ; 0x438
    JMS    SR1        ; 0x43a
    JMS    SR0        ; 0x43c
    FIM     P7      1 ; 0x43e
    JMS    SR1        ; 0x440
    JMS    SR2        ; 0x442
    FIM     P7     16 ; 0x444
    JMS    SR1        ; 0x446
    JMS    SR4        ; 0x448
    FIM     P7     17 ; 0x44a
    JMS    SR1        ; 0x44c
    JMS    SR5        ; 0x44e
    FIM     P7      8 ; 0x450
    JMS    SR1        ; 0x452
    JMS    SR0        ; 0x454
    FIM     P7      9 ; 0x456
    JMS    SR1        ; 0x458
    JMS    SR2        ; 0x45a
    FIM     P6      1 ; 0x45c
    FIM     P7     24 ; 0x45e
    JMS    SR1        ; 0x460
    JMS   SR11        ; 0x462
    FIM     P7     25 ; 0x464
    JMS    SR1        ; 0x466
    JMS   SR12        ; 0x468
    FIM     P7     24 ; 0x46a
    JMS    SR1        ; 0x46c
    JMS   SR13        ; 0x46e
    FIM     P7     25 ; 0x470
    JMS    SR1        ; 0x472
    JMS   SR14        ; 0x474
    JMS   SR15        ; 0x476
    JMS   SR16        ; 0x478
    JMS   SR17        ; 0x47a
    FIM     P3     24 ; 0x47c
    FIM     P5      0 ; 0x47e
    JMS    SR3        ; 0x480
    FIM     P6      0 ; 0x482
    FIM     P7     16 ; 0x484
    JMS    SR1        ; 0x486
    JMS    SR4        ; 0x488
    FIM     P7     17 ; 0x48a
    JMS    SR1        ; 0x48c
    JMS    SR5        ; 0x48e
    LD      R8        ; 0x490
    XCH    R14        ; 0x491
    LD      R9        ; 0x492
    XCH    R15        ; 0x493
    LD     R11        ; 0x494
    XCH    R13        ; 0x495
    JMS    SR1        ; 0x496
    JMS    SR1        ; 0x498
    JMS    SR0        ; 0x49a
    INC    R15        ; 0x49c
    JMS    SR1        ; 0x49d
    JMS    SR1        ; 0x49f
    JMS    SR2        ; 0x4a1
    FIM     P6      1 ; 0x4a3
    FIM     P7     24 ; 0x4a5
    JMS    SR1        ; 0x4a7
    JMS   SR11        ; 0x4a9
    FIM     P7     25 ; 0x4ab
    JMS    SR1        ; 0x4ad
    JMS   SR12        ; 0x4af
    FIM     P5    0x2 ; 0x4b1
    JMS   SR15        ; 0x4b3
    JMS   SR16        ; 0x4b5
    JMS   SR17        ; 0x4b7
    FIM     P7     24 ; 0x4b9
    JMS    SR1        ; 0x4bb
    JMS   SR13        ; 0x4bd
    FIM     P7     25 ; 0x4bf
    JMS    SR1        ; 0x4c1
    JMS   SR14        ; 0x4c3
    JMS   SR15        ; 0x4c5
    JMS   SR16        ; 0x4c7
    JMS   SR17        ; 0x4c9
    FIM     P3     24 ; 0x4cb
    FIM     P5      0 ; 0x4cd
    JMS    SR3        ; 0x4cf
    FIM     P6      0 ; 0x4d1
    FIM     P7     18 ; 0x4d3
    JMS    SR1        ; 0x4d5
    JMS    SR4        ; 0x4d7
    FIM     P7     19 ; 0x4d9
    JMS    SR1        ; 0x4db
    JMS    SR5        ; 0x4dd
    LD      R8        ; 0x4df
    XCH    R14        ; 0x4e0
    LD      R9        ; 0x4e1
    XCH    R15        ; 0x4e2
    LD     R11        ; 0x4e3
    XCH    R13        ; 0x4e4
    JMS    SR1        ; 0x4e5
    JMS    SR1        ; 0x4e7
    JMS    SR0        ; 0x4e9
    INC    R15        ; 0x4eb
    JMS    SR1        ; 0x4ec
    JMS    SR1        ; 0x4ee
    JMS    SR2        ; 0x4f0
    FIM     P6      1 ; 0x4f2
    FIM     P7     24 ; 0x4f4
    JMS    SR1        ; 0x4f6
    JMS   SR11        ; 0x4f8
    FIM     P7     25 ; 0x4fa
    JUN L14

L13,
    JUN L15
    NOP

L14,
    JMS    SR1        ; 0x500
    JMS   SR12        ; 0x500
    FIM     P5    0x4 ; 0x502
    JMS   SR15        ; 0x504
    JMS   SR16        ; 0x506
    JMS   SR17        ; 0x508
    FIM     P7     24 ; 0x50a
    JMS    SR1        ; 0x50c
    JMS   SR13        ; 0x50e
    FIM     P7     25 ; 0x510
    JMS    SR1        ; 0x512
    JMS   SR14        ; 0x514
    JMS   SR15        ; 0x516
    JMS   SR16        ; 0x518
    JMS   SR17        ; 0x51a
    FIM     P3     24 ; 0x51c
    FIM     P5      0 ; 0x51e
    JMS    SR3        ; 0x520
    FIM     P6      0 ; 0x522
    FIM     P7     20 ; 0x524
    JMS    SR1        ; 0x526
    JMS    SR4        ; 0x528
    FIM     P7     21 ; 0x52a
    JMS    SR1        ; 0x52c
    JMS    SR5        ; 0x52e
    LD      R8        ; 0x530
    XCH    R14        ; 0x531
    LD      R9        ; 0x532
    XCH    R15        ; 0x533
    LD     R11        ; 0x534
    XCH    R13        ; 0x535
    JMS    SR1        ; 0x536
    JMS    SR1        ; 0x538
    JMS    SR0        ; 0x53a
    INC    R15        ; 0x53c
    JMS    SR1        ; 0x53d
    JMS    SR1        ; 0x53f
    JMS    SR2        ; 0x541
    FIM     P6      1 ; 0x543
    FIM     P7     24 ; 0x545
    JMS    SR1        ; 0x547
    JMS   SR11        ; 0x549
    FIM     P7     25 ; 0x54b
    JMS    SR1        ; 0x54d
    JMS   SR12        ; 0x54f
    FIM     P5    0x6 ; 0x551
    JMS   SR15        ; 0x553
    JMS   SR16        ; 0x555
    JMS   SR17        ; 0x557
    FIM     P7     24 ; 0x559
    JMS    SR1        ; 0x55b
    JMS   SR13        ; 0x55d
    FIM     P7     25 ; 0x55f
    JMS    SR1        ; 0x561
    JMS   SR14        ; 0x563
    JMS   SR15        ; 0x565
    JMS   SR16        ; 0x567
    JMS   SR17        ; 0x569
    FIM     P3     24 ; 0x56b
    FIM     P5      0 ; 0x56d
    JMS    SR3        ; 0x56f
    FIM     P6      0 ; 0x571
    FIM     P7     22 ; 0x573
    JMS    SR1        ; 0x575
    JMS    SR4        ; 0x577
    FIM     P7     23 ; 0x579
    JMS    SR1        ; 0x57b
    JMS    SR5        ; 0x57d
    LD      R8        ; 0x57f
    XCH    R14        ; 0x580
    LD      R9        ; 0x581
    XCH    R15        ; 0x582
    LD     R11        ; 0x583
    XCH    R13        ; 0x584
    JMS    SR1        ; 0x585
    JMS    SR1        ; 0x587
    JMS    SR0        ; 0x589
    INC    R15        ; 0x58b
    JMS    SR1        ; 0x58c
    JMS    SR1        ; 0x58e
    JMS    SR2        ; 0x590
    FIM     P6      1 ; 0x592
    FIM     P7     24 ; 0x594
    JMS    SR1        ; 0x596
    JMS    SR4        ; 0x598
    FIM     P7     25 ; 0x59a
    JMS    SR1        ; 0x59c
    JMS    SR5        ; 0x59e
    FIM     P1    0x4 ; 0x5a0
    JMS    SR8        ; 0x5a2
    JMS    SR9        ; 0x5a4
    JMS   SR10        ; 0x5a6
    FIM     P7     24 ; 0x5a8
    JMS    SR1        ; 0x5aa
    JMS    SR0        ; 0x5ac
    FIM     P7     25 ; 0x5ae
    JMS    SR1        ; 0x5b0
    JMS    SR2        ; 0x5b2
    JUN     L0        ; 0x5b4

L15,

EOP,
    JUN    EOP        ; 0x5b6

SR0,
    LD      R0        ; 0x5b8
    WRM               ; 0x5b9
    BBL      0        ; 0x5ba

SR1,
    LD     R13        ; 0x5bb
    DCL               ; 0x5bc
    SRC     P7        ; 0x5bd
    BBL      0        ; 0x5be

SR2,
    LD      R1        ; 0x5bf
    WRM               ; 0x5c0
    BBL      0        ; 0x5c1

SR3,
    LD      R9        ; 0x5c2
    ADD     R7        ; 0x5c3
    XCH     R9        ; 0x5c4
    JCN 0b1010    L16 ; 0x5c5
    ISZ     R8    L16 ; 0x5c7
    INC    R11        ; 0x5c9

L16,
    LD      R8        ; 0x5ca
    ADD     R6        ; 0x5cb
    XCH     R8        ; 0x5cc
    JCN 0b1010    L17 ; 0x5cd
    INC     11        ; 0x5cf

L17,
    BBL      0        ; 0x5d0

SR4,
    RDM               ; 0x5d1
    XCH     R0        ; 0x5d2
    BBL      0        ; 0x5d3

SR5,
    RDM               ; 0x5d4
    XCH     R1        ; 0x5d5
    BBL      0        ; 0x5d6

SR6,
    RDM               ; 0x5d7
    XCH     R2        ; 0x5d8
    BBL      0        ; 0x5d9

SR7,
    RDM               ; 0x5da
    XCH     R3        ; 0x5db
    BBL      0        ; 0x5dc

SR8,
    LD      R1        ; 0x5dd
    ADD     R3        ; 0x5de
    XCH     R1        ; 0x5df
    BBL      0        ; 0x5e0

SR9,
    JCN 0b1010    L18 ; 0x5e1
    LD      R0        ; 0x5e3
    IAC               ; 0x5e4
    XCH     R0        ; 0x5e5

L18,
    BBL      0        ; 0x5e6

SR10,
    LD      R0        ; 0x5e7
    ADD     R2        ; 0x5e8
    XCH     R0        ; 0x5e9
    BBL      0        ; 0x5ea

SR11,
    RDM               ; 0x5eb
    XCH     R8        ; 0x5ec
    BBL      0        ; 0x5ed

SR12,
    RDM               ; 0x5ee
    XCH     R9        ; 0x5ef
    BBL      0        ; 0x5f0

SR13,
    RDM               ; 0x5f1
    XCH    R10        ; 0x5f2
    BBL      0        ; 0x5f3

SR14,
    RDM               ; 0x5f4
    XCH    R11        ; 0x5f5
    BBL      0        ; 0x5f6

SR15,
    LD      R9        ; 0x5f7
    ADD    R11        ; 0x5f8
    XCH     R9        ; 0x5f9
    BBL      0        ; 0x5fa

SR16,
    JUN L20

L19,
    JUN L21

L20,
    JCN 0b1010    L19 ; 0x600
    LD      R8        ; 0x600
    IAC               ; 0x601
    XCH     R8        ; 0x602

L21,
    BBL      0        ; 0x603

SR17,
    LD      R8        ; 0x604
    ADD    R10        ; 0x605
    XCH     R8        ; 0x606
    BBL      0        ; 0x607
