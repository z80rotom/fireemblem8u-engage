	.include "proc.inc"

    .section .data

	@ pointers
	.global gUnknown_08587938
gUnknown_08587938:  @ 0x08587938
@ replacing .incbin "baserom.gba", 0x00587938, 0x10
.4byte 0x2022ca8
.4byte 0x20234a8
.4byte 0x2023ca8
.4byte 0x20244a8

	@ pointers
	.global gUnknown_08587948
gUnknown_08587948:  @ 0x08587948
@ replacing .incbin "baserom.gba", 0x00587948, 0x10
.4byte 0x300308c
.4byte 0x3003090
.4byte 0x3003094
.4byte 0x3003098

	@ proc script
	.global gUnknown_08587958
gUnknown_08587958:  @ 0x08587958
@ replacing .incbin "baserom.gba", 0x00587958, 0x18
.2byte 0x0017, 0x0000, 0x0000, 0x0000, 0x0003, 0x0000, 0x24f1, 0x0800, 0x0000, 0x0000, 0x0000, 0x0000

	@ proc script
	.global gUnknown_08587970
gUnknown_08587970:  @ 0x08587970
@ replacing .incbin "baserom.gba", 0x00587970, 0x18
.2byte 0x000e, 0x0000, 0x0000, 0x0000, 0x0003, 0x0000, 0x2789, 0x0800, 0x0000, 0x0000, 0x0000, 0x0000

	@ proc script
	.global gUnknown_08587988
gUnknown_08587988:  @ 0x08587988
@ replacing .incbin "baserom.gba", 0x00587988, 0x10
.2byte 0x0003, 0x0000, 0x281d, 0x0800, 0x0000, 0x0000, 0x0000, 0x0000

	@ proc script
	.global gUnknown_08587998
gUnknown_08587998:  @ 0x08587998
@ replacing .incbin "baserom.gba", 0x00587998, 0x40
.2byte 0x000e, 0x0001, 0x0000, 0x0000, 0x0002, 0x0000, 0x296d, 0x0800, 0x000e, 0x0001, 0x0000, 0x0000, 0x0002, 0x0000, 0x29bd, 0x0800
.2byte 0x000e, 0x0008, 0x0000, 0x0000, 0x000b, 0x0000, 0x0000, 0x0000, 0x000e, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000

