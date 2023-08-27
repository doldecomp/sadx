.include "macros.s"

.section .sdata, "wa"  # 0x800C3E60 - 0x800C4080 ; 0x00000220

.balign 8

.global __float_nan
__float_nan:

	# ROM: 0x82B58
	.4byte 0x7FFFFFFF

.global __float_huge
__float_huge:

	# ROM: 0x82B5C
	.4byte 0x7F800000

.global __double_max
__double_max:

	# ROM: 0x82B60
	.8byte 0x7FEFFFFFFFFFFFFF

.global __double_huge
__double_huge:

	# ROM: 0x82B68
	.8byte 0x7FF0000000000000

.global __extended_min
__extended_min:

	# ROM: 0x82B70
	.8byte 0x0010000000000000

.global __extended_max
__extended_max:

	# ROM: 0x82B78
	.8byte 0x7FEFFFFFFFFFFFFF
