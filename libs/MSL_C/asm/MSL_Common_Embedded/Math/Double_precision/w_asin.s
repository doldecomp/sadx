.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global asin
asin:
/* 800141A4 00010FC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800141A8 00010FC8  7C 08 02 A6 */	mflr r0
/* 800141AC 00010FCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800141B0 00010FD0  4B FF CD 85 */	bl __ieee754_asin
/* 800141B4 00010FD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800141B8 00010FD8  7C 08 03 A6 */	mtlr r0
/* 800141BC 00010FDC  38 21 00 10 */	addi r1, r1, 0x10
/* 800141C0 00010FE0  4E 80 00 20 */	blr