.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global acos
acos:
/* 80014184 00010FA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80014188 00010FA8  7C 08 02 A6 */	mflr r0
/* 8001418C 00010FAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80014190 00010FB0  4B FF CA 95 */	bl __ieee754_acos
/* 80014194 00010FB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80014198 00010FB8  7C 08 03 A6 */	mtlr r0
/* 8001419C 00010FBC  38 21 00 10 */	addi r1, r1, 0x10
/* 800141A0 00010FC0  4E 80 00 20 */	blr
