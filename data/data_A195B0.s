    .section .data

	.incbin "baserom.gba", 0xA195B0, 0x48

	.global gUnknown_08A195F8
gUnknown_08A195F8:  @ 0x08A195F8
	.incbin "baserom.gba", 0xA195F8, 0x10

	.global gUnknown_08A19608
gUnknown_08A19608:  @ 0x08A19608
@ replacing .incbin "baserom.gba", 0x00a19608, 0x24
.4byte gProcScr_PrepWMShopSell + 0x88
.4byte gProcScr_PrepWMShopSell + 0x90
.4byte gProcScr_PrepWMShopSell + 0x98
.4byte gProcScr_PrepWMShopSell + 0xa0
.4byte gProcScr_PrepWMShopSell + 0xa8
.4byte gProcScr_PrepWMShopSell + 0xb0
.4byte gProcScr_PrepWMShopSell + 0xb8
.4byte gProcScr_PrepWMShopSell + 0xc0
.4byte gProcScr_PrepWMShopSell + 0xc8

	.global gUnknown_08A1962C
gUnknown_08A1962C:  @ 0x08A1962C
        @ PROC_YIELD
        .short 0xe, 0x0
        .word 0x0
        @ PROC_CALL
        .short 0x2, 0x0
        .word sub_80A0758
        @ PROC_LABEL
        .short 0xb, 0x0
        .word 0x0
        @ PROC_CALL
        .short 0x2, 0x0
        .word sub_80A0924
        @ PROC_LABEL
        .short 0xb, 0x1
        .word 0x0
        @ PROC_LABEL
        .short 0xb, 0x2
        .word 0x0
        @ PROC_CALL
        .short 0x2, 0x0
        .word sub_80A0900
        @ PROC_GOTO
        .short 0xc, 0x5
        .word 0x0
        @ PROC_LABEL
        .short 0xb, 0x3
        .word 0x0
        @ PROC_CALL
        .short 0x2, 0x0
        .word sub_80A0900
        @ PROC_GOTO
        .short 0xc, 0x5
        .word 0x0
        @ PROC_LABEL
        .short 0xb, 0x4
        .word 0x0
        @ PROC_CALL
        .short 0x2, 0x0
        .word sub_80A0900
        @ PROC_CALL
        .short 0x2, 0x0
        .word sub_80A196C
        @ PROC_YIELD
        .short 0xe, 0x0
        .word 0x0
        @ PROC_GOTO
        .short 0xc, 0x5
        .word 0x0
        @ PROC_LABEL
        .short 0xb, 0x5
        .word 0x0
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gUnknown_08A196BC
gUnknown_08A196BC:  @ 0x08A196BC
	.incbin "baserom.gba", 0xA196BC, 0x14

	.global gUnknown_08A196D0
gUnknown_08A196D0:  @ 0x08A196D0
	.incbin "baserom.gba", 0xA196D0, 0x2C

	.global gUnknown_08A196FC
gUnknown_08A196FC:  @ 0x08A196FC
@ replacing .incbin "baserom.gba", 0x00a196fc, 0x4
.4byte gUnknown_0200F15C + 0x20

	.global gUnknown_08A19700
gUnknown_08A19700:  @ 0x08A19700
	.incbin "baserom.gba", 0xA19700, 0x26

	.global gUnknown_08A19726
gUnknown_08A19726:  @ 0x08A19726
	.incbin "baserom.gba", 0xA19726, 0x16

	.global gUnknown_08A1973C
gUnknown_08A1973C:  @ 0x08A1973C
        @ PROC_YIELD
        .short 0xe, 0x0
        .word 0x0
        @ PROC_CALL
        .short 0x2, 0x0
        .word sub_80A10D0
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_80A10FC
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gUnknown_08A1975C
gUnknown_08A1975C:  @ 0x08A1975C
        @ PROC_YIELD
        .short 0xe, 0x0
        .word 0x0
        @ PROC_CALL
        .short 0x2, 0x0
        .word sub_80A0C40
        @ PROC_CALL
        .short 0x2, 0x0
        .word sub_80A10BC
        @ PROC_YIELD
        .short 0xe, 0x0
        .word 0x0
        @ PROC_LABEL
        .short 0xb, 0x0
        .word 0x0
        @ PROC_CALL
        .short 0x2, 0x0
        .word sub_80A1270
        @ PROC_WHILE
        .short 0x14, 0x0
        .word IsMusicProc2Running
        @ PROC_CALL
        .short 0x2, 0x0
        .word sub_8013D8C
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word WaitForFade
        @ PROC_WHILE
        .short 0x14, 0x0
        .word MusicProc4Exists
        @ PROC_LABEL
        .short 0xb, 0x1
        .word 0x0
        @ PROC_CALL
        .short 0x2, 0x0
        .word sub_80A157C
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_80A15B0
        @ PROC_GOTO
        .short 0xc, 0x1
        .word 0x0
        @ PROC_LABEL
        .short 0xb, 0x2
        .word 0x0
        @ PROC_CALL_ARG
        .short 0x18, 0x8
        .word NewFadeOut
        @ PROC_WHILE
        .short 0x14, 0x0
        .word FadeOutExists
        @ PROC_CALL
        .short 0x2, 0x0
        .word sub_80A1554
        @ PROC_CALL
        .short 0x2, 0x0
        .word sub_80A1918
        @ PROC_YIELD
        .short 0xe, 0x0
        .word 0x0
        @ PROC_GOTO
        .short 0xc, 0x0
        .word 0x0
        @ PROC_LABEL
        .short 0xb, 0x3
        .word 0x0
        @ PROC_CALL
        .short 0x2, 0x0
        .word sub_80A1930
        @ PROC_CALL
        .short 0x2, 0x0
        .word StartFadeInBlackMedium
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word WaitForFade
        @ PROC_CALL
        .short 0x2, 0x0
        .word sub_80A1554
        @ PROC_WHILE
        .short 0x14, 0x0
        .word IsMusicProc2Running
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gUnknown_08A1983C
gUnknown_08A1983C:  @ 0x08A1983C
    .incbin "baserom.gba", 0xA1983C, 0x14

	.global gUnknown_08A19850
gUnknown_08A19850:  @ 0x08A19850
	.incbin "baserom.gba", 0xA19850, 0xE

	.global gUnknown_08A1985E
gUnknown_08A1985E:  @ 0x08A1985E
@ Replacing .incbin "baserom.gba", 0xA1985E, 0x14
    .4byte 0x40000003
    .4byte 0x8068000
    .4byte -0x7fdfc000
    .4byte 0x80a
    .4byte gUnknown_080E3B78 + 0x4c8

	.global gUnknown_08A19872
gUnknown_08A19872:  @ 0x08A19872
	.incbin "baserom.gba", 0xA19872, 0xE

	.global gUnknown_08A19880
gUnknown_08A19880:  @ 0x08A19880
        @ PROC_YIELD
        .short 0xe, 0x0
        .word 0x0
        @ PROC_CALL
        .short 0x2, 0x0
        .word sub_80A21D0
        @ PROC_LABEL
        .short 0xb, 0x0
        .word 0x0
        @ PROC_CALL
        .short 0x2, 0x0
        .word sub_80A2274
        @ PROC_CALL_ARG
        .short 0x18, 0x8
        .word NewFadeIn
        @ PROC_WHILE
        .short 0x14, 0x0
        .word FadeInExists
        @ PROC_WHILE
        .short 0x14, 0x0
        .word MusicProc4Exists
        @ PROC_LABEL
        .short 0xb, 0x1
        .word 0x0
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_80A2448
        @ PROC_LABEL
        .short 0xb, 0x2
        .word 0x0
        @ PROC_CALL
        .short 0x2, 0x0
        .word sub_80A2B7C
        @ PROC_CALL_ARG
        .short 0x18, 0x8
        .word NewFadeOut
        @ PROC_WHILE
        .short 0x14, 0x0
        .word FadeOutExists
        @ PROC_CALL
        .short 0x2, 0x0
        .word sub_80A2B5C
        @ PROC_YIELD
        .short 0xe, 0x0
        .word 0x0
        @ PROC_WHILE
        .short 0x14, 0x0
        .word MusicProc4Exists
        @ PROC_CALL
        .short 0x2, 0x0
        .word sub_80A25F8
        @ PROC_YIELD
        .short 0xe, 0x0
        .word 0x0
        @ PROC_WHILE
        .short 0x14, 0x0
        .word EventEngineExists
        @ PROC_CALL
        .short 0x2, 0x0
        .word sub_80A2BD0
        @ PROC_SLEEP
        .short 0xe, 0x8
        .word 0x0
        @ PROC_GOTO
        .short 0xc, 0x0
        .word 0x0
        @ PROC_LABEL
        .short 0xb, 0x4
        .word 0x0
        @ PROC_CALL
        .short 0x2, 0x0
        .word sub_80A26A8
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_80A2800
        @ PROC_CALL
        .short 0x2, 0x0
        .word sub_80A29C0
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_80A286C
        @ PROC_CALL
        .short 0x2, 0x0
        .word sub_80A2AAC
        @ PROC_GOTO
        .short 0xc, 0x1
        .word 0x0
        @ PROC_LABEL
        .short 0xb, 0x5
        .word 0x0
        @ PROC_CALL
        .short 0x2, 0x0
        .word sub_80A26A8
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_80A28E0
        @ PROC_CALL
        .short 0x2, 0x0
        .word sub_80A29C0
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_80A294C
        @ PROC_CALL
        .short 0x2, 0x0
        .word sub_80A2AAC
        @ PROC_GOTO
        .short 0xc, 0x1
        .word 0x0
        @ PROC_LABEL
        .short 0xb, 0x3
        .word 0x0
        @ PROC_CALL_ARG
        .short 0x18, 0x8
        .word NewFadeOut
        @ PROC_WHILE
        .short 0x14, 0x0
        .word FadeOutExists
        @ PROC_CALL
        .short 0x2, 0x0
        .word sub_80A2B5C
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0

	.global gUnknown_08A199C8
gUnknown_08A199C8:  @ 0x08A199C8
	.incbin "baserom.gba", 0xA199C8, 0x244

	.global Img_PrepWindowSideBar
Img_PrepWindowSideBar:  @ 0x08A19C0C
	.incbin "baserom.gba", 0xA19C0C, 0xA0

	.global Pal_PrepWindowSideBar
Pal_PrepWindowSideBar:  @ 0x08A19CAC
	.incbin "baserom.gba", 0xA19CAC, 0x20

	.global gUnknown_08A19CCC
gUnknown_08A19CCC:  @ 0x08A19CCC
	.incbin "baserom.gba", 0xA19CCC, 0x3B8

	.global gUnknown_08A1A084
gUnknown_08A1A084:  @ 0x08A1A084
	.incbin "baserom.gba", 0xA1A084, 0x20

	.global gUnknown_08A1A0A4
gUnknown_08A1A0A4:  @ 0x08A1A0A4
	.incbin "baserom.gba", 0xA1A0A4, 0x198

	.global gUnknown_08A1A23C
gUnknown_08A1A23C:  @ 0x08A1A23C
	.incbin "baserom.gba", 0xA1A23C, 0x1C0

	.global gUnknown_08A1A3FC
gUnknown_08A1A3FC:  @ 0x08A1A3FC
@ Replacing .incbin "baserom.gba", 0xA1A3FC, 0x20
    .4byte 0x5ab50000
    .4byte 0x2508462f
    .4byte 0x26b50000
    .4byte 0x8A708A7 + 0xa5
    .4byte 0x59400956
    .4byte 0x394e520e
    .4byte 0x32ca01a1
    .4byte 0x30a5

	.global gUnknown_08A1A41C
gUnknown_08A1A41C:  @ 0x08A1A41C
	.incbin "baserom.gba", 0xA1A41C, 0x18

	.global gUnknown_08A1A434
gUnknown_08A1A434:  @ 0x08A1A434
	.incbin "baserom.gba", 0xA1A434, 0x40

	.global gUnknown_08A1A474
gUnknown_08A1A474:  @ 0x08A1A474
	.incbin "baserom.gba", 0xA1A474, 0x54

	.global gUnknown_08A1A4C8
gUnknown_08A1A4C8:  @ 0x08A1A4C8
	.incbin "baserom.gba", 0xA1A4C8, 0x41C

	.global gUnknown_08A1A8E4
gUnknown_08A1A8E4:  @ 0x08A1A8E4
	.incbin "baserom.gba", 0xA1A8E4, 0x3A4

	.global gUnknown_08A1AC88
gUnknown_08A1AC88:  @ 0x08A1AC88
	.incbin "baserom.gba", 0xA1AC88, 0x450

	.global gUnknown_08A1B0D8
gUnknown_08A1B0D8:  @ 0x08A1B0D8
	.incbin "baserom.gba", 0xA1B0D8, 0x7C

	.global gUnknown_08A1B154
gUnknown_08A1B154:  @ 0x08A1B154
	.incbin "baserom.gba", 0xA1B154, 0x20

	.global gUnknown_08A1B174
gUnknown_08A1B174:  @ 0x08A1B174
	.incbin "baserom.gba", 0xA1B174, 0x20

	.global gUnknown_08A1B194
gUnknown_08A1B194:  @ 0x08A1B194
	.incbin "baserom.gba", 0xA1B194, 0x68

	.global gUnknown_08A1B1FC
gUnknown_08A1B1FC:  @ 0x08A1B1FC
	.incbin "baserom.gba", 0xA1B1FC, 0x43C

	.global gUnknown_08A1B638
gUnknown_08A1B638:  @ 0x08A1B638
	.incbin "baserom.gba", 0xA1B638, 0x20

	.global gUnknown_08A1B658
gUnknown_08A1B658:  @ 0x08A1B658
	.incbin "baserom.gba", 0xA1B658, 0x40

	.global gUnknown_08A1B698
gUnknown_08A1B698:  @ 0x08A1B698
	.incbin "baserom.gba", 0xA1B698, 0x98

	.global gUnknown_08A1B730
gUnknown_08A1B730:  @ 0x08A1B730
	.incbin "baserom.gba", 0xA1B730, 0x98

	.global gUnknown_08A1B7C8
gUnknown_08A1B7C8:  @ 0x08A1B7C8
	.incbin "baserom.gba", 0xA1B7C8, 0xF0

	.global gUnknown_08A1B8B8
gUnknown_08A1B8B8:  @ 0x08A1B8B8
	.incbin "baserom.gba", 0xA1B8B8, 0xD8

	.global gUnknown_08A1B990
gUnknown_08A1B990:  @ 0x08A1B990
	.incbin "baserom.gba", 0xA1B990, 0x5C

	.global gUnknown_08A1B9EC
gUnknown_08A1B9EC:  @ 0x08A1B9EC
	.incbin "baserom.gba", 0xA1B9EC, 0xCC

	.global gUnknown_08A1BAB8
gUnknown_08A1BAB8:  @ 0x08A1BAB8
	.incbin "baserom.gba", 0xA1BAB8, 0x2C

	.global gUnknown_08A1BAE4
gUnknown_08A1BAE4:  @ 0x08A1BAE4
	.incbin "baserom.gba", 0xA1BAE4, 0xEC

	.global gUnknown_08A1BBD0
gUnknown_08A1BBD0:  @ 0x08A1BBD0
	.incbin "baserom.gba", 0xA1BBD0, 0xF0

	.global gUnknown_08A1BCC0
gUnknown_08A1BCC0:  @ 0x08A1BCC0
	.incbin "baserom.gba", 0xA1BCC0, 0x40

	.global gUnknown_08A1BD00
gUnknown_08A1BD00:  @ 0x08A1BD00
	.incbin "baserom.gba", 0xA1BD00, 0x40

	.global gUnknown_08A1BD40
gUnknown_08A1BD40:  @ 0x08A1BD40
	.incbin "baserom.gba", 0xA1BD40, 0x20

	.global gUnknown_08A1BD60
gUnknown_08A1BD60:  @ 0x08A1BD60
	.incbin "baserom.gba", 0xA1BD60, 0x9A4

	.global gUnknown_08A1C704
gUnknown_08A1C704:  @ 0x08A1C704
	.incbin "baserom.gba", 0xA1C704, 0xD4

	.global gUnknown_08A1C7D8
gUnknown_08A1C7D8:  @ 0x08A1C7D8
	.incbin "baserom.gba", 0xA1C7D8, 0xDC

	.global gUnknown_08A1C8B4
gUnknown_08A1C8B4:  @ 0x08A1C8B4
	.incbin "baserom.gba", 0xA1C8B4, 0x4B4

	.global gUnknown_08A1CD68
gUnknown_08A1CD68:  @ 0x08A1CD68
	.incbin "baserom.gba", 0xA1CD68, 0x5C

	.global gUnknown_08A1CDC4
gUnknown_08A1CDC4:  @ 0x08A1CDC4
	.incbin "baserom.gba", 0xA1CDC4, 0x4C4

	.global gUnknown_08A1D288
gUnknown_08A1D288:  @ 0x08A1D288
	.incbin "baserom.gba", 0xA1D288, 0x1C0

	.global gUnknown_08A1D448
gUnknown_08A1D448:  @ 0x08A1D448
	.incbin "baserom.gba", 0xA1D448, 0x80

	.global gUnknown_08A1D4C8
gUnknown_08A1D4C8:  @ 0x08A1D4C8
	.incbin "baserom.gba", 0xA1D4C8, 0x20

	.global Img_PrepTextShadow
Img_PrepTextShadow:  @ 0x08A1D4E8
	.incbin "baserom.gba", 0xA1D4E8, 0x28

	.global gUnknown_08A1D510
gUnknown_08A1D510:  @ 0x08A1D510
	.incbin "baserom.gba", 0xA1D510, 0x28C

	.global Pal_MapBattleInfoNum
Pal_MapBattleInfoNum:  @ 0x08A1D79C
	.incbin "baserom.gba", 0xA1D79C, 0x40

	.global Img_PrepPopupWindow
Img_PrepPopupWindow:  @ 0x08A1D7DC
	.incbin "baserom.gba", 0xA1D7DC, 0xF4

	.global Img_PrepWindow
Img_PrepWindow:  @ 0x08A1D8D0
	.incbin "baserom.gba", 0xA1D8D0, 0x2B0

	.global gUnknown_08A1DB80
gUnknown_08A1DB80:  @ 0x08A1DB80
	.incbin "baserom.gba", 0xA1DB80, 0x9C

	.global gUnknown_08A1DC1C
gUnknown_08A1DC1C:  @ 0x08A1DC1C
	.incbin "baserom.gba", 0xA1DC1C, 0xF0

	.global gUnknown_08A1DD0C
gUnknown_08A1DD0C:  @ 0x08A1DD0C
	.incbin "baserom.gba", 0xA1DD0C, 0x3CC

	.global gUnknown_08A1E0D8
gUnknown_08A1E0D8:  @ 0x08A1E0D8
@ Replacing .incbin "baserom.gba", 0xA1E0D8, 0x1A1C
    .4byte 0x14c7520e
    .4byte 0x2d2628e4
    .4byte 0x3d8a3548
    .4byte 0x4a0e41cc
    .4byte 0x56925250
    .4byte 0x7fff14c7
    .4byte 0x52d7677d
    .4byte 0x3e11
