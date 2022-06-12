.include "macros.s"

.section .dtors, "wa"  # 0x800764C0 - 0x800764E0 ; 0x00000020


.global lbl_800764C0
lbl_800764C0:

	# ROM: 0x734C0
	.4byte func_80006638
	.4byte lbl_80007334
	.4byte func_80006638
	.4byte 0
