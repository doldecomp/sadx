.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global copysign
copysign:
/* 80013920 00010740  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80013924 00010744  D8 21 00 08 */	stfd f1, 0x8(r1)
/* 80013928 00010748  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 8001392C 0001074C  80 61 00 08 */	lwz r3, 0x8(r1)
/* 80013930 00010750  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80013934 00010754  50 60 00 7E */	rlwimi r0, r3, 0, 1, 31
/* 80013938 00010758  90 01 00 08 */	stw r0, 0x8(r1)
/* 8001393C 0001075C  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 80013940 00010760  38 21 00 20 */	addi r1, r1, 0x20
/* 80013944 00010764  4E 80 00 20 */	blr