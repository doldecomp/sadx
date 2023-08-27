.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global HandlePositionFileSupportRequest
HandlePositionFileSupportRequest:
/* 800182DC 000150FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800182E0 00015100  7C 08 02 A6 */	mflr r0
/* 800182E4 00015104  90 01 00 34 */	stw r0, 0x34(r1)
/* 800182E8 00015108  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 800182EC 0001510C  7C 7A 1B 78 */	mr r26, r3
/* 800182F0 00015110  7C 9C 23 78 */	mr r28, r4
/* 800182F4 00015114  7C BD 2B 78 */	mr r29, r5
/* 800182F8 00015118  7C DE 33 78 */	mr r30, r6
/* 800182FC 0001511C  38 61 00 0C */	addi r3, r1, 0xc
/* 80018300 00015120  38 81 00 08 */	addi r4, r1, 0x8
/* 80018304 00015124  4B FF D1 49 */	bl TRKGetFreeBuffer
/* 80018308 00015128  7C 7B 1B 79 */	mr. r27, r3
/* 8001830C 0001512C  40 82 00 44 */	bne lbl_80018350
/* 80018310 00015130  80 A1 00 08 */	lwz r5, 0x8(r1)
/* 80018314 00015134  80 65 00 0C */	lwz r3, 0xc(r5)
/* 80018318 00015138  28 03 08 80 */	cmplwi r3, 0x880
/* 8001831C 0001513C  41 80 00 0C */	blt lbl_80018328
/* 80018320 00015140  38 80 03 01 */	li r4, 0x301
/* 80018324 00015144  48 00 00 28 */	b lbl_8001834C
lbl_80018328:
/* 80018328 00015148  38 03 00 01 */	addi r0, r3, 0x1
/* 8001832C 0001514C  7C 65 1A 14 */	add r3, r5, r3
/* 80018330 00015150  90 05 00 0C */	stw r0, 0xc(r5)
/* 80018334 00015154  38 00 00 D4 */	li r0, 0xd4
/* 80018338 00015158  38 80 00 00 */	li r4, 0x0
/* 8001833C 0001515C  98 03 00 10 */	stb r0, 0x10(r3)
/* 80018340 00015160  80 65 00 08 */	lwz r3, 0x8(r5)
/* 80018344 00015164  38 03 00 01 */	addi r0, r3, 0x1
/* 80018348 00015168  90 05 00 08 */	stw r0, 0x8(r5)
lbl_8001834C:
/* 8001834C 0001516C  7C 9B 23 78 */	mr r27, r4
lbl_80018350:
/* 80018350 00015170  2C 1B 00 00 */	cmpwi r27, 0x0
/* 80018354 00015174  40 82 00 14 */	bne lbl_80018368
/* 80018358 00015178  80 61 00 08 */	lwz r3, 0x8(r1)
/* 8001835C 0001517C  7F 44 D3 78 */	mr r4, r26
/* 80018360 00015180  4B FF CE 05 */	bl TRKAppendBuffer1_ui32
/* 80018364 00015184  7C 7B 1B 78 */	mr r27, r3
lbl_80018368:
/* 80018368 00015188  2C 1B 00 00 */	cmpwi r27, 0x0
/* 8001836C 0001518C  40 82 00 14 */	bne lbl_80018380
/* 80018370 00015190  80 61 00 08 */	lwz r3, 0x8(r1)
/* 80018374 00015194  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 80018378 00015198  4B FF CD ED */	bl TRKAppendBuffer1_ui32
/* 8001837C 0001519C  7C 7B 1B 78 */	mr r27, r3
lbl_80018380:
/* 80018380 000151A0  2C 1B 00 00 */	cmpwi r27, 0x0
/* 80018384 000151A4  40 82 00 40 */	bne lbl_800183C4
/* 80018388 000151A8  80 A1 00 08 */	lwz r5, 0x8(r1)
/* 8001838C 000151AC  80 65 00 0C */	lwz r3, 0xc(r5)
/* 80018390 000151B0  28 03 08 80 */	cmplwi r3, 0x880
/* 80018394 000151B4  41 80 00 0C */	blt lbl_800183A0
/* 80018398 000151B8  38 80 03 01 */	li r4, 0x301
/* 8001839C 000151BC  48 00 00 24 */	b lbl_800183C0
lbl_800183A0:
/* 800183A0 000151C0  38 03 00 01 */	addi r0, r3, 0x1
/* 800183A4 000151C4  7C 65 1A 14 */	add r3, r5, r3
/* 800183A8 000151C8  90 05 00 0C */	stw r0, 0xc(r5)
/* 800183AC 000151CC  38 80 00 00 */	li r4, 0x0
/* 800183B0 000151D0  9B A3 00 10 */	stb r29, 0x10(r3)
/* 800183B4 000151D4  80 65 00 08 */	lwz r3, 0x8(r5)
/* 800183B8 000151D8  38 03 00 01 */	addi r0, r3, 0x1
/* 800183BC 000151DC  90 05 00 08 */	stw r0, 0x8(r5)
lbl_800183C0:
/* 800183C0 000151E0  7C 9B 23 78 */	mr r27, r4
lbl_800183C4:
/* 800183C4 000151E4  2C 1B 00 00 */	cmpwi r27, 0x0
/* 800183C8 000151E8  40 82 00 84 */	bne lbl_8001844C
/* 800183CC 000151EC  38 00 00 00 */	li r0, 0x0
/* 800183D0 000151F0  38 81 00 10 */	addi r4, r1, 0x10
/* 800183D4 000151F4  98 1E 00 00 */	stb r0, 0x0(r30)
/* 800183D8 000151F8  38 A0 00 03 */	li r5, 0x3
/* 800183DC 000151FC  38 C0 00 03 */	li r6, 0x3
/* 800183E0 00015200  38 E0 00 00 */	li r7, 0x0
/* 800183E4 00015204  80 61 00 08 */	lwz r3, 0x8(r1)
/* 800183E8 00015208  48 00 03 4D */	bl TRKRequestSend
/* 800183EC 0001520C  7C 7B 1B 79 */	mr. r27, r3
/* 800183F0 00015210  40 82 00 18 */	bne lbl_80018408
/* 800183F4 00015214  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800183F8 00015218  4B FF D0 29 */	bl TRKGetBuffer
/* 800183FC 0001521C  38 80 00 02 */	li r4, 0x2
/* 80018400 00015220  7C 7F 1B 78 */	mr r31, r3
/* 80018404 00015224  4B FF CF 49 */	bl TRKSetBufferPosition
lbl_80018408:
/* 80018408 00015228  2C 1B 00 00 */	cmpwi r27, 0x0
/* 8001840C 0001522C  40 82 00 14 */	bne lbl_80018420
/* 80018410 00015230  7F E3 FB 78 */	mr r3, r31
/* 80018414 00015234  7F C4 F3 78 */	mr r4, r30
/* 80018418 00015238  4B FF CB 35 */	bl TRKReadBuffer1_ui8
/* 8001841C 0001523C  7C 7B 1B 78 */	mr r27, r3
lbl_80018420:
/* 80018420 00015240  2C 1B 00 00 */	cmpwi r27, 0x0
/* 80018424 00015244  40 82 00 18 */	bne lbl_8001843C
/* 80018428 00015248  7F E3 FB 78 */	mr r3, r31
/* 8001842C 0001524C  7F 84 E3 78 */	mr r4, r28
/* 80018430 00015250  4B FF C9 9D */	bl TRKReadBuffer1_ui32
/* 80018434 00015254  7C 7B 1B 78 */	mr r27, r3
/* 80018438 00015258  48 00 00 0C */	b lbl_80018444
lbl_8001843C:
/* 8001843C 0001525C  38 00 FF FF */	li r0, -0x1
/* 80018440 00015260  90 1C 00 00 */	stw r0, 0x0(r28)
lbl_80018444:
/* 80018444 00015264  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80018448 00015268  4B FF CF 75 */	bl TRKReleaseBuffer
lbl_8001844C:
/* 8001844C 0001526C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80018450 00015270  4B FF CF 6D */	bl TRKReleaseBuffer
/* 80018454 00015274  7F 63 DB 78 */	mr r3, r27
/* 80018458 00015278  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 8001845C 0001527C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80018460 00015280  7C 08 03 A6 */	mtlr r0
/* 80018464 00015284  38 21 00 30 */	addi r1, r1, 0x30
/* 80018468 00015288  4E 80 00 20 */	blr

.global HandleCloseFileSupportRequest
HandleCloseFileSupportRequest:
/* 8001846C 0001528C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80018470 00015290  7C 08 02 A6 */	mflr r0
/* 80018474 00015294  90 01 00 34 */	stw r0, 0x34(r1)
/* 80018478 00015298  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8001847C 0001529C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80018480 000152A0  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80018484 000152A4  7C 9D 23 78 */	mr r29, r4
/* 80018488 000152A8  38 81 00 08 */	addi r4, r1, 0x8
/* 8001848C 000152AC  93 81 00 20 */	stw r28, 0x20(r1)
/* 80018490 000152B0  7C 7C 1B 78 */	mr r28, r3
/* 80018494 000152B4  38 61 00 0C */	addi r3, r1, 0xc
/* 80018498 000152B8  4B FF CF B5 */	bl TRKGetFreeBuffer
/* 8001849C 000152BC  7C 7F 1B 79 */	mr. r31, r3
/* 800184A0 000152C0  40 82 00 44 */	bne lbl_800184E4
/* 800184A4 000152C4  80 A1 00 08 */	lwz r5, 0x8(r1)
/* 800184A8 000152C8  80 65 00 0C */	lwz r3, 0xc(r5)
/* 800184AC 000152CC  28 03 08 80 */	cmplwi r3, 0x880
/* 800184B0 000152D0  41 80 00 0C */	blt lbl_800184BC
/* 800184B4 000152D4  38 80 03 01 */	li r4, 0x301
/* 800184B8 000152D8  48 00 00 28 */	b lbl_800184E0
lbl_800184BC:
/* 800184BC 000152DC  38 03 00 01 */	addi r0, r3, 0x1
/* 800184C0 000152E0  7C 65 1A 14 */	add r3, r5, r3
/* 800184C4 000152E4  90 05 00 0C */	stw r0, 0xc(r5)
/* 800184C8 000152E8  38 00 00 D3 */	li r0, 0xd3
/* 800184CC 000152EC  38 80 00 00 */	li r4, 0x0
/* 800184D0 000152F0  98 03 00 10 */	stb r0, 0x10(r3)
/* 800184D4 000152F4  80 65 00 08 */	lwz r3, 0x8(r5)
/* 800184D8 000152F8  38 03 00 01 */	addi r0, r3, 0x1
/* 800184DC 000152FC  90 05 00 08 */	stw r0, 0x8(r5)
lbl_800184E0:
/* 800184E0 00015300  7C 9F 23 78 */	mr r31, r4
lbl_800184E4:
/* 800184E4 00015304  2C 1F 00 00 */	cmpwi r31, 0x0
/* 800184E8 00015308  40 82 00 14 */	bne lbl_800184FC
/* 800184EC 0001530C  80 61 00 08 */	lwz r3, 0x8(r1)
/* 800184F0 00015310  7F 84 E3 78 */	mr r4, r28
/* 800184F4 00015314  4B FF CC 71 */	bl TRKAppendBuffer1_ui32
/* 800184F8 00015318  7C 7F 1B 78 */	mr r31, r3
lbl_800184FC:
/* 800184FC 0001531C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 80018500 00015320  40 82 00 60 */	bne lbl_80018560
/* 80018504 00015324  38 00 00 00 */	li r0, 0x0
/* 80018508 00015328  38 81 00 10 */	addi r4, r1, 0x10
/* 8001850C 0001532C  98 1D 00 00 */	stb r0, 0x0(r29)
/* 80018510 00015330  38 A0 00 03 */	li r5, 0x3
/* 80018514 00015334  38 C0 00 03 */	li r6, 0x3
/* 80018518 00015338  38 E0 00 00 */	li r7, 0x0
/* 8001851C 0001533C  80 61 00 08 */	lwz r3, 0x8(r1)
/* 80018520 00015340  48 00 02 15 */	bl TRKRequestSend
/* 80018524 00015344  7C 7F 1B 79 */	mr. r31, r3
/* 80018528 00015348  40 82 00 18 */	bne lbl_80018540
/* 8001852C 0001534C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80018530 00015350  4B FF CE F1 */	bl TRKGetBuffer
/* 80018534 00015354  38 80 00 02 */	li r4, 0x2
/* 80018538 00015358  7C 7E 1B 78 */	mr r30, r3
/* 8001853C 0001535C  4B FF CE 11 */	bl TRKSetBufferPosition
lbl_80018540:
/* 80018540 00015360  2C 1F 00 00 */	cmpwi r31, 0x0
/* 80018544 00015364  40 82 00 14 */	bne lbl_80018558
/* 80018548 00015368  7F C3 F3 78 */	mr r3, r30
/* 8001854C 0001536C  7F A4 EB 78 */	mr r4, r29
/* 80018550 00015370  4B FF C9 FD */	bl TRKReadBuffer1_ui8
/* 80018554 00015374  7C 7F 1B 78 */	mr r31, r3
lbl_80018558:
/* 80018558 00015378  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8001855C 0001537C  4B FF CE 61 */	bl TRKReleaseBuffer
lbl_80018560:
/* 80018560 00015380  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80018564 00015384  4B FF CE 59 */	bl TRKReleaseBuffer
/* 80018568 00015388  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8001856C 0001538C  7F E3 FB 78 */	mr r3, r31
/* 80018570 00015390  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80018574 00015394  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80018578 00015398  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8001857C 0001539C  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80018580 000153A0  7C 08 03 A6 */	mtlr r0
/* 80018584 000153A4  38 21 00 30 */	addi r1, r1, 0x30
/* 80018588 000153A8  4E 80 00 20 */	blr

.global HandleOpenFileSupportRequest
HandleOpenFileSupportRequest:
/* 8001858C 000153AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80018590 000153B0  7C 08 02 A6 */	mflr r0
/* 80018594 000153B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80018598 000153B8  38 00 00 00 */	li r0, 0x0
/* 8001859C 000153BC  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 800185A0 000153C0  7C 7B 1B 78 */	mr r27, r3
/* 800185A4 000153C4  7C 9C 23 78 */	mr r28, r4
/* 800185A8 000153C8  7C BD 2B 78 */	mr r29, r5
/* 800185AC 000153CC  7C DE 33 78 */	mr r30, r6
/* 800185B0 000153D0  38 61 00 0C */	addi r3, r1, 0xc
/* 800185B4 000153D4  38 81 00 08 */	addi r4, r1, 0x8
/* 800185B8 000153D8  90 05 00 00 */	stw r0, 0x0(r5)
/* 800185BC 000153DC  4B FF CE 91 */	bl TRKGetFreeBuffer
/* 800185C0 000153E0  7C 7A 1B 79 */	mr. r26, r3
/* 800185C4 000153E4  40 82 00 44 */	bne lbl_80018608
/* 800185C8 000153E8  80 A1 00 08 */	lwz r5, 0x8(r1)
/* 800185CC 000153EC  80 65 00 0C */	lwz r3, 0xc(r5)
/* 800185D0 000153F0  28 03 08 80 */	cmplwi r3, 0x880
/* 800185D4 000153F4  41 80 00 0C */	blt lbl_800185E0
/* 800185D8 000153F8  38 80 03 01 */	li r4, 0x301
/* 800185DC 000153FC  48 00 00 28 */	b lbl_80018604
lbl_800185E0:
/* 800185E0 00015400  38 03 00 01 */	addi r0, r3, 0x1
/* 800185E4 00015404  7C 65 1A 14 */	add r3, r5, r3
/* 800185E8 00015408  90 05 00 0C */	stw r0, 0xc(r5)
/* 800185EC 0001540C  38 00 00 D2 */	li r0, 0xd2
/* 800185F0 00015410  38 80 00 00 */	li r4, 0x0
/* 800185F4 00015414  98 03 00 10 */	stb r0, 0x10(r3)
/* 800185F8 00015418  80 65 00 08 */	lwz r3, 0x8(r5)
/* 800185FC 0001541C  38 03 00 01 */	addi r0, r3, 0x1
/* 80018600 00015420  90 05 00 08 */	stw r0, 0x8(r5)
lbl_80018604:
/* 80018604 00015424  7C 9A 23 78 */	mr r26, r4
lbl_80018608:
/* 80018608 00015428  2C 1A 00 00 */	cmpwi r26, 0x0
/* 8001860C 0001542C  40 82 00 40 */	bne lbl_8001864C
/* 80018610 00015430  80 A1 00 08 */	lwz r5, 0x8(r1)
/* 80018614 00015434  80 65 00 0C */	lwz r3, 0xc(r5)
/* 80018618 00015438  28 03 08 80 */	cmplwi r3, 0x880
/* 8001861C 0001543C  41 80 00 0C */	blt lbl_80018628
/* 80018620 00015440  38 80 03 01 */	li r4, 0x301
/* 80018624 00015444  48 00 00 24 */	b lbl_80018648
lbl_80018628:
/* 80018628 00015448  38 03 00 01 */	addi r0, r3, 0x1
/* 8001862C 0001544C  7C 65 1A 14 */	add r3, r5, r3
/* 80018630 00015450  90 05 00 0C */	stw r0, 0xc(r5)
/* 80018634 00015454  38 80 00 00 */	li r4, 0x0
/* 80018638 00015458  9B 83 00 10 */	stb r28, 0x10(r3)
/* 8001863C 0001545C  80 65 00 08 */	lwz r3, 0x8(r5)
/* 80018640 00015460  38 03 00 01 */	addi r0, r3, 0x1
/* 80018644 00015464  90 05 00 08 */	stw r0, 0x8(r5)
lbl_80018648:
/* 80018648 00015468  7C 9A 23 78 */	mr r26, r4
lbl_8001864C:
/* 8001864C 0001546C  2C 1A 00 00 */	cmpwi r26, 0x0
/* 80018650 00015470  40 82 00 20 */	bne lbl_80018670
/* 80018654 00015474  7F 63 DB 78 */	mr r3, r27
/* 80018658 00015478  4B FF 6B 61 */	bl strlen
/* 8001865C 0001547C  38 03 00 01 */	addi r0, r3, 0x1
/* 80018660 00015480  80 61 00 08 */	lwz r3, 0x8(r1)
/* 80018664 00015484  54 04 04 3E */	clrlwi r4, r0, 16
/* 80018668 00015488  4B FF CB 61 */	bl TRKAppendBuffer1_ui16
/* 8001866C 0001548C  7C 7A 1B 78 */	mr r26, r3
lbl_80018670:
/* 80018670 00015490  2C 1A 00 00 */	cmpwi r26, 0x0
/* 80018674 00015494  40 82 00 24 */	bne lbl_80018698
/* 80018678 00015498  7F 63 DB 78 */	mr r3, r27
/* 8001867C 0001549C  4B FF 6B 3D */	bl strlen
/* 80018680 000154A0  7C 65 1B 78 */	mr r5, r3
/* 80018684 000154A4  80 61 00 08 */	lwz r3, 0x8(r1)
/* 80018688 000154A8  7F 64 DB 78 */	mr r4, r27
/* 8001868C 000154AC  38 A5 00 01 */	addi r5, r5, 0x1
/* 80018690 000154B0  4B FF C9 E5 */	bl TRKAppendBuffer_ui8
/* 80018694 000154B4  7C 7A 1B 78 */	mr r26, r3
lbl_80018698:
/* 80018698 000154B8  2C 1A 00 00 */	cmpwi r26, 0x0
/* 8001869C 000154BC  40 82 00 78 */	bne lbl_80018714
/* 800186A0 000154C0  38 00 00 00 */	li r0, 0x0
/* 800186A4 000154C4  38 81 00 10 */	addi r4, r1, 0x10
/* 800186A8 000154C8  98 1E 00 00 */	stb r0, 0x0(r30)
/* 800186AC 000154CC  38 A0 00 07 */	li r5, 0x7
/* 800186B0 000154D0  38 C0 00 03 */	li r6, 0x3
/* 800186B4 000154D4  38 E0 00 00 */	li r7, 0x0
/* 800186B8 000154D8  80 61 00 08 */	lwz r3, 0x8(r1)
/* 800186BC 000154DC  48 00 00 79 */	bl TRKRequestSend
/* 800186C0 000154E0  7C 7A 1B 79 */	mr. r26, r3
/* 800186C4 000154E4  40 82 00 18 */	bne lbl_800186DC
/* 800186C8 000154E8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800186CC 000154EC  4B FF CD 55 */	bl TRKGetBuffer
/* 800186D0 000154F0  38 80 00 02 */	li r4, 0x2
/* 800186D4 000154F4  7C 7F 1B 78 */	mr r31, r3
/* 800186D8 000154F8  4B FF CC 75 */	bl TRKSetBufferPosition
lbl_800186DC:
/* 800186DC 000154FC  2C 1A 00 00 */	cmpwi r26, 0x0
/* 800186E0 00015500  40 82 00 14 */	bne lbl_800186F4
/* 800186E4 00015504  7F E3 FB 78 */	mr r3, r31
/* 800186E8 00015508  7F C4 F3 78 */	mr r4, r30
/* 800186EC 0001550C  4B FF C8 61 */	bl TRKReadBuffer1_ui8
/* 800186F0 00015510  7C 7A 1B 78 */	mr r26, r3
lbl_800186F4:
/* 800186F4 00015514  2C 1A 00 00 */	cmpwi r26, 0x0
/* 800186F8 00015518  40 82 00 14 */	bne lbl_8001870C
/* 800186FC 0001551C  7F E3 FB 78 */	mr r3, r31
/* 80018700 00015520  7F A4 EB 78 */	mr r4, r29
/* 80018704 00015524  4B FF C6 C9 */	bl TRKReadBuffer1_ui32
/* 80018708 00015528  7C 7A 1B 78 */	mr r26, r3
lbl_8001870C:
/* 8001870C 0001552C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80018710 00015530  4B FF CC AD */	bl TRKReleaseBuffer
lbl_80018714:
/* 80018714 00015534  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80018718 00015538  4B FF CC A5 */	bl TRKReleaseBuffer
/* 8001871C 0001553C  7F 43 D3 78 */	mr r3, r26
/* 80018720 00015540  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 80018724 00015544  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80018728 00015548  7C 08 03 A6 */	mtlr r0
/* 8001872C 0001554C  38 21 00 30 */	addi r1, r1, 0x30
/* 80018730 00015550  4E 80 00 20 */	blr

.global TRKRequestSend
TRKRequestSend:
/* 80018734 00015554  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80018738 00015558  7C 08 02 A6 */	mflr r0
/* 8001873C 0001555C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80018740 00015560  38 00 FF FF */	li r0, -0x1
/* 80018744 00015564  BE E1 00 1C */	stmw r23, 0x1c(r1)
/* 80018748 00015568  7C 98 23 78 */	mr r24, r4
/* 8001874C 0001556C  7C 77 1B 78 */	mr r23, r3
/* 80018750 00015570  7C B9 2B 78 */	mr r25, r5
/* 80018754 00015574  7C FA 3B 78 */	mr r26, r7
/* 80018758 00015578  3B 86 00 01 */	addi r28, r6, 0x1
/* 8001875C 0001557C  3B E0 00 00 */	li r31, 0x0
/* 80018760 00015580  3B 60 00 01 */	li r27, 0x1
/* 80018764 00015584  90 04 00 00 */	stw r0, 0x0(r4)
/* 80018768 00015588  48 00 01 2C */	b lbl_80018894
lbl_8001876C:
/* 8001876C 0001558C  7E E3 BB 78 */	mr r3, r23
/* 80018770 00015590  4B FF C2 11 */	bl TRKMessageSend
/* 80018774 00015594  7C 7F 1B 79 */	mr. r31, r3
/* 80018778 00015598  40 82 01 18 */	bne lbl_80018890
/* 8001877C 0001559C  2C 1A 00 00 */	cmpwi r26, 0x0
/* 80018780 000155A0  41 82 00 08 */	beq lbl_80018788
/* 80018784 000155A4  3B A0 00 00 */	li r29, 0x0
lbl_80018788:
/* 80018788 000155A8  4B FF CF 15 */	bl TRKTestForPacket
/* 8001878C 000155AC  90 78 00 00 */	stw r3, 0x0(r24)
/* 80018790 000155B0  80 78 00 00 */	lwz r3, 0x0(r24)
/* 80018794 000155B4  2C 03 FF FF */	cmpwi r3, -0x1
/* 80018798 000155B8  40 82 00 20 */	bne lbl_800187B8
/* 8001879C 000155BC  2C 1A 00 00 */	cmpwi r26, 0x0
/* 800187A0 000155C0  41 82 FF E8 */	beq lbl_80018788
/* 800187A4 000155C4  3C 80 04 C5 */	lis r4, 0x4c5
/* 800187A8 000155C8  3B BD 00 01 */	addi r29, r29, 0x1
/* 800187AC 000155CC  38 04 B3 EC */	addi r0, r4, -0x4c14
/* 800187B0 000155D0  7C 1D 00 40 */	cmplw r29, r0
/* 800187B4 000155D4  41 80 FF D4 */	blt lbl_80018788
lbl_800187B8:
/* 800187B8 000155D8  2C 03 FF FF */	cmpwi r3, -0x1
/* 800187BC 000155DC  41 82 00 4C */	beq lbl_80018808
/* 800187C0 000155E0  3B 60 00 00 */	li r27, 0x0
/* 800187C4 000155E4  4B FF CC 5D */	bl TRKGetBuffer
/* 800187C8 000155E8  38 80 00 00 */	li r4, 0x0
/* 800187CC 000155EC  7C 7E 1B 78 */	mr r30, r3
/* 800187D0 000155F0  4B FF CB 7D */	bl TRKSetBufferPosition
/* 800187D4 000155F4  7F C3 F3 78 */	mr r3, r30
/* 800187D8 000155F8  38 81 00 09 */	addi r4, r1, 0x9
/* 800187DC 000155FC  4B FF C7 71 */	bl TRKReadBuffer1_ui8
/* 800187E0 00015600  7C 7F 1B 79 */	mr. r31, r3
/* 800187E4 00015604  40 82 00 24 */	bne lbl_80018808
/* 800187E8 00015608  88 01 00 09 */	lbz r0, 0x9(r1)
/* 800187EC 0001560C  28 00 00 80 */	cmplwi r0, 0x80
/* 800187F0 00015610  40 80 00 18 */	bge lbl_80018808
/* 800187F4 00015614  80 78 00 00 */	lwz r3, 0x0(r24)
/* 800187F8 00015618  4B FF CD BD */	bl TRKProcessInput
/* 800187FC 0001561C  38 00 FF FF */	li r0, -0x1
/* 80018800 00015620  90 18 00 00 */	stw r0, 0x0(r24)
/* 80018804 00015624  4B FF FF 84 */	b lbl_80018788
lbl_80018808:
/* 80018808 00015628  80 18 00 00 */	lwz r0, 0x0(r24)
/* 8001880C 0001562C  2C 00 FF FF */	cmpwi r0, -0x1
/* 80018810 00015630  41 82 00 80 */	beq lbl_80018890
/* 80018814 00015634  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 80018818 00015638  7C 00 C8 40 */	cmplw r0, r25
/* 8001881C 0001563C  40 80 00 08 */	bge lbl_80018824
/* 80018820 00015640  3B 60 00 01 */	li r27, 0x1
lbl_80018824:
/* 80018824 00015644  2C 1F 00 00 */	cmpwi r31, 0x0
/* 80018828 00015648  40 82 00 1C */	bne lbl_80018844
/* 8001882C 0001564C  2C 1B 00 00 */	cmpwi r27, 0x0
/* 80018830 00015650  40 82 00 14 */	bne lbl_80018844
/* 80018834 00015654  7F C3 F3 78 */	mr r3, r30
/* 80018838 00015658  38 81 00 08 */	addi r4, r1, 0x8
/* 8001883C 0001565C  4B FF C7 11 */	bl TRKReadBuffer1_ui8
/* 80018840 00015660  7C 7F 1B 78 */	mr r31, r3
lbl_80018844:
/* 80018844 00015664  2C 1F 00 00 */	cmpwi r31, 0x0
/* 80018848 00015668  40 82 00 28 */	bne lbl_80018870
/* 8001884C 0001566C  2C 1B 00 00 */	cmpwi r27, 0x0
/* 80018850 00015670  40 82 00 20 */	bne lbl_80018870
/* 80018854 00015674  88 01 00 09 */	lbz r0, 0x9(r1)
/* 80018858 00015678  28 00 00 80 */	cmplwi r0, 0x80
/* 8001885C 0001567C  40 82 00 10 */	bne lbl_8001886C
/* 80018860 00015680  88 01 00 08 */	lbz r0, 0x8(r1)
/* 80018864 00015684  28 00 00 00 */	cmplwi r0, 0x0
/* 80018868 00015688  41 82 00 08 */	beq lbl_80018870
lbl_8001886C:
/* 8001886C 0001568C  3B 60 00 01 */	li r27, 0x1
lbl_80018870:
/* 80018870 00015690  2C 1F 00 00 */	cmpwi r31, 0x0
/* 80018874 00015694  40 82 00 0C */	bne lbl_80018880
/* 80018878 00015698  2C 1B 00 00 */	cmpwi r27, 0x0
/* 8001887C 0001569C  41 82 00 14 */	beq lbl_80018890
lbl_80018880:
/* 80018880 000156A0  80 78 00 00 */	lwz r3, 0x0(r24)
/* 80018884 000156A4  4B FF CB 39 */	bl TRKReleaseBuffer
/* 80018888 000156A8  38 00 FF FF */	li r0, -0x1
/* 8001888C 000156AC  90 18 00 00 */	stw r0, 0x0(r24)
lbl_80018890:
/* 80018890 000156B0  3B 9C FF FF */	addi r28, r28, -0x1
lbl_80018894:
/* 80018894 000156B4  2C 1C 00 00 */	cmpwi r28, 0x0
/* 80018898 000156B8  41 82 00 18 */	beq lbl_800188B0
/* 8001889C 000156BC  80 18 00 00 */	lwz r0, 0x0(r24)
/* 800188A0 000156C0  2C 00 FF FF */	cmpwi r0, -0x1
/* 800188A4 000156C4  40 82 00 0C */	bne lbl_800188B0
/* 800188A8 000156C8  2C 1F 00 00 */	cmpwi r31, 0x0
/* 800188AC 000156CC  41 82 FE C0 */	beq lbl_8001876C
lbl_800188B0:
/* 800188B0 000156D0  80 18 00 00 */	lwz r0, 0x0(r24)
/* 800188B4 000156D4  2C 00 FF FF */	cmpwi r0, -0x1
/* 800188B8 000156D8  40 82 00 08 */	bne lbl_800188C0
/* 800188BC 000156DC  3B E0 08 00 */	li r31, 0x800
lbl_800188C0:
/* 800188C0 000156E0  7F E3 FB 78 */	mr r3, r31
/* 800188C4 000156E4  BA E1 00 1C */	lmw r23, 0x1c(r1)
/* 800188C8 000156E8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800188CC 000156EC  7C 08 03 A6 */	mtlr r0
/* 800188D0 000156F0  38 21 00 40 */	addi r1, r1, 0x40
/* 800188D4 000156F4  4E 80 00 20 */	blr

.global TRKSuppAccessFile
TRKSuppAccessFile:
/* 800188D8 000156F8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800188DC 000156FC  7C 08 02 A6 */	mflr r0
/* 800188E0 00015700  90 01 00 54 */	stw r0, 0x54(r1)
/* 800188E4 00015704  BE A1 00 24 */	stmw r21, 0x24(r1)
/* 800188E8 00015708  7C 9B 23 79 */	mr. r27, r4
/* 800188EC 0001570C  7C 77 1B 78 */	mr r23, r3
/* 800188F0 00015710  7C B8 2B 78 */	mr r24, r5
/* 800188F4 00015714  7C DA 33 78 */	mr r26, r6
/* 800188F8 00015718  7C F6 3B 78 */	mr r22, r7
/* 800188FC 0001571C  7D 1D 43 78 */	mr r29, r8
/* 80018900 00015720  41 82 00 10 */	beq lbl_80018910
/* 80018904 00015724  80 18 00 00 */	lwz r0, 0x0(r24)
/* 80018908 00015728  28 00 00 00 */	cmplwi r0, 0x0
/* 8001890C 0001572C  40 82 00 0C */	bne lbl_80018918
lbl_80018910:
/* 80018910 00015730  38 60 00 02 */	li r3, 0x2
/* 80018914 00015734  48 00 02 74 */	b lbl_80018B88
lbl_80018918:
/* 80018918 00015738  38 00 00 00 */	li r0, 0x0
/* 8001891C 0001573C  3B 20 00 00 */	li r25, 0x0
/* 80018920 00015740  98 1A 00 00 */	stb r0, 0x0(r26)
/* 80018924 00015744  3B C0 00 00 */	li r30, 0x0
/* 80018928 00015748  3A A0 00 00 */	li r21, 0x0
/* 8001892C 0001574C  48 00 02 2C */	b lbl_80018B58
lbl_80018930:
/* 80018930 00015750  7C 7E 18 50 */	subf r3, r30, r3
/* 80018934 00015754  38 00 08 00 */	li r0, 0x800
/* 80018938 00015758  28 03 08 00 */	cmplwi r3, 0x800
/* 8001893C 0001575C  41 81 00 08 */	bgt lbl_80018944
/* 80018940 00015760  7C 60 1B 78 */	mr r0, r3
lbl_80018944:
/* 80018944 00015764  7C 1F 03 78 */	mr r31, r0
/* 80018948 00015768  38 61 00 10 */	addi r3, r1, 0x10
/* 8001894C 0001576C  38 81 00 0C */	addi r4, r1, 0xc
/* 80018950 00015770  4B FF CA FD */	bl TRKGetFreeBuffer
/* 80018954 00015774  7C 75 1B 79 */	mr. r21, r3
/* 80018958 00015778  40 82 00 50 */	bne lbl_800189A8
/* 8001895C 0001577C  2C 1D 00 00 */	cmpwi r29, 0x0
/* 80018960 00015780  38 A0 00 D0 */	li r5, 0xd0
/* 80018964 00015784  41 82 00 08 */	beq lbl_8001896C
/* 80018968 00015788  38 A0 00 D1 */	li r5, 0xd1
lbl_8001896C:
/* 8001896C 0001578C  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 80018970 00015790  80 86 00 0C */	lwz r4, 0xc(r6)
/* 80018974 00015794  28 04 08 80 */	cmplwi r4, 0x880
/* 80018978 00015798  41 80 00 0C */	blt lbl_80018984
/* 8001897C 0001579C  38 80 03 01 */	li r4, 0x301
/* 80018980 000157A0  48 00 00 24 */	b lbl_800189A4
lbl_80018984:
/* 80018984 000157A4  38 64 00 01 */	addi r3, r4, 0x1
/* 80018988 000157A8  38 04 00 10 */	addi r0, r4, 0x10
/* 8001898C 000157AC  90 66 00 0C */	stw r3, 0xc(r6)
/* 80018990 000157B0  38 80 00 00 */	li r4, 0x0
/* 80018994 000157B4  7C A6 01 AE */	stbx r5, r6, r0
/* 80018998 000157B8  80 66 00 08 */	lwz r3, 0x8(r6)
/* 8001899C 000157BC  38 03 00 01 */	addi r0, r3, 0x1
/* 800189A0 000157C0  90 06 00 08 */	stw r0, 0x8(r6)
lbl_800189A4:
/* 800189A4 000157C4  7C 95 23 78 */	mr r21, r4
lbl_800189A8:
/* 800189A8 000157C8  2C 15 00 00 */	cmpwi r21, 0x0
/* 800189AC 000157CC  40 82 00 14 */	bne lbl_800189C0
/* 800189B0 000157D0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800189B4 000157D4  7E E4 BB 78 */	mr r4, r23
/* 800189B8 000157D8  4B FF C7 AD */	bl TRKAppendBuffer1_ui32
/* 800189BC 000157DC  7C 75 1B 78 */	mr r21, r3
lbl_800189C0:
/* 800189C0 000157E0  2C 15 00 00 */	cmpwi r21, 0x0
/* 800189C4 000157E4  40 82 00 14 */	bne lbl_800189D8
/* 800189C8 000157E8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800189CC 000157EC  57 E4 04 3E */	clrlwi r4, r31, 16
/* 800189D0 000157F0  4B FF C7 F9 */	bl TRKAppendBuffer1_ui16
/* 800189D4 000157F4  7C 75 1B 78 */	mr r21, r3
lbl_800189D8:
/* 800189D8 000157F8  2C 1D 00 00 */	cmpwi r29, 0x0
/* 800189DC 000157FC  40 82 00 20 */	bne lbl_800189FC
/* 800189E0 00015800  2C 15 00 00 */	cmpwi r21, 0x0
/* 800189E4 00015804  40 82 00 18 */	bne lbl_800189FC
/* 800189E8 00015808  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800189EC 0001580C  7F E5 FB 78 */	mr r5, r31
/* 800189F0 00015810  7C 9B F2 14 */	add r4, r27, r30
/* 800189F4 00015814  4B FF C6 81 */	bl TRKAppendBuffer_ui8
/* 800189F8 00015818  7C 75 1B 78 */	mr r21, r3
lbl_800189FC:
/* 800189FC 0001581C  2C 15 00 00 */	cmpwi r21, 0x0
/* 80018A00 00015820  40 82 01 4C */	bne lbl_80018B4C
/* 80018A04 00015824  2C 16 00 00 */	cmpwi r22, 0x0
/* 80018A08 00015828  41 82 01 38 */	beq lbl_80018B40
/* 80018A0C 0001582C  38 00 00 00 */	li r0, 0x0
/* 80018A10 00015830  2C 1D 00 00 */	cmpwi r29, 0x0
/* 80018A14 00015834  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80018A18 00015838  98 01 00 08 */	stb r0, 0x8(r1)
/* 80018A1C 0001583C  41 82 00 10 */	beq lbl_80018A2C
/* 80018A20 00015840  28 17 00 00 */	cmplwi r23, 0x0
/* 80018A24 00015844  40 82 00 08 */	bne lbl_80018A2C
/* 80018A28 00015848  38 00 00 01 */	li r0, 0x1
lbl_80018A2C:
/* 80018A2C 0001584C  2C 1D 00 00 */	cmpwi r29, 0x0
/* 80018A30 00015850  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80018A34 00015854  38 81 00 14 */	addi r4, r1, 0x14
/* 80018A38 00015858  38 A0 00 05 */	li r5, 0x5
/* 80018A3C 0001585C  7C 00 00 34 */	cntlzw r0, r0
/* 80018A40 00015860  38 C0 00 03 */	li r6, 0x3
/* 80018A44 00015864  54 07 D9 7E */	srwi r7, r0, 5
/* 80018A48 00015868  4B FF FC ED */	bl TRKRequestSend
/* 80018A4C 0001586C  7C 75 1B 79 */	mr. r21, r3
/* 80018A50 00015870  40 82 00 18 */	bne lbl_80018A68
/* 80018A54 00015874  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80018A58 00015878  4B FF C9 C9 */	bl TRKGetBuffer
/* 80018A5C 0001587C  38 80 00 02 */	li r4, 0x2
/* 80018A60 00015880  7C 7C 1B 78 */	mr r28, r3
/* 80018A64 00015884  4B FF C8 E9 */	bl TRKSetBufferPosition
lbl_80018A68:
/* 80018A68 00015888  2C 15 00 00 */	cmpwi r21, 0x0
/* 80018A6C 0001588C  40 82 00 14 */	bne lbl_80018A80
/* 80018A70 00015890  7F 83 E3 78 */	mr r3, r28
/* 80018A74 00015894  38 81 00 08 */	addi r4, r1, 0x8
/* 80018A78 00015898  4B FF C4 D5 */	bl TRKReadBuffer1_ui8
/* 80018A7C 0001589C  7C 75 1B 78 */	mr r21, r3
lbl_80018A80:
/* 80018A80 000158A0  2C 15 00 00 */	cmpwi r21, 0x0
/* 80018A84 000158A4  40 82 00 14 */	bne lbl_80018A98
/* 80018A88 000158A8  7F 83 E3 78 */	mr r3, r28
/* 80018A8C 000158AC  38 81 00 0A */	addi r4, r1, 0xa
/* 80018A90 000158B0  4B FF C4 05 */	bl TRKReadBuffer1_ui16
/* 80018A94 000158B4  7C 75 1B 78 */	mr r21, r3
lbl_80018A98:
/* 80018A98 000158B8  2C 1D 00 00 */	cmpwi r29, 0x0
/* 80018A9C 000158BC  41 82 00 58 */	beq lbl_80018AF4
/* 80018AA0 000158C0  2C 15 00 00 */	cmpwi r21, 0x0
/* 80018AA4 000158C4  40 82 00 50 */	bne lbl_80018AF4
/* 80018AA8 000158C8  A0 61 00 0A */	lhz r3, 0xa(r1)
/* 80018AAC 000158CC  80 9C 00 08 */	lwz r4, 0x8(r28)
/* 80018AB0 000158D0  38 03 00 05 */	addi r0, r3, 0x5
/* 80018AB4 000158D4  7C 04 00 40 */	cmplw r4, r0
/* 80018AB8 000158D8  41 82 00 20 */	beq lbl_80018AD8
/* 80018ABC 000158DC  88 01 00 08 */	lbz r0, 0x8(r1)
/* 80018AC0 000158E0  38 64 FF FB */	addi r3, r4, -0x5
/* 80018AC4 000158E4  B0 61 00 0A */	sth r3, 0xa(r1)
/* 80018AC8 000158E8  28 00 00 00 */	cmplwi r0, 0x0
/* 80018ACC 000158EC  40 82 00 0C */	bne lbl_80018AD8
/* 80018AD0 000158F0  38 00 00 01 */	li r0, 0x1
/* 80018AD4 000158F4  98 01 00 08 */	stb r0, 0x8(r1)
lbl_80018AD8:
/* 80018AD8 000158F8  A0 A1 00 0A */	lhz r5, 0xa(r1)
/* 80018ADC 000158FC  7C 05 F8 40 */	cmplw r5, r31
/* 80018AE0 00015900  41 81 00 14 */	bgt lbl_80018AF4
/* 80018AE4 00015904  7F 83 E3 78 */	mr r3, r28
/* 80018AE8 00015908  7C 9B F2 14 */	add r4, r27, r30
/* 80018AEC 0001590C  4B FF C1 61 */	bl TRKReadBuffer_ui8
/* 80018AF0 00015910  7C 75 1B 78 */	mr r21, r3
lbl_80018AF4:
/* 80018AF4 00015914  A0 61 00 0A */	lhz r3, 0xa(r1)
/* 80018AF8 00015918  7C 03 F8 40 */	cmplw r3, r31
/* 80018AFC 0001591C  41 82 00 30 */	beq lbl_80018B2C
/* 80018B00 00015920  2C 1D 00 00 */	cmpwi r29, 0x0
/* 80018B04 00015924  41 82 00 0C */	beq lbl_80018B10
/* 80018B08 00015928  7C 03 F8 40 */	cmplw r3, r31
/* 80018B0C 0001592C  41 80 00 18 */	blt lbl_80018B24
lbl_80018B10:
/* 80018B10 00015930  88 01 00 08 */	lbz r0, 0x8(r1)
/* 80018B14 00015934  28 00 00 00 */	cmplwi r0, 0x0
/* 80018B18 00015938  40 82 00 0C */	bne lbl_80018B24
/* 80018B1C 0001593C  38 00 00 01 */	li r0, 0x1
/* 80018B20 00015940  98 01 00 08 */	stb r0, 0x8(r1)
lbl_80018B24:
/* 80018B24 00015944  7C 7F 1B 78 */	mr r31, r3
/* 80018B28 00015948  3B 20 00 01 */	li r25, 0x1
lbl_80018B2C:
/* 80018B2C 0001594C  88 01 00 08 */	lbz r0, 0x8(r1)
/* 80018B30 00015950  98 1A 00 00 */	stb r0, 0x0(r26)
/* 80018B34 00015954  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80018B38 00015958  4B FF C8 85 */	bl TRKReleaseBuffer
/* 80018B3C 0001595C  48 00 00 10 */	b lbl_80018B4C
lbl_80018B40:
/* 80018B40 00015960  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80018B44 00015964  4B FF BE 3D */	bl TRKMessageSend
/* 80018B48 00015968  7C 75 1B 78 */	mr r21, r3
lbl_80018B4C:
/* 80018B4C 0001596C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80018B50 00015970  4B FF C8 6D */	bl TRKReleaseBuffer
/* 80018B54 00015974  7F DE FA 14 */	add r30, r30, r31
lbl_80018B58:
/* 80018B58 00015978  2C 19 00 00 */	cmpwi r25, 0x0
/* 80018B5C 0001597C  40 82 00 24 */	bne lbl_80018B80
/* 80018B60 00015980  80 78 00 00 */	lwz r3, 0x0(r24)
/* 80018B64 00015984  7C 1E 18 40 */	cmplw r30, r3
/* 80018B68 00015988  40 80 00 18 */	bge lbl_80018B80
/* 80018B6C 0001598C  2C 15 00 00 */	cmpwi r21, 0x0
/* 80018B70 00015990  40 82 00 10 */	bne lbl_80018B80
/* 80018B74 00015994  88 1A 00 00 */	lbz r0, 0x0(r26)
/* 80018B78 00015998  28 00 00 00 */	cmplwi r0, 0x0
/* 80018B7C 0001599C  41 82 FD B4 */	beq lbl_80018930
lbl_80018B80:
/* 80018B80 000159A0  93 D8 00 00 */	stw r30, 0x0(r24)
/* 80018B84 000159A4  7E A3 AB 78 */	mr r3, r21
lbl_80018B88:
/* 80018B88 000159A8  BA A1 00 24 */	lmw r21, 0x24(r1)
/* 80018B8C 000159AC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80018B90 000159B0  7C 08 03 A6 */	mtlr r0
/* 80018B94 000159B4  38 21 00 50 */	addi r1, r1, 0x50
/* 80018B98 000159B8  4E 80 00 20 */	blr
