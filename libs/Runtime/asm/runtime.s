.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global __cvt_fp2unsigned
__cvt_fp2unsigned:
/* 80006CAC 00003ACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80006CB0 00003AD0  3C 80 80 07 */	lis r4, __constants@h
/* 80006CB4 00003AD4  60 84 65 00 */	ori r4, r4, __constants@l
/* 80006CB8 00003AD8  38 60 00 00 */	li r3, 0x0
/* 80006CBC 00003ADC  C8 04 00 00 */	lfd f0, 0x0(r4)
/* 80006CC0 00003AE0  C8 64 00 08 */	lfd f3, 0x8(r4)
/* 80006CC4 00003AE4  C8 84 00 10 */	lfd f4, 0x10(r4)
/* 80006CC8 00003AE8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80006CCC 00003AEC  FF 01 18 00 */	fcmpu cr6, f1, f3
/* 80006CD0 00003AF0  41 80 00 30 */	blt lbl_80006D00
/* 80006CD4 00003AF4  38 63 FF FF */	addi r3, r3, -0x1
/* 80006CD8 00003AF8  40 98 00 28 */	bge cr6, lbl_80006D00
/* 80006CDC 00003AFC  FF 81 20 00 */	fcmpu cr7, f1, f4
/* 80006CE0 00003B00  FC 40 08 90 */	fmr f2, f1
/* 80006CE4 00003B04  41 9C 00 08 */	blt cr7, lbl_80006CEC
/* 80006CE8 00003B08  FC 41 20 28 */	fsub f2, f1, f4
lbl_80006CEC:
/* 80006CEC 00003B0C  FC 40 10 1E */	fctiwz f2, f2
/* 80006CF0 00003B10  D8 41 00 08 */	stfd f2, 0x8(r1)
/* 80006CF4 00003B14  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80006CF8 00003B18  41 9C 00 08 */	blt cr7, lbl_80006D00
/* 80006CFC 00003B1C  3C 63 80 00 */	addis r3, r3, 0x8000
lbl_80006D00:
/* 80006D00 00003B20  38 21 00 10 */	addi r1, r1, 0x10
/* 80006D04 00003B24  4E 80 00 20 */	blr

.global __save_fpr
__save_fpr:
/* 80006D08 00003B28  D9 CB FF 70 */	stfd f14, -0x90(r11)
/* 80006D0C 00003B2C  D9 EB FF 78 */	stfd f15, -0x88(r11)
/* 80006D10 00003B30  DA 0B FF 80 */	stfd f16, -0x80(r11)
/* 80006D14 00003B34  DA 2B FF 88 */	stfd f17, -0x78(r11)
/* 80006D18 00003B38  DA 4B FF 90 */	stfd f18, -0x70(r11)
/* 80006D1C 00003B3C  DA 6B FF 98 */	stfd f19, -0x68(r11)
/* 80006D20 00003B40  DA 8B FF A0 */	stfd f20, -0x60(r11)
/* 80006D24 00003B44  DA AB FF A8 */	stfd f21, -0x58(r11)
/* 80006D28 00003B48  DA CB FF B0 */	stfd f22, -0x50(r11)
/* 80006D2C 00003B4C  DA EB FF B8 */	stfd f23, -0x48(r11)
/* 80006D30 00003B50  DB 0B FF C0 */	stfd f24, -0x40(r11)
.global _savefpr_25
_savefpr_25:
/* 80006D34 00003B54  DB 2B FF C8 */	stfd f25, -0x38(r11)
/* 80006D38 00003B58  DB 4B FF D0 */	stfd f26, -0x30(r11)
/* 80006D3C 00003B5C  DB 6B FF D8 */	stfd f27, -0x28(r11)
/* 80006D40 00003B60  DB 8B FF E0 */	stfd f28, -0x20(r11)
/* 80006D44 00003B64  DB AB FF E8 */	stfd f29, -0x18(r11)
/* 80006D48 00003B68  DB CB FF F0 */	stfd f30, -0x10(r11)
/* 80006D4C 00003B6C  DB EB FF F8 */	stfd f31, -0x8(r11)
/* 80006D50 00003B70  4E 80 00 20 */	blr

.global __restore_fpr
__restore_fpr:
/* 80006D54 00003B74  C9 CB FF 70 */	lfd f14, -0x90(r11)
/* 80006D58 00003B78  C9 EB FF 78 */	lfd f15, -0x88(r11)
/* 80006D5C 00003B7C  CA 0B FF 80 */	lfd f16, -0x80(r11)
/* 80006D60 00003B80  CA 2B FF 88 */	lfd f17, -0x78(r11)
/* 80006D64 00003B84  CA 4B FF 90 */	lfd f18, -0x70(r11)
/* 80006D68 00003B88  CA 6B FF 98 */	lfd f19, -0x68(r11)
/* 80006D6C 00003B8C  CA 8B FF A0 */	lfd f20, -0x60(r11)
/* 80006D70 00003B90  CA AB FF A8 */	lfd f21, -0x58(r11)
/* 80006D74 00003B94  CA CB FF B0 */	lfd f22, -0x50(r11)
/* 80006D78 00003B98  CA EB FF B8 */	lfd f23, -0x48(r11)
/* 80006D7C 00003B9C  CB 0B FF C0 */	lfd f24, -0x40(r11)
.global _restfpr_25
_restfpr_25:
/* 80006D80 00003BA0  CB 2B FF C8 */	lfd f25, -0x38(r11)
/* 80006D84 00003BA4  CB 4B FF D0 */	lfd f26, -0x30(r11)
/* 80006D88 00003BA8  CB 6B FF D8 */	lfd f27, -0x28(r11)
/* 80006D8C 00003BAC  CB 8B FF E0 */	lfd f28, -0x20(r11)
/* 80006D90 00003BB0  CB AB FF E8 */	lfd f29, -0x18(r11)
/* 80006D94 00003BB4  CB CB FF F0 */	lfd f30, -0x10(r11)
/* 80006D98 00003BB8  CB EB FF F8 */	lfd f31, -0x8(r11)
/* 80006D9C 00003BBC  4E 80 00 20 */	blr

.global __save_gpr
__save_gpr:
/* 80006DA0 00003BC0  91 CB FF B8 */	stw r14, -0x48(r11)
/* 80006DA4 00003BC4  91 EB FF BC */	stw r15, -0x44(r11)
/* 80006DA8 00003BC8  92 0B FF C0 */	stw r16, -0x40(r11)
/* 80006DAC 00003BCC  92 2B FF C4 */	stw r17, -0x3c(r11)
/* 80006DB0 00003BD0  92 4B FF C8 */	stw r18, -0x38(r11)
/* 80006DB4 00003BD4  92 6B FF CC */	stw r19, -0x34(r11)
.global _savegpr_20
_savegpr_20:
/* 80006DB8 00003BD8  92 8B FF D0 */	stw r20, -0x30(r11)
/* 80006DBC 00003BDC  92 AB FF D4 */	stw r21, -0x2c(r11)
/* 80006DC0 00003BE0  92 CB FF D8 */	stw r22, -0x28(r11)
.global _savegpr_23
_savegpr_23:
/* 80006DC4 00003BE4  92 EB FF DC */	stw r23, -0x24(r11)
.global _savegpr_24
_savegpr_24:
/* 80006DC8 00003BE8  93 0B FF E0 */	stw r24, -0x20(r11)
.global _savegpr_25
_savegpr_25:
/* 80006DCC 00003BEC  93 2B FF E4 */	stw r25, -0x1c(r11)
.global _savegpr_26
_savegpr_26:
/* 80006DD0 00003BF0  93 4B FF E8 */	stw r26, -0x18(r11)
.global _savegpr_27
_savegpr_27:
/* 80006DD4 00003BF4  93 6B FF EC */	stw r27, -0x14(r11)
/* 80006DD8 00003BF8  93 8B FF F0 */	stw r28, -0x10(r11)
/* 80006DDC 00003BFC  93 AB FF F4 */	stw r29, -0xc(r11)
/* 80006DE0 00003C00  93 CB FF F8 */	stw r30, -0x8(r11)
/* 80006DE4 00003C04  93 EB FF FC */	stw r31, -0x4(r11)
/* 80006DE8 00003C08  4E 80 00 20 */	blr

.global __restore_gpr
__restore_gpr:
/* 80006DEC 00003C0C  81 CB FF B8 */	lwz r14, -0x48(r11)
/* 80006DF0 00003C10  81 EB FF BC */	lwz r15, -0x44(r11)
/* 80006DF4 00003C14  82 0B FF C0 */	lwz r16, -0x40(r11)
/* 80006DF8 00003C18  82 2B FF C4 */	lwz r17, -0x3c(r11)
/* 80006DFC 00003C1C  82 4B FF C8 */	lwz r18, -0x38(r11)
/* 80006E00 00003C20  82 6B FF CC */	lwz r19, -0x34(r11)
.global _restgpr_20
_restgpr_20:
/* 80006E04 00003C24  82 8B FF D0 */	lwz r20, -0x30(r11)
/* 80006E08 00003C28  82 AB FF D4 */	lwz r21, -0x2c(r11)
/* 80006E0C 00003C2C  82 CB FF D8 */	lwz r22, -0x28(r11)
.global _restgpr_23
_restgpr_23:
/* 80006E10 00003C30  82 EB FF DC */	lwz r23, -0x24(r11)
.global _restgpr_24
_restgpr_24:
/* 80006E14 00003C34  83 0B FF E0 */	lwz r24, -0x20(r11)
.global _restgpr_25
_restgpr_25:
/* 80006E18 00003C38  83 2B FF E4 */	lwz r25, -0x1c(r11)
.global _restgpr_26
_restgpr_26:
/* 80006E1C 00003C3C  83 4B FF E8 */	lwz r26, -0x18(r11)
.global _restgpr_27
_restgpr_27:
/* 80006E20 00003C40  83 6B FF EC */	lwz r27, -0x14(r11)
/* 80006E24 00003C44  83 8B FF F0 */	lwz r28, -0x10(r11)
/* 80006E28 00003C48  83 AB FF F4 */	lwz r29, -0xc(r11)
/* 80006E2C 00003C4C  83 CB FF F8 */	lwz r30, -0x8(r11)
/* 80006E30 00003C50  83 EB FF FC */	lwz r31, -0x4(r11)
/* 80006E34 00003C54  4E 80 00 20 */	blr

.global __div2u
__div2u:
/* 80006E38 00003C58  2C 03 00 00 */	cmpwi r3, 0x0
/* 80006E3C 00003C5C  7C 60 00 34 */	cntlzw r0, r3
/* 80006E40 00003C60  7C 89 00 34 */	cntlzw r9, r4
/* 80006E44 00003C64  40 82 00 08 */	bne lbl_80006E4C
/* 80006E48 00003C68  38 09 00 20 */	addi r0, r9, 0x20
lbl_80006E4C:
/* 80006E4C 00003C6C  2C 05 00 00 */	cmpwi r5, 0x0
/* 80006E50 00003C70  7C A9 00 34 */	cntlzw r9, r5
/* 80006E54 00003C74  7C CA 00 34 */	cntlzw r10, r6
/* 80006E58 00003C78  40 82 00 08 */	bne lbl_80006E60
/* 80006E5C 00003C7C  39 2A 00 20 */	addi r9, r10, 0x20
lbl_80006E60:
/* 80006E60 00003C80  7C 00 48 00 */	cmpw r0, r9
/* 80006E64 00003C84  21 40 00 40 */	subfic r10, r0, 0x40
/* 80006E68 00003C88  41 81 00 B0 */	bgt lbl_80006F18
/* 80006E6C 00003C8C  39 29 00 01 */	addi r9, r9, 0x1
/* 80006E70 00003C90  21 29 00 40 */	subfic r9, r9, 0x40
/* 80006E74 00003C94  7C 00 4A 14 */	add r0, r0, r9
/* 80006E78 00003C98  7D 29 50 50 */	subf r9, r9, r10
/* 80006E7C 00003C9C  7D 29 03 A6 */	mtctr r9
/* 80006E80 00003CA0  2C 09 00 20 */	cmpwi r9, 0x20
/* 80006E84 00003CA4  38 E9 FF E0 */	addi r7, r9, -0x20
/* 80006E88 00003CA8  41 80 00 10 */	blt lbl_80006E98
/* 80006E8C 00003CAC  7C 68 3C 30 */	srw r8, r3, r7
/* 80006E90 00003CB0  38 E0 00 00 */	li r7, 0x0
/* 80006E94 00003CB4  48 00 00 18 */	b lbl_80006EAC
lbl_80006E98:
/* 80006E98 00003CB8  7C 88 4C 30 */	srw r8, r4, r9
/* 80006E9C 00003CBC  20 E9 00 20 */	subfic r7, r9, 0x20
/* 80006EA0 00003CC0  7C 67 38 30 */	slw r7, r3, r7
/* 80006EA4 00003CC4  7D 08 3B 78 */	or r8, r8, r7
/* 80006EA8 00003CC8  7C 67 4C 30 */	srw r7, r3, r9
lbl_80006EAC:
/* 80006EAC 00003CCC  2C 00 00 20 */	cmpwi r0, 0x20
/* 80006EB0 00003CD0  31 20 FF E0 */	addic r9, r0, -0x20
/* 80006EB4 00003CD4  41 80 00 10 */	blt lbl_80006EC4
/* 80006EB8 00003CD8  7C 83 48 30 */	slw r3, r4, r9
/* 80006EBC 00003CDC  38 80 00 00 */	li r4, 0x0
/* 80006EC0 00003CE0  48 00 00 18 */	b lbl_80006ED8
lbl_80006EC4:
/* 80006EC4 00003CE4  7C 63 00 30 */	slw r3, r3, r0
/* 80006EC8 00003CE8  21 20 00 20 */	subfic r9, r0, 0x20
/* 80006ECC 00003CEC  7C 89 4C 30 */	srw r9, r4, r9
/* 80006ED0 00003CF0  7C 63 4B 78 */	or r3, r3, r9
/* 80006ED4 00003CF4  7C 84 00 30 */	slw r4, r4, r0
lbl_80006ED8:
/* 80006ED8 00003CF8  39 40 FF FF */	li r10, -0x1
/* 80006EDC 00003CFC  30 E7 00 00 */	addic r7, r7, 0x0
lbl_80006EE0:
/* 80006EE0 00003D00  7C 84 21 14 */	adde r4, r4, r4
/* 80006EE4 00003D04  7C 63 19 14 */	adde r3, r3, r3
/* 80006EE8 00003D08  7D 08 41 14 */	adde r8, r8, r8
/* 80006EEC 00003D0C  7C E7 39 14 */	adde r7, r7, r7
/* 80006EF0 00003D10  7C 06 40 10 */	subfc r0, r6, r8
/* 80006EF4 00003D14  7D 25 39 11 */	subfe. r9, r5, r7
/* 80006EF8 00003D18  41 80 00 10 */	blt lbl_80006F08
/* 80006EFC 00003D1C  7C 08 03 78 */	mr r8, r0
/* 80006F00 00003D20  7D 27 4B 78 */	mr r7, r9
/* 80006F04 00003D24  30 0A 00 01 */	addic r0, r10, 0x1
lbl_80006F08:
/* 80006F08 00003D28  42 00 FF D8 */	bdnz lbl_80006EE0
/* 80006F0C 00003D2C  7C 84 21 14 */	adde r4, r4, r4
/* 80006F10 00003D30  7C 63 19 14 */	adde r3, r3, r3
/* 80006F14 00003D34  4E 80 00 20 */	blr
lbl_80006F18:
/* 80006F18 00003D38  38 80 00 00 */	li r4, 0x0
/* 80006F1C 00003D3C  38 60 00 00 */	li r3, 0x0
/* 80006F20 00003D40  4E 80 00 20 */	blr

.global __div2i
__div2i:
/* 80006F24 00003D44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80006F28 00003D48  54 69 00 01 */	rlwinm. r9, r3, 0, 0, 0
/* 80006F2C 00003D4C  41 82 00 0C */	beq lbl_80006F38
/* 80006F30 00003D50  20 84 00 00 */	subfic r4, r4, 0x0
/* 80006F34 00003D54  7C 63 01 90 */	subfze r3, r3
lbl_80006F38:
/* 80006F38 00003D58  91 21 00 08 */	stw r9, 0x8(r1)
/* 80006F3C 00003D5C  54 AA 00 01 */	rlwinm. r10, r5, 0, 0, 0
/* 80006F40 00003D60  41 82 00 0C */	beq lbl_80006F4C
/* 80006F44 00003D64  20 C6 00 00 */	subfic r6, r6, 0x0
/* 80006F48 00003D68  7C A5 01 90 */	subfze r5, r5
lbl_80006F4C:
/* 80006F4C 00003D6C  91 41 00 0C */	stw r10, 0xc(r1)
/* 80006F50 00003D70  2C 03 00 00 */	cmpwi r3, 0x0
/* 80006F54 00003D74  7C 60 00 34 */	cntlzw r0, r3
/* 80006F58 00003D78  7C 89 00 34 */	cntlzw r9, r4
/* 80006F5C 00003D7C  40 82 00 08 */	bne lbl_80006F64
/* 80006F60 00003D80  38 09 00 20 */	addi r0, r9, 0x20
lbl_80006F64:
/* 80006F64 00003D84  2C 05 00 00 */	cmpwi r5, 0x0
/* 80006F68 00003D88  7C A9 00 34 */	cntlzw r9, r5
/* 80006F6C 00003D8C  7C CA 00 34 */	cntlzw r10, r6
/* 80006F70 00003D90  40 82 00 08 */	bne lbl_80006F78
/* 80006F74 00003D94  39 2A 00 20 */	addi r9, r10, 0x20
lbl_80006F78:
/* 80006F78 00003D98  7C 00 48 00 */	cmpw r0, r9
/* 80006F7C 00003D9C  21 40 00 40 */	subfic r10, r0, 0x40
/* 80006F80 00003DA0  41 81 00 CC */	bgt lbl_8000704C
/* 80006F84 00003DA4  39 29 00 01 */	addi r9, r9, 0x1
/* 80006F88 00003DA8  21 29 00 40 */	subfic r9, r9, 0x40
/* 80006F8C 00003DAC  7C 00 4A 14 */	add r0, r0, r9
/* 80006F90 00003DB0  7D 29 50 50 */	subf r9, r9, r10
/* 80006F94 00003DB4  7D 29 03 A6 */	mtctr r9
/* 80006F98 00003DB8  2C 09 00 20 */	cmpwi r9, 0x20
/* 80006F9C 00003DBC  38 E9 FF E0 */	addi r7, r9, -0x20
/* 80006FA0 00003DC0  41 80 00 10 */	blt lbl_80006FB0
/* 80006FA4 00003DC4  7C 68 3C 30 */	srw r8, r3, r7
/* 80006FA8 00003DC8  38 E0 00 00 */	li r7, 0x0
/* 80006FAC 00003DCC  48 00 00 18 */	b lbl_80006FC4
lbl_80006FB0:
/* 80006FB0 00003DD0  7C 88 4C 30 */	srw r8, r4, r9
/* 80006FB4 00003DD4  20 E9 00 20 */	subfic r7, r9, 0x20
/* 80006FB8 00003DD8  7C 67 38 30 */	slw r7, r3, r7
/* 80006FBC 00003DDC  7D 08 3B 78 */	or r8, r8, r7
/* 80006FC0 00003DE0  7C 67 4C 30 */	srw r7, r3, r9
lbl_80006FC4:
/* 80006FC4 00003DE4  2C 00 00 20 */	cmpwi r0, 0x20
/* 80006FC8 00003DE8  31 20 FF E0 */	addic r9, r0, -0x20
/* 80006FCC 00003DEC  41 80 00 10 */	blt lbl_80006FDC
/* 80006FD0 00003DF0  7C 83 48 30 */	slw r3, r4, r9
/* 80006FD4 00003DF4  38 80 00 00 */	li r4, 0x0
/* 80006FD8 00003DF8  48 00 00 18 */	b lbl_80006FF0
lbl_80006FDC:
/* 80006FDC 00003DFC  7C 63 00 30 */	slw r3, r3, r0
/* 80006FE0 00003E00  21 20 00 20 */	subfic r9, r0, 0x20
/* 80006FE4 00003E04  7C 89 4C 30 */	srw r9, r4, r9
/* 80006FE8 00003E08  7C 63 4B 78 */	or r3, r3, r9
/* 80006FEC 00003E0C  7C 84 00 30 */	slw r4, r4, r0
lbl_80006FF0:
/* 80006FF0 00003E10  39 40 FF FF */	li r10, -0x1
/* 80006FF4 00003E14  30 E7 00 00 */	addic r7, r7, 0x0
lbl_80006FF8:
/* 80006FF8 00003E18  7C 84 21 14 */	adde r4, r4, r4
/* 80006FFC 00003E1C  7C 63 19 14 */	adde r3, r3, r3
/* 80007000 00003E20  7D 08 41 14 */	adde r8, r8, r8
/* 80007004 00003E24  7C E7 39 14 */	adde r7, r7, r7
/* 80007008 00003E28  7C 06 40 10 */	subfc r0, r6, r8
/* 8000700C 00003E2C  7D 25 39 11 */	subfe. r9, r5, r7
/* 80007010 00003E30  41 80 00 10 */	blt lbl_80007020
/* 80007014 00003E34  7C 08 03 78 */	mr r8, r0
/* 80007018 00003E38  7D 27 4B 78 */	mr r7, r9
/* 8000701C 00003E3C  30 0A 00 01 */	addic r0, r10, 0x1
lbl_80007020:
/* 80007020 00003E40  42 00 FF D8 */	bdnz lbl_80006FF8
/* 80007024 00003E44  7C 84 21 14 */	adde r4, r4, r4
/* 80007028 00003E48  7C 63 19 14 */	adde r3, r3, r3
/* 8000702C 00003E4C  81 21 00 08 */	lwz r9, 0x8(r1)
/* 80007030 00003E50  81 41 00 0C */	lwz r10, 0xc(r1)
/* 80007034 00003E54  7D 27 52 79 */	xor. r7, r9, r10
/* 80007038 00003E58  41 82 00 1C */	beq lbl_80007054
/* 8000703C 00003E5C  2C 09 00 00 */	cmpwi r9, 0x0
/* 80007040 00003E60  20 84 00 00 */	subfic r4, r4, 0x0
/* 80007044 00003E64  7C 63 01 90 */	subfze r3, r3
/* 80007048 00003E68  48 00 00 0C */	b lbl_80007054
lbl_8000704C:
/* 8000704C 00003E6C  38 80 00 00 */	li r4, 0x0
/* 80007050 00003E70  38 60 00 00 */	li r3, 0x0
lbl_80007054:
/* 80007054 00003E74  38 21 00 10 */	addi r1, r1, 0x10
/* 80007058 00003E78  4E 80 00 20 */	blr

.global __mod2u
__mod2u:
/* 8000705C 00003E7C  2C 03 00 00 */	cmpwi r3, 0x0
/* 80007060 00003E80  7C 60 00 34 */	cntlzw r0, r3
/* 80007064 00003E84  7C 89 00 34 */	cntlzw r9, r4
/* 80007068 00003E88  40 82 00 08 */	bne lbl_80007070
/* 8000706C 00003E8C  38 09 00 20 */	addi r0, r9, 0x20
lbl_80007070:
/* 80007070 00003E90  2C 05 00 00 */	cmpwi r5, 0x0
/* 80007074 00003E94  7C A9 00 34 */	cntlzw r9, r5
/* 80007078 00003E98  7C CA 00 34 */	cntlzw r10, r6
/* 8000707C 00003E9C  40 82 00 08 */	bne lbl_80007084
/* 80007080 00003EA0  39 2A 00 20 */	addi r9, r10, 0x20
lbl_80007084:
/* 80007084 00003EA4  7C 00 48 00 */	cmpw r0, r9
/* 80007088 00003EA8  21 40 00 40 */	subfic r10, r0, 0x40
/* 8000708C 00003EAC  4D 81 00 20 */	bgtlr
/* 80007090 00003EB0  39 29 00 01 */	addi r9, r9, 0x1
/* 80007094 00003EB4  21 29 00 40 */	subfic r9, r9, 0x40
/* 80007098 00003EB8  7C 00 4A 14 */	add r0, r0, r9
/* 8000709C 00003EBC  7D 29 50 50 */	subf r9, r9, r10
/* 800070A0 00003EC0  7D 29 03 A6 */	mtctr r9
/* 800070A4 00003EC4  2C 09 00 20 */	cmpwi r9, 0x20
/* 800070A8 00003EC8  38 E9 FF E0 */	addi r7, r9, -0x20
/* 800070AC 00003ECC  41 80 00 10 */	blt lbl_800070BC
/* 800070B0 00003ED0  7C 68 3C 30 */	srw r8, r3, r7
/* 800070B4 00003ED4  38 E0 00 00 */	li r7, 0x0
/* 800070B8 00003ED8  48 00 00 18 */	b lbl_800070D0
lbl_800070BC:
/* 800070BC 00003EDC  7C 88 4C 30 */	srw r8, r4, r9
/* 800070C0 00003EE0  20 E9 00 20 */	subfic r7, r9, 0x20
/* 800070C4 00003EE4  7C 67 38 30 */	slw r7, r3, r7
/* 800070C8 00003EE8  7D 08 3B 78 */	or r8, r8, r7
/* 800070CC 00003EEC  7C 67 4C 30 */	srw r7, r3, r9
lbl_800070D0:
/* 800070D0 00003EF0  2C 00 00 20 */	cmpwi r0, 0x20
/* 800070D4 00003EF4  31 20 FF E0 */	addic r9, r0, -0x20
/* 800070D8 00003EF8  41 80 00 10 */	blt lbl_800070E8
/* 800070DC 00003EFC  7C 83 48 30 */	slw r3, r4, r9
/* 800070E0 00003F00  38 80 00 00 */	li r4, 0x0
/* 800070E4 00003F04  48 00 00 18 */	b lbl_800070FC
lbl_800070E8:
/* 800070E8 00003F08  7C 63 00 30 */	slw r3, r3, r0
/* 800070EC 00003F0C  21 20 00 20 */	subfic r9, r0, 0x20
/* 800070F0 00003F10  7C 89 4C 30 */	srw r9, r4, r9
/* 800070F4 00003F14  7C 63 4B 78 */	or r3, r3, r9
/* 800070F8 00003F18  7C 84 00 30 */	slw r4, r4, r0
lbl_800070FC:
/* 800070FC 00003F1C  39 40 FF FF */	li r10, -0x1
/* 80007100 00003F20  30 E7 00 00 */	addic r7, r7, 0x0
lbl_80007104:
/* 80007104 00003F24  7C 84 21 14 */	adde r4, r4, r4
/* 80007108 00003F28  7C 63 19 14 */	adde r3, r3, r3
/* 8000710C 00003F2C  7D 08 41 14 */	adde r8, r8, r8
/* 80007110 00003F30  7C E7 39 14 */	adde r7, r7, r7
/* 80007114 00003F34  7C 06 40 10 */	subfc r0, r6, r8
/* 80007118 00003F38  7D 25 39 11 */	subfe. r9, r5, r7
/* 8000711C 00003F3C  41 80 00 10 */	blt lbl_8000712C
/* 80007120 00003F40  7C 08 03 78 */	mr r8, r0
/* 80007124 00003F44  7D 27 4B 78 */	mr r7, r9
/* 80007128 00003F48  30 0A 00 01 */	addic r0, r10, 0x1
lbl_8000712C:
/* 8000712C 00003F4C  42 00 FF D8 */	bdnz lbl_80007104
/* 80007130 00003F50  7D 04 43 78 */	mr r4, r8
/* 80007134 00003F54  7C E3 3B 78 */	mr r3, r7
/* 80007138 00003F58  4E 80 00 20 */	blr
/* 8000713C 00003F5C  4E 80 00 20 */	blr

.global __shl2i
__shl2i:
/* 80007140 00003F60  21 05 00 20 */	subfic r8, r5, 0x20
/* 80007144 00003F64  31 25 FF E0 */	addic r9, r5, -0x20
/* 80007148 00003F68  7C 63 28 30 */	slw r3, r3, r5
/* 8000714C 00003F6C  7C 8A 44 30 */	srw r10, r4, r8
/* 80007150 00003F70  7C 63 53 78 */	or r3, r3, r10
/* 80007154 00003F74  7C 8A 48 30 */	slw r10, r4, r9
/* 80007158 00003F78  7C 63 53 78 */	or r3, r3, r10
/* 8000715C 00003F7C  7C 84 28 30 */	slw r4, r4, r5
/* 80007160 00003F80  4E 80 00 20 */	blr

.global __shr2u
__shr2u:
/* 80007164 00003F84  21 05 00 20 */	subfic r8, r5, 0x20
/* 80007168 00003F88  31 25 FF E0 */	addic r9, r5, -0x20
/* 8000716C 00003F8C  7C 84 2C 30 */	srw r4, r4, r5
/* 80007170 00003F90  7C 6A 40 30 */	slw r10, r3, r8
/* 80007174 00003F94  7C 84 53 78 */	or r4, r4, r10
/* 80007178 00003F98  7C 6A 4C 30 */	srw r10, r3, r9
/* 8000717C 00003F9C  7C 84 53 78 */	or r4, r4, r10
/* 80007180 00003FA0  7C 63 2C 30 */	srw r3, r3, r5
/* 80007184 00003FA4  4E 80 00 20 */	blr

.global __shr2i
__shr2i:
/* 80007188 00003FA8  21 05 00 20 */	subfic r8, r5, 0x20
/* 8000718C 00003FAC  35 25 FF E0 */	addic. r9, r5, -0x20
/* 80007190 00003FB0  7C 84 2C 30 */	srw r4, r4, r5
/* 80007194 00003FB4  7C 6A 40 30 */	slw r10, r3, r8
/* 80007198 00003FB8  7C 84 53 78 */	or r4, r4, r10
/* 8000719C 00003FBC  7C 6A 4E 30 */	sraw r10, r3, r9
/* 800071A0 00003FC0  40 81 00 08 */	ble lbl_800071A8
/* 800071A4 00003FC4  7C 84 53 78 */	or r4, r4, r10
lbl_800071A8:
/* 800071A8 00003FC8  7C 63 2E 30 */	sraw r3, r3, r5
/* 800071AC 00003FCC  4E 80 00 20 */	blr

/* 800071B0 00003FD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800071B4 00003FD4  54 65 00 01 */	rlwinm. r5, r3, 0, 0, 0
/* 800071B8 00003FD8  41 82 00 0C */	beq lbl_800071C4
/* 800071BC 00003FDC  20 84 00 00 */	subfic r4, r4, 0x0
/* 800071C0 00003FE0  7C 63 01 90 */	subfze r3, r3
lbl_800071C4:
/* 800071C4 00003FE4  7C 67 23 79 */	or. r7, r3, r4
/* 800071C8 00003FE8  38 C0 00 00 */	li r6, 0x0
/* 800071CC 00003FEC  41 82 00 80 */	beq lbl_8000724C
/* 800071D0 00003FF0  7C 67 00 34 */	cntlzw r7, r3
/* 800071D4 00003FF4  7C 88 00 34 */	cntlzw r8, r4
/* 800071D8 00003FF8  54 E9 D0 08 */	rlwinm r9, r7, 26, 0, 4
/* 800071DC 00003FFC  7D 29 FE 70 */	srawi r9, r9, 31
/* 800071E0 00004000  7D 29 40 38 */	and r9, r9, r8
/* 800071E4 00004004  7C E7 4A 14 */	add r7, r7, r9
/* 800071E8 00004008  21 07 00 20 */	subfic r8, r7, 0x20
/* 800071EC 0000400C  31 27 FF E0 */	addic r9, r7, -0x20
/* 800071F0 00004010  7C 63 38 30 */	slw r3, r3, r7
/* 800071F4 00004014  7C 8A 44 30 */	srw r10, r4, r8
/* 800071F8 00004018  7C 63 53 78 */	or r3, r3, r10
/* 800071FC 0000401C  7C 8A 48 30 */	slw r10, r4, r9
/* 80007200 00004020  7C 63 53 78 */	or r3, r3, r10
/* 80007204 00004024  7C 84 38 30 */	slw r4, r4, r7
/* 80007208 00004028  7C C7 30 50 */	subf r6, r7, r6
/* 8000720C 0000402C  54 87 05 7E */	clrlwi r7, r4, 21
/* 80007210 00004030  2C 07 04 00 */	cmpwi r7, 0x400
/* 80007214 00004034  38 C6 04 3E */	addi r6, r6, 0x43e
/* 80007218 00004038  41 80 00 1C */	blt lbl_80007234
/* 8000721C 0000403C  41 81 00 0C */	bgt lbl_80007228
/* 80007220 00004040  54 87 05 29 */	rlwinm. r7, r4, 0, 20, 20
/* 80007224 00004044  41 82 00 10 */	beq lbl_80007234
lbl_80007228:
/* 80007228 00004048  30 84 08 00 */	addic r4, r4, 0x800
/* 8000722C 0000404C  7C 63 01 94 */	addze r3, r3
/* 80007230 00004050  7C C6 01 94 */	addze r6, r6
lbl_80007234:
/* 80007234 00004054  54 84 A8 3E */	rotlwi r4, r4, 21
/* 80007238 00004058  50 64 A8 14 */	rlwimi r4, r3, 21, 0, 10
/* 8000723C 0000405C  54 63 AB 3E */	rlwinm r3, r3, 21, 12, 31
/* 80007240 00004060  54 C6 A0 16 */	slwi r6, r6, 20
/* 80007244 00004064  7C C3 1B 78 */	or r3, r6, r3
/* 80007248 00004068  7C A3 1B 78 */	or r3, r5, r3
lbl_8000724C:
/* 8000724C 0000406C  90 61 00 08 */	stw r3, 0x8(r1)
/* 80007250 00004070  90 81 00 0C */	stw r4, 0xc(r1)
/* 80007254 00004074  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 80007258 00004078  38 21 00 10 */	addi r1, r1, 0x10
/* 8000725C 0000407C  4E 80 00 20 */	blr

.global __cvt_dbl_usll
__cvt_dbl_usll:
/* 80007260 00004080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80007264 00004084  D8 21 00 08 */	stfd f1, 0x8(r1)
/* 80007268 00004088  80 61 00 08 */	lwz r3, 0x8(r1)
/* 8000726C 0000408C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80007270 00004090  54 65 65 7E */	rlwinm r5, r3, 12, 21, 31
/* 80007274 00004094  28 05 03 FF */	cmplwi r5, 0x3ff
/* 80007278 00004098  40 80 00 10 */	bge lbl_80007288
/* 8000727C 0000409C  38 60 00 00 */	li r3, 0x0
/* 80007280 000040A0  38 80 00 00 */	li r4, 0x0
/* 80007284 000040A4  48 00 00 A0 */	b lbl_80007324
lbl_80007288:
/* 80007288 000040A8  7C 66 1B 78 */	mr r6, r3
/* 8000728C 000040AC  54 63 03 3E */	clrlwi r3, r3, 12
/* 80007290 000040B0  64 63 00 10 */	oris r3, r3, 0x10
/* 80007294 000040B4  38 A5 FB CD */	addi r5, r5, -0x433
/* 80007298 000040B8  2C 05 00 00 */	cmpwi r5, 0x0
/* 8000729C 000040BC  40 80 00 2C */	bge lbl_800072C8
/* 800072A0 000040C0  7C A5 00 D0 */	neg r5, r5
/* 800072A4 000040C4  21 05 00 20 */	subfic r8, r5, 0x20
/* 800072A8 000040C8  31 25 FF E0 */	addic r9, r5, -0x20
/* 800072AC 000040CC  7C 84 2C 30 */	srw r4, r4, r5
/* 800072B0 000040D0  7C 6A 40 30 */	slw r10, r3, r8
/* 800072B4 000040D4  7C 84 53 78 */	or r4, r4, r10
/* 800072B8 000040D8  7C 6A 4C 30 */	srw r10, r3, r9
/* 800072BC 000040DC  7C 84 53 78 */	or r4, r4, r10
/* 800072C0 000040E0  7C 63 2C 30 */	srw r3, r3, r5
/* 800072C4 000040E4  48 00 00 50 */	b lbl_80007314
lbl_800072C8:
/* 800072C8 000040E8  2C 05 00 0A */	cmpwi r5, 0xa
/* 800072CC 000040EC  40 A1 00 28 */	bc 5, 1, lbl_800072F4
/* 800072D0 000040F0  54 C6 00 01 */	rlwinm. r6, r6, 0, 0, 0
/* 800072D4 000040F4  41 82 00 10 */	beq lbl_800072E4
/* 800072D8 000040F8  3C 60 80 00 */	lis r3, 0x8000
/* 800072DC 000040FC  38 80 00 00 */	li r4, 0x0
/* 800072E0 00004100  48 00 00 44 */	b lbl_80007324
lbl_800072E4:
/* 800072E4 00004104  3C 60 7F FF */	lis r3, 0x7fff
/* 800072E8 00004108  60 63 FF FF */	ori r3, r3, 0xffff
/* 800072EC 0000410C  38 80 FF FF */	li r4, -0x1
/* 800072F0 00004110  48 00 00 34 */	b lbl_80007324
lbl_800072F4:
/* 800072F4 00004114  21 05 00 20 */	subfic r8, r5, 0x20
/* 800072F8 00004118  31 25 FF E0 */	addic r9, r5, -0x20
/* 800072FC 0000411C  7C 63 28 30 */	slw r3, r3, r5
/* 80007300 00004120  7C 8A 44 30 */	srw r10, r4, r8
/* 80007304 00004124  7C 63 53 78 */	or r3, r3, r10
/* 80007308 00004128  7C 8A 48 30 */	slw r10, r4, r9
/* 8000730C 0000412C  7C 63 53 78 */	or r3, r3, r10
/* 80007310 00004130  7C 84 28 30 */	slw r4, r4, r5
lbl_80007314:
/* 80007314 00004134  54 C6 00 01 */	rlwinm. r6, r6, 0, 0, 0
/* 80007318 00004138  41 82 00 0C */	beq lbl_80007324
/* 8000731C 0000413C  20 84 00 00 */	subfic r4, r4, 0x0
/* 80007320 00004140  7C 63 01 90 */	subfze r3, r3
lbl_80007324:
/* 80007324 00004144  38 21 00 10 */	addi r1, r1, 0x10
/* 80007328 00004148  4E 80 00 20 */	blr


.section .rodata, "wa"  # 0x800764E0 - 0x80079C60 ; 0x00003780

.balign 8

.global __constants
__constants:

	# ROM: 0x73500
	.double 0.0
	.double 4294967296.0
	.double 2147483648.0
