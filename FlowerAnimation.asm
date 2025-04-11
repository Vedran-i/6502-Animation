LDA #01
STA $1000

start:
Right:
LDA $ff
CMP #$61
BNE left
INX
JMP display

left:
INC $1000
LDA $ff
CMP #$64
BNE Right
DEX

display:

LDA $1000
STA $200,X
STA $300,X
STA $400,X
STA $500,X


Flower:

LDA #$08
STA $3CF

LDA #$01
STA $3AE
STA $3AF
STA $3B0

STA $3CE
STA $3D0
STA $3EE
STA $3EF
STA $3F0

Stem:

LDA #$05
STA $40F

STA $42D
STA $42F
STA $431

STA $44F
STA $44E
STA $450
STA $46F

JMP start
