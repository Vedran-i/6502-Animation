start:

;wave
LDA #$01
STA $400, y
INY
LDA #$0E
STA $400, x
INX
INX
INX

;beach
LDA #$03
STA $200, x

LDA #$03
STA $300, x

LDA #$07
STA $500, x

;sun

LDA #$07
STA $228 
STA $229

STA $247 
STA $248 
STA $249
STA $24A

STA $267 
STA $268 
STA $269
STA $26A

STA $288 
STA $289

;boat

LDA #$0A
STA $3EE
STA $3EF
STA $3F0
STA $3F1

LDA #$01

STA $3CF
STA $3D0
STA $3AF

JMP start
