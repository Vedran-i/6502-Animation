LDA #00
STA $1007
LDA #30
STA $1008
LDA #01
STA $100A

LDA #$00
STA $100E

LDA #01
STA $1020

start:

LDA #$01
STA $400, X
INX

JSR delay

LDA #$00
STA $400, Y
INY
LDA $1007
CMP $1008
BEQ finished
INC $1007
JMP start

finished:

LDA #$00
STA $1008
LDA $100A
STA $200, X
INC $100A
INX

LDA $100E
CMP #$FF
BEQ donedone
INC $100E

JMP start

donedone:

LDA #$03		
STA $329	;C
STA $32A
STA $32B
STA $349
STA $369
STA $389
STA $38A
STA $38B

STA $32D	;O
STA $32E
STA $32F

STA $34D
STA $34F
STA $36D
STA $36F

STA $38D	
STA $38E
STA $38F

STA $331	;O
STA $332
STA $333

STA $351
STA $353

STA $371
STA $373

STA $391
STA $392
STA $393

STA $335	;L
STA $355
STA $375
STA $395
STA $396
STA $397

flash:
LDA $1020
STA $3C9, X
STA $3CA
STA $3CB
STA $3CC
STA $3CD
STA $3CE
STA $3CF
STA $3D0
STA $3D1
STA $3D2
STA $3D3
STA $3D4
STA $3D5
STA $3D6
STA $3D7
INC $1020
JSR delay
JSR delay
JSR delay
JSR delay
JMP flash

delay:
LDA #$00
STA $1001
LDA #$00
STA $1002

LDA #$10
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
