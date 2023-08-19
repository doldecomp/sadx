.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global TRK_main
TRK_main:
/* 8001AAE8 00017908  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001AAEC 0001790C  7C 08 02 A6 */	mflr r0
/* 8001AAF0 00017910  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001AAF4 00017914  4B FF 9D 59 */	bl TRKInitializeNub
/* 8001AAF8 00017918  3C 80 80 09 */	lis r4, TRK_mainError@ha
/* 8001AAFC 0001791C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8001AB00 00017920  90 64 8A A0 */	stw r3, TRK_mainError@l(r4)
/* 8001AB04 00017924  40 82 00 0C */	bne lbl_8001AB10
/* 8001AB08 00017928  4B FF 9C F9 */	bl TRKNubWelcome
/* 8001AB0C 0001792C  4B FF 99 D5 */	bl TRKNubMainLoop
lbl_8001AB10:
/* 8001AB10 00017930  4B FF 9D 19 */	bl TRKTerminateNub
/* 8001AB14 00017934  3C 80 80 09 */	lis r4, TRK_mainError@ha
/* 8001AB18 00017938  90 64 8A A0 */	stw r3, TRK_mainError@l(r4)
/* 8001AB1C 0001793C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001AB20 00017940  7C 08 03 A6 */	mtlr r0
/* 8001AB24 00017944  38 21 00 10 */	addi r1, r1, 0x10
/* 8001AB28 00017948  4E 80 00 20 */	blr


.section .bss, "", @nobits  # 0x80085B20 - 0x800C3E60 ; 0x0003E340

.balign 8

.global TRK_mainError
TRK_mainError:
	.skip 0x4
