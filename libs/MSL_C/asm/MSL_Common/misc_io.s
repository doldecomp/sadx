.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global __stdio_atexit
__stdio_atexit:
/* 8000BDB8 00008BD8  3C 60 80 01 */	lis r3, __close_all@ha
/* 8000BDBC 00008BDC  38 03 8F C4 */	addi r0, r3, __close_all@l
/* 8000BDC0 00008BE0  90 0D 82 68 */	stw r0, __stdio_exit@sda21(r13)
/* 8000BDC4 00008BE4  4E 80 00 20 */	blr
