.include "macros.s"

.section .ctors, "wa"  # 0x800764A0 - 0x800764C0 ; 0x00000020


.global lbl_800764A0
lbl_800764A0:

	# ROM: 0x734A0
	.4byte lbl_80007368
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
