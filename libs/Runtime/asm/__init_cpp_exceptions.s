.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global GetR2__Fv
GetR2__Fv:
/* 8000732C 0000414C  7C 43 13 78 */	mr r3, r2
/* 80007330 00004150  4E 80 00 20 */	blr

.global __fini_cpp_exceptions
__fini_cpp_exceptions:
/* 80007334 00004154  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80007338 00004158  7C 08 02 A6 */	mflr r0
/* 8000733C 0000415C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007340 00004160  80 6D 80 10 */	lwz r3, fragmentID@sda21(r13)
/* 80007344 00004164  2C 03 FF FE */	cmpwi r3, -0x2
/* 80007348 00004168  41 82 00 10 */	beq lbl_80007358
/* 8000734C 0000416C  48 00 14 21 */	bl __unregister_fragment
/* 80007350 00004170  38 00 FF FE */	li r0, -0x2
/* 80007354 00004174  90 0D 80 10 */	stw r0, fragmentID@sda21(r13)
lbl_80007358:
/* 80007358 00004178  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000735C 0000417C  7C 08 03 A6 */	mtlr r0
/* 80007360 00004180  38 21 00 10 */	addi r1, r1, 0x10
/* 80007364 00004184  4E 80 00 20 */	blr

.global __init_cpp_exceptions
__init_cpp_exceptions:
/* 80007368 00004188  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000736C 0000418C  7C 08 02 A6 */	mflr r0
/* 80007370 00004190  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007374 00004194  80 0D 80 10 */	lwz r0, fragmentID@sda21(r13)
/* 80007378 00004198  2C 00 FF FE */	cmpwi r0, -0x2
/* 8000737C 0000419C  40 82 00 1C */	bne lbl_80007398
/* 80007380 000041A0  4B FF FF AD */	bl GetR2__Fv
/* 80007384 000041A4  3C A0 80 00 */	lis r5, lbl_80005880@ha
/* 80007388 000041A8  7C 64 1B 78 */	mr r4, r3
/* 8000738C 000041AC  38 65 58 80 */	addi r3, r5, lbl_80005880@l
/* 80007390 000041B0  48 00 14 11 */	bl __register_fragment
/* 80007394 000041B4  90 6D 80 10 */	stw r3, fragmentID@sda21(r13)
lbl_80007398:
/* 80007398 000041B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000739C 000041BC  7C 08 03 A6 */	mtlr r0
/* 800073A0 000041C0  38 21 00 10 */	addi r1, r1, 0x10
/* 800073A4 000041C4  4E 80 00 20 */	blr


.section .ctors, "wa"  # 0x800764A0 - 0x800764C0 ; 0x00000020

.global __init_cpp_exceptions_reference
__init_cpp_exceptions_reference:

	# ROM: 0x734A0
	.4byte __init_cpp_exceptions
	.4byte 0


.section .dtors, "wa"  # 0x800764C0 - 0x800764E0 ; 0x00000020

.global __destroy_global_chain_reference
__destroy_global_chain_reference:

	# ROM: 0x734C0
	.4byte __destroy_global_chain
	.4byte __fini_cpp_exceptions


.section .sdata, "wa"  # 0x800C3E60 - 0x800C4080 ; 0x00000220

.balign 8

.global fragmentID
fragmentID:

	# ROM: 0x82B30
	.4byte 0xFFFFFFFE
