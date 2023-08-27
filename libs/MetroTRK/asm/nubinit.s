.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global TRKNubWelcome
TRKNubWelcome:
/* 80014800 00011620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80014804 00011624  7C 08 02 A6 */	mflr r0
/* 80014808 00011628  3C 60 80 07 */	lis r3, lbl_80076AB8@ha
/* 8001480C 0001162C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80014810 00011630  38 63 6A B8 */	addi r3, r3, lbl_80076AB8@l
/* 80014814 00011634  48 00 63 A5 */	bl TRK_board_display
/* 80014818 00011638  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001481C 0001163C  7C 08 03 A6 */	mtlr r0
/* 80014820 00011640  38 21 00 10 */	addi r1, r1, 0x10
/* 80014824 00011644  4E 80 00 20 */	blr

.global TRKTerminateNub
TRKTerminateNub:
/* 80014828 00011648  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001482C 0001164C  7C 08 02 A6 */	mflr r0
/* 80014830 00011650  90 01 00 14 */	stw r0, 0x14(r1)
/* 80014834 00011654  48 00 0D 55 */	bl TRKTerminateSerialHandler
/* 80014838 00011658  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001483C 0001165C  38 60 00 00 */	li r3, 0x0
/* 80014840 00011660  7C 08 03 A6 */	mtlr r0
/* 80014844 00011664  38 21 00 10 */	addi r1, r1, 0x10
/* 80014848 00011668  4E 80 00 20 */	blr

.global TRKInitializeNub
TRKInitializeNub:
/* 8001484C 0001166C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80014850 00011670  7C 08 02 A6 */	mflr r0
/* 80014854 00011674  38 A0 00 12 */	li r5, 0x12
/* 80014858 00011678  38 80 00 34 */	li r4, 0x34
/* 8001485C 0001167C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80014860 00011680  38 60 00 56 */	li r3, 0x56
/* 80014864 00011684  38 00 00 78 */	li r0, 0x78
/* 80014868 00011688  38 C0 00 01 */	li r6, 0x1
/* 8001486C 0001168C  98 A1 00 08 */	stb r5, 0x8(r1)
/* 80014870 00011690  3C A0 80 08 */	lis r5, gTRKBigEndian@ha
/* 80014874 00011694  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80014878 00011698  3B E0 00 00 */	li r31, 0x0
/* 8001487C 0001169C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80014880 000116A0  98 81 00 09 */	stb r4, 0x9(r1)
/* 80014884 000116A4  98 61 00 0A */	stb r3, 0xa(r1)
/* 80014888 000116A8  98 01 00 0B */	stb r0, 0xb(r1)
/* 8001488C 000116AC  80 61 00 08 */	lwz r3, 0x8(r1)
/* 80014890 000116B0  94 C5 6B 38 */	stwu r6, gTRKBigEndian@l(r5)
/* 80014894 000116B4  3C 03 ED CC */	addis r0, r3, 0xedcc
/* 80014898 000116B8  28 00 56 78 */	cmplwi r0, 0x5678
/* 8001489C 000116BC  40 82 00 0C */	bne lbl_800148A8
/* 800148A0 000116C0  90 C5 00 00 */	stw r6, 0x0(r5)
/* 800148A4 000116C4  48 00 00 1C */	b lbl_800148C0
lbl_800148A8:
/* 800148A8 000116C8  3C 03 87 AA */	addis r0, r3, 0x87aa
/* 800148AC 000116CC  28 00 34 12 */	cmplwi r0, 0x3412
/* 800148B0 000116D0  40 82 00 0C */	bne lbl_800148BC
/* 800148B4 000116D4  93 E5 00 00 */	stw r31, 0x0(r5)
/* 800148B8 000116D8  48 00 00 08 */	b lbl_800148C0
lbl_800148BC:
/* 800148BC 000116DC  7C DF 33 78 */	mr r31, r6
lbl_800148C0:
/* 800148C0 000116E0  2C 1F 00 00 */	cmpwi r31, 0x0
/* 800148C4 000116E4  40 82 00 08 */	bne lbl_800148CC
/* 800148C8 000116E8  48 00 10 8D */	bl usr_put_initialize
lbl_800148CC:
/* 800148CC 000116EC  2C 1F 00 00 */	cmpwi r31, 0x0
/* 800148D0 000116F0  40 82 00 0C */	bne lbl_800148DC
/* 800148D4 000116F4  4B FF FE D5 */	bl TRKInitializeEventQueue
/* 800148D8 000116F8  7C 7F 1B 78 */	mr r31, r3
lbl_800148DC:
/* 800148DC 000116FC  2C 1F 00 00 */	cmpwi r31, 0x0
/* 800148E0 00011700  40 82 00 0C */	bne lbl_800148EC
/* 800148E4 00011704  48 00 0C 31 */	bl TRKInitializeMessageBuffers
/* 800148E8 00011708  7C 7F 1B 78 */	mr r31, r3
lbl_800148EC:
/* 800148EC 0001170C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 800148F0 00011710  40 82 00 0C */	bne lbl_800148FC
/* 800148F4 00011714  48 00 11 71 */	bl TRKInitializeDispatcher
/* 800148F8 00011718  7C 7F 1B 78 */	mr r31, r3
lbl_800148FC:
/* 800148FC 0001171C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 80014900 00011720  40 82 00 44 */	bne lbl_80014944
/* 80014904 00011724  3C 60 80 09 */	lis r3, gTRKInputPendingPtr@ha
/* 80014908 00011728  3C A0 00 01 */	lis r5, 0x1
/* 8001490C 0001172C  38 C3 84 F0 */	addi r6, r3, gTRKInputPendingPtr@l
/* 80014910 00011730  38 80 00 01 */	li r4, 0x1
/* 80014914 00011734  38 65 E1 00 */	addi r3, r5, -0x1f00
/* 80014918 00011738  38 A0 00 00 */	li r5, 0x0
/* 8001491C 0001173C  48 00 65 49 */	bl TRKInitializeIntDrivenUART
/* 80014920 00011740  3C 80 80 09 */	lis r4, gTRKInputPendingPtr@ha
/* 80014924 00011744  7C 60 1B 78 */	mr r0, r3
/* 80014928 00011748  38 64 84 F0 */	addi r3, r4, gTRKInputPendingPtr@l
/* 8001492C 0001174C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 80014930 00011750  7C 1E 03 78 */	mr r30, r0
/* 80014934 00011754  48 00 47 E1 */	bl TRKTargetSetInputPendingPtr
/* 80014938 00011758  2C 1E 00 00 */	cmpwi r30, 0x0
/* 8001493C 0001175C  41 82 00 08 */	beq lbl_80014944
/* 80014940 00011760  7F DF F3 78 */	mr r31, r30
lbl_80014944:
/* 80014944 00011764  2C 1F 00 00 */	cmpwi r31, 0x0
/* 80014948 00011768  40 82 00 0C */	bne lbl_80014954
/* 8001494C 0001176C  48 00 0C 45 */	bl TRKInitializeSerialHandler
/* 80014950 00011770  7C 7F 1B 78 */	mr r31, r3
lbl_80014954:
/* 80014954 00011774  2C 1F 00 00 */	cmpwi r31, 0x0
/* 80014958 00011778  40 82 00 0C */	bne lbl_80014964
/* 8001495C 0001177C  48 00 5D 69 */	bl TRKInitializeTarget
/* 80014960 00011780  7C 7F 1B 78 */	mr r31, r3
lbl_80014964:
/* 80014964 00011784  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80014968 00011788  7F E3 FB 78 */	mr r3, r31
/* 8001496C 0001178C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80014970 00011790  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80014974 00011794  7C 08 03 A6 */	mtlr r0
/* 80014978 00011798  38 21 00 20 */	addi r1, r1, 0x20
/* 8001497C 0001179C  4E 80 00 20 */	blr


.section .rodata, "wa"  # 0x800764E0 - 0x80079C60 ; 0x00003780

.balign 8

.global lbl_80076AB8
lbl_80076AB8:

	# ROM: 0x73AB8
	.asciz "MetroTRK for GAMECUBE v0.10"
	.balign 4


.section .bss, "", @nobits  # 0x80085B20 - 0x800C3E60 ; 0x0003E340

.balign 8

.global gTRKBigEndian
gTRKBigEndian:
	.skip 0x4
