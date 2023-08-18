.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global srand
srand:
/* 8000DD24 0000AB44  90 6D 80 30 */	stw r3, next@sda21(r13)
/* 8000DD28 0000AB48  4E 80 00 20 */	blr

.global rand
rand:
/* 8000DD2C 0000AB4C  3C 60 41 C6 */	lis r3, 0x41c6
/* 8000DD30 0000AB50  80 8D 80 30 */	lwz r4, next@sda21(r13)
/* 8000DD34 0000AB54  38 03 4E 6D */	addi r0, r3, 0x4e6d
/* 8000DD38 0000AB58  7C 64 01 D6 */	mullw r3, r4, r0
/* 8000DD3C 0000AB5C  38 03 30 39 */	addi r0, r3, 0x3039
/* 8000DD40 0000AB60  90 0D 80 30 */	stw r0, next@sda21(r13)
/* 8000DD44 0000AB64  54 03 84 7E */	rlwinm r3, r0, 16, 17, 31
/* 8000DD48 0000AB68  4E 80 00 20 */	blr


.section .sdata, "wa"  # 0x800C3E60 - 0x800C4080 ; 0x00000220

.balign 8

.global next
next:

	# ROM: 0x82B50
	.4byte 0x00000001
