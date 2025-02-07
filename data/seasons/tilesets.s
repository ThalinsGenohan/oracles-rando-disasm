.macro m_SeasonalTileset ; Tilesets which use this have different data for each season
	.db $ff
	.dw \1
	.dsb 5 0
.endm

tilesetData: ; $10c84
	m_SeasonalTileset area00Seasons        ; 0x00
	m_SeasonalTileset area01Seasons        ; 0x01
	m_SeasonalTileset area02Seasons        ; 0x02
	m_SeasonalTileset area03Seasons        ; 0x03
	m_SeasonalTileset area04Seasons        ; 0x04
	m_SeasonalTileset area05Seasons        ; 0x05
	m_SeasonalTileset area06Seasons        ; 0x06
	m_SeasonalTileset area07Seasons        ; 0x07
	m_SeasonalTileset area08Seasons        ; 0x08
	m_SeasonalTileset area09Seasons        ; 0x09
	m_SeasonalTileset area0aSeasons        ; 0x0a
	m_SeasonalTileset area0bSeasons        ; 0x0b
	m_SeasonalTileset area0cSeasons        ; 0x0c
	m_SeasonalTileset area0dSeasons        ; 0x0d
	m_SeasonalTileset area0eSeasons        ; 0x0e
	m_SeasonalTileset area0fSeasons        ; 0x0f
	m_SeasonalTileset area10Seasons        ; 0x10
	m_SeasonalTileset area11Seasons        ; 0x11
	m_SeasonalTileset area12Seasons        ; 0x12
	m_SeasonalTileset area13Seasons        ; 0x13
	m_SeasonalTileset area14Seasons        ; 0x14
	m_SeasonalTileset area15Seasons        ; 0x15
	m_SeasonalTileset area16Seasons        ; 0x16
	m_SeasonalTileset area17Seasons        ; 0x17
	m_SeasonalTileset area18Seasons        ; 0x18
	m_SeasonalTileset area19Seasons        ; 0x19
	m_SeasonalTileset area1aSeasons        ; 0x1a
	.db $0f $01 $10 $41 $10 $11 $01 $04 ; 0x1b
	.db $0f $01 $11 $41 $10 $12 $01 $05 ; 0x1c
	.db $0f $01 $10 $41 $10 $35 $01 $04 ; 0x1d
	.db $0f $01 $00 $4f $56 $0e $01 $03 ; 0x1e
	.db $0f $01 $1f $44 $54 $0b $03 $0d ; 0x1f
	.db $1f $81 $00 $50 $5a $1c $04 $10 ; 0x20
	.db $1f $81 $17 $50 $58 $1b $04 $10 ; 0x21
	.db $1f $81 $17 $50 $59 $1b $04 $10 ; 0x22
	.db $1f $81 $17 $50 $5f $1b $04 $10 ; 0x23
	.db $1f $81 $18 $50 $5a $1c $04 $10 ; 0x24
	.db $1f $81 $19 $50 $5b $1d $04 $10 ; 0x25
	.db $1f $81 $1a $50 $5c $1e $04 $10 ; 0x26
	.db $1f $81 $1b $50 $5d $1f $04 $10 ; 0x27
	.db $1f $81 $1c $50 $5e $20 $04 $11 ; 0x28
	.db $2f $02 $1d $70 $50 $33 $04 $ff ; 0x29
	.db $2f $02 $1e $70 $50 $33 $04 $ff ; 0x2a
	.db $2f $02 $00 $71 $51 $34 $04 $ff ; 0x2b
	.db $3f $04 $00 $7c $70 $2e $04 $18 ; 0x2c
	.db $3f $04 $00 $7c $71 $2e $04 $18 ; 0x2d
	.db $3f $04 $00 $7c $72 $2e $04 $18 ; 0x2e
	.db $3f $04 $00 $7c $74 $2e $04 $18 ; 0x2f
	.db $3f $04 $00 $7c $76 $2e $04 $18 ; 0x30
	.db $3f $04 $00 $7d $77 $2f $04 $18 ; 0x31
	.db $3f $04 $00 $7d $7a $2f $04 $18 ; 0x32
	.db $3f $04 $00 $7d $7b $2f $04 $18 ; 0x33
	.db $3f $04 $00 $7f $7c $31 $04 $18 ; 0x34
	.db $3f $04 $00 $7f $72 $31 $04 $18 ; 0x35
	.db $40 $08 $00 $60 $40 $21 $05 $18 ; 0x36
	.db $41 $08 $00 $61 $41 $22 $05 $18 ; 0x37
	.db $42 $08 $00 $62 $42 $23 $05 $19 ; 0x38
	.db $43 $08 $00 $63 $43 $24 $05 $18 ; 0x39
	.db $44 $08 $00 $64 $44 $25 $05 $18 ; 0x3a
	.db $45 $08 $00 $65 $45 $26 $05 $18 ; 0x3b
	.db $46 $08 UNIQGFXH_00 GFXH_66 $46 $27 $05 $19 ; 0x3c
	.db $36 $04 UNIQGFXH_0e GFXH_40 $10 $28 $04 $ff ; 0x3d
	.db $47 $08 $00 $67 $47 $29 $06 $18 ; 0x3e
	.db $47 $08 $27 $67 $47 $29 $06 $18 ; 0x3f
	.db $47 $08 $28 $67 $4d $29 $06 $18 ; 0x40
	.db $48 $08 $00 $68 $48 $2a $06 $18 ; 0x41
	.db $48 $08 $00 $6c $4e $2a $06 $18 ; 0x42
	.db $48 $08 $26 $6c $4f $2a $06 $18 ; 0x43
	.db $49 $08 $00 $69 $49 $2b $06 $18 ; 0x44
	.db $4a $08 $00 $6a $4a $2c $06 $18 ; 0x45
	.db $4a $08 $00 $6a $8e $2c $06 $18 ; 0x46
	.db $4b $08 $00 $60 $40 $21 $06 $18 ; 0x47
	.db $4f $10 $00 $7d $77 $2f $05 $18 ; 0x48
	.db $4f $10 $00 $7d $78 $2f $05 $18 ; 0x49
	.db $4f $10 $00 $7d $79 $2f $05 $18 ; 0x4a
	.db $4f $10 $00 $7c $75 $2e $05 $18 ; 0x4b
	.db $4f $10 $00 $7f $7c $31 $05 $18 ; 0x4c
	.db $4f $10 $00 $7c $70 $2e $06 $18 ; 0x4d
	.db $4f $10 $00 $7c $73 $2e $06 $18 ; 0x4e
	.db $4f $10 $00 $7d $77 $2f $06 $18 ; 0x4f
	.db $4f $10 $00 $7d $79 $2f $06 $18 ; 0x50
	.db $4f $10 $00 $7d $60 $2f $06 $18 ; 0x51
	.db $4f $10 $00 $7d $61 $2f $06 $18 ; 0x52
	.db $4f $10 $00 $7d $62 $2f $06 $18 ; 0x53
	.db $4f $10 $00 $7d $63 $2f $06 $18 ; 0x54
	.db $50 $28 $00 $6d $3c $32 $05 $1a ; 0x55
	.db $51 $28 $00 $6d $3d $32 $05 $1a ; 0x56
	.db $52 $28 $00 $6d $68 $32 $05 $1a ; 0x57
	.db $53 $28 $00 $6d $3e $32 $05 $1a ; 0x58
	.db $54 $28 $00 $6d $69 $32 $05 $1a ; 0x59
	.db $55 $28 $00 $6d $6a $32 $05 $1a ; 0x5a
	.db $58 $28 $00 $6d $6b $32 $06 $1a ; 0x5b
	.db $58 $28 $00 $6d $6c $32 $06 $1a ; 0x5c
	.db $59 $28 $00 $6d $8d $32 $06 $1a ; 0x5d
	.db $5f $20 $00 $6d $6d $32 $06 $1a ; 0x5e
	.db $5f $20 $00 $6d $6e $32 $06 $1a ; 0x5f
	.db $5f $20 $00 $6d $6f $32 $06 $1a ; 0x60
	.db $5f $20 $15 $48 $30 $16 $04 $00 ; 0x61
	.db $59 $28 $00 $96 $8d $32 $06 $ff ; 0x62

area00Seasons:
	.db $0f $01 $01 $40 $10 $00 $00 $00 ; 0x63
	.db $0f $01 $01 $41 $11 $00 $01 $00 ; 0x64
	.db $0f $01 $01 $42 $12 $00 $02 $00 ; 0x65
	.db $0f $01 $01 $43 $13 $00 $03 $00 ; 0x66

area01Seasons:
	.db $0f $01 $02 $40 $10 $01 $00 $00 ; 0x67
	.db $0f $01 $02 $41 $11 $01 $01 $00 ; 0x68
	.db $0f $01 $02 $42 $12 $01 $02 $00 ; 0x69
	.db $0f $01 $02 $43 $13 $01 $03 $00 ; 0x6a

area02Seasons:
	.db $0f $01 $03 $40 $10 $02 $00 $00 ; 0x6b
	.db $0f $01 $03 $41 $11 $02 $01 $00 ; 0x6c
	.db $0f $01 $03 $42 $12 $02 $02 $00 ; 0x6d
	.db $0f $01 $03 $43 $13 $02 $03 $00 ; 0x6e

area03Seasons:
	.db $0f $01 $04 $40 $10 $03 $00 $00 ; 0x6f
	.db $0f $01 $04 $41 $11 $03 $01 $00 ; 0x70
	.db $0f $01 $04 $42 $12 $03 $02 $00 ; 0x71
	.db $0f $01 $04 $43 $13 $03 $03 $00 ; 0x72

area04Seasons:
	.db $0f $01 $05 $40 $10 $05 $00 $00 ; 0x73
	.db $0f $01 $05 $41 $11 $05 $01 $00 ; 0x74
	.db $0f $01 $05 $42 $12 $05 $02 $00 ; 0x75
	.db $0f $01 $05 $43 $13 $05 $03 $00 ; 0x76

area05Seasons:
	.db $0f $01 $06 $40 $14 $06 $00 $02 ; 0x77
	.db $0f $01 $06 $41 $15 $06 $01 $02 ; 0x78
	.db $0f $01 $06 $42 $16 $06 $02 $02 ; 0x79
	.db $0f $01 $06 $43 $17 $06 $03 $02 ; 0x7a

area06Seasons:
	.db $0f $01 $07 $40 $14 $07 $00 $01 ; 0x7b
	.db $0f $01 $07 $41 $15 $07 $01 $01 ; 0x7c
	.db $0f $01 $07 $42 $16 $07 $02 $01 ; 0x7d
	.db $0f $01 $07 $43 $17 $07 $03 $01 ; 0x7e

area07Seasons:
	.db $0f $01 $08 $40 $24 $08 $00 $00 ; 0x7f
	.db $0f $01 $08 $41 $25 $08 $01 $00 ; 0x80
	.db $0f $01 $08 $42 $26 $08 $02 $00 ; 0x81
	.db $0f $01 $08 $43 $27 $08 $03 $00 ; 0x82

area08Seasons:
	.db $0f $01 $09 $40 $10 $09 $00 $02 ; 0x83
	.db $0f $01 $09 $41 $11 $09 $01 $02 ; 0x84
	.db $0f $01 $09 $42 $12 $09 $02 $02 ; 0x85
	.db $0f $01 $09 $43 $13 $09 $03 $02 ; 0x86

area09Seasons:
	.db $0f $01 $09 $40 $18 $09 $00 $02 ; 0x87
	.db $0f $01 $09 $41 $19 $09 $01 $02 ; 0x88
	.db $0f $01 $09 $42 $1a $09 $02 $02 ; 0x89
	.db $0f $01 $09 $43 $1b $09 $03 $02 ; 0x8a

area0aSeasons:
	.db $0f $01 $0a $40 $10 $0a $00 $02 ; 0x8b
	.db $0f $01 $0a $41 $11 $0a $01 $02 ; 0x8c
	.db $0f $01 $0a $42 $12 $0a $02 $02 ; 0x8d
	.db $0f $01 $0a $43 $13 $0a $03 $02 ; 0x8e

area0bSeasons:
	.db $0f $01 $0a $40 $1c $0a $00 $02 ; 0x8f
	.db $0f $01 $0a $41 $1d $0a $01 $02 ; 0x90
	.db $0f $01 $0a $42 $1e $0a $02 $02 ; 0x91
	.db $0f $01 $0a $43 $1f $0a $03 $02 ; 0x92

area0cSeasons:
	.db $0f $01 $0b $40 $10 $0c $00 $02 ; 0x93
	.db $0f $01 $0b $41 $11 $0c $01 $02 ; 0x94
	.db $0f $01 $0b $42 $12 $0c $02 $02 ; 0x95
	.db $0f $01 $0b $43 $13 $0c $03 $02 ; 0x96

area0dSeasons:
	.db $0f $01 $09 $40 $20 $09 $00 $02 ; 0x97
	.db $0f $01 $09 $41 $21 $09 $01 $02 ; 0x98
	.db $0f $01 $09 $42 $22 $09 $02 $02 ; 0x99
	.db $0f $01 $09 $43 $23 $09 $03 $02 ; 0x9a

area0eSeasons:
	.db $0f $01 $0c $40 $10 $0d $00 $00 ; 0x9b
	.db $0f $01 $0c $41 $11 $0d $01 $00 ; 0x9c
	.db $0f $01 $0c $42 $12 $0d $02 $00 ; 0x9d
	.db $0f $01 $0c $43 $13 $0d $03 $00 ; 0x9e

area0fSeasons:
	.db $0f $01 $0d $40 $24 $0e $00 $03 ; 0x9f
	.db $0f $01 $0d $41 $25 $0e $01 $03 ; 0xa0
	.db $0f $01 $0d $42 $26 $0e $02 $03 ; 0xa1
	.db $0f $01 $0d $43 $27 $0e $03 $03 ; 0xa2

area10Seasons:
	.db $0f $01 $0e $40 $10 $0f $00 $03 ; 0xa3
	.db $0f $01 $0e $41 $11 $0f $01 $03 ; 0xa4
	.db $0f $01 $0e $42 $12 $0f $02 $03 ; 0xa5
	.db $0f $01 $0e $43 $13 $0f $03 $03 ; 0xa6

area11Seasons:
	.db $0f $01 $0f $40 $28 $10 $00 $ff ; 0xa7
	.db $0f $01 $0f $41 $29 $10 $01 $ff ; 0xa8
	.db $0f $01 $0f $42 $2a $10 $02 $ff ; 0xa9
	.db $0f $01 $0f $43 $2b $10 $03 $ff ; 0xaa

area12Seasons:
	.db $0f $01 $12 $40 $10 $13 $00 $06 ; 0xab
	.db $0f $01 $12 $41 $11 $13 $01 $06 ; 0xac
	.db $0f $01 $12 $42 $12 $13 $02 $06 ; 0xad
	.db $0f $01 $12 $43 $13 $13 $03 $06 ; 0xae

area13Seasons:
	.db $0f $01 $13 $40 $2c $14 $00 $07 ; 0xaf
	.db $0f $01 $13 $41 $2d $14 $01 $07 ; 0xb0
	.db $0f $01 $13 $42 $2e $14 $02 $07 ; 0xb1
	.db $0f $01 $13 $43 $2f $14 $03 $07 ; 0xb2

area14Seasons:
	.db $0f $01 $14 $40 $10 $15 $00 $06 ; 0xb3
	.db $0f $01 $14 $41 $11 $15 $01 $06 ; 0xb4
	.db $0f $01 $14 $42 $12 $15 $02 $06 ; 0xb5
	.db $0f $01 $14 $43 $13 $15 $03 $06 ; 0xb6

area15Seasons:
	.db $0f $01 $00 $48 $30 $16 $00 $00 ; 0xb7
	.db $0f $01 $00 $49 $31 $16 $01 $00 ; 0xb8
	.db $0f $01 $00 $4a $32 $16 $02 $00 ; 0xb9
	.db $0f $01 $00 $4b $33 $16 $03 $00 ; 0xba

area16Seasons:
	.db $0f $01 $15 $48 $30 $16 $00 $00 ; 0xbb
	.db $0f $01 $15 $49 $31 $16 $01 $00 ; 0xbc
	.db $0f $01 $15 $4a $32 $16 $02 $00 ; 0xbd
	.db $0f $01 $15 $4b $33 $16 $03 $00 ; 0xbe

area17Seasons:
	.db $0f $01 $15 $48 $30 $16 $00 $08 ; 0xbf
	.db $0f $01 $15 $49 $31 $16 $01 $08 ; 0xc0
	.db $0f $01 $15 $4a $32 $16 $02 $08 ; 0xc1
	.db $0f $01 $15 $4b $33 $16 $03 $08 ; 0xc2

area18Seasons:
	.db $0f $01 $16 $48 $34 $17 $00 $00 ; 0xc3
	.db $0f $01 $16 $49 $35 $17 $01 $00 ; 0xc4
	.db $0f $01 $16 $4a $36 $17 $02 $00 ; 0xc5
	.db $0f $01 $16 $4b $37 $17 $03 $00 ; 0xc6

area19Seasons:
	.db $0f $01 $16 $48 $38 $17 $00 $00 ; 0xc7
	.db $0f $01 $16 $49 $39 $17 $01 $00 ; 0xc8
	.db $0f $01 $16 $4a $3a $17 $02 $00 ; 0xc9
	.db $0f $01 $16 $4b $3b $17 $03 $00 ; 0xca

area1aSeasons:
	.db $0f $01 $00 $4c $64 $18 $00 $00 ; 0xcb
	.db $0f $01 $00 $4c $64 $18 $00 $00 ; 0xcc
	.db $0f $01 $00 $4d $65 $19 $01 $0a ; 0xcd
	.db $0f $01 $00 $4e $66 $1a $02 $05 ; 0xce

templeRemainsSeasons:
	.db $0f $01 $00 $48 $30 $16 $04 $08 ; 0xcf
	.db $0f $01 $00 $49 $31 $16 $04 $08 ; 0xd0
	.db $0f $01 $00 $4a $32 $16 $04 $08 ; 0xd1
	.db $0f $01 $00 $4b $33 $16 $04 $08 ; 0xd2

moblinKeepSeasons:
	.db $0f $01 $00 $4c $64 $18 $03 $00 ; 0xd3
	.db $0f $01 $00 $4c $64 $18 $03 $00 ; 0xd4
	.db $0f $01 $00 $4d $65 $19 $03 $0a ; 0xd5
	.db $0f $01 $00 $4e $66 $1a $03 $05 ; 0xd6
