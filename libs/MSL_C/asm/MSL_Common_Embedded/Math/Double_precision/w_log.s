.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global log
log:
/* 800141E4 00011004  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800141E8 00011008  7C 08 02 A6 */	mflr r0
/* 800141EC 0001100C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800141F0 00011010  4B FF D2 39 */	bl __ieee754_log
/* 800141F4 00011014  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800141F8 00011018  7C 08 03 A6 */	mtlr r0
/* 800141FC 0001101C  38 21 00 10 */	addi r1, r1, 0x10
/* 80014200 00011020  4E 80 00 20 */	blr