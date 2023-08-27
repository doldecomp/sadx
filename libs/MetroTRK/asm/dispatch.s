.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global TRKDispatchMessage
TRKDispatchMessage:
/* 800159E0 00012800  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800159E4 00012804  7C 08 02 A6 */	mflr r0
/* 800159E8 00012808  38 80 00 00 */	li r4, 0x0
/* 800159EC 0001280C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800159F0 00012810  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800159F4 00012814  3B E0 05 00 */	li r31, 0x500
/* 800159F8 00012818  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800159FC 0001281C  7C 7E 1B 78 */	mr r30, r3
/* 80015A00 00012820  4B FF F9 4D */	bl TRKSetBufferPosition
/* 80015A04 00012824  7F C3 F3 78 */	mr r3, r30
/* 80015A08 00012828  38 81 00 08 */	addi r4, r1, 0x8
/* 80015A0C 0001282C  4B FF F5 41 */	bl TRKReadBuffer1_ui8
/* 80015A10 00012830  3C 60 80 09 */	lis r3, gTRKDispatchTableSize@ha
/* 80015A14 00012834  88 81 00 08 */	lbz r4, 0x8(r1)
/* 80015A18 00012838  80 03 85 08 */	lwz r0, gTRKDispatchTableSize@l(r3)
/* 80015A1C 0001283C  54 83 06 3E */	clrlwi r3, r4, 24
/* 80015A20 00012840  7C 03 00 40 */	cmplw r3, r0
/* 80015A24 00012844  40 80 00 24 */	bge lbl_80015A48
/* 80015A28 00012848  3C 60 80 08 */	lis r3, gTRKDispatchTable@ha
/* 80015A2C 0001284C  54 80 15 BA */	rlwinm r0, r4, 2, 22, 29
/* 80015A30 00012850  38 83 A8 B0 */	addi r4, r3, gTRKDispatchTable@l
/* 80015A34 00012854  7F C3 F3 78 */	mr r3, r30
/* 80015A38 00012858  7D 84 00 2E */	lwzx r12, r4, r0
/* 80015A3C 0001285C  7D 89 03 A6 */	mtctr r12
/* 80015A40 00012860  4E 80 04 21 */	bctrl
/* 80015A44 00012864  7C 7F 1B 78 */	mr r31, r3
lbl_80015A48:
/* 80015A48 00012868  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80015A4C 0001286C  7F E3 FB 78 */	mr r3, r31
/* 80015A50 00012870  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80015A54 00012874  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80015A58 00012878  7C 08 03 A6 */	mtlr r0
/* 80015A5C 0001287C  38 21 00 20 */	addi r1, r1, 0x20
/* 80015A60 00012880  4E 80 00 20 */	blr

.global TRKInitializeDispatcher
TRKInitializeDispatcher:
/* 80015A64 00012884  3C 60 80 09 */	lis r3, gTRKDispatchTableSize@ha
/* 80015A68 00012888  38 00 00 20 */	li r0, 0x20
/* 80015A6C 0001288C  38 83 85 08 */	addi r4, r3, gTRKDispatchTableSize@l
/* 80015A70 00012890  38 60 00 00 */	li r3, 0x0
/* 80015A74 00012894  90 04 00 00 */	stw r0, 0x0(r4)
/* 80015A78 00012898  4E 80 00 20 */	blr


.section .data, "wa"  # 0x80079C60 - 0x80085B20 ; 0x0000BEC0

.balign 8

.global gTRKDispatchTable
gTRKDispatchTable:

	# ROM: 0x778B0
	.4byte TRKDoUnsupported
	.4byte TRKDoConnect
	.4byte TRKDoDisconnect
	.4byte TRKDoReset
	.4byte TRKDoVersions
	.4byte TRKDoSupportMask
	.4byte TRKDoCPUType
	.4byte TRKDoUnsupported
	.4byte TRKDoUnsupported
	.4byte TRKDoUnsupported
	.4byte TRKDoUnsupported
	.4byte TRKDoUnsupported
	.4byte TRKDoUnsupported
	.4byte TRKDoUnsupported
	.4byte TRKDoUnsupported
	.4byte TRKDoUnsupported
	.4byte TRKDoReadMemory
	.4byte TRKDoWriteMemory
	.4byte TRKDoReadRegisters
	.4byte TRKDoWriteRegisters
	.4byte TRKDoUnsupported
	.4byte TRKDoUnsupported
	.4byte TRKDoFlushCache
	.4byte TRKDoSetOption
	.4byte TRKDoContinue
	.4byte TRKDoStep
	.4byte TRKDoStop
	.4byte TRKDoUnsupported
	.4byte TRKDoUnsupported
	.4byte TRKDoUnsupported
	.4byte TRKDoUnsupported
	.4byte TRKDoUnsupported
	.4byte 0


.section .bss, "", @nobits  # 0x80085B20 - 0x800C3E60 ; 0x0003E340

.balign 8

.global gTRKDispatchTableSize
gTRKDispatchTableSize:
	.skip 0x4
