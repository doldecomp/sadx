.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global exit
exit:
/* 80008898 000056B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000889C 000056BC  7C 08 02 A6 */	mflr r0
/* 800088A0 000056C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800088A4 000056C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800088A8 000056C8  80 0D 82 60 */	lwz r0, __aborting@sda21(r13)
/* 800088AC 000056CC  2C 00 00 00 */	cmpwi r0, 0x0
/* 800088B0 000056D0  40 82 00 4C */	bne lbl_800088FC
/* 800088B4 000056D4  4B FF DD 85 */	bl __destroy_global_chain
/* 800088B8 000056D8  3C 60 80 07 */	lis r3, _dtors@ha
/* 800088BC 000056DC  38 03 64 C0 */	addi r0, r3, _dtors@l
/* 800088C0 000056E0  7C 1F 03 78 */	mr r31, r0
/* 800088C4 000056E4  48 00 00 10 */	b lbl_800088D4
lbl_800088C8:
/* 800088C8 000056E8  7D 89 03 A6 */	mtctr r12
/* 800088CC 000056EC  4E 80 04 21 */	bctrl
/* 800088D0 000056F0  3B FF 00 04 */	addi r31, r31, 0x4
lbl_800088D4:
/* 800088D4 000056F4  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 800088D8 000056F8  28 0C 00 00 */	cmplwi r12, 0x0
/* 800088DC 000056FC  40 82 FF EC */	bne lbl_800088C8
/* 800088E0 00005700  81 8D 82 68 */	lwz r12, __stdio_exit@sda21(r13)
/* 800088E4 00005704  28 0C 00 00 */	cmplwi r12, 0x0
/* 800088E8 00005708  41 82 00 14 */	beq lbl_800088FC
/* 800088EC 0000570C  7D 89 03 A6 */	mtctr r12
/* 800088F0 00005710  4E 80 04 21 */	bctrl
/* 800088F4 00005714  38 00 00 00 */	li r0, 0x0
/* 800088F8 00005718  90 0D 82 68 */	stw r0, __stdio_exit@sda21(r13)
lbl_800088FC:
/* 800088FC 0000571C  3C 60 80 08 */	lis r3, __atexit_funcs@ha
/* 80008900 00005720  3B E3 66 C0 */	addi r31, r3, __atexit_funcs@l
/* 80008904 00005724  48 00 00 20 */	b lbl_80008924
lbl_80008908:
/* 80008908 00005728  80 6D 82 64 */	lwz r3, __atexit_curr_func@sda21(r13)
/* 8000890C 0000572C  38 63 FF FF */	addi r3, r3, -0x1
/* 80008910 00005730  54 60 10 3A */	slwi r0, r3, 2
/* 80008914 00005734  90 6D 82 64 */	stw r3, __atexit_curr_func@sda21(r13)
/* 80008918 00005738  7D 9F 00 2E */	lwzx r12, r31, r0
/* 8000891C 0000573C  7D 89 03 A6 */	mtctr r12
/* 80008920 00005740  4E 80 04 21 */	bctrl
lbl_80008924:
/* 80008924 00005744  80 0D 82 64 */	lwz r0, __atexit_curr_func@sda21(r13)
/* 80008928 00005748  2C 00 00 00 */	cmpwi r0, 0x0
/* 8000892C 0000574C  41 81 FF DC */	bgt lbl_80008908
/* 80008930 00005750  81 8D 82 6C */	lwz r12, __console_exit@sda21(r13)
/* 80008934 00005754  28 0C 00 00 */	cmplwi r12, 0x0
/* 80008938 00005758  41 82 00 14 */	beq lbl_8000894C
/* 8000893C 0000575C  7D 89 03 A6 */	mtctr r12
/* 80008940 00005760  4E 80 04 21 */	bctrl
/* 80008944 00005764  38 00 00 00 */	li r0, 0x0
/* 80008948 00005768  90 0D 82 6C */	stw r0, __console_exit@sda21(r13)
lbl_8000894C:
/* 8000894C 0000576C  48 03 A4 6D */	bl func_80042DB8
/* 80008950 00005770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80008954 00005774  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80008958 00005778  7C 08 03 A6 */	mtlr r0
/* 8000895C 0000577C  38 21 00 10 */	addi r1, r1, 0x10
/* 80008960 00005780  4E 80 00 20 */	blr

.global abort
abort:
/* 80008964 00005784  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80008968 00005788  7C 08 02 A6 */	mflr r0
/* 8000896C 0000578C  38 60 00 01 */	li r3, 0x1
/* 80008970 00005790  90 01 00 14 */	stw r0, 0x14(r1)
/* 80008974 00005794  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80008978 00005798  48 00 64 1D */	bl raise
/* 8000897C 0000579C  38 00 00 01 */	li r0, 0x1
/* 80008980 000057A0  3C 60 80 08 */	lis r3, __atexit_funcs@ha
/* 80008984 000057A4  90 0D 82 60 */	stw r0, __aborting@sda21(r13)
/* 80008988 000057A8  3B E3 66 C0 */	addi r31, r3, __atexit_funcs@l
/* 8000898C 000057AC  48 00 00 20 */	b lbl_800089AC
lbl_80008990:
/* 80008990 000057B0  80 6D 82 64 */	lwz r3, __atexit_curr_func@sda21(r13)
/* 80008994 000057B4  38 63 FF FF */	addi r3, r3, -0x1
/* 80008998 000057B8  54 60 10 3A */	slwi r0, r3, 2
/* 8000899C 000057BC  90 6D 82 64 */	stw r3, __atexit_curr_func@sda21(r13)
/* 800089A0 000057C0  7D 9F 00 2E */	lwzx r12, r31, r0
/* 800089A4 000057C4  7D 89 03 A6 */	mtctr r12
/* 800089A8 000057C8  4E 80 04 21 */	bctrl
lbl_800089AC:
/* 800089AC 000057CC  80 0D 82 64 */	lwz r0, __atexit_curr_func@sda21(r13)
/* 800089B0 000057D0  2C 00 00 00 */	cmpwi r0, 0x0
/* 800089B4 000057D4  41 81 FF DC */	bgt lbl_80008990
/* 800089B8 000057D8  81 8D 82 6C */	lwz r12, __console_exit@sda21(r13)
/* 800089BC 000057DC  28 0C 00 00 */	cmplwi r12, 0x0
/* 800089C0 000057E0  41 82 00 14 */	beq lbl_800089D4
/* 800089C4 000057E4  7D 89 03 A6 */	mtctr r12
/* 800089C8 000057E8  4E 80 04 21 */	bctrl
/* 800089CC 000057EC  38 00 00 00 */	li r0, 0x0
/* 800089D0 000057F0  90 0D 82 6C */	stw r0, __console_exit@sda21(r13)
lbl_800089D4:
/* 800089D4 000057F4  48 03 A3 E5 */	bl func_80042DB8
/* 800089D8 000057F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800089DC 000057FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800089E0 00005800  7C 08 03 A6 */	mtlr r0
/* 800089E4 00005804  38 21 00 10 */	addi r1, r1, 0x10
/* 800089E8 00005808  4E 80 00 20 */	blr


.section .bss, "", @nobits  # 0x80085B20 - 0x800C3E60 ; 0x0003E340

.balign 8

.global __atexit_funcs
__atexit_funcs:
	.skip 0x100


.section .sbss, "", @nobits  # 0x800C4080 - 0x800C4680 ; 0x00000600

.balign 8

.global __aborting
__aborting:
	.skip 0x4

.global __atexit_curr_func
__atexit_curr_func:
	.skip 0x4

.global __stdio_exit
__stdio_exit:
	.skip 0x4

.global __console_exit
__console_exit:
	.skip 0x4
