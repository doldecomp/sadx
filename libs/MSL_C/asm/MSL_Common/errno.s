.include "macros.s"

.section .sbss, "", @nobits  # 0x800C4080 - 0x800C4680 ; 0x00000600

.balign 8

.global errno
errno:
	.skip 0x4
