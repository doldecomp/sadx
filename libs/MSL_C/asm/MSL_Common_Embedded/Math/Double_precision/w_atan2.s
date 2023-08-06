.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global atan2
atan2:
/* 800141C4 00010FE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800141C8 00010FE8  7C 08 02 A6 */	mflr r0
/* 800141CC 00010FEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800141D0 00010FF0  4B FF CF C9 */	bl __ieee754_atan2
/* 800141D4 00010FF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800141D8 00010FF8  7C 08 03 A6 */	mtlr r0
/* 800141DC 00010FFC  38 21 00 10 */	addi r1, r1, 0x10
/* 800141E0 00011000  4E 80 00 20 */	blr
