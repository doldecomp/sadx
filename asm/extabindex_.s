.include "macros.s"

.section extabindex_, "wa"  # 0x800057C0 - 0x800058A0 ; 0x000000E0


.global lbl_800057C0
lbl_800057C0:

	# ROM: 0x733C0
	.4byte __dl__FPv
	.4byte 0x0000004C
	.4byte lbl_800056C0
	.4byte __dt__Q23std13exceptionFv
	.4byte 0x00000048
	.4byte lbl_800056E8
	.4byte __construct_array
	.4byte 0x000000F8
	.4byte lbl_800056F0
	.4byte __dt__26__partial_array_destructorFv
	.4byte 0x000000B8
	.4byte lbl_80005708
	.4byte __construct_new_array
	.4byte 0x00000100
	.4byte lbl_80005710
	.4byte unexpected__3stdFv
	.4byte 0x00000028
	.4byte lbl_80005728
	.4byte terminate__3stdFv
	.4byte 0x00000028
	.4byte lbl_80005730
	.4byte duhandler__3stdFv
	.4byte 0x00000028
	.4byte lbl_80005738
	.4byte dthandler__3stdFv
	.4byte 0x00000020
	.4byte lbl_80005740
	.4byte __end__catch
	.4byte 0x00000044
	.4byte lbl_80005748
	.4byte ExPPC_ThrowHandler__FP12ThrowContext
	.4byte 0x00000410
	.4byte lbl_80005750
	.4byte __unexpected
	.4byte 0x000001B4
	.4byte lbl_80005764
	.4byte __dt__Q23std13bad_exceptionFv
	.4byte 0x0000005C
	.4byte lbl_80005790
	.4byte ExPPC_UnwindStack__FP12ThrowContextP15MWExceptionInfoPv
	.4byte 0x0000050C
	.4byte lbl_80005798
	.4byte ExPPC_NextAction__FP14ActionIterator
	.4byte 0x000001C0
	.4byte lbl_800057AC
	.4byte ExPPC_FindExceptionRecord__FPcP15MWExceptionInfo
	.4byte 0x00000204
	.4byte lbl_800057B4

.global lbl_80005880
lbl_80005880:

	# ROM: 0x73480
	.4byte lbl_800057C0
	.4byte lbl_80005880
	.4byte __dl__FPv
	.4byte 0x000020D4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
