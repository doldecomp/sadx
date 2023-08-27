.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global AXInitEx
AXInitEx:
/* 8001D978 0001A798  7C 08 02 A6 */	mflr r0
/* 8001D97C 0001A79C  90 01 00 04 */	stw r0, 0x4(r1)
/* 8001D980 0001A7A0  94 21 FF F8 */	stwu r1, -0x8(r1)
/* 8001D984 0001A7A4  80 6D 80 78 */	lwz r3, __AXVersion@sda21(r13)
/* 8001D988 0001A7A8  48 01 E0 91 */	bl OSRegisterVersion
/* 8001D98C 0001A7AC  48 00 00 B5 */	bl __AXAllocInit
/* 8001D990 0001A7B0  48 00 25 0D */	bl __AXVPBInit
/* 8001D994 0001A7B4  48 00 1A 89 */	bl __AXSPBInit
/* 8001D998 0001A7B8  48 00 04 31 */	bl __AXAuxInit
/* 8001D99C 0001A7BC  48 00 0F B1 */	bl __AXClInit
/* 8001D9A0 0001A7C0  48 00 13 31 */	bl __AXOutInit
/* 8001D9A4 0001A7C4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8001D9A8 0001A7C8  38 21 00 08 */	addi r1, r1, 0x8
/* 8001D9AC 0001A7CC  7C 08 03 A6 */	mtlr r0
/* 8001D9B0 0001A7D0  4E 80 00 20 */	blr


.section .data, "wa"  # 0x80079C60 - 0x80085B20 ; 0x0000BEC0

.balign 8

.global lbl_8007AAD8
lbl_8007AAD8:

	# ROM: 0x77AD8
	.asciz "<< Dolphin SDK - AX\trelease build: Mar 11 2003 11:19:39 (0x2301) >>"


.section .sdata, "wa"  # 0x800C3E60 - 0x800C4080 ; 0x00000220

.balign 8

.global __AXVersion
__AXVersion:

	# ROM: 0x82B98
	.4byte lbl_8007AAD8
