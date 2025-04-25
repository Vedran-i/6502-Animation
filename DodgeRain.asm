LDA #$00
STA $2001

LDA #$01
STA $3000


LDA #$0E
STA $2000


LDA #$00
STA $1000

start:
falling:
JSR Control
LDA #$0E
STA $20A
JSR delay
JSR Control
LDA #$00
STA $20A
JSR delay
JSR Control
LDA #$0E
STA $28A
JSR delay
JSR Control
LDA #$00
STA $28A
JSR delay
JSR Control
LDA #$0E
STA $30A
JSR delay
JSR Control
LDA #$00
STA $30A
JSR delay
JSR Control
LDA #$0E
STA $38A
JSR delay
JSR Control
LDA #$00
STA $38A
JSR delay
LDA $2000
STA $40A
JSR delay
JMP falling



Control:
JSR Collision
right:

LDA $2001
STA $410

LDA $3000
STA $40A

LDA $FF
CMP #$64
BEQ left
RTS

left:
LDA $2001
STA $40A

LDA $3000
STA $410
LDA $FF
CMP #$61
BEQ right
RTS

delay:
LDA $1000
CMP #$BB
BEQ timerdone
INC $1000
JMP delay

timerdone:
LDA #$00
STA $1000
RTS

Collision:
LDA $3000
CMP $2000
BEQ check
RTS

check:
BRK
