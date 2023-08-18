.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global __destroy_global_chain
__destroy_global_chain:
/* 80006638 00003458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000663C 0000345C  7C 08 02 A6 */	mflr r0
/* 80006640 00003460  90 01 00 14 */	stw r0, 0x14(r1)
/* 80006644 00003464  48 00 00 20 */	b lbl_80006664
lbl_80006648:
/* 80006648 00003468  80 03 00 00 */	lwz r0, 0x0(r3)
/* 8000664C 0000346C  38 80 FF FF */	li r4, -0x1
/* 80006650 00003470  90 0D 82 58 */	stw r0, __global_destructor_chain@sda21(r13)
/* 80006654 00003474  81 83 00 04 */	lwz r12, 0x4(r3)
/* 80006658 00003478  80 63 00 08 */	lwz r3, 0x8(r3)
/* 8000665C 0000347C  7D 89 03 A6 */	mtctr r12
/* 80006660 00003480  4E 80 04 21 */	bctrl
lbl_80006664:
/* 80006664 00003484  80 6D 82 58 */	lwz r3, __global_destructor_chain@sda21(r13)
/* 80006668 00003488  28 03 00 00 */	cmplwi r3, 0x0
/* 8000666C 0000348C  40 82 FF DC */	bne lbl_80006648
/* 80006670 00003490  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80006674 00003494  7C 08 03 A6 */	mtlr r0
/* 80006678 00003498  38 21 00 10 */	addi r1, r1, 0x10
/* 8000667C 0000349C  4E 80 00 20 */	blr

.global __register_global_object
__register_global_object:
/* 80006680 000034A0  80 0D 82 58 */	lwz r0, __global_destructor_chain@sda21(r13)
/* 80006684 000034A4  90 05 00 00 */	stw r0, 0x0(r5)
/* 80006688 000034A8  90 85 00 04 */	stw r4, 0x4(r5)
/* 8000668C 000034AC  90 65 00 08 */	stw r3, 0x8(r5)
/* 80006690 000034B0  90 AD 82 58 */	stw r5, __global_destructor_chain@sda21(r13)
/* 80006694 000034B4  4E 80 00 20 */	blr


.section .dtors, "wa"  # 0x800764C0 - 0x800764E0 ; 0x00000020

__destroy_global_chain_reference:
	.4byte __destroy_global_chain


.section .sbss, "", @nobits  # 0x800C4080 - 0x800C4680 ; 0x00000600

.balign 8

.global __global_destructor_chain
__global_destructor_chain:
	.skip 0x4
