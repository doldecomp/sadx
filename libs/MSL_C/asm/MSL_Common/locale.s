.include "macros.s"

.section .rodata, "wa"  # 0x800764E0 - 0x80079C60 ; 0x00003780

.balign 8

"@stringBase0":

	# ROM: 0x73720
	.asciz "."
	.asciz ""
	.asciz "C"


.section .data, "wa"  # 0x80079C60 - 0x80085B20 ; 0x0000BEC0

.balign 8

.global __lconv
__lconv:

	# ROM: 0x774F0
	.4byte "@stringBase0"
	.4byte "@stringBase0"+2
	.4byte "@stringBase0"+2
	.4byte "@stringBase0"+2
	.4byte "@stringBase0"+2
	.4byte "@stringBase0"+2
	.4byte "@stringBase0"+2
	.4byte "@stringBase0"+2
	.4byte "@stringBase0"+2
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F00
	.4byte "@stringBase0"+2
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F00
