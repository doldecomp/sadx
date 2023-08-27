.include "macros.s"

.section .sdata, "wa"  # 0x800C3E60 - 0x800C4080 ; 0x00000220


.balign 8

.global lbl_800C3EF0
lbl_800C3EF0:

	# ROM: 0x82BB0
	.4byte lbl_8007ED90
	.balign 8
	
	# split

.global lbl_800C3EF8
lbl_800C3EF8:

	# ROM: 0x82BB8
	.4byte 0x00000001
	.4byte 0

.global lbl_800C3F00
lbl_800C3F00:

	# ROM: 0x82BC0
	.4byte 0xFFFF0000
	.4byte 0

.global lbl_800C3F08
lbl_800C3F08:

	# ROM: 0x82BC8
	.4byte lbl_8007EFB8
	.balign 8
	
	# split

.global lbl_800C3F10
lbl_800C3F10:

	# ROM: 0x82BD0
	.4byte 0x00000001
	.balign 8
	
	# split

.global lbl_800C3F18
lbl_800C3F18:

	# ROM: 0x82BD8
	.asciz "dvdfs.c"

.global __DVDVersion
__DVDVersion:

	# ROM: 0x82BE0
	.4byte lbl_8007F2E0

.global autoInvalidation
autoInvalidation:

	# ROM: 0x82BE4
	.4byte 0x00000001

.global lbl_800C3F28
lbl_800C3F28:

	# ROM: 0x82BE8
	.4byte lbl_8002BE5C

.global lbl_800C3F2C
lbl_800C3F2C:

	# ROM: 0x82BEC
	.asciz "dvd.c"
	.balign 4

.global lbl_800C3F34
lbl_800C3F34:

	# ROM: 0x82BF4
	.4byte 0xFFFFFFFF

.global lbl_800C3F38
lbl_800C3F38:

	# ROM: 0x82BF8
	.4byte 0x0A000000

.global lbl_800C3F3C
lbl_800C3F3C:

	# ROM: 0x82BFC
	.asciz "OFF"

.global lbl_800C3F40
lbl_800C3F40:

	# ROM: 0x82C00
	.asciz "ON"
	.balign 8
	
	# split

.global __EXIVersion
__EXIVersion:

	# ROM: 0x82C08
	.4byte lbl_8007F518
	.balign 8
	
	# split

.global lbl_800C3F50
lbl_800C3F50:

	# ROM: 0x82C10
	.4byte lbl_8007F628
	.balign 8
	
	# split

.global lbl_800C3F58
lbl_800C3F58:

	# ROM: 0x82C18
	.4byte 0x00040102

.global lbl_800C3F5C
lbl_800C3F5C:

	# ROM: 0x82C1C
	.4byte 0x00080102

.global lbl_800C3F60
lbl_800C3F60:

	# ROM: 0x82C20
	.4byte 0x000C0102
	.balign 8
	
	# split

.global lbl_800C3F68
lbl_800C3F68:

	# ROM: 0x82C28
	.4byte 0x80818283
	.4byte 0xA0A1A2A3

.global lbl_800C3F70
lbl_800C3F70:

	# ROM: 0x82C30
	.4byte 0x84858687
	.4byte 0xA4A5A6A7

.global lbl_800C3F78
lbl_800C3F78:

	# ROM: 0x82C38
	.4byte 0x88898A8B
	.4byte 0xA8A9AAAB

.global lbl_800C3F80
lbl_800C3F80:

	# ROM: 0x82C40
	.4byte 0x8C8D8E8F
	.4byte 0xACADAEAF

.global lbl_800C3F88
lbl_800C3F88:

	# ROM: 0x82C48
	.4byte 0x90919293
	.4byte 0xB0B1B2B3

.global lbl_800C3F90
lbl_800C3F90:

	# ROM: 0x82C50
	.4byte 0x94959697
	.4byte 0xB4B5B6B7

.global lbl_800C3F98
lbl_800C3F98:

	# ROM: 0x82C58
	.4byte 0x98999A9B
	.4byte 0xB8B9BABB

.global lbl_800C3FA0
lbl_800C3FA0:

	# ROM: 0x82C60
	.4byte 0x00040105
	.4byte 0x02060000

.global lbl_800C3FA8
lbl_800C3FA8:

	# ROM: 0x82C68
	.float 0.0
	.float 1.0
	
	# split

.global __OSVersion
__OSVersion:

	# ROM: 0x82C70
	.4byte lbl_80080968

.global lbl_800C3FB4
lbl_800C3FB4:

	# ROM: 0x82C74
	.asciz "%08x\n"
	.balign 4

.global lbl_800C3FBC
lbl_800C3FBC:

	# ROM: 0x82C7C
	.asciz "%s\n"
	.balign 4

.global lbl_800C3FC0
lbl_800C3FC0:

	# ROM: 0x82C80
	.4byte 0xFFFFFFFF
	.balign 8
	
	# split

.global __OSArenaLo
__OSArenaLo:

	# ROM: 0x82C88
	.4byte 0xFFFFFFFF
	.balign 8
	
	# split

.global lbl_800C3FD0
lbl_800C3FD0:

	# ROM: 0x82C90
	.4byte 0x000000F8

.global lbl_800C3FD4
lbl_800C3FD4:

	# ROM: 0x82C94
	.4byte 0x0A000000

.global lbl_800C3FD8
lbl_800C3FD8:

	# ROM: 0x82C98
	.2byte 0xFFFF
	.balign 8
	
	# split

.global SwitchThreadCallback
SwitchThreadCallback:

	# ROM: 0x82CA0
	.4byte lbl_800419CC
	.balign 8
	
	# split

.global lbl_800C3FE8
lbl_800C3FE8:

	# ROM: 0x82CA8
	.4byte lbl_80082240

.global lbl_800C3FEC
lbl_800C3FEC:

	# ROM: 0x82CAC
	.4byte 0x00000020

.global lbl_800C3FF0
lbl_800C3FF0:

	# ROM: 0x82CB0
	.4byte 0xF0000000

.global lbl_800C3FF4
lbl_800C3FF4:

	# ROM: 0x82CB4
	.4byte 0x00000300

.global lbl_800C3FF8
lbl_800C3FF8:

	# ROM: 0x82CB8
	.4byte 0x00000005

.global lbl_800C3FFC
lbl_800C3FFC:

	# ROM: 0x82CBC
	.4byte lbl_800441EC

.global lbl_800C4000
lbl_800C4000:

	# ROM: 0x82CC0
	.4byte 0x41000000

.global lbl_800C4004
lbl_800C4004:

	# ROM: 0x82CC4
	.4byte 0x42000000

.global __SIVersion
__SIVersion:

	# ROM: 0x82CC8
	.4byte lbl_80082298
	.balign 8
	
	# split

.global lbl_800C4010
lbl_800C4010:

	# ROM: 0x82CD0
	.4byte lbl_80082448

.global lbl_800C4014
lbl_800C4014:

	# ROM: 0x82CD4
	.asciz "vi.c"
	.balign 8
	
	# split

.global lbl_800C4020
lbl_800C4020:

	# ROM: 0x82CE0
	.4byte lbl_800A6EE8
	.4byte 0

.global lbl_800C4028
lbl_800C4028:

	# ROM: 0x82CE8
	.asciz "%0.*f"
	.balign 4
	.4byte 0

.global lbl_800C4034
lbl_800C4034:

	# ROM: 0x82CF4
	.float 1.0
	.4byte 0

.global lbl_800C403C
lbl_800C403C:

	# ROM: 0x82CFC
	.float 1.0

.global lbl_800C4040
lbl_800C4040:

	# ROM: 0x82D00
	.float 0.0
	.balign 8
	
	# split

.global lbl_800C4048
lbl_800C4048:

	# ROM: 0x82D08
	.4byte 0x000000BF
	.4byte 0

.global lbl_800C4050
lbl_800C4050:

	# ROM: 0x82D10
	.asciz ".GVR"
	.balign 4

.global lbl_800C4058
lbl_800C4058:

	# ROM: 0x82D18
	.asciz "sorry"
	.balign 4

.global lbl_800C4060
lbl_800C4060:

	# ROM: 0x82D20
	.4byte lbl_800A7B00
	.balign 8
	
	# split

.global lbl_800C4068
lbl_800C4068:

	# ROM: 0x82D28
	.4byte 0x00000002

.global lbl_800C406C
lbl_800C406C:

	# ROM: 0x82D2C
	.4byte 0x00000002

.global lbl_800C4070
lbl_800C4070:

	# ROM: 0x82D30
	.byte 0x80
