.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global atan
atan:
/* 800135DC 000103FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800135E0 00010400  3C 60 80 07 */	lis r3, atanhi@ha
/* 800135E4 00010404  3C 00 44 10 */	lis r0, 0x4410
/* 800135E8 00010408  D8 21 00 08 */	stfd f1, 0x8(r1)
/* 800135EC 0001040C  38 83 6A 20 */	addi r4, r3, atanhi@l
/* 800135F0 00010410  80 C1 00 08 */	lwz r6, 0x8(r1)
/* 800135F4 00010414  54 C5 00 7E */	clrlwi r5, r6, 1
/* 800135F8 00010418  7C 05 00 00 */	cmpw r5, r0
/* 800135FC 0001041C  41 80 00 60 */	blt lbl_8001365C
/* 80013600 00010420  3C 00 7F F0 */	lis r0, 0x7ff0
/* 80013604 00010424  7C 05 00 00 */	cmpw r5, r0
/* 80013608 00010428  41 81 00 1C */	bgt lbl_80013624
/* 8001360C 0001042C  3C 05 80 10 */	addis r0, r5, 0x8010
/* 80013610 00010430  28 00 00 00 */	cmplwi r0, 0x0
/* 80013614 00010434  40 82 00 1C */	bne lbl_80013630
/* 80013618 00010438  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8001361C 0001043C  2C 00 00 00 */	cmpwi r0, 0x0
/* 80013620 00010440  41 82 00 10 */	beq lbl_80013630
lbl_80013624:
/* 80013624 00010444  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 80013628 00010448  FC 20 00 2A */	fadd f1, f0, f0
/* 8001362C 0001044C  48 00 01 A8 */	b lbl_800137D4
lbl_80013630:
/* 80013630 00010450  2C 06 00 00 */	cmpwi r6, 0x0
/* 80013634 00010454  40 81 00 14 */	ble lbl_80013648
/* 80013638 00010458  C8 24 00 18 */	lfd f1, 0x18(r4)
/* 8001363C 0001045C  C8 04 00 38 */	lfd f0, 0x38(r4)
/* 80013640 00010460  FC 21 00 2A */	fadd f1, f1, f0
/* 80013644 00010464  48 00 01 90 */	b lbl_800137D4
lbl_80013648:
/* 80013648 00010468  C8 24 00 18 */	lfd f1, 0x18(r4)
/* 8001364C 0001046C  C8 04 00 38 */	lfd f0, 0x38(r4)
/* 80013650 00010470  FC 20 08 50 */	fneg f1, f1
/* 80013654 00010474  FC 21 00 28 */	fsub f1, f1, f0
/* 80013658 00010478  48 00 01 7C */	b lbl_800137D4
lbl_8001365C:
/* 8001365C 0001047C  3C 00 3F DC */	lis r0, 0x3fdc
/* 80013660 00010480  7C 05 00 00 */	cmpw r5, r0
/* 80013664 00010484  40 80 00 30 */	bge lbl_80013694
/* 80013668 00010488  3C 00 3E 20 */	lis r0, 0x3e20
/* 8001366C 0001048C  7C 05 00 00 */	cmpw r5, r0
/* 80013670 00010490  40 80 00 1C */	bge lbl_8001368C
/* 80013674 00010494  C8 42 85 08 */	lfd f2, lbl_800C4B88@sda21(r2)
/* 80013678 00010498  C8 02 85 10 */	lfd f0, lbl_800C4B90@sda21(r2)
/* 8001367C 0001049C  FC 42 08 2A */	fadd f2, f2, f1
/* 80013680 000104A0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80013684 000104A4  40 81 00 08 */	ble lbl_8001368C
/* 80013688 000104A8  48 00 01 4C */	b lbl_800137D4
lbl_8001368C:
/* 8001368C 000104AC  38 00 FF FF */	li r0, -0x1
/* 80013690 000104B0  48 00 00 A0 */	b lbl_80013730
lbl_80013694:
/* 80013694 000104B4  FC 60 0A 10 */	fabs f3, f1
/* 80013698 000104B8  3C 00 3F F3 */	lis r0, 0x3ff3
/* 8001369C 000104BC  7C 05 00 00 */	cmpw r5, r0
/* 800136A0 000104C0  D8 61 00 08 */	stfd f3, 0x8(r1)
/* 800136A4 000104C4  40 80 00 4C */	bge lbl_800136F0
/* 800136A8 000104C8  3C 00 3F E6 */	lis r0, 0x3fe6
/* 800136AC 000104CC  7C 05 00 00 */	cmpw r5, r0
/* 800136B0 000104D0  40 80 00 24 */	bge lbl_800136D4
/* 800136B4 000104D4  C8 42 85 18 */	lfd f2, lbl_800C4B98@sda21(r2)
/* 800136B8 000104D8  38 00 00 00 */	li r0, 0x0
/* 800136BC 000104DC  C8 22 85 10 */	lfd f1, lbl_800C4B90@sda21(r2)
/* 800136C0 000104E0  FC 02 18 2A */	fadd f0, f2, f3
/* 800136C4 000104E4  FC 22 08 F8 */	fmsub f1, f2, f3, f1
/* 800136C8 000104E8  FC 01 00 24 */	fdiv f0, f1, f0
/* 800136CC 000104EC  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 800136D0 000104F0  48 00 00 60 */	b lbl_80013730
lbl_800136D4:
/* 800136D4 000104F4  C8 02 85 10 */	lfd f0, lbl_800C4B90@sda21(r2)
/* 800136D8 000104F8  38 00 00 01 */	li r0, 0x1
/* 800136DC 000104FC  FC 23 00 28 */	fsub f1, f3, f0
/* 800136E0 00010500  FC 00 18 2A */	fadd f0, f0, f3
/* 800136E4 00010504  FC 01 00 24 */	fdiv f0, f1, f0
/* 800136E8 00010508  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 800136EC 0001050C  48 00 00 44 */	b lbl_80013730
lbl_800136F0:
/* 800136F0 00010510  3C 60 40 04 */	lis r3, 0x4004
/* 800136F4 00010514  38 03 80 00 */	addi r0, r3, -0x8000
/* 800136F8 00010518  7C 05 00 00 */	cmpw r5, r0
/* 800136FC 0001051C  40 80 00 24 */	bge lbl_80013720
/* 80013700 00010520  C8 42 85 20 */	lfd f2, lbl_800C4BA0@sda21(r2)
/* 80013704 00010524  38 00 00 02 */	li r0, 0x2
/* 80013708 00010528  C8 02 85 10 */	lfd f0, lbl_800C4B90@sda21(r2)
/* 8001370C 0001052C  FC 23 10 28 */	fsub f1, f3, f2
/* 80013710 00010530  FC 02 00 FA */	fmadd f0, f2, f3, f0
/* 80013714 00010534  FC 01 00 24 */	fdiv f0, f1, f0
/* 80013718 00010538  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 8001371C 0001053C  48 00 00 14 */	b lbl_80013730
lbl_80013720:
/* 80013720 00010540  C8 02 85 28 */	lfd f0, lbl_800C4BA8@sda21(r2)
/* 80013724 00010544  38 00 00 03 */	li r0, 0x3
/* 80013728 00010548  FC 00 18 24 */	fdiv f0, f0, f3
/* 8001372C 0001054C  D8 01 00 08 */	stfd f0, 0x8(r1)
lbl_80013730:
/* 80013730 00010550  C9 21 00 08 */	lfd f9, 0x8(r1)
/* 80013734 00010554  2C 00 00 00 */	cmpwi r0, 0x0
/* 80013738 00010558  C8 84 00 90 */	lfd f4, 0x90(r4)
/* 8001373C 0001055C  FD 69 02 72 */	fmul f11, f9, f9
/* 80013740 00010560  C8 24 00 80 */	lfd f1, 0x80(r4)
/* 80013744 00010564  C8 E4 00 70 */	lfd f7, 0x70(r4)
/* 80013748 00010568  C8 64 00 88 */	lfd f3, 0x88(r4)
/* 8001374C 0001056C  C8 04 00 78 */	lfd f0, 0x78(r4)
/* 80013750 00010570  FD 4B 02 F2 */	fmul f10, f11, f11
/* 80013754 00010574  C8 C4 00 60 */	lfd f6, 0x60(r4)
/* 80013758 00010578  C8 44 00 68 */	lfd f2, 0x68(r4)
/* 8001375C 0001057C  C8 A4 00 50 */	lfd f5, 0x50(r4)
/* 80013760 00010580  FD 0A 09 3A */	fmadd f8, f10, f4, f1
/* 80013764 00010584  C8 24 00 58 */	lfd f1, 0x58(r4)
/* 80013768 00010588  C8 84 00 40 */	lfd f4, 0x40(r4)
/* 8001376C 0001058C  FC 6A 00 FA */	fmadd f3, f10, f3, f0
/* 80013770 00010590  C8 04 00 48 */	lfd f0, 0x48(r4)
/* 80013774 00010594  FC EA 3A 3A */	fmadd f7, f10, f8, f7
/* 80013778 00010598  FC 4A 10 FA */	fmadd f2, f10, f3, f2
/* 8001377C 0001059C  FC 6A 31 FA */	fmadd f3, f10, f7, f6
/* 80013780 000105A0  FC 2A 08 BA */	fmadd f1, f10, f2, f1
/* 80013784 000105A4  FC 4A 28 FA */	fmadd f2, f10, f3, f5
/* 80013788 000105A8  FC 0A 00 7A */	fmadd f0, f10, f1, f0
/* 8001378C 000105AC  FC 2A 20 BA */	fmadd f1, f10, f2, f4
/* 80013790 000105B0  FC 4A 00 32 */	fmul f2, f10, f0
/* 80013794 000105B4  FC 0B 00 72 */	fmul f0, f11, f1
/* 80013798 000105B8  40 80 00 10 */	bge lbl_800137A8
/* 8001379C 000105BC  FC 00 10 2A */	fadd f0, f0, f2
/* 800137A0 000105C0  FC 29 48 3C */	fnmsub f1, f9, f0, f9
/* 800137A4 000105C4  48 00 00 30 */	b lbl_800137D4
lbl_800137A8:
/* 800137A8 000105C8  54 00 18 38 */	slwi r0, r0, 3
/* 800137AC 000105CC  FC 20 10 2A */	fadd f1, f0, f2
/* 800137B0 000105D0  7C 64 02 14 */	add r3, r4, r0
/* 800137B4 000105D4  2C 06 00 00 */	cmpwi r6, 0x0
/* 800137B8 000105D8  C8 03 00 20 */	lfd f0, 0x20(r3)
/* 800137BC 000105DC  C8 43 00 00 */	lfd f2, 0x0(r3)
/* 800137C0 000105E0  FC 09 00 78 */	fmsub f0, f9, f1, f0
/* 800137C4 000105E4  FC 00 48 28 */	fsub f0, f0, f9
/* 800137C8 000105E8  FC 22 00 28 */	fsub f1, f2, f0
/* 800137CC 000105EC  40 80 00 08 */	bge lbl_800137D4
/* 800137D0 000105F0  FC 20 08 50 */	fneg f1, f1
lbl_800137D4:
/* 800137D4 000105F4  38 21 00 10 */	addi r1, r1, 0x10
/* 800137D8 000105F8  4E 80 00 20 */	blr


.section .rodata, "wa"  # 0x800764E0 - 0x80079C60 ; 0x00003780

.balign 8

.global atanhi
atanhi:

	# ROM: 0x73A20
	.double 0.4636476090008061
	.double 0.7853981633974483
	.double 0.982793723247329
	.double 1.5707963267948965

atanlo:
	.double 2.26987774529616875E-17
	.double 3.061616997868383E-17
	.double 1.39033110312309975E-17
	.double 6.123233995736766E-17

aT:
	.double 0.3333333333333293
	.double -0.199999999998764825
	.double 0.142857142725034675
	.double -0.1111111040546235625
	.double 0.09090887133436507
	.double -0.0769187620504483
	.double 0.06661073137387531
	.double -0.058335701337905735
	.double 0.049768779946159325
	.double -0.036531572744216915
	.double 0.0162858201153657825


.section .sdata2, "wa"  # 0x800C4680 - 0x800C5140 ; 0x00000AC0

.balign 8

.global lbl_800C4B88
lbl_800C4B88:

	# ROM: 0x83248
	.double 1.0E+300

.global lbl_800C4B90
lbl_800C4B90:

	# ROM: 0x83250
	.double 1.0

.global lbl_800C4B98
lbl_800C4B98:

	# ROM: 0x83258
	.double 2.0

.global lbl_800C4BA0
lbl_800C4BA0:

	# ROM: 0x83260
	.double 1.5

.global lbl_800C4BA8
lbl_800C4BA8:

	# ROM: 0x83268
	.double -1.0
