.include "macros.s"

.section .bss, "", @nobits  # 0x80085B20 - 0x800C3E60 ; 0x0003E340


.balign 8

.global lbl_8008ACD8
lbl_8008ACD8:
	.skip 0x80

.global lbl_8008AD58
lbl_8008AD58:
	.skip 0x88

.global lbl_8008ADE0
lbl_8008ADE0:
	.skip 0x1680

.global lbl_8008C460
lbl_8008C460:
	.skip 0x1680

.global lbl_8008DAE0
lbl_8008DAE0:
	.skip 0x600

.global lbl_8008E0E0
lbl_8008E0E0:
	.skip 0x780

.global lbl_8008E860
lbl_8008E860:
	.skip 0x17A8

.global lbl_80090008
lbl_80090008:
	.skip 0x4

.global lbl_8009000C
lbl_8009000C:
	.skip 0x28F4

.global lbl_80092900
lbl_80092900:
	.skip 0x40

.global lbl_80092940
lbl_80092940:
	.skip 0xD640

.global lbl_8009FF80
lbl_8009FF80:
	.skip 0x80

.global lbl_800A0000
lbl_800A0000:
	.skip 0x4

.global lbl_800A0004
lbl_800A0004:
	.skip 0x4

.global lbl_800A0008
lbl_800A0008:
	.skip 0x4

.global lbl_800A000C
lbl_800A000C:
	.skip 0x4

.global lbl_800A0010
lbl_800A0010:
	.skip 0x4

.global lbl_800A0014
lbl_800A0014:
	.skip 0x4

.global lbl_800A0018
lbl_800A0018:
	.skip 0x4

.global lbl_800A001C
lbl_800A001C:
	.skip 0x4

.global lbl_800A0020
lbl_800A0020:
	.skip 0x3D20

.global lbl_800A3D40
lbl_800A3D40:
	.skip 0x220

.global lbl_800A3F60
lbl_800A3F60:
	.skip 0x20

.global CommandList
CommandList:
	.skip 0x3C

lbl_800A3FBC:
	.skip 0x2C

.global AlarmForTimeout
AlarmForTimeout:
	.skip 0x28

lbl_800A4010:
	.skip 0x50

.global BB2
BB2:
	.skip 0x20

.global lbl_800A4080
lbl_800A4080:
	.skip 0x20

.global DummyCommandBlock
DummyCommandBlock:
	.skip 0x30

lbl_800A40D0:
	.skip 0x28

.global WaitingQueue
WaitingQueue:
	.skip 0x20

.global bb2Buf
bb2Buf:
	.skip 0x3F
	.balign 8

.global "block$16"
"block$16":
	.skip 0x30

.global Ecb
Ecb:
	.skip 0xC0

.global lbl_800A4248
lbl_800A4248:
	.skip 0x578

.global lbl_800A47C0
lbl_800A47C0:
	.skip 0x1800

.global DriveInfo
DriveInfo:
	.skip 0x20

lbl_800A5FE0:
	.skip 0x30

.global __OSErrorTable
__OSErrorTable:
	.skip 0x44

lbl_800A6054:
	.skip 0xC

.global lbl_800A6060
lbl_800A6060:
	.skip 0x20

.global Scb
Scb:
	.skip 0x54
	.balign 8

.global RunQueue
RunQueue:
	.skip 0x100

lbl_800A61D8:
	.skip 0x8F8

.global lbl_800A6AD0
lbl_800A6AD0:
	.skip 0x10

.global lbl_800A6AE0
lbl_800A6AE0:
	.skip 0x40

.global Packet
Packet:
	.skip 0x80

.global lbl_800A6BA0
lbl_800A6BA0:
	.skip 0xA0

.global TypeTime
TypeTime:
	.skip 0x20

.global lbl_800A6C60
lbl_800A6C60:
	.skip 0x20

.global lbl_800A6C80
lbl_800A6C80:
	.skip 0x40

.global lbl_800A6CC0
lbl_800A6CC0:
	.skip 0x60

.global lbl_800A6D20
lbl_800A6D20:
	.skip 0x148

.global lbl_800A6E68
lbl_800A6E68:
	.skip 0x80

.global lbl_800A6EE8
lbl_800A6EE8:
	.skip 0x10

.global lbl_800A6EF8
lbl_800A6EF8:
	.skip 0x500

.global lbl_800A73F8
lbl_800A73F8:
	.skip 0xF0

.global lbl_800A74E8
lbl_800A74E8:
	.skip 0xC

.global lbl_800A74F4
lbl_800A74F4:
	.skip 0x20

.global lbl_800A7514
lbl_800A7514:
	.skip 0x30

.global lbl_800A7544
lbl_800A7544:
	.skip 0x10

.global lbl_800A7554
lbl_800A7554:
	.skip 0x28

.global lbl_800A757C
lbl_800A757C:
	.skip 0x30

.global lbl_800A75AC
lbl_800A75AC:
	.skip 0x1F4

.global lbl_800A77A0
lbl_800A77A0:
	.skip 0x20

.global lbl_800A77C0
lbl_800A77C0:
	.skip 0xD0

.global lbl_800A7890
lbl_800A7890:
	.skip 0x20

.global lbl_800A78B0
lbl_800A78B0:
	.skip 0x20

.global lbl_800A78D0
lbl_800A78D0:
	.skip 0x100

.global lbl_800A79D0
lbl_800A79D0:
	.skip 0x30

.global lbl_800A7A00
lbl_800A7A00:
	.skip 0x100

.global lbl_800A7B00
lbl_800A7B00:
	.skip 0x1E0

.global lbl_800A7CE0
lbl_800A7CE0:
	.skip 0x28

.global lbl_800A7D08
lbl_800A7D08:
	.skip 0x30

.global lbl_800A7D38
lbl_800A7D38:
	.skip 0x100

.global lbl_800A7E38
lbl_800A7E38:
	.skip 0x10

.global lbl_800A7E48
lbl_800A7E48:
	.skip 0x4

.global lbl_800A7E4C
lbl_800A7E4C:
	.skip 0xC04

.global lbl_800A8A50
lbl_800A8A50:
	.skip 0x9C0

.global lbl_800A9410
lbl_800A9410:
	.skip 0x4

.global lbl_800A9414
lbl_800A9414:
	.skip 0x4

.global lbl_800A9418
lbl_800A9418:
	.skip 0x14

.global lbl_800A942C
lbl_800A942C:
	.skip 0xC84

.global lbl_800AA0B0
lbl_800AA0B0:
	.skip 0x8

.global lbl_800AA0B8
lbl_800AA0B8:
	.skip 0x8

.global lbl_800AA0C0
lbl_800AA0C0:
	.skip 0x4

.global lbl_800AA0C4
lbl_800AA0C4:
	.skip 0x4

.global lbl_800AA0C8
lbl_800AA0C8:
	.skip 0x120

.global lbl_800AA1E8
lbl_800AA1E8:
	.skip 0x8

.global lbl_800AA1F0
lbl_800AA1F0:
	.skip 0x40

.global lbl_800AA230
lbl_800AA230:
	.skip 0x400

.global lbl_800AA630
lbl_800AA630:
	.skip 0x8

.global lbl_800AA638
lbl_800AA638:
	.skip 0x9D0

.global lbl_800AB008
lbl_800AB008:
	.skip 0x16C0

.global lbl_800AC6C8
lbl_800AC6C8:
	.skip 0x4

.global lbl_800AC6CC
lbl_800AC6CC:
	.skip 0x4

.global lbl_800AC6D0
lbl_800AC6D0:
	.skip 0x4

.global lbl_800AC6D4
lbl_800AC6D4:
	.skip 0x4

.global lbl_800AC6D8
lbl_800AC6D8:
	.skip 0xE60

.global lbl_800AD538
lbl_800AD538:
	.skip 0x4

.global lbl_800AD53C
lbl_800AD53C:
	.skip 0x20

.global lbl_800AD55C
lbl_800AD55C:
	.skip 0x10

.global lbl_800AD56C
lbl_800AD56C:
	.skip 0x14

.global lbl_800AD580
lbl_800AD580:
	.skip 0x10

.global lbl_800AD590
lbl_800AD590:
	.skip 0x4

.global lbl_800AD594
lbl_800AD594:
	.skip 0x3C4

.global lbl_800AD958
lbl_800AD958:
	.skip 0x4

.global lbl_800AD95C
lbl_800AD95C:
	.skip 0x26A4

.global lbl_800B0000
lbl_800B0000:
	.skip 0x1

.global lbl_800B0001
lbl_800B0001:
	.skip 0x1

.global lbl_800B0002
lbl_800B0002:
	.skip 0x1

.global lbl_800B0003
lbl_800B0003:
	.skip 0x9

.global lbl_800B000C
lbl_800B000C:
	.skip 0x4

.global lbl_800B0010
lbl_800B0010:
	.skip 0x10

.global lbl_800B0020
lbl_800B0020:
	.skip 0x4

.global lbl_800B0024
lbl_800B0024:
	.skip 0x4

.global lbl_800B0028
lbl_800B0028:
	.skip 0x8

.global lbl_800B0030
lbl_800B0030:
	.skip 0x13

.global lbl_800B0043
lbl_800B0043:
	.skip 0x15

.global lbl_800B0058
lbl_800B0058:
	.skip 0x15

.global lbl_800B006D
lbl_800B006D:
	.skip 0x559B

.global lbl_800B5608
lbl_800B5608:
	.skip 0x4

.global lbl_800B560C
lbl_800B560C:
	.skip 0x4

.global lbl_800B5610
lbl_800B5610:
	.skip 0x8

.global lbl_800B5618
lbl_800B5618:
	.skip 0x4

.global lbl_800B561C
lbl_800B561C:
	.skip 0x4

.global lbl_800B5620
lbl_800B5620:
	.skip 0x4

.global lbl_800B5624
lbl_800B5624:
	.skip 0x4

.global lbl_800B5628
lbl_800B5628:
	.skip 0x4

.global lbl_800B562C
lbl_800B562C:
	.skip 0x20

.global lbl_800B564C
lbl_800B564C:
	.skip 0x100

.global lbl_800B574C
lbl_800B574C:
	.skip 0x4

.global lbl_800B5750
lbl_800B5750:
	.skip 0x400

.global lbl_800B5B50
lbl_800B5B50:
	.skip 0x440

.global lbl_800B5F90
lbl_800B5F90:
	.skip 0x4

.global lbl_800B5F94
lbl_800B5F94:
	.skip 0x4

.global lbl_800B5F98
lbl_800B5F98:
	.skip 0x2080

.global lbl_800B8018
lbl_800B8018:
	.skip 0x4

.global lbl_800B801C
lbl_800B801C:
	.skip 0x140

.global lbl_800B815C
lbl_800B815C:
	.skip 0x344

.global lbl_800B84A0
lbl_800B84A0:
	.skip 0xC

.global lbl_800B84AC
lbl_800B84AC:
	.skip 0x4

.global lbl_800B84B0
lbl_800B84B0:
	.skip 0x4

.global lbl_800B84B4
lbl_800B84B4:
	.skip 0xFA4

.global lbl_800B9458
lbl_800B9458:
	.skip 0x100

.global lbl_800B9558
lbl_800B9558:
	.skip 0x4

.global lbl_800B955C
lbl_800B955C:
	.skip 0x104

.global lbl_800B9660
lbl_800B9660:
	.skip 0x10

.global lbl_800B9670
lbl_800B9670:
	.skip 0x4

.global lbl_800B9674
lbl_800B9674:
	.skip 0x2384

.global lbl_800BB9F8
lbl_800BB9F8:
	.skip 0x4

.global lbl_800BB9FC
lbl_800BB9FC:
	.skip 0x4

.global lbl_800BBA00
lbl_800BBA00:
	.skip 0x4

.global lbl_800BBA04
lbl_800BBA04:
	.skip 0x484

.global lbl_800BBE88
lbl_800BBE88:
	.skip 0x4

.global lbl_800BBE8C
lbl_800BBE8C:
	.skip 0x4004

.global lbl_800BFE90
lbl_800BFE90:
	.skip 0x4

.global lbl_800BFE94
lbl_800BFE94:
	.skip 0x16C

.global lbl_800C0000
lbl_800C0000:
	.skip 0x1

.global lbl_800C0001
lbl_800C0001:
	.skip 0x3

.global lbl_800C0004
lbl_800C0004:
	.skip 0xA94

.global lbl_800C0A98
lbl_800C0A98:
	.skip 0x30

.global lbl_800C0AC8
lbl_800C0AC8:
	.skip 0x80

.global lbl_800C0B48
lbl_800C0B48:
	.skip 0x8

.global lbl_800C0B50
lbl_800C0B50:
	.skip 0x8

.global lbl_800C0B58
lbl_800C0B58:
	.skip 0x8

.global lbl_800C0B60
lbl_800C0B60:
	.skip 0x200

.global lbl_800C0D60
lbl_800C0D60:
	.skip 0x4

.global lbl_800C0D64
lbl_800C0D64:
	.skip 0x9F4

.global lbl_800C1758
lbl_800C1758:
	.skip 0x4

.global lbl_800C175C
lbl_800C175C:
	.skip 0x104

.global lbl_800C1860
lbl_800C1860:
	.skip 0x4

.global lbl_800C1864
lbl_800C1864:
	.skip 0x4

.global lbl_800C1868
lbl_800C1868:
	.skip 0x8

.global lbl_800C1870
lbl_800C1870:
	.skip 0x4

.global lbl_800C1874
lbl_800C1874:
	.skip 0x10C0

.global lbl_800C2934
lbl_800C2934:
	.skip 0xE84

.global lbl_800C37B8
lbl_800C37B8:
	.skip 0x14

.global lbl_800C37CC
lbl_800C37CC:
	.skip 0x194

.global lbl_800C3960
lbl_800C3960:
	.skip 0x100

.global lbl_800C3A60
lbl_800C3A60:
	.skip 0x400
