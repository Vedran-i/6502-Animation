start:

LDA #04
STA $349

LDA #$00
STA $300, x

right:
JSR collision

LDA $FF
CMP #$64
BNE left
INX
LDA #01
JMP PPU

left:
LDA $FF
CMP #$61
BNE right
DEX
LDA #01

PPU:

STA $300, x
SEI
JMP start

collision:
LDA $312
CMP $349
BEQ check
RTS

check:
LDA #02
STA $200, x
BRK
