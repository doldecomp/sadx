.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global log10
log10:
/* 80014204 00011024  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80014208 00011028  7C 08 02 A6 */	mflr r0
/* 8001420C 0001102C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80014210 00011030  4B FF D4 95 */	bl __ieee754_log10
/* 80014214 00011034  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80014218 00011038  7C 08 03 A6 */	mtlr r0
/* 8001421C 0001103C  38 21 00 10 */	addi r1, r1, 0x10
/* 80014220 00011040  4E 80 00 20 */	blr