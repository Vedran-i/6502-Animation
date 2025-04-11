delay:
LDA #$00
STA $1001
LDA #$00
STA $1002

LDA #$30
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
