.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global TRKTargetContinue
TRKTargetContinue:
/* 8001AFD8 00017DF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001AFDC 00017DFC  7C 08 02 A6 */	mflr r0
/* 8001AFE0 00017E00  38 60 00 00 */	li r3, 0x0
/* 8001AFE4 00017E04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001AFE8 00017E08  4B FF E3 71 */	bl TRKTargetSetStopped
/* 8001AFEC 00017E0C  4B FF FB F1 */	bl UnreserveEXI2Port
/* 8001AFF0 00017E10  4B FF E0 0D */	bl TRKSwapAndGo
/* 8001AFF4 00017E14  4B FF FC 19 */	bl ReserveEXI2Port
/* 8001AFF8 00017E18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001AFFC 00017E1C  38 60 00 00 */	li r3, 0x0
/* 8001B000 00017E20  7C 08 03 A6 */	mtlr r0
/* 8001B004 00017E24  38 21 00 10 */	addi r1, r1, 0x10
/* 8001B008 00017E28  4E 80 00 20 */	blr
