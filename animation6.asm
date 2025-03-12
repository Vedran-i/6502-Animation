LDA #$01
LDY #$01

start:
STA $0200, x
ADC #$02
INX

STA $0400, x
ADC #$06
INX

STA $2FF, y
STA $4FF, y
INY
INY

JMP start
