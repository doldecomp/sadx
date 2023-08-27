.include "macros.s"

.section .text, "ax"  # 0x800058A0 - 0x800764A0 ; 0x00070C00


.global GetUseSerialIO
GetUseSerialIO:
/* 8001B00C 00017E2C  3C 60 80 09 */	lis r3, bUseSerialIO@ha
/* 8001B010 00017E30  38 63 AC D0 */	addi r3, r3, bUseSerialIO@l
/* 8001B014 00017E34  88 63 00 00 */	lbz r3, 0x0(r3)
/* 8001B018 00017E38  4E 80 00 20 */	blr

.global SetUseSerialIO
SetUseSerialIO:
/* 8001B01C 00017E3C  3C 80 80 09 */	lis r4, bUseSerialIO@ha
/* 8001B020 00017E40  98 64 AC D0 */	stb r3, bUseSerialIO@l(r4)
/* 8001B024 00017E44  4E 80 00 20 */	blr


.section .bss, "", @nobits  # 0x80085B20 - 0x800C3E60 ; 0x0003E340

.balign 8

.global bUseSerialIO
bUseSerialIO:
	.skip 0x1
