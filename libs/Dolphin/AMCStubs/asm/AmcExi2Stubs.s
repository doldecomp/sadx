.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global EXI2_Init
EXI2_Init:
/* 8001BA6C 0001888C  4E 80 00 20 */	blr

.global EXI2_EnableInterrupts
EXI2_EnableInterrupts:
/* 8001BA70 00018890  4E 80 00 20 */	blr

.global EXI2_Poll
EXI2_Poll:
/* 8001BA74 00018894  38 60 00 00 */	li r3, 0x0
/* 8001BA78 00018898  4E 80 00 20 */	blr

.global EXI2_ReadN
EXI2_ReadN:
/* 8001BA7C 0001889C  38 60 00 00 */	li r3, 0x0
/* 8001BA80 000188A0  4E 80 00 20 */	blr

.global EXI2_WriteN
EXI2_WriteN:
/* 8001BA84 000188A4  38 60 00 00 */	li r3, 0x0
/* 8001BA88 000188A8  4E 80 00 20 */	blr

.global EXI2_Reserve
EXI2_Reserve:
/* 8001BA8C 000188AC  4E 80 00 20 */	blr

.global EXI2_Unreserve
EXI2_Unreserve:
/* 8001BA90 000188B0  4E 80 00 20 */	blr

.global AMC_IsStub
AMC_IsStub:
/* 8001BA94 000188B4  38 60 00 01 */	li r3, 0x1
/* 8001BA98 000188B8  4E 80 00 20 */	blr
