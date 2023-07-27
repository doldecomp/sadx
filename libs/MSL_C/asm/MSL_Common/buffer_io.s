.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global __flush_buffer
__flush_buffer:
/* 8000ACC8 00007AE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000ACCC 00007AEC  7C 08 02 A6 */	mflr r0
/* 8000ACD0 00007AF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000ACD4 00007AF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000ACD8 00007AF8  7C 7F 1B 78 */	mr r31, r3
/* 8000ACDC 00007AFC  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8000ACE0 00007B00  7C 9E 23 78 */	mr r30, r4
/* 8000ACE4 00007B04  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8000ACE8 00007B08  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 8000ACEC 00007B0C  7C 03 00 51 */	subf. r0, r3, r0
/* 8000ACF0 00007B10  41 82 00 50 */	beq lbl_8000AD40
/* 8000ACF4 00007B14  90 1F 00 28 */	stw r0, 0x28(r31)
/* 8000ACF8 00007B18  38 BF 00 28 */	addi r5, r31, 0x28
/* 8000ACFC 00007B1C  81 9F 00 40 */	lwz r12, 0x40(r31)
/* 8000AD00 00007B20  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8000AD04 00007B24  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 8000AD08 00007B28  80 DF 00 48 */	lwz r6, 0x48(r31)
/* 8000AD0C 00007B2C  7D 89 03 A6 */	mtctr r12
/* 8000AD10 00007B30  4E 80 04 21 */	bctrl
/* 8000AD14 00007B34  28 1E 00 00 */	cmplwi r30, 0x0
/* 8000AD18 00007B38  41 82 00 0C */	beq lbl_8000AD24
/* 8000AD1C 00007B3C  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 8000AD20 00007B40  90 1E 00 00 */	stw r0, 0x0(r30)
lbl_8000AD24:
/* 8000AD24 00007B44  2C 03 00 00 */	cmpwi r3, 0x0
/* 8000AD28 00007B48  41 82 00 08 */	beq lbl_8000AD30
/* 8000AD2C 00007B4C  48 00 00 48 */	b lbl_8000AD74
lbl_8000AD30:
/* 8000AD30 00007B50  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8000AD34 00007B54  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 8000AD38 00007B58  7C 03 02 14 */	add r0, r3, r0
/* 8000AD3C 00007B5C  90 1F 00 18 */	stw r0, 0x18(r31)
lbl_8000AD40:
/* 8000AD40 00007B60  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8000AD44 00007B64  38 60 00 00 */	li r3, 0x0
/* 8000AD48 00007B68  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8000AD4C 00007B6C  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 8000AD50 00007B70  90 1F 00 28 */	stw r0, 0x28(r31)
/* 8000AD54 00007B74  80 BF 00 18 */	lwz r5, 0x18(r31)
/* 8000AD58 00007B78  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 8000AD5C 00007B7C  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 8000AD60 00007B80  7C A4 20 38 */	and r4, r5, r4
/* 8000AD64 00007B84  7C 04 00 50 */	subf r0, r4, r0
/* 8000AD68 00007B88  90 1F 00 28 */	stw r0, 0x28(r31)
/* 8000AD6C 00007B8C  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8000AD70 00007B90  90 1F 00 34 */	stw r0, 0x34(r31)
lbl_8000AD74:
/* 8000AD74 00007B94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000AD78 00007B98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000AD7C 00007B9C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8000AD80 00007BA0  7C 08 03 A6 */	mtlr r0
/* 8000AD84 00007BA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8000AD88 00007BA8  4E 80 00 20 */	blr

.global __prep_buffer
__prep_buffer:
/* 8000AD8C 00007BAC  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8000AD90 00007BB0  90 03 00 24 */	stw r0, 0x24(r3)
/* 8000AD94 00007BB4  80 03 00 20 */	lwz r0, 0x20(r3)
/* 8000AD98 00007BB8  90 03 00 28 */	stw r0, 0x28(r3)
/* 8000AD9C 00007BBC  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 8000ADA0 00007BC0  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 8000ADA4 00007BC4  80 03 00 28 */	lwz r0, 0x28(r3)
/* 8000ADA8 00007BC8  7C A4 20 38 */	and r4, r5, r4
/* 8000ADAC 00007BCC  7C 04 00 50 */	subf r0, r4, r0
/* 8000ADB0 00007BD0  90 03 00 28 */	stw r0, 0x28(r3)
/* 8000ADB4 00007BD4  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8000ADB8 00007BD8  90 03 00 34 */	stw r0, 0x34(r3)
/* 8000ADBC 00007BDC  4E 80 00 20 */	blr
