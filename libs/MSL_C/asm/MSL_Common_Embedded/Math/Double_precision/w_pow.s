.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global pow
pow:
/* 80014224 00011044  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80014228 00011048  7C 08 02 A6 */	mflr r0
/* 8001422C 0001104C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80014230 00011050  4B FF D5 85 */	bl __ieee754_pow
/* 80014234 00011054  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80014238 00011058  7C 08 03 A6 */	mtlr r0
/* 8001423C 0001105C  38 21 00 10 */	addi r1, r1, 0x10
/* 80014240 00011060  4E 80 00 20 */	blr