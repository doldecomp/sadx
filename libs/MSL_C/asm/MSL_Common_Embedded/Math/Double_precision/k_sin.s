.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global __kernel_sin
__kernel_sin:
/* 80013328 00010148  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001332C 0001014C  3C 00 3E 40 */	lis r0, 0x3e40
/* 80013330 00010150  D8 21 00 08 */	stfd f1, 0x8(r1)
/* 80013334 00010154  80 81 00 08 */	lwz r4, 0x8(r1)
/* 80013338 00010158  54 84 00 7E */	clrlwi r4, r4, 1
/* 8001333C 0001015C  7C 04 00 00 */	cmpw r4, r0
/* 80013340 00010160  40 80 00 1C */	bge lbl_8001335C
/* 80013344 00010164  FC 00 08 1E */	fctiwz f0, f1
/* 80013348 00010168  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8001334C 0001016C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80013350 00010170  2C 00 00 00 */	cmpwi r0, 0x0
/* 80013354 00010174  40 82 00 08 */	bne lbl_8001335C
/* 80013358 00010178  48 00 00 68 */	b lbl_800133C0
lbl_8001335C:
/* 8001335C 0001017C  C8 C1 00 08 */	lfd f6, 0x8(r1)
/* 80013360 00010180  2C 03 00 00 */	cmpwi r3, 0x0
/* 80013364 00010184  C8 A2 84 B8 */	lfd f5, lbl_800C4B38@sda21(r2)
/* 80013368 00010188  FC E6 01 B2 */	fmul f7, f6, f6
/* 8001336C 0001018C  C8 82 84 B0 */	lfd f4, lbl_800C4B30@sda21(r2)
/* 80013370 00010190  C8 62 84 A8 */	lfd f3, lbl_800C4B28@sda21(r2)
/* 80013374 00010194  C8 22 84 A0 */	lfd f1, lbl_800C4B20@sda21(r2)
/* 80013378 00010198  C8 02 84 98 */	lfd f0, lbl_800C4B18@sda21(r2)
/* 8001337C 0001019C  FC 85 21 FA */	fmadd f4, f5, f7, f4
/* 80013380 000101A0  FC A7 01 B2 */	fmul f5, f7, f6
/* 80013384 000101A4  FC 67 19 3A */	fmadd f3, f7, f4, f3
/* 80013388 000101A8  FC 27 08 FA */	fmadd f1, f7, f3, f1
/* 8001338C 000101AC  FC 27 00 7A */	fmadd f1, f7, f1, f0
/* 80013390 000101B0  40 82 00 14 */	bne lbl_800133A4
/* 80013394 000101B4  C8 02 84 C0 */	lfd f0, lbl_800C4B40@sda21(r2)
/* 80013398 000101B8  FC 07 00 7A */	fmadd f0, f7, f1, f0
/* 8001339C 000101BC  FC 25 30 3A */	fmadd f1, f5, f0, f6
/* 800133A0 000101C0  48 00 00 20 */	b lbl_800133C0
lbl_800133A4:
/* 800133A4 000101C4  FC 05 00 72 */	fmul f0, f5, f1
/* 800133A8 000101C8  C8 22 84 C8 */	lfd f1, lbl_800C4B48@sda21(r2)
/* 800133AC 000101CC  C8 62 84 C0 */	lfd f3, lbl_800C4B40@sda21(r2)
/* 800133B0 000101D0  FC 01 00 B8 */	fmsub f0, f1, f2, f0
/* 800133B4 000101D4  FC 07 10 38 */	fmsub f0, f7, f0, f2
/* 800133B8 000101D8  FC 03 01 7C */	fnmsub f0, f3, f5, f0
/* 800133BC 000101DC  FC 26 00 28 */	fsub f1, f6, f0
lbl_800133C0:
/* 800133C0 000101E0  38 21 00 20 */	addi r1, r1, 0x20
/* 800133C4 000101E4  4E 80 00 20 */	blr


.section .sdata2, "wa"  # 0x800C4680 - 0x800C5140 ; 0x00000AC0

.balign 8

.global lbl_800C4B18
lbl_800C4B18:

	# ROM: 0x831D8
	.double 0.008333333333322489

.global lbl_800C4B20
lbl_800C4B20:

	# ROM: 0x831E0
	.double -0.0001984126982985795

.global lbl_800C4B28
lbl_800C4B28:

	# ROM: 0x831E8
	.double 0.00000275573137070700675

.global lbl_800C4B30
lbl_800C4B30:

	# ROM: 0x831F0
	.double -2.5050760253406865E-8

.global lbl_800C4B38
lbl_800C4B38:

	# ROM: 0x831F8
	.double 1.58969099521155E-10

.global lbl_800C4B40
lbl_800C4B40:

	# ROM: 0x83200
	.double -0.16666666666666632

.global lbl_800C4B48
lbl_800C4B48:

	# ROM: 0x83208
	.double 0.5
