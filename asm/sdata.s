.include "macros.s"

.section .sdata, "wa"  # 0x800C3E60 - 0x800C4080 ; 0x00000220


.global lbl_800C3E60
lbl_800C3E60:

	# ROM: 0x82B20
	.4byte lbl_800764E0
	.4byte 0

.global lbl_800C3E68
lbl_800C3E68:

	# ROM: 0x82B28
	.4byte lbl_80006C8C

.global lbl_800C3E6C
lbl_800C3E6C:

	# ROM: 0x82B2C
	.4byte lbl_80006C64

.global lbl_800C3E70
lbl_800C3E70:

	# ROM: 0x82B30
	.4byte 0xFFFFFFFE
	.4byte 0

.global lbl_800C3E78
lbl_800C3E78:

	# ROM: 0x82B38
	.4byte lbl_80076580
	.4byte 0

.global lbl_800C3E80
lbl_800C3E80:

	# ROM: 0x82B40
	.4byte lbl_8007656C
	.4byte lbl_80079F2C

.global lbl_800C3E88
lbl_800C3E88:

	# ROM: 0x82B48
	.4byte 0
	.4byte 0

.global lbl_800C3E90
lbl_800C3E90:

	# ROM: 0x82B50
	.4byte 0x00000001
	.4byte 0

.global lbl_800C3E98
lbl_800C3E98:

	# ROM: 0x82B58
	.4byte 0x7FFFFFFF

.global lbl_800C3E9C
lbl_800C3E9C:

	# ROM: 0x82B5C
	.4byte 0x7F800000

.global lbl_800C3EA0
lbl_800C3EA0:

	# ROM: 0x82B60
	.4byte 0x7FEFFFFF
	.4byte 0xFFFFFFFF

.global lbl_800C3EA8
lbl_800C3EA8:

	# ROM: 0x82B68
	.4byte 0x7FF00000
	.4byte 0

.global lbl_800C3EB0
lbl_800C3EB0:

	# ROM: 0x82B70
	.4byte 0x00100000
	.4byte 0

.global lbl_800C3EB8
lbl_800C3EB8:

	# ROM: 0x82B78
	.4byte 0x7FEFFFFF
	.4byte 0xFFFFFFFF

.global lbl_800C3EC0
lbl_800C3EC0:

	# ROM: 0x82B80
	.4byte lbl_8007AA00
	.4byte 0

.global lbl_800C3EC8
lbl_800C3EC8:

	# ROM: 0x82B88
	.4byte lbl_8007AA48
	.4byte 0

.global lbl_800C3ED0
lbl_800C3ED0:

	# ROM: 0x82B90
	.4byte lbl_8007AA90
	.4byte 0

.global lbl_800C3ED8
lbl_800C3ED8:

	# ROM: 0x82B98
	.4byte lbl_8007AAD8
	.4byte 0

.global lbl_800C3EE0
lbl_800C3EE0:

	# ROM: 0x82BA0
	.4byte 0x1F200000
	.4byte 0

.global lbl_800C3EE8
lbl_800C3EE8:

	# ROM: 0x82BA8
	.4byte lbl_80022B40

.global lbl_800C3EEC
lbl_800C3EEC:

	# ROM: 0x82BAC
	.4byte lbl_80022B68

.global lbl_800C3EF0
lbl_800C3EF0:

	# ROM: 0x82BB0
	.4byte lbl_8007ED90
	.4byte 0

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
	.4byte 0

.global lbl_800C3F10
lbl_800C3F10:

	# ROM: 0x82BD0
	.4byte 0x00000001
	.4byte 0

.global lbl_800C3F18
lbl_800C3F18:

	# ROM: 0x82BD8
	.asciz "dvdfs.c"

.global lbl_800C3F20
lbl_800C3F20:

	# ROM: 0x82BE0
	.4byte lbl_8007F2E0

.global lbl_800C3F24
lbl_800C3F24:

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
	.4byte 0x4F464600

.global lbl_800C3F40
lbl_800C3F40:

	# ROM: 0x82C00
	.4byte 0x4F4E0000
	.4byte 0

.global lbl_800C3F48
lbl_800C3F48:

	# ROM: 0x82C08
	.4byte lbl_8007F518
	.4byte 0

.global lbl_800C3F50
lbl_800C3F50:

	# ROM: 0x82C10
	.4byte lbl_8007F628
	.4byte 0

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
	.4byte 0

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
	.4byte 0
	.4byte 0x3F800000

.global lbl_800C3FB0
lbl_800C3FB0:

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
	.4byte 0x25730A00

.global lbl_800C3FC0
lbl_800C3FC0:

	# ROM: 0x82C80
	.4byte 0xFFFFFFFF
	.4byte 0

.global lbl_800C3FC8
lbl_800C3FC8:

	# ROM: 0x82C88
	.4byte 0xFFFFFFFF
	.4byte 0

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
	.4byte 0xFFFF0000
	.4byte 0

.global lbl_800C3FE0
lbl_800C3FE0:

	# ROM: 0x82CA0
	.4byte lbl_800419CC
	.4byte 0

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

.global lbl_800C4008
lbl_800C4008:

	# ROM: 0x82CC8
	.4byte lbl_80082298
	.4byte 0

.global lbl_800C4010
lbl_800C4010:

	# ROM: 0x82CD0
	.4byte lbl_80082448

.global lbl_800C4014
lbl_800C4014:

	# ROM: 0x82CD4
	.asciz "vi.c"
	.balign 4
	.4byte 0

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
	.4byte 0x3F800000
	.4byte 0

.global lbl_800C403C
lbl_800C403C:

	# ROM: 0x82CFC
	.4byte 0x3F800000

.global lbl_800C4040
lbl_800C4040:

	# ROM: 0x82D00
	.4byte 0
	.4byte 0

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
	.4byte 0

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
