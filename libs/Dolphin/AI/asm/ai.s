.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global AIRegisterDMACallback
AIRegisterDMACallback:
/* 8001B1A0 00017FC0  7C 08 02 A6 */	mflr r0
/* 8001B1A4 00017FC4  90 01 00 04 */	stw r0, 0x4(r1)
/* 8001B1A8 00017FC8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8001B1AC 00017FCC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8001B1B0 00017FD0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8001B1B4 00017FD4  7C 7E 1B 78 */	mr r30, r3
/* 8001B1B8 00017FD8  83 ED 82 9C */	lwz r31, __AID_Callback@sda21(r13)
/* 8001B1BC 00017FDC  48 02 3B 09 */	bl OSDisableInterrupts
/* 8001B1C0 00017FE0  93 CD 82 9C */	stw r30, __AID_Callback@sda21(r13)
/* 8001B1C4 00017FE4  48 02 3B 29 */	bl OSRestoreInterrupts
/* 8001B1C8 00017FE8  7F E3 FB 78 */	mr r3, r31
/* 8001B1CC 00017FEC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8001B1D0 00017FF0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8001B1D4 00017FF4  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8001B1D8 00017FF8  38 21 00 18 */	addi r1, r1, 0x18
/* 8001B1DC 00017FFC  7C 08 03 A6 */	mtlr r0
/* 8001B1E0 00018000  4E 80 00 20 */	blr

.global AIInitDMA
AIInitDMA:
/* 8001B1E4 00018004  7C 08 02 A6 */	mflr r0
/* 8001B1E8 00018008  90 01 00 04 */	stw r0, 0x4(r1)
/* 8001B1EC 0001800C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8001B1F0 00018010  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8001B1F4 00018014  3B E4 00 00 */	addi r31, r4, 0x0
/* 8001B1F8 00018018  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8001B1FC 0001801C  3B C3 00 00 */	addi r30, r3, 0x0
/* 8001B200 00018020  48 02 3A C5 */	bl OSDisableInterrupts
/* 8001B204 00018024  3C 80 CC 00 */	lis r4, 0xCC005030@ha
/* 8001B208 00018028  A0 04 50 30 */	lhz r0, 0xCC005030@l(r4)
/* 8001B20C 0001802C  38 A4 50 00 */	addi r5, r4, 0x5000
/* 8001B210 00018030  38 C4 50 00 */	addi r6, r4, 0x5000
/* 8001B214 00018034  38 E4 50 00 */	addi r7, r4, 0x5000
/* 8001B218 00018038  54 04 00 2A */	rlwinm r4, r0, 0, 0, 21
/* 8001B21C 0001803C  57 C0 84 3E */	srwi r0, r30, 16
/* 8001B220 00018040  7C 80 03 78 */	or r0, r4, r0
/* 8001B224 00018044  B0 05 00 30 */	sth r0, 0x30(r5)
/* 8001B228 00018048  57 C0 04 3E */	clrlwi r0, r30, 16
/* 8001B22C 0001804C  A0 86 00 32 */	lhz r4, 0x32(r6)
/* 8001B230 00018050  54 84 06 DE */	rlwinm r4, r4, 0, 27, 15
/* 8001B234 00018054  7C 80 03 78 */	or r0, r4, r0
/* 8001B238 00018058  B0 06 00 32 */	sth r0, 0x32(r6)
/* 8001B23C 0001805C  57 E0 DC 3E */	rlwinm r0, r31, 27, 16, 31
/* 8001B240 00018060  A0 87 00 36 */	lhz r4, 0x36(r7)
/* 8001B244 00018064  54 84 00 20 */	rlwinm r4, r4, 0, 0, 16
/* 8001B248 00018068  7C 80 03 78 */	or r0, r4, r0
/* 8001B24C 0001806C  B0 07 00 36 */	sth r0, 0x36(r7)
/* 8001B250 00018070  48 02 3A 9D */	bl OSRestoreInterrupts
/* 8001B254 00018074  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8001B258 00018078  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8001B25C 0001807C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8001B260 00018080  38 21 00 18 */	addi r1, r1, 0x18
/* 8001B264 00018084  7C 08 03 A6 */	mtlr r0
/* 8001B268 00018088  4E 80 00 20 */	blr

.global AIStartDMA
AIStartDMA:
/* 8001B26C 0001808C  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 8001B270 00018090  38 63 50 00 */	addi r3, r3, 0xCC005000@l
/* 8001B274 00018094  A0 03 00 36 */	lhz r0, 0x36(r3)
/* 8001B278 00018098  60 00 80 00 */	ori r0, r0, 0x8000
/* 8001B27C 0001809C  B0 03 00 36 */	sth r0, 0x36(r3)
/* 8001B280 000180A0  4E 80 00 20 */	blr

.global AISetStreamPlayState
AISetStreamPlayState:
/* 8001B284 000180A4  7C 08 02 A6 */	mflr r0
/* 8001B288 000180A8  90 01 00 04 */	stw r0, 0x4(r1)
/* 8001B28C 000180AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001B290 000180B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001B294 000180B4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8001B298 000180B8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8001B29C 000180BC  7C 7D 1B 78 */	mr r29, r3
/* 8001B2A0 000180C0  48 00 00 BD */	bl AIGetStreamPlayState
/* 8001B2A4 000180C4  7C 1D 18 40 */	cmplw r29, r3
/* 8001B2A8 000180C8  41 82 00 98 */	beq lbl_8001B340
/* 8001B2AC 000180CC  48 00 02 89 */	bl AIGetStreamSampleRate
/* 8001B2B0 000180D0  28 03 00 00 */	cmplwi r3, 0x0
/* 8001B2B4 000180D4  40 82 00 78 */	bne lbl_8001B32C
/* 8001B2B8 000180D8  28 1D 00 01 */	cmplwi r29, 0x1
/* 8001B2BC 000180DC  40 82 00 70 */	bne lbl_8001B32C
/* 8001B2C0 000180E0  48 00 02 CD */	bl AIGetStreamVolRight
/* 8001B2C4 000180E4  7C 7E 1B 78 */	mr r30, r3
/* 8001B2C8 000180E8  48 00 02 99 */	bl AIGetStreamVolLeft
/* 8001B2CC 000180EC  3B A3 00 00 */	addi r29, r3, 0x0
/* 8001B2D0 000180F0  38 60 00 00 */	li r3, 0x0
/* 8001B2D4 000180F4  48 00 02 9D */	bl AISetStreamVolRight
/* 8001B2D8 000180F8  38 60 00 00 */	li r3, 0x0
/* 8001B2DC 000180FC  48 00 02 69 */	bl AISetStreamVolLeft
/* 8001B2E0 00018100  48 02 39 E5 */	bl OSDisableInterrupts
/* 8001B2E4 00018104  7C 7F 1B 78 */	mr r31, r3
/* 8001B2E8 00018108  48 00 05 A1 */	bl __AI_SRC_INIT
/* 8001B2EC 0001810C  3C 80 CC 00 */	lis r4, 0xCC006C00@ha
/* 8001B2F0 00018110  80 04 6C 00 */	lwz r0, 0xCC006C00@l(r4)
/* 8001B2F4 00018114  38 7F 00 00 */	addi r3, r31, 0x0
/* 8001B2F8 00018118  54 00 06 F2 */	rlwinm r0, r0, 0, 27, 25
/* 8001B2FC 0001811C  60 00 00 20 */	ori r0, r0, 0x20
/* 8001B300 00018120  90 04 6C 00 */	stw r0, 0x6c00(r4)
/* 8001B304 00018124  80 04 6C 00 */	lwz r0, 0x6c00(r4)
/* 8001B308 00018128  54 00 00 3C */	rlwinm r0, r0, 0, 0, 30
/* 8001B30C 0001812C  60 00 00 01 */	ori r0, r0, 0x1
/* 8001B310 00018130  90 04 6C 00 */	stw r0, 0x6c00(r4)
/* 8001B314 00018134  48 02 39 D9 */	bl OSRestoreInterrupts
/* 8001B318 00018138  7F C3 F3 78 */	mr r3, r30
/* 8001B31C 0001813C  48 00 02 29 */	bl AISetStreamVolLeft
/* 8001B320 00018140  7F A3 EB 78 */	mr r3, r29
/* 8001B324 00018144  48 00 02 4D */	bl AISetStreamVolRight
/* 8001B328 00018148  48 00 00 18 */	b lbl_8001B340
lbl_8001B32C:
/* 8001B32C 0001814C  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 8001B330 00018150  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 8001B334 00018154  54 00 00 3C */	rlwinm r0, r0, 0, 0, 30
/* 8001B338 00018158  7C 00 EB 78 */	or r0, r0, r29
/* 8001B33C 0001815C  90 03 6C 00 */	stw r0, 0x6c00(r3)
lbl_8001B340:
/* 8001B340 00018160  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001B344 00018164  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8001B348 00018168  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8001B34C 0001816C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8001B350 00018170  38 21 00 20 */	addi r1, r1, 0x20
/* 8001B354 00018174  7C 08 03 A6 */	mtlr r0
/* 8001B358 00018178  4E 80 00 20 */	blr

.global AIGetStreamPlayState
AIGetStreamPlayState:
/* 8001B35C 0001817C  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 8001B360 00018180  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 8001B364 00018184  54 03 07 FE */	clrlwi r3, r0, 31
/* 8001B368 00018188  4E 80 00 20 */	blr

.global AISetDSPSampleRate
AISetDSPSampleRate:
/* 8001B36C 0001818C  7C 08 02 A6 */	mflr r0
/* 8001B370 00018190  90 01 00 04 */	stw r0, 0x4(r1)
/* 8001B374 00018194  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8001B378 00018198  BF 41 00 10 */	stmw r26, 0x10(r1)
/* 8001B37C 0001819C  7C 7A 1B 78 */	mr r26, r3
/* 8001B380 000181A0  48 00 00 CD */	bl AIGetDSPSampleRate
/* 8001B384 000181A4  7C 1A 18 40 */	cmplw r26, r3
/* 8001B388 000181A8  41 82 00 B0 */	beq lbl_8001B438
/* 8001B38C 000181AC  3F E0 CC 00 */	lis r31, 0xCC006C00@ha
/* 8001B390 000181B0  80 1F 6C 00 */	lwz r0, 0xCC006C00@l(r31)
/* 8001B394 000181B4  28 1A 00 00 */	cmplwi r26, 0x0
/* 8001B398 000181B8  54 00 06 B0 */	rlwinm r0, r0, 0, 26, 24
/* 8001B39C 000181BC  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8001B3A0 000181C0  40 82 00 98 */	bne lbl_8001B438
/* 8001B3A4 000181C4  48 00 01 BD */	bl AIGetStreamVolLeft
/* 8001B3A8 000181C8  7C 7E 1B 78 */	mr r30, r3
/* 8001B3AC 000181CC  48 00 01 E1 */	bl AIGetStreamVolRight
/* 8001B3B0 000181D0  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8001B3B4 000181D4  3B A3 00 00 */	addi r29, r3, 0x0
/* 8001B3B8 000181D8  54 1B 07 FE */	clrlwi r27, r0, 31
/* 8001B3BC 000181DC  48 00 01 79 */	bl AIGetStreamSampleRate
/* 8001B3C0 000181E0  3B 83 00 00 */	addi r28, r3, 0x0
/* 8001B3C4 000181E4  38 60 00 00 */	li r3, 0x0
/* 8001B3C8 000181E8  48 00 01 7D */	bl AISetStreamVolLeft
/* 8001B3CC 000181EC  38 60 00 00 */	li r3, 0x0
/* 8001B3D0 000181F0  48 00 01 A1 */	bl AISetStreamVolRight
/* 8001B3D4 000181F4  48 02 38 F1 */	bl OSDisableInterrupts
/* 8001B3D8 000181F8  7C 7A 1B 78 */	mr r26, r3
/* 8001B3DC 000181FC  48 00 04 AD */	bl __AI_SRC_INIT
/* 8001B3E0 00018200  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 8001B3E4 00018204  57 80 08 3C */	slwi r0, r28, 1
/* 8001B3E8 00018208  38 7A 00 00 */	addi r3, r26, 0x0
/* 8001B3EC 0001820C  54 84 06 F2 */	rlwinm r4, r4, 0, 27, 25
/* 8001B3F0 00018210  60 84 00 20 */	ori r4, r4, 0x20
/* 8001B3F4 00018214  90 9F 6C 00 */	stw r4, 0x6c00(r31)
/* 8001B3F8 00018218  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 8001B3FC 0001821C  54 84 07 FA */	rlwinm r4, r4, 0, 31, 29
/* 8001B400 00018220  7C 80 03 78 */	or r0, r4, r0
/* 8001B404 00018224  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8001B408 00018228  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8001B40C 0001822C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 30
/* 8001B410 00018230  7C 00 DB 78 */	or r0, r0, r27
/* 8001B414 00018234  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8001B418 00018238  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8001B41C 0001823C  60 00 00 40 */	ori r0, r0, 0x40
/* 8001B420 00018240  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8001B424 00018244  48 02 38 C9 */	bl OSRestoreInterrupts
/* 8001B428 00018248  7F C3 F3 78 */	mr r3, r30
/* 8001B42C 0001824C  48 00 01 19 */	bl AISetStreamVolLeft
/* 8001B430 00018250  7F A3 EB 78 */	mr r3, r29
/* 8001B434 00018254  48 00 01 3D */	bl AISetStreamVolRight
lbl_8001B438:
/* 8001B438 00018258  BB 41 00 10 */	lmw r26, 0x10(r1)
/* 8001B43C 0001825C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8001B440 00018260  38 21 00 28 */	addi r1, r1, 0x28
/* 8001B444 00018264  7C 08 03 A6 */	mtlr r0
/* 8001B448 00018268  4E 80 00 20 */	blr

.global AIGetDSPSampleRate
AIGetDSPSampleRate:
/* 8001B44C 0001826C  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 8001B450 00018270  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 8001B454 00018274  54 00 D7 FE */	rlwinm r0, r0, 26, 31, 31
/* 8001B458 00018278  68 03 00 01 */	xori r3, r0, 0x1
/* 8001B45C 0001827C  4E 80 00 20 */	blr

.global __AI_set_stream_sample_rate
__AI_set_stream_sample_rate:
/* 8001B460 00018280  7C 08 02 A6 */	mflr r0
/* 8001B464 00018284  90 01 00 04 */	stw r0, 0x4(r1)
/* 8001B468 00018288  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8001B46C 0001828C  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 8001B470 00018290  7C 79 1B 78 */	mr r25, r3
/* 8001B474 00018294  48 00 00 C1 */	bl AIGetStreamSampleRate
/* 8001B478 00018298  7C 19 18 40 */	cmplw r25, r3
/* 8001B47C 0001829C  41 82 00 A4 */	beq lbl_8001B520
/* 8001B480 000182A0  3F E0 CC 00 */	lis r31, 0xCC006C00@ha
/* 8001B484 000182A4  80 1F 6C 00 */	lwz r0, 0xCC006C00@l(r31)
/* 8001B488 000182A8  54 00 07 FE */	clrlwi r0, r0, 31
/* 8001B48C 000182AC  7C 1D 03 78 */	mr r29, r0
/* 8001B490 000182B0  48 00 00 D1 */	bl AIGetStreamVolLeft
/* 8001B494 000182B4  7C 7C 1B 78 */	mr r28, r3
/* 8001B498 000182B8  48 00 00 F5 */	bl AIGetStreamVolRight
/* 8001B49C 000182BC  3B 63 00 00 */	addi r27, r3, 0x0
/* 8001B4A0 000182C0  38 60 00 00 */	li r3, 0x0
/* 8001B4A4 000182C4  48 00 00 CD */	bl AISetStreamVolRight
/* 8001B4A8 000182C8  38 60 00 00 */	li r3, 0x0
/* 8001B4AC 000182CC  48 00 00 99 */	bl AISetStreamVolLeft
/* 8001B4B0 000182D0  80 7F 6C 00 */	lwz r3, 0x6c00(r31)
/* 8001B4B4 000182D4  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8001B4B8 000182D8  54 7A 06 72 */	rlwinm r26, r3, 0, 25, 25
/* 8001B4BC 000182DC  54 00 06 B0 */	rlwinm r0, r0, 0, 26, 24
/* 8001B4C0 000182E0  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8001B4C4 000182E4  48 02 38 01 */	bl OSDisableInterrupts
/* 8001B4C8 000182E8  7C 7E 1B 78 */	mr r30, r3
/* 8001B4CC 000182EC  48 00 03 BD */	bl __AI_SRC_INIT
/* 8001B4D0 000182F0  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 8001B4D4 000182F4  57 20 08 3C */	slwi r0, r25, 1
/* 8001B4D8 000182F8  38 7E 00 00 */	addi r3, r30, 0x0
/* 8001B4DC 000182FC  7C 84 D3 78 */	or r4, r4, r26
/* 8001B4E0 00018300  90 9F 6C 00 */	stw r4, 0x6c00(r31)
/* 8001B4E4 00018304  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 8001B4E8 00018308  54 84 06 F2 */	rlwinm r4, r4, 0, 27, 25
/* 8001B4EC 0001830C  60 84 00 20 */	ori r4, r4, 0x20
/* 8001B4F0 00018310  90 9F 6C 00 */	stw r4, 0x6c00(r31)
/* 8001B4F4 00018314  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 8001B4F8 00018318  54 84 07 FA */	rlwinm r4, r4, 0, 31, 29
/* 8001B4FC 0001831C  7C 80 03 78 */	or r0, r4, r0
/* 8001B500 00018320  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8001B504 00018324  48 02 37 E9 */	bl OSRestoreInterrupts
/* 8001B508 00018328  7F A3 EB 78 */	mr r3, r29
/* 8001B50C 0001832C  4B FF FD 79 */	bl AISetStreamPlayState
/* 8001B510 00018330  7F 83 E3 78 */	mr r3, r28
/* 8001B514 00018334  48 00 00 31 */	bl AISetStreamVolLeft
/* 8001B518 00018338  7F 63 DB 78 */	mr r3, r27
/* 8001B51C 0001833C  48 00 00 55 */	bl AISetStreamVolRight
lbl_8001B520:
/* 8001B520 00018340  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 8001B524 00018344  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8001B528 00018348  38 21 00 30 */	addi r1, r1, 0x30
/* 8001B52C 0001834C  7C 08 03 A6 */	mtlr r0
/* 8001B530 00018350  4E 80 00 20 */	blr

.global AIGetStreamSampleRate
AIGetStreamSampleRate:
/* 8001B534 00018354  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 8001B538 00018358  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 8001B53C 0001835C  54 03 FF FE */	rlwinm r3, r0, 31, 31, 31
/* 8001B540 00018360  4E 80 00 20 */	blr

.global AISetStreamVolLeft
AISetStreamVolLeft:
/* 8001B544 00018364  3C 80 CC 00 */	lis r4, 0xCC006C00@ha
/* 8001B548 00018368  38 84 6C 00 */	addi r4, r4, 0xCC006C00@l
/* 8001B54C 0001836C  80 04 00 04 */	lwz r0, 0x4(r4)
/* 8001B550 00018370  54 00 00 2E */	rlwinm r0, r0, 0, 0, 23
/* 8001B554 00018374  50 60 06 3E */	rlwimi r0, r3, 0, 24, 31
/* 8001B558 00018378  90 04 00 04 */	stw r0, 0x4(r4)
/* 8001B55C 0001837C  4E 80 00 20 */	blr

.global AIGetStreamVolLeft
AIGetStreamVolLeft:
/* 8001B560 00018380  3C 60 CC 00 */	lis r3, 0xCC006C04@ha
/* 8001B564 00018384  80 03 6C 04 */	lwz r0, 0xCC006C04@l(r3)
/* 8001B568 00018388  54 03 06 3E */	clrlwi r3, r0, 24
/* 8001B56C 0001838C  4E 80 00 20 */	blr

.global AISetStreamVolRight
AISetStreamVolRight:
/* 8001B570 00018390  3C 80 CC 00 */	lis r4, 0xCC006C00@ha
/* 8001B574 00018394  38 84 6C 00 */	addi r4, r4, 0xCC006C00@l
/* 8001B578 00018398  80 04 00 04 */	lwz r0, 0x4(r4)
/* 8001B57C 0001839C  54 00 06 1E */	rlwinm r0, r0, 0, 24, 15
/* 8001B580 000183A0  50 60 44 2E */	rlwimi r0, r3, 8, 16, 23
/* 8001B584 000183A4  90 04 00 04 */	stw r0, 0x4(r4)
/* 8001B588 000183A8  4E 80 00 20 */	blr

.global AIGetStreamVolRight
AIGetStreamVolRight:
/* 8001B58C 000183AC  3C 60 CC 00 */	lis r3, 0xCC006C04@ha
/* 8001B590 000183B0  80 03 6C 04 */	lwz r0, 0xCC006C04@l(r3)
/* 8001B594 000183B4  54 03 C6 3E */	rlwinm r3, r0, 24, 24, 31
/* 8001B598 000183B8  4E 80 00 20 */	blr

.global AIInit
AIInit:
/* 8001B59C 000183BC  7C 08 02 A6 */	mflr r0
/* 8001B5A0 000183C0  90 01 00 04 */	stw r0, 0x4(r1)
/* 8001B5A4 000183C4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8001B5A8 000183C8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8001B5AC 000183CC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8001B5B0 000183D0  3B C3 00 00 */	addi r30, r3, 0x0
/* 8001B5B4 000183D4  80 0D 82 A8 */	lwz r0, __AI_init_flag@sda21(r13)
/* 8001B5B8 000183D8  2C 00 00 01 */	cmpwi r0, 0x1
/* 8001B5BC 000183DC  41 82 01 34 */	beq lbl_8001B6F0
/* 8001B5C0 000183E0  80 6D 80 60 */	lwz r3, __AIVersion@sda21(r13)
/* 8001B5C4 000183E4  48 02 04 55 */	bl OSRegisterVersion
/* 8001B5C8 000183E8  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 8001B5CC 000183EC  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 8001B5D0 000183F0  3C 60 43 1C */	lis r3, 0x431c
/* 8001B5D4 000183F4  3C 80 00 01 */	lis r4, 0x1
/* 8001B5D8 000183F8  54 00 F0 BE */	srwi r0, r0, 2
/* 8001B5DC 000183FC  38 63 DE 83 */	addi r3, r3, -0x217d
/* 8001B5E0 00018400  7C 03 00 16 */	mulhwu r0, r3, r0
/* 8001B5E4 00018404  54 09 8B FE */	srwi r9, r0, 15
/* 8001B5E8 00018408  38 A4 A4 28 */	addi r5, r4, -0x5bd8
/* 8001B5EC 0001840C  38 64 A4 10 */	addi r3, r4, -0x5bf0
/* 8001B5F0 00018410  38 04 F6 18 */	addi r0, r4, -0x9e8
/* 8001B5F4 00018414  3C 80 10 62 */	lis r4, 0x1062
/* 8001B5F8 00018418  7C E9 29 D6 */	mullw r7, r9, r5
/* 8001B5FC 0001841C  39 44 4D D3 */	addi r10, r4, 0x4dd3
/* 8001B600 00018420  7C A9 19 D6 */	mullw r5, r9, r3
/* 8001B604 00018424  7C 89 01 D6 */	mullw r4, r9, r0
/* 8001B608 00018428  1D 09 7B 24 */	mulli r8, r9, 0x7b24
/* 8001B60C 0001842C  1C 69 0B B8 */	mulli r3, r9, 0xbb8
/* 8001B610 00018430  7D 0A 40 16 */	mulhwu r8, r10, r8
/* 8001B614 00018434  7C EA 38 16 */	mulhwu r7, r10, r7
/* 8001B618 00018438  7C AA 28 16 */	mulhwu r5, r10, r5
/* 8001B61C 0001843C  7C 8A 20 16 */	mulhwu r4, r10, r4
/* 8001B620 00018440  7C 6A 18 16 */	mulhwu r3, r10, r3
/* 8001B624 00018444  55 08 BA 7E */	srwi r8, r8, 9
/* 8001B628 00018448  54 E7 BA 7E */	srwi r7, r7, 9
/* 8001B62C 0001844C  91 0D 82 B4 */	stw r8, bound_32KHz+4@sda21(r13)
/* 8001B630 00018450  54 A5 BA 7E */	srwi r5, r5, 9
/* 8001B634 00018454  54 84 BA 7E */	srwi r4, r4, 9
/* 8001B638 00018458  90 ED 82 BC */	stw r7, bound_48KHz+4@sda21(r13)
/* 8001B63C 0001845C  3B E0 00 00 */	li r31, 0x0
/* 8001B640 00018460  54 63 BA 7E */	srwi r3, r3, 9
/* 8001B644 00018464  90 AD 82 C4 */	stw r5, min_wait+4@sda21(r13)
/* 8001B648 00018468  3C C0 CC 00 */	lis r6, 0xCC006C00@ha
/* 8001B64C 0001846C  90 6D 82 D4 */	stw r3, buffer+4@sda21(r13)
/* 8001B650 00018470  38 60 00 01 */	li r3, 0x1
/* 8001B654 00018474  80 06 6C 00 */	lwz r0, 0xCC006C00@l(r6)
/* 8001B658 00018478  90 8D 82 CC */	stw r4, max_wait+4@sda21(r13)
/* 8001B65C 0001847C  54 00 06 F2 */	rlwinm r0, r0, 0, 27, 25
/* 8001B660 00018480  60 00 00 20 */	ori r0, r0, 0x20
/* 8001B664 00018484  93 ED 82 B0 */	stw r31, bound_32KHz@sda21(r13)
/* 8001B668 00018488  93 ED 82 B8 */	stw r31, bound_48KHz@sda21(r13)
/* 8001B66C 0001848C  93 ED 82 C0 */	stw r31, min_wait@sda21(r13)
/* 8001B670 00018490  93 ED 82 C8 */	stw r31, max_wait@sda21(r13)
/* 8001B674 00018494  93 ED 82 D0 */	stw r31, buffer@sda21(r13)
/* 8001B678 00018498  80 A6 6C 04 */	lwz r5, 0x6c04(r6)
/* 8001B67C 0001849C  90 06 6C 00 */	stw r0, 0x6c00(r6)
/* 8001B680 000184A0  54 A0 06 1E */	rlwinm r0, r5, 0, 24, 15
/* 8001B684 000184A4  60 00 00 00 */	nop
/* 8001B688 000184A8  90 06 6C 04 */	stw r0, 0x6c04(r6)
/* 8001B68C 000184AC  80 06 6C 04 */	lwz r0, 0x6c04(r6)
/* 8001B690 000184B0  54 00 00 2E */	rlwinm r0, r0, 0, 0, 23
/* 8001B694 000184B4  60 00 00 00 */	nop
/* 8001B698 000184B8  90 06 6C 04 */	stw r0, 0x6c04(r6)
/* 8001B69C 000184BC  93 E6 6C 0C */	stw r31, 0x6c0c(r6)
/* 8001B6A0 000184C0  4B FF FD C1 */	bl __AI_set_stream_sample_rate
/* 8001B6A4 000184C4  38 60 00 00 */	li r3, 0x0
/* 8001B6A8 000184C8  4B FF FC C5 */	bl AISetDSPSampleRate
/* 8001B6AC 000184CC  3C 60 80 02 */	lis r3, __AIDHandler@ha
/* 8001B6B0 000184D0  93 ED 82 98 */	stw r31, __AIS_Callback@sda21(r13)
/* 8001B6B4 000184D4  38 83 B7 84 */	addi r4, r3, __AIDHandler@l
/* 8001B6B8 000184D8  93 ED 82 9C */	stw r31, __AID_Callback@sda21(r13)
/* 8001B6BC 000184DC  38 60 00 05 */	li r3, 0x5
/* 8001B6C0 000184E0  93 CD 82 A0 */	stw r30, __CallbackStack@sda21(r13)
/* 8001B6C4 000184E4  48 02 36 4D */	bl __OSSetInterruptHandler
/* 8001B6C8 000184E8  3C 60 04 00 */	lis r3, 0x400
/* 8001B6CC 000184EC  48 02 3A 49 */	bl __OSUnmaskInterrupts
/* 8001B6D0 000184F0  3C 60 80 02 */	lis r3, __AISHandler@ha
/* 8001B6D4 000184F4  38 83 B7 08 */	addi r4, r3, __AISHandler@l
/* 8001B6D8 000184F8  38 60 00 08 */	li r3, 0x8
/* 8001B6DC 000184FC  48 02 36 35 */	bl __OSSetInterruptHandler
/* 8001B6E0 00018500  3C 60 00 80 */	lis r3, 0x80
/* 8001B6E4 00018504  48 02 3A 31 */	bl __OSUnmaskInterrupts
/* 8001B6E8 00018508  38 00 00 01 */	li r0, 0x1
/* 8001B6EC 0001850C  90 0D 82 A8 */	stw r0, __AI_init_flag@sda21(r13)
lbl_8001B6F0:
/* 8001B6F0 00018510  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8001B6F4 00018514  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8001B6F8 00018518  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8001B6FC 0001851C  38 21 00 18 */	addi r1, r1, 0x18
/* 8001B700 00018520  7C 08 03 A6 */	mtlr r0
/* 8001B704 00018524  4E 80 00 20 */	blr

.global __AISHandler
__AISHandler:
/* 8001B708 00018528  7C 08 02 A6 */	mflr r0
/* 8001B70C 0001852C  90 01 00 04 */	stw r0, 0x4(r1)
/* 8001B710 00018530  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 8001B714 00018534  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 8001B718 00018538  3F E0 CC 00 */	lis r31, 0xCC006C00@ha
/* 8001B71C 0001853C  80 1F 6C 00 */	lwz r0, 0xCC006C00@l(r31)
/* 8001B720 00018540  38 61 00 10 */	addi r3, r1, 0x10
/* 8001B724 00018544  93 C1 02 D8 */	stw r30, 0x2d8(r1)
/* 8001B728 00018548  60 00 00 08 */	ori r0, r0, 0x8
/* 8001B72C 0001854C  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8001B730 00018550  3B C4 00 00 */	addi r30, r4, 0x0
/* 8001B734 00018554  48 02 1D 31 */	bl OSClearContext
/* 8001B738 00018558  38 61 00 10 */	addi r3, r1, 0x10
/* 8001B73C 0001855C  48 02 1B 61 */	bl OSSetCurrentContext
/* 8001B740 00018560  81 8D 82 98 */	lwz r12, __AIS_Callback@sda21(r13)
/* 8001B744 00018564  28 0C 00 00 */	cmplwi r12, 0x0
/* 8001B748 00018568  41 82 00 14 */	beq lbl_8001B75C
/* 8001B74C 0001856C  38 7F 6C 00 */	addi r3, r31, 0x6c00
/* 8001B750 00018570  7D 88 03 A6 */	mtlr r12
/* 8001B754 00018574  80 63 00 08 */	lwz r3, 0x8(r3)
/* 8001B758 00018578  4E 80 00 21 */	blrl
lbl_8001B75C:
/* 8001B75C 0001857C  38 61 00 10 */	addi r3, r1, 0x10
/* 8001B760 00018580  48 02 1D 05 */	bl OSClearContext
/* 8001B764 00018584  7F C3 F3 78 */	mr r3, r30
/* 8001B768 00018588  48 02 1B 35 */	bl OSSetCurrentContext
/* 8001B76C 0001858C  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 8001B770 00018590  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 8001B774 00018594  83 C1 02 D8 */	lwz r30, 0x2d8(r1)
/* 8001B778 00018598  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 8001B77C 0001859C  7C 08 03 A6 */	mtlr r0
/* 8001B780 000185A0  4E 80 00 20 */	blr

.global __AIDHandler
__AIDHandler:
/* 8001B784 000185A4  7C 08 02 A6 */	mflr r0
/* 8001B788 000185A8  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 8001B78C 000185AC  90 01 00 04 */	stw r0, 0x4(r1)
/* 8001B790 000185B0  38 63 50 00 */	addi r3, r3, 0xCC005000@l
/* 8001B794 000185B4  38 00 FF 5F */	li r0, -0xa1
/* 8001B798 000185B8  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 8001B79C 000185BC  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 8001B7A0 000185C0  3B E4 00 00 */	addi r31, r4, 0x0
/* 8001B7A4 000185C4  A0 A3 00 0A */	lhz r5, 0xa(r3)
/* 8001B7A8 000185C8  7C A0 00 38 */	and r0, r5, r0
/* 8001B7AC 000185CC  60 00 00 08 */	ori r0, r0, 0x8
/* 8001B7B0 000185D0  B0 03 00 0A */	sth r0, 0xa(r3)
/* 8001B7B4 000185D4  38 61 00 10 */	addi r3, r1, 0x10
/* 8001B7B8 000185D8  48 02 1C AD */	bl OSClearContext
/* 8001B7BC 000185DC  38 61 00 10 */	addi r3, r1, 0x10
/* 8001B7C0 000185E0  48 02 1A DD */	bl OSSetCurrentContext
/* 8001B7C4 000185E4  80 6D 82 9C */	lwz r3, __AID_Callback@sda21(r13)
/* 8001B7C8 000185E8  28 03 00 00 */	cmplwi r3, 0x0
/* 8001B7CC 000185EC  41 82 00 40 */	beq lbl_8001B80C
/* 8001B7D0 000185F0  80 0D 82 AC */	lwz r0, __AID_Active@sda21(r13)
/* 8001B7D4 000185F4  2C 00 00 00 */	cmpwi r0, 0x0
/* 8001B7D8 000185F8  40 82 00 34 */	bne lbl_8001B80C
/* 8001B7DC 000185FC  80 0D 82 A0 */	lwz r0, __CallbackStack@sda21(r13)
/* 8001B7E0 00018600  38 80 00 01 */	li r4, 0x1
/* 8001B7E4 00018604  90 8D 82 AC */	stw r4, __AID_Active@sda21(r13)
/* 8001B7E8 00018608  28 00 00 00 */	cmplwi r0, 0x0
/* 8001B7EC 0001860C  41 82 00 0C */	beq lbl_8001B7F8
/* 8001B7F0 00018610  48 00 00 41 */	bl __AICallbackStackSwitch
/* 8001B7F4 00018614  48 00 00 10 */	b lbl_8001B804
lbl_8001B7F8:
/* 8001B7F8 00018618  39 83 00 00 */	addi r12, r3, 0x0
/* 8001B7FC 0001861C  7D 88 03 A6 */	mtlr r12
/* 8001B800 00018620  4E 80 00 21 */	blrl
lbl_8001B804:
/* 8001B804 00018624  38 00 00 00 */	li r0, 0x0
/* 8001B808 00018628  90 0D 82 AC */	stw r0, __AID_Active@sda21(r13)
lbl_8001B80C:
/* 8001B80C 0001862C  38 61 00 10 */	addi r3, r1, 0x10
/* 8001B810 00018630  48 02 1C 55 */	bl OSClearContext
/* 8001B814 00018634  7F E3 FB 78 */	mr r3, r31
/* 8001B818 00018638  48 02 1A 85 */	bl OSSetCurrentContext
/* 8001B81C 0001863C  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 8001B820 00018640  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 8001B824 00018644  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 8001B828 00018648  7C 08 03 A6 */	mtlr r0
/* 8001B82C 0001864C  4E 80 00 20 */	blr

.global __AICallbackStackSwitch
__AICallbackStackSwitch:
/* 8001B830 00018650  7C 08 02 A6 */	mflr r0
/* 8001B834 00018654  90 01 00 04 */	stw r0, 0x4(r1)
/* 8001B838 00018658  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8001B83C 0001865C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8001B840 00018660  7C 7F 1B 78 */	mr r31, r3
/* 8001B844 00018664  3C A0 80 0C */	lis r5, __OldStack@ha
/* 8001B848 00018668  38 A5 41 04 */	addi r5, r5, __OldStack@l
/* 8001B84C 0001866C  90 25 00 00 */	stw r1, 0x0(r5)
/* 8001B850 00018670  3C A0 80 0C */	lis r5, __CallbackStack@ha
/* 8001B854 00018674  38 A5 41 00 */	addi r5, r5, __CallbackStack@l
/* 8001B858 00018678  80 25 00 00 */	lwz r1, 0x0(r5)
/* 8001B85C 0001867C  38 21 FF F8 */	addi r1, r1, -0x8
/* 8001B860 00018680  7F E8 03 A6 */	mtlr r31
/* 8001B864 00018684  4E 80 00 21 */	blrl
/* 8001B868 00018688  3C A0 80 0C */	lis r5, __OldStack@ha
/* 8001B86C 0001868C  38 A5 41 04 */	addi r5, r5, __OldStack@l
/* 8001B870 00018690  80 25 00 00 */	lwz r1, 0x0(r5)
/* 8001B874 00018694  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8001B878 00018698  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8001B87C 0001869C  38 21 00 18 */	addi r1, r1, 0x18
/* 8001B880 000186A0  7C 08 03 A6 */	mtlr r0
/* 8001B884 000186A4  4E 80 00 20 */	blr

.global __AI_SRC_INIT
__AI_SRC_INIT:
/* 8001B888 000186A8  7C 08 02 A6 */	mflr r0
/* 8001B88C 000186AC  90 01 00 04 */	stw r0, 0x4(r1)
/* 8001B890 000186B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8001B894 000186B4  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 8001B898 000186B8  38 80 00 00 */	li r4, 0x0
/* 8001B89C 000186BC  38 60 00 00 */	li r3, 0x0
/* 8001B8A0 000186C0  38 00 00 00 */	li r0, 0x0
/* 8001B8A4 000186C4  3B 80 00 00 */	li r28, 0x0
/* 8001B8A8 000186C8  3B A0 00 00 */	li r29, 0x0
/* 8001B8AC 000186CC  48 00 00 04 */	b lbl_8001B8B0
lbl_8001B8B0:
/* 8001B8B0 000186D0  3F E0 CC 00 */	lis r31, 0xCC006C00@ha
/* 8001B8B4 000186D4  48 00 00 04 */	b lbl_8001B8B8
lbl_8001B8B8:
/* 8001B8B8 000186D8  48 00 01 64 */	b lbl_8001BA1C
lbl_8001B8BC:
/* 8001B8BC 000186DC  80 1F 6C 00 */	lwz r0, 0xCC006C00@l(r31)
/* 8001B8C0 000186E0  3B DF 6C 00 */	addi r30, r31, 0x6c00
/* 8001B8C4 000186E4  3B DE 00 08 */	addi r30, r30, 0x8
/* 8001B8C8 000186E8  54 00 06 F2 */	rlwinm r0, r0, 0, 27, 25
/* 8001B8CC 000186EC  60 00 00 20 */	ori r0, r0, 0x20
/* 8001B8D0 000186F0  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8001B8D4 000186F4  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8001B8D8 000186F8  54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 8001B8DC 000186FC  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8001B8E0 00018700  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8001B8E4 00018704  54 00 00 3C */	rlwinm r0, r0, 0, 0, 30
/* 8001B8E8 00018708  60 00 00 01 */	ori r0, r0, 0x1
/* 8001B8EC 0001870C  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8001B8F0 00018710  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8001B8F4 00018714  48 00 00 04 */	b lbl_8001B8F8
lbl_8001B8F8:
/* 8001B8F8 00018718  48 00 00 04 */	b lbl_8001B8FC
lbl_8001B8FC:
/* 8001B8FC 0001871C  80 1E 00 00 */	lwz r0, 0x0(r30)
/* 8001B900 00018720  7C 03 00 40 */	cmplw r3, r0
/* 8001B904 00018724  41 82 FF F8 */	beq lbl_8001B8FC
/* 8001B908 00018728  48 02 73 5D */	bl OSGetTime
/* 8001B90C 0001872C  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8001B910 00018730  7C 9A 23 78 */	mr r26, r4
/* 8001B914 00018734  7C 7B 1B 78 */	mr r27, r3
/* 8001B918 00018738  54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 8001B91C 0001873C  60 00 00 02 */	ori r0, r0, 0x2
/* 8001B920 00018740  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8001B924 00018744  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8001B928 00018748  54 00 00 3C */	rlwinm r0, r0, 0, 0, 30
/* 8001B92C 0001874C  60 00 00 01 */	ori r0, r0, 0x1
/* 8001B930 00018750  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8001B934 00018754  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8001B938 00018758  48 00 00 04 */	b lbl_8001B93C
lbl_8001B93C:
/* 8001B93C 0001875C  48 00 00 04 */	b lbl_8001B940
lbl_8001B940:
/* 8001B940 00018760  80 1E 00 00 */	lwz r0, 0x0(r30)
/* 8001B944 00018764  7C 03 00 40 */	cmplw r3, r0
/* 8001B948 00018768  41 82 FF F8 */	beq lbl_8001B940
/* 8001B94C 0001876C  48 02 73 19 */	bl OSGetTime
/* 8001B950 00018770  7D 1A 20 10 */	subfc r8, r26, r4
/* 8001B954 00018774  81 8D 82 B4 */	lwz r12, bound_32KHz+4@sda21(r13)
/* 8001B958 00018778  80 BF 6C 00 */	lwz r5, 0x6c00(r31)
/* 8001B95C 0001877C  7C FB 19 10 */	subfe r7, r27, r3
/* 8001B960 00018780  81 4D 82 D4 */	lwz r10, buffer+4@sda21(r13)
/* 8001B964 00018784  6C E7 80 00 */	xoris r7, r7, 0x8000
/* 8001B968 00018788  54 A5 07 FA */	rlwinm r5, r5, 0, 31, 29
/* 8001B96C 0001878C  81 6D 82 B0 */	lwz r11, bound_32KHz@sda21(r13)
/* 8001B970 00018790  7C CA 60 10 */	subfc r6, r10, r12
/* 8001B974 00018794  81 2D 82 D0 */	lwz r9, buffer@sda21(r13)
/* 8001B978 00018798  90 BF 6C 00 */	stw r5, 0x6c00(r31)
/* 8001B97C 0001879C  7C 09 59 10 */	subfe r0, r9, r11
/* 8001B980 000187A0  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 8001B984 000187A4  7C 06 40 10 */	subfc r0, r6, r8
/* 8001B988 000187A8  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8001B98C 000187AC  7C A5 39 10 */	subfe r5, r5, r7
/* 8001B990 000187B0  7C A7 39 10 */	subfe r5, r7, r7
/* 8001B994 000187B4  7C A5 00 D0 */	neg r5, r5
/* 8001B998 000187B8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 30
/* 8001B99C 000187BC  2C 05 00 00 */	cmpwi r5, 0x0
/* 8001B9A0 000187C0  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8001B9A4 000187C4  41 82 00 14 */	beq lbl_8001B9B8
/* 8001B9A8 000187C8  83 AD 82 C0 */	lwz r29, min_wait@sda21(r13)
/* 8001B9AC 000187CC  38 00 00 01 */	li r0, 0x1
/* 8001B9B0 000187D0  83 8D 82 C4 */	lwz r28, min_wait+4@sda21(r13)
/* 8001B9B4 000187D4  48 00 00 68 */	b lbl_8001BA1C
lbl_8001B9B8:
/* 8001B9B8 000187D8  7C CC 50 14 */	addc r6, r12, r10
/* 8001B9BC 000187DC  7C 0B 49 14 */	adde r0, r11, r9
/* 8001B9C0 000187E0  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 8001B9C4 000187E4  7C 06 40 10 */	subfc r0, r6, r8
/* 8001B9C8 000187E8  7C A5 39 10 */	subfe r5, r5, r7
/* 8001B9CC 000187EC  7C A7 39 10 */	subfe r5, r7, r7
/* 8001B9D0 000187F0  7C A5 00 D0 */	neg r5, r5
/* 8001B9D4 000187F4  2C 05 00 00 */	cmpwi r5, 0x0
/* 8001B9D8 000187F8  40 82 00 40 */	bne lbl_8001BA18
/* 8001B9DC 000187FC  80 AD 82 BC */	lwz r5, bound_48KHz+4@sda21(r13)
/* 8001B9E0 00018800  80 0D 82 B8 */	lwz r0, bound_48KHz@sda21(r13)
/* 8001B9E4 00018804  7C CA 28 10 */	subfc r6, r10, r5
/* 8001B9E8 00018808  7C 09 01 10 */	subfe r0, r9, r0
/* 8001B9EC 0001880C  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 8001B9F0 00018810  7C 06 40 10 */	subfc r0, r6, r8
/* 8001B9F4 00018814  7C A5 39 10 */	subfe r5, r5, r7
/* 8001B9F8 00018818  7C A7 39 10 */	subfe r5, r7, r7
/* 8001B9FC 0001881C  7C A5 00 D0 */	neg r5, r5
/* 8001BA00 00018820  2C 05 00 00 */	cmpwi r5, 0x0
/* 8001BA04 00018824  41 82 00 14 */	beq lbl_8001BA18
/* 8001BA08 00018828  83 AD 82 C8 */	lwz r29, max_wait@sda21(r13)
/* 8001BA0C 0001882C  38 00 00 01 */	li r0, 0x1
/* 8001BA10 00018830  83 8D 82 CC */	lwz r28, max_wait+4@sda21(r13)
/* 8001BA14 00018834  48 00 00 08 */	b lbl_8001BA1C
lbl_8001BA18:
/* 8001BA18 00018838  38 00 00 00 */	li r0, 0x0
lbl_8001BA1C:
/* 8001BA1C 0001883C  28 00 00 00 */	cmplwi r0, 0x0
/* 8001BA20 00018840  41 82 FE 9C */	beq lbl_8001B8BC
/* 8001BA24 00018844  7F 64 E0 14 */	addc r27, r4, r28
/* 8001BA28 00018848  7F 43 E9 14 */	adde r26, r3, r29
/* 8001BA2C 0001884C  48 00 00 04 */	b lbl_8001BA30
lbl_8001BA30:
/* 8001BA30 00018850  48 00 00 04 */	b lbl_8001BA34
lbl_8001BA34:
/* 8001BA34 00018854  48 02 72 31 */	bl OSGetTime
/* 8001BA38 00018858  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 8001BA3C 0001885C  6F 43 80 00 */	xoris r3, r26, 0x8000
/* 8001BA40 00018860  7C 1B 20 10 */	subfc r0, r27, r4
/* 8001BA44 00018864  7C 63 29 10 */	subfe r3, r3, r5
/* 8001BA48 00018868  7C 65 29 10 */	subfe r3, r5, r5
/* 8001BA4C 0001886C  7C 63 00 D0 */	neg r3, r3
/* 8001BA50 00018870  2C 03 00 00 */	cmpwi r3, 0x0
/* 8001BA54 00018874  40 82 FF E0 */	bne lbl_8001BA34
/* 8001BA58 00018878  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 8001BA5C 0001887C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8001BA60 00018880  38 21 00 30 */	addi r1, r1, 0x30
/* 8001BA64 00018884  7C 08 03 A6 */	mtlr r0
/* 8001BA68 00018888  4E 80 00 20 */	blr


.section .data, "wa"  # 0x80079C60 - 0x80085B20 ; 0x0000BEC0

.balign 8

.global lbl_8007AA00
lbl_8007AA00:

	# ROM: 0x77A00
	.asciz "<< Dolphin SDK - AI\trelease build: Sep  5 2002 05:34:25 (0x2301) >>"


.section .sdata, "wa"  # 0x800C3E60 - 0x800C4080 ; 0x00000220

.balign 8

.global __AIVersion
__AIVersion:

	# ROM: 0x82B80
	.4byte lbl_8007AA00


.section .sbss, "", @nobits  # 0x800C4080 - 0x800C4680 ; 0x00000600

.balign 8

.global __AIS_Callback
__AIS_Callback:
	.skip 0x4

.global __AID_Callback
__AID_Callback:
	.skip 0x4

.global __CallbackStack
__CallbackStack:
	.skip 0x4

.global __OldStack
__OldStack:
	.skip 0x4

.global __AI_init_flag
__AI_init_flag:
	.skip 0x4

.global __AID_Active
__AID_Active:
	.skip 0x4

.global bound_32KHz
bound_32KHz:
	.skip 0x8

.global bound_48KHz
bound_48KHz:
	.skip 0x8

.global min_wait
min_wait:
	.skip 0x8

.global max_wait
max_wait:
	.skip 0x8

.global buffer
buffer:
	.skip 0x8