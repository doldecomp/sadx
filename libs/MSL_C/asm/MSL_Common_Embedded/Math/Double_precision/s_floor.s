.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global floor
floor:
/* 80013A1C 0001083C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80013A20 00010840  D8 21 00 08 */	stfd f1, 0x8(r1)
/* 80013A24 00010844  80 A1 00 08 */	lwz r5, 0x8(r1)
/* 80013A28 00010848  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 80013A2C 0001084C  54 A3 65 7E */	rlwinm r3, r5, 12, 21, 31
/* 80013A30 00010850  38 E3 FC 01 */	addi r7, r3, -0x3ff
/* 80013A34 00010854  2C 07 00 14 */	cmpwi r7, 0x14
/* 80013A38 00010858  40 80 00 98 */	bge lbl_80013AD0
/* 80013A3C 0001085C  2C 07 00 00 */	cmpwi r7, 0x0
/* 80013A40 00010860  40 80 00 44 */	bge lbl_80013A84
/* 80013A44 00010864  C8 42 85 48 */	lfd f2, lbl_800C4BC8@sda21(r2)
/* 80013A48 00010868  C8 02 85 50 */	lfd f0, lbl_800C4BD0@sda21(r2)
/* 80013A4C 0001086C  FC 22 08 2A */	fadd f1, f2, f1
/* 80013A50 00010870  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80013A54 00010874  40 81 00 FC */	ble lbl_80013B50
/* 80013A58 00010878  2C 05 00 00 */	cmpwi r5, 0x0
/* 80013A5C 0001087C  41 80 00 10 */	blt lbl_80013A6C
/* 80013A60 00010880  38 C0 00 00 */	li r6, 0x0
/* 80013A64 00010884  38 A0 00 00 */	li r5, 0x0
/* 80013A68 00010888  48 00 00 E8 */	b lbl_80013B50
lbl_80013A6C:
/* 80013A6C 0001088C  54 A0 00 7E */	clrlwi r0, r5, 1
/* 80013A70 00010890  7C 00 33 79 */	or. r0, r0, r6
/* 80013A74 00010894  41 82 00 DC */	beq lbl_80013B50
/* 80013A78 00010898  3C A0 BF F0 */	lis r5, 0xbff0
/* 80013A7C 0001089C  38 C0 00 00 */	li r6, 0x0
/* 80013A80 000108A0  48 00 00 D0 */	b lbl_80013B50
lbl_80013A84:
/* 80013A84 000108A4  3C 60 00 10 */	lis r3, 0x10
/* 80013A88 000108A8  38 03 FF FF */	addi r0, r3, -0x1
/* 80013A8C 000108AC  7C 04 3E 30 */	sraw r4, r0, r7
/* 80013A90 000108B0  7C A0 20 38 */	and r0, r5, r4
/* 80013A94 000108B4  7C C0 03 79 */	or. r0, r6, r0
/* 80013A98 000108B8  40 82 00 08 */	bne lbl_80013AA0
/* 80013A9C 000108BC  48 00 00 C0 */	b lbl_80013B5C
lbl_80013AA0:
/* 80013AA0 000108C0  C8 42 85 48 */	lfd f2, lbl_800C4BC8@sda21(r2)
/* 80013AA4 000108C4  C8 02 85 50 */	lfd f0, lbl_800C4BD0@sda21(r2)
/* 80013AA8 000108C8  FC 22 08 2A */	fadd f1, f2, f1
/* 80013AAC 000108CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80013AB0 000108D0  40 81 00 A0 */	ble lbl_80013B50
/* 80013AB4 000108D4  2C 05 00 00 */	cmpwi r5, 0x0
/* 80013AB8 000108D8  40 80 00 0C */	bge lbl_80013AC4
/* 80013ABC 000108DC  7C 60 3E 30 */	sraw r0, r3, r7
/* 80013AC0 000108E0  7C A5 02 14 */	add r5, r5, r0
lbl_80013AC4:
/* 80013AC4 000108E4  7C A5 20 78 */	andc r5, r5, r4
/* 80013AC8 000108E8  38 C0 00 00 */	li r6, 0x0
/* 80013ACC 000108EC  48 00 00 84 */	b lbl_80013B50
lbl_80013AD0:
/* 80013AD0 000108F0  2C 07 00 33 */	cmpwi r7, 0x33
/* 80013AD4 000108F4  40 81 00 14 */	ble lbl_80013AE8
/* 80013AD8 000108F8  2C 07 04 00 */	cmpwi r7, 0x400
/* 80013ADC 000108FC  40 82 00 80 */	bne lbl_80013B5C
/* 80013AE0 00010900  FC 21 08 2A */	fadd f1, f1, f1
/* 80013AE4 00010904  48 00 00 78 */	b lbl_80013B5C
lbl_80013AE8:
/* 80013AE8 00010908  38 07 FF EC */	addi r0, r7, -0x14
/* 80013AEC 0001090C  38 60 FF FF */	li r3, -0x1
/* 80013AF0 00010910  7C 64 04 30 */	srw r4, r3, r0
/* 80013AF4 00010914  7C C0 20 39 */	and. r0, r6, r4
/* 80013AF8 00010918  40 82 00 08 */	bne lbl_80013B00
/* 80013AFC 0001091C  48 00 00 60 */	b lbl_80013B5C
lbl_80013B00:
/* 80013B00 00010920  C8 42 85 48 */	lfd f2, lbl_800C4BC8@sda21(r2)
/* 80013B04 00010924  C8 02 85 50 */	lfd f0, lbl_800C4BD0@sda21(r2)
/* 80013B08 00010928  FC 22 08 2A */	fadd f1, f2, f1
/* 80013B0C 0001092C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80013B10 00010930  40 81 00 40 */	ble lbl_80013B50
/* 80013B14 00010934  2C 05 00 00 */	cmpwi r5, 0x0
/* 80013B18 00010938  40 80 00 34 */	bge lbl_80013B4C
/* 80013B1C 0001093C  2C 07 00 14 */	cmpwi r7, 0x14
/* 80013B20 00010940  40 82 00 0C */	bne lbl_80013B2C
/* 80013B24 00010944  38 A5 00 01 */	addi r5, r5, 0x1
/* 80013B28 00010948  48 00 00 24 */	b lbl_80013B4C
lbl_80013B2C:
/* 80013B2C 0001094C  20 07 00 34 */	subfic r0, r7, 0x34
/* 80013B30 00010950  38 60 00 01 */	li r3, 0x1
/* 80013B34 00010954  7C 60 00 30 */	slw r0, r3, r0
/* 80013B38 00010958  7C 06 02 14 */	add r0, r6, r0
/* 80013B3C 0001095C  7C 00 30 40 */	cmplw r0, r6
/* 80013B40 00010960  40 80 00 08 */	bge lbl_80013B48
/* 80013B44 00010964  38 A5 00 01 */	addi r5, r5, 0x1
lbl_80013B48:
/* 80013B48 00010968  7C 06 03 78 */	mr r6, r0
lbl_80013B4C:
/* 80013B4C 0001096C  7C C6 20 78 */	andc r6, r6, r4
lbl_80013B50:
/* 80013B50 00010970  90 A1 00 08 */	stw r5, 0x8(r1)
/* 80013B54 00010974  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80013B58 00010978  C8 21 00 08 */	lfd f1, 0x8(r1)
lbl_80013B5C:
/* 80013B5C 0001097C  38 21 00 10 */	addi r1, r1, 0x10
/* 80013B60 00010980  4E 80 00 20 */	blr


.section .sdata2, "wa"  # 0x800C4680 - 0x800C5140 ; 0x00000AC0

.balign 8

.global lbl_800C4BC8
lbl_800C4BC8:

	# ROM: 0x83288
	.double 1.0E+300

.global lbl_800C4BD0
lbl_800C4BD0:

	# ROM: 0x83290
	.double 0.0