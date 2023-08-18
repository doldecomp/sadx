.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global raise
raise:
/* 8000ED94 0000BBB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000ED98 0000BBB8  7C 08 02 A6 */	mflr r0
/* 8000ED9C 0000BBBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000EDA0 0000BBC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000EDA4 0000BBC4  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8000EDA8 0000BBC8  7C 7E 1B 78 */	mr r30, r3
/* 8000EDAC 0000BBCC  2C 1E 00 01 */	cmpwi r30, 0x1
/* 8000EDB0 0000BBD0  41 80 00 0C */	blt lbl_8000EDBC
/* 8000EDB4 0000BBD4  2C 1E 00 06 */	cmpwi r30, 0x6
/* 8000EDB8 0000BBD8  40 81 00 0C */	ble lbl_8000EDC4
lbl_8000EDBC:
/* 8000EDBC 0000BBDC  38 60 FF FF */	li r3, -0x1
/* 8000EDC0 0000BBE0  48 00 00 6C */	b lbl_8000EE2C
lbl_8000EDC4:
/* 8000EDC4 0000BBE4  3C 60 80 08 */	lis r3, signal_funcs@ha
/* 8000EDC8 0000BBE8  57 C0 10 3A */	slwi r0, r30, 2
/* 8000EDCC 0000BBEC  38 63 6A F8 */	addi r3, r3, signal_funcs@l
/* 8000EDD0 0000BBF0  7C 63 02 14 */	add r3, r3, r0
/* 8000EDD4 0000BBF4  87 E3 FF FC */	lwzu r31, -0x4(r3)
/* 8000EDD8 0000BBF8  28 1F 00 01 */	cmplwi r31, 0x1
/* 8000EDDC 0000BBFC  41 82 00 0C */	beq lbl_8000EDE8
/* 8000EDE0 0000BC00  38 00 00 00 */	li r0, 0x0
/* 8000EDE4 0000BC04  90 03 00 00 */	stw r0, 0x0(r3)
lbl_8000EDE8:
/* 8000EDE8 0000BC08  28 1F 00 01 */	cmplwi r31, 0x1
/* 8000EDEC 0000BC0C  41 82 00 14 */	beq lbl_8000EE00
/* 8000EDF0 0000BC10  28 1F 00 00 */	cmplwi r31, 0x0
/* 8000EDF4 0000BC14  40 82 00 14 */	bne lbl_8000EE08
/* 8000EDF8 0000BC18  2C 1E 00 01 */	cmpwi r30, 0x1
/* 8000EDFC 0000BC1C  40 82 00 0C */	bne lbl_8000EE08
lbl_8000EE00:
/* 8000EE00 0000BC20  38 60 00 00 */	li r3, 0x0
/* 8000EE04 0000BC24  48 00 00 28 */	b lbl_8000EE2C
lbl_8000EE08:
/* 8000EE08 0000BC28  28 1F 00 00 */	cmplwi r31, 0x0
/* 8000EE0C 0000BC2C  40 82 00 0C */	bne lbl_8000EE18
/* 8000EE10 0000BC30  38 60 00 00 */	li r3, 0x0
/* 8000EE14 0000BC34  4B FF 9A 85 */	bl exit
lbl_8000EE18:
/* 8000EE18 0000BC38  7F EC FB 78 */	mr r12, r31
/* 8000EE1C 0000BC3C  7F C3 F3 78 */	mr r3, r30
/* 8000EE20 0000BC40  7D 89 03 A6 */	mtctr r12
/* 8000EE24 0000BC44  4E 80 04 21 */	bctrl
/* 8000EE28 0000BC48  38 60 00 00 */	li r3, 0x0
lbl_8000EE2C:
/* 8000EE2C 0000BC4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000EE30 0000BC50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000EE34 0000BC54  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8000EE38 0000BC58  7C 08 03 A6 */	mtlr r0
/* 8000EE3C 0000BC5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8000EE40 0000BC60  4E 80 00 20 */	blr


.section .bss, "", @nobits  # 0x80085B20 - 0x800C3E60 ; 0x0003E340

.balign 8

.global signal_funcs
signal_funcs:
	.skip 0x18