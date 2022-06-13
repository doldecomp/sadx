.include "macros.s"

.section .dtors, "wa"  # 0x800764C0 - 0x800764E0 ; 0x00000020


.global lbl_800764C0
lbl_800764C0:

	# ROM: 0x734C0
	.4byte __destroy_global_chain
	.4byte __fini_cpp_exceptions
	.4byte __destroy_global_chain
	.4byte 0
