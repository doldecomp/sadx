.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global TRKReleaseMutex
TRKReleaseMutex:
/* 80018B9C 000159BC  38 60 00 00 */	li r3, 0x0
/* 80018BA0 000159C0  4E 80 00 20 */	blr

.global TRKAcquireMutex
TRKAcquireMutex:
/* 80018BA4 000159C4  38 60 00 00 */	li r3, 0x0
/* 80018BA8 000159C8  4E 80 00 20 */	blr

.global TRKInitializeMutex
TRKInitializeMutex:
/* 80018BAC 000159CC  38 60 00 00 */	li r3, 0x0
/* 80018BB0 000159D0  4E 80 00 20 */	blr
