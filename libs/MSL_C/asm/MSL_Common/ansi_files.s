.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global __flush_all
__flush_all:
/* 80008F54 00005D74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80008F58 00005D78  7C 08 02 A6 */	mflr r0
/* 80008F5C 00005D7C  3C 60 80 08 */	lis r3, __files@ha
/* 80008F60 00005D80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80008F64 00005D84  38 03 9F 48 */	addi r0, r3, __files@l
/* 80008F68 00005D88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80008F6C 00005D8C  3B E0 00 00 */	li r31, 0x0
/* 80008F70 00005D90  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80008F74 00005D94  7C 1E 03 78 */	mr r30, r0
/* 80008F78 00005D98  48 00 00 28 */	b lbl_80008FA0
lbl_80008F7C:
/* 80008F7C 00005D9C  A0 1E 00 04 */	lhz r0, 0x4(r30)
/* 80008F80 00005DA0  54 00 D7 7F */	rlwinm. r0, r0, 26, 29, 31
/* 80008F84 00005DA4  41 82 00 18 */	beq lbl_80008F9C
/* 80008F88 00005DA8  7F C3 F3 78 */	mr r3, r30
/* 80008F8C 00005DAC  48 00 21 A9 */	bl fflush
/* 80008F90 00005DB0  2C 03 00 00 */	cmpwi r3, 0x0
/* 80008F94 00005DB4  41 82 00 08 */	beq lbl_80008F9C
/* 80008F98 00005DB8  3B E0 FF FF */	li r31, -0x1
lbl_80008F9C:
/* 80008F9C 00005DBC  83 DE 00 4C */	lwz r30, 0x4c(r30)
lbl_80008FA0:
/* 80008FA0 00005DC0  28 1E 00 00 */	cmplwi r30, 0x0
/* 80008FA4 00005DC4  40 82 FF D8 */	bne lbl_80008F7C
/* 80008FA8 00005DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80008FAC 00005DCC  7F E3 FB 78 */	mr r3, r31
/* 80008FB0 00005DD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80008FB4 00005DD4  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 80008FB8 00005DD8  7C 08 03 A6 */	mtlr r0
/* 80008FBC 00005DDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80008FC0 00005DE0  4E 80 00 20 */	blr

.global __close_all
__close_all:
/* 80008FC4 00005DE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80008FC8 00005DE8  7C 08 02 A6 */	mflr r0
/* 80008FCC 00005DEC  3C 60 80 08 */	lis r3, __files@ha
/* 80008FD0 00005DF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80008FD4 00005DF4  38 03 9F 48 */	addi r0, r3, __files@l
/* 80008FD8 00005DF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80008FDC 00005DFC  7C 1F 03 78 */	mr r31, r0
/* 80008FE0 00005E00  48 00 00 60 */	b lbl_80009040
lbl_80008FE4:
/* 80008FE4 00005E04  A0 1F 00 04 */	lhz r0, 0x4(r31)
/* 80008FE8 00005E08  54 00 D7 7F */	rlwinm. r0, r0, 26, 29, 31
/* 80008FEC 00005E0C  41 82 00 0C */	beq lbl_80008FF8
/* 80008FF0 00005E10  7F E3 FB 78 */	mr r3, r31
/* 80008FF4 00005E14  48 00 22 79 */	bl fclose
lbl_80008FF8:
/* 80008FF8 00005E18  7F E3 FB 78 */	mr r3, r31
/* 80008FFC 00005E1C  83 FF 00 4C */	lwz r31, 0x4c(r31)
/* 80009000 00005E20  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80009004 00005E24  28 00 00 00 */	cmplwi r0, 0x0
/* 80009008 00005E28  41 82 00 0C */	beq lbl_80009014
/* 8000900C 00005E2C  4B FF F9 E1 */	bl free
/* 80009010 00005E30  48 00 00 30 */	b lbl_80009040
lbl_80009014:
/* 80009014 00005E34  A0 03 00 04 */	lhz r0, 0x4(r3)
/* 80009018 00005E38  38 80 00 03 */	li r4, 0x3
/* 8000901C 00005E3C  50 80 35 F2 */	rlwimi r0, r4, 6, 23, 25
/* 80009020 00005E40  28 1F 00 00 */	cmplwi r31, 0x0
/* 80009024 00005E44  B0 03 00 04 */	sth r0, 0x4(r3)
/* 80009028 00005E48  41 82 00 18 */	beq lbl_80009040
/* 8000902C 00005E4C  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 80009030 00005E50  28 00 00 00 */	cmplwi r0, 0x0
/* 80009034 00005E54  41 82 00 0C */	beq lbl_80009040
/* 80009038 00005E58  38 00 00 00 */	li r0, 0x0
/* 8000903C 00005E5C  90 03 00 4C */	stw r0, 0x4c(r3)
lbl_80009040:
/* 80009040 00005E60  28 1F 00 00 */	cmplwi r31, 0x0
/* 80009044 00005E64  40 82 FF A0 */	bne lbl_80008FE4
/* 80009048 00005E68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000904C 00005E6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80009050 00005E70  7C 08 03 A6 */	mtlr r0
/* 80009054 00005E74  38 21 00 10 */	addi r1, r1, 0x10
/* 80009058 00005E78  4E 80 00 20 */	blr


.section .data, "wa"  # 0x80079C60 - 0x80085B20 ; 0x0000BEC0

.balign 8

.global __files
__files:

	# ROM: 0x76F48
	.4byte 0
	.4byte 0x0A800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte stdin_buff
	.4byte 0x00000100
	.4byte stdin_buff
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte __read_console
	.4byte lbl_80010AD8
	.4byte lbl_80010AD0
	.4byte 0
	.4byte lbl_80079F98
lbl_80079F98:
	.4byte 0x00000001
	.4byte 0x12800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte stdout_buff
	.4byte 0x00000100
	.4byte stdout_buff
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte __read_console
	.4byte lbl_80010AD8
	.4byte lbl_80010AD0
	.4byte 0
	.4byte lbl_80079FE8
lbl_80079FE8:
	.4byte 0x00000002
	.4byte 0x10800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte stderr_buff
	.4byte 0x00000100
	.4byte stderr_buff
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte __read_console
	.4byte lbl_80010AD8
	.4byte lbl_80010AD0
	.4byte 0
	.4byte lbl_8007A038
lbl_8007A038:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.section .bss, "", @nobits  # 0x80085B20 - 0x800C3E60 ; 0x0003E340

.balign 8

.global stderr_buff
stderr_buff:
	.skip 0x100

.global stdout_buff
stdout_buff:
	.skip 0x100

.global stdin_buff
stdin_buff:
	.skip 0x100
