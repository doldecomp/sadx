.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global __dt__Q23std13exceptionFv
__dt__Q23std13exceptionFv:
/* 800066E4 00003504  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800066E8 00003508  7C 08 02 A6 */	mflr r0
/* 800066EC 0000350C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800066F0 00003510  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800066F4 00003514  7C 7F 1B 79 */	mr. r31, r3
/* 800066F8 00003518  41 82 00 1C */	beq lbl_80006714
/* 800066FC 0000351C  3C A0 80 08 */	lis r5, __vt__Q23std9exception@ha
/* 80006700 00003520  7C 80 07 35 */	extsh. r0, r4
/* 80006704 00003524  38 05 9E 50 */	addi r0, r5, __vt__Q23std9exception@l
/* 80006708 00003528  90 1F 00 00 */	stw r0, 0x0(r31)
/* 8000670C 0000352C  40 81 00 08 */	ble lbl_80006714
/* 80006710 00003530  4B FF FF 89 */	bl __dl__FPv
lbl_80006714:
/* 80006714 00003534  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80006718 00003538  7F E3 FB 78 */	mr r3, r31
/* 8000671C 0000353C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80006720 00003540  7C 08 03 A6 */	mtlr r0
/* 80006724 00003544  38 21 00 10 */	addi r1, r1, 0x10
/* 80006728 00003548  4E 80 00 20 */	blr

.global what__Q23std13exceptionCFv
what__Q23std13exceptionCFv:
/* 8000672C 0000354C  3C 60 80 07 */	lis r3, lbl_800764F0@ha
/* 80006730 00003550  38 63 64 F0 */	addi r3, r3, lbl_800764F0@l
/* 80006734 00003554  4E 80 00 20 */	blr


.section .rodata, "wa"  # 0x800764E0 - 0x80079C60 ; 0x00003780

.balign 8

.global lbl_800764E0
lbl_800764E0:

	# ROM: 0x734E0
	.asciz "std::exception"
	.balign 4

.global lbl_800764F0
lbl_800764F0:

	# ROM: 0x734F0
	.asciz "exception"
	.balign 4


.section .data, "wa"  # 0x80079C60 - 0x80085B20 ; 0x0000BEC0

.balign 8

.global __vt__Q23std9exception
__vt__Q23std9exception:

	# ROM: 0x76E50
	.4byte __RTTI__Q23std9exception
	.4byte 0
	.4byte __dt__Q23std13exceptionFv
	.4byte what__Q23std13exceptionCFv


.section .sdata, "wa"  # 0x800C3E60 - 0x800C4080 ; 0x00000220

.balign 8

__RTTI__Q23std9exception:

	# ROM: 0x82B20
	.4byte lbl_800764E0
