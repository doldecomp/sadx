.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global __ARQServiceQueueLo
__ARQServiceQueueLo:
/* 8001D5DC 0001A3FC  7C 08 02 A6 */	mflr r0
/* 8001D5E0 0001A400  90 01 00 04 */	stw r0, 0x4(r1)
/* 8001D5E4 0001A404  94 21 FF F8 */	stwu r1, -0x8(r1)
/* 8001D5E8 0001A408  80 0D 83 0C */	lwz r0, __ARQRequestPendingLo@sda21(r13)
/* 8001D5EC 0001A40C  28 00 00 00 */	cmplwi r0, 0x0
/* 8001D5F0 0001A410  40 82 00 1C */	bne lbl_8001D60C
/* 8001D5F4 0001A414  80 6D 83 00 */	lwz r3, __ARQRequestQueueLo@sda21(r13)
/* 8001D5F8 0001A418  28 03 00 00 */	cmplwi r3, 0x0
/* 8001D5FC 0001A41C  41 82 00 10 */	beq lbl_8001D60C
/* 8001D600 0001A420  90 6D 83 0C */	stw r3, __ARQRequestPendingLo@sda21(r13)
/* 8001D604 0001A424  80 03 00 00 */	lwz r0, 0x0(r3)
/* 8001D608 0001A428  90 0D 83 00 */	stw r0, __ARQRequestQueueLo@sda21(r13)
lbl_8001D60C:
/* 8001D60C 0001A42C  80 AD 83 0C */	lwz r5, __ARQRequestPendingLo@sda21(r13)
/* 8001D610 0001A430  28 05 00 00 */	cmplwi r5, 0x0
/* 8001D614 0001A434  41 82 00 B8 */	beq lbl_8001D6CC
/* 8001D618 0001A438  80 C5 00 18 */	lwz r6, 0x18(r5)
/* 8001D61C 0001A43C  80 0D 83 18 */	lwz r0, __ARQChunkSize@sda21(r13)
/* 8001D620 0001A440  7C 06 00 40 */	cmplw r6, r0
/* 8001D624 0001A444  41 81 00 3C */	bgt lbl_8001D660
/* 8001D628 0001A448  80 65 00 08 */	lwz r3, 0x8(r5)
/* 8001D62C 0001A44C  28 03 00 00 */	cmplwi r3, 0x0
/* 8001D630 0001A450  40 82 00 14 */	bne lbl_8001D644
/* 8001D634 0001A454  80 85 00 10 */	lwz r4, 0x10(r5)
/* 8001D638 0001A458  80 A5 00 14 */	lwz r5, 0x14(r5)
/* 8001D63C 0001A45C  4B FF E4 A5 */	bl ARStartDMA
/* 8001D640 0001A460  48 00 00 10 */	b lbl_8001D650
lbl_8001D644:
/* 8001D644 0001A464  80 85 00 14 */	lwz r4, 0x14(r5)
/* 8001D648 0001A468  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 8001D64C 0001A46C  4B FF E4 95 */	bl ARStartDMA
lbl_8001D650:
/* 8001D650 0001A470  80 6D 83 0C */	lwz r3, __ARQRequestPendingLo@sda21(r13)
/* 8001D654 0001A474  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8001D658 0001A478  90 0D 83 14 */	stw r0, __ARQCallbackLo@sda21(r13)
/* 8001D65C 0001A47C  48 00 00 34 */	b lbl_8001D690
lbl_8001D660:
/* 8001D660 0001A480  80 65 00 08 */	lwz r3, 0x8(r5)
/* 8001D664 0001A484  28 03 00 00 */	cmplwi r3, 0x0
/* 8001D668 0001A488  40 82 00 18 */	bne lbl_8001D680
/* 8001D66C 0001A48C  80 85 00 10 */	lwz r4, 0x10(r5)
/* 8001D670 0001A490  7C 06 03 78 */	mr r6, r0
/* 8001D674 0001A494  80 A5 00 14 */	lwz r5, 0x14(r5)
/* 8001D678 0001A498  4B FF E4 69 */	bl ARStartDMA
/* 8001D67C 0001A49C  48 00 00 14 */	b lbl_8001D690
lbl_8001D680:
/* 8001D680 0001A4A0  80 85 00 14 */	lwz r4, 0x14(r5)
/* 8001D684 0001A4A4  7C 06 03 78 */	mr r6, r0
/* 8001D688 0001A4A8  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 8001D68C 0001A4AC  4B FF E4 55 */	bl ARStartDMA
lbl_8001D690:
/* 8001D690 0001A4B0  80 6D 83 0C */	lwz r3, __ARQRequestPendingLo@sda21(r13)
/* 8001D694 0001A4B4  80 8D 83 18 */	lwz r4, __ARQChunkSize@sda21(r13)
/* 8001D698 0001A4B8  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8001D69C 0001A4BC  7C 04 00 50 */	subf r0, r4, r0
/* 8001D6A0 0001A4C0  90 03 00 18 */	stw r0, 0x18(r3)
/* 8001D6A4 0001A4C4  80 8D 83 0C */	lwz r4, __ARQRequestPendingLo@sda21(r13)
/* 8001D6A8 0001A4C8  80 0D 83 18 */	lwz r0, __ARQChunkSize@sda21(r13)
/* 8001D6AC 0001A4CC  80 64 00 10 */	lwz r3, 0x10(r4)
/* 8001D6B0 0001A4D0  7C 03 02 14 */	add r0, r3, r0
/* 8001D6B4 0001A4D4  90 04 00 10 */	stw r0, 0x10(r4)
/* 8001D6B8 0001A4D8  80 8D 83 0C */	lwz r4, __ARQRequestPendingLo@sda21(r13)
/* 8001D6BC 0001A4DC  80 0D 83 18 */	lwz r0, __ARQChunkSize@sda21(r13)
/* 8001D6C0 0001A4E0  80 64 00 14 */	lwz r3, 0x14(r4)
/* 8001D6C4 0001A4E4  7C 03 02 14 */	add r0, r3, r0
/* 8001D6C8 0001A4E8  90 04 00 14 */	stw r0, 0x14(r4)
lbl_8001D6CC:
/* 8001D6CC 0001A4EC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8001D6D0 0001A4F0  38 21 00 08 */	addi r1, r1, 0x8
/* 8001D6D4 0001A4F4  7C 08 03 A6 */	mtlr r0
/* 8001D6D8 0001A4F8  4E 80 00 20 */	blr

.global __ARQCallbackHack
__ARQCallbackHack:
/* 8001D6DC 0001A4FC  4E 80 00 20 */	blr

.global __ARQInterruptServiceRoutine
__ARQInterruptServiceRoutine:
/* 8001D6E0 0001A500  7C 08 02 A6 */	mflr r0
/* 8001D6E4 0001A504  90 01 00 04 */	stw r0, 0x4(r1)
/* 8001D6E8 0001A508  94 21 FF F8 */	stwu r1, -0x8(r1)
/* 8001D6EC 0001A50C  81 8D 83 10 */	lwz r12, __ARQCallbackHi@sda21(r13)
/* 8001D6F0 0001A510  28 0C 00 00 */	cmplwi r12, 0x0
/* 8001D6F4 0001A514  41 82 00 20 */	beq lbl_8001D714
/* 8001D6F8 0001A518  80 6D 83 08 */	lwz r3, __ARQRequestPendingHi@sda21(r13)
/* 8001D6FC 0001A51C  7D 88 03 A6 */	mtlr r12
/* 8001D700 0001A520  4E 80 00 21 */	blrl
/* 8001D704 0001A524  38 00 00 00 */	li r0, 0x0
/* 8001D708 0001A528  90 0D 83 08 */	stw r0, __ARQRequestPendingHi@sda21(r13)
/* 8001D70C 0001A52C  90 0D 83 10 */	stw r0, __ARQCallbackHi@sda21(r13)
/* 8001D710 0001A530  48 00 00 28 */	b lbl_8001D738
lbl_8001D714:
/* 8001D714 0001A534  81 8D 83 14 */	lwz r12, __ARQCallbackLo@sda21(r13)
/* 8001D718 0001A538  28 0C 00 00 */	cmplwi r12, 0x0
/* 8001D71C 0001A53C  41 82 00 1C */	beq lbl_8001D738
/* 8001D720 0001A540  80 6D 83 0C */	lwz r3, __ARQRequestPendingLo@sda21(r13)
/* 8001D724 0001A544  7D 88 03 A6 */	mtlr r12
/* 8001D728 0001A548  4E 80 00 21 */	blrl
/* 8001D72C 0001A54C  38 00 00 00 */	li r0, 0x0
/* 8001D730 0001A550  90 0D 83 0C */	stw r0, __ARQRequestPendingLo@sda21(r13)
/* 8001D734 0001A554  90 0D 83 14 */	stw r0, __ARQCallbackLo@sda21(r13)
lbl_8001D738:
/* 8001D738 0001A558  80 CD 82 F8 */	lwz r6, __ARQRequestQueueHi@sda21(r13)
/* 8001D73C 0001A55C  28 06 00 00 */	cmplwi r6, 0x0
/* 8001D740 0001A560  41 82 00 4C */	beq lbl_8001D78C
/* 8001D744 0001A564  80 66 00 08 */	lwz r3, 0x8(r6)
/* 8001D748 0001A568  28 03 00 00 */	cmplwi r3, 0x0
/* 8001D74C 0001A56C  40 82 00 18 */	bne lbl_8001D764
/* 8001D750 0001A570  80 86 00 10 */	lwz r4, 0x10(r6)
/* 8001D754 0001A574  80 A6 00 14 */	lwz r5, 0x14(r6)
/* 8001D758 0001A578  80 C6 00 18 */	lwz r6, 0x18(r6)
/* 8001D75C 0001A57C  4B FF E3 85 */	bl ARStartDMA
/* 8001D760 0001A580  48 00 00 14 */	b lbl_8001D774
lbl_8001D764:
/* 8001D764 0001A584  80 86 00 14 */	lwz r4, 0x14(r6)
/* 8001D768 0001A588  80 A6 00 10 */	lwz r5, 0x10(r6)
/* 8001D76C 0001A58C  80 C6 00 18 */	lwz r6, 0x18(r6)
/* 8001D770 0001A590  4B FF E3 71 */	bl ARStartDMA
lbl_8001D774:
/* 8001D774 0001A594  80 6D 82 F8 */	lwz r3, __ARQRequestQueueHi@sda21(r13)
/* 8001D778 0001A598  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8001D77C 0001A59C  90 0D 83 10 */	stw r0, __ARQCallbackHi@sda21(r13)
/* 8001D780 0001A5A0  90 6D 83 08 */	stw r3, __ARQRequestPendingHi@sda21(r13)
/* 8001D784 0001A5A4  80 03 00 00 */	lwz r0, 0x0(r3)
/* 8001D788 0001A5A8  90 0D 82 F8 */	stw r0, __ARQRequestQueueHi@sda21(r13)
lbl_8001D78C:
/* 8001D78C 0001A5AC  80 0D 83 08 */	lwz r0, __ARQRequestPendingHi@sda21(r13)
/* 8001D790 0001A5B0  28 00 00 00 */	cmplwi r0, 0x0
/* 8001D794 0001A5B4  40 82 00 08 */	bne lbl_8001D79C
/* 8001D798 0001A5B8  4B FF FE 45 */	bl __ARQServiceQueueLo
lbl_8001D79C:
/* 8001D79C 0001A5BC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8001D7A0 0001A5C0  38 21 00 08 */	addi r1, r1, 0x8
/* 8001D7A4 0001A5C4  7C 08 03 A6 */	mtlr r0
/* 8001D7A8 0001A5C8  4E 80 00 20 */	blr

.global ARQInit
ARQInit:
/* 8001D7AC 0001A5CC  7C 08 02 A6 */	mflr r0
/* 8001D7B0 0001A5D0  90 01 00 04 */	stw r0, 0x4(r1)
/* 8001D7B4 0001A5D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001D7B8 0001A5D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001D7BC 0001A5DC  80 0D 83 1C */	lwz r0, __ARQ_init_flag@sda21(r13)
/* 8001D7C0 0001A5E0  2C 00 00 01 */	cmpwi r0, 0x1
/* 8001D7C4 0001A5E4  41 82 00 44 */	beq lbl_8001D808
/* 8001D7C8 0001A5E8  80 6D 80 70 */	lwz r3, __ARQVersion@sda21(r13)
/* 8001D7CC 0001A5EC  48 01 E2 4D */	bl OSRegisterVersion
/* 8001D7D0 0001A5F0  3B E0 00 00 */	li r31, 0x0
/* 8001D7D4 0001A5F4  38 00 10 00 */	li r0, 0x1000
/* 8001D7D8 0001A5F8  93 ED 83 00 */	stw r31, __ARQRequestQueueLo@sda21(r13)
/* 8001D7DC 0001A5FC  3C 60 80 02 */	lis r3, __ARQInterruptServiceRoutine@ha
/* 8001D7E0 0001A600  93 ED 82 F8 */	stw r31, __ARQRequestQueueHi@sda21(r13)
/* 8001D7E4 0001A604  38 63 D6 E0 */	addi r3, r3, __ARQInterruptServiceRoutine@l
/* 8001D7E8 0001A608  90 0D 83 18 */	stw r0, __ARQChunkSize@sda21(r13)
/* 8001D7EC 0001A60C  4B FF E2 B1 */	bl ARRegisterDMACallback
/* 8001D7F0 0001A610  38 00 00 01 */	li r0, 0x1
/* 8001D7F4 0001A614  93 ED 83 08 */	stw r31, __ARQRequestPendingHi@sda21(r13)
/* 8001D7F8 0001A618  93 ED 83 0C */	stw r31, __ARQRequestPendingLo@sda21(r13)
/* 8001D7FC 0001A61C  93 ED 83 10 */	stw r31, __ARQCallbackHi@sda21(r13)
/* 8001D800 0001A620  93 ED 83 14 */	stw r31, __ARQCallbackLo@sda21(r13)
/* 8001D804 0001A624  90 0D 83 1C */	stw r0, __ARQ_init_flag@sda21(r13)
lbl_8001D808:
/* 8001D808 0001A628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001D80C 0001A62C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001D810 0001A630  38 21 00 10 */	addi r1, r1, 0x10
/* 8001D814 0001A634  7C 08 03 A6 */	mtlr r0
/* 8001D818 0001A638  4E 80 00 20 */	blr

.global ARQPostRequest
ARQPostRequest:
/* 8001D81C 0001A63C  7C 08 02 A6 */	mflr r0
/* 8001D820 0001A640  28 0A 00 00 */	cmplwi r10, 0x0
/* 8001D824 0001A644  90 01 00 04 */	stw r0, 0x4(r1)
/* 8001D828 0001A648  38 00 00 00 */	li r0, 0x0
/* 8001D82C 0001A64C  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 8001D830 0001A650  93 E1 00 34 */	stw r31, 0x34(r1)
/* 8001D834 0001A654  93 C1 00 30 */	stw r30, 0x30(r1)
/* 8001D838 0001A658  3B C6 00 00 */	addi r30, r6, 0x0
/* 8001D83C 0001A65C  93 A1 00 2C */	stw r29, 0x2c(r1)
/* 8001D840 0001A660  3B A3 00 00 */	addi r29, r3, 0x0
/* 8001D844 0001A664  90 03 00 00 */	stw r0, 0x0(r3)
/* 8001D848 0001A668  90 83 00 04 */	stw r4, 0x4(r3)
/* 8001D84C 0001A66C  90 A3 00 08 */	stw r5, 0x8(r3)
/* 8001D850 0001A670  90 E3 00 10 */	stw r7, 0x10(r3)
/* 8001D854 0001A674  91 03 00 14 */	stw r8, 0x14(r3)
/* 8001D858 0001A678  91 23 00 18 */	stw r9, 0x18(r3)
/* 8001D85C 0001A67C  41 82 00 0C */	beq lbl_8001D868
/* 8001D860 0001A680  91 5D 00 1C */	stw r10, 0x1c(r29)
/* 8001D864 0001A684  48 00 00 10 */	b lbl_8001D874
lbl_8001D868:
/* 8001D868 0001A688  3C 60 80 02 */	lis r3, __ARQCallbackHack@ha
/* 8001D86C 0001A68C  38 03 D6 DC */	addi r0, r3, __ARQCallbackHack@l
/* 8001D870 0001A690  90 1D 00 1C */	stw r0, 0x1c(r29)
lbl_8001D874:
/* 8001D874 0001A694  48 02 14 51 */	bl OSDisableInterrupts
/* 8001D878 0001A698  2C 1E 00 01 */	cmpwi r30, 0x1
/* 8001D87C 0001A69C  3B E3 00 00 */	addi r31, r3, 0x0
/* 8001D880 0001A6A0  41 82 00 38 */	beq lbl_8001D8B8
/* 8001D884 0001A6A4  40 80 00 54 */	bge lbl_8001D8D8
/* 8001D888 0001A6A8  2C 1E 00 00 */	cmpwi r30, 0x0
/* 8001D88C 0001A6AC  40 80 00 08 */	bge lbl_8001D894
/* 8001D890 0001A6B0  48 00 00 48 */	b lbl_8001D8D8
lbl_8001D894:
/* 8001D894 0001A6B4  80 0D 83 00 */	lwz r0, __ARQRequestQueueLo@sda21(r13)
/* 8001D898 0001A6B8  28 00 00 00 */	cmplwi r0, 0x0
/* 8001D89C 0001A6BC  41 82 00 10 */	beq lbl_8001D8AC
/* 8001D8A0 0001A6C0  80 6D 83 04 */	lwz r3, __ARQRequestTailLo@sda21(r13)
/* 8001D8A4 0001A6C4  93 A3 00 00 */	stw r29, 0x0(r3)
/* 8001D8A8 0001A6C8  48 00 00 08 */	b lbl_8001D8B0
lbl_8001D8AC:
/* 8001D8AC 0001A6CC  93 AD 83 00 */	stw r29, __ARQRequestQueueLo@sda21(r13)
lbl_8001D8B0:
/* 8001D8B0 0001A6D0  93 AD 83 04 */	stw r29, __ARQRequestTailLo@sda21(r13)
/* 8001D8B4 0001A6D4  48 00 00 24 */	b lbl_8001D8D8
lbl_8001D8B8:
/* 8001D8B8 0001A6D8  80 0D 82 F8 */	lwz r0, __ARQRequestQueueHi@sda21(r13)
/* 8001D8BC 0001A6DC  28 00 00 00 */	cmplwi r0, 0x0
/* 8001D8C0 0001A6E0  41 82 00 10 */	beq lbl_8001D8D0
/* 8001D8C4 0001A6E4  80 6D 82 FC */	lwz r3, __ARQRequestTailHi@sda21(r13)
/* 8001D8C8 0001A6E8  93 A3 00 00 */	stw r29, 0x0(r3)
/* 8001D8CC 0001A6EC  48 00 00 08 */	b lbl_8001D8D4
lbl_8001D8D0:
/* 8001D8D0 0001A6F0  93 AD 82 F8 */	stw r29, __ARQRequestQueueHi@sda21(r13)
lbl_8001D8D4:
/* 8001D8D4 0001A6F4  93 AD 82 FC */	stw r29, __ARQRequestTailHi@sda21(r13)
lbl_8001D8D8:
/* 8001D8D8 0001A6F8  80 0D 83 08 */	lwz r0, __ARQRequestPendingHi@sda21(r13)
/* 8001D8DC 0001A6FC  28 00 00 00 */	cmplwi r0, 0x0
/* 8001D8E0 0001A700  40 82 00 74 */	bne lbl_8001D954
/* 8001D8E4 0001A704  80 0D 83 0C */	lwz r0, __ARQRequestPendingLo@sda21(r13)
/* 8001D8E8 0001A708  28 00 00 00 */	cmplwi r0, 0x0
/* 8001D8EC 0001A70C  40 82 00 68 */	bne lbl_8001D954
/* 8001D8F0 0001A710  80 CD 82 F8 */	lwz r6, __ARQRequestQueueHi@sda21(r13)
/* 8001D8F4 0001A714  28 06 00 00 */	cmplwi r6, 0x0
/* 8001D8F8 0001A718  41 82 00 4C */	beq lbl_8001D944
/* 8001D8FC 0001A71C  80 66 00 08 */	lwz r3, 0x8(r6)
/* 8001D900 0001A720  28 03 00 00 */	cmplwi r3, 0x0
/* 8001D904 0001A724  40 82 00 18 */	bne lbl_8001D91C
/* 8001D908 0001A728  80 86 00 10 */	lwz r4, 0x10(r6)
/* 8001D90C 0001A72C  80 A6 00 14 */	lwz r5, 0x14(r6)
/* 8001D910 0001A730  80 C6 00 18 */	lwz r6, 0x18(r6)
/* 8001D914 0001A734  4B FF E1 CD */	bl ARStartDMA
/* 8001D918 0001A738  48 00 00 14 */	b lbl_8001D92C
lbl_8001D91C:
/* 8001D91C 0001A73C  80 86 00 14 */	lwz r4, 0x14(r6)
/* 8001D920 0001A740  80 A6 00 10 */	lwz r5, 0x10(r6)
/* 8001D924 0001A744  80 C6 00 18 */	lwz r6, 0x18(r6)
/* 8001D928 0001A748  4B FF E1 B9 */	bl ARStartDMA
lbl_8001D92C:
/* 8001D92C 0001A74C  80 6D 82 F8 */	lwz r3, __ARQRequestQueueHi@sda21(r13)
/* 8001D930 0001A750  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8001D934 0001A754  90 0D 83 10 */	stw r0, __ARQCallbackHi@sda21(r13)
/* 8001D938 0001A758  90 6D 83 08 */	stw r3, __ARQRequestPendingHi@sda21(r13)
/* 8001D93C 0001A75C  80 03 00 00 */	lwz r0, 0x0(r3)
/* 8001D940 0001A760  90 0D 82 F8 */	stw r0, __ARQRequestQueueHi@sda21(r13)
lbl_8001D944:
/* 8001D944 0001A764  80 0D 83 08 */	lwz r0, __ARQRequestPendingHi@sda21(r13)
/* 8001D948 0001A768  28 00 00 00 */	cmplwi r0, 0x0
/* 8001D94C 0001A76C  40 82 00 08 */	bne lbl_8001D954
/* 8001D950 0001A770  4B FF FC 8D */	bl __ARQServiceQueueLo
lbl_8001D954:
/* 8001D954 0001A774  7F E3 FB 78 */	mr r3, r31
/* 8001D958 0001A778  48 02 13 95 */	bl OSRestoreInterrupts
/* 8001D95C 0001A77C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8001D960 0001A780  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 8001D964 0001A784  83 C1 00 30 */	lwz r30, 0x30(r1)
/* 8001D968 0001A788  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 8001D96C 0001A78C  38 21 00 38 */	addi r1, r1, 0x38
/* 8001D970 0001A790  7C 08 03 A6 */	mtlr r0
/* 8001D974 0001A794  4E 80 00 20 */	blr


.section .data, "wa"  # 0x80079C60 - 0x80085B20 ; 0x0000BEC0

.balign 8

.global lbl_8007AA90
lbl_8007AA90:

	# ROM: 0x77A90
	.asciz "<< Dolphin SDK - ARQ\trelease build: Sep  5 2002 05:34:29 (0x2301) >>"


.section .sdata, "wa"  # 0x800C3E60 - 0x800C4080 ; 0x00000220

.balign 8

.global __ARQVersion
__ARQVersion:

	# ROM: 0x82B90
	.4byte lbl_8007AA90


.section .sbss, "", @nobits  # 0x800C4080 - 0x800C4680 ; 0x00000600

.balign 8

.global __ARQRequestQueueHi
__ARQRequestQueueHi:
	.skip 0x4

.global __ARQRequestTailHi
__ARQRequestTailHi:
	.skip 0x4

.global __ARQRequestQueueLo
__ARQRequestQueueLo:
	.skip 0x4

.global __ARQRequestTailLo
__ARQRequestTailLo:
	.skip 0x4

.global __ARQRequestPendingHi
__ARQRequestPendingHi:
	.skip 0x4

.global __ARQRequestPendingLo
__ARQRequestPendingLo:
	.skip 0x4

.global __ARQCallbackHi
__ARQCallbackHi:
	.skip 0x4

.global __ARQCallbackLo
__ARQCallbackLo:
	.skip 0x4

.global __ARQChunkSize
__ARQChunkSize:
	.skip 0x4

.global __ARQ_init_flag
__ARQ_init_flag:
	.skip 0x4
