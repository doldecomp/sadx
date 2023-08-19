.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global TRKNubMainLoop
TRKNubMainLoop:
/* 800144E0 00011300  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800144E4 00011304  7C 08 02 A6 */	mflr r0
/* 800144E8 00011308  90 01 00 24 */	stw r0, 0x24(r1)
/* 800144EC 0001130C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800144F0 00011310  3B E0 00 00 */	li r31, 0x0
/* 800144F4 00011314  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800144F8 00011318  3B C0 00 00 */	li r30, 0x0
/* 800144FC 0001131C  48 00 00 BC */	b lbl_800145B8
lbl_80014500:
/* 80014500 00011320  38 61 00 08 */	addi r3, r1, 0x8
/* 80014504 00011324  48 00 01 F1 */	bl TRKGetNextEvent
/* 80014508 00011328  2C 03 00 00 */	cmpwi r3, 0x0
/* 8001450C 0001132C  41 82 00 6C */	beq lbl_80014578
/* 80014510 00011330  88 01 00 08 */	lbz r0, 0x8(r1)
/* 80014514 00011334  3B C0 00 00 */	li r30, 0x0
/* 80014518 00011338  2C 00 00 02 */	cmpwi r0, 0x2
/* 8001451C 0001133C  41 82 00 28 */	beq lbl_80014544
/* 80014520 00011340  40 80 00 14 */	bge lbl_80014534
/* 80014524 00011344  2C 00 00 00 */	cmpwi r0, 0x0
/* 80014528 00011348  41 82 00 44 */	beq lbl_8001456C
/* 8001452C 0001134C  40 80 00 28 */	bge lbl_80014554
/* 80014530 00011350  48 00 00 3C */	b lbl_8001456C
lbl_80014534:
/* 80014534 00011354  2C 00 00 05 */	cmpwi r0, 0x5
/* 80014538 00011358  41 82 00 30 */	beq lbl_80014568
/* 8001453C 0001135C  40 80 00 30 */	bge lbl_8001456C
/* 80014540 00011360  48 00 00 1C */	b lbl_8001455C
lbl_80014544:
/* 80014544 00011364  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80014548 00011368  48 00 0E D9 */	bl TRKGetBuffer
/* 8001454C 0001136C  48 00 14 95 */	bl TRKDispatchMessage
/* 80014550 00011370  48 00 00 1C */	b lbl_8001456C
lbl_80014554:
/* 80014554 00011374  3B E0 00 01 */	li r31, 0x1
/* 80014558 00011378  48 00 00 14 */	b lbl_8001456C
lbl_8001455C:
/* 8001455C 0001137C  38 61 00 08 */	addi r3, r1, 0x8
/* 80014560 00011380  48 00 53 25 */	bl TRKTargetInterrupt
/* 80014564 00011384  48 00 00 08 */	b lbl_8001456C
lbl_80014568:
/* 80014568 00011388  48 00 4E 4D */	bl TRKTargetSupportRequest
lbl_8001456C:
/* 8001456C 0001138C  38 61 00 08 */	addi r3, r1, 0x8
/* 80014570 00011390  48 00 00 69 */	bl TRKDestructEvent
/* 80014574 00011394  48 00 00 44 */	b lbl_800145B8
lbl_80014578:
/* 80014578 00011398  2C 1E 00 00 */	cmpwi r30, 0x0
/* 8001457C 0001139C  41 82 00 1C */	beq lbl_80014598
/* 80014580 000113A0  3C 60 80 09 */	lis r3, gTRKInputPendingPtr@ha
/* 80014584 000113A4  38 63 84 F0 */	addi r3, r3, gTRKInputPendingPtr@l
/* 80014588 000113A8  80 63 00 00 */	lwz r3, 0x0(r3)
/* 8001458C 000113AC  88 03 00 00 */	lbz r0, 0x0(r3)
/* 80014590 000113B0  28 00 00 00 */	cmplwi r0, 0x0
/* 80014594 000113B4  41 82 00 10 */	beq lbl_800145A4
lbl_80014598:
/* 80014598 000113B8  3B C0 00 01 */	li r30, 0x1
/* 8001459C 000113BC  48 00 10 69 */	bl TRKGetInput
/* 800145A0 000113C0  48 00 00 18 */	b lbl_800145B8
lbl_800145A4:
/* 800145A4 000113C4  48 00 4D C5 */	bl TRKTargetStopped
/* 800145A8 000113C8  2C 03 00 00 */	cmpwi r3, 0x0
/* 800145AC 000113CC  40 82 00 08 */	bne lbl_800145B4
/* 800145B0 000113D0  48 00 6A 29 */	bl TRKTargetContinue
lbl_800145B4:
/* 800145B4 000113D4  3B C0 00 00 */	li r30, 0x0
lbl_800145B8:
/* 800145B8 000113D8  2C 1F 00 00 */	cmpwi r31, 0x0
/* 800145BC 000113DC  41 82 FF 44 */	beq lbl_80014500
/* 800145C0 000113E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800145C4 000113E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800145C8 000113E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800145CC 000113EC  7C 08 03 A6 */	mtlr r0
/* 800145D0 000113F0  38 21 00 20 */	addi r1, r1, 0x20
/* 800145D4 000113F4  4E 80 00 20 */	blr