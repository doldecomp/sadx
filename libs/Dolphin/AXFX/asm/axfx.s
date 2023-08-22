.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global __AXFXAllocFunction
__AXFXAllocFunction:
/* 80022B40 0001F960  7C 08 02 A6 */	mflr r0
/* 80022B44 0001F964  7C 64 1B 78 */	mr r4, r3
/* 80022B48 0001F968  90 01 00 04 */	stw r0, 0x4(r1)
/* 80022B4C 0001F96C  94 21 FF F8 */	stwu r1, -0x8(r1)
/* 80022B50 0001F970  80 6D 81 60 */	lwz r3, lbl_800C3FC0@sda21(r13)
/* 80022B54 0001F974  48 01 96 C9 */	bl func_8003C21C
/* 80022B58 0001F978  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80022B5C 0001F97C  38 21 00 08 */	addi r1, r1, 0x8
/* 80022B60 0001F980  7C 08 03 A6 */	mtlr r0
/* 80022B64 0001F984  4E 80 00 20 */	blr

.global __AXFXFreeFunction
__AXFXFreeFunction:
/* 80022B68 0001F988  7C 08 02 A6 */	mflr r0
/* 80022B6C 0001F98C  7C 64 1B 78 */	mr r4, r3
/* 80022B70 0001F990  90 01 00 04 */	stw r0, 0x4(r1)
/* 80022B74 0001F994  94 21 FF F8 */	stwu r1, -0x8(r1)
/* 80022B78 0001F998  80 6D 81 60 */	lwz r3, lbl_800C3FC0@sda21(r13)
/* 80022B7C 0001F99C  48 01 97 9D */	bl OSFreeToHeap
/* 80022B80 0001F9A0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80022B84 0001F9A4  38 21 00 08 */	addi r1, r1, 0x8
/* 80022B88 0001F9A8  7C 08 03 A6 */	mtlr r0
/* 80022B8C 0001F9AC  4E 80 00 20 */	blr

.global AXFXSetHooks
AXFXSetHooks:
/* 80022B90 0001F9B0  90 6D 80 88 */	stw r3, __AXFXAlloc@sda21(r13)
/* 80022B94 0001F9B4  90 8D 80 8C */	stw r4, __AXFXFree@sda21(r13)
/* 80022B98 0001F9B8  4E 80 00 20 */	blr


.section .sdata, "wa"  # 0x800C3E60 - 0x800C4080 ; 0x00000220

.balign 8

.global __AXFXAlloc
__AXFXAlloc:

	# ROM: 0x82BA8
	.4byte __AXFXAllocFunction

.global __AXFXFree
__AXFXFree:

	# ROM: 0x82BAC
	.4byte __AXFXFreeFunction
