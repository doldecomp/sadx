.include "macros.s"

.section .init, "ax"  # 0x80003100 - 0x800056C0 ; 0x000025C0


.global TRK_memset
TRK_memset:
/* 80003238 00000238  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000323C 0000023C  7C 08 02 A6 */	mflr r0
/* 80003240 00000240  90 01 00 14 */	stw r0, 0x14(r1)
/* 80003244 00000244  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80003248 00000248  7C 7F 1B 78 */	mr r31, r3
/* 8000324C 0000024C  48 01 5A 79 */	bl TRK_fill_mem
/* 80003250 00000250  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80003254 00000254  7F E3 FB 78 */	mr r3, r31
/* 80003258 00000258  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000325C 0000025C  7C 08 03 A6 */	mtlr r0
/* 80003260 00000260  38 21 00 10 */	addi r1, r1, 0x10
/* 80003264 00000264  4E 80 00 20 */	blr

.global TRK_memcpy
TRK_memcpy:
/* 80003268 00000268  38 84 FF FF */	addi r4, r4, -0x1
/* 8000326C 0000026C  38 C3 FF FF */	addi r6, r3, -0x1
/* 80003270 00000270  38 A5 00 01 */	addi r5, r5, 0x1
/* 80003274 00000274  48 00 00 0C */	b lbl_80003280
lbl_80003278:
/* 80003278 00000278  8C 04 00 01 */	lbzu r0, 0x1(r4)
/* 8000327C 0000027C  9C 06 00 01 */	stbu r0, 0x1(r6)
lbl_80003280:
/* 80003280 00000280  34 A5 FF FF */	addic. r5, r5, -0x1
/* 80003284 00000284  40 82 FF F4 */	bne lbl_80003278
/* 80003288 00000288  4E 80 00 20 */	blr
