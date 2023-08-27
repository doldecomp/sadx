.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global __AXGetCommandListCycles
__AXGetCommandListCycles:
/* 8001E258 0001B078  80 6D 83 68 */	lwz r3, __AXCommandListCycles@sda21(r13)
/* 8001E25C 0001B07C  4E 80 00 20 */	blr

.global __AXGetCommandListAddress
__AXGetCommandListAddress:
/* 8001E260 0001B080  80 AD 83 60 */	lwz r5, __AXCommandListPosition@sda21(r13)
/* 8001E264 0001B084  3C 60 80 09 */	lis r3, __AXCommandList@ha
/* 8001E268 0001B088  38 83 DA E0 */	addi r4, r3, __AXCommandList@l
/* 8001E26C 0001B08C  38 05 00 01 */	addi r0, r5, 0x1
/* 8001E270 0001B090  90 0D 83 60 */	stw r0, __AXCommandListPosition@sda21(r13)
/* 8001E274 0001B094  1C 65 03 00 */	mulli r3, r5, 0x300
/* 8001E278 0001B098  80 0D 83 60 */	lwz r0, __AXCommandListPosition@sda21(r13)
/* 8001E27C 0001B09C  7C 64 1A 14 */	add r3, r4, r3
/* 8001E280 0001B0A0  54 00 07 FE */	clrlwi r0, r0, 31
/* 8001E284 0001B0A4  90 0D 83 60 */	stw r0, __AXCommandListPosition@sda21(r13)
/* 8001E288 0001B0A8  80 0D 83 60 */	lwz r0, __AXCommandListPosition@sda21(r13)
/* 8001E28C 0001B0AC  1C 00 03 00 */	mulli r0, r0, 0x300
/* 8001E290 0001B0B0  7C 04 02 14 */	add r0, r4, r0
/* 8001E294 0001B0B4  90 0D 83 64 */	stw r0, __AXClWrite@sda21(r13)
/* 8001E298 0001B0B8  4E 80 00 20 */	blr

.global __AXNextFrame
__AXNextFrame:
/* 8001E29C 0001B0BC  7C 08 02 A6 */	mflr r0
/* 8001E2A0 0001B0C0  90 01 00 04 */	stw r0, 0x4(r1)
/* 8001E2A4 0001B0C4  38 00 01 A9 */	li r0, 0x1a9
/* 8001E2A8 0001B0C8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8001E2AC 0001B0CC  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8001E2B0 0001B0D0  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8001E2B4 0001B0D4  3B C4 00 00 */	addi r30, r4, 0x0
/* 8001E2B8 0001B0D8  93 A1 00 54 */	stw r29, 0x54(r1)
/* 8001E2BC 0001B0DC  3B A3 00 00 */	addi r29, r3, 0x0
/* 8001E2C0 0001B0E0  83 ED 83 64 */	lwz r31, __AXClWrite@sda21(r13)
/* 8001E2C4 0001B0E4  90 0D 83 68 */	stw r0, __AXCommandListCycles@sda21(r13)
/* 8001E2C8 0001B0E8  48 00 0D 51 */	bl __AXGetStudio
/* 8001E2CC 0001B0EC  90 61 00 48 */	stw r3, 0x48(r1)
/* 8001E2D0 0001B0F0  38 00 00 00 */	li r0, 0x0
/* 8001E2D4 0001B0F4  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E2D8 0001B0F8  B0 03 00 00 */	sth r0, 0x0(r3)
/* 8001E2DC 0001B0FC  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E2E0 0001B100  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8001E2E4 0001B104  38 63 00 02 */	addi r3, r3, 0x2
/* 8001E2E8 0001B108  90 6D 83 64 */	stw r3, __AXClWrite@sda21(r13)
/* 8001E2EC 0001B10C  54 00 84 3E */	srwi r0, r0, 16
/* 8001E2F0 0001B110  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E2F4 0001B114  B0 03 00 00 */	sth r0, 0x0(r3)
/* 8001E2F8 0001B118  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E2FC 0001B11C  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8001E300 0001B120  38 63 00 02 */	addi r3, r3, 0x2
/* 8001E304 0001B124  90 6D 83 64 */	stw r3, __AXClWrite@sda21(r13)
/* 8001E308 0001B128  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E30C 0001B12C  B0 03 00 00 */	sth r0, 0x0(r3)
/* 8001E310 0001B130  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E314 0001B134  80 6D 83 68 */	lwz r3, __AXCommandListCycles@sda21(r13)
/* 8001E318 0001B138  80 0D 83 70 */	lwz r0, __AXClMode@sda21(r13)
/* 8001E31C 0001B13C  38 84 00 02 */	addi r4, r4, 0x2
/* 8001E320 0001B140  38 63 2E 44 */	addi r3, r3, 0x2e44
/* 8001E324 0001B144  90 8D 83 64 */	stw r4, __AXClWrite@sda21(r13)
/* 8001E328 0001B148  2C 00 00 01 */	cmpwi r0, 0x1
/* 8001E32C 0001B14C  90 6D 83 68 */	stw r3, __AXCommandListCycles@sda21(r13)
/* 8001E330 0001B150  41 82 00 6C */	beq lbl_8001E39C
/* 8001E334 0001B154  40 80 00 B8 */	bge lbl_8001E3EC
/* 8001E338 0001B158  2C 00 00 00 */	cmpwi r0, 0x0
/* 8001E33C 0001B15C  40 80 00 0C */	bge lbl_8001E348
/* 8001E340 0001B160  48 00 00 AC */	b lbl_8001E3EC
/* 8001E344 0001B164  48 00 00 A8 */	b lbl_8001E3EC
lbl_8001E348:
/* 8001E348 0001B168  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E34C 0001B16C  38 80 00 07 */	li r4, 0x7
/* 8001E350 0001B170  57 A0 84 3E */	srwi r0, r29, 16
/* 8001E354 0001B174  B0 83 00 00 */	sth r4, 0x0(r3)
/* 8001E358 0001B178  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E35C 0001B17C  38 63 00 02 */	addi r3, r3, 0x2
/* 8001E360 0001B180  90 6D 83 64 */	stw r3, __AXClWrite@sda21(r13)
/* 8001E364 0001B184  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E368 0001B188  B0 03 00 00 */	sth r0, 0x0(r3)
/* 8001E36C 0001B18C  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E370 0001B190  38 03 00 02 */	addi r0, r3, 0x2
/* 8001E374 0001B194  90 0D 83 64 */	stw r0, __AXClWrite@sda21(r13)
/* 8001E378 0001B198  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E37C 0001B19C  B3 A3 00 00 */	sth r29, 0x0(r3)
/* 8001E380 0001B1A0  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E384 0001B1A4  80 6D 83 68 */	lwz r3, __AXCommandListCycles@sda21(r13)
/* 8001E388 0001B1A8  38 84 00 02 */	addi r4, r4, 0x2
/* 8001E38C 0001B1AC  38 03 05 46 */	addi r0, r3, 0x546
/* 8001E390 0001B1B0  90 8D 83 64 */	stw r4, __AXClWrite@sda21(r13)
/* 8001E394 0001B1B4  90 0D 83 68 */	stw r0, __AXCommandListCycles@sda21(r13)
/* 8001E398 0001B1B8  48 00 00 54 */	b lbl_8001E3EC
lbl_8001E39C:
/* 8001E39C 0001B1BC  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E3A0 0001B1C0  38 80 00 11 */	li r4, 0x11
/* 8001E3A4 0001B1C4  57 A0 84 3E */	srwi r0, r29, 16
/* 8001E3A8 0001B1C8  B0 83 00 00 */	sth r4, 0x0(r3)
/* 8001E3AC 0001B1CC  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E3B0 0001B1D0  38 63 00 02 */	addi r3, r3, 0x2
/* 8001E3B4 0001B1D4  90 6D 83 64 */	stw r3, __AXClWrite@sda21(r13)
/* 8001E3B8 0001B1D8  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E3BC 0001B1DC  B0 03 00 00 */	sth r0, 0x0(r3)
/* 8001E3C0 0001B1E0  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E3C4 0001B1E4  38 03 00 02 */	addi r0, r3, 0x2
/* 8001E3C8 0001B1E8  90 0D 83 64 */	stw r0, __AXClWrite@sda21(r13)
/* 8001E3CC 0001B1EC  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E3D0 0001B1F0  B3 A3 00 00 */	sth r29, 0x0(r3)
/* 8001E3D4 0001B1F4  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E3D8 0001B1F8  80 6D 83 68 */	lwz r3, __AXCommandListCycles@sda21(r13)
/* 8001E3DC 0001B1FC  38 84 00 02 */	addi r4, r4, 0x2
/* 8001E3E0 0001B200  38 03 05 E6 */	addi r0, r3, 0x5e6
/* 8001E3E4 0001B204  90 8D 83 64 */	stw r4, __AXClWrite@sda21(r13)
/* 8001E3E8 0001B208  90 0D 83 68 */	stw r0, __AXCommandListCycles@sda21(r13)
lbl_8001E3EC:
/* 8001E3EC 0001B20C  48 00 1A 69 */	bl __AXGetPBs
/* 8001E3F0 0001B210  90 61 00 48 */	stw r3, 0x48(r1)
/* 8001E3F4 0001B214  38 80 00 02 */	li r4, 0x2
/* 8001E3F8 0001B218  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E3FC 0001B21C  38 00 00 03 */	li r0, 0x3
/* 8001E400 0001B220  B0 83 00 00 */	sth r4, 0x0(r3)
/* 8001E404 0001B224  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E408 0001B228  80 61 00 48 */	lwz r3, 0x48(r1)
/* 8001E40C 0001B22C  38 84 00 02 */	addi r4, r4, 0x2
/* 8001E410 0001B230  90 8D 83 64 */	stw r4, __AXClWrite@sda21(r13)
/* 8001E414 0001B234  54 64 84 3E */	srwi r4, r3, 16
/* 8001E418 0001B238  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E41C 0001B23C  B0 83 00 00 */	sth r4, 0x0(r3)
/* 8001E420 0001B240  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E424 0001B244  80 81 00 48 */	lwz r4, 0x48(r1)
/* 8001E428 0001B248  38 63 00 02 */	addi r3, r3, 0x2
/* 8001E42C 0001B24C  90 6D 83 64 */	stw r3, __AXClWrite@sda21(r13)
/* 8001E430 0001B250  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E434 0001B254  B0 83 00 00 */	sth r4, 0x0(r3)
/* 8001E438 0001B258  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E43C 0001B25C  38 63 00 02 */	addi r3, r3, 0x2
/* 8001E440 0001B260  90 6D 83 64 */	stw r3, __AXClWrite@sda21(r13)
/* 8001E444 0001B264  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E448 0001B268  B0 03 00 00 */	sth r0, 0x0(r3)
/* 8001E44C 0001B26C  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E450 0001B270  80 0D 83 70 */	lwz r0, __AXClMode@sda21(r13)
/* 8001E454 0001B274  38 63 00 02 */	addi r3, r3, 0x2
/* 8001E458 0001B278  28 00 00 02 */	cmplwi r0, 0x2
/* 8001E45C 0001B27C  90 6D 83 64 */	stw r3, __AXClWrite@sda21(r13)
/* 8001E460 0001B280  40 82 02 3C */	bne lbl_8001E69C
/* 8001E464 0001B284  38 61 00 48 */	addi r3, r1, 0x48
/* 8001E468 0001B288  4B FF FA 45 */	bl __AXGetAuxAInput
/* 8001E46C 0001B28C  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8001E470 0001B290  28 00 00 00 */	cmplwi r0, 0x0
/* 8001E474 0001B294  41 82 01 88 */	beq lbl_8001E5FC
/* 8001E478 0001B298  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E47C 0001B29C  38 00 00 13 */	li r0, 0x13
/* 8001E480 0001B2A0  38 61 00 48 */	addi r3, r1, 0x48
/* 8001E484 0001B2A4  B0 04 00 00 */	sth r0, 0x0(r4)
/* 8001E488 0001B2A8  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E48C 0001B2AC  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8001E490 0001B2B0  38 84 00 02 */	addi r4, r4, 0x2
/* 8001E494 0001B2B4  90 8D 83 64 */	stw r4, __AXClWrite@sda21(r13)
/* 8001E498 0001B2B8  54 00 84 3E */	srwi r0, r0, 16
/* 8001E49C 0001B2BC  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E4A0 0001B2C0  B0 04 00 00 */	sth r0, 0x0(r4)
/* 8001E4A4 0001B2C4  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E4A8 0001B2C8  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8001E4AC 0001B2CC  38 84 00 02 */	addi r4, r4, 0x2
/* 8001E4B0 0001B2D0  90 8D 83 64 */	stw r4, __AXClWrite@sda21(r13)
/* 8001E4B4 0001B2D4  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E4B8 0001B2D8  B0 04 00 00 */	sth r0, 0x0(r4)
/* 8001E4BC 0001B2DC  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E4C0 0001B2E0  38 04 00 02 */	addi r0, r4, 0x2
/* 8001E4C4 0001B2E4  90 0D 83 64 */	stw r0, __AXClWrite@sda21(r13)
/* 8001E4C8 0001B2E8  4B FF FA 19 */	bl __AXGetAuxAInputDpl2
/* 8001E4CC 0001B2EC  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8001E4D0 0001B2F0  38 61 00 48 */	addi r3, r1, 0x48
/* 8001E4D4 0001B2F4  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E4D8 0001B2F8  54 00 84 3E */	srwi r0, r0, 16
/* 8001E4DC 0001B2FC  B0 04 00 00 */	sth r0, 0x0(r4)
/* 8001E4E0 0001B300  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E4E4 0001B304  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8001E4E8 0001B308  38 84 00 02 */	addi r4, r4, 0x2
/* 8001E4EC 0001B30C  90 8D 83 64 */	stw r4, __AXClWrite@sda21(r13)
/* 8001E4F0 0001B310  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E4F4 0001B314  B0 04 00 00 */	sth r0, 0x0(r4)
/* 8001E4F8 0001B318  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E4FC 0001B31C  38 04 00 02 */	addi r0, r4, 0x2
/* 8001E500 0001B320  90 0D 83 64 */	stw r0, __AXClWrite@sda21(r13)
/* 8001E504 0001B324  4B FF F9 FD */	bl __AXGetAuxAOutput
/* 8001E508 0001B328  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8001E50C 0001B32C  38 61 00 48 */	addi r3, r1, 0x48
/* 8001E510 0001B330  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E514 0001B334  54 00 84 3E */	srwi r0, r0, 16
/* 8001E518 0001B338  B0 04 00 00 */	sth r0, 0x0(r4)
/* 8001E51C 0001B33C  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E520 0001B340  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8001E524 0001B344  38 84 00 02 */	addi r4, r4, 0x2
/* 8001E528 0001B348  90 8D 83 64 */	stw r4, __AXClWrite@sda21(r13)
/* 8001E52C 0001B34C  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E530 0001B350  B0 04 00 00 */	sth r0, 0x0(r4)
/* 8001E534 0001B354  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E538 0001B358  38 04 00 02 */	addi r0, r4, 0x2
/* 8001E53C 0001B35C  90 0D 83 64 */	stw r0, __AXClWrite@sda21(r13)
/* 8001E540 0001B360  4B FF F9 DD */	bl __AXGetAuxAOutputDpl2R
/* 8001E544 0001B364  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8001E548 0001B368  38 61 00 48 */	addi r3, r1, 0x48
/* 8001E54C 0001B36C  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E550 0001B370  54 00 84 3E */	srwi r0, r0, 16
/* 8001E554 0001B374  B0 04 00 00 */	sth r0, 0x0(r4)
/* 8001E558 0001B378  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E55C 0001B37C  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8001E560 0001B380  38 84 00 02 */	addi r4, r4, 0x2
/* 8001E564 0001B384  90 8D 83 64 */	stw r4, __AXClWrite@sda21(r13)
/* 8001E568 0001B388  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E56C 0001B38C  B0 04 00 00 */	sth r0, 0x0(r4)
/* 8001E570 0001B390  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E574 0001B394  38 04 00 02 */	addi r0, r4, 0x2
/* 8001E578 0001B398  90 0D 83 64 */	stw r0, __AXClWrite@sda21(r13)
/* 8001E57C 0001B39C  4B FF F9 C1 */	bl __AXGetAuxAOutputDpl2Ls
/* 8001E580 0001B3A0  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8001E584 0001B3A4  38 61 00 48 */	addi r3, r1, 0x48
/* 8001E588 0001B3A8  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E58C 0001B3AC  54 00 84 3E */	srwi r0, r0, 16
/* 8001E590 0001B3B0  B0 04 00 00 */	sth r0, 0x0(r4)
/* 8001E594 0001B3B4  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E598 0001B3B8  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8001E59C 0001B3BC  38 84 00 02 */	addi r4, r4, 0x2
/* 8001E5A0 0001B3C0  90 8D 83 64 */	stw r4, __AXClWrite@sda21(r13)
/* 8001E5A4 0001B3C4  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E5A8 0001B3C8  B0 04 00 00 */	sth r0, 0x0(r4)
/* 8001E5AC 0001B3CC  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E5B0 0001B3D0  38 04 00 02 */	addi r0, r4, 0x2
/* 8001E5B4 0001B3D4  90 0D 83 64 */	stw r0, __AXClWrite@sda21(r13)
/* 8001E5B8 0001B3D8  4B FF F9 A5 */	bl __AXGetAuxAOutputDpl2Rs
/* 8001E5BC 0001B3DC  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8001E5C0 0001B3E0  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E5C4 0001B3E4  54 00 84 3E */	srwi r0, r0, 16
/* 8001E5C8 0001B3E8  B0 03 00 00 */	sth r0, 0x0(r3)
/* 8001E5CC 0001B3EC  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E5D0 0001B3F0  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8001E5D4 0001B3F4  38 63 00 02 */	addi r3, r3, 0x2
/* 8001E5D8 0001B3F8  90 6D 83 64 */	stw r3, __AXClWrite@sda21(r13)
/* 8001E5DC 0001B3FC  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E5E0 0001B400  B0 03 00 00 */	sth r0, 0x0(r3)
/* 8001E5E4 0001B404  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E5E8 0001B408  80 6D 83 68 */	lwz r3, __AXCommandListCycles@sda21(r13)
/* 8001E5EC 0001B40C  38 84 00 02 */	addi r4, r4, 0x2
/* 8001E5F0 0001B410  38 03 0D ED */	addi r0, r3, 0xded
/* 8001E5F4 0001B414  90 8D 83 64 */	stw r4, __AXClWrite@sda21(r13)
/* 8001E5F8 0001B418  90 0D 83 68 */	stw r0, __AXCommandListCycles@sda21(r13)
lbl_8001E5FC:
/* 8001E5FC 0001B41C  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E600 0001B420  38 00 00 10 */	li r0, 0x10
/* 8001E604 0001B424  38 61 00 48 */	addi r3, r1, 0x48
/* 8001E608 0001B428  B0 04 00 00 */	sth r0, 0x0(r4)
/* 8001E60C 0001B42C  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E610 0001B430  38 04 00 02 */	addi r0, r4, 0x2
/* 8001E614 0001B434  90 0D 83 64 */	stw r0, __AXClWrite@sda21(r13)
/* 8001E618 0001B438  4B FF F9 B5 */	bl __AXGetAuxBForDPL2
/* 8001E61C 0001B43C  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8001E620 0001B440  38 61 00 48 */	addi r3, r1, 0x48
/* 8001E624 0001B444  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E628 0001B448  54 00 84 3E */	srwi r0, r0, 16
/* 8001E62C 0001B44C  B0 04 00 00 */	sth r0, 0x0(r4)
/* 8001E630 0001B450  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E634 0001B454  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8001E638 0001B458  38 84 00 02 */	addi r4, r4, 0x2
/* 8001E63C 0001B45C  90 8D 83 64 */	stw r4, __AXClWrite@sda21(r13)
/* 8001E640 0001B460  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E644 0001B464  B0 04 00 00 */	sth r0, 0x0(r4)
/* 8001E648 0001B468  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E64C 0001B46C  38 04 00 02 */	addi r0, r4, 0x2
/* 8001E650 0001B470  90 0D 83 64 */	stw r0, __AXClWrite@sda21(r13)
/* 8001E654 0001B474  4B FF F9 95 */	bl __AXGetAuxBOutputDPL2
/* 8001E658 0001B478  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8001E65C 0001B47C  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E660 0001B480  54 00 84 3E */	srwi r0, r0, 16
/* 8001E664 0001B484  B0 03 00 00 */	sth r0, 0x0(r3)
/* 8001E668 0001B488  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E66C 0001B48C  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8001E670 0001B490  38 63 00 02 */	addi r3, r3, 0x2
/* 8001E674 0001B494  90 6D 83 64 */	stw r3, __AXClWrite@sda21(r13)
/* 8001E678 0001B498  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E67C 0001B49C  B0 03 00 00 */	sth r0, 0x0(r3)
/* 8001E680 0001B4A0  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E684 0001B4A4  80 6D 83 68 */	lwz r3, __AXCommandListCycles@sda21(r13)
/* 8001E688 0001B4A8  38 84 00 02 */	addi r4, r4, 0x2
/* 8001E68C 0001B4AC  38 03 0D ED */	addi r0, r3, 0xded
/* 8001E690 0001B4B0  90 8D 83 64 */	stw r4, __AXClWrite@sda21(r13)
/* 8001E694 0001B4B4  90 0D 83 68 */	stw r0, __AXCommandListCycles@sda21(r13)
/* 8001E698 0001B4B8  48 00 01 54 */	b lbl_8001E7EC
lbl_8001E69C:
/* 8001E69C 0001B4BC  38 61 00 48 */	addi r3, r1, 0x48
/* 8001E6A0 0001B4C0  4B FF F8 0D */	bl __AXGetAuxAInput
/* 8001E6A4 0001B4C4  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8001E6A8 0001B4C8  28 00 00 00 */	cmplwi r0, 0x0
/* 8001E6AC 0001B4CC  41 82 00 98 */	beq lbl_8001E744
/* 8001E6B0 0001B4D0  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E6B4 0001B4D4  38 00 00 04 */	li r0, 0x4
/* 8001E6B8 0001B4D8  38 61 00 48 */	addi r3, r1, 0x48
/* 8001E6BC 0001B4DC  B0 04 00 00 */	sth r0, 0x0(r4)
/* 8001E6C0 0001B4E0  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E6C4 0001B4E4  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8001E6C8 0001B4E8  38 84 00 02 */	addi r4, r4, 0x2
/* 8001E6CC 0001B4EC  90 8D 83 64 */	stw r4, __AXClWrite@sda21(r13)
/* 8001E6D0 0001B4F0  54 00 84 3E */	srwi r0, r0, 16
/* 8001E6D4 0001B4F4  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E6D8 0001B4F8  B0 04 00 00 */	sth r0, 0x0(r4)
/* 8001E6DC 0001B4FC  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E6E0 0001B500  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8001E6E4 0001B504  38 84 00 02 */	addi r4, r4, 0x2
/* 8001E6E8 0001B508  90 8D 83 64 */	stw r4, __AXClWrite@sda21(r13)
/* 8001E6EC 0001B50C  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E6F0 0001B510  B0 04 00 00 */	sth r0, 0x0(r4)
/* 8001E6F4 0001B514  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E6F8 0001B518  38 04 00 02 */	addi r0, r4, 0x2
/* 8001E6FC 0001B51C  90 0D 83 64 */	stw r0, __AXClWrite@sda21(r13)
/* 8001E700 0001B520  4B FF F8 01 */	bl __AXGetAuxAOutput
/* 8001E704 0001B524  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8001E708 0001B528  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E70C 0001B52C  54 00 84 3E */	srwi r0, r0, 16
/* 8001E710 0001B530  B0 03 00 00 */	sth r0, 0x0(r3)
/* 8001E714 0001B534  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E718 0001B538  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8001E71C 0001B53C  38 63 00 02 */	addi r3, r3, 0x2
/* 8001E720 0001B540  90 6D 83 64 */	stw r3, __AXClWrite@sda21(r13)
/* 8001E724 0001B544  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E728 0001B548  B0 03 00 00 */	sth r0, 0x0(r3)
/* 8001E72C 0001B54C  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E730 0001B550  80 6D 83 68 */	lwz r3, __AXCommandListCycles@sda21(r13)
/* 8001E734 0001B554  38 84 00 02 */	addi r4, r4, 0x2
/* 8001E738 0001B558  38 03 0D ED */	addi r0, r3, 0xded
/* 8001E73C 0001B55C  90 8D 83 64 */	stw r4, __AXClWrite@sda21(r13)
/* 8001E740 0001B560  90 0D 83 68 */	stw r0, __AXCommandListCycles@sda21(r13)
lbl_8001E744:
/* 8001E744 0001B564  38 61 00 48 */	addi r3, r1, 0x48
/* 8001E748 0001B568  4B FF F8 35 */	bl __AXGetAuxBInput
/* 8001E74C 0001B56C  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8001E750 0001B570  28 00 00 00 */	cmplwi r0, 0x0
/* 8001E754 0001B574  41 82 00 98 */	beq lbl_8001E7EC
/* 8001E758 0001B578  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E75C 0001B57C  38 00 00 05 */	li r0, 0x5
/* 8001E760 0001B580  38 61 00 48 */	addi r3, r1, 0x48
/* 8001E764 0001B584  B0 04 00 00 */	sth r0, 0x0(r4)
/* 8001E768 0001B588  80 AD 83 64 */	lwz r5, __AXClWrite@sda21(r13)
/* 8001E76C 0001B58C  80 8D 83 68 */	lwz r4, __AXCommandListCycles@sda21(r13)
/* 8001E770 0001B590  38 A5 00 02 */	addi r5, r5, 0x2
/* 8001E774 0001B594  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8001E778 0001B598  90 AD 83 64 */	stw r5, __AXClWrite@sda21(r13)
/* 8001E77C 0001B59C  38 84 0D ED */	addi r4, r4, 0xded
/* 8001E780 0001B5A0  54 00 84 3E */	srwi r0, r0, 16
/* 8001E784 0001B5A4  90 8D 83 68 */	stw r4, __AXCommandListCycles@sda21(r13)
/* 8001E788 0001B5A8  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E78C 0001B5AC  B0 04 00 00 */	sth r0, 0x0(r4)
/* 8001E790 0001B5B0  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E794 0001B5B4  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8001E798 0001B5B8  38 84 00 02 */	addi r4, r4, 0x2
/* 8001E79C 0001B5BC  90 8D 83 64 */	stw r4, __AXClWrite@sda21(r13)
/* 8001E7A0 0001B5C0  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E7A4 0001B5C4  B0 04 00 00 */	sth r0, 0x0(r4)
/* 8001E7A8 0001B5C8  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E7AC 0001B5CC  38 04 00 02 */	addi r0, r4, 0x2
/* 8001E7B0 0001B5D0  90 0D 83 64 */	stw r0, __AXClWrite@sda21(r13)
/* 8001E7B4 0001B5D4  4B FF F7 FD */	bl __AXGetAuxBOutput
/* 8001E7B8 0001B5D8  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8001E7BC 0001B5DC  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E7C0 0001B5E0  54 00 84 3E */	srwi r0, r0, 16
/* 8001E7C4 0001B5E4  B0 03 00 00 */	sth r0, 0x0(r3)
/* 8001E7C8 0001B5E8  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E7CC 0001B5EC  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8001E7D0 0001B5F0  38 63 00 02 */	addi r3, r3, 0x2
/* 8001E7D4 0001B5F4  90 6D 83 64 */	stw r3, __AXClWrite@sda21(r13)
/* 8001E7D8 0001B5F8  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E7DC 0001B5FC  B0 03 00 00 */	sth r0, 0x0(r3)
/* 8001E7E0 0001B600  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E7E4 0001B604  38 03 00 02 */	addi r0, r3, 0x2
/* 8001E7E8 0001B608  90 0D 83 64 */	stw r0, __AXClWrite@sda21(r13)
lbl_8001E7EC:
/* 8001E7EC 0001B60C  80 0D 83 6C */	lwz r0, __AXCompressor@sda21(r13)
/* 8001E7F0 0001B610  28 00 00 00 */	cmplwi r0, 0x0
/* 8001E7F4 0001B614  41 82 00 90 */	beq lbl_8001E884
/* 8001E7F8 0001B618  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E7FC 0001B61C  38 00 00 12 */	li r0, 0x12
/* 8001E800 0001B620  3C A0 00 01 */	lis r5, 0x1
/* 8001E804 0001B624  B0 03 00 00 */	sth r0, 0x0(r3)
/* 8001E808 0001B628  3C 60 80 08 */	lis r3, __AXCompressorTable@ha
/* 8001E80C 0001B62C  38 83 AC 00 */	addi r4, r3, __AXCompressorTable@l
/* 8001E810 0001B630  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E814 0001B634  38 C5 80 00 */	addi r6, r5, -0x8000
/* 8001E818 0001B638  38 A0 00 0A */	li r5, 0xa
/* 8001E81C 0001B63C  38 03 00 02 */	addi r0, r3, 0x2
/* 8001E820 0001B640  90 0D 83 64 */	stw r0, __AXClWrite@sda21(r13)
/* 8001E824 0001B644  54 80 84 3E */	srwi r0, r4, 16
/* 8001E828 0001B648  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E82C 0001B64C  B0 C3 00 00 */	sth r6, 0x0(r3)
/* 8001E830 0001B650  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E834 0001B654  38 63 00 02 */	addi r3, r3, 0x2
/* 8001E838 0001B658  90 6D 83 64 */	stw r3, __AXClWrite@sda21(r13)
/* 8001E83C 0001B65C  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E840 0001B660  B0 A3 00 00 */	sth r5, 0x0(r3)
/* 8001E844 0001B664  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E848 0001B668  38 63 00 02 */	addi r3, r3, 0x2
/* 8001E84C 0001B66C  90 6D 83 64 */	stw r3, __AXClWrite@sda21(r13)
/* 8001E850 0001B670  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E854 0001B674  B0 03 00 00 */	sth r0, 0x0(r3)
/* 8001E858 0001B678  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E85C 0001B67C  38 03 00 02 */	addi r0, r3, 0x2
/* 8001E860 0001B680  90 0D 83 64 */	stw r0, __AXClWrite@sda21(r13)
/* 8001E864 0001B684  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E868 0001B688  B0 83 00 00 */	sth r4, 0x0(r3)
/* 8001E86C 0001B68C  80 8D 83 64 */	lwz r4, __AXClWrite@sda21(r13)
/* 8001E870 0001B690  80 6D 83 68 */	lwz r3, __AXCommandListCycles@sda21(r13)
/* 8001E874 0001B694  38 84 00 02 */	addi r4, r4, 0x2
/* 8001E878 0001B698  38 03 0B B8 */	addi r0, r3, 0xbb8
/* 8001E87C 0001B69C  90 8D 83 64 */	stw r4, __AXClWrite@sda21(r13)
/* 8001E880 0001B6A0  90 0D 83 68 */	stw r0, __AXCommandListCycles@sda21(r13)
lbl_8001E884:
/* 8001E884 0001B6A4  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E888 0001B6A8  38 00 00 0E */	li r0, 0xe
/* 8001E88C 0001B6AC  57 A7 84 3E */	srwi r7, r29, 16
/* 8001E890 0001B6B0  B0 03 00 00 */	sth r0, 0x0(r3)
/* 8001E894 0001B6B4  57 C6 84 3E */	srwi r6, r30, 16
/* 8001E898 0001B6B8  38 00 00 0F */	li r0, 0xf
/* 8001E89C 0001B6BC  80 6D 83 64 */	lwz r3, __AXClWrite@sda21(r13)
/* 8001E8A0 0001B6C0  38 80 03 00 */	li r4, 0x300
/* 8001E8A4 0001B6C4  38 63 00 02 */	addi r3, r3, 0x2
/* 8001E8A8 0001B6C8  90 6D 83 64 */	stw r3, __AXClWrite@sda21(r13)
/* 8001E8AC 0001B6CC  38 7F 00 00 */	addi r3, r31, 0x0
/* 8001E8B0 0001B6D0  80 AD 83 64 */	lwz r5, __AXClWrite@sda21(r13)
/* 8001E8B4 0001B6D4  B0 E5 00 00 */	sth r7, 0x0(r5)
/* 8001E8B8 0001B6D8  80 AD 83 64 */	lwz r5, __AXClWrite@sda21(r13)
/* 8001E8BC 0001B6DC  38 A5 00 02 */	addi r5, r5, 0x2
/* 8001E8C0 0001B6E0  90 AD 83 64 */	stw r5, __AXClWrite@sda21(r13)
/* 8001E8C4 0001B6E4  80 AD 83 64 */	lwz r5, __AXClWrite@sda21(r13)
/* 8001E8C8 0001B6E8  B3 A5 00 00 */	sth r29, 0x0(r5)
/* 8001E8CC 0001B6EC  80 AD 83 64 */	lwz r5, __AXClWrite@sda21(r13)
/* 8001E8D0 0001B6F0  38 A5 00 02 */	addi r5, r5, 0x2
/* 8001E8D4 0001B6F4  90 AD 83 64 */	stw r5, __AXClWrite@sda21(r13)
/* 8001E8D8 0001B6F8  80 AD 83 64 */	lwz r5, __AXClWrite@sda21(r13)
/* 8001E8DC 0001B6FC  B0 C5 00 00 */	sth r6, 0x0(r5)
/* 8001E8E0 0001B700  80 AD 83 64 */	lwz r5, __AXClWrite@sda21(r13)
/* 8001E8E4 0001B704  38 A5 00 02 */	addi r5, r5, 0x2
/* 8001E8E8 0001B708  90 AD 83 64 */	stw r5, __AXClWrite@sda21(r13)
/* 8001E8EC 0001B70C  80 AD 83 64 */	lwz r5, __AXClWrite@sda21(r13)
/* 8001E8F0 0001B710  B3 C5 00 00 */	sth r30, 0x0(r5)
/* 8001E8F4 0001B714  80 CD 83 64 */	lwz r6, __AXClWrite@sda21(r13)
/* 8001E8F8 0001B718  80 AD 83 68 */	lwz r5, __AXCommandListCycles@sda21(r13)
/* 8001E8FC 0001B71C  38 C6 00 02 */	addi r6, r6, 0x2
/* 8001E900 0001B720  90 CD 83 64 */	stw r6, __AXClWrite@sda21(r13)
/* 8001E904 0001B724  38 A5 27 10 */	addi r5, r5, 0x2710
/* 8001E908 0001B728  90 AD 83 68 */	stw r5, __AXCommandListCycles@sda21(r13)
/* 8001E90C 0001B72C  80 AD 83 64 */	lwz r5, __AXClWrite@sda21(r13)
/* 8001E910 0001B730  B0 05 00 00 */	sth r0, 0x0(r5)
/* 8001E914 0001B734  80 CD 83 64 */	lwz r6, __AXClWrite@sda21(r13)
/* 8001E918 0001B738  80 AD 83 68 */	lwz r5, __AXCommandListCycles@sda21(r13)
/* 8001E91C 0001B73C  38 C6 00 02 */	addi r6, r6, 0x2
/* 8001E920 0001B740  38 05 00 02 */	addi r0, r5, 0x2
/* 8001E924 0001B744  90 CD 83 64 */	stw r6, __AXClWrite@sda21(r13)
/* 8001E928 0001B748  90 0D 83 68 */	stw r0, __AXCommandListCycles@sda21(r13)
/* 8001E92C 0001B74C  48 01 E1 F5 */	bl DCFlushRange
/* 8001E930 0001B750  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8001E934 0001B754  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8001E938 0001B758  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8001E93C 0001B75C  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 8001E940 0001B760  38 21 00 60 */	addi r1, r1, 0x60
/* 8001E944 0001B764  7C 08 03 A6 */	mtlr r0
/* 8001E948 0001B768  4E 80 00 20 */	blr

.global __AXClInit
__AXClInit:
/* 8001E94C 0001B76C  3C 60 80 09 */	lis r3, __AXCommandList@ha
/* 8001E950 0001B770  38 80 00 00 */	li r4, 0x0
/* 8001E954 0001B774  38 63 DA E0 */	addi r3, r3, __AXCommandList@l
/* 8001E958 0001B778  90 8D 83 70 */	stw r4, __AXClMode@sda21(r13)
/* 8001E95C 0001B77C  38 00 00 01 */	li r0, 0x1
/* 8001E960 0001B780  90 8D 83 60 */	stw r4, __AXCommandListPosition@sda21(r13)
/* 8001E964 0001B784  90 6D 83 64 */	stw r3, __AXClWrite@sda21(r13)
/* 8001E968 0001B788  90 0D 83 6C */	stw r0, __AXCompressor@sda21(r13)
/* 8001E96C 0001B78C  4E 80 00 20 */	blr

.global AXSetMode
AXSetMode:
/* 8001E970 0001B790  80 0D 83 70 */	lwz r0, __AXClMode@sda21(r13)
/* 8001E974 0001B794  7C 00 18 40 */	cmplw r0, r3
/* 8001E978 0001B798  4D 82 00 20 */	beqlr
/* 8001E97C 0001B79C  90 6D 83 70 */	stw r3, __AXClMode@sda21(r13)
/* 8001E980 0001B7A0  4E 80 00 20 */	blr


.section .bss, "", @nobits  # 0x80085B20 - 0x800C3E60 ; 0x0003E340

.balign 8

.global __AXCommandList
__AXCommandList:
	.skip 0x600


.section .sbss, "", @nobits  # 0x800C4080 - 0x800C4680 ; 0x00000600

.balign 8

.global __AXCommandListPosition
__AXCommandListPosition:
	.skip 0x4

.global __AXClWrite
__AXClWrite:
	.skip 0x4

.global __AXCommandListCycles
__AXCommandListCycles:
	.skip 0x4

.global __AXCompressor
__AXCompressor:
	.skip 0x4

.global __AXClMode
__AXClMode:
	.skip 0x4
