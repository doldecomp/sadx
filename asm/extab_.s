.include "macros.s"

.section extab_, "wa"  # 0x800056C0 - 0x800057C0 ; 0x00000100


.global lbl_800056C0
lbl_800056C0:

	# ROM: 0x732C0
	.4byte 0x08180000
	.4byte 0x00000020
	.4byte 0x00000018
	.4byte 0x0000002C
	.4byte 0x00000024
	.4byte 0
	.4byte 0x8F000000
	.4byte 0x00000024
	.4byte 0x00000008
	.4byte 0x8D000008

.global lbl_800056E8
lbl_800056E8:

	# ROM: 0x732E8
	.4byte 0x08080000
	.4byte 0

.global lbl_800056F0
lbl_800056F0:

	# ROM: 0x732F0
	.4byte 0x20080000
	.4byte 0x00000060
	.4byte 0x00000010
	.4byte 0
	.4byte 0x82000008
	.4byte lbl_80006830

.global lbl_80005708
lbl_80005708:

	# ROM: 0x73308
	.4byte 0x18080000
	.4byte 0

.global lbl_80005710
lbl_80005710:

	# ROM: 0x73310
	.4byte 0x28080000
	.4byte 0x00000070
	.4byte 0x00000010
	.4byte 0
	.4byte 0x82000008
	.4byte lbl_80006830

.global lbl_80005728
lbl_80005728:

	# ROM: 0x73328
	.4byte 0x00080000
	.4byte 0

.global lbl_80005730
lbl_80005730:

	# ROM: 0x73330
	.4byte 0x00080000
	.4byte 0

.global lbl_80005738
lbl_80005738:

	# ROM: 0x73338
	.4byte 0x00080000
	.4byte 0

.global lbl_80005740
lbl_80005740:

	# ROM: 0x73340
	.4byte 0x00080000
	.4byte 0

.global lbl_80005748
lbl_80005748:

	# ROM: 0x73348
	.4byte 0x00080000
	.4byte 0

.global lbl_80005750
lbl_80005750:

	# ROM: 0x73350
	.4byte 0x30080000
	.4byte 0x00000270
	.4byte 0x00100010
	.4byte 0
	.4byte 0x8E000000

.global lbl_80005764
lbl_80005764:

	# ROM: 0x73364
	.4byte 0x30180000
	.4byte 0x00000028
	.4byte 0x00000018
	.4byte 0x0000004C
	.4byte 0x004C0028
	.4byte 0
	.4byte 0x90002500
	.4byte 0
	.4byte 0x0000002C
	.4byte 0x0000001C
	.4byte 0x8D00001C

.global lbl_80005790
lbl_80005790:

	# ROM: 0x73390
	.4byte 0x08080000
	.4byte 0

.global lbl_80005798
lbl_80005798:

	# ROM: 0x73398
	.4byte 0x40080000
	.4byte 0x00000034
	.4byte 0x012C0010
	.4byte 0
	.4byte 0x8E000000

.global lbl_800057AC
lbl_800057AC:

	# ROM: 0x733AC
	.4byte 0x10080000
	.4byte 0

.global lbl_800057B4
lbl_800057B4:

	# ROM: 0x733B4
	.4byte 0x00080000
	.4byte 0
	.4byte 0
