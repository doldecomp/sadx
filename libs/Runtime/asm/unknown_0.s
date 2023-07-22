.include "macros.s"

# Seems to be compiler-generated funcs related to std::exception
# I'm not smart enough to figure out which file these should go into so they're being kept here on their own for now

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00

.global func_80006698
func_80006698:
/* 80006698 000034B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8000669C 000034BC  7C 08 02 A6 */	mflr r0
/* 800066A0 000034C0  28 03 00 00 */	cmplwi r3, 0x0
/* 800066A4 000034C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 800066A8 000034C8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800066AC 000034CC  7C 3F 0B 78 */	mr r31, r1
/* 800066B0 000034D0  41 82 00 18 */	beq lbl_800066C8
/* 800066B4 000034D4  48 00 23 39 */	bl func_800089EC
/* 800066B8 000034D8  48 00 00 10 */	b lbl_800066C8
/* 800066BC 000034DC  38 7F 00 08 */	addi r3, r31, 0x8
/* 800066C0 000034E0  48 00 13 85 */	bl func_80007A44
lbl_800066C4:
/* 800066C4 000034E4  48 00 00 00 */	b lbl_800066C4
lbl_800066C8:
/* 800066C8 000034E8  7F EA FB 78 */	mr r10, r31
/* 800066CC 000034EC  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 800066D0 000034F0  81 41 00 00 */	lwz r10, 0x0(r1)
/* 800066D4 000034F4  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 800066D8 000034F8  7D 41 53 78 */	mr r1, r10
/* 800066DC 000034FC  7C 08 03 A6 */	mtlr r0
/* 800066E0 00003500  4E 80 00 20 */	blr

.global func_800066E4
func_800066E4:
/* 800066E4 00003504  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800066E8 00003508  7C 08 02 A6 */	mflr r0
/* 800066EC 0000350C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800066F0 00003510  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800066F4 00003514  7C 7F 1B 79 */	mr. r31, r3
/* 800066F8 00003518  41 82 00 1C */	beq lbl_80006714
/* 800066FC 0000351C  3C A0 80 08 */	lis r5, lbl_80079E50@ha
/* 80006700 00003520  7C 80 07 35 */	extsh. r0, r4
/* 80006704 00003524  38 05 9E 50 */	addi r0, r5, lbl_80079E50@l
/* 80006708 00003528  90 1F 00 00 */	stw r0, 0x0(r31)
/* 8000670C 0000352C  40 81 00 08 */	ble lbl_80006714
/* 80006710 00003530  4B FF FF 89 */	bl func_80006698
lbl_80006714:
/* 80006714 00003534  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80006718 00003538  7F E3 FB 78 */	mr r3, r31
/* 8000671C 0000353C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80006720 00003540  7C 08 03 A6 */	mtlr r0
/* 80006724 00003544  38 21 00 10 */	addi r1, r1, 0x10
/* 80006728 00003548  4E 80 00 20 */	blr

.global func_8000672C
func_8000672C:
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

.global lbl_80079E50
lbl_80079E50:

	# ROM: 0x76E50
	.4byte lbl_800C3E60
	.4byte 0
	.4byte func_800066E4
	.4byte func_8000672C


.section .sdata, "wa"  # 0x800C3E60 - 0x800C4080 ; 0x00000220

.balign 8

.global lbl_800C3E60
lbl_800C3E60:

	# ROM: 0x82B20
	.4byte lbl_800764E0
