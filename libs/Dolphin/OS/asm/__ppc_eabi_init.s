.include "macros.s"

.section .init, "ax"  # 0x80003100 - 0x800056C0 ; 0x000025C0


.global __init_hardware
__init_hardware:
/* 800055C4 000025C4  7C 00 00 A6 */	mfmsr r0
/* 800055C8 000025C8  60 00 20 00 */	ori r0, r0, 0x2000
/* 800055CC 000025CC  7C 00 01 24 */	mtmsr r0
/* 800055D0 000025D0  7F E8 02 A6 */	mflr r31
/* 800055D4 000025D4  48 03 63 DD */	bl __OSPSInit
/* 800055D8 000025D8  48 03 59 81 */	bl __OSFPRInit
/* 800055DC 000025DC  48 03 79 79 */	bl __OSCacheInit
/* 800055E0 000025E0  7F E8 03 A6 */	mtlr r31
/* 800055E4 000025E4  4E 80 00 20 */	blr

.global __flush_cache
__flush_cache:
/* 800055E8 000025E8  3C A0 FF FF */	lis r5, 0xFFFFFFF1@h
/* 800055EC 000025EC  60 A5 FF F1 */	ori r5, r5, 0xFFFFFFF1@l
/* 800055F0 000025F0  7C A5 18 38 */	and r5, r5, r3
/* 800055F4 000025F4  7C 65 18 50 */	subf r3, r5, r3
/* 800055F8 000025F8  7C 84 1A 14 */	add r4, r4, r3
lbl_800055FC:
/* 800055FC 000025FC  7C 00 28 6C */	dcbst r0, r5
/* 80005600 00002600  7C 00 04 AC */	sync
/* 80005604 00002604  7C 00 2F AC */	icbi r0, r5
/* 80005608 00002608  30 A5 00 08 */	addic r5, r5, 0x8
/* 8000560C 0000260C  34 84 FF F8 */	addic. r4, r4, -0x8
/* 80005610 00002610  40 80 FF EC */	bge lbl_800055FC
/* 80005614 00002614  4C 00 01 2C */	isync
/* 80005618 00002618  4E 80 00 20 */	blr
