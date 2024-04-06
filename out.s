    FIM     P0    0x0 ; 0x000
    JMS    SR0        ; 0x002
    FIM     P7      1 ; 0x004
    JMS    SR1        ; 0x006
    JMS    SR2        ; 0x008
    FIM     P0    0x0 ; 0x00a
    FIM     P7      2 ; 0x00c
    JMS    SR3        ; 0x00e
    JMS    SR4        ; 0x010
    FIM     P7      3 ; 0x012
    JMS    SR5        ; 0x014
    JMS    SR6        ; 0x016
    FIM     P0    0x0 ; 0x018
    FIM     P7      4 ; 0x01a
    JMS    SR7        ; 0x01c
    JMS    SR8        ; 0x01e
    FIM     P7      5 ; 0x020
    JMS    SR9        ; 0x022
    JMS   SR10        ; 0x024
    FIM     P0    0x1 ; 0x026
    FIM     P7      6 ; 0x028
    JMS   SR11        ; 0x02a
    JMS   SR12        ; 0x02c
    FIM     P7      7 ; 0x02e
    JMS   SR13        ; 0x030
    JMS   SR14        ; 0x032
    FIM     P4    0x0 ; 0x034
    FIM     P3     14 ; 0x036
    FIM     P5      0 ; 0x038
    JMS   SR15        ; 0x03a
    FIM     P7      0 ; 0x03c
    JMS   SR16        ; 0x03e
    JMS   SR17        ; 0x040
    FIM     P7      1 ; 0x042
    JMS    SR1        ; 0x044
    JMS   SR18        ; 0x046
    LD      R8        ; 0x048
    XCH    R14        ; 0x049
    LD      R9        ; 0x04a
    XCH    R15        ; 0x04b
    LD     R11        ; 0x04c
    XCH    R13        ; 0x04d
    JMS   SR19        ; 0x04e
    JMS   SR19        ; 0x050
    JMS   SR20        ; 0x052
    INC    R15        ; 0x054
    JMS   SR19        ; 0x055
    JMS   SR19        ; 0x057
    JMS   SR21        ; 0x059
    FIM     P4    0x2 ; 0x05b
    FIM     P3     14 ; 0x05d
    FIM     P5      0 ; 0x05f
    JMS   SR15        ; 0x061
    FIM     P6      0 ; 0x063
    FIM     P7      2 ; 0x065
    JMS    SR3        ; 0x067
    JMS   SR22        ; 0x069
    FIM     P7      3 ; 0x06b
    JMS    SR5        ; 0x06d
    JMS   SR23        ; 0x06f
    LD      R8        ; 0x071
    XCH    R14        ; 0x072
    LD      R9        ; 0x073
    XCH    R15        ; 0x074
    LD     R11        ; 0x075
    XCH    R13        ; 0x076
    JMS   SR19        ; 0x077
    JMS   SR19        ; 0x079
    JMS   SR20        ; 0x07b
    INC    R15        ; 0x07d
    JMS   SR19        ; 0x07e
    JMS   SR19        ; 0x080
    JMS   SR21        ; 0x082
    FIM     P4    0x4 ; 0x084
    FIM     P3     14 ; 0x086
    FIM     P5      0 ; 0x088
    JMS   SR15        ; 0x08a
    FIM     P6      0 ; 0x08c
    FIM     P7      4 ; 0x08e
    JMS    SR7        ; 0x090
    JMS   SR24        ; 0x092
    FIM     P7      5 ; 0x094
    JMS    SR9        ; 0x096
    JMS   SR25        ; 0x098
    LD      R8        ; 0x09a
    XCH    R14        ; 0x09b
    LD      R9        ; 0x09c
    XCH    R15        ; 0x09d
    LD     R11        ; 0x09e
    XCH    R13        ; 0x09f
    JMS   SR19        ; 0x0a0
    JMS   SR19        ; 0x0a2
    JMS   SR20        ; 0x0a4
    INC    R15        ; 0x0a6
    JMS   SR19        ; 0x0a7
    JMS   SR19        ; 0x0a9
    JMS   SR21        ; 0x0ab
    FIM     P4    0x6 ; 0x0ad
    FIM     P3     14 ; 0x0af
    FIM     P5      0 ; 0x0b1
    JMS   SR15        ; 0x0b3
    FIM     P6      0 ; 0x0b5
    FIM     P7      6 ; 0x0b7
    JMS   SR11        ; 0x0b9
    JMS   SR26        ; 0x0bb
    FIM     P7      7 ; 0x0bd
    JMS   SR13        ; 0x0bf
    JMS   SR27        ; 0x0c1
    LD      R8        ; 0x0c3
    XCH    R14        ; 0x0c4
    LD      R9        ; 0x0c5
    XCH    R15        ; 0x0c6
    LD     R11        ; 0x0c7
    XCH    R13        ; 0x0c8
    JMS   SR19        ; 0x0c9
    JMS   SR19        ; 0x0cb
    JMS   SR20        ; 0x0cd
    INC    R15        ; 0x0cf
    JMS   SR19        ; 0x0d0
    JMS   SR19        ; 0x0d2
    JMS   SR21        ; 0x0d4
    FIM     P0    0x4 ; 0x0d6
    FIM     P6      0 ; 0x0d8
    FIM     P7     12 ; 0x0da
    JMS   SR28        ; 0x0dc
    JMS   SR29        ; 0x0de
    FIM     P7     13 ; 0x0e0
    JMS   SR30        ; 0x0e2
    JMS   SR31        ; 0x0e4

L0,
    FIM     P0      0 ; 0x0e6
    FIM     P7     12 ; 0x0e8
    JMS   SR28        ; 0x0ea
    JMS   SR32        ; 0x0ec
    FIM     P7     13 ; 0x0ee
    JMS   SR30        ; 0x0f0
    JMS   SR33        ; 0x0f2
    FIM     P1      0 ; 0x0f4
    FIM     P1   0x32 ; 0x0f6
    LD      R0        ; 0x0f8
    SUB     R2        ; 0x0f9
    JCN 0b1110     L1 ; 0x0fa
    JUN L3

L1,
    JUN L4

L3,
    JCN 0b0010     L2 ; 0x100
    LD      R1        ; 0x100
    SUB     R3        ; 0x101
    JCN 0b1010     L1 ; 0x102

L2,
    FIM     P7      2 ; 0x104
    JMS    SR3        ; 0x106
    JMS   SR22        ; 0x108
    FIM     P7      3 ; 0x10a
    JMS    SR5        ; 0x10c
    JMS   SR23        ; 0x10e
    FIM     P7      6 ; 0x110
    JMS   SR11        ; 0x112
    JMS   SR34        ; 0x114
    FIM     P7      7 ; 0x116
    JMS   SR13        ; 0x118
    JMS   SR35        ; 0x11a
    JMS   SR36        ; 0x11c
    JMS   SR37        ; 0x11e
    JMS   SR38        ; 0x120
    FIM     P7     10 ; 0x122
    JMS   SR39        ; 0x124
    JMS   SR40        ; 0x126
    FIM     P7     11 ; 0x128
    JMS   SR41        ; 0x12a
    JMS   SR42        ; 0x12c
    FIM     P7      0 ; 0x12e
    JMS   SR16        ; 0x130
    JMS   SR17        ; 0x132
    FIM     P7      1 ; 0x134
    JMS    SR1        ; 0x136
    JMS   SR18        ; 0x138
    FIM     P7      4 ; 0x13a
    JMS    SR7        ; 0x13c
    JMS   SR43        ; 0x13e
    FIM     P7      5 ; 0x140
    JMS    SR9        ; 0x142
    JMS   SR44        ; 0x144
    JMS   SR36        ; 0x146
    JMS   SR37        ; 0x148
    JMS   SR38        ; 0x14a
    FIM     P7      8 ; 0x14c
    JMS   SR45        ; 0x14e
    JMS   SR46        ; 0x150
    FIM     P7      9 ; 0x152
    JMS   SR47        ; 0x154
    JMS   SR48        ; 0x156
    FIM     P0      0 ; 0x158
    FIM     P7     10 ; 0x15a
    JMS   SR39        ; 0x15c
    JMS   SR49        ; 0x15e
    FIM     P7     11 ; 0x160
    JMS   SR41        ; 0x162
    JMS   SR50        ; 0x164
    FIM     P1      0 ; 0x166
    FIM     P7      6 ; 0x168
    JMS   SR11        ; 0x16a
    JMS   SR34        ; 0x16c
    FIM     P7      7 ; 0x16e
    JMS   SR13        ; 0x170
    JMS   SR35        ; 0x172
    LD      R0        ; 0x174
    SUB     R2        ; 0x175
    JCN 0b1110     L5 ; 0x176
    JCN 0b0010     L6 ; 0x178
    LD      R1        ; 0x17a
    SUB     R3        ; 0x17b
    JCN 0b1010     L5 ; 0x17c

L6,
    FIM     P7      8 ; 0x17e
    JMS   SR45        ; 0x180
    JMS   SR51        ; 0x182
    FIM     P7      9 ; 0x184
    JMS   SR47        ; 0x186
    JMS   SR52        ; 0x188
    FIM     P1    0x1 ; 0x18a
    JMS   SR36        ; 0x18c
    JMS   SR37        ; 0x18e
    JMS   SR38        ; 0x190
    FIM     P7      8 ; 0x192
    JMS   SR45        ; 0x194
    JMS   SR46        ; 0x196
    FIM     P7      9 ; 0x198
    JMS   SR47        ; 0x19a
    JMS   SR48        ; 0x19c

L5,
    FIM     P7      6 ; 0x19e
    JMS   SR11        ; 0x1a0
    JMS   SR26        ; 0x1a2
    FIM     P7      7 ; 0x1a4
    JMS   SR13        ; 0x1a6
    JMS   SR27        ; 0x1a8
    FIM     P7      2 ; 0x1aa
    JMS    SR3        ; 0x1ac
    JMS    SR4        ; 0x1ae
    FIM     P7      3 ; 0x1b0
    JMS    SR5        ; 0x1b2
    JMS    SR6        ; 0x1b4
    FIM     P7     10 ; 0x1b6
    JMS   SR39        ; 0x1b8
    JMS   SR49        ; 0x1ba
    FIM     P7     11 ; 0x1bc
    JMS   SR41        ; 0x1be
    JMS   SR50        ; 0x1c0
    FIM     P7      6 ; 0x1c2
    JMS   SR11        ; 0x1c4
    JMS   SR12        ; 0x1c6
    FIM     P7      7 ; 0x1c8
    JMS   SR13        ; 0x1ca
    JMS   SR14        ; 0x1cc
    FIM     P7      4 ; 0x1ce
    JMS    SR7        ; 0x1d0
    JMS   SR24        ; 0x1d2
    FIM     P7      5 ; 0x1d4
    JMS    SR9        ; 0x1d6
    JMS   SR25        ; 0x1d8
    FIM     P7      0 ; 0x1da
    JMS   SR16        ; 0x1dc
    JMS    SR0        ; 0x1de
    FIM     P7      1 ; 0x1e0
    JMS    SR1        ; 0x1e2
    JMS    SR2        ; 0x1e4
    FIM     P7      8 ; 0x1e6
    JMS   SR45        ; 0x1e8
    JMS   SR51        ; 0x1ea
    FIM     P7      9 ; 0x1ec
    JMS   SR47        ; 0x1ee
    JMS   SR52        ; 0x1f0
    FIM     P7      4 ; 0x1f2
    JMS    SR7        ; 0x1f4
    JMS    SR8        ; 0x1f6
    FIM     P7      5 ; 0x1f8
    JMS    SR9        ; 0x1fa
    JUN L7

L4,
    JUN L8

L7,
    JMS   SR10        ; 0x200
    FIM     P7     12 ; 0x200
    JMS   SR28        ; 0x202
    JMS   SR53        ; 0x204
    FIM     P7     13 ; 0x206
    JMS   SR30        ; 0x208
    JMS   SR54        ; 0x20a
    FIM     P7     12 ; 0x20c
    JMS   SR28        ; 0x20e
    JMS   SR55        ; 0x210
    FIM     P7     13 ; 0x212
    JMS   SR30        ; 0x214
    JMS   SR56        ; 0x216
    JMS   SR57        ; 0x218
    JMS   SR58        ; 0x21a
    JMS   SR59        ; 0x21c
    FIM     P3     14 ; 0x21e
    FIM     P5      0 ; 0x220
    JMS   SR15        ; 0x222
    FIM     P7      8 ; 0x224
    JMS   SR45        ; 0x226
    JMS   SR51        ; 0x228
    FIM     P7      9 ; 0x22a
    JMS   SR47        ; 0x22c
    JMS   SR52        ; 0x22e
    LD      R8        ; 0x230
    XCH    R14        ; 0x231
    LD      R9        ; 0x232
    XCH    R15        ; 0x233
    LD     R11        ; 0x234
    XCH    R13        ; 0x235
    JMS   SR19        ; 0x236
    JMS   SR19        ; 0x238
    JMS   SR20        ; 0x23a
    INC    R15        ; 0x23c
    JMS   SR19        ; 0x23d
    JMS   SR19        ; 0x23f
    JMS   SR21        ; 0x241
    FIM     P6      0 ; 0x243
    FIM     P7     12 ; 0x245
    JMS   SR28        ; 0x247
    JMS   SR53        ; 0x249
    FIM     P7     13 ; 0x24b
    JMS   SR30        ; 0x24d
    JMS   SR54        ; 0x24f
    FIM     P5    0x2 ; 0x251
    JMS   SR57        ; 0x253
    JMS   SR58        ; 0x255
    JMS   SR59        ; 0x257
    FIM     P7     12 ; 0x259
    JMS   SR28        ; 0x25b
    JMS   SR55        ; 0x25d
    FIM     P7     13 ; 0x25f
    JMS   SR30        ; 0x261
    JMS   SR56        ; 0x263
    JMS   SR57        ; 0x265
    JMS   SR58        ; 0x267
    JMS   SR59        ; 0x269
    FIM     P3     14 ; 0x26b
    FIM     P5      0 ; 0x26d
    JMS   SR15        ; 0x26f
    FIM     P7     10 ; 0x271
    JMS   SR39        ; 0x273
    JMS   SR49        ; 0x275
    FIM     P7     11 ; 0x277
    JMS   SR41        ; 0x279
    JMS   SR50        ; 0x27b
    LD      R8        ; 0x27d
    XCH    R14        ; 0x27e
    LD      R9        ; 0x27f
    XCH    R15        ; 0x280
    LD     R11        ; 0x281
    XCH    R13        ; 0x282
    JMS   SR19        ; 0x283
    JMS   SR19        ; 0x285
    JMS   SR20        ; 0x287
    INC    R15        ; 0x289
    JMS   SR19        ; 0x28a
    JMS   SR19        ; 0x28c
    JMS   SR21        ; 0x28e
    FIM     P6      0 ; 0x290
    FIM     P7     12 ; 0x292
    JMS   SR28        ; 0x294
    JMS   SR32        ; 0x296
    FIM     P7     13 ; 0x298
    JMS   SR30        ; 0x29a
    JMS   SR33        ; 0x29c
    FIM     P1    0x2 ; 0x29e
    JMS   SR36        ; 0x2a0
    JMS   SR37        ; 0x2a2
    JMS   SR38        ; 0x2a4
    FIM     P7     12 ; 0x2a6
    JMS   SR28        ; 0x2a8
    JMS   SR29        ; 0x2aa
    FIM     P7     13 ; 0x2ac
    JMS   SR30        ; 0x2ae
    JMS   SR31        ; 0x2b0
    JUN     L0        ; 0x2b2

L8,

EOP,
    JUN    EOP        ; 0x2b4

SR0,
    LD      R0        ; 0x2b6
    WRM               ; 0x2b7
    BBL      0        ; 0x2b8

SR1,
    LD     R13        ; 0x2b9
    DCL               ; 0x2ba
    SRC     P7        ; 0x2bb
    BBL      0        ; 0x2bc

SR2,
    LD      R1        ; 0x2bd
    WRM               ; 0x2be
    BBL      0        ; 0x2bf

SR3,
    LD     R13        ; 0x2c0
    DCL               ; 0x2c1
    SRC     P7        ; 0x2c2
    BBL      0        ; 0x2c3

SR4,
    LD      R0        ; 0x2c4
    WRM               ; 0x2c5
    BBL      0        ; 0x2c6

SR5,
    LD     R13        ; 0x2c7
    DCL               ; 0x2c8
    SRC     P7        ; 0x2c9
    BBL      0        ; 0x2ca

SR6,
    LD      R1        ; 0x2cb
    WRM               ; 0x2cc
    BBL      0        ; 0x2cd

SR7,
    LD     R13        ; 0x2ce
    DCL               ; 0x2cf
    SRC     P7        ; 0x2d0
    BBL      0        ; 0x2d1

SR8,
    LD      R0        ; 0x2d2
    WRM               ; 0x2d3
    BBL      0        ; 0x2d4

SR9,
    LD     R13        ; 0x2d5
    DCL               ; 0x2d6
    SRC     P7        ; 0x2d7
    BBL      0        ; 0x2d8

SR10,
    LD      R1        ; 0x2d9
    WRM               ; 0x2da
    BBL      0        ; 0x2db

SR11,
    LD     R13        ; 0x2dc
    DCL               ; 0x2dd
    SRC     P7        ; 0x2de
    BBL      0        ; 0x2df

SR12,
    LD      R0        ; 0x2e0
    WRM               ; 0x2e1
    BBL      0        ; 0x2e2

SR13,
    LD     R13        ; 0x2e3
    DCL               ; 0x2e4
    SRC     P7        ; 0x2e5
    BBL      0        ; 0x2e6

SR14,
    LD      R1        ; 0x2e7
    WRM               ; 0x2e8
    BBL      0        ; 0x2e9

SR15,
    LD      R9        ; 0x2ea
    ADD     R7        ; 0x2eb
    XCH     R9        ; 0x2ec
    JCN 0b1010     L9 ; 0x2ed
    ISZ     R8     L9 ; 0x2ef
    INC    R11        ; 0x2f1

L9,
    LD      R8        ; 0x2f2
    ADD     R6        ; 0x2f3
    XCH     R8        ; 0x2f4
    JCN 0b1010    L10 ; 0x2f5
    INC     11        ; 0x2f7

L10,
    BBL      0        ; 0x2f8

SR16,
    LD     R13        ; 0x2f9
    DCL               ; 0x2fa
    SRC     P7        ; 0x2fb
    BBL      0        ; 0x2fc

SR17,
    RDM               ; 0x2fd
    XCH     R0        ; 0x2fe
    BBL      0        ; 0x2ff

SR18,
    RDM               ; 0x300
    XCH     R1        ; 0x301
    BBL      0        ; 0x302

SR19,
    LD     R13        ; 0x303
    DCL               ; 0x304
    SRC     P7        ; 0x305
    BBL      0        ; 0x306

SR20,
    LD      R0        ; 0x307
    WRM               ; 0x308
    BBL      0        ; 0x309

SR21,
    LD      R1        ; 0x30a
    WRM               ; 0x30b
    BBL      0        ; 0x30c

SR22,
    RDM               ; 0x30d
    XCH     R0        ; 0x30e
    BBL      0        ; 0x30f

SR23,
    RDM               ; 0x310
    XCH     R1        ; 0x311
    BBL      0        ; 0x312

SR24,
    RDM               ; 0x313
    XCH     R0        ; 0x314
    BBL      0        ; 0x315

SR25,
    RDM               ; 0x316
    XCH     R1        ; 0x317
    BBL      0        ; 0x318

SR26,
    RDM               ; 0x319
    XCH     R0        ; 0x31a
    BBL      0        ; 0x31b

SR27,
    RDM               ; 0x31c
    XCH     R1        ; 0x31d
    BBL      0        ; 0x31e

SR28,
    LD     R13        ; 0x31f
    DCL               ; 0x320
    SRC     P7        ; 0x321
    BBL      0        ; 0x322

SR29,
    LD      R0        ; 0x323
    WRM               ; 0x324
    BBL      0        ; 0x325

SR30,
    LD     R13        ; 0x326
    DCL               ; 0x327
    SRC     P7        ; 0x328
    BBL      0        ; 0x329

SR31,
    LD      R1        ; 0x32a
    WRM               ; 0x32b
    BBL      0        ; 0x32c

SR32,
    RDM               ; 0x32d
    XCH     R0        ; 0x32e
    BBL      0        ; 0x32f

SR33,
    RDM               ; 0x330
    XCH     R1        ; 0x331
    BBL      0        ; 0x332

SR34,
    RDM               ; 0x333
    XCH     R2        ; 0x334
    BBL      0        ; 0x335

SR35,
    RDM               ; 0x336
    XCH     R3        ; 0x337
    BBL      0        ; 0x338

SR36,
    LD      R1        ; 0x339
    ADD     R3        ; 0x33a
    XCH     R1        ; 0x33b
    BBL      0        ; 0x33c

SR37,
    JUN L12

L11,
    JUN L13

L12,
    JCN 0b1010    L11 ; 0x300
    LD      R0        ; 0x300
    IAC               ; 0x301
    XCH     R0        ; 0x302

L13,
    BBL      0        ; 0x303

SR38,
    LD      R0        ; 0x304
    ADD     R2        ; 0x305
    XCH     R0        ; 0x306
    BBL      0        ; 0x307

SR39,
    LD     R13        ; 0x308
    DCL               ; 0x309
    SRC     P7        ; 0x30a
    BBL      0        ; 0x30b

SR40,
    LD      R0        ; 0x30c
    WRM               ; 0x30d
    BBL      0        ; 0x30e

SR41,
    LD     R13        ; 0x30f
    DCL               ; 0x310
    SRC     P7        ; 0x311
    BBL      0        ; 0x312

SR42,
    LD      R1        ; 0x313
    WRM               ; 0x314
    BBL      0        ; 0x315

SR43,
    RDM               ; 0x316
    XCH     R2        ; 0x317
    BBL      0        ; 0x318

SR44,
    RDM               ; 0x319
    XCH     R3        ; 0x31a
    BBL      0        ; 0x31b

SR45,
    LD     R13        ; 0x31c
    DCL               ; 0x31d
    SRC     P7        ; 0x31e
    BBL      0        ; 0x31f

SR46,
    LD      R0        ; 0x320
    WRM               ; 0x321
    BBL      0        ; 0x322

SR47,
    LD     R13        ; 0x323
    DCL               ; 0x324
    SRC     P7        ; 0x325
    BBL      0        ; 0x326

SR48,
    LD      R1        ; 0x327
    WRM               ; 0x328
    BBL      0        ; 0x329

SR49,
    RDM               ; 0x32a
    XCH     R0        ; 0x32b
    BBL      0        ; 0x32c

SR50,
    RDM               ; 0x32d
    XCH     R1        ; 0x32e
    BBL      0        ; 0x32f

SR51,
    RDM               ; 0x330
    XCH     R0        ; 0x331
    BBL      0        ; 0x332

SR52,
    RDM               ; 0x333
    XCH     R1        ; 0x334
    BBL      0        ; 0x335

SR53,
    RDM               ; 0x336
    XCH     R8        ; 0x337
    BBL      0        ; 0x338

SR54,
    RDM               ; 0x339
    XCH     R9        ; 0x33a
    BBL      0        ; 0x33b

SR55,
    RDM               ; 0x33c
    XCH    R10        ; 0x33d
    BBL      0        ; 0x33e

SR56,
    RDM               ; 0x33f
    XCH    R11        ; 0x340
    BBL      0        ; 0x341

SR57,
    LD      R9        ; 0x342
    ADD    R11        ; 0x343
    XCH     R9        ; 0x344
    BBL      0        ; 0x345

SR58,
    JCN 0b1010    L14 ; 0x346
    LD      R8        ; 0x348
    IAC               ; 0x349
    XCH     R8        ; 0x34a

L14,
    BBL      0        ; 0x34b

SR59,
    LD      R8        ; 0x34c
    ADD    R10        ; 0x34d
    XCH     R8        ; 0x34e
    BBL      0        ; 0x34f
