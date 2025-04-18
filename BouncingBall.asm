LDA #$00
STA $1000
LDA #$00
STA $2000

start:
LDA #$01
STA $3C0, X
LDA #$00
STA $3BF, Y
INY
INX
LDA $1000
CMP #$1F
BEQ bounce
INC $1000
JSR delay
JMP start

bounce:
LDA #$00
STA $3C0, X
LDA #$01
STA $3BF, Y
DEY
DEX
LDA $2000
CMP #$1F
BEQ bounceback
INC $2000
JSR delay
JMP bounce

bounceback:
LDA #$00
STA $1000
LDA #$00
STA $2000
JMP start

delay:
LDA #$00
STA $1001
LDA #$00
STA $1002

LDA #$20
STA $2001
LDA #$01
STA $2002

loop:
LDA $1001
CMP $2001
BEQ innerloop
loop1:
INC $1001
LDA $1002
CMP $2002
BEQ done
JMP loop

innerloop:
INC $1002
JMP loop1

done:

RTS
