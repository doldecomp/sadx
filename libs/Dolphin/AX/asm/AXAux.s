.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global __AXAuxInit
__AXAuxInit:
/* 8001DDC8 0001ABE8  38 E0 00 00 */	li r7, 0x0
/* 8001DDCC 0001ABEC  38 C0 00 01 */	li r6, 0x1
/* 8001DDD0 0001ABF0  90 ED 83 28 */	stw r7, __AXCallbackAuxA@sda21(r13)
/* 8001DDD4 0001ABF4  38 A0 00 02 */	li r5, 0x2
/* 8001DDD8 0001ABF8  3C 80 80 09 */	lis r4, __AXBufferAuxA@ha
/* 8001DDDC 0001ABFC  90 ED 83 2C */	stw r7, __AXCallbackAuxB@sda21(r13)
/* 8001DDE0 0001AC00  38 00 00 1E */	li r0, 0x1e
/* 8001DDE4 0001AC04  3C 60 80 09 */	lis r3, __AXBufferAuxB@ha
/* 8001DDE8 0001AC08  7C 09 03 A6 */	mtctr r0
/* 8001DDEC 0001AC0C  90 ED 83 30 */	stw r7, __AXContextAuxA@sda21(r13)
/* 8001DDF0 0001AC10  38 84 AD E0 */	addi r4, r4, __AXBufferAuxA@l
/* 8001DDF4 0001AC14  38 03 C4 60 */	addi r0, r3, __AXBufferAuxB@l
/* 8001DDF8 0001AC18  7C 83 23 78 */	mr r3, r4
/* 8001DDFC 0001AC1C  90 ED 83 34 */	stw r7, __AXContextAuxB@sda21(r13)
/* 8001DE00 0001AC20  7C 04 03 78 */	mr r4, r0
/* 8001DE04 0001AC24  90 ED 83 48 */	stw r7, __AXAuxDspWritePosition@sda21(r13)
/* 8001DE08 0001AC28  90 CD 83 4C */	stw r6, __AXAuxDspReadPosition@sda21(r13)
/* 8001DE0C 0001AC2C  90 ED 83 50 */	stw r7, __AXAuxDspWritePositionDpl2@sda21(r13)
/* 8001DE10 0001AC30  90 CD 83 54 */	stw r6, __AXAuxDspReadPositionDpl2@sda21(r13)
/* 8001DE14 0001AC34  90 AD 83 58 */	stw r5, __AXAuxCpuReadWritePosition@sda21(r13)
lbl_8001DE18:
/* 8001DE18 0001AC38  38 00 00 00 */	li r0, 0x0
/* 8001DE1C 0001AC3C  90 03 00 00 */	stw r0, 0x0(r3)
/* 8001DE20 0001AC40  90 04 00 00 */	stw r0, 0x0(r4)
/* 8001DE24 0001AC44  90 03 00 04 */	stw r0, 0x4(r3)
/* 8001DE28 0001AC48  90 04 00 04 */	stw r0, 0x4(r4)
/* 8001DE2C 0001AC4C  90 03 00 08 */	stw r0, 0x8(r3)
/* 8001DE30 0001AC50  90 04 00 08 */	stw r0, 0x8(r4)
/* 8001DE34 0001AC54  90 03 00 0C */	stw r0, 0xc(r3)
/* 8001DE38 0001AC58  90 04 00 0C */	stw r0, 0xc(r4)
/* 8001DE3C 0001AC5C  90 03 00 10 */	stw r0, 0x10(r3)
/* 8001DE40 0001AC60  90 04 00 10 */	stw r0, 0x10(r4)
/* 8001DE44 0001AC64  90 03 00 14 */	stw r0, 0x14(r3)
/* 8001DE48 0001AC68  90 04 00 14 */	stw r0, 0x14(r4)
/* 8001DE4C 0001AC6C  90 03 00 18 */	stw r0, 0x18(r3)
/* 8001DE50 0001AC70  90 04 00 18 */	stw r0, 0x18(r4)
/* 8001DE54 0001AC74  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8001DE58 0001AC78  90 04 00 1C */	stw r0, 0x1c(r4)
/* 8001DE5C 0001AC7C  90 03 00 20 */	stw r0, 0x20(r3)
/* 8001DE60 0001AC80  90 04 00 20 */	stw r0, 0x20(r4)
/* 8001DE64 0001AC84  90 03 00 24 */	stw r0, 0x24(r3)
/* 8001DE68 0001AC88  90 04 00 24 */	stw r0, 0x24(r4)
/* 8001DE6C 0001AC8C  90 03 00 28 */	stw r0, 0x28(r3)
/* 8001DE70 0001AC90  90 04 00 28 */	stw r0, 0x28(r4)
/* 8001DE74 0001AC94  90 03 00 2C */	stw r0, 0x2c(r3)
/* 8001DE78 0001AC98  90 04 00 2C */	stw r0, 0x2c(r4)
/* 8001DE7C 0001AC9C  90 03 00 30 */	stw r0, 0x30(r3)
/* 8001DE80 0001ACA0  90 04 00 30 */	stw r0, 0x30(r4)
/* 8001DE84 0001ACA4  90 03 00 34 */	stw r0, 0x34(r3)
/* 8001DE88 0001ACA8  90 04 00 34 */	stw r0, 0x34(r4)
/* 8001DE8C 0001ACAC  90 03 00 38 */	stw r0, 0x38(r3)
/* 8001DE90 0001ACB0  90 04 00 38 */	stw r0, 0x38(r4)
/* 8001DE94 0001ACB4  90 03 00 3C */	stw r0, 0x3c(r3)
/* 8001DE98 0001ACB8  38 63 00 40 */	addi r3, r3, 0x40
/* 8001DE9C 0001ACBC  90 04 00 3C */	stw r0, 0x3c(r4)
/* 8001DEA0 0001ACC0  38 84 00 40 */	addi r4, r4, 0x40
/* 8001DEA4 0001ACC4  42 00 FF 74 */	bdnz lbl_8001DE18
/* 8001DEA8 0001ACC8  4E 80 00 20 */	blr

.global __AXGetAuxAInput
__AXGetAuxAInput:
/* 8001DEAC 0001ACCC  80 0D 83 28 */	lwz r0, __AXCallbackAuxA@sda21(r13)
/* 8001DEB0 0001ACD0  28 00 00 00 */	cmplwi r0, 0x0
/* 8001DEB4 0001ACD4  41 82 00 20 */	beq lbl_8001DED4
/* 8001DEB8 0001ACD8  80 AD 83 48 */	lwz r5, __AXAuxDspWritePosition@sda21(r13)
/* 8001DEBC 0001ACDC  3C 80 80 09 */	lis r4, __AXBufferAuxA@ha
/* 8001DEC0 0001ACE0  38 04 AD E0 */	addi r0, r4, __AXBufferAuxA@l
/* 8001DEC4 0001ACE4  1C 85 07 80 */	mulli r4, r5, 0x780
/* 8001DEC8 0001ACE8  7C 00 22 14 */	add r0, r0, r4
/* 8001DECC 0001ACEC  90 03 00 00 */	stw r0, 0x0(r3)
/* 8001DED0 0001ACF0  4E 80 00 20 */	blr
lbl_8001DED4:
/* 8001DED4 0001ACF4  38 00 00 00 */	li r0, 0x0
/* 8001DED8 0001ACF8  90 03 00 00 */	stw r0, 0x0(r3)
/* 8001DEDC 0001ACFC  4E 80 00 20 */	blr

.global __AXGetAuxAInputDpl2
__AXGetAuxAInputDpl2:
/* 8001DEE0 0001AD00  80 AD 83 48 */	lwz r5, __AXAuxDspWritePosition@sda21(r13)
/* 8001DEE4 0001AD04  3C 80 80 09 */	lis r4, __AXBufferAuxB@ha
/* 8001DEE8 0001AD08  38 04 C4 60 */	addi r0, r4, __AXBufferAuxB@l
/* 8001DEEC 0001AD0C  1C 85 07 80 */	mulli r4, r5, 0x780
/* 8001DEF0 0001AD10  7C 80 22 14 */	add r4, r0, r4
/* 8001DEF4 0001AD14  38 04 05 00 */	addi r0, r4, 0x500
/* 8001DEF8 0001AD18  90 03 00 00 */	stw r0, 0x0(r3)
/* 8001DEFC 0001AD1C  4E 80 00 20 */	blr

.global __AXGetAuxAOutput
__AXGetAuxAOutput:
/* 8001DF00 0001AD20  80 AD 83 4C */	lwz r5, __AXAuxDspReadPosition@sda21(r13)
/* 8001DF04 0001AD24  3C 80 80 09 */	lis r4, __AXBufferAuxA@ha
/* 8001DF08 0001AD28  38 04 AD E0 */	addi r0, r4, __AXBufferAuxA@l
/* 8001DF0C 0001AD2C  1C 85 07 80 */	mulli r4, r5, 0x780
/* 8001DF10 0001AD30  7C 00 22 14 */	add r0, r0, r4
/* 8001DF14 0001AD34  90 03 00 00 */	stw r0, 0x0(r3)
/* 8001DF18 0001AD38  4E 80 00 20 */	blr

.global __AXGetAuxAOutputDpl2R
__AXGetAuxAOutputDpl2R:
/* 8001DF1C 0001AD3C  80 AD 83 4C */	lwz r5, __AXAuxDspReadPosition@sda21(r13)
/* 8001DF20 0001AD40  3C 80 80 09 */	lis r4, __AXBufferAuxA@ha
/* 8001DF24 0001AD44  38 04 AD E0 */	addi r0, r4, __AXBufferAuxA@l
/* 8001DF28 0001AD48  1C 85 07 80 */	mulli r4, r5, 0x780
/* 8001DF2C 0001AD4C  7C 80 22 14 */	add r4, r0, r4
/* 8001DF30 0001AD50  38 04 02 80 */	addi r0, r4, 0x280
/* 8001DF34 0001AD54  90 03 00 00 */	stw r0, 0x0(r3)
/* 8001DF38 0001AD58  4E 80 00 20 */	blr

.global __AXGetAuxAOutputDpl2Ls
__AXGetAuxAOutputDpl2Ls:
/* 8001DF3C 0001AD5C  80 AD 83 4C */	lwz r5, __AXAuxDspReadPosition@sda21(r13)
/* 8001DF40 0001AD60  3C 80 80 09 */	lis r4, __AXBufferAuxA@ha
/* 8001DF44 0001AD64  38 04 AD E0 */	addi r0, r4, __AXBufferAuxA@l
/* 8001DF48 0001AD68  1C 85 07 80 */	mulli r4, r5, 0x780
/* 8001DF4C 0001AD6C  7C 80 22 14 */	add r4, r0, r4
/* 8001DF50 0001AD70  38 04 05 00 */	addi r0, r4, 0x500
/* 8001DF54 0001AD74  90 03 00 00 */	stw r0, 0x0(r3)
/* 8001DF58 0001AD78  4E 80 00 20 */	blr

.global __AXGetAuxAOutputDpl2Rs
__AXGetAuxAOutputDpl2Rs:
/* 8001DF5C 0001AD7C  80 AD 83 4C */	lwz r5, __AXAuxDspReadPosition@sda21(r13)
/* 8001DF60 0001AD80  3C 80 80 09 */	lis r4, __AXBufferAuxB@ha
/* 8001DF64 0001AD84  38 04 C4 60 */	addi r0, r4, __AXBufferAuxB@l
/* 8001DF68 0001AD88  1C 85 07 80 */	mulli r4, r5, 0x780
/* 8001DF6C 0001AD8C  7C 80 22 14 */	add r4, r0, r4
/* 8001DF70 0001AD90  38 04 05 00 */	addi r0, r4, 0x500
/* 8001DF74 0001AD94  90 03 00 00 */	stw r0, 0x0(r3)
/* 8001DF78 0001AD98  4E 80 00 20 */	blr

.global __AXGetAuxBInput
__AXGetAuxBInput:
/* 8001DF7C 0001AD9C  80 0D 83 2C */	lwz r0, __AXCallbackAuxB@sda21(r13)
/* 8001DF80 0001ADA0  28 00 00 00 */	cmplwi r0, 0x0
/* 8001DF84 0001ADA4  41 82 00 20 */	beq lbl_8001DFA4
/* 8001DF88 0001ADA8  80 AD 83 48 */	lwz r5, __AXAuxDspWritePosition@sda21(r13)
/* 8001DF8C 0001ADAC  3C 80 80 09 */	lis r4, __AXBufferAuxB@ha
/* 8001DF90 0001ADB0  38 04 C4 60 */	addi r0, r4, __AXBufferAuxB@l
/* 8001DF94 0001ADB4  1C 85 07 80 */	mulli r4, r5, 0x780
/* 8001DF98 0001ADB8  7C 00 22 14 */	add r0, r0, r4
/* 8001DF9C 0001ADBC  90 03 00 00 */	stw r0, 0x0(r3)
/* 8001DFA0 0001ADC0  4E 80 00 20 */	blr
lbl_8001DFA4:
/* 8001DFA4 0001ADC4  38 00 00 00 */	li r0, 0x0
/* 8001DFA8 0001ADC8  90 03 00 00 */	stw r0, 0x0(r3)
/* 8001DFAC 0001ADCC  4E 80 00 20 */	blr

.global __AXGetAuxBOutput
__AXGetAuxBOutput:
/* 8001DFB0 0001ADD0  80 AD 83 4C */	lwz r5, __AXAuxDspReadPosition@sda21(r13)
/* 8001DFB4 0001ADD4  3C 80 80 09 */	lis r4, __AXBufferAuxB@ha
/* 8001DFB8 0001ADD8  38 04 C4 60 */	addi r0, r4, __AXBufferAuxB@l
/* 8001DFBC 0001ADDC  1C 85 07 80 */	mulli r4, r5, 0x780
/* 8001DFC0 0001ADE0  7C 00 22 14 */	add r0, r0, r4
/* 8001DFC4 0001ADE4  90 03 00 00 */	stw r0, 0x0(r3)
/* 8001DFC8 0001ADE8  4E 80 00 20 */	blr

.global __AXGetAuxBForDPL2
__AXGetAuxBForDPL2:
/* 8001DFCC 0001ADEC  80 AD 83 50 */	lwz r5, __AXAuxDspWritePositionDpl2@sda21(r13)
/* 8001DFD0 0001ADF0  3C 80 80 09 */	lis r4, __AXBufferAuxB@ha
/* 8001DFD4 0001ADF4  38 04 C4 60 */	addi r0, r4, __AXBufferAuxB@l
/* 8001DFD8 0001ADF8  1C 85 07 80 */	mulli r4, r5, 0x780
/* 8001DFDC 0001ADFC  7C 00 22 14 */	add r0, r0, r4
/* 8001DFE0 0001AE00  90 03 00 00 */	stw r0, 0x0(r3)
/* 8001DFE4 0001AE04  4E 80 00 20 */	blr

.global __AXGetAuxBOutputDPL2
__AXGetAuxBOutputDPL2:
/* 8001DFE8 0001AE08  80 AD 83 54 */	lwz r5, __AXAuxDspReadPositionDpl2@sda21(r13)
/* 8001DFEC 0001AE0C  3C 80 80 09 */	lis r4, __AXBufferAuxB@ha
/* 8001DFF0 0001AE10  38 04 C4 60 */	addi r0, r4, __AXBufferAuxB@l
/* 8001DFF4 0001AE14  1C 85 07 80 */	mulli r4, r5, 0x780
/* 8001DFF8 0001AE18  7C 00 22 14 */	add r0, r0, r4
/* 8001DFFC 0001AE1C  90 03 00 00 */	stw r0, 0x0(r3)
/* 8001E000 0001AE20  4E 80 00 20 */	blr

.global __AXProcessAux
__AXProcessAux:
/* 8001E004 0001AE24  7C 08 02 A6 */	mflr r0
/* 8001E008 0001AE28  3C 80 80 09 */	lis r4, __AXBufferAuxA@ha
/* 8001E00C 0001AE2C  90 01 00 04 */	stw r0, 0x4(r1)
/* 8001E010 0001AE30  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 8001E014 0001AE34  93 E1 00 34 */	stw r31, 0x34(r1)
/* 8001E018 0001AE38  3B E4 AD E0 */	addi r31, r4, __AXBufferAuxA@l
/* 8001E01C 0001AE3C  80 0D 83 48 */	lwz r0, __AXAuxDspWritePosition@sda21(r13)
/* 8001E020 0001AE40  80 6D 83 4C */	lwz r3, __AXAuxDspReadPosition@sda21(r13)
/* 8001E024 0001AE44  1C 80 07 80 */	mulli r4, r0, 0x780
/* 8001E028 0001AE48  80 0D 83 28 */	lwz r0, __AXCallbackAuxA@sda21(r13)
/* 8001E02C 0001AE4C  1C 63 07 80 */	mulli r3, r3, 0x780
/* 8001E030 0001AE50  7C 9F 22 14 */	add r4, r31, r4
/* 8001E034 0001AE54  7C 7F 1A 14 */	add r3, r31, r3
/* 8001E038 0001AE58  90 8D 83 38 */	stw r4, __AXAuxADspWrite@sda21(r13)
/* 8001E03C 0001AE5C  38 84 16 80 */	addi r4, r4, 0x1680
/* 8001E040 0001AE60  90 6D 83 3C */	stw r3, __AXAuxADspRead@sda21(r13)
/* 8001E044 0001AE64  38 63 16 80 */	addi r3, r3, 0x1680
/* 8001E048 0001AE68  28 00 00 00 */	cmplwi r0, 0x0
/* 8001E04C 0001AE6C  90 8D 83 40 */	stw r4, __AXAuxBDspWrite@sda21(r13)
/* 8001E050 0001AE70  90 6D 83 44 */	stw r3, __AXAuxBDspRead@sda21(r13)
/* 8001E054 0001AE74  41 82 00 CC */	beq lbl_8001E120
/* 8001E058 0001AE78  80 0D 83 70 */	lwz r0, __AXClMode@sda21(r13)
/* 8001E05C 0001AE7C  28 00 00 02 */	cmplwi r0, 0x2
/* 8001E060 0001AE80  40 82 00 74 */	bne lbl_8001E0D4
/* 8001E064 0001AE84  80 0D 83 58 */	lwz r0, __AXAuxCpuReadWritePosition@sda21(r13)
/* 8001E068 0001AE88  38 80 07 80 */	li r4, 0x780
/* 8001E06C 0001AE8C  1C 00 07 80 */	mulli r0, r0, 0x780
/* 8001E070 0001AE90  7C BF 02 14 */	add r5, r31, r0
/* 8001E074 0001AE94  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8001E078 0001AE98  38 05 02 80 */	addi r0, r5, 0x280
/* 8001E07C 0001AE9C  38 65 05 00 */	addi r3, r5, 0x500
/* 8001E080 0001AEA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001E084 0001AEA4  38 05 1B 80 */	addi r0, r5, 0x1b80
/* 8001E088 0001AEA8  90 61 00 28 */	stw r3, 0x28(r1)
/* 8001E08C 0001AEAC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8001E090 0001AEB0  80 61 00 20 */	lwz r3, 0x20(r1)
/* 8001E094 0001AEB4  48 01 EA 61 */	bl DCInvalidateRange
/* 8001E098 0001AEB8  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8001E09C 0001AEBC  38 80 02 80 */	li r4, 0x280
/* 8001E0A0 0001AEC0  48 01 EA 55 */	bl DCInvalidateRange
/* 8001E0A4 0001AEC4  81 8D 83 28 */	lwz r12, __AXCallbackAuxA@sda21(r13)
/* 8001E0A8 0001AEC8  38 61 00 20 */	addi r3, r1, 0x20
/* 8001E0AC 0001AECC  80 8D 83 30 */	lwz r4, __AXContextAuxA@sda21(r13)
/* 8001E0B0 0001AED0  7D 88 03 A6 */	mtlr r12
/* 8001E0B4 0001AED4  4E 80 00 21 */	blrl
/* 8001E0B8 0001AED8  80 61 00 20 */	lwz r3, 0x20(r1)
/* 8001E0BC 0001AEDC  38 80 07 80 */	li r4, 0x780
/* 8001E0C0 0001AEE0  48 01 EA C1 */	bl DCFlushRangeNoSync
/* 8001E0C4 0001AEE4  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8001E0C8 0001AEE8  38 80 02 80 */	li r4, 0x280
/* 8001E0CC 0001AEEC  48 01 EA B5 */	bl DCFlushRangeNoSync
/* 8001E0D0 0001AEF0  48 00 00 50 */	b lbl_8001E120
lbl_8001E0D4:
/* 8001E0D4 0001AEF4  80 0D 83 58 */	lwz r0, __AXAuxCpuReadWritePosition@sda21(r13)
/* 8001E0D8 0001AEF8  38 80 07 80 */	li r4, 0x780
/* 8001E0DC 0001AEFC  1C 00 07 80 */	mulli r0, r0, 0x780
/* 8001E0E0 0001AF00  7C BF 02 14 */	add r5, r31, r0
/* 8001E0E4 0001AF04  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8001E0E8 0001AF08  38 65 02 80 */	addi r3, r5, 0x280
/* 8001E0EC 0001AF0C  38 05 05 00 */	addi r0, r5, 0x500
/* 8001E0F0 0001AF10  90 61 00 18 */	stw r3, 0x18(r1)
/* 8001E0F4 0001AF14  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8001E0F8 0001AF18  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8001E0FC 0001AF1C  48 01 E9 F9 */	bl DCInvalidateRange
/* 8001E100 0001AF20  81 8D 83 28 */	lwz r12, __AXCallbackAuxA@sda21(r13)
/* 8001E104 0001AF24  38 61 00 14 */	addi r3, r1, 0x14
/* 8001E108 0001AF28  80 8D 83 30 */	lwz r4, __AXContextAuxA@sda21(r13)
/* 8001E10C 0001AF2C  7D 88 03 A6 */	mtlr r12
/* 8001E110 0001AF30  4E 80 00 21 */	blrl
/* 8001E114 0001AF34  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8001E118 0001AF38  38 80 07 80 */	li r4, 0x780
/* 8001E11C 0001AF3C  48 01 EA 65 */	bl DCFlushRangeNoSync
lbl_8001E120:
/* 8001E120 0001AF40  80 0D 83 2C */	lwz r0, __AXCallbackAuxB@sda21(r13)
/* 8001E124 0001AF44  28 00 00 00 */	cmplwi r0, 0x0
/* 8001E128 0001AF48  41 82 00 60 */	beq lbl_8001E188
/* 8001E12C 0001AF4C  80 0D 83 70 */	lwz r0, __AXClMode@sda21(r13)
/* 8001E130 0001AF50  28 00 00 02 */	cmplwi r0, 0x2
/* 8001E134 0001AF54  41 82 00 54 */	beq lbl_8001E188
/* 8001E138 0001AF58  80 0D 83 58 */	lwz r0, __AXAuxCpuReadWritePosition@sda21(r13)
/* 8001E13C 0001AF5C  38 80 07 80 */	li r4, 0x780
/* 8001E140 0001AF60  1C 00 07 80 */	mulli r0, r0, 0x780
/* 8001E144 0001AF64  7C BF 02 14 */	add r5, r31, r0
/* 8001E148 0001AF68  38 A5 16 80 */	addi r5, r5, 0x1680
/* 8001E14C 0001AF6C  90 A1 00 08 */	stw r5, 0x8(r1)
/* 8001E150 0001AF70  38 65 02 80 */	addi r3, r5, 0x280
/* 8001E154 0001AF74  38 05 05 00 */	addi r0, r5, 0x500
/* 8001E158 0001AF78  90 61 00 0C */	stw r3, 0xc(r1)
/* 8001E15C 0001AF7C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8001E160 0001AF80  80 61 00 08 */	lwz r3, 0x8(r1)
/* 8001E164 0001AF84  48 01 E9 91 */	bl DCInvalidateRange
/* 8001E168 0001AF88  81 8D 83 2C */	lwz r12, __AXCallbackAuxB@sda21(r13)
/* 8001E16C 0001AF8C  38 61 00 08 */	addi r3, r1, 0x8
/* 8001E170 0001AF90  80 8D 83 34 */	lwz r4, __AXContextAuxB@sda21(r13)
/* 8001E174 0001AF94  7D 88 03 A6 */	mtlr r12
/* 8001E178 0001AF98  4E 80 00 21 */	blrl
/* 8001E17C 0001AF9C  80 61 00 08 */	lwz r3, 0x8(r1)
/* 8001E180 0001AFA0  38 80 07 80 */	li r4, 0x780
/* 8001E184 0001AFA4  48 01 E9 FD */	bl DCFlushRangeNoSync
lbl_8001E188:
/* 8001E188 0001AFA8  80 8D 83 48 */	lwz r4, __AXAuxDspWritePosition@sda21(r13)
/* 8001E18C 0001AFAC  3C 60 AA AB */	lis r3, 0xAAAAAAAB@ha
/* 8001E190 0001AFB0  80 AD 83 4C */	lwz r5, __AXAuxDspReadPosition@sda21(r13)
/* 8001E194 0001AFB4  39 03 AA AB */	addi r8, r3, 0xAAAAAAAB@l
/* 8001E198 0001AFB8  80 6D 83 58 */	lwz r3, __AXAuxCpuReadWritePosition@sda21(r13)
/* 8001E19C 0001AFBC  38 04 00 01 */	addi r0, r4, 0x1
/* 8001E1A0 0001AFC0  80 8D 83 50 */	lwz r4, __AXAuxDspWritePositionDpl2@sda21(r13)
/* 8001E1A4 0001AFC4  38 A5 00 01 */	addi r5, r5, 0x1
/* 8001E1A8 0001AFC8  90 0D 83 48 */	stw r0, __AXAuxDspWritePosition@sda21(r13)
/* 8001E1AC 0001AFCC  38 03 00 01 */	addi r0, r3, 0x1
/* 8001E1B0 0001AFD0  80 6D 83 54 */	lwz r3, __AXAuxDspReadPositionDpl2@sda21(r13)
/* 8001E1B4 0001AFD4  90 AD 83 4C */	stw r5, __AXAuxDspReadPosition@sda21(r13)
/* 8001E1B8 0001AFD8  38 A4 00 01 */	addi r5, r4, 0x1
/* 8001E1BC 0001AFDC  81 4D 83 48 */	lwz r10, __AXAuxDspWritePosition@sda21(r13)
/* 8001E1C0 0001AFE0  38 83 00 01 */	addi r4, r3, 0x1
/* 8001E1C4 0001AFE4  90 0D 83 58 */	stw r0, __AXAuxCpuReadWritePosition@sda21(r13)
/* 8001E1C8 0001AFE8  80 ED 83 4C */	lwz r7, __AXAuxDspReadPosition@sda21(r13)
/* 8001E1CC 0001AFEC  7D 28 50 16 */	mulhwu r9, r8, r10
/* 8001E1D0 0001AFF0  80 6D 83 58 */	lwz r3, __AXAuxCpuReadWritePosition@sda21(r13)
/* 8001E1D4 0001AFF4  90 AD 83 50 */	stw r5, __AXAuxDspWritePositionDpl2@sda21(r13)
/* 8001E1D8 0001AFF8  90 8D 83 54 */	stw r4, __AXAuxDspReadPositionDpl2@sda21(r13)
/* 8001E1DC 0001AFFC  7C C8 38 16 */	mulhwu r6, r8, r7
/* 8001E1E0 0001B000  80 AD 83 50 */	lwz r5, __AXAuxDspWritePositionDpl2@sda21(r13)
/* 8001E1E4 0001B004  80 8D 83 54 */	lwz r4, __AXAuxDspReadPositionDpl2@sda21(r13)
/* 8001E1E8 0001B008  7C 08 18 16 */	mulhwu r0, r8, r3
/* 8001E1EC 0001B00C  55 29 F8 7E */	srwi r9, r9, 1
/* 8001E1F0 0001B010  54 C6 F8 7E */	srwi r6, r6, 1
/* 8001E1F4 0001B014  54 00 F8 7E */	srwi r0, r0, 1
/* 8001E1F8 0001B018  1D 09 00 03 */	mulli r8, r9, 0x3
/* 8001E1FC 0001B01C  1C C6 00 03 */	mulli r6, r6, 0x3
/* 8001E200 0001B020  1C 00 00 03 */	mulli r0, r0, 0x3
/* 8001E204 0001B024  7D 08 50 50 */	subf r8, r8, r10
/* 8001E208 0001B028  7C C6 38 50 */	subf r6, r6, r7
/* 8001E20C 0001B02C  91 0D 83 48 */	stw r8, __AXAuxDspWritePosition@sda21(r13)
/* 8001E210 0001B030  54 A5 07 FE */	clrlwi r5, r5, 31
/* 8001E214 0001B034  54 84 07 FE */	clrlwi r4, r4, 31
/* 8001E218 0001B038  90 CD 83 4C */	stw r6, __AXAuxDspReadPosition@sda21(r13)
/* 8001E21C 0001B03C  7C 00 18 50 */	subf r0, r0, r3
/* 8001E220 0001B040  90 AD 83 50 */	stw r5, __AXAuxDspWritePositionDpl2@sda21(r13)
/* 8001E224 0001B044  90 8D 83 54 */	stw r4, __AXAuxDspReadPositionDpl2@sda21(r13)
/* 8001E228 0001B048  90 0D 83 58 */	stw r0, __AXAuxCpuReadWritePosition@sda21(r13)
/* 8001E22C 0001B04C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8001E230 0001B050  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 8001E234 0001B054  38 21 00 38 */	addi r1, r1, 0x38
/* 8001E238 0001B058  7C 08 03 A6 */	mtlr r0
/* 8001E23C 0001B05C  4E 80 00 20 */	blr

.global AXRegisterAuxACallback
AXRegisterAuxACallback:
/* 8001E240 0001B060  90 6D 83 28 */	stw r3, __AXCallbackAuxA@sda21(r13)
/* 8001E244 0001B064  90 8D 83 30 */	stw r4, __AXContextAuxA@sda21(r13)
/* 8001E248 0001B068  4E 80 00 20 */	blr

.global AXRegisterAuxBCallback
AXRegisterAuxBCallback:
/* 8001E24C 0001B06C  90 6D 83 2C */	stw r3, __AXCallbackAuxB@sda21(r13)
/* 8001E250 0001B070  90 8D 83 34 */	stw r4, __AXContextAuxB@sda21(r13)
/* 8001E254 0001B074  4E 80 00 20 */	blr


.section .bss, "", @nobits  # 0x80085B20 - 0x800C3E60 ; 0x0003E340

.balign 16

.global __AXBufferAuxA
__AXBufferAuxA:
	.skip 0x1680

.global __AXBufferAuxB
__AXBufferAuxB:
	.skip 0x1680


.section .sbss, "", @nobits  # 0x800C4080 - 0x800C4680 ; 0x00000600

.balign 8

.global __AXCallbackAuxA
__AXCallbackAuxA:
	.skip 0x4

.global __AXCallbackAuxB
__AXCallbackAuxB:
	.skip 0x4

.global __AXContextAuxA
__AXContextAuxA:
	.skip 0x4

.global __AXContextAuxB
__AXContextAuxB:
	.skip 0x4

.global __AXAuxADspWrite
__AXAuxADspWrite:
	.skip 0x4

.global __AXAuxADspRead
__AXAuxADspRead:
	.skip 0x4

.global __AXAuxBDspWrite
__AXAuxBDspWrite:
	.skip 0x4

.global __AXAuxBDspRead
__AXAuxBDspRead:
	.skip 0x4

.global __AXAuxDspWritePosition
__AXAuxDspWritePosition:
	.skip 0x4

.global __AXAuxDspReadPosition
__AXAuxDspReadPosition:
	.skip 0x4

.global __AXAuxDspWritePositionDpl2
__AXAuxDspWritePositionDpl2:
	.skip 0x4

.global __AXAuxDspReadPositionDpl2
__AXAuxDspReadPositionDpl2:
	.skip 0x4

.global __AXAuxCpuReadWritePosition
__AXAuxCpuReadWritePosition:
	.skip 0x4
