LDX #0
LDA #$FF
STA $1000
LDA #$00
STA $1001

start:

right:

LDA $FF
STA $FF
INX
INX
INX
JMP display

display:
LDA #$0E
STA $200,X
LDA #$05
STA $300,X
STA $400,X
LDA #$0E
STA $500,X

LDA $1001
CMP $1000
BEQ theend
INC $1001

JMP start

theend:
LDA #$FF
STA $1000
LDA #$00
STA $1001
loop:
LDA $1001
CMP $1000
BEQ theend2
INC $1001

JMP loop

theend2:
LDA #$01

STA $3A8	;6
STA $3A9
STA $3AA

STA $3C8

STA $3E8
STA $3E9
STA $3EA

STA $408
STA $40A
STA $428
STA $429
STA $42A


STA $3AC	;5
STA $3AD
STA $3AE

STA $3CC

STA $3EC
STA $3ED
STA $3EE

STA $40E
STA $42C
STA $42D
STA $42E

STA $3B0	;0
STA $3B1
STA $3B2

STA $3D0
STA $3D2

STA $3F0
STA $3F2

STA $410
STA $412

STA $430
STA $431
STA $432

STA $3B4	;2
STA $3B5
STA $3B6

STA $3D6
STA $3F4
STA $3F5
STA $3F6

STA $414
STA $434
STA $435
STA $436
