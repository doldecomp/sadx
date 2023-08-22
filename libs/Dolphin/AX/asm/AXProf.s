.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global __AXGetCurrentProfile
__AXGetCurrentProfile:
/* 8002075C 0001D57C  80 0D 83 E4 */	lwz r0, __AXProfileInitialized@sda21(r13)
/* 80020760 0001D580  28 00 00 00 */	cmplwi r0, 0x0
/* 80020764 0001D584  41 82 00 38 */	beq lbl_8002079C
/* 80020768 0001D588  80 6D 83 E0 */	lwz r3, __AXCurrentProfile@sda21(r13)
/* 8002076C 0001D58C  80 8D 83 DC */	lwz r4, __AXMaxProfiles@sda21(r13)
/* 80020770 0001D590  38 03 00 01 */	addi r0, r3, 0x1
/* 80020774 0001D594  80 CD 83 D8 */	lwz r6, __AXProfile@sda21(r13)
/* 80020778 0001D598  90 0D 83 E0 */	stw r0, __AXCurrentProfile@sda21(r13)
/* 8002077C 0001D59C  1C 03 00 38 */	mulli r0, r3, 0x38
/* 80020780 0001D5A0  80 AD 83 E0 */	lwz r5, __AXCurrentProfile@sda21(r13)
/* 80020784 0001D5A4  7C 66 02 14 */	add r3, r6, r0
/* 80020788 0001D5A8  7C 05 23 96 */	divwu r0, r5, r4
/* 8002078C 0001D5AC  7C 00 21 D6 */	mullw r0, r0, r4
/* 80020790 0001D5B0  7C 00 28 50 */	subf r0, r0, r5
/* 80020794 0001D5B4  90 0D 83 E0 */	stw r0, __AXCurrentProfile@sda21(r13)
/* 80020798 0001D5B8  4E 80 00 20 */	blr
lbl_8002079C:
/* 8002079C 0001D5BC  38 60 00 00 */	li r3, 0x0
/* 800207A0 0001D5C0  4E 80 00 20 */	blr


.section .sbss, "", @nobits  # 0x800C4080 - 0x800C4680 ; 0x00000600

.balign 8

.global __AXProfile
__AXProfile:
	.skip 0x4

.global __AXMaxProfiles
__AXMaxProfiles:
	.skip 0x4

.global __AXCurrentProfile
__AXCurrentProfile:
	.skip 0x4

.global __AXProfileInitialized
__AXProfileInitialized:
	.skip 0x4
