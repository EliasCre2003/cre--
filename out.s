FIM P0 0x0
LD  R0
WRM
LD  R1
FIM P7 1
SRC P7
WRM
FIM P0 0x0
LD  R0
FIM P7 2
SRC P7
WRM
LD  R1
FIM P7 3
SRC P7
WRM
FIM P0 0x0
LD  R0
FIM P7 4
SRC P7
WRM
LD  R1
FIM P7 5
SRC P7
WRM
FIM P0 0x1
LD  R0
FIM P7 6
SRC P7
WRM
LD  R1
FIM P7 7
SRC P7
WRM
L0,
FIM P0 0x0
FIM P6 1
LD  R13
DCL
FIM P7 12
SRC P7
RDM
XCH R0
FIM P7 13
SRC P7
RDM
XCH R1
FIM P1 0x0
FIM P1 0x1E
LD  R0
SUB R2
JCN 0b1110 L1
LD  R1
SUB R3
JCN 0b1010 L1
FIM P6 0
LD  R13
DCL
FIM P7 2
SRC P7
RDM
XCH R0
FIM P7 3
SRC P7
RDM
XCH R1
FIM P7 6
SRC P7
RDM
XCH R2
FIM P7 7
SRC P7
RDM
XCH R3
LD  R1
ADD R3
XCH R1
JCN 0b1010 L2
XCH R0
IAC
XCH R0
L2,LD  R0
ADD R2
XCH R0
FIM P6 1
LD  R13
DCL
LD  R0
FIM P7 10
SRC P7
WRM
LD  R1
FIM P7 11
SRC P7
WRM
FIM P0 0x0
FIM P6 0
LD  R13
DCL
FIM P7 6
SRC P7
RDM
XCH R0
FIM P7 7
SRC P7
RDM
XCH R1
FIM P1 0x0
FIM P1 0x80
LD  R0
SUB R2
JCN 0b0010 L3
LD  R1
SUB R3
JCN 0b0110 L3
FIM P0 0x0
FIM P6 1
LD  R13
DCL
FIM P7 10
SRC P7
RDM
XCH R0
FIM P7 11
SRC P7
RDM
XCH R1
FIM P1 0x0
FIM P1 0x80
LD  R0
SUB R2
JCN 0b1110 L4
LD  R1
SUB R3
JCN 0b1010 L4
FIM P7 8
SRC P7
RDM
XCH R0
FIM P7 9
SRC P7
RDM
XCH R1
FIM P1 0x1
LD  R1
ADD R3
XCH R1
JCN 0b1010 L5
XCH R0
IAC
XCH R0
L5,LD  R0
ADD R2
XCH R0
LD  R0
FIM P7 8
SRC P7
WRM
LD  R1
FIM P7 9
SRC P7
WRM
L4,L3,FIM P6 0
LD  R13
DCL
FIM P7 6
SRC P7
RDM
XCH R0
FIM P7 7
SRC P7
RDM
XCH R1
LD  R0
FIM P7 2
SRC P7
WRM
LD  R1
FIM P7 3
SRC P7
WRM
FIM P6 1
LD  R13
DCL
FIM P7 10
SRC P7
RDM
XCH R0
FIM P7 11
SRC P7
RDM
XCH R1
FIM P6 0
LD  R13
DCL
LD  R0
FIM P7 6
SRC P7
WRM
LD  R1
FIM P7 7
SRC P7
WRM
FIM P7 4
SRC P7
RDM
XCH R0
FIM P7 5
SRC P7
RDM
XCH R1
LD  R0
FIM P7 0
SRC P7
WRM
LD  R1
FIM P7 1
SRC P7
WRM
FIM P6 1
LD  R13
DCL
FIM P7 8
SRC P7
RDM
XCH R0
FIM P7 9
SRC P7
RDM
XCH R1
FIM P6 0
LD  R13
DCL
LD  R0
FIM P7 4
SRC P7
WRM
LD  R1
FIM P7 5
SRC P7
WRM
FIM P6 1
LD  R13
DCL
FIM P7 12
SRC P7
RDM
XCH R0
FIM P7 13
SRC P7
RDM
XCH R1
FIM P1 0x1
LD  R1
ADD R3
XCH R1
JCN 0b1010 L6
XCH R0
IAC
XCH R0
L6,LD  R0
ADD R2
XCH R0
LD  R0
FIM P7 12
SRC P7
WRM
LD  R1
FIM P7 13
SRC P7
WRM
JUN L0
L1,

EOP, JUN EOP
