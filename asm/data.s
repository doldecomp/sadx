.include "macros.s"

.section .data, "wa"  # 0x80079C60 - 0x80085B20 ; 0x0000BEC0


.balign 8

.global lbl_8007ED90
lbl_8007ED90:

	# ROM: 0x7BD90
	.asciz "<< Dolphin SDK - CARD\trelease build: Sep  5 2002 05:35:20 (0x2301) >>"
	.balign 4

.global lbl_8007EDD8
lbl_8007EDD8:

	# ROM: 0x7BDD8
	.4byte OnReset_1
	.4byte 0x0000007F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8007EE00
lbl_8007EE00:

	# ROM: 0x7BE00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000021
	.4byte 0x02FF0021
	.4byte 0x13061203
	.4byte 0x12041305
	.4byte 0x009200FF
	.4byte 0x0088FFFF
	.4byte 0x0089FFFF
	.4byte 0x008AFFFF
	.4byte 0x008BFFFF
	.4byte 0x8F0002BF
	.4byte 0x008816FC
	.4byte 0xDCD116FD
	.4byte 0x000016FB
	.4byte 0x000102BF
	.4byte 0x008E25FF
	.4byte 0x0380FF00
	.4byte 0x02940027
	.4byte 0x02BF008E
	.4byte 0x1FDF24FF
	.4byte 0x02400FFF
	.4byte 0x00980400
	.4byte 0x009A0010
	.4byte 0x00990000
	.4byte 0x8E0002BF
	.4byte 0x009402BF
	.4byte 0x864402BF
	.4byte 0x008816FC
	.4byte 0xDCD116FD
	.4byte 0x000316FB
	.4byte 0x00018F00
	.4byte 0x02BF008E
	.4byte 0x0380CDD1
	.4byte 0x02940048
	.4byte 0x27FF0380
	.4byte 0x00010295
	.4byte 0x005A0380
	.4byte 0x00020295
	.4byte 0x8000029F
	.4byte 0x00480021
	.4byte 0x8E0002BF
	.4byte 0x008E25FF
	.4byte 0x02BF008E
	.4byte 0x25FF02BF
	.4byte 0x008E25FF
	.4byte 0x02BF008E
	.4byte 0x00C5FFFF
	.4byte 0x03400FFF
	.4byte 0x1C9F02BF
	.4byte 0x008E00C7
	.4byte 0xFFFF02BF
	.4byte 0x008E00C6
	.4byte 0xFFFF02BF
	.4byte 0x008E00C0
	.4byte 0xFFFF02BF
	.4byte 0x008E20FF
	.4byte 0x03400FFF
	.4byte 0x1F5F02BF
	.4byte 0x008E21FF
	.4byte 0x02BF008E
	.4byte 0x23FF1205
	.4byte 0x1206029F
	.4byte 0x80B50021
	.4byte 0x27FC03C0
	.4byte 0x8000029D
	.4byte 0x008802DF
	.4byte 0x27FE03C0
	.4byte 0x8000029C
	.4byte 0x008E02DF
	.4byte 0x2ECE2CCF
	.4byte 0x00F8FFCD
	.4byte 0x00F9FFC9
	.4byte 0x00FAFFCB
	.4byte 0x26C902C0
	.4byte 0x0004029D
	.4byte 0x009C02DF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8007EF60
lbl_8007EF60:

	# ROM: 0x7BF60
	.4byte 0x00002000
	.4byte 0x00004000
	.4byte 0x00008000
	.4byte 0x00010000
	.4byte 0x00020000
	.4byte 0x00040000
	.balign 16

.global lbl_8007EF80
lbl_8007EF80:

	# ROM: 0x7BF80
	.4byte 0x00000004
	.4byte 0x00000008
	.4byte 0x00000010
	.4byte 0x00000020
	.4byte 0x00000040
	.4byte 0x00000080
	.4byte 0x00000100
	.4byte 0x00000200

.global lbl_8007EFA0
lbl_8007EFA0:

	# ROM: 0x7BFA0
	.asciz "DBExceptionDestination\n"

.global lbl_8007EFB8
lbl_8007EFB8:

	# ROM: 0x7BFB8
	.asciz "<< Dolphin SDK - DSP\trelease build: Sep  5 2002 05:35:13 (0x2301) >>"
	.balign 4
	.asciz "DSPInit(): Build Date: %s %s\n"
	.balign 4
	.asciz "Sep  5 2002"
	.asciz "05:35:13"
	.balign 4

.global lbl_8007F038
lbl_8007F038:

	# ROM: 0x7C038
	.asciz "DSP is booting task: 0x%08X\n"
	.balign 4
	.asciz "__DSP_boot_task()  : IRAM MMEM ADDR: 0x%08X\n"
	.balign 4
	.asciz "__DSP_boot_task()  : IRAM DSP ADDR : 0x%08X\n"
	.balign 4
	.asciz "__DSP_boot_task()  : IRAM LENGTH   : 0x%08X\n"
	.balign 4
	.asciz "__DSP_boot_task()  : DRAM MMEM ADDR: 0x%08X\n"
	.balign 4
	.asciz "__DSP_boot_task()  : Start Vector  : 0x%08X\n"
	.balign 4
	.asciz "__DSP_add_task() : Added task    : 0x%08X\n"
	.balign 8
	
	# split

.global lbl_8007F178
lbl_8007F178:

	# ROM: 0x7C178
	.asciz "DVDConvertEntrynumToPath(possibly DVDOpen or DVDChangeDir or DVDOpenDir): specified directory or file (%s) doesn't match standard 8.3 format. This is a temporary restriction and will be removed soon\n"

.global lbl_8007F240
lbl_8007F240:

	# ROM: 0x7C240
	.asciz "Warning: DVDOpen(): file '%s' was not found under %s.\n"
	.balign 4

.global lbl_8007F278
lbl_8007F278:

	# ROM: 0x7C278
	.asciz "DVDReadAsync(): specified area is out of the file  "

.global lbl_8007F2AC
lbl_8007F2AC:

	# ROM: 0x7C2AC
	.asciz "DVDRead(): specified area is out of the file  "
	.balign 8
	
	# split

.global lbl_8007F2E0
lbl_8007F2E0:

	# ROM: 0x7C2E0
	.asciz "<< Dolphin SDK - DVD\trelease build: Oct 29 2002 09:56:49 (0x2301) >>"
	.balign 4

.global lbl_8007F328
lbl_8007F328:

	# ROM: 0x7C328
	.asciz "load fst\n"
	.balign 4

.global lbl_8007F334
lbl_8007F334:

	# ROM: 0x7C334
	.asciz "DVDChangeDisk(): FST in the new disc is too big.   "

.global lbl_8007F368
lbl_8007F368:

	# ROM: 0x7C368
	.4byte lbl_8002D3E8
	.4byte lbl_8002D15C
	.4byte lbl_8002D1FC
	.4byte lbl_8002D220
	.4byte lbl_8002D15C
	.4byte lbl_8002D130
	.4byte lbl_8002D240
	.4byte lbl_8002D2A4
	.4byte lbl_8002D2D0
	.4byte lbl_8002D304
	.4byte lbl_8002D328
	.4byte lbl_8002D34C
	.4byte lbl_8002D370
	.4byte lbl_8002D394
	.4byte lbl_8002D3BC
	.4byte lbl_8002D230

.global lbl_8007F3A8
lbl_8007F3A8:

	# ROM: 0x7C3A8
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.asciz "DVDChangeDiskAsync(): You can't specify NULL to company name.  \n"
	.balign 4

.global lbl_8007F3F8
lbl_8007F3F8:

	# ROM: 0x7C3F8
	.4byte lbl_8002E040
	.4byte lbl_8002E040
	.4byte lbl_8002E060
	.4byte lbl_8002E0A4
	.4byte lbl_8002E0F0
	.4byte lbl_8002E16C
	.4byte lbl_8002E16C
	.4byte lbl_8002E16C
	.4byte lbl_8002E16C
	.4byte func_8002E244
	.4byte func_8002E244
	.4byte lbl_8002E040
	.4byte lbl_8002E16C

.global lbl_8007F42C
lbl_8007F42C:

	# ROM: 0x7C42C
	.4byte lbl_8002E3DC
	.4byte lbl_8002E3E4
	.4byte lbl_8002E3D4
	.4byte lbl_8002E3D4
	.4byte lbl_8002E3DC
	.4byte lbl_8002E3DC
	.4byte lbl_8002E3DC
	.4byte lbl_8002E3DC
	.4byte lbl_8002E3DC
	.4byte lbl_8002E3E4
	.4byte lbl_8002E3D4
	.4byte lbl_8002E3D4
	.4byte lbl_8002E3DC

.global lbl_8007F460
lbl_8007F460:

	# ROM: 0x7C460
	.4byte 0
	.4byte 0x00023A00
	.4byte 0x00062800
	.4byte 0x00030200
	.4byte 0x00031100
	.4byte 0x00052000
	.4byte 0x00052001
	.4byte 0x00052100
	.4byte 0x00052400
	.4byte 0x00052401
	.4byte 0x00052402
	.4byte 0x000B5A01
	.4byte 0x00056300
	.4byte 0x00020401
	.4byte 0x00020400
	.4byte 0x00040800
	.4byte 0x00100007
	.4byte 0

.global lbl_8007F4A8
lbl_8007F4A8:

	# ROM: 0x7C4A8
	.asciz "  Game Name ... %c%c%c%c\n"
	.balign 4
	.asciz "  Company ..... %c%c\n"
	.balign 4
	.asciz "  Disk # ...... %d\n"
	.asciz "  Game ver .... %d\n"
	.asciz "  Streaming ... %s\n"

.global lbl_8007F518
lbl_8007F518:

	# ROM: 0x7C518
	.asciz "<< Dolphin SDK - EXI\trelease build: Mar 11 2003 11:19:00 (0x2301) >>"
	.balign 4
	.asciz "Memory Card 59"
	.balign 4
	.asciz "Memory Card 123"
	.asciz "Memory Card 251"
	.asciz "Memory Card 507"
	.asciz "Memory Card 1019"
	.balign 4
	.asciz "Memory Card 2043"
	.balign 4
	.asciz "USB Adapter"
	.asciz "Net Card"
	.balign 4
	.asciz "Artist Ether"
	.balign 4
	.asciz "Broadband Adapter"
	.balign 4
	.asciz "Stream Hanger"
	.balign 4
	.asciz "IS-DOL-VIEWER"
	.balign 8
	
	# split

.global lbl_8007F628
lbl_8007F628:

	# ROM: 0x7C628
	.asciz "<< Dolphin SDK - GX\trelease build: Feb  7 2003 04:01:13 (0x2301) >>"

.global lbl_8007F66C
lbl_8007F66C:

	# ROM: 0x7C66C
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x0000000A
	.4byte 0
	.4byte 0x00000004
	.4byte 0
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x00000005
	.4byte 0
	.4byte 0x0000000C
	.4byte 0x00000001
	.4byte 0x00000005
	.4byte 0
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x0000000E
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x0000000F
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000010
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000011
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000012
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000013
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000014
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8007F73C
lbl_8007F73C:

	# ROM: 0x7C73C
	.float 1.0
	.4byte 0
	.float 1.0
	.4byte 0
	.float -1.0
	.float -2.0
	.4byte 0

.global lbl_8007F758
lbl_8007F758:

	# ROM: 0x7C758
	.4byte __GXShutdown
	.4byte 0x0000007F
	.4byte 0
	.4byte 0

.global lbl_8007F768
lbl_8007F768:

	# ROM: 0x7C768
	.4byte lbl_80032730
	.4byte lbl_80032748
	.4byte lbl_80032768
	.4byte lbl_80032788
	.4byte lbl_800327A8
	.4byte lbl_800327C8
	.4byte lbl_800327E8
	.4byte lbl_80032808
	.4byte lbl_80032828
	.4byte lbl_80032848
	.4byte lbl_80032868
	.4byte lbl_800328D0
	.4byte lbl_800328F0
	.4byte lbl_80032910
	.4byte lbl_80032928
	.4byte lbl_80032948
	.4byte lbl_80032968
	.4byte lbl_80032988
	.4byte lbl_800329A8
	.4byte lbl_800329C8
	.4byte lbl_800329E8
	.4byte func_80032A04
	.4byte func_80032A04
	.4byte func_80032A04
	.4byte func_80032A04
	.4byte lbl_8003289C

.global lbl_8007F7D0
lbl_8007F7D0:

	# ROM: 0x7C7D0
	.4byte lbl_80032C4C
	.4byte lbl_80032C88
	.4byte lbl_80032CEC
	.4byte lbl_80032D18
	.4byte lbl_80032D44
	.4byte lbl_80032D84
	.4byte lbl_80032DC0
	.4byte lbl_80032E00
	.4byte lbl_80032E40
	.4byte lbl_80032E80
	.4byte lbl_80032EC0
	.4byte lbl_80032F00
	.4byte func_80032F38
	.4byte func_80032F38
	.4byte func_80032F38
	.4byte func_80032F38
	.4byte lbl_80032C88

.global lbl_8007F814
lbl_8007F814:

	# ROM: 0x7C814
	.4byte lbl_80032FB8
	.4byte lbl_80032FF4
	.4byte lbl_80033058
	.4byte lbl_80033084
	.4byte lbl_800330B0
	.4byte lbl_800330F0
	.4byte lbl_8003312C
	.4byte lbl_8003316C
	.4byte lbl_800331AC
	.4byte lbl_800331E8
	.4byte lbl_80033228
	.4byte lbl_80033268
	.4byte func_800332A0
	.4byte func_800332A0
	.4byte func_800332A0
	.4byte func_800332A0
	.4byte lbl_80032FF4

.global lbl_8007F858
lbl_8007F858:

	# ROM: 0x7C858
	.4byte lbl_800335DC
	.4byte lbl_800335FC
	.4byte lbl_8003361C
	.4byte lbl_8003363C
	.4byte lbl_8003365C
	.4byte lbl_80033674
	.4byte lbl_80033694

.global lbl_8007F874
lbl_8007F874:

	# ROM: 0x7C874
	.4byte lbl_80033450
	.4byte lbl_8003345C
	.4byte lbl_80033468
	.4byte lbl_80033474
	.4byte lbl_80033490
	.4byte lbl_80033498
	.4byte lbl_800334A0
	.4byte lbl_800334A8
	.4byte lbl_800334B0
	.4byte lbl_800334B8
	.4byte lbl_800334C0
	.4byte lbl_800334C8
	.4byte func_800334CC
	.4byte func_800334CC
	.4byte func_800334CC
	.4byte func_800334CC
	.4byte func_800334CC
	.4byte func_800334CC
	.4byte func_800334CC
	.4byte lbl_80033480
	.4byte lbl_80033488

.global lbl_8007F8C8
lbl_8007F8C8:

	# ROM: 0x7C8C8
	.4byte 0
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060808
	.4byte 0x0A0C0A08
	.4byte 0x08000000
	.4byte 0x00000002
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060000
	.4byte 0x15161500
	.4byte 0

.global lbl_8007F940
lbl_8007F940:

	# ROM: 0x7C940
	.4byte 0x00000008
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060808
	.4byte 0x0A0C0A08
	.4byte 0x08000000

.global lbl_8007F97C
lbl_8007F97C:

	# ROM: 0x7C97C
	.4byte 0x00000004
	.4byte 0x02800210
	.4byte 0x02100028
	.4byte 0x00170280
	.4byte 0x02100000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060808
	.4byte 0x0A0C0A08
	.4byte 0x08000000

.global lbl_8007F9B8
lbl_8007F9B8:

	# ROM: 0x7C9B8
	.4byte 0x00000014
	.4byte 0x028001E0
	.4byte 0x01E00028
	.4byte 0x00000280
	.4byte 0x01E00000
	.4byte 0x00000001
	.4byte 0x00000606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060606
	.4byte 0x06060808
	.4byte 0x0A0C0A08
	.4byte 0x08000000
	.4byte 0x00000000
	
	# split

.global lbl_8007F9F8
lbl_8007F9F8:

	# ROM: 0x7C9F8
	.4byte lbl_80034FE8
	.4byte lbl_80034FF4
	.4byte lbl_80034FF4
	.4byte lbl_80035000
	.4byte lbl_80035000
	.4byte lbl_80035000
	.4byte lbl_80035000
	.4byte lbl_8003500C
	.4byte lbl_80034FE8
	.4byte lbl_80034FF4
	.4byte lbl_80035000
	.4byte lbl_8003500C
	.4byte lbl_8003500C
	.4byte lbl_8003500C
	.4byte lbl_80034FE8
	.4byte lbl_8003500C
	.4byte lbl_8003500C
	.4byte lbl_80034FF4
	.4byte lbl_8003500C
	.4byte lbl_80035000
	.4byte lbl_8003500C
	.4byte lbl_8003500C
	.4byte lbl_80035000
	.4byte lbl_8003500C
	.4byte lbl_8003500C
	.4byte lbl_8003500C
	.4byte lbl_8003500C
	.4byte lbl_8003500C
	.4byte lbl_8003500C
	.4byte lbl_8003500C
	.4byte lbl_8003500C
	.4byte lbl_8003500C
	.4byte lbl_80034FE8
	.4byte lbl_8003500C
	.4byte lbl_80034FF4
	.4byte lbl_80035000
	.4byte lbl_8003500C
	.4byte lbl_8003500C
	.4byte lbl_8003500C
	.4byte lbl_80034FF4
	.4byte lbl_80034FF4
	.4byte lbl_80034FF4
	.4byte lbl_80034FF4
	.4byte lbl_80035000
	.4byte lbl_80035000
	.4byte lbl_8003500C
	.4byte lbl_8003500C
	.4byte lbl_8003500C
	.4byte lbl_80034FE8
	.4byte lbl_8003500C
	.4byte lbl_8003500C
	.4byte lbl_8003500C
	.4byte lbl_8003500C
	.4byte lbl_8003500C
	.4byte lbl_8003500C
	.4byte lbl_8003500C
	.4byte lbl_8003500C
	.4byte lbl_80034FF4
	.4byte lbl_80034FF4
	.4byte lbl_8003500C
	.4byte lbl_80035000

.global lbl_8007FAEC
lbl_8007FAEC:

	# ROM: 0x7CAEC
	.4byte lbl_8003513C
	.4byte lbl_80035148
	.4byte lbl_80035148
	.4byte lbl_80035154
	.4byte lbl_80035154
	.4byte lbl_80035154
	.4byte lbl_80035154
	.4byte lbl_80035160
	.4byte lbl_8003513C
	.4byte lbl_80035148
	.4byte lbl_80035154
	.4byte lbl_80035160
	.4byte lbl_80035160
	.4byte lbl_80035160
	.4byte lbl_8003513C
	.4byte lbl_80035160
	.4byte lbl_80035160
	.4byte lbl_80035148
	.4byte lbl_80035160
	.4byte lbl_80035154
	.4byte lbl_80035160
	.4byte lbl_80035160
	.4byte lbl_80035154
	.4byte lbl_80035160
	.4byte lbl_80035160
	.4byte lbl_80035160
	.4byte lbl_80035160
	.4byte lbl_80035160
	.4byte lbl_80035160
	.4byte lbl_80035160
	.4byte lbl_80035160
	.4byte lbl_80035160
	.4byte lbl_8003513C
	.4byte lbl_80035160
	.4byte lbl_80035148
	.4byte lbl_80035154
	.4byte lbl_80035160
	.4byte lbl_80035160
	.4byte lbl_80035160
	.4byte lbl_80035148
	.4byte lbl_80035148
	.4byte lbl_80035148
	.4byte lbl_80035148
	.4byte lbl_80035154
	.4byte lbl_80035154
	.4byte lbl_80035160
	.4byte lbl_80035160
	.4byte lbl_80035160
	.4byte lbl_8003513C
	.4byte lbl_80035160
	.4byte lbl_80035160
	.4byte lbl_80035160
	.4byte lbl_80035160
	.4byte lbl_80035160
	.4byte lbl_80035160
	.4byte lbl_80035160
	.4byte lbl_80035160
	.4byte lbl_80035148
	.4byte lbl_80035148
	.4byte lbl_80035160
	.4byte lbl_80035154

.global lbl_8007FBE0
lbl_8007FBE0:

	# ROM: 0x7CBE0
	.4byte lbl_8003538C
	.4byte lbl_800353A0
	.4byte lbl_800353A0
	.4byte lbl_800353B4
	.4byte lbl_800353B4
	.4byte lbl_800353B4
	.4byte lbl_800353C8
	.4byte lbl_800353F0
	.4byte lbl_8003538C
	.4byte lbl_800353A0
	.4byte lbl_800353B4
	.4byte lbl_800353F0
	.4byte lbl_800353F0
	.4byte lbl_800353F0
	.4byte lbl_800353DC
	.balign 8
	
	# split

.global lbl_8007FC20
lbl_8007FC20:

	# ROM: 0x7CC20
	.4byte 0xC008F8AF
	.4byte 0xC008A89F
	.4byte 0xC008AC8F
	.4byte 0xC008FFF8
	.4byte 0xC008FFFA
	.4byte 0xC008F80F
	.4byte 0xC008089F
	.4byte 0xC0080C8F
	.4byte 0xC008FFF8
	.4byte 0xC008FFF0
	.4byte 0xC108F2F0
	.4byte 0xC108FFD0
	.4byte 0xC108F2F0
	.4byte 0xC108FFC0
	.4byte 0xC108FFD0
	.4byte 0xC108F070
	.4byte 0xC108FF80
	.4byte 0xC108F070
	.4byte 0xC108FFC0
	.4byte 0xC108FF80

.global lbl_8007FC70
lbl_8007FC70:

	# ROM: 0x7CC70
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0

.global lbl_8007FC98
lbl_8007FC98:

	# ROM: 0x7CC98
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x00000005

.global lbl_8007FCB8
lbl_8007FCB8:

	# ROM: 0x7CCB8
	.4byte lbl_80037F80
	.4byte lbl_80037F9C
	.4byte lbl_80037FB8
	.4byte lbl_80037FD4
	.4byte lbl_80038028
	.4byte lbl_80038044
	.4byte lbl_80038060
	.4byte lbl_8003807C
	.4byte lbl_80037FF0
	.4byte lbl_80038098
	.4byte lbl_800380C8
	.4byte lbl_800380F8
	.4byte lbl_80038128
	.4byte lbl_80038158
	.4byte lbl_80038188
	.4byte lbl_800381B8
	.4byte lbl_800381E8
	.4byte lbl_80038218
	.4byte lbl_80038228
	.4byte lbl_80038238
	.4byte lbl_80038248
	.4byte lbl_8003800C
	.4byte func_80038254

.global lbl_8007FD14
lbl_8007FD14:

	# ROM: 0x7CD14
	.4byte lbl_80037B54
	.4byte lbl_80037B74
	.4byte lbl_80037B94
	.4byte lbl_80037BB4
	.4byte lbl_80037BD4
	.4byte lbl_80037BF4
	.4byte lbl_80037C14
	.4byte lbl_80037C34
	.4byte lbl_80037C54
	.4byte lbl_80037C74
	.4byte lbl_80037CB4
	.4byte lbl_80037CD4
	.4byte lbl_80037CF0
	.4byte lbl_80037D0C
	.4byte lbl_80037D28
	.4byte lbl_80037D44
	.4byte lbl_80037D60
	.4byte lbl_80037D7C
	.4byte lbl_80037D98
	.4byte lbl_80037DB4
	.4byte lbl_80037DD0
	.4byte lbl_80037DEC
	.4byte lbl_80037E08
	.4byte lbl_80037E24
	.4byte lbl_80037E40
	.4byte lbl_80037E5C
	.4byte lbl_80037E78
	.4byte lbl_80037E94
	.4byte lbl_80037EB0
	.4byte lbl_80037ECC
	.4byte lbl_80037EE8
	.4byte lbl_80037F04
	.4byte lbl_80037F20
	.4byte lbl_80037F3C
	.4byte lbl_80037C94
	.4byte func_80037F54
	.balign 8
	
	# split

.global lbl_8007FDA8
lbl_8007FDA8:

	# ROM: 0x7CDA8
	.4byte 0x00000001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040005
	.4byte 0x00050005
	.4byte 0x00050005
	.4byte 0x00050005
	.4byte 0x00050005
	.4byte 0x00050005
	.4byte 0x00050005
	.4byte 0x00050005
	.4byte 0x00050006
	.4byte 0x00060006
	.4byte 0x00060006
	.4byte 0x00060006
	.4byte 0x00060006
	.4byte 0x00060006
	.4byte 0x00060006
	.4byte 0x00070007
	.4byte 0x00070007
	.4byte 0x00070007
	.4byte 0x00070007
	.4byte 0x00070007
	.4byte 0x00070007
	.4byte 0x00080008
	.4byte 0x00080008
	.4byte 0x00080008
	.4byte 0x00080008
	.4byte 0x00080008
	.4byte 0x00090009
	.4byte 0x00090009
	.4byte 0x00090009
	.4byte 0x00090009
	.4byte 0x0009000A
	.4byte 0x000A000A
	.4byte 0x000A000A
	.4byte 0x000A000A
	.4byte 0x000A000A
	.4byte 0x000B000B
	.4byte 0x000B000B
	.4byte 0x000B000B
	.4byte 0x000B000C
	.4byte 0x000C000C
	.4byte 0x000C000C
	.4byte 0x000C000C
	.4byte 0x000D000D
	.4byte 0x000D000D
	.4byte 0x000D000D
	.4byte 0x000D000E
	.4byte 0x000E000E
	.4byte 0x000E000E
	.4byte 0x000E000F
	.4byte 0x000F000F
	.4byte 0x000F000F
	.4byte 0x00100010
	.4byte 0x00100010
	.4byte 0x00100011
	.4byte 0x00110011
	.4byte 0x00110011
	.4byte 0x00120012
	.4byte 0x00120012
	.4byte 0x00120013
	.4byte 0x00130013
	.4byte 0x00130013
	.4byte 0x00140014
	.4byte 0x00140014
	.4byte 0x00150015
	.4byte 0x00150015
	.4byte 0x00160016
	.4byte 0x00160016
	.4byte 0x00170017
	.4byte 0x00170018
	.4byte 0x00180018
	.4byte 0x00180019
	.4byte 0x00190019
	.4byte 0x001A001A
	.4byte 0x001A001A
	.4byte 0x001B001B
	.4byte 0x001B001C
	.4byte 0x001C001C
	.4byte 0x001D001D
	.4byte 0x001D001E
	.4byte 0x001E001E

.global lbl_80080000
lbl_80080000:

	# ROM: 0x7D000
	.4byte 0x001F001F

.global lbl_80080004
lbl_80080004:

	# ROM: 0x7D004
	.4byte 0x00200020

.global lbl_80080008
lbl_80080008:

	# ROM: 0x7D008
	.4byte 0x00200021

.global lbl_8008000C
lbl_8008000C:

	# ROM: 0x7D00C
	.4byte 0x00210021

.global lbl_80080010
lbl_80080010:

	# ROM: 0x7D010
	.4byte 0x00220022

.global lbl_80080014
lbl_80080014:

	# ROM: 0x7D014
	.4byte 0x00230023

.global lbl_80080018
lbl_80080018:

	# ROM: 0x7D018
	.4byte 0x00230024
	.4byte 0x00240025
	.4byte 0x00250026
	.4byte 0x00260026
	.4byte 0x00270027
	.4byte 0x00280028
	.4byte 0x00290029
	.4byte 0x002A002A
	.4byte 0x002B002B
	.4byte 0x002C002C
	.4byte 0x002D002D
	.4byte 0x002E002E
	.4byte 0x002F002F
	.4byte 0x00300031
	.4byte 0x00310032
	.4byte 0x00320033
	.4byte 0x00330034
	.4byte 0x00350035
	.4byte 0x00360037
	.4byte 0x00370038
	.4byte 0x00380039
	.4byte 0x003A003A
	.4byte 0x003B003C
	.4byte 0x003D003D
	.4byte 0x003E003F
	.4byte 0x003F0040
	.byte 0x00

.global lbl_80080081
lbl_80080081:

	# ROM: 0x7D081
	.byte 0x41, 0x00, 0x42
	.4byte 0x00420043
	.4byte 0x00440045
	.4byte 0x00460046
	.4byte 0x00470048
	.4byte 0x0049004A
	.4byte 0x004B004B
	.4byte 0x004C004D
	.4byte 0x004E004F
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00540055
	.4byte 0x00560057
	.4byte 0x00580059
	.4byte 0x005A005B
	.4byte 0x005C005D
	.4byte 0x005E005F
	.4byte 0x00600061
	.4byte 0x00620064
	.4byte 0x00650066
	.4byte 0x00670068
	.4byte 0x006A006B
	.4byte 0x006C006D
	.4byte 0x006F0070
	.4byte 0x00710072
	.4byte 0x00740075
	.4byte 0x00760078
	.4byte 0x0079007B
	.4byte 0x007C007E
	.4byte 0x007F0080
	.4byte 0x00820083
	.4byte 0x00850087
	.4byte 0x0088008A
	.4byte 0x008B008D
	.4byte 0x008F0090
	.4byte 0x00920094
	.4byte 0x00950097
	.4byte 0x0099009B
	.4byte 0x009C009E
	.4byte 0x00A000A2
	.4byte 0x00A400A6
	.4byte 0x00A800AA
	.4byte 0x00AB00AD
	.4byte 0x00AF00B2
	.4byte 0x00B400B6
	.4byte 0x00B800BA
	.4byte 0x00BC00BE
	.4byte 0x00C000C3
	.4byte 0x00C500C7
	.4byte 0x00CA00CC
	.4byte 0x00CE00D1
	.4byte 0x00D300D6
	.4byte 0x00D800DB
	.4byte 0x00DD00E0
	.4byte 0x00E200E5
	.4byte 0x00E700EA
	.4byte 0x00ED00F0
	.4byte 0x00F200F5
	.4byte 0x00F800FB
	.4byte 0x00FE0101
	.4byte 0x01040107
	.4byte 0x010A010D
	.4byte 0x01100113
	.4byte 0x0116011A
	.4byte 0x011D0120
	.4byte 0x01240127
	.4byte 0x012A012E
	.4byte 0x01310135
	.4byte 0x0138013C
	.4byte 0x01400143
	.4byte 0x0147014B
	.4byte 0x014F0153
	.4byte 0x0157015B
	.4byte 0x015F0163
	.4byte 0x0167016B
	.4byte 0x016F0173
	.4byte 0x0178017C
	.4byte 0x01800185
	.4byte 0x0189018E
	.4byte 0x01930197
	.4byte 0x019C01A1
	.4byte 0x01A601AB
	.4byte 0x01AF01B4
	.4byte 0x01BA01BF
	.4byte 0x01C401C9
	.4byte 0x01CE01D4
	.4byte 0x01D901DF
	.4byte 0x01E401EA
	.4byte 0x01EF01F5
	.4byte 0x01FB0201
	.4byte 0x0207020D
	.4byte 0x02130219
	.4byte 0x021F0226
	.4byte 0x022C0232
	.4byte 0x02390240
	.4byte 0x0246024D
	.4byte 0x0254025B
	.4byte 0x02620269
	.4byte 0x02700277
	.4byte 0x027E0286
	.4byte 0x028D0295
	.4byte 0x029D02A4
	.4byte 0x02AC02B4
	.4byte 0x02BC02C4
	.4byte 0x02CC02D5
	.4byte 0x02DD02E6
	.4byte 0x02EE02F7
	.4byte 0x03000309
	.4byte 0x0312031B
	.4byte 0x0324032D
	.4byte 0x03370340
	.4byte 0x034A0354
	.4byte 0x035D0367
	.4byte 0x0371037C
	.4byte 0x03860390
	.4byte 0x039B03A6
	.4byte 0x03B103BB
	.4byte 0x03C703D2
	.4byte 0x03DD03E9
	.4byte 0x03F40400
	.4byte 0x040C0418
	.4byte 0x04240430
	.4byte 0x043D0449
	.4byte 0x04560463
	.4byte 0x0470047D
	.4byte 0x048A0498
	.4byte 0x04A504B3
	.4byte 0x04C104CF
	.4byte 0x04DD04EC
	.4byte 0x04FA0509
	.4byte 0x05180527
	.4byte 0x05360546
	.4byte 0x05550565
	.4byte 0x05750586
	.4byte 0x059605A6
	.4byte 0x05B705C8
	.4byte 0x05D905EB
	.4byte 0x05FC060E
	.4byte 0x06200632
	.4byte 0x06440657
	.4byte 0x066A067D
	.4byte 0x069006A4
	.4byte 0x06B706CB
	.4byte 0x06DF06F4
	.4byte 0x0708071D
	.4byte 0x07320748
	.4byte 0x075D0773
	.4byte 0x0789079F
	.4byte 0x07B607CD
	.4byte 0x07E407FB
	.4byte 0x0813082B
	.4byte 0x0843085C
	.4byte 0x0874088E
	.4byte 0x08A708C1
	.4byte 0x08DA08F5
	.4byte 0x090F092A
	.4byte 0x09450961
	.4byte 0x097D0999
	.4byte 0x09B509D2
	.4byte 0x09EF0A0D
	.4byte 0x0A2A0A48
	.4byte 0x0A670A86
	.4byte 0x0AA50AC5
	.4byte 0x0AE50B05
	.4byte 0x0B250B47
	.4byte 0x0B680B8A
	.4byte 0x0BAC0BCF
	.4byte 0x0BF20C15
	.4byte 0x0C390C5D
	.4byte 0x0C820CA7
	.4byte 0x0CCC0CF2
	.4byte 0x0D190D3F
	.4byte 0x0D670D8E
	.4byte 0x0DB70DDF
	.4byte 0x0E080E32
	.4byte 0x0E5C0E87
	.4byte 0x0EB20EDD
	.4byte 0x0F090F36
	.4byte 0x0F630F91
	.4byte 0x0FBF0FEE
	.4byte 0x101D104D
	.4byte 0x107D10AE
	.4byte 0x10DF1111
	.4byte 0x11441177
	.4byte 0x11AB11DF
	.4byte 0x1214124A
	.4byte 0x128012B7
	.4byte 0x12EE1326
	.4byte 0x135F1399
	.4byte 0x13D3140D
	.4byte 0x14491485
	.4byte 0x14C214FF
	.4byte 0x153E157D
	.4byte 0x15BC15FD
	.4byte 0x163E1680
	.4byte 0x16C31706
	.4byte 0x174A178F
	.4byte 0x17D5181C
	.4byte 0x186318AC
	.4byte 0x18F5193F
	.4byte 0x198A19D5
	.4byte 0x1A221A6F
	.4byte 0x1ABE1B0D
	.4byte 0x1B5D1BAE
	.4byte 0x1C001C53
	.4byte 0x1CA71CFC
	.4byte 0x1D521DA9
	.4byte 0x1E011E5A
	.4byte 0x1EB41F0F
	.4byte 0x1F6B1FC8
	.4byte 0x20262086
	.4byte 0x20E62148
	.4byte 0x21AA220E
	.4byte 0x227322D9
	.4byte 0x234123A9
	.4byte 0x2413247E
	.4byte 0x24EA2557
	.4byte 0x25C62636
	.4byte 0x26A7271A
	.4byte 0x278E2803
	.4byte 0x287A28F2
	.4byte 0x296B29E6
	.4byte 0x2A622AE0
	.4byte 0x2B5F2BDF
	.4byte 0x2C612CE5
	.4byte 0x2D6A2DF1
	.4byte 0x2E792F03
	.4byte 0x2F8E301B
	.4byte 0x30AA313A
	.4byte 0x31CC325F
	.4byte 0x32F5338C
	.4byte 0x342534BF
	.4byte 0x355B35FA
	.4byte 0x369A373C
	.4byte 0x37DF3885
	.4byte 0x392C39D6
	.4byte 0x3A813B2F
	.4byte 0x3BDE3C90
	.4byte 0x3D433DF9
	.4byte 0x3EB13F6A
	.4byte 0x402640E5
	.4byte 0x41A54268
	.4byte 0x432C43F4
	.4byte 0x44BD4589
	.4byte 0x46574727
	.4byte 0x47FA48D0
	.4byte 0x49A84A82
	.4byte 0x4B5F4C3E
	.4byte 0x4D204E05
	.4byte 0x4EEC4FD6
	.4byte 0x50C351B2
	.4byte 0x52A45399
	.4byte 0x5491558C
	.4byte 0x5689578A
	.4byte 0x588D5994
	.4byte 0x5A9D5BAA
	.4byte 0x5CBA5DCD
	.4byte 0x5EE35FFC
	.4byte 0x61196238
	.4byte 0x635C6482
	.4byte 0x65AC66D9
	.4byte 0x680A693F
	.4byte 0x6A776BB2
	.4byte 0x6CF26E35
	.4byte 0x6F7B70C6
	.4byte 0x72147366
	.4byte 0x74BC7616
	.4byte 0x777478D6
	.4byte 0x7A3D7BA7
	.4byte 0x7D167E88
	.4byte 0x7FFF817B
	.4byte 0x82FB847F
	.4byte 0x86088795
	.4byte 0x89278ABE
	.4byte 0x8C598DF9
	.4byte 0x8F9E9148
	.4byte 0x92F694AA
	.4byte 0x96639820
	.4byte 0x99E39BAB
	.4byte 0x9D799F4C
	.4byte 0xA124A302
	.4byte 0xA4E5A6CE
	.4byte 0xA8BCAAB0
	.4byte 0xACAAAEAA
	.4byte 0xB0B0B2BC
	.4byte 0xB4CEB6E5
	.4byte 0xB904BB28
	.4byte 0xBD53BF84
	.4byte 0xC1BCC3FA
	.4byte 0xC63FC88B
	.4byte 0xCADDCD37
	.4byte 0xCF97D1FE
	.4byte 0xD46DD6E3
	.4byte 0xD960DBE4
	.4byte 0xDE70E103
	.4byte 0xE39EE641
	.4byte 0xE8EBEB9E
	.4byte 0xEE58F11B
	.4byte 0xF3E6F6B9
	.4byte 0xF994FC78
	.4byte 0xFF640000
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFD
	.4byte 0xFFFFFFFD
	.4byte 0xFFFFFFFC
	.4byte 0xFFFFFFFC
	.4byte 0xFFFFFFFC
	.4byte 0xFFFFFFFB
	.4byte 0xFFFFFFFB
	.4byte 0xFFFFFFFB
	.4byte 0xFFFFFFFA
	.4byte 0xFFFFFFFA
	.4byte 0xFFFFFFF9
	.4byte 0xFFFFFFF9
	.4byte 0xFFFFFFF9
	.4byte 0xFFFFFFF8
	.4byte 0xFFFFFFF8
	.4byte 0xFFFFFFF7
	.4byte 0xFFFFFFF7
	.4byte 0xFFFFFFF6
	.4byte 0xFFFFFFF6
	.4byte 0xFFFFFFF6
	.4byte 0xFFFFFFF5
	.4byte 0xFFFFFFF5
	.4byte 0xFFFFFFF4
	.4byte 0xFFFFFFF4
	.4byte 0xFFFFFFF3
	.4byte 0xFFFFFFF3
	.4byte 0xFFFFFFF2
	.4byte 0xFFFFFFF2
	.4byte 0xFFFFFFF2
	.4byte 0xFFFFFFF1
	.4byte 0xFFFFFFF1
	.4byte 0xFFFFFFF0
	.4byte 0xFFFFFFF0
	.4byte 0xFFFFFFEF
	.4byte 0xFFFFFFEF
	.4byte 0xFFFFFFEE
	.4byte 0xFFFFFFEE
	.4byte 0xFFFFFFED
	.4byte 0xFFFFFFEC
	.4byte 0xFFFFFFEC
	.4byte 0xFFFFFFEB
	.4byte 0xFFFFFFEB
	.4byte 0xFFFFFFEA
	.4byte 0xFFFFFFEA
	.4byte 0xFFFFFFE9
	.4byte 0xFFFFFFE9
	.4byte 0xFFFFFFE8
	.4byte 0xFFFFFFE7
	.4byte 0xFFFFFFE7
	.4byte 0xFFFFFFE6
	.4byte 0xFFFFFFE6
	.4byte 0xFFFFFFE5
	.4byte 0xFFFFFFE4
	.4byte 0xFFFFFFE4
	.4byte 0xFFFFFFE3
	.4byte 0xFFFFFFE2
	.4byte 0xFFFFFFE2
	.4byte 0xFFFFFFE1
	.4byte 0xFFFFFFE0
	.4byte 0xFFFFFFDF
	.4byte 0xFFFFFFDF
	.4byte 0xFFFFFFDE
	.4byte 0xFFFFFFDD
	.4byte 0xFFFFFFDC
	.4byte 0xFFFFFFDC
	.4byte 0xFFFFFFDB
	.4byte 0xFFFFFFDA
	.4byte 0xFFFFFFD9
	.4byte 0xFFFFFFD8
	.4byte 0xFFFFFFD8
	.4byte 0xFFFFFFD7
	.4byte 0xFFFFFFD6
	.4byte 0xFFFFFFD5
	.4byte 0xFFFFFFD4
	.4byte 0xFFFFFFD3
	.4byte 0xFFFFFFD2
	.4byte 0xFFFFFFD1
	.4byte 0xFFFFFFD0
	.4byte 0xFFFFFFCF
	.4byte 0xFFFFFFCE
	.4byte 0xFFFFFFCD
	.4byte 0xFFFFFFCC
	.4byte 0xFFFFFFCA
	.4byte 0xFFFFFFC9
	.4byte 0xFFFFFFC8
	.4byte 0xFFFFFFC7
	.4byte 0xFFFFFFC5
	.4byte 0xFFFFFFC4
	.4byte 0xFFFFFFC3
	.4byte 0xFFFFFFC1
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFBE
	.4byte 0xFFFFFFBD
	.4byte 0xFFFFFFBB
	.4byte 0xFFFFFFB9
	.4byte 0xFFFFFFB8
	.4byte 0xFFFFFFB6
	.4byte 0xFFFFFFB4
	.4byte 0xFFFFFFB2
	.4byte 0xFFFFFFB0
	.4byte 0xFFFFFFAD
	.4byte 0xFFFFFFAB
	.4byte 0xFFFFFFA9
	.4byte 0xFFFFFFA6
	.4byte 0xFFFFFFA3
	.4byte 0xFFFFFFA0
	.4byte 0xFFFFFF9D
	.4byte 0xFFFFFF9A
	.4byte 0xFFFFFF96
	.4byte 0xFFFFFF92
	.4byte 0xFFFFFF8D
	.4byte 0xFFFFFF88
	.4byte 0xFFFFFF82
	.4byte 0xFFFFFF7B
	.4byte 0xFFFFFF74
	.4byte 0xFFFFFF6A
	.4byte 0xFFFFFF5D
	.4byte 0xFFFFFF4C
	.4byte 0xFFFFFF2E
	.4byte 0xFFFFFC78
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFEFFFE
	.4byte 0xFFFEFFFE
	.4byte 0xFFFDFFFD
	.4byte 0xFFFDFFFC
	.4byte 0xFFFCFFFC
	.4byte 0xFFFBFFFB
	.4byte 0xFFFAFFFA
	.4byte 0xFFFAFFF9
	.4byte 0xFFF9FFF8
	.4byte 0xFFF8FFF7
	.4byte 0xFFF7FFF6
	.4byte 0xFFF5FFF5
	.4byte 0xFFF4FFF4
	.4byte 0xFFF3FFF2
	.4byte 0xFFF2FFF1
	.4byte 0xFFF0FFEF
	.4byte 0xFFEFFFEE
	.4byte 0xFFEDFFEC
	.4byte 0xFFEBFFEB
	.4byte 0xFFEAFFE9
	.4byte 0xFFE8FFE7
	.4byte 0xFFE6FFE5
	.4byte 0xFFE4FFE3
	.4byte 0xFFE2FFE1
	.4byte 0xFFE0FFDE
	.4byte 0xFFDDFFDC
	.4byte 0xFFDBFFDA
	.4byte 0xFFD8FFD7
	.4byte 0xFFD6FFD4
	.4byte 0xFFD3FFD1
	.4byte 0xFFD0FFCE
	.4byte 0xFFCCFFCB
	.4byte 0xFFC9FFC7
	.4byte 0xFFC6FFC4
	.4byte 0xFFC2FFC0
	.4byte 0xFFBEFFBC
	.4byte 0xFFBAFFB7
	.4byte 0xFFB5FFB3
	.4byte 0xFFB0FFAE
	.4byte 0xFFABFFA8
	.4byte 0xFFA6FFA3
	.4byte 0xFFA0FF9C
	.4byte 0xFF99FF96
	.4byte 0xFF92FF8E
	.4byte 0xFF8AFF86
	.4byte 0xFF82FF7D
	.4byte 0xFF78FF73
	.4byte 0xFF6EFF68
	.4byte 0xFF61FF5A
	.4byte 0xFF53FF4B
	.4byte 0xFF42FF37
	.4byte 0xFF2CFF1F
	.4byte 0xFF0FFEFB
	.4byte 0xFEE2FEBF
	.4byte 0xFE83FC40
	.4byte 0xFFC3FFC3
	.4byte 0xFFC4FFC5
	.4byte 0xFFC5FFC6
	.4byte 0xFFC6FFC7
	.4byte 0xFFC8FFC8
	.4byte 0xFFC9FFC9
	.4byte 0xFFCAFFCB
	.4byte 0xFFCBFFCC
	.4byte 0xFFCCFFCD
	.4byte 0xFFCEFFCE
	.4byte 0xFFCFFFCF
	.4byte 0xFFD0FFD0
	.4byte 0xFFD1FFD1
	.4byte 0xFFD2FFD2
	.4byte 0xFFD3FFD3
	.4byte 0xFFD4FFD4
	.4byte 0xFFD5FFD5
	.4byte 0xFFD6FFD6
	.4byte 0xFFD7FFD7
	.4byte 0xFFD8FFD8
	.4byte 0xFFD9FFD9
	.4byte 0xFFDAFFDA
	.4byte 0xFFDAFFDB
	.4byte 0xFFDBFFDC
	.4byte 0xFFDCFFDD
	.4byte 0xFFDDFFDD
	.4byte 0xFFDEFFDE
	.4byte 0xFFDFFFDF
	.4byte 0xFFE0FFE0
	.4byte 0xFFE0FFE1
	.4byte 0xFFE1FFE1
	.4byte 0xFFE2FFE2
	.4byte 0xFFE3FFE3
	.4byte 0xFFE3FFE4
	.4byte 0xFFE4FFE4
	.4byte 0xFFE5FFE5
	.4byte 0xFFE5FFE6
	.4byte 0xFFE6FFE6
	.4byte 0xFFE7FFE7
	.4byte 0xFFE7FFE8
	.4byte 0xFFE8FFE8
	.4byte 0xFFE9FFE9
	.4byte 0xFFE9FFEA
	.4byte 0xFFEAFFEA
	.4byte 0xFFEBFFEB
	.4byte 0xFFEBFFEC
	.4byte 0xFFECFFEC
	.4byte 0xFFECFFED
	.4byte 0xFFEDFFED
	.4byte 0xFFEEFFEE
	.4byte 0xFFEEFFEE
	.4byte 0xFFEFFFEF
	.4byte 0xFFEFFFEF
	.4byte 0xFFF0FFF0
	.4byte 0xFFF0FFF0
	.4byte 0xFFF1FFF1
	.4byte 0xFFF1FFF1
	.4byte 0xFFF2FFF2
	.4byte 0xFFF2FFF2
	.4byte 0xFFF3FFF3
	.4byte 0xFFF3FFF3
	.4byte 0xFFF3FFF4
	.4byte 0xFFF4FFF4
	.4byte 0xFFF4FFF5
	.4byte 0x00010101
	.4byte 0x01010102
	.4byte 0x02020203
	.4byte 0x03040405
	.4byte 0x05060708
	.4byte 0x090A0B0C
	.4byte 0x0E101214
	.4byte 0x16191C20
	.4byte 0x24282D32
	.4byte 0x39404750
	.4byte 0x5A65717F
	.4byte 0x8FA0B4CA
	.4byte 0xE3FF0000

.global lbl_80080968
lbl_80080968:

	# ROM: 0x7D968
	.asciz "<< Dolphin SDK - OS\trelease build: Mar 17 2003 04:20:41 (0x2301) >>"
	.asciz "\nDolphin OS\n"
	.balign 4
	.asciz "Kernel built : %s %s\n"
	.balign 4
	.asciz "Mar 17 2003"
	.asciz "04:20:41"
	.balign 4
	.asciz "Console Type : "
	.asciz "Retail %d\n"
	.balign 4
	.asciz "Mac Emulator\n"
	.balign 4
	.asciz "PC Emulator\n"
	.balign 4
	.asciz "EPPC Arthur\n"
	.balign 4
	.asciz "EPPC Minnow\n"
	.balign 4
	.asciz "Development HW%d (%08x)\n"
	.balign 4
	.asciz "Memory %d MB\n"
	.balign 4
	.asciz "Arena : 0x%x - 0x%x\n"
	.balign 4
	.4byte 0x00000100
	.4byte 0x00000200
	.4byte 0x00000300
	.4byte 0x00000400
	.4byte 0x00000500
	.4byte 0x00000600
	.4byte 0x00000700
	.4byte 0x00000800
	.4byte 0x00000900
	.4byte 0x00000C00
	.4byte 0x00000D00
	.4byte 0x00000F00
	.4byte 0x00001300
	.4byte 0x00001400
	.4byte 0x00001700
	.asciz "Installing OSDBIntegrator\n"
	.balign 4
	.asciz ">>> OSINIT: exception %d commandeered by TRK\n"
	.balign 4
	.asciz ">>> OSINIT: exception %d vectored to debugger\n"
	.balign 4
	.asciz "Exceptions initialized...\n"
	.balign 4

.global lbl_80080B60
lbl_80080B60:

	# ROM: 0x7DB60
	.asciz "OSCheckHeap: Failed HeapArray in %d"
	.asciz "OSCheckHeap: Failed 0 <= heap && heap < NumHeaps in %d"
	.balign 4
	.asciz "OSCheckHeap: Failed 0 <= hd->size in %d"
	.asciz "OSCheckHeap: Failed hd->allocated == NULL || hd->allocated->prev == NULL in %d"
	.balign 4
	.asciz "OSCheckHeap: Failed InRange(cell, ArenaStart, ArenaEnd) in %d"
	.balign 4
	.asciz "OSCheckHeap: Failed OFFSET(cell, ALIGNMENT) == 0 in %d"
	.balign 4
	.asciz "OSCheckHeap: Failed cell->next == NULL || cell->next->prev == cell in %d"
	.balign 4
	.asciz "OSCheckHeap: Failed MINOBJSIZE <= cell->size in %d"
	.balign 4
	.asciz "OSCheckHeap: Failed OFFSET(cell->size, ALIGNMENT) == 0 in %d"
	.balign 4
	.asciz "OSCheckHeap: Failed 0 < total && total <= hd->size in %d"
	.balign 4
	.asciz "OSCheckHeap: Failed hd->free == NULL || hd->free->prev == NULL in %d"
	.balign 4
	.asciz "OSCheckHeap: Failed cell->next == NULL || (char*) cell + cell->size < (char*) cell->next in %d"
	.balign 4
	.asciz "OSCheckHeap: Failed total == hd->size in %d"
	.asciz "\nOSDumpHeap(%d):\n"
	.balign 4
	.asciz "--------Inactive\n"
	.balign 4
	.asciz "addr\tsize\t\tend\tprev\tnext\n"
	.balign 4
	.asciz "--------Allocated\n"
	.balign 4
	.asciz "%x\t%d\t%x\t%x\t%x\n"
	.asciz "--------Free\n"
	.balign 8
	
	# split

.global DSPInitCode
DSPInitCode:

	# ROM: 0x7DEF8
	.4byte 0x029F0010
	.4byte 0x029F0033
	.4byte 0x029F0034
	.4byte 0x029F0035
	.4byte 0x029F0036
	.4byte 0x029F0037
	.4byte 0x029F0038
	.4byte 0x029F0039
	.4byte 0x12061203
	.4byte 0x12041205
	.4byte 0x00808000
	.4byte 0x0088FFFF
	.4byte 0x00841000
	.4byte 0x0064001D
	.4byte 0x02180000
	.4byte 0x81001C1E
	.4byte 0x00441B1E
	.4byte 0x00840800
	.4byte 0x00640027
	.4byte 0x191E0000
	.4byte 0x00DEFFFC
	.4byte 0x02A08000
	.4byte 0x029C0028
	.4byte 0x16FC0054
	.4byte 0x16FD4348
	.4byte 0x002102FF
	.4byte 0x02FF02FF
	.4byte 0x02FF02FF
	.4byte 0x02FF02FF
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80080F78
lbl_80080F78:

	# ROM: 0x7DF78
	.asciz ">>> L2 INVALIDATE : SHOULD NEVER HAPPEN\n"
	.balign 4
	.asciz "Machine check received\n"
	.asciz "HID2 = 0x%x   SRR1 = 0x%x\n"
	.balign 4
	.asciz "Machine check was not DMA/locked cache related\n"
	.asciz "DMAErrorHandler(): An error occurred while processing DMA.\n"
	.asciz "The following errors have been detected and cleared :\n"
	.balign 4
	.asciz "\t- Requested a locked cache tag that was already in the cache\n"
	.balign 4
	.asciz "\t- DMA attempted to access normal cache\n"
	.balign 4
	.asciz "\t- DMA missed in data cache\n"
	.balign 4
	.asciz "\t- DMA queue overflowed\n"
	.balign 4
	.asciz "L1 i-caches initialized\n"
	.balign 4
	.asciz "L1 d-caches initialized\n"
	.balign 4
	.asciz "L2 cache initialized\n"
	.balign 4
	.asciz "Locked cache machine check handler installed\n"
	.balign 8
	
	# split

.global lbl_800811A8
lbl_800811A8:

	# ROM: 0x7E1A8
	.asciz "------------------------- Context 0x%08x -------------------------\n"
	.asciz "r%-2d  = 0x%08x (%14d)  r%-2d  = 0x%08x (%14d)\n"
	.asciz "LR   = 0x%08x                   CR   = 0x%08x\n"
	.balign 4
	.asciz "SRR0 = 0x%08x                   SRR1 = 0x%08x\n"
	.balign 4
	.asciz "\nGQRs----------\n"
	.balign 4
	.asciz "gqr%d = 0x%08x \t gqr%d = 0x%08x\n"
	.balign 4
	.asciz "\n\nFPRs----------\n"
	.balign 4
	.asciz "fr%d \t= %d \t fr%d \t= %d\n"
	.balign 4
	.asciz "\n\nPSFs----------\n"
	.balign 4
	.asciz "ps%d \t= 0x%x \t ps%d \t= 0x%x\n"
	.balign 4
	.asciz "\nAddress:      Back Chain    LR Save\n"
	.balign 4
	.asciz "0x%08x:   0x%08x    0x%08x\n"

.global lbl_8008135C
lbl_8008135C:

	# ROM: 0x7E35C
	.asciz "FPU-unavailable handler installed\n"
	.balign 4

.global lbl_80081380
lbl_80081380:

	# ROM: 0x7E380
	.asciz " in \"%s\" on line %d.\n"
	.balign 4
	.asciz "\nAddress:      Back Chain    LR Save\n"
	.balign 4
	.asciz "0x%08x:   0x%08x    0x%08x\n"
	.asciz "Non-recoverable Exception %d"
	.balign 4
	.asciz "Unhandled Exception %d"
	.balign 4
	.asciz "\nDSISR = 0x%08x                   DAR  = 0x%08x\n"
	.balign 4
	.asciz "TB = 0x%016llx\n"
	.asciz "\nInstruction at 0x%x (read from SRR0) attempted to access invalid address 0x%x (read from DAR)\n"
	.asciz "\nAttempted to fetch instruction from invalid address 0x%x (read from SRR0)\n"
	.asciz "\nInstruction at 0x%x (read from SRR0) attempted to access unaligned address 0x%x (read from DAR)\n"
	.balign 4
	.asciz "\nProgram exception : Possible illegal instruction/operation at or around 0x%x (read from SRR0)\n"
	.asciz "AI DMA Address =   0x%04x%04x\n"
	.balign 4
	.asciz "ARAM DMA Address = 0x%04x%04x\n"
	.balign 4
	.asciz "DI DMA Address =   0x%08x\n"
	.balign 4
	.asciz "\nLast interrupt (%d): SRR0 = 0x%08x  TB = 0x%016llx\n"
	.balign 4

.global lbl_8008165C
lbl_8008165C:

	# ROM: 0x7E65C
	.4byte func_8003DF30
	.4byte func_8003DF30
	.4byte lbl_8003DE88
	.4byte lbl_8003DEA0
	.4byte func_8003DF30
	.4byte lbl_8003DEB4
	.4byte lbl_8003DECC
	.4byte func_8003DF30
	.4byte func_8003DF30
	.4byte func_8003DF30
	.4byte func_8003DF30
	.4byte func_8003DF30
	.4byte func_8003DF30
	.4byte func_8003DF30
	.4byte func_8003DF30
	.4byte lbl_8003DEE4
	.balign 8
	
	# split

.global lbl_800816A0
lbl_800816A0:

	# ROM: 0x7E6A0
	.4byte 0x020C020D
	.4byte 0x020E020F
	.4byte 0x02100211
	.4byte 0x02120213
	.4byte 0x02140215
	.4byte 0x02160217
	.4byte 0x02180219
	.4byte 0x021A021B
	.4byte 0x021C021D
	.4byte 0x021E021F
	.4byte 0x02200221
	.4byte 0x02220223
	.4byte 0x02240225
	.4byte 0x02260227
	.4byte 0x02280229
	.4byte 0x022A022B
	.4byte 0x022C022D
	.4byte 0x022E022F
	.4byte 0x02300231
	.4byte 0x02320233
	.4byte 0x02340235
	.4byte 0x02360237
	.4byte 0x02380239
	.4byte 0x023A023B
	.4byte 0x023C023D
	.4byte 0x023E023F
	.4byte 0x02400241
	.4byte 0x02420243
	.4byte 0x02440245
	.4byte 0x02460247
	.4byte 0x02480249
	.4byte 0x024A024B
	.4byte 0x024C024D
	.4byte 0x024E024F
	.4byte 0x02500251
	.4byte 0x02520253
	.4byte 0x02540255
	.4byte 0x02560257
	.4byte 0x02580259
	.4byte 0x025A025B
	.4byte 0x025C025D
	.4byte 0x025E025F
	.4byte 0x02600261
	.4byte 0x02620263
	.4byte 0x02640265
	.4byte 0x02660267
	.4byte 0x02680269
	.4byte 0x026A020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C020C
	.4byte 0x020C026B
	.4byte 0x026C026D
	.4byte 0x026E026F
	.4byte 0x02700271
	.4byte 0x02720273
	.4byte 0x02740275
	.4byte 0x02760277
	.4byte 0x02780279
	.4byte 0x027A027B
	.4byte 0x027C027D
	.4byte 0x027E027F
	.4byte 0x02800281
	.4byte 0x02820283
	.4byte 0x02840285
	.4byte 0x02860287
	.4byte 0x02880289
	.4byte 0x028A028B
	.4byte 0x028C028D
	.4byte 0x028E028F
	.4byte 0x02900291
	.4byte 0x02920293
	.4byte 0x02940295
	.4byte 0x02960297
	.4byte 0x02980299
	.4byte 0x029A029B
	.4byte 0x029C029D
	.4byte 0x029E029F
	.4byte 0x02A002A1
	.4byte 0x02A202A3
	.4byte 0x02A402A5
	.4byte 0x02A602A7
	.4byte 0x02A802A9

.global lbl_80081820
lbl_80081820:

	# ROM: 0x7E820
	.4byte 0x00000001
	.4byte 0x00020003
	.4byte 0x00040005
	.4byte 0x00060007
	.4byte 0x00080009
	.4byte 0x000A000B
	.4byte 0x000C000D
	.4byte 0x000E000F
	.4byte 0x00100011
	.4byte 0x00120013
	.4byte 0x00140015
	.4byte 0x00160017
	.4byte 0x00180019
	.4byte 0x001A001B
	.4byte 0x001C001D
	.4byte 0x001E001F
	.4byte 0x00200021
	.4byte 0x00220023
	.4byte 0x00240025
	.4byte 0x00260027
	.4byte 0x00280029
	.4byte 0x002A002B
	.4byte 0x002C002D
	.4byte 0x002E002F
	.4byte 0x00300031
	.4byte 0x00320033
	.4byte 0x00340035
	.4byte 0x00360037
	.4byte 0x00380039
	.4byte 0x003A003B
	.4byte 0x003C003D
	.4byte 0x003E003F
	.4byte 0x00400041
	.4byte 0x00420043
	.4byte 0x00440045
	.4byte 0x00460047
	.4byte 0x00480049
	.4byte 0x004A004B
	.4byte 0x004C004D
	.4byte 0x004E004F
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00540055
	.4byte 0x00560057
	.4byte 0x00580059
	.4byte 0x005A005B
	.4byte 0x005C005D
	.4byte 0x005E005F
	.4byte 0x00600061
	.4byte 0x00620063
	.4byte 0x00640065
	.4byte 0x00660067
	.4byte 0x00680069
	.4byte 0x006A006B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000006C
	.4byte 0x006D006E
	.4byte 0x006F0070
	.4byte 0x00710072
	.4byte 0x00730000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000074
	.4byte 0x00750076
	.4byte 0x00770078
	.4byte 0x0079007A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000007B
	.4byte 0x007C007D
	.4byte 0x007E007F
	.4byte 0x00800081
	.4byte 0x00820083
	.4byte 0x00840085
	.4byte 0x00860087
	.4byte 0x00880089
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000008A
	.4byte 0x008B008C
	.4byte 0x008D008E
	.4byte 0x008F0090
	.4byte 0x00910000
	.4byte 0
	.4byte 0x00000092
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000093
	.4byte 0x00940095
	.4byte 0x00960097
	.4byte 0x00980099
	.4byte 0x009A009B
	.4byte 0x009C0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x009D009E
	.4byte 0x009F00A0
	.4byte 0x00A100A2
	.4byte 0x00A300A4
	.4byte 0x00A500A6
	.4byte 0x00A700A8
	.4byte 0x00A900AA
	.4byte 0x00AB00AC
	.4byte 0x00AD00AE
	.4byte 0x00AF00B0
	.4byte 0x00B100B2
	.4byte 0x00B300B4
	.4byte 0x00B500B6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00B700B8
	.4byte 0x00B900BA
	.4byte 0x00BB00BC
	.4byte 0x00BD00BE
	.4byte 0x00BF00C0
	.4byte 0x00C100C2
	.4byte 0x00C300C4
	.4byte 0x00C500C6
	.4byte 0x00C700C8
	.4byte 0x00C900CA
	.4byte 0x00CB00CC
	.4byte 0x00CD00CE
	.4byte 0x00CF00D0
	.4byte 0
	.4byte 0
	.4byte 0x00D100D2
	.4byte 0x00D300D4
	.4byte 0x00D500D6
	.4byte 0x00D700D8
	.4byte 0x00D900DA
	.4byte 0x00DB00DC
	.4byte 0x00DD00DE
	.4byte 0x00DF00E0
	.4byte 0x00E100E2
	.4byte 0x00E300E4
	.4byte 0x00E500E6
	.4byte 0x00E700E8
	.4byte 0x00E900EA
	.4byte 0x00EB00EC
	.4byte 0x00ED00EE
	.4byte 0x00EF00F0
	.4byte 0x00F100F2
	.4byte 0x00F300F4
	.4byte 0x00F500F6
	.4byte 0x00F700F8
	.4byte 0x00F900FA
	.4byte 0x00FB00FC
	.4byte 0x00FD00FE
	.4byte 0x00FF0100
	.4byte 0x01010102
	.4byte 0x01030104
	.4byte 0x01050106
	.4byte 0x01070108
	.4byte 0x0109010A
	.4byte 0x010B010C
	.4byte 0x010D010E
	.4byte 0x010F0110
	.4byte 0x01110112
	.4byte 0x01130114
	.4byte 0x01150116
	.4byte 0x01170118
	.4byte 0x0119011A
	.4byte 0x011B011C
	.4byte 0x011D011E
	.4byte 0x011F0120
	.4byte 0x01210122
	.4byte 0x01230000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01240125
	.4byte 0x01260127
	.4byte 0x01280129
	.4byte 0x012A012B
	.4byte 0x012C012D
	.4byte 0x012E012F
	.4byte 0x01300131
	.4byte 0x01320133
	.4byte 0x01340135
	.4byte 0x01360137
	.4byte 0x01380139
	.4byte 0x013A013B
	.4byte 0x013C013D
	.4byte 0x013E013F
	.4byte 0x01400141
	.4byte 0x01420143
	.4byte 0x01440145
	.4byte 0x01460147
	.4byte 0x01480149
	.4byte 0x014A014B
	.4byte 0x014C014D
	.4byte 0x014E014F
	.4byte 0x01500151
	.4byte 0x01520153
	.4byte 0x01540155
	.4byte 0x01560157
	.4byte 0x01580159
	.4byte 0x015A015B
	.4byte 0x015C015D
	.4byte 0x015E015F
	.4byte 0x01600161
	.4byte 0x01620163
	.4byte 0x01640165
	.4byte 0x01660167
	.4byte 0x01680169
	.4byte 0x016A016B
	.4byte 0x016C016D
	.4byte 0x016E016F
	.4byte 0x01700171
	.4byte 0x01720173
	.4byte 0x01740175
	.4byte 0x01760177
	.4byte 0x01780179
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x017A017B
	.4byte 0x017C017D
	.4byte 0x017E017F
	.4byte 0x01800181
	.4byte 0x01820183
	.4byte 0x01840185
	.4byte 0x01860187
	.4byte 0x01880189
	.4byte 0x018A018B
	.4byte 0x018C018D
	.4byte 0x018E018F
	.4byte 0x01900191
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01920193
	.4byte 0x01940195
	.4byte 0x01960197
	.4byte 0x01980199
	.4byte 0x019A019B
	.4byte 0x019C019D
	.4byte 0x019E019F
	.4byte 0x01A001A1
	.4byte 0x01A201A3
	.4byte 0x01A401A5
	.4byte 0x01A601A7
	.4byte 0x01A801A9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01AA01AB
	.4byte 0x01AC01AD
	.4byte 0x01AE01AF
	.4byte 0x01B001B1
	.4byte 0x01B201B3
	.4byte 0x01B401B5
	.4byte 0x01B601B7
	.4byte 0x01B801B9
	.4byte 0x01BA01BB
	.4byte 0x01BC01BD
	.4byte 0x01BE01BF
	.4byte 0x01C001C1
	.4byte 0x01C201C3
	.4byte 0x01C401C5
	.4byte 0x01C601C7
	.4byte 0x01C801C9
	.4byte 0x01CA0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01CB01CC
	.4byte 0x01CD01CE
	.4byte 0x01CF01D0
	.4byte 0x01D101D2
	.4byte 0x01D301D4
	.4byte 0x01D501D6
	.4byte 0x01D701D8
	.4byte 0x01D901DA
	.4byte 0x01DB01DC
	.4byte 0x01DD01DE
	.4byte 0x01DF01E0
	.4byte 0x01E101E2
	.4byte 0x01E301E4
	.4byte 0x01E501E6
	.4byte 0x01E701E8
	.4byte 0x01E901EA
	.4byte 0x01EB0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01EC01ED
	.4byte 0x01EE01EF
	.4byte 0x01F001F1
	.4byte 0x01F201F3
	.4byte 0x01F401F5
	.4byte 0x01F601F7
	.4byte 0x01F801F9
	.4byte 0x01FA01FB
	.4byte 0x01FC01FD
	.4byte 0x01FE01FF
	.4byte 0x02000201
	.4byte 0x02020203
	.4byte 0x02040205
	.4byte 0x02060207
	.4byte 0x02080209
	.4byte 0x020A020B
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000020C
	.4byte 0x020D020E
	.4byte 0x020F0210
	.4byte 0x02110212
	.4byte 0x02130214
	.4byte 0x02150216
	.4byte 0x02170218
	.4byte 0x0219021A
	.4byte 0x021B021C
	.4byte 0x021D021E
	.4byte 0x021F0220
	.4byte 0x02210222
	.4byte 0x02230224
	.4byte 0x02250226
	.4byte 0x02270228
	.4byte 0x0229022A
	.4byte 0x022B022C
	.4byte 0x022D022E
	.4byte 0x022F0230
	.4byte 0x02310232
	.4byte 0x02330234
	.4byte 0x02350236
	.4byte 0x02370238
	.4byte 0x0239023A
	.4byte 0x023B023C
	.4byte 0x023D023E
	.4byte 0x023F0240
	.4byte 0x02410242
	.4byte 0x02430244
	.4byte 0x02450246
	.4byte 0x02470248
	.4byte 0x0249024A
	.4byte 0x024B024C
	.4byte 0x024D024E
	.4byte 0x024F0250
	.4byte 0x02510252
	.4byte 0x02530254
	.4byte 0x02550256
	.4byte 0x02570258
	.4byte 0x0259025A
	.4byte 0x025B025C
	.4byte 0x025D025E
	.4byte 0x025F0260
	.4byte 0x02610262
	.4byte 0x02630264
	.4byte 0x02650266
	.4byte 0x02670268
	.4byte 0x0269026A
	.4byte 0x026B026C
	.4byte 0x026D026E
	.4byte 0x026F0270
	.4byte 0x02710272
	.4byte 0x02730274
	.4byte 0x02750276
	.4byte 0x02770278
	.4byte 0x0279027A
	.4byte 0x027B027C
	.4byte 0x027D027E
	.4byte 0x027F0280
	.4byte 0x02810282
	.4byte 0x02830284
	.4byte 0x02850286
	.4byte 0x02870288
	.4byte 0x0289028A
	.4byte 0x028B028C
	.4byte 0x028D028E
	.4byte 0x028F0290
	.4byte 0x02910292
	.4byte 0x02930294
	.4byte 0x02950296
	.4byte 0x02970298
	.4byte 0x0299029A
	.4byte 0x029B029C
	.4byte 0x029D029E
	.4byte 0x029F02A0
	.4byte 0x02A102A2
	.4byte 0x02A302A4
	.4byte 0x02A502A6
	.4byte 0x02A702A8
	.4byte 0x02A902AA
	.4byte 0x02AB02AC
	.4byte 0x02AD02AE
	.4byte 0x02AF02B0
	.4byte 0x02B102B2
	.4byte 0x02B302B4
	.4byte 0x02B502B6
	.4byte 0x02B702B8
	.4byte 0x02B902BA
	.4byte 0x02BB02BC
	.4byte 0x02BD02BE
	.4byte 0x02BF02C0
	.4byte 0x02C102C2
	.4byte 0x02C302C4
	.4byte 0x02C502C6
	.4byte 0x02C702C8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x02C902CA
	.4byte 0x02CB02CC
	.4byte 0x02CD02CE
	.4byte 0x02CF02D0
	.4byte 0x02D102D2
	.4byte 0x02D302D4
	.4byte 0x02D502D6
	.4byte 0x02D702D8
	.4byte 0x02D902DA
	.4byte 0x02DB02DC
	.4byte 0x02DD02DE
	.4byte 0x02DF02E0
	.4byte 0x02E102E2
	.4byte 0x02E302E4
	.4byte 0x02E502E6
	.4byte 0x000002E7
	.4byte 0x02E802E9
	.4byte 0x02EA02EB
	.4byte 0x02EC02ED
	.4byte 0x02EE02EF
	.4byte 0x02F002F1
	.4byte 0x02F202F3
	.4byte 0x02F402F5
	.4byte 0x02F602F7
	.4byte 0x02F802F9
	.4byte 0x02FA02FB
	.4byte 0x02FC02FD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x02FE02FF
	.4byte 0x03000301
	.4byte 0x03020303
	.4byte 0x03040305
	.4byte 0x03060307
	.4byte 0x03080309
	.4byte 0x030A030B
	.4byte 0x030C030D
	.4byte 0x030E030F
	.4byte 0x03100311
	.4byte 0x03120313
	.4byte 0x03140315
	.4byte 0x03160317
	.4byte 0x03180319
	.4byte 0x031A031B
	.4byte 0
	.4byte 0

.global lbl_800821B0
lbl_800821B0:

	# ROM: 0x7F1B0
	.4byte 0x00000100
	.4byte 0x00000040
	.4byte 0xF8000000
	.4byte 0x00000200
	.4byte 0x00000080
	.4byte 0x00003000
	.4byte 0x00000020
	.4byte 0x03FF8C00
	.4byte 0x04000000
	.4byte 0x00004000
	.4byte 0xFFFFFFFF
	.4byte 0

.global lbl_800821E0
lbl_800821E0:

	# ROM: 0x7F1E0
	.asciz "OSLink: unknown relocation type %3d\n"
	.balign 4

.global lbl_80082208
lbl_80082208:

	# ROM: 0x7F208
	.asciz "OSUnlink: unknown relocation type %3d\n"
	.balign 4

.global ResetFunctionInfo
ResetFunctionInfo:

	# ROM: 0x7F230
	.4byte OnReset_2
	.4byte 0x0000007F
	.4byte 0
	.4byte 0

.global lbl_80082240
lbl_80082240:

	# ROM: 0x7F240
	.asciz "<< Dolphin SDK - PAD\trelease build: Sep  5 2002 05:34:02 (0x2301) >>"
	.balign 4

.global lbl_80082288
lbl_80082288:

	# ROM: 0x7F288
	.4byte lbl_800445E4
	.4byte 0x0000007F
	.4byte 0
	.4byte 0

.global lbl_80082298
lbl_80082298:

	# ROM: 0x7F298
	.asciz "<< Dolphin SDK - SI\trelease build: Sep  5 2002 05:33:08 (0x2301) >>"

.global Si
Si:

	# ROM: 0x7F2DC
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global Type
Type:

	# ROM: 0x7F2F0
	.4byte 0x00000008
	.4byte 0x00000008
	.4byte 0x00000008
	.4byte 0x00000008

lbl_80082300:
	.asciz "No response"
	.asciz "N64 controller"
	.balign 4
	.asciz "N64 microphone"
	.balign 4
	.asciz "N64 keyboard"
	.balign 4
	.asciz "N64 mouse"
	.balign 4
	.asciz "GameBoy Advance"
	.asciz "Standard controller"
	.asciz "Wireless receiver"
	.balign 4
	.asciz "WaveBird controller"
	.asciz "Keyboard"
	.balign 4
	.asciz "Steering"
	.balign 8
	
	# split

.global XYNTSC
XYNTSC:

	# ROM: 0x7F3B0
	.4byte 0x00F60200
	.4byte 0x000F1200
	.4byte 0x001E0900
	.4byte 0x002C0600
	.4byte 0x00340500
	.4byte 0x00410400
	.4byte 0x00570300
	.4byte 0x00570300
	.4byte 0x00570300
	.4byte 0x00830200
	.4byte 0x00830200
	.4byte 0x00830200

lbl_800823E0:
	.4byte 0x01280200
	.4byte 0x000F1500
	.4byte 0x001D0B00
	.4byte 0x002D0700
	.4byte 0x00340600
	.4byte 0x003F0500
	.4byte 0x004E0400
	.4byte 0x00680300
	.4byte 0x00680300
	.4byte 0x00680300
	.4byte 0x00680300
	.4byte 0x009C0200
	.asciz "SISetSamplingRate: unknown TV format. Use default."
	.balign 8
	
	# split

.global lbl_80082448
lbl_80082448:

	# ROM: 0x7F448
	.asciz "<< Dolphin SDK - VI\trelease build: Sep  5 2002 05:33:13 (0x2301) >>"
	.4byte 0x060000F0
	.4byte 0x00180019
	.4byte 0x00030002
	.4byte 0x0C0D0C0D
	.4byte 0x02080207
	.4byte 0x02080207
	.4byte 0x020D01AD
	.4byte 0x404769A2
	.4byte 0x01757A00
	.4byte 0x019C0600
	.4byte 0x00F00018
	.4byte 0x00180004
	.4byte 0x00040C0C
	.4byte 0x0C0C0208
	.4byte 0x02080208
	.4byte 0x0208020E
	.4byte 0x01AD4047
	.4byte 0x69A20175
	.4byte 0x7A00019C
	.4byte 0x0500011F
	.4byte 0x00230024
	.4byte 0x00010000
	.4byte 0x0D0C0B0A
	.4byte 0x026B026A
	.4byte 0x0269026C
	.4byte 0x027101B0
	.4byte 0x404B6AAC
	.4byte 0x017C8500
	.4byte 0x01A40500
	.4byte 0x011F0021
	.4byte 0x00210002
	.4byte 0x00020D0B
	.4byte 0x0D0B026B
	.4byte 0x026D026B
	.4byte 0x026D0270
	.4byte 0x01B0404B
	.4byte 0x6AAC017C
	.4byte 0x850001A4
	.4byte 0x060000F0
	.4byte 0x00180019
	.4byte 0x00030002
	.4byte 0x100F0E0D
	.4byte 0x02060205
	.4byte 0x02040207
	.4byte 0x020D01AD
	.4byte 0x404E70A2
	.4byte 0x01757A00
	.4byte 0x019C0600
	.4byte 0x00F00018
	.4byte 0x00180004
	.4byte 0x0004100E
	.4byte 0x100E0206
	.4byte 0x02080206
	.4byte 0x0208020E
	.4byte 0x01AD404E
	.4byte 0x70A20175
	.4byte 0x7A00019C
	.4byte 0x0C0001E0
	.4byte 0x00300030
	.4byte 0x00060006
	.4byte 0x18181818
	.4byte 0x040E040E
	.4byte 0x040E040E
	.4byte 0x041A01AD
	.4byte 0x404769A2
	.4byte 0x01757A00
	.4byte 0x019C0C00
	.4byte 0x01E0002C
	.4byte 0x002C000A
	.4byte 0x000A1818
	.4byte 0x1818040E
	.4byte 0x040E040E
	.4byte 0x040E041A
	.4byte 0x01AD4047
	.4byte 0x69A8017B
	.4byte 0x7A00019C
	.4byte 0x060000F1
	.4byte 0x00180019
	.4byte 0x00010000
	.4byte 0x0C0D0C0D
	.4byte 0x02080207
	.4byte 0x02080207
	.4byte 0x020D01AD
	.4byte 0x4047699F
	.4byte 0x01727A00
	.4byte 0x019C0C00
	.4byte 0x01E00030
	.4byte 0x00300006
	.4byte 0x00061818
	.4byte 0x1818040E
	.4byte 0x040E040E
	.4byte 0x040E041A
	.4byte 0x01AD4047
	.4byte 0x69B40187
	.4byte 0x7A00019C
	.4byte 0x01F001DC
	.4byte 0x01AE0174
	.4byte 0x012900DB
	.4byte 0x008E0046
	.4byte 0x000C00E2
	.4byte 0x00CB00C0
	.4byte 0x00C400CF
	.4byte 0x00DE00EC
	.4byte 0x00FC0008
	.4byte 0x000F0013
	.4byte 0x0013000F
	.4byte 0x000C0008
	.4byte 0x00010000

.global lbl_8008263C
lbl_8008263C:

	# ROM: 0x7F63C
	.4byte lbl_800464AC
	.4byte lbl_800464B4
	.4byte lbl_800464EC
	.4byte lbl_800464F4
	.4byte lbl_800464BC
	.4byte lbl_800464C4
	.4byte lbl_8004651C
	.4byte lbl_8004651C
	.4byte lbl_800464DC
	.4byte lbl_800464E4
	.4byte lbl_8004651C
	.4byte lbl_8004651C
	.4byte lbl_8004651C
	.4byte lbl_8004651C
	.4byte lbl_8004651C
	.4byte lbl_8004651C
	.4byte lbl_800464FC
	.4byte lbl_80046504
	.4byte lbl_8004651C
	.4byte lbl_8004651C
	.4byte lbl_800464CC
	.4byte lbl_800464D4
	.4byte lbl_8004651C
	.4byte lbl_8004651C
	.4byte lbl_8004650C
	.4byte lbl_8004651C
	.4byte lbl_80046514
	.asciz "***************************************\n"
	.balign 4
	.asciz " ! ! ! C A U T I O N ! ! !             \n"
	.balign 4
	.asciz "This TV format \"DEBUG_PAL\" is only for \n"
	.balign 4
	.asciz "temporary solution until PAL DAC board \n"
	.balign 4
	.asciz "is available. Please do NOT use this   \n"
	.balign 4
	.asciz "mode in real games!!!                  \n"
	.balign 4
	.asciz "VIConfigure(): Tried to change mode from (%d) to (%d), which is forbidden\n"
	.balign 4

.global lbl_800827FC
lbl_800827FC:

	# ROM: 0x7F7FC
	.4byte lbl_80047C1C
	.4byte lbl_80047C24
	.4byte lbl_80047C2C
	.4byte lbl_80047C1C
	.4byte lbl_80047C24
	.4byte lbl_80047C2C
	.4byte lbl_80047C1C

.global lbl_80082818
lbl_80082818:

	# ROM: 0x7F818
	.4byte 0
	.4byte 0
	.float 640.0
	.float 480.0
	.4byte 0
	.float 1.0

.global lbl_80082830
lbl_80082830:

	# ROM: 0x7F830
	.4byte lbl_800488D0
	.4byte lbl_80048C1C
	.4byte lbl_80048980

.global lbl_8008283C
lbl_8008283C:

	# ROM: 0x7F83C
	.4byte lbl_80048ABC
	.4byte lbl_80048ABC
	.4byte lbl_80048ABC

.global lbl_80082848
lbl_80082848:

	# ROM: 0x7F848
	.4byte lbl_80048A14
	.4byte lbl_80048A14
	.4byte lbl_80048A14
	.4byte 0

.global lbl_80082858
lbl_80082858:

	# ROM: 0x7F858
	.4byte 0x30313233
	.4byte 0x34353637
	.4byte 0x38394142
	.4byte 0x43444546

.global lbl_80082868
lbl_80082868:

	# ROM: 0x7F868
	.4byte lbl_80049DA0
	.4byte lbl_80049C3C
	.4byte lbl_80049C60
	.4byte lbl_80049C84
	.4byte lbl_80049CA8
	.4byte lbl_80049CCC
	.4byte lbl_80049CF0
	.4byte lbl_80049D1C
	.4byte lbl_80049D48
	.4byte lbl_80049D74

.global lbl_80082890
lbl_80082890:

	# ROM: 0x7F890
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000007

.global lbl_800828B0
lbl_800828B0:

	# ROM: 0x7F8B0
	.4byte lbl_8004DAEC
	.4byte lbl_8004DC84
	.4byte lbl_8004DDD0
	.4byte lbl_8004DE9C

.global lbl_800828C0
lbl_800828C0:

	# ROM: 0x7F8C0
	.4byte lbl_8004E8D0
	.4byte func_8004E8EC
	.4byte func_8004E8EC
	.4byte func_8004E8EC
	.4byte func_8004E8EC
	.4byte func_8004E8EC
	.4byte lbl_8004E8D8
	.4byte func_8004E8EC
	.4byte func_8004E8EC
	.4byte func_8004E8EC
	.4byte func_8004E8EC
	.4byte func_8004E8EC
	.4byte lbl_8004E8E0
	.4byte func_8004E8EC
	.4byte func_8004E8EC
	.4byte func_8004E8EC
	.4byte func_8004E8EC
	.4byte func_8004E8EC
	.4byte lbl_8004E8E8
	.balign 8
	
	# split

.global lbl_80082910
lbl_80082910:

	# ROM: 0x7F910
	.4byte 0x0000001E
	.4byte 0x00000021
	.4byte 0x00000024
	.4byte 0x00000027
	.4byte 0x0000002A
	.4byte 0x0000002D
	.4byte 0x00000030
	.4byte 0x00000033
	.4byte 0x00000036
	.4byte 0x00000039

.global lbl_80082938
lbl_80082938:

	# ROM: 0x7F938
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0x000000FF
	.4byte 0

.global lbl_80082960
lbl_80082960:

	# ROM: 0x7F960
	.asciz "nuReLoadTexture.c"
	.balign 8
	
	# split

.global lbl_80082978
lbl_80082978:

	# ROM: 0x7F978
	.asciz "gjVertex.c"
	.balign 4

.global lbl_80082984
lbl_80082984:

	# ROM: 0x7F984
	.asciz "gjSetTextureG: failed to search texture."
	.balign 4

.global lbl_800829B0
lbl_800829B0:

	# ROM: 0x7F9B0
	.asciz "njDrawLine2D: does not support NJD_DRAW_FAN"

.global lbl_800829DC
lbl_800829DC:

	# ROM: 0x7F9DC
	.asciz "njDrawPolygon2D: supported polygon-number is 3 or 4\n"
	.balign 4

.global lbl_80082A14
lbl_80082A14:

	# ROM: 0x7FA14
	.asciz "njDrawLine3D: does not support NJD_DRAW_FAN"

.global lbl_80082A40
lbl_80082A40:

	# ROM: 0x7FA40
	.asciz "njDrawPolygon3D: supported polygon-number is 3 or 4\n"
	.balign 4

.global lbl_80082A78
lbl_80082A78:

	# ROM: 0x7FA78
	.asciz "njDrawTriangle3D: does not support NJD_DRAW_FAN"

.global lbl_80082AA8
lbl_80082AA8:

	# ROM: 0x7FAA8
	.asciz "dsDrawObject.c"
	.balign 4

.global lbl_80082AB8
lbl_80082AB8:

	# ROM: 0x7FAB8
	.asciz "dsSetBasePalette: invalid id"
	.balign 4

.global lbl_80082AD8
lbl_80082AD8:

	# ROM: 0x7FAD8
	.asciz "dsSetOffsetPalette: invalid id"
	.balign 4

.global lbl_80082AF8
lbl_80082AF8:

	# ROM: 0x7FAF8
	.4byte 0x00000001
	.4byte 0

.global lbl_80082B00
lbl_80082B00:

	# ROM: 0x7FB00
	.4byte lbl_80076CF8

.global lbl_80082B04
lbl_80082B04:

	# ROM: 0x7FB04
	.4byte lbl_80076D00

.global lbl_80082B08
lbl_80082B08:

	# ROM: 0x7FB08
	.4byte 0x82848684
	.4byte 0x8A848E84
	.4byte 0x92849684
	.4byte 0x9A849E84
	.4byte 0xA284A684
	.4byte 0xAA84AE84
	.4byte 0xB284B684
	.4byte 0xBA84BE84
	.4byte 0xC184C384
	.4byte 0xC584C784
	.4byte 0xC984CB84
	.4byte 0xCD84CF84
	.4byte 0xD184D384
	.4byte 0xD584D784
	.4byte 0xD984DB84
	.4byte 0xDD84DF84
	.4byte 0xE104E204
	.4byte 0xE304E404
	.4byte 0xE504E604
	.4byte 0xE704E804
	.4byte 0xE904EA04
	.4byte 0xEB04EC04
	.4byte 0xED04EE04
	.4byte 0xEF04F004
	.4byte 0xF0C4F144
	.4byte 0xF1C4F244
	.4byte 0xF2C4F344
	.4byte 0xF3C4F444
	.4byte 0xF4C4F544
	.4byte 0xF5C4F644
	.4byte 0xF6C4F744
	.4byte 0xF7C4F844
	.4byte 0xF8A4F8E4
	.4byte 0xF924F964
	.4byte 0xF9A4F9E4
	.4byte 0xFA24FA64
	.4byte 0xFAA4FAE4
	.4byte 0xFB24FB64
	.4byte 0xFBA4FBE4
	.4byte 0xFC24FC64
	.4byte 0xFC94FCB4
	.4byte 0xFCD4FCF4
	.4byte 0xFD14FD34
	.4byte 0xFD54FD74
	.4byte 0xFD94FDB4
	.4byte 0xFDD4FDF4
	.4byte 0xFE14FE34
	.4byte 0xFE54FE74
	.4byte 0xFE8CFE9C
	.4byte 0xFEACFEBC
	.4byte 0xFECCFEDC
	.4byte 0xFEECFEFC
	.4byte 0xFF0CFF1C
	.4byte 0xFF2CFF3C
	.4byte 0xFF4CFF5C
	.4byte 0xFF6CFF7C
	.4byte 0xFF88FF90
	.4byte 0xFF98FFA0
	.4byte 0xFFA8FFB0
	.4byte 0xFFB8FFC0
	.4byte 0xFFC8FFD0
	.4byte 0xFFD8FFE0
	.4byte 0xFFE8FFF0
	.4byte 0xFFF80000
	.4byte 0x7D7C797C
	.4byte 0x757C717C
	.4byte 0x6D7C697C
	.4byte 0x657C617C
	.4byte 0x5D7C597C
	.4byte 0x557C517C
	.4byte 0x4D7C497C
	.4byte 0x457C417C
	.4byte 0x3E7C3C7C
	.4byte 0x3A7C387C
	.4byte 0x367C347C
	.4byte 0x327C307C
	.4byte 0x2E7C2C7C
	.4byte 0x2A7C287C
	.4byte 0x267C247C
	.4byte 0x227C207C
	.4byte 0x1EFC1DFC
	.4byte 0x1CFC1BFC
	.4byte 0x1AFC19FC
	.4byte 0x18FC17FC
	.4byte 0x16FC15FC
	.4byte 0x14FC13FC
	.4byte 0x12FC11FC
	.4byte 0x10FC0FFC
	.4byte 0x0F3C0EBC
	.4byte 0x0E3C0DBC
	.4byte 0x0D3C0CBC
	.4byte 0x0C3C0BBC
	.4byte 0x0B3C0ABC
	.4byte 0x0A3C09BC
	.4byte 0x093C08BC
	.4byte 0x083C07BC
	.4byte 0x075C071C
	.4byte 0x06DC069C
	.4byte 0x065C061C
	.4byte 0x05DC059C
	.4byte 0x055C051C
	.4byte 0x04DC049C
	.4byte 0x045C041C
	.4byte 0x03DC039C
	.4byte 0x036C034C
	.4byte 0x032C030C
	.4byte 0x02EC02CC
	.4byte 0x02AC028C
	.4byte 0x026C024C
	.4byte 0x022C020C
	.4byte 0x01EC01CC
	.4byte 0x01AC018C
	.4byte 0x01740164
	.4byte 0x01540144
	.4byte 0x01340124
	.4byte 0x01140104
	.4byte 0x00F400E4
	.4byte 0x00D400C4
	.4byte 0x00B400A4
	.4byte 0x00940084
	.4byte 0x00780070
	.4byte 0x00680060
	.4byte 0x00580050
	.4byte 0x00480040
	.4byte 0x00380030
	.4byte 0x00280020
	.4byte 0x00180010
	.4byte 0x00080000

.global lbl_80082D08
lbl_80082D08:

	# ROM: 0x7FD08
	.4byte 0x00001000

.global lbl_80082D0C
lbl_80082D0C:

	# ROM: 0x7FD0C
	.4byte lbl_80077610

.global lbl_80082D10
lbl_80082D10:

	# ROM: 0x7FD10
	.4byte 0x00000010
	.4byte 0x00000010
	.4byte 0x00000018
	.4byte 0

.global lbl_80082D20
lbl_80082D20:

	# ROM: 0x7FD20
	.4byte 0x00000001
	.4byte 0

.global lbl_80082D28
lbl_80082D28:

	# ROM: 0x7FD28
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80082D40
lbl_80082D40:

	# ROM: 0x7FD40
	.4byte 0
	.4byte 0

.global lbl_80082D48
lbl_80082D48:

	# ROM: 0x7FD48
	.4byte lbl_80068F90
	.4byte lbl_80068F7C
	.4byte lbl_80068E18
	.4byte 0
	.4byte lbl_80068C08
	.4byte lbl_80068A44
	.4byte lbl_80068978
	.4byte lbl_80068918
	.4byte lbl_800684F0
	.4byte 0
	.4byte lbl_80068350
	.4byte lbl_800682EC
	.4byte lbl_8006828C
	.4byte lbl_800681A8
	.4byte lbl_80068148
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80082DB0
lbl_80082DB0:

	# ROM: 0x7FDB0
	.4byte 0
	.4byte 0

.global lbl_80082DB8
lbl_80082DB8:

	# ROM: 0x7FDB8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8006A6E0
	.4byte lbl_8006A6D8
	.4byte lbl_8006A6B8
	.4byte lbl_8006A574
	.4byte lbl_8006A3B0
	.4byte lbl_8006A4E0
	.4byte lbl_8006A65C
	.4byte lbl_8006A2F8
	.4byte lbl_8006A6CC

.global lbl_80082DE8
lbl_80082DE8:

	# ROM: 0x7FDE8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8006AF7C
	.4byte lbl_8006AF74
	.4byte lbl_8006AF3C
	.4byte lbl_8006AD2C
	.4byte lbl_8006AA24
	.4byte lbl_8006ABD0
	.4byte lbl_8006AEE0
	.4byte lbl_8006A918
	.4byte lbl_8006AF68

.global lbl_80082E18
lbl_80082E18:

	# ROM: 0x7FE18
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0x00000008
	.4byte 0x00000009
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0x0000000D
	.4byte 0x0000000E
	.4byte 0x0000000F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000000A
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0x0000000D
	.4byte 0x0000000E
	.4byte 0x0000000F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80082FD8
lbl_80082FD8:

	# ROM: 0x7FFD8
	.4byte lbl_8006D078
	.4byte lbl_8006D064
	.4byte lbl_8006CF58
	.4byte 0
	.4byte lbl_8006CD28
	.4byte lbl_8006CC90
	.4byte lbl_8006CB9C
	.4byte lbl_8006CB3C
	.4byte lbl_8006C8B4
	.4byte 0
	.4byte lbl_8006C844
	.4byte lbl_8006C7E0
	.4byte lbl_8006C780
	.4byte lbl_8006C6E8
	.4byte lbl_8006C688
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80083040
lbl_80083040:

	# ROM: 0x80040
	.4byte 0x00000001

.global lbl_80083044
lbl_80083044:

	# ROM: 0x80044
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000008
	.4byte 0x0000000C
	.4byte 0x00000010
	.4byte 0x00000014
	.4byte 0x00000018
	.4byte 0x0000001C
	.4byte 0x00000021
	.4byte 0x00000025
	.4byte 0x00000029
	.4byte 0x0000002D
	.4byte 0x00000031
	.4byte 0x00000035
	.4byte 0x00000039
	.4byte 0x00000040
	.4byte 0x00000044
	.4byte 0x00000048
	.4byte 0x0000004C
	.4byte 0x00000051
	.4byte 0x00000055
	.4byte 0x00000059
	.4byte 0x0000005D
	.4byte 0x00000062
	.4byte 0x00000066
	.4byte 0x0000006A
	.4byte 0x0000006E
	.4byte 0x00000073
	.4byte 0x00000077
	.4byte 0x0000007B
	.4byte 0x0000007F

.global lbl_800830C0
lbl_800830C0:

	# ROM: 0x800C0
	.4byte 0
	.4byte 0xC2C00000
	.4byte 0x3A800EAE
	.4byte 0xC270D2F1
	.4byte 0x3AFFFBCE
	.4byte 0xC258BDD9
	.4byte 0x3B40053E
	.4byte 0xC24AA780
	.4byte 0x3B7FFBCE
	.4byte 0xC240A8C1
	.4byte 0x3BA00193
	.4byte 0xC238E80A
	.4byte 0x3BBFFCDB
	.4byte 0xC2329268
	.4byte 0x3BE00086
	.4byte 0xC22D3756
	.4byte 0x3C000219
	.4byte 0xC22893A9
	.4byte 0x3C0FFFBD
	.4byte 0xC2247C0E
	.4byte 0x3C200193
	.4byte 0xC220D2F1
	.4byte 0x3C2FFF37
	.4byte 0xC21D8338
	.4byte 0x3C40010C
	.4byte 0xC21A7D50
	.4byte 0x3C4FFEB0
	.4byte 0xC217B562
	.4byte 0x3C600086
	.4byte 0xC215223E
	.4byte 0x3C6FFE2A
	.4byte 0xC212BC98
	.4byte 0x3C800000
	.4byte 0xC2107E91
	.4byte 0x3C8800EB
	.4byte 0xC20E6359
	.4byte 0x3C8FFFBD
	.4byte 0xC20C66F6
	.4byte 0x3C9800A8
	.4byte 0xC20A8612
	.4byte 0x3C9FFF7A
	.4byte 0xC208BDD9
	.4byte 0x3CA80065
	.4byte 0xC2070BE4
	.4byte 0x3CAFFF37
	.4byte 0xC2056E21
	.4byte 0x3CB80022
	.4byte 0xC203E2C2
	.4byte 0x3CC0010C
	.4byte 0xC2026837
	.4byte 0x3CC7FFDE
	.4byte 0xC200FD22
	.4byte 0x3CD000C9
	.4byte 0xC1FF4094
	.4byte 0x3CD7FF9B
	.4byte 0xC1FCA13A
	.4byte 0x3CE00086
	.4byte 0xC1FA1A4B
	.4byte 0x3CE7FF58
	.4byte 0xC1F7AA10
	.4byte 0x3CF00043
	.4byte 0xC1F54F00
	.4byte 0x3CF7FF15
	.4byte 0xC1F307B6
	.4byte 0x3D000000
	.4byte 0xC1F0D2F2
	.4byte 0x3D040075
	.4byte 0xC1EEAF8E
	.4byte 0x3D07FFDE
	.4byte 0xC1EC9C83
	.4byte 0x3D0C0054
	.4byte 0xC1EA98DC
	.4byte 0x3D0FFFBD
	.4byte 0xC1E8A3BC
	.4byte 0x3D140032
	.4byte 0xC1E6BC58
	.4byte 0x3D17FF9B
	.4byte 0xC1E4E1F3
	.4byte 0x3D1C0011
	.4byte 0xC1E313E1
	.4byte 0x3D200086
	.4byte 0xC1E15182
	.4byte 0x3D23FFEF
	.4byte 0xC1DF9A42
	.4byte 0x3D280065
	.4byte 0xC1DDED98
	.4byte 0x3D2BFFCE
	.4byte 0xC1DC4B05
	.4byte 0x3D300043
	.4byte 0xC1DAB211
	.4byte 0x3D33FFAC
	.4byte 0xC1D9224D
	.4byte 0x3D380022
	.4byte 0xC1D79B53
	.4byte 0x3D3BFF8B
	.4byte 0xC1D61CC2
	.4byte 0x3D400000
	.4byte 0xC1D4A63F
	.4byte 0x3D440075
	.4byte 0xC1D33775
	.4byte 0x3D47FFDE
	.4byte 0xC1D1D013
	.4byte 0x3D4C0054
	.4byte 0xC1D06FD0
	.4byte 0x3D4FFFBD
	.4byte 0xC1CF1664
	.4byte 0x3D540032
	.4byte 0xC1CDC38C
	.4byte 0x3D57FF9B
	.4byte 0xC1CC770A
	.4byte 0x3D5C0011
	.4byte 0xC1CB30A1
	.4byte 0x3D600086
	.4byte 0xC1C9F01B
	.4byte 0x3D63FFEF
	.4byte 0xC1C8B541
	.4byte 0x3D680065
	.4byte 0xC1C77FE0
	.4byte 0x3D6BFFCE
	.4byte 0xC1C64FCA
	.4byte 0x3D700043
	.4byte 0xC1C524D0
	.4byte 0x3D73FFAC
	.4byte 0xC1C3FEC6
	.4byte 0x3D780022
	.4byte 0xC1C2DD86
	.4byte 0x3D7BFF8B
	.4byte 0xC1C1C0E6
	.4byte 0x3D800000
	.4byte 0xC1C0A8C1
	.4byte 0x3D82003B
	.4byte 0xC1BF94F5
	.4byte 0x3D83FFEF
	.4byte 0xC1BE855E
	.4byte 0x3D86002A
	.4byte 0xC1BD79DD
	.4byte 0x3D87FFDE
	.4byte 0xC1BC7252
	.4byte 0x3D8A0019
	.4byte 0xC1BB6EA0
	.4byte 0x3D8BFFCE
	.4byte 0xC1BA6EAB
	.4byte 0x3D8E0008
	.4byte 0xC1B97258
	.4byte 0x3D900043
	.4byte 0xC1B8798C
	.4byte 0x3D91FFF8
	.4byte 0xC1B7842F
	.4byte 0x3D940032
	.4byte 0xC1B69228
	.4byte 0x3D95FFE7
	.4byte 0xC1B5A361
	.4byte 0x3D980022
	.4byte 0xC1B4B7C3
	.4byte 0x3D99FFD6
	.4byte 0xC1B3CF3A
	.4byte 0x3D9C0011
	.4byte 0xC1B2E9B1
	.4byte 0x3D9DFFC5
	.4byte 0xC1B20714
	.4byte 0x3DA00000
	.4byte 0xC1B12752
	.4byte 0x3DA2003B
	.4byte 0xC1B04A57
	.4byte 0x3DA3FFEF
	.4byte 0xC1AF7012
	.4byte 0x3DA6002A
	.4byte 0xC1AE9872
	.4byte 0x3DA7FFDE
	.4byte 0xC1ADC368
	.4byte 0x3DAA0019
	.4byte 0xC1ACF0E3
	.4byte 0x3DABFFCE
	.4byte 0xC1AC20D4
	.4byte 0x3DAE0008
	.4byte 0xC1AB532D
	.4byte 0x3DB00043
	.4byte 0xC1AA87E0
	.4byte 0x3DB1FFF8
	.4byte 0xC1A9BEDF
	.4byte 0x3DB40032
	.4byte 0xC1A8F81D
	.4byte 0x3DB5FFE7
	.4byte 0xC1A8338D
	.4byte 0x3DB80022
	.4byte 0xC1A77123
	.4byte 0x3DB9FFD6
	.4byte 0xC1A6B0D3
	.4byte 0x3DBC0011
	.4byte 0xC1A5F292
	.4byte 0x3DBDFFC5
	.4byte 0xC1A53654
	.4byte 0x3DC00000
	.4byte 0xC1A47C0E
	.4byte 0x3DC2003B
	.4byte 0xC1A3C3B7
	.4byte 0x3DC3FFEF
	.4byte 0xC1A30D44
	.4byte 0x3DC6002A
	.4byte 0xC1A258AB
	.4byte 0x3DC7FFDE
	.4byte 0xC1A1A5E3
	.4byte 0x3DCA0019
	.4byte 0xC1A0F4E2
	.4byte 0x3DCBFFCE
	.4byte 0xC1A045A0
	.4byte 0x3DCE0008
	.4byte 0xC19F9813
	.4byte 0x3DD00043
	.4byte 0xC19EEC33
	.4byte 0x3DD1FFF8
	.4byte 0xC19E41F9
	.4byte 0x3DD40032
	.4byte 0xC19D995C
	.4byte 0x3DD5FFE7
	.4byte 0xC19CF254
	.4byte 0x3DD80022
	.4byte 0xC19C4CD9
	.4byte 0x3DD9FFD6
	.4byte 0xC19BA8E6
	.4byte 0x3DDC0011
	.4byte 0xC19B0671
	.4byte 0x3DDDFFC5
	.4byte 0xC19A6575
	.4byte 0x3DE00000
	.4byte 0xC199C5EB
	.4byte 0x3DE2003B
	.4byte 0xC19927CB
	.4byte 0x3DE3FFEF
	.4byte 0xC1988B10
	.4byte 0x3DE6002A
	.4byte 0xC197EFB4
	.4byte 0x3DE7FFDE
	.4byte 0xC19755B0
	.4byte 0x3DEA0019
	.4byte 0xC196BCFE
	.4byte 0x3DEBFFCE
	.4byte 0xC1962599
	.4byte 0x3DEE0008
	.4byte 0xC1958F7C
	.4byte 0x3DF00043
	.4byte 0xC194FA9F
	.4byte 0x3DF1FFF8
	.4byte 0xC19466FF
	.4byte 0x3DF40032
	.4byte 0xC193D497
	.4byte 0x3DF5FFE7
	.4byte 0xC1934360
	.4byte 0x3DF80022
	.4byte 0xC192B355
	.4byte 0x3DF9FFD6
	.4byte 0xC1922474
	.4byte 0x3DFC0011
	.4byte 0xC19196B5
	.4byte 0x3DFDFFC5
	.4byte 0xC1910A16
	.4byte 0x3E000000
	.4byte 0xC1907E91
	.4byte 0x3E01001D
	.4byte 0xC18FF422
	.4byte 0x3E01FFF8
	.4byte 0xC18F6AC4
	.4byte 0x3E030015
	.4byte 0xC18EE274
	.4byte 0x3E03FFEF
	.4byte 0xC18E5B2E
	.4byte 0x3E05000D
	.4byte 0xC18DD4EC
	.4byte 0x3E05FFE7
	.4byte 0xC18D4FAC
	.4byte 0x3E070004
	.4byte 0xC18CCB6A
	.4byte 0x3E080022
	.4byte 0xC18C4822
	.4byte 0x3E08FFFC
	.4byte 0xC18BC5D0
	.4byte 0x3E0A0019
	.4byte 0xC18B4470
	.4byte 0x3E0AFFF3
	.4byte 0xC18AC400
	.4byte 0x3E0C0011
	.4byte 0xC18A447B
	.4byte 0x3E0CFFEB
	.4byte 0xC189C5DF
	.4byte 0x3E0E0008
	.4byte 0xC1894828
	.4byte 0x3E0EFFE3
	.4byte 0xC188CB52
	.4byte 0x3E100000
	.4byte 0xC1884F5C
	.4byte 0x3E11001D
	.4byte 0xC187D441
	.4byte 0x3E11FFF8
	.4byte 0xC18759FE
	.4byte 0x3E130015
	.4byte 0xC186E091
	.4byte 0x3E13FFEF
	.4byte 0xC18667F7
	.4byte 0x3E15000D
	.4byte 0xC185F02D
	.4byte 0x3E15FFE7
	.4byte 0xC1857930
	.4byte 0x3E170004
	.4byte 0xC18502FD
	.4byte 0x3E180022
	.4byte 0xC1848D92
	.4byte 0x3E18FFFC
	.4byte 0xC18418ED
	.4byte 0x3E1A0019
	.4byte 0xC183A50A
	.4byte 0x3E1AFFF3
	.4byte 0xC18331E6
	.4byte 0x3E1C0011
	.4byte 0xC182BF81
	.4byte 0x3E1CFFEB
	.4byte 0xC1824DD6
	.4byte 0x3E1E0008
	.4byte 0xC181DCE4
	.4byte 0x3E1EFFE3
	.4byte 0xC1816CA9
	.4byte 0x3E200000
	.4byte 0xC180FD21
	.4byte 0x3E21001D
	.4byte 0xC1808E4D
	.4byte 0x3E21FFF8
	.4byte 0xC1802027
	.4byte 0x3E230015
	.4byte 0xC17F655D
	.4byte 0x3E23FFEF
	.4byte 0xC17E8BC4
	.4byte 0x3E25000D
	.4byte 0xC17DB37D
	.4byte 0x3E25FFE7
	.4byte 0xC17CDC84
	.4byte 0x3E270004
	.4byte 0xC17C06D7
	.4byte 0x3E280022
	.4byte 0xC17B326F
	.4byte 0x3E28FFFC
	.4byte 0xC17A5F4B
	.4byte 0x3E2A0019
	.4byte 0xC1798D66
	.4byte 0x3E2AFFF3
	.4byte 0xC178BCBB
	.4byte 0x3E2C0011
	.4byte 0xC177ED48
	.4byte 0x3E2CFFEB
	.4byte 0xC1771F09
	.4byte 0x3E2E0008
	.4byte 0xC17651FA
	.4byte 0x3E2EFFE3
	.4byte 0xC1758618
	.4byte 0x3E300000
	.4byte 0xC174BB60
	.4byte 0x3E31001D
	.4byte 0xC173F1CE
	.4byte 0x3E31FFF8
	.4byte 0xC173295E
	.4byte 0x3E330015
	.4byte 0xC172620E
	.4byte 0x3E33FFEF
	.4byte 0xC1719BD9
	.4byte 0x3E35000D
	.4byte 0xC170D6BF
	.4byte 0x3E35FFE7
	.4byte 0xC17012B9
	.4byte 0x3E370004
	.4byte 0xC16F4FC7
	.4byte 0x3E380022
	.4byte 0xC16E8DE6
	.4byte 0x3E38FFFC
	.4byte 0xC16DCD11
	.4byte 0x3E3A0019
	.4byte 0xC16D0D45
	.4byte 0x3E3AFFF3
	.4byte 0xC16C4E82
	.4byte 0x3E3C0011
	.4byte 0xC16B90C3
	.4byte 0x3E3CFFEB
	.4byte 0xC16AD405
	.4byte 0x3E3E0008
	.4byte 0xC16A1847
	.4byte 0x3E3EFFE3
	.4byte 0xC1695D85
	.4byte 0x3E400000
	.4byte 0xC168A3BD
	.4byte 0x3E41001D
	.4byte 0xC167EAEB
	.4byte 0x3E41FFF8
	.4byte 0xC167330E
	.4byte 0x3E430015
	.4byte 0xC1667C23
	.4byte 0x3E43FFEF
	.4byte 0xC165C628
	.4byte 0x3E45000D
	.4byte 0xC165111A
	.4byte 0x3E45FFE7
	.4byte 0xC1645CF5
	.4byte 0x3E470004
	.4byte 0xC163A9BB
	.4byte 0x3E480022
	.4byte 0xC162F765
	.4byte 0x3E48FFFC
	.4byte 0xC16245F4
	.4byte 0x3E4A0019
	.4byte 0xC1619564
	.4byte 0x3E4AFFF3
	.4byte 0xC160E5B2
	.4byte 0x3E4C0011
	.4byte 0xC16036DF
	.4byte 0x3E4CFFEB
	.4byte 0xC15F88E6
	.4byte 0x3E4E0008
	.4byte 0xC15EDBC5
	.4byte 0x3E4EFFE3
	.4byte 0xC15E2F7B
	.4byte 0x3E500000
	.4byte 0xC15D8406
	.4byte 0x3E51001D
	.4byte 0xC15CD963
	.4byte 0x3E51FFF8
	.4byte 0xC15C2F91
	.4byte 0x3E530015
	.4byte 0xC15B868E
	.4byte 0x3E53FFEF
	.4byte 0xC15ADE57
	.4byte 0x3E55000D
	.4byte 0xC15A36EA
	.4byte 0x3E55FFE7
	.4byte 0xC1599047
	.4byte 0x3E570004
	.4byte 0xC158EA6A
	.4byte 0x3E580022
	.4byte 0xC1584552
	.4byte 0x3E58FFFC
	.4byte 0xC157A0FD
	.4byte 0x3E5A0019
	.4byte 0xC156FD6A
	.4byte 0x3E5AFFF3
	.4byte 0xC1565A97
	.4byte 0x3E5C0011
	.4byte 0xC155B882
	.4byte 0x3E5CFFEB
	.4byte 0xC1551729
	.4byte 0x3E5E0008
	.4byte 0xC154768A
	.4byte 0x3E5EFFE3
	.4byte 0xC153D6A3
	.4byte 0x3E600000
	.4byte 0xC1533775
	.4byte 0x3E61001D
	.4byte 0xC15298FB
	.4byte 0x3E61FFF8
	.4byte 0xC151FB35
	.4byte 0x3E630015
	.4byte 0xC1515E22
	.4byte 0x3E63FFEF
	.4byte 0xC150C1C0
	.4byte 0x3E65000D
	.4byte 0xC150260C
	.4byte 0x3E65FFE7
	.4byte 0xC14F8B07
	.4byte 0x3E670004
	.4byte 0xC14EF0AE
	.4byte 0x3E680022
	.4byte 0xC14E56FF
	.4byte 0x3E68FFFC
	.4byte 0xC14DBDFA
	.4byte 0x3E6A0019
	.4byte 0xC14D259C
	.4byte 0x3E6AFFF3
	.4byte 0xC14C8DE5
	.4byte 0x3E6C0011
	.4byte 0xC14BF6D2
	.4byte 0x3E6CFFEB
	.4byte 0xC14B6063
	.4byte 0x3E6E0008
	.4byte 0xC14ACA97
	.4byte 0x3E6EFFE3
	.4byte 0xC14A356A
	.4byte 0x3E700000
	.4byte 0xC149A0DE
	.4byte 0x3E71001D
	.4byte 0xC1490CEF
	.4byte 0x3E71FFF8
	.4byte 0xC148799E
	.4byte 0x3E730015
	.4byte 0xC147E6E8
	.4byte 0x3E73FFEF
	.4byte 0xC14754CD
	.4byte 0x3E75000D
	.4byte 0xC146C349
	.4byte 0x3E75FFE7
	.4byte 0xC146325E
	.4byte 0x3E770004
	.4byte 0xC145A20A
	.4byte 0x3E780022
	.4byte 0xC145124B
	.4byte 0x3E78FFFC
	.4byte 0xC144831F
	.4byte 0x3E7A0019
	.4byte 0xC143F487
	.4byte 0x3E7AFFF3
	.4byte 0xC1436681
	.4byte 0x3E7C0011
	.4byte 0xC142D90A
	.4byte 0x3E7CFFEB
	.4byte 0xC1424C24
	.4byte 0x3E7E0008
	.4byte 0xC141BFCC
	.4byte 0x3E7EFFE3
	.4byte 0xC1413401
	.4byte 0x3E800000
	.4byte 0xC140A8C1
	.4byte 0x3E80800F
	.4byte 0xC1401E0D
	.4byte 0x3E80FFFC
	.4byte 0xC13F93E3
	.4byte 0x3E81800A
	.4byte 0xC13F0A42
	.4byte 0x3E81FFF8
	.4byte 0xC13E8128
	.4byte 0x3E828006
	.4byte 0xC13DF895
	.4byte 0x3E82FFF3
	.4byte 0xC13D7088
	.4byte 0x3E838002
	.4byte 0xC13CE8FF
	.4byte 0x3E840011
	.4byte 0xC13C61FB
	.4byte 0x3E847FFE
	.4byte 0xC13BDB79
	.4byte 0x3E85000D
	.4byte 0xC13B5578
	.4byte 0x3E857FFA
	.4byte 0xC13ACFF8
	.4byte 0x3E860008
	.4byte 0xC13A4AF8
	.4byte 0x3E867FF6
	.4byte 0xC139C678
	.4byte 0x3E870004
	.4byte 0xC1394274
	.4byte 0x3E877FF1
	.4byte 0xC138BEED
	.4byte 0x3E880000
	.4byte 0xC1383BE3
	.4byte 0x3E88800F
	.4byte 0xC137B954
	.4byte 0x3E88FFFC
	.4byte 0xC137373F
	.4byte 0x3E89800A
	.4byte 0xC136B5A3
	.4byte 0x3E89FFF8
	.4byte 0xC1363480
	.4byte 0x3E8A8006
	.4byte 0xC135B3D5
	.4byte 0x3E8AFFF3
	.4byte 0xC135339F
	.4byte 0x3E8B8002
	.4byte 0xC134B3E0
	.4byte 0x3E8C0011
	.4byte 0xC1343497
	.4byte 0x3E8C7FFE
	.4byte 0xC133B5C0
	.4byte 0x3E8D000D
	.4byte 0xC133375E
	.4byte 0x3E8D7FFA
	.4byte 0xC132B96D
	.4byte 0x3E8E0008
	.4byte 0xC1323BEF
	.4byte 0x3E8E7FF6
	.4byte 0xC131BEE2
	.4byte 0x3E8F0004
	.4byte 0xC1314244
	.4byte 0x3E8F7FF1
	.4byte 0xC130C616
	.4byte 0x3E900000
	.4byte 0xC1304A57
	.4byte 0x3E90800F
	.4byte 0xC12FCF05
	.4byte 0x3E90FFFC
	.4byte 0xC12F5421
	.4byte 0x3E91800A
	.4byte 0xC12ED9A8
	.4byte 0x3E91FFF8
	.4byte 0xC12E5F9C
	.4byte 0x3E928006
	.4byte 0xC12DE5FA
	.4byte 0x3E92FFF3
	.4byte 0xC12D6CC3
	.4byte 0x3E938002
	.4byte 0xC12CF3F4
	.4byte 0x3E940011
	.4byte 0xC12C7B8E
	.4byte 0x3E947FFE
	.4byte 0xC12C0390
	.4byte 0x3E95000D
	.4byte 0xC12B8BFA
	.4byte 0x3E957FFA
	.4byte 0xC12B14CA
	.4byte 0x3E960008
	.4byte 0xC12A9E00
	.4byte 0x3E967FF6
	.4byte 0xC12A279B
	.4byte 0x3E970004
	.4byte 0xC129B19A
	.4byte 0x3E977FF1
	.4byte 0xC1293BFE
	.4byte 0x3E980000
	.4byte 0xC128C6C4
	.4byte 0x3E98800F
	.4byte 0xC12851EE
	.4byte 0x3E98FFFC
	.4byte 0xC127DD7A
	.4byte 0x3E99800A
	.4byte 0xC1276966
	.4byte 0x3E99FFF8
	.4byte 0xC126F5B3
	.4byte 0x3E9A8006
	.4byte 0xC1268260
	.4byte 0x3E9AFFF3
	.4byte 0xC1260F6C
	.4byte 0x3E9B8002
	.4byte 0xC1259CD7
	.4byte 0x3E9C0011
	.4byte 0xC1252AA1
	.4byte 0x3E9C7FFE
	.4byte 0xC124B8C7
	.4byte 0x3E9D000D
	.4byte 0xC124474C
	.4byte 0x3E9D7FFA
	.4byte 0xC123D62C
	.4byte 0x3E9E0008
	.4byte 0xC1236568
	.4byte 0x3E9E7FF6
	.4byte 0xC122F500
	.4byte 0x3E9F0004
	.4byte 0xC12284F2
	.4byte 0x3E9F7FF1
	.4byte 0xC122153D
	.4byte 0x3EA00000
	.4byte 0xC121A5E3
	.4byte 0x3EA0800F
	.4byte 0xC12136E1
	.4byte 0x3EA0FFFC
	.4byte 0xC120C838
	.4byte 0x3EA1800A
	.4byte 0xC12059E7
	.4byte 0x3EA1FFF8
	.4byte 0xC11FEBED
	.4byte 0x3EA28006
	.4byte 0xC11F7E4A
	.4byte 0x3EA2FFF3
	.4byte 0xC11F10FC
	.4byte 0x3EA38002
	.4byte 0xC11EA405
	.4byte 0x3EA40011
	.4byte 0xC11E3763
	.4byte 0x3EA47FFE
	.4byte 0xC11DCB15
	.4byte 0x3EA5000D
	.4byte 0xC11D5F1C
	.4byte 0x3EA57FFA
	.4byte 0xC11CF376
	.4byte 0x3EA60008
	.4byte 0xC11C8824
	.4byte 0x3EA67FF6
	.4byte 0xC11C1D24
	.4byte 0x3EA70004
	.4byte 0xC11BB276
	.4byte 0x3EA77FF1
	.4byte 0xC11B481A
	.4byte 0x3EA80000
	.4byte 0xC11ADE0F
	.4byte 0x3EA8800F
	.4byte 0xC11A7455
	.4byte 0x3EA8FFFC
	.4byte 0xC11A0AEA
	.4byte 0x3EA9800A
	.4byte 0xC119A1D0
	.4byte 0x3EA9FFF8
	.4byte 0xC1193905
	.4byte 0x3EAA8006
	.4byte 0xC118D089
	.4byte 0x3EAAFFF3
	.4byte 0xC118685B
	.4byte 0x3EAB8002
	.4byte 0xC118007B
	.4byte 0x3EAC0011
	.4byte 0xC11798E7
	.4byte 0x3EAC7FFE
	.4byte 0xC11731A2
	.4byte 0x3EAD000D
	.4byte 0xC116CAA8
	.4byte 0x3EAD7FFA
	.4byte 0xC11663FC
	.4byte 0x3EAE0008
	.4byte 0xC115FD9A
	.4byte 0x3EAE7FF6
	.4byte 0xC1159784
	.4byte 0x3EAF0004
	.4byte 0xC11531B8
	.4byte 0x3EAF7FF1
	.4byte 0xC114CC37
	.4byte 0x3EB00000
	.4byte 0xC11466FF
	.4byte 0x3EB0800F
	.4byte 0xC1140212
	.4byte 0x3EB0FFFC
	.4byte 0xC1139D6D
	.4byte 0x3EB1800A
	.4byte 0xC1133911
	.4byte 0x3EB1FFF8
	.4byte 0xC112D4FD
	.4byte 0x3EB28006
	.4byte 0xC1127131
	.4byte 0x3EB2FFF3
	.4byte 0xC1120DAD
	.4byte 0x3EB38002
	.4byte 0xC111AA6F
	.4byte 0x3EB40011
	.4byte 0xC1114779
	.4byte 0x3EB47FFE
	.4byte 0xC110E4C8
	.4byte 0x3EB5000D
	.4byte 0xC110825E
	.4byte 0x3EB57FFA
	.4byte 0xC1102039
	.4byte 0x3EB60008
	.4byte 0xC10FBE58
	.4byte 0x3EB67FF6
	.4byte 0xC10F5CBE
	.4byte 0x3EB70004
	.4byte 0xC10EFB66
	.4byte 0x3EB77FF1
	.4byte 0xC10E9A54
	.4byte 0x3EB80000
	.4byte 0xC10E3985
	.4byte 0x3EB8800F
	.4byte 0xC10DD8F9
	.4byte 0x3EB8FFFC
	.4byte 0xC10D78B0
	.4byte 0x3EB9800A
	.4byte 0xC10D18A9
	.4byte 0x3EB9FFF8
	.4byte 0xC10CB8E5
	.4byte 0x3EBA8006
	.4byte 0xC10C5962
	.4byte 0x3EBAFFF3
	.4byte 0xC10BFA21
	.4byte 0x3EBB8002
	.4byte 0xC10B9B22
	.4byte 0x3EBC0011
	.4byte 0xC10B3C62
	.4byte 0x3EBC7FFE
	.4byte 0xC10ADDE3
	.4byte 0x3EBD000D
	.4byte 0xC10A7FA5
	.4byte 0x3EBD7FFA
	.4byte 0xC10A21A6
	.4byte 0x3EBE0008
	.4byte 0xC109C3E6
	.4byte 0x3EBE7FF6
	.4byte 0xC1096666
	.4byte 0x3EBF0004
	.4byte 0xC1090924
	.4byte 0x3EBF7FF1
	.4byte 0xC108AC21
	.4byte 0x3EC00000
	.4byte 0xC1084F5C
	.4byte 0x3EC0800F
	.4byte 0xC107F2D5
	.4byte 0x3EC0FFFC
	.4byte 0xC107968A
	.4byte 0x3EC1800A
	.4byte 0xC1073A7E
	.4byte 0x3EC1FFF8
	.4byte 0xC106DEAE
	.4byte 0x3EC28006
	.4byte 0xC106831A
	.4byte 0x3EC2FFF3
	.4byte 0xC10627C3
	.4byte 0x3EC38002
	.4byte 0xC105CCA7
	.4byte 0x3EC40011
	.4byte 0xC10571C7
	.4byte 0x3EC47FFE
	.4byte 0xC1051722
	.4byte 0x3EC5000D
	.4byte 0xC104BCB9
	.4byte 0x3EC57FFA
	.4byte 0xC104628A
	.4byte 0x3EC60008
	.4byte 0xC1040895
	.4byte 0x3EC67FF6
	.4byte 0xC103AEDB
	.4byte 0x3EC70004
	.4byte 0xC103555A
	.4byte 0x3EC77FF1
	.4byte 0xC102FC12
	.4byte 0x3EC80000
	.4byte 0xC102A304
	.4byte 0x3EC8800F
	.4byte 0xC1024A30
	.4byte 0x3EC8FFFC
	.4byte 0xC101F193
	.4byte 0x3EC9800A
	.4byte 0xC101992F
	.4byte 0x3EC9FFF8
	.4byte 0xC1014103
	.4byte 0x3ECA8006
	.4byte 0xC100E90F
	.4byte 0x3ECAFFF3
	.4byte 0xC1009151
	.4byte 0x3ECB8002
	.4byte 0xC10039CC
	.4byte 0x3ECC0011
	.4byte 0xC0FFC4FC
	.4byte 0x3ECC7FFE
	.4byte 0xC0FF16CC
	.4byte 0x3ECD000D
	.4byte 0xC0FE690A
	.4byte 0x3ECD7FFA
	.4byte 0xC0FDBBB4
	.4byte 0x3ECE0008
	.4byte 0xC0FD0EC9
	.4byte 0x3ECE7FF6
	.4byte 0xC0FC624A
	.4byte 0x3ECF0004
	.4byte 0xC0FBB635
	.4byte 0x3ECF7FF1
	.4byte 0xC0FB0A8B
	.4byte 0x3ED00000
	.4byte 0xC0FA5F4C
	.4byte 0x3ED0800F
	.4byte 0xC0F9B474
	.4byte 0x3ED0FFFC
	.4byte 0xC0F90A05
	.4byte 0x3ED1800A
	.4byte 0xC0F86001
	.4byte 0x3ED1FFF8
	.4byte 0xC0F7B661
	.4byte 0x3ED28006
	.4byte 0xC0F70D2A
	.4byte 0x3ED2FFF3
	.4byte 0xC0F6645A
	.4byte 0x3ED38002
	.4byte 0xC0F5BBF1
	.4byte 0x3ED40011
	.4byte 0xC0F513EC
	.4byte 0x3ED47FFE
	.4byte 0xC0F46C4E
	.4byte 0x3ED5000D
	.4byte 0xC0F3C513
	.4byte 0x3ED57FFA
	.4byte 0xC0F31E3F
	.4byte 0x3ED60008
	.4byte 0xC0F277CD
	.4byte 0x3ED67FF6
	.4byte 0xC0F1D1BD
	.4byte 0x3ED70004
	.4byte 0xC0F12C13
	.4byte 0x3ED77FF1
	.4byte 0xC0F086CB
	.4byte 0x3ED80000
	.4byte 0xC0EFE1E3
	.4byte 0x3ED8800F
	.4byte 0xC0EF3D5E
	.4byte 0x3ED8FFFC
	.4byte 0xC0EE993B
	.4byte 0x3ED9800A
	.4byte 0xC0EDF577
	.4byte 0x3ED9FFF8
	.4byte 0xC0ED5213
	.4byte 0x3EDA8006
	.4byte 0xC0ECAF10
	.4byte 0x3EDAFFF3
	.4byte 0xC0EC0C6D
	.4byte 0x3EDB8002
	.4byte 0xC0EB6A29
	.4byte 0x3EDC0011
	.4byte 0xC0EAC843
	.4byte 0x3EDC7FFE
	.4byte 0xC0EA26B9
	.4byte 0x3EDD000D
	.4byte 0xC0E98590
	.4byte 0x3EDD7FFA
	.4byte 0xC0E8E4C3
	.4byte 0x3EDE0008
	.4byte 0xC0E84452
	.4byte 0x3EDE7FF6
	.4byte 0xC0E7A43E
	.4byte 0x3EDF0004
	.4byte 0xC0E70486
	.4byte 0x3EDF7FF1
	.4byte 0xC0E6652A
	.4byte 0x3EE00000
	.4byte 0xC0E5C628
	.4byte 0x3EE0800F
	.4byte 0xC0E52780
	.4byte 0x3EE0FFFC
	.4byte 0xC0E48935
	.4byte 0x3EE1800A
	.4byte 0xC0E3EB42
	.4byte 0x3EE1FFF8
	.4byte 0xC0E34DA9
	.4byte 0x3EE28006
	.4byte 0xC0E2B06A
	.4byte 0x3EE2FFF3
	.4byte 0xC0E21383
	.4byte 0x3EE38002
	.4byte 0xC0E176F5
	.4byte 0x3EE40011
	.4byte 0xC0E0DABE
	.4byte 0x3EE47FFE
	.4byte 0xC0E03EE0
	.4byte 0x3EE5000D
	.4byte 0xC0DFA359
	.4byte 0x3EE57FFA
	.4byte 0xC0DF0827
	.4byte 0x3EE60008
	.4byte 0xC0DE6D4C
	.4byte 0x3EE67FF6
	.4byte 0xC0DDD2CA
	.4byte 0x3EE70004
	.4byte 0xC0DD389B
	.4byte 0x3EE77FF1
	.4byte 0xC0DC9EC1
	.4byte 0x3EE80000
	.4byte 0xC0DC053E
	.4byte 0x3EE8800F
	.4byte 0xC0DB6C0D
	.4byte 0x3EE8FFFC
	.4byte 0xC0DAD333
	.4byte 0x3EE9800A
	.4byte 0xC0DA3AAC
	.4byte 0x3EE9FFF8
	.4byte 0xC0D9A277
	.4byte 0x3EEA8006
	.4byte 0xC0D90A96
	.4byte 0x3EEAFFF3
	.4byte 0xC0D87308
	.4byte 0x3EEB8002
	.4byte 0xC0D7DBCD
	.4byte 0x3EEC0011
	.4byte 0xC0D744E3
	.4byte 0x3EEC7FFE
	.4byte 0xC0D6AE4B
	.4byte 0x3EED000D
	.4byte 0xC0D61805
	.4byte 0x3EED7FFA
	.4byte 0xC0D58210
	.4byte 0x3EEE0008
	.4byte 0xC0D4EC6C
	.4byte 0x3EEE7FF6
	.4byte 0xC0D45719
	.4byte 0x3EEF0004
	.4byte 0xC0D3C214
	.4byte 0x3EEF7FF1
	.4byte 0xC0D32D60
	.4byte 0x3EF00000
	.4byte 0xC0D298FA
	.4byte 0x3EF0800F
	.4byte 0xC0D204E6
	.4byte 0x3EF0FFFC
	.4byte 0xC0D1711D
	.4byte 0x3EF1800A
	.4byte 0xC0D0DDA7
	.4byte 0x3EF1FFF8
	.4byte 0xC0D04A7B
	.4byte 0x3EF28006
	.4byte 0xC0CFB79E
	.4byte 0x3EF2FFF3
	.4byte 0xC0CF2510
	.4byte 0x3EF38002
	.4byte 0xC0CE92CD
	.4byte 0x3EF40011
	.4byte 0xC0CE00D8
	.4byte 0x3EF47FFE
	.4byte 0xC0CD6F2F
	.4byte 0x3EF5000D
	.4byte 0xC0CCDDD3
	.4byte 0x3EF57FFA
	.4byte 0xC0CC4CC0
	.4byte 0x3EF60008
	.4byte 0xC0CBBBFB
	.4byte 0x3EF67FF6
	.4byte 0xC0CB2B82
	.4byte 0x3EF70004
	.4byte 0xC0CA9B52
	.4byte 0x3EF77FF1
	.4byte 0xC0CA0B6E
	.4byte 0x3EF80000
	.4byte 0xC0C97BD5
	.4byte 0x3EF8800F
	.4byte 0xC0C8EC83
	.4byte 0x3EF8FFFC
	.4byte 0xC0C85D7D
	.4byte 0x3EF9800A
	.4byte 0xC0C7CEC0
	.4byte 0x3EF9FFF8
	.4byte 0xC0C7404D
	.4byte 0x3EFA8006
	.4byte 0xC0C6B223
	.4byte 0x3EFAFFF3
	.4byte 0xC0C62440
	.4byte 0x3EFB8002
	.4byte 0xC0C596A5
	.4byte 0x3EFC0011
	.4byte 0xC0C50953
	.4byte 0x3EFC7FFE
	.4byte 0xC0C47C4A
	.4byte 0x3EFD000D
	.4byte 0xC0C3EF87
	.4byte 0x3EFD7FFA
	.4byte 0xC0C3630B
	.4byte 0x3EFE0008
	.4byte 0xC0C2D6D6
	.4byte 0x3EFE7FF6
	.4byte 0xC0C24AE6
	.4byte 0x3EFF0004
	.4byte 0xC0C1BF40
	.4byte 0x3EFF7FF1
	.4byte 0xC0C133DD
	.4byte 0x3F000000
	.4byte 0xC0C0A8C1
	.4byte 0x3F004007
	.4byte 0xC0C01DEB
	.4byte 0x3F007FFE
	.4byte 0xC0BF9359
	.4byte 0x3F00C005
	.4byte 0xC0BF090D
	.4byte 0x3F00FFFC
	.4byte 0xC0BE7F04
	.4byte 0x3F014003
	.4byte 0xC0BDF541
	.4byte 0x3F017FFA
	.4byte 0xC0BD6BC2
	.4byte 0x3F01C001
	.4byte 0xC0BCE286
	.4byte 0x3F020008
	.4byte 0xC0BC598E
	.4byte 0x3F023FFF
	.4byte 0xC0BBD0DB
	.4byte 0x3F028006
	.4byte 0xC0BB4869
	.4byte 0x3F02BFFD
	.4byte 0xC0BAC03A
	.4byte 0x3F030004
	.4byte 0xC0BA384E
	.4byte 0x3F033FFB
	.4byte 0xC0B9B0A5
	.4byte 0x3F038002
	.4byte 0xC0B9293D
	.4byte 0x3F03BFF9
	.4byte 0xC0B8A218
	.4byte 0x3F040000
	.4byte 0xC0B81B35
	.4byte 0x3F044007
	.4byte 0xC0B79492
	.4byte 0x3F047FFE
	.4byte 0xC0B70E30
	.4byte 0x3F04C005
	.4byte 0xC0B68810
	.4byte 0x3F04FFFC
	.4byte 0xC0B6022E
	.4byte 0x3F054003
	.4byte 0xC0B57C8F
	.4byte 0x3F057FFA
	.4byte 0xC0B4F72F
	.4byte 0x3F05C001
	.4byte 0xC0B4720F
	.4byte 0x3F060008
	.4byte 0xC0B3ED2F
	.4byte 0x3F063FFF
	.4byte 0xC0B3688E
	.4byte 0x3F068006
	.4byte 0xC0B2E42E
	.4byte 0x3F06BFFD
	.4byte 0xC0B2600B
	.4byte 0x3F070004
	.4byte 0xC0B1DC27
	.4byte 0x3F073FFB
	.4byte 0xC0B15882
	.4byte 0x3F078002
	.4byte 0xC0B0D519
	.4byte 0x3F07BFF9
	.4byte 0xC0B051F2
	.4byte 0x3F080000
	.4byte 0xC0AFCF05
	.4byte 0x3F084007
	.4byte 0xC0AF4C57
	.4byte 0x3F087FFE
	.4byte 0xC0AEC9E6
	.4byte 0x3F08C005
	.4byte 0xC0AE47B4
	.4byte 0x3F08FFFC
	.4byte 0xC0ADC5BD
	.4byte 0x3F094003
	.4byte 0xC0AD4403
	.4byte 0x3F097FFA
	.4byte 0xC0ACC285
	.4byte 0x3F09C001
	.4byte 0xC0AC4144
	.4byte 0x3F0A0008
	.4byte 0xC0ABC040
	.4byte 0x3F0A3FFF
	.4byte 0xC0AB3F77
	.4byte 0x3F0A8006
	.4byte 0xC0AABEE8
	.4byte 0x3F0ABFFD
	.4byte 0xC0AA3E94
	.4byte 0x3F0B0004
	.4byte 0xC0A9BE7D
	.4byte 0x3F0B3FFB
	.4byte 0xC0A93EA1
	.4byte 0x3F0B8002
	.4byte 0xC0A8BEFF
	.4byte 0x3F0BBFF9
	.4byte 0xC0A83F98
	.4byte 0x3F0C0000
	.4byte 0xC0A7C06C
	.4byte 0x3F0C4007
	.4byte 0xC0A74178
	.4byte 0x3F0C7FFE
	.4byte 0xC0A6C2C0
	.4byte 0x3F0CC005
	.4byte 0xC0A6443F
	.4byte 0x3F0CFFFC
	.4byte 0xC0A5C5FA
	.4byte 0x3F0D4003
	.4byte 0xC0A547ED
	.4byte 0x3F0D7FFA
	.4byte 0xC0A4CA1B
	.4byte 0x3F0DC001
	.4byte 0xC0A44C7F
	.4byte 0x3F0E0008
	.4byte 0xC0A3CF1C
	.4byte 0x3F0E3FFF
	.4byte 0xC0A351F4
	.4byte 0x3F0E8006
	.4byte 0xC0A2D502
	.4byte 0x3F0EBFFD
	.4byte 0xC0A25849
	.4byte 0x3F0F0004
	.4byte 0xC0A1DBC8
	.4byte 0x3F0F3FFB
	.4byte 0xC0A15F7F
	.4byte 0x3F0F8002
	.4byte 0xC0A0E36B
	.4byte 0x3F0FBFF9
	.4byte 0xC0A06790
	.4byte 0x3F100000
	.4byte 0xC09FEBEC
	.4byte 0x3F104007
	.4byte 0xC09F7080
	.4byte 0x3F107FFE
	.4byte 0xC09EF549
	.4byte 0x3F10C005
	.4byte 0xC09E7A4A
	.4byte 0x3F10FFFC
	.4byte 0xC09DFF80
	.4byte 0x3F114003
	.4byte 0xC09D84EC
	.4byte 0x3F117FFA
	.4byte 0xC09D0A8F
	.4byte 0x3F11C001
	.4byte 0xC09C9069
	.4byte 0x3F120008
	.4byte 0xC09C1676
	.4byte 0x3F123FFF
	.4byte 0xC09B9CBB
	.4byte 0x3F128006
	.4byte 0xC09B2333
	.4byte 0x3F12BFFD
	.4byte 0xC09AA9E1
	.4byte 0x3F130004
	.4byte 0xC09A30C4
	.4byte 0x3F133FFB
	.4byte 0xC099B7DA
	.4byte 0x3F138002
	.4byte 0xC0993F27
	.4byte 0x3F13BFF9
	.4byte 0xC098C6A8
	.4byte 0x3F140000
	.4byte 0xC0984E5B
	.4byte 0x3F144007
	.4byte 0xC097D643
	.4byte 0x3F147FFE
	.4byte 0xC0975E5F
	.4byte 0x3F14C005
	.4byte 0xC096E6B0
	.4byte 0x3F14FFFC
	.4byte 0xC0966F33
	.4byte 0x3F154003
	.4byte 0xC095F7EA
	.4byte 0x3F157FFA
	.4byte 0xC09580D2
	.4byte 0x3F15C001
	.4byte 0xC09509F0
	.4byte 0x3F160008
	.4byte 0xC094933E
	.4byte 0x3F163FFF
	.4byte 0xC0941CC1
	.4byte 0x3F168006
	.4byte 0xC093A674
	.4byte 0x3F16BFFD
	.4byte 0xC093305B
	.4byte 0x3F170004
	.4byte 0xC092BA73
	.4byte 0x3F173FFB
	.4byte 0xC09244BF
	.4byte 0x3F178002
	.4byte 0xC091CF3C
	.4byte 0x3F17BFF9
	.4byte 0xC09159E8
	.4byte 0x3F180000
	.4byte 0xC090E4C9
	.4byte 0x3F184007
	.4byte 0xC0906FD8
	.4byte 0x3F187FFE
	.4byte 0xC08FFB1A
	.4byte 0x3F18C005
	.4byte 0xC08F868E
	.4byte 0x3F18FFFC
	.4byte 0xC08F1232
	.4byte 0x3F194003
	.4byte 0xC08E9E06
	.4byte 0x3F197FFA
	.4byte 0xC08E2A0B
	.4byte 0x3F19C001
	.4byte 0xC08DB63F
	.4byte 0x3F1A0008
	.4byte 0xC08D42A4
	.4byte 0x3F1A3FFF
	.4byte 0xC08CCF3A
	.4byte 0x3F1A8006
	.4byte 0xC08C5BFF
	.4byte 0x3F1ABFFD
	.4byte 0xC08BE8F3
	.4byte 0x3F1B0004
	.4byte 0xC08B7616
	.4byte 0x3F1B3FFB
	.4byte 0xC08B036B
	.4byte 0x3F1B8002
	.4byte 0xC08A90ED
	.4byte 0x3F1BBFF9
	.4byte 0xC08A1E9F
	.4byte 0x3F1C0000
	.4byte 0xC089AC80
	.4byte 0x3F1C4007
	.4byte 0xC0893A91
	.4byte 0x3F1C7FFE
	.4byte 0xC088C8CD
	.4byte 0x3F1CC005
	.4byte 0xC088573A
	.4byte 0x3F1CFFFC
	.4byte 0xC087E5D6
	.4byte 0x3F1D4003
	.4byte 0xC087749F
	.4byte 0x3F1D7FFA
	.4byte 0xC0870397
	.4byte 0x3F1DC001
	.4byte 0xC08692BC
	.4byte 0x3F1E0008
	.4byte 0xC0862210
	.4byte 0x3F1E3FFF
	.4byte 0xC085B190
	.4byte 0x3F1E8006
	.4byte 0xC085413E
	.4byte 0x3F1EBFFD
	.4byte 0xC084D11A
	.4byte 0x3F1F0004
	.4byte 0xC0846122
	.4byte 0x3F1F3FFB
	.4byte 0xC083F156
	.4byte 0x3F1F8002
	.4byte 0xC08381BA
	.4byte 0x3F1FBFF9
	.4byte 0xC0831249
	.4byte 0x3F200000
	.4byte 0xC082A305
	.4byte 0x3F204007
	.4byte 0xC08233EE
	.4byte 0x3F207FFE
	.4byte 0xC081C502
	.4byte 0x3F20C005
	.4byte 0xC0815643
	.4byte 0x3F20FFFC
	.4byte 0xC080E7B0
	.4byte 0x3F214003
	.4byte 0xC0807948
	.4byte 0x3F217FFA
	.4byte 0xC0800B0D
	.4byte 0x3F21C001
	.4byte 0xC07F39FC
	.4byte 0x3F220008
	.4byte 0xC07E5E31
	.4byte 0x3F223FFF
	.4byte 0xC07D82BF
	.4byte 0x3F228006
	.4byte 0xC07CA7A4
	.4byte 0x3F22BFFD
	.4byte 0xC07BCCDE
	.4byte 0x3F230004
	.4byte 0xC07AF26F
	.4byte 0x3F233FFB
	.4byte 0xC07A1859
	.4byte 0x3F238002
	.4byte 0xC0793E92
	.4byte 0x3F23BFF9
	.4byte 0xC0786523
	.4byte 0x3F240000
	.4byte 0xC0778C09
	.4byte 0x3F244007
	.4byte 0xC076B346
	.4byte 0x3F247FFE
	.4byte 0xC075DAD3
	.4byte 0x3F24C005
	.4byte 0xC07502B8
	.4byte 0x3F24FFFC
	.4byte 0xC0742AED
	.4byte 0x3F254003
	.4byte 0xC073537A
	.4byte 0x3F257FFA
	.4byte 0xC0727C57
	.4byte 0x3F25C001
	.4byte 0xC071A58B
	.4byte 0x3F260008
	.4byte 0xC070CF10
	.4byte 0x3F263FFF
	.4byte 0xC06FF8E4
	.4byte 0x3F268006
	.4byte 0xC06F2310
	.4byte 0x3F26BFFD
	.4byte 0xC06E4D87
	.4byte 0x3F270004
	.4byte 0xC06D7857
	.4byte 0x3F273FFB
	.4byte 0xC06CA377
	.4byte 0x3F278002
	.4byte 0xC06BCEE6
	.4byte 0x3F27BFF9
	.4byte 0xC06AFAA9
	.4byte 0x3F280000
	.4byte 0xC06A26BB
	.4byte 0x3F284007
	.4byte 0xC069531E
	.4byte 0x3F287FFE
	.4byte 0xC0687FD0
	.4byte 0x3F28C005
	.4byte 0xC067ACD6
	.4byte 0x3F28FFFC
	.4byte 0xC066DA27
	.4byte 0x3F294003
	.4byte 0xC06607CC
	.4byte 0x3F297FFA
	.4byte 0xC06535BD
	.4byte 0x3F29C001
	.4byte 0xC0646402
	.4byte 0x3F2A0008
	.4byte 0xC0639292
	.4byte 0x3F2A3FFF
	.4byte 0xC062C172
	.4byte 0x3F2A8006
	.4byte 0xC061F0A2
	.4byte 0x3F2ABFFD
	.4byte 0xC061201D
	.4byte 0x3F2B0004
	.4byte 0xC0604FE8
	.4byte 0x3F2B3FFB
	.4byte 0xC05F8002
	.4byte 0x3F2B8002
	.4byte 0xC05EB068
	.4byte 0x3F2BBFF9
	.4byte 0xC05DE11A
	.4byte 0x3F2C0000
	.4byte 0xC05D121B
	.4byte 0x3F2C4007
	.4byte 0xC05C436C
	.4byte 0x3F2C7FFE
	.4byte 0xC05B7504
	.4byte 0x3F2CC005
	.4byte 0xC05AA6EC
	.4byte 0x3F2CFFFC
	.4byte 0xC059D91F
	.4byte 0x3F2D4003
	.4byte 0xC0590B9E
	.4byte 0x3F2D7FFA
	.4byte 0xC0583E6C
	.4byte 0x3F2DC001
	.4byte 0xC0577182
	.4byte 0x3F2E0008
	.4byte 0xC056A4E3
	.4byte 0x3F2E3FFF
	.4byte 0xC055D895
	.4byte 0x3F2E8006
	.4byte 0xC0550C8D
	.4byte 0x3F2EBFFD
	.4byte 0xC05440D1
	.4byte 0x3F2F0004
	.4byte 0xC053755C
	.4byte 0x3F2F3FFB
	.4byte 0xC052AA37
	.4byte 0x3F2F8002
	.4byte 0xC051DF59
	.4byte 0x3F2FBFF9
	.4byte 0xC05114C6
	.4byte 0x3F300000
	.4byte 0xC0504A7B
	.4byte 0x3F304007
	.4byte 0xC04F807C
	.4byte 0x3F307FFE
	.4byte 0xC04EB6C3
	.4byte 0x3F30C005
	.4byte 0xC04DED57
	.4byte 0x3F30FFFC
	.4byte 0xC04D2431
	.4byte 0x3F314003
	.4byte 0xC04C5B53
	.4byte 0x3F317FFA
	.4byte 0xC04B92C0
	.4byte 0x3F31C001
	.4byte 0xC04ACA75
	.4byte 0x3F320008
	.4byte 0xC04A0271
	.4byte 0x3F323FFF
	.4byte 0xC0493AB8
	.4byte 0x3F328006
	.4byte 0xC0487343
	.4byte 0x3F32BFFD
	.4byte 0xC047AC15
	.4byte 0x3F330004
	.4byte 0xC046E532
	.4byte 0x3F333FFB
	.4byte 0xC0461E93
	.4byte 0x3F338002
	.4byte 0xC045583A
	.4byte 0x3F33BFF9
	.4byte 0xC0449229
	.4byte 0x3F340000
	.4byte 0xC043CC60
	.4byte 0x3F344007
	.4byte 0xC04306DD
	.4byte 0x3F347FFE
	.4byte 0xC042419E
	.4byte 0x3F34C005
	.4byte 0xC0417CA6
	.4byte 0x3F34FFFC
	.4byte 0xC040B7F6
	.4byte 0x3F354003
	.4byte 0xC03FF388
	.4byte 0x3F357FFA
	.4byte 0xC03F2F62
	.4byte 0x3F35C001
	.4byte 0xC03E6B7F
	.4byte 0x3F360008
	.4byte 0xC03DA7E3
	.4byte 0x3F363FFF
	.4byte 0xC03CE48A
	.4byte 0x3F368006
	.4byte 0xC03C2175
	.4byte 0x3F36BFFD
	.4byte 0xC03B5EA6
	.4byte 0x3F370004
	.4byte 0xC03A9C1B
	.4byte 0x3F373FFB
	.4byte 0xC039D9D3
	.4byte 0x3F378002
	.4byte 0xC03917CE
	.4byte 0x3F37BFF9
	.4byte 0xC038560C
	.4byte 0x3F380000
	.4byte 0xC0379492
	.4byte 0x3F384007
	.4byte 0xC036D356
	.4byte 0x3F387FFE
	.4byte 0xC0361262
	.4byte 0x3F38C005
	.4byte 0xC03551AD
	.4byte 0x3F38FFFC
	.4byte 0xC034913F
	.4byte 0x3F394003
	.4byte 0xC033D10F
	.4byte 0x3F397FFA
	.4byte 0xC0331123
	.4byte 0x3F39C001
	.4byte 0xC032517A
	.4byte 0x3F3A0008
	.4byte 0xC0319210
	.4byte 0x3F3A3FFF
	.4byte 0xC030D2ED
	.4byte 0x3F3A8006
	.4byte 0xC030140A
	.4byte 0x3F3ABFFD
	.4byte 0xC02F5565
	.4byte 0x3F3B0004
	.4byte 0xC02E9703
	.4byte 0x3F3B3FFB
	.4byte 0xC02DD8E4
	.4byte 0x3F3B8002
	.4byte 0xC02D1B04
	.4byte 0x3F3BBFF9
	.4byte 0xC02C5D64
	.4byte 0x3F3C0000
	.4byte 0xC02BA006
	.4byte 0x3F3C4007
	.4byte 0xC02AE2EB
	.4byte 0x3F3C7FFE
	.4byte 0xC02A260B
	.4byte 0x3F3CC005
	.4byte 0xC029696E
	.4byte 0x3F3CFFFC
	.4byte 0xC028AD10
	.4byte 0x3F3D4003
	.4byte 0xC027F0F6
	.4byte 0x3F3D7FFA
	.4byte 0xC0273516
	.4byte 0x3F3DC001
	.4byte 0xC0267979
	.4byte 0x3F3E0008
	.4byte 0xC025BE16
	.4byte 0x3F3E3FFF
	.4byte 0xC02502F7
	.4byte 0x3F3E8006
	.4byte 0xC0244817
	.4byte 0x3F3EBFFD
	.4byte 0xC0238D71
	.4byte 0x3F3F0004
	.4byte 0xC022D30F
	.4byte 0x3F3F3FFB
	.4byte 0xC02218E7
	.4byte 0x3F3F8002
	.4byte 0xC0215F03
	.4byte 0x3F3FBFF9
	.4byte 0xC020A559
	.4byte 0x3F400000
	.4byte 0xC01FEBEE
	.4byte 0x3F404007
	.4byte 0xC01F32BE
	.4byte 0x3F407FFE
	.4byte 0xC01E79D1
	.4byte 0x3F40C005
	.4byte 0xC01DC11E
	.4byte 0x3F40FFFC
	.4byte 0xC01D08A7
	.4byte 0x3F414003
	.4byte 0xC01C506E
	.4byte 0x3F417FFA
	.4byte 0xC01B9874
	.4byte 0x3F41C001
	.4byte 0xC01AE0B5
	.4byte 0x3F420008
	.4byte 0xC01A2935
	.4byte 0x3F423FFF
	.4byte 0xC01971EF
	.4byte 0x3F428006
	.4byte 0xC018BAE4
	.4byte 0x3F42BFFD
	.4byte 0xC0180419
	.4byte 0x3F430004
	.4byte 0xC0174D87
	.4byte 0x3F433FFB
	.4byte 0xC0169731
	.4byte 0x3F438002
	.4byte 0xC015E11A
	.4byte 0x3F43BFF9
	.4byte 0xC0152B3D
	.4byte 0x3F440000
	.4byte 0xC014759B
	.4byte 0x3F444007
	.4byte 0xC013C033
	.4byte 0x3F447FFE
	.4byte 0xC0130B07
	.4byte 0x3F44C005
	.4byte 0xC0125615
	.4byte 0x3F44FFFC
	.4byte 0xC011A162
	.4byte 0x3F454003
	.4byte 0xC010ECE5
	.4byte 0x3F457FFA
	.4byte 0xC01038A4
	.4byte 0x3F45C001
	.4byte 0xC00F849D
	.4byte 0x3F460008
	.4byte 0xC00ED0D5
	.4byte 0x3F463FFF
	.4byte 0xC00E1D3F
	.4byte 0x3F468006
	.4byte 0xC00D69E8
	.4byte 0x3F46BFFD
	.4byte 0xC00CB6CC
	.4byte 0x3F470004
	.4byte 0xC00C03E6
	.4byte 0x3F473FFB
	.4byte 0xC00B513B
	.4byte 0x3F478002
	.4byte 0xC00A9EC7
	.4byte 0x3F47BFF9
	.4byte 0xC009EC92
	.4byte 0x3F480000
	.4byte 0xC0093A8E
	.4byte 0x3F484007
	.4byte 0xC00888CA
	.4byte 0x3F487FFE
	.4byte 0xC007D73D
	.4byte 0x3F48C005
	.4byte 0xC00725E5
	.4byte 0x3F48FFFC
	.4byte 0xC00674C9
	.4byte 0x3F494003
	.4byte 0xC005C3E7
	.4byte 0x3F497FFA
	.4byte 0xC0051338
	.4byte 0x3F49C001
	.4byte 0xC00462C3
	.4byte 0x3F4A0008
	.4byte 0xC003B289
	.4byte 0x3F4A3FFF
	.4byte 0xC0030286
	.4byte 0x3F4A8006
	.4byte 0xC00252B9
	.4byte 0x3F4ABFFD
	.4byte 0xC001A323
	.4byte 0x3F4B0004
	.4byte 0xC000F3C7
	.4byte 0x3F4B3FFB
	.4byte 0xC000449E
	.4byte 0x3F4B8002
	.4byte 0xBFFF2B5E
	.4byte 0x3F4BBFF9
	.4byte 0xBFFDCDEE
	.4byte 0x3F4C0000
	.4byte 0xBFFC70EB
	.4byte 0x3F4C4007
	.4byte 0xBFFB1455
	.4byte 0x3F4C7FFE
	.4byte 0xBFF9B82C
	.4byte 0x3F4CC005
	.4byte 0xBFF85C70
	.4byte 0x3F4CFFFC
	.4byte 0xBFF70121
	.4byte 0x3F4D4003
	.4byte 0xBFF5A640
	.4byte 0x3F4D7FFA
	.4byte 0xBFF44BCB
	.4byte 0x3F4DC001
	.4byte 0xBFF2F1BB
	.4byte 0x3F4E0008
	.4byte 0xBFF19820
	.4byte 0x3F4E3FFF
	.4byte 0xBFF03EEA
	.4byte 0x3F4E8006
	.4byte 0xBFEEE621
	.4byte 0x3F4EBFFD
	.4byte 0xBFED8DC5
	.4byte 0x3F4F0004
	.4byte 0xBFEC35CE
	.4byte 0x3F4F3FFB
	.4byte 0xBFEADE4C
	.4byte 0x3F4F8002
	.4byte 0xBFE98727
	.4byte 0x3F4FBFF9
	.4byte 0xBFE83077
	.4byte 0x3F500000
	.4byte 0xBFE6DA2B
	.4byte 0x3F504007
	.4byte 0xBFE58445
	.4byte 0x3F507FFE
	.4byte 0xBFE42ECB
	.4byte 0x3F50C005
	.4byte 0xBFE2D9BE
	.4byte 0x3F50FFFC
	.4byte 0xBFE18516
	.4byte 0x3F514003
	.4byte 0xBFE030D3
	.4byte 0x3F517FFA
	.4byte 0xBFDEDCFD
	.4byte 0x3F51C001
	.4byte 0xBFDD898B
	.4byte 0x3F520008
	.4byte 0xBFDC367E
	.4byte 0x3F523FFF
	.4byte 0xBFDAE3DE
	.4byte 0x3F528006
	.4byte 0xBFD991A3
	.4byte 0x3F52BFFD
	.4byte 0xBFD83FD5
	.4byte 0x3F530004
	.4byte 0xBFD6EE63
	.4byte 0x3F533FFB
	.4byte 0xBFD59D5E
	.4byte 0x3F538002
	.4byte 0xBFD44CBE
	.4byte 0x3F53BFF9
	.4byte 0xBFD2FC83
	.4byte 0x3F540000
	.4byte 0xBFD1ACAC
	.4byte 0x3F544007
	.4byte 0xBFD05D3A
	.4byte 0x3F547FFE
	.4byte 0xBFCF0E34
	.4byte 0x3F54C005
	.4byte 0xBFCDBF8C
	.4byte 0x3F54FFFC
	.4byte 0xBFCC7147
	.4byte 0x3F554003
	.4byte 0xBFCB2370
	.4byte 0x3F557FFA
	.4byte 0xBFC9D5F5
	.4byte 0x3F55C001
	.4byte 0xBFC888DF
	.4byte 0x3F560008
	.4byte 0xBFC73C2E
	.4byte 0x3F563FFF
	.4byte 0xBFC5EFE1
	.4byte 0x3F568006
	.4byte 0xBFC4A3F0
	.4byte 0x3F56BFFD
	.4byte 0xBFC3586D
	.4byte 0x3F570004
	.4byte 0xBFC20D45
	.4byte 0x3F573FFB
	.4byte 0xBFC0C283
	.4byte 0x3F578002
	.4byte 0xBFBF7825
	.4byte 0x3F57BFF9
	.4byte 0xBFBE2E23
	.4byte 0x3F580000
	.4byte 0xBFBCE486
	.4byte 0x3F584007
	.4byte 0xBFBB9B4E
	.4byte 0x3F587FFE
	.4byte 0xBFBA5272
	.4byte 0x3F58C005
	.4byte 0xBFB909FA
	.4byte 0x3F58FFFC
	.4byte 0xBFB7C1E8
	.4byte 0x3F594003
	.4byte 0xBFB67A31
	.4byte 0x3F597FFA
	.4byte 0xBFB532D7
	.4byte 0x3F59C001
	.4byte 0xBFB3EBE1
	.4byte 0x3F5A0008
	.4byte 0xBFB2A548
	.4byte 0x3F5A3FFF
	.4byte 0xBFB15F14
	.4byte 0x3F5A8006
	.4byte 0xBFB0193B
	.4byte 0x3F5ABFFD
	.4byte 0xBFAED3C8
	.4byte 0x3F5B0004
	.4byte 0xBFAD8EB0
	.4byte 0x3F5B3FFB
	.4byte 0xBFAC49F5
	.4byte 0x3F5B8002
	.4byte 0xBFAB059F
	.4byte 0x3F5BBFF9
	.4byte 0xBFA9C1A4
	.4byte 0x3F5C0000
	.4byte 0xBFA87E07
	.4byte 0x3F5C4007
	.4byte 0xBFA73AC5
	.4byte 0x3F5C7FFE
	.4byte 0xBFA5F7E0
	.4byte 0x3F5CC005
	.4byte 0xBFA4B55F
	.4byte 0x3F5CFFFC
	.4byte 0xBFA3733B
	.4byte 0x3F5D4003
	.4byte 0xBFA23172
	.4byte 0x3F5D7FFA
	.4byte 0xBFA0F007
	.4byte 0x3F5DC001
	.4byte 0xBF9FAEF7
	.4byte 0x3F5E0008
	.4byte 0xBF9E6E44
	.4byte 0x3F5E3FFF
	.4byte 0xBF9D2DED
	.4byte 0x3F5E8006
	.4byte 0xBF9BEDF2
	.4byte 0x3F5EBFFD
	.4byte 0xBF9AAE53
	.4byte 0x3F5F0004
	.4byte 0xBF996F11
	.4byte 0x3F5F3FFB
	.4byte 0xBF98302B
	.4byte 0x3F5F8002
	.4byte 0xBF96F1A2
	.4byte 0x3F5FBFF9
	.4byte 0xBF95B36C
	.4byte 0x3F600000
	.4byte 0xBF94759B
	.4byte 0x3F604007
	.4byte 0xBF93381D
	.4byte 0x3F607FFE
	.4byte 0xBF91FAFD
	.4byte 0x3F60C005
	.4byte 0xBF90BE38
	.4byte 0x3F60FFFC
	.4byte 0xBF8F81CF
	.4byte 0x3F614003
	.4byte 0xBF8E45BB
	.4byte 0x3F617FFA
	.4byte 0xBF8D0A03
	.4byte 0x3F61C001
	.4byte 0xBF8BCEA7
	.4byte 0x3F620008
	.4byte 0xBF8A93A7
	.4byte 0x3F623FFF
	.4byte 0xBF8958FB
	.4byte 0x3F628006
	.4byte 0xBF881EA3
	.4byte 0x3F62BFFD
	.4byte 0xBF86E4A8
	.4byte 0x3F630004
	.4byte 0xBF85AB08
	.4byte 0x3F633FFB
	.4byte 0xBF8471BD
	.4byte 0x3F638002
	.4byte 0xBF8338CE
	.4byte 0x3F63BFF9
	.4byte 0xBF82003B
	.4byte 0x3F640000
	.4byte 0xBF80C7F3
	.4byte 0x3F644007
	.4byte 0xBF7F2021
	.4byte 0x3F647FFE
	.4byte 0xBF7CB0F2
	.4byte 0x3F64C005
	.4byte 0xBF7A427C
	.4byte 0x3F64FFFC
	.4byte 0xBF77D4BF
	.4byte 0x3F654003
	.4byte 0xBF756799
	.4byte 0x3F657FFA
	.4byte 0xBF72FB3B
	.4byte 0x3F65C001
	.4byte 0xBF708F75
	.4byte 0x3F660008
	.4byte 0xBF6E2468
	.4byte 0x3F663FFF
	.4byte 0xBF6BBA02
	.4byte 0x3F668006
	.4byte 0xBF695044
	.4byte 0x3F66BFFD
	.4byte 0xBF66E72E
	.4byte 0x3F670004
	.4byte 0xBF647ED0
	.4byte 0x3F673FFB
	.4byte 0xBF621709
	.4byte 0x3F678002
	.4byte 0xBF5FAFFB
	.4byte 0x3F67BFF9
	.4byte 0xBF5D4995
	.4byte 0x3F680000
	.4byte 0xBF5AE3E7
	.4byte 0x3F684007
	.4byte 0xBF587ED0
	.4byte 0x3F687FFE
	.4byte 0xBF561A61
	.4byte 0x3F68C005
	.4byte 0xBF53B6AA
	.4byte 0x3F68FFFC
	.4byte 0xBF51538B
	.4byte 0x3F694003
	.4byte 0xBF4EF113
	.4byte 0x3F697FFA
	.4byte 0xBF4C8F54
	.4byte 0x3F69C001
	.4byte 0xBF4A2E2C
	.4byte 0x3F6A0008
	.4byte 0xBF47CDAB
	.4byte 0x3F6A3FFF
	.4byte 0xBF456DD2
	.4byte 0x3F6A8006
	.4byte 0xBF430EA2
	.4byte 0x3F6ABFFD
	.4byte 0xBF40B018
	.4byte 0x3F6B0004
	.4byte 0xBF3E5237
	.4byte 0x3F6B3FFB
	.4byte 0xBF3BF4FD
	.4byte 0x3F6B8002
	.4byte 0xBF39985B
	.4byte 0x3F6BBFF9
	.4byte 0xBF373C60
	.4byte 0x3F6C0000
	.4byte 0xBF34E10D
	.4byte 0x3F6C4007
	.4byte 0xBF328662
	.4byte 0x3F6C7FFE
	.4byte 0xBF302C4D
	.4byte 0x3F6CC005
	.4byte 0xBF2DD2F2
	.4byte 0x3F6CFFFC
	.4byte 0xBF2B7A1C
	.4byte 0x3F6D4003
	.4byte 0xBF2921FF
	.4byte 0x3F6D7FFA
	.4byte 0xBF26CA79
	.4byte 0x3F6DC001
	.4byte 0xBF24739B
	.4byte 0x3F6E0008
	.4byte 0xBF221D54
	.4byte 0x3F6E3FFF
	.4byte 0xBF1FC7B4
	.4byte 0x3F6E8006
	.4byte 0xBF1D72BD
	.4byte 0x3F6EBFFD
	.4byte 0xBF1B1E5C
	.4byte 0x3F6F0004
	.4byte 0xBF18CA92
	.4byte 0x3F6F3FFB
	.4byte 0xBF167770
	.4byte 0x3F6F8002
	.4byte 0xBF1424F6
	.4byte 0x3F6FBFF9
	.4byte 0xBF11D313
	.4byte 0x3F700000
	.4byte 0xBF0F81C7
	.4byte 0x3F704007
	.4byte 0xBF0D3123
	.4byte 0x3F707FFE
	.4byte 0xBF0AE126
	.4byte 0x3F70C005
	.4byte 0xBF0891B0
	.4byte 0x3F70FFFC
	.4byte 0xBF0642E1
	.4byte 0x3F714003
	.4byte 0xBF03F4BA
	.4byte 0x3F717FFA
	.4byte 0xBF01A72A
	.4byte 0x3F71C001
	.4byte 0xBEFEB463
	.4byte 0x3F720008
	.4byte 0xBEFA1BA0
	.4byte 0x3F723FFF
	.4byte 0xBEF5842B
	.4byte 0x3F728006
	.4byte 0xBEF0EDC4
	.4byte 0x3F72BFFD
	.4byte 0xBEEC58CD
	.4byte 0x3F730004
	.4byte 0xBEE7C4E3
	.4byte 0x3F733FFB
	.4byte 0xBEE33227
	.4byte 0x3F738002
	.4byte 0xBEDEA0BA
	.4byte 0x3F73BFF9
	.4byte 0xBEDA107B
	.4byte 0x3F740000
	.4byte 0xBED5816B
	.4byte 0x3F744007
	.4byte 0xBED0F388
	.4byte 0x3F747FFE
	.4byte 0xBECC66D3
	.4byte 0x3F74C005
	.4byte 0xBEC7DB4D
	.4byte 0x3F74FFFC
	.4byte 0xBEC35116
	.4byte 0x3F754003
	.4byte 0xBEBEC7EB
	.4byte 0x3F757FFA
	.4byte 0xBEBA3FEE
	.4byte 0x3F75C001
	.4byte 0xBEB5B941
	.4byte 0x3F760008
	.4byte 0xBEB133A0
	.4byte 0x3F763FFF
	.4byte 0xBEACAF4F
	.4byte 0x3F768006
	.4byte 0xBEA82C0A
	.4byte 0x3F76BFFD
	.4byte 0xBEA3A9F4
	.4byte 0x3F770004
	.4byte 0xBE9F290B
	.4byte 0x3F773FFB
	.4byte 0xBE9AA950
	.4byte 0x3F778002
	.4byte 0xBE962AC3
	.4byte 0x3F77BFF9
	.4byte 0xBE91AD64
	.4byte 0x3F780000
	.4byte 0xBE8D3133
	.4byte 0x3F784007
	.4byte 0xBE88B60F
	.4byte 0x3F787FFE
	.4byte 0xBE843C19
	.4byte 0x3F78C005
	.4byte 0xBE7F86E4
	.4byte 0x3F78FFFC
	.4byte 0xBE76976C
	.4byte 0x3F794003
	.4byte 0xBE6DAA93
	.4byte 0x3F797FFA
	.4byte 0xBE64BFD3
	.4byte 0x3F79C001
	.4byte 0xBE5BD76F
	.4byte 0x3F7A0008
	.4byte 0xBE52F167
	.4byte 0x3F7A3FFF
	.4byte 0xBE4A0DBB
	.4byte 0x3F7A8006
	.4byte 0xBE412C28
	.4byte 0x3F7ABFFD
	.4byte 0xBE384CAD
	.4byte 0x3F7B0004
	.4byte 0xBE2F6FD2
	.4byte 0x3F7B3FFB
	.4byte 0xBE269510
	.4byte 0x3F7B8002
	.4byte 0xBE1DBCA9
	.4byte 0x3F7BBFF9
	.4byte 0xBE14E65C
	.4byte 0x3F7C0000
	.4byte 0xBE0C1227
	.4byte 0x3F7C4007
	.4byte 0xBE034092
	.4byte 0x3F7C7FFE
	.4byte 0xBDF4E22A
	.4byte 0x3F7CC005
	.4byte 0xBDE34763
	.4byte 0x3F7CFFFC
	.4byte 0xBDD1B153
	.4byte 0x3F7D4003
	.4byte 0xBDC01F75
	.4byte 0x3F7D7FFA
	.4byte 0xBDAE924F
	.4byte 0x3F7DC001
	.4byte 0xBD9D095B
	.4byte 0x3F7E0008
	.4byte 0xBD8B851F
	.4byte 0x3F7E3FFF
	.4byte 0xBD740A28
	.4byte 0x3F7E8006
	.4byte 0xBD511383
	.4byte 0x3F7EBFFD
	.4byte 0xBD2E2435
	.4byte 0x3F7F0004
	.4byte 0xBD0B3F64
	.4byte 0x3F7F3FFB
	.4byte 0xBCD0C3D2
	.4byte 0x3F7F8002
	.4byte 0xBC8B1BBD
	.4byte 0x3F7FBFF9
	.4byte 0xBC0B08DD
	.4byte 0x3F800000
	.4byte 0

.global lbl_800850C8
lbl_800850C8:

	# ROM: 0x820C8
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFB
	.4byte 0xF7F3EFEB
	.4byte 0xE7E3DFDB
	.4byte 0xD7D1CBC5
	.4byte 0xC1BBB7B3
	.4byte 0xB1ADA9A5
	.4byte 0xA39F9D99
	.4byte 0x97959391
	.4byte 0x8F8D8B89
	.4byte 0x87858381
	.4byte 0x7F7D7B7A
	.4byte 0x79777574
	.4byte 0x73716F6E
	.4byte 0x6D6C6B69
	.4byte 0x67666564
	.4byte 0x63626160
	.4byte 0x5F5E5D5C
	.4byte 0x5B5A5958
	.4byte 0x57565554
	.4byte 0x53525150
	.4byte 0x4F4E4D4D
	.4byte 0x4C4C4B4A
	.4byte 0x49484747
	.4byte 0x46464544
	.4byte 0x43424141
	.4byte 0x40403F3E
	.4byte 0x3D3D3C3C
	.4byte 0x3B3B3A3A
	.4byte 0x39383737
	.4byte 0x36363535
	.4byte 0x34343333
	.4byte 0x32323131
	.4byte 0x30302F2F
	.4byte 0x2E2E2D2D
	.4byte 0x2C2C2B2B
	.4byte 0x2A2A2929
	.4byte 0x28282727
	.4byte 0x26262525
	.4byte 0x24242323
	.4byte 0x23222222
	.4byte 0x21212020
	.4byte 0x1F1F1E1E
	.4byte 0x1D1D1D1C
	.4byte 0x1C1C1B1B
	.4byte 0x1B1A1A1A
	.4byte 0x19191818
	.4byte 0x17171716
	.4byte 0x16161515
	.4byte 0x15141414
	.4byte 0x13131312
	.4byte 0x12121111
	.4byte 0x11101010
	.4byte 0x0F0F0F0E
	.4byte 0x0E0E0D0D
	.4byte 0x0D0D0C0C
	.4byte 0x0C0C0B0B
	.4byte 0x0B0A0A0A
	.4byte 0x09090908
	.4byte 0x08080707
	.4byte 0x07070606
	.4byte 0x06060505
	.4byte 0x05050404
	.4byte 0x04040303
	.4byte 0x40545C64
	.4byte 0x6A6E7275
	.4byte 0x77797A7B
	.4byte 0x7C7D7E7F
	.4byte 0x402B231B
	.4byte 0x15110D0A
	.4byte 0x08060504
	.4byte 0x03020100
	.4byte 0x1F1E1D1C
	.4byte 0x1B1A1919
	.4byte 0x18181717
	.4byte 0x16161616
	.4byte 0x15151515
	.4byte 0x14141414
	.4byte 0x13131313
	.4byte 0x13131313
	.4byte 0x12121212
	.4byte 0x12121212
	.4byte 0x11111111
	.4byte 0x11111111
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x02020202
	.4byte 0x02020202
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x04040404
	.4byte 0x05050505
	.4byte 0x06060606
	.4byte 0x07070808
	.4byte 0x09090A0B
	.4byte 0x0C0D0E0F
	.4byte 0x00010102
	.4byte 0x02030303
	.4byte 0x04040405
	.4byte 0x05050606
	.4byte 0x06070707
	.4byte 0x08080808
	.4byte 0x09090909
	.4byte 0x0A0A0A0A
	.4byte 0x0A0B0B0B
	.4byte 0x0B0B0C0C
	.4byte 0x0C0C0C0D
	.4byte 0x0D0D0D0D
	.4byte 0x0D0E0E0E
	.4byte 0x0E0E0E0E
	.4byte 0x0F0F0F0F
	.4byte 0x0F0F0F0F
	.4byte 0x3F800000
	.4byte 0x3F354003
	.4byte 0x3F000000
	.4byte 0x3EB54003
	.4byte 0x3E800000
	.4byte 0x3E354003
	.4byte 0x3E000000
	.4byte 0x3DB54003
	.4byte 0x3D800000
	.4byte 0x3D354003
	.4byte 0x3D000000
	.4byte 0x3CB54003
	.4byte 0x3C800000
	.4byte 0x3C354003
	.4byte 0x3C000000
	.4byte 0
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x4CBEBC20
	.4byte 0x4CBEBC20
	.4byte 0x45FD2000
	.4byte 0x45D7A000
	.4byte 0x45BB8000
	.4byte 0x45960000
	.4byte 0x457A0000
	.4byte 0x45548000
	.4byte 0x453B8000
	.4byte 0x45160000
	.4byte 0x44FA0000
	.4byte 0x44D48000
	.4byte 0x44BB8000
	.4byte 0x44960000
	.4byte 0x447A0000
	.4byte 0x44570000
	.4byte 0x443E0000
	.4byte 0x44160000
	.4byte 0x43FA0000
	.4byte 0x43D70000
	.4byte 0x43BE0000
	.4byte 0x43960000
	.4byte 0x437A0000
	.4byte 0x435C0000
	.4byte 0x433E0000
	.4byte 0x43160000
	.4byte 0x43020000
	.4byte 0x42DC0000
	.4byte 0x42BE0000
	.4byte 0x42980000
	.4byte 0x427C0000
	.4byte 0x425C0000
	.4byte 0x423C0000
	.4byte 0x42180000
	.4byte 0x41F80000
	.4byte 0x41D80000
	.4byte 0x41C00000
	.4byte 0x41980000
	.4byte 0x41700000
	.4byte 0x41500000
	.4byte 0x41400000
	.4byte 0x41166666
	.4byte 0x40FCCCCD
	.4byte 0x40D9999A
	.4byte 0x40C00000
	.4byte 0x40966666
	.4byte 0x40733333
	.4byte 0x4059999A
	.4byte 0x40400000
	.4byte 0x4019999A
	.4byte 0x40000000
	.4byte 0x3FE66666
	.4byte 0x3FCCCCCD
	.4byte 0x3FA66666
	.4byte 0x3F8CCCCD
	.4byte 0x3F6E147B
	.4byte 0x3F59999A
	.4byte 0x3F266666
	.4byte 0x3F07AE14
	.4byte 0x3EE147AE
	.4byte 0x3ECCCCCD
	.4byte 0x3EB33333
	.4byte 0
	.4byte 0
	.4byte 0x4CBEBC20
	.4byte 0x4CBEBC20
	.4byte 0x47E6DC00
	.4byte 0x47C5DA00
	.4byte 0x47AD0C00
	.4byte 0x478A7A00
	.4byte 0x4766DC00
	.4byte 0x47460C00
	.4byte 0x472D0C00
	.4byte 0x470AAC00
	.4byte 0x46E74000
	.4byte 0x46C5A800
	.4byte 0x46AD7000
	.4byte 0x468A4800
	.4byte 0x46674000
	.4byte 0x46467000
	.4byte 0x462D7000
	.4byte 0x460B1000
	.4byte 0x45E74000
	.4byte 0x45C4E000
	.4byte 0x45ABE000
	.4byte 0x45898000
	.4byte 0x45674000
	.4byte 0x452F0000
	.4byte 0x45098000
	.4byte 0x44E10000
	.4byte 0x44C80000
	.4byte 0x44AF0000
	.4byte 0x44898000
	.4byte 0x44660000
	.4byte 0x44458000
	.4byte 0x442C8000
	.4byte 0x44098000
	.4byte 0x43E60000
	.4byte 0x43C30000
	.4byte 0x43AA0000
	.4byte 0x43870000
	.4byte 0x43660000
	.4byte 0x43480000
	.4byte 0x432A0000
	.4byte 0x430C0000
	.4byte 0x42DC0000
	.4byte 0x42C40000
	.4byte 0x42AA0000
	.4byte 0x42880000
	.4byte 0x42640000
	.4byte 0x42440000
	.4byte 0x422C0000
	.4byte 0x42080000
	.4byte 0x41E00000
	.4byte 0x41C80000
	.4byte 0x41B00000
	.4byte 0x41900000
	.4byte 0x41600000
	.4byte 0x41400000
	.4byte 0x41300000
	.4byte 0x41080000
	.4byte 0x40E33333
	.4byte 0x40C33333
	.4byte 0x40ACCCCD
	.4byte 0x4089999A
	.asciz "@fff@Fff"
	.balign 4
	.4byte 0
	.4byte 0x3C4AA327
	.4byte 0x3CCA9EF5
	.4byte 0x3D17F306
	.4byte 0x3D4A9047
	.4byte 0x3D7D2524
	.4byte 0x3D97D849
	.4byte 0x3DB117B5
	.4byte 0x3DCA5050
	.4byte 0x3DE38195
	.4byte 0x3DFCA969
	.4byte 0x3E0AE3A4
	.4byte 0x3E176D11
	.4byte 0x3E23F0BB
	.4byte 0x3E306E1A
	.4byte 0x3E3CE465
	.4byte 0x3E495315
	.4byte 0x3E55BA2C
	.4byte 0x3E6218DF
	.4byte 0x3E6E6EA8
	.4byte 0x3E7ABB02
	.4byte 0x3E837ED4
	.4byte 0x3E899B0B
	.4byte 0x3E8FB1E2
	.4byte 0x3E95C2F4
	.4byte 0x3E9BCE42
	.4byte 0x3EA1D367
	.4byte 0x3EA7D242
	.4byte 0x3EADCA8E
	.4byte 0x3EB3BC0A
	.4byte 0x3EB9A672
	.4byte 0x3EBF89A4
	.4byte 0x3EC5653D
	.4byte 0x3ECB393B
	.4byte 0x3ED1053A
	.4byte 0x3ED6C8F7
	.4byte 0x3EDC8451
	.4byte 0x3EE23704
	.4byte 0x3EE7E0F0
	.4byte 0x3EED81CF
	.4byte 0x3EF3193F
	.4byte 0x3EF8A73F
	.4byte 0x3EFE2B6B
	.4byte 0x3F01D2E1
	.4byte 0x3F048AF0
	.4byte 0x3F073DD1
	.4byte 0x3F09EB64
	.4byte 0x3F0C9386
	.4byte 0x3F0F3637
	.4byte 0x3F11D346
	.4byte 0x3F146AA1
	.4byte 0x3F16FC26
	.4byte 0x3F1987C6
	.4byte 0x3F1C0D5F
	.4byte 0x3F1E8CDF
	.4byte 0x3F210625
	.4byte 0x3F237920
	.4byte 0x3F25E5B0
	.4byte 0x3F284BC2
	.4byte 0x3F2AAB47
	.4byte 0x3F2D040C
	.4byte 0x3F2F5621
	.4byte 0x3F31A145
	.4byte 0x3F33E575
	.4byte 0x3F3622A3
	.4byte 0x3F3858AC
	.4byte 0x3F3A877F
	.4byte 0x3F3CAEFB
	.4byte 0x3F3ECF20
	.4byte 0x3F40E7BC
	.4byte 0x3F42F8DF
	.4byte 0x3F450247
	.4byte 0x3F470404
	.4byte 0x3F48FDF4
	.4byte 0x3F4AF007
	.4byte 0x3F4CDA2B
	.4byte 0x3F4EBC51
	.4byte 0x3F509646
	.4byte 0x3F52681B
	.4byte 0x3F5431BE
	.4byte 0x3F55F2FE
	.4byte 0x3F57ABEB
	.4byte 0x3F595C64
	.4byte 0x3F5B0457
	.4byte 0x3F5CA3B5
	.4byte 0x3F5E3A6D
	.4byte 0x3F5FC87E
	.4byte 0x3F614DC6
	.4byte 0x3F62CA36
	.4byte 0x3F643DBC
	.4byte 0x3F65A869
	.4byte 0x3F670A0B
	.4byte 0x3F686291
	.4byte 0x3F69B20C
	.4byte 0x3F6AF86A
	.4byte 0x3F6C358B
	.4byte 0x3F6D696E
	.4byte 0x3F6E9403
	.4byte 0x3F6FB539
	.4byte 0x3F70CD10
	.4byte 0x3F71DB77
	.4byte 0x3F72E06E
	.4byte 0x3F73DBE4
	.4byte 0x3F74CDC8
	.4byte 0x3F75B60B
	.4byte 0x3F7694BC
	.4byte 0x3F7769BA
	.4byte 0x3F783516
	.4byte 0x3F78F6AD
	.4byte 0x3F79AE92
	.4byte 0x3F7A5CA3
	.4byte 0x3F7B00DE
	.4byte 0x3F7B9B56
	.4byte 0x3F7C2BE9
	.4byte 0x3F7CB2A7
	.4byte 0x3F7D2F7F
	.4byte 0x3F7DA262
	.4byte 0x3F7E0B5F
	.4byte 0x3F7E6A66
	.4byte 0x3F7EBF77
	.4byte 0x3F7F0A81
	.4byte 0x3F7F4BA5
	.4byte 0x3F7F82B2
	.4byte 0x3F7FAFC9
	.4byte 0x3F7FD2E9
	.4byte 0x3F7FEBF2
	.4byte 0x3F7FFB05
	.4byte 0x3F800000

.global lbl_80085728
lbl_80085728:

	# ROM: 0x82728
	.4byte OnReset_3
	.4byte 0x0000007F
	.4byte 0
	.4byte 0

.global lbl_80085738
lbl_80085738:

	# ROM: 0x82738
	.4byte 0x18FCC080
	.4byte 0x7F403F01
	.4byte 0x002F2F20
	.asciz "Coded by Kawasedo"
	.byte 0x00, 0x02
	.4byte 0x03040506
	.4byte 0x0708ACC4
	.4byte 0xF80810BF
	.4byte 0x18000000

.global lbl_80085768
lbl_80085768:

	# ROM: 0x82768
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000021
	.4byte 0x02FF0021
	.4byte 0x13061203
	.4byte 0x12041305
	.4byte 0x009200FF
	.4byte 0x0088FFFF
	.4byte 0x0089FFFF
	.4byte 0x008AFFFF
	.4byte 0x008BFFFF
	.4byte 0x8F008B00
	.4byte 0x8C0002BF
	.4byte 0x807E16FC
	.4byte 0xDCD116FD
	.4byte 0x000016FB
	.4byte 0x000102BF
	.4byte 0x807824FF
	.4byte 0x0280ABBA
	.4byte 0x02940029
	.4byte 0x8E0002BF
	.4byte 0x807820FF
	.4byte 0x02400FFF
	.4byte 0x1F5E009B
	.4byte 0x00000099
	.4byte 0x00200087
	.4byte 0x00000080
	.4byte 0x0041029F
	.4byte 0x80BC02BF
	.4byte 0x008C02BF
	.4byte 0x807E16FC
	.4byte 0xDCD116FD
	.4byte 0x000316FB
	.4byte 0x00018F00
	.4byte 0x02BF8078
	.4byte 0x0280CDD1
	.4byte 0x0294004C
	.4byte 0x26FF0280
	.4byte 0x00010295
	.4byte 0x005E0280
	.4byte 0x00020295
	.4byte 0x8000029F
	.4byte 0x004C0021
	.4byte 0x8E0002BF
	.4byte 0x807824FF
	.4byte 0x02BF8078
	.4byte 0x24FF02BF
	.4byte 0x807824FF
	.4byte 0x02BF8078
	.4byte 0x00C5FFFF
	.4byte 0x02400FFF
	.4byte 0x1C9E02BF
	.4byte 0x807800C7
	.4byte 0xFFFF02BF
	.4byte 0x807800C6
	.4byte 0xFFFF02BF
	.4byte 0x807800C0
	.4byte 0xFFFF02BF
	.4byte 0x807820FF
	.4byte 0x02400FFF
	.4byte 0x1F5E02BF
	.4byte 0x807821FF
	.4byte 0x02BF8078
	.4byte 0x23FF1205
	.4byte 0x1206029F
	.4byte 0x80B50021
	.4byte 0x81000081
	.4byte 0x00101020
	.4byte 0x1B3E00DF
	.4byte 0x14560340
	.4byte 0xFFD08417
	.4byte 0x00800000
	.4byte 0x00860000
	.4byte 0x0082001F
	.4byte 0x00DE15F6
	.4byte 0x140800DF
	.4byte 0x17660340
	.4byte 0x00FF1F5F
	.4byte 0x02BF88E5
	.4byte 0x1F1C811E
	.4byte 0x191E1478
	.4byte 0x1FFC1F5E
	.4byte 0x02BF8809
	.4byte 0x02BF8723
	.4byte 0x00068106
	.4byte 0x00DE166C
	.4byte 0x14040240
	.4byte 0xFF0000DF
	.4byte 0x12311578
	.4byte 0x034000FF
	.4byte 0x1F5F02BF
	.4byte 0x88E51F1C
	.4byte 0x811E191E
	.4byte 0x14781FFC
	.4byte 0x1F5E02BF
	.4byte 0x880902BF
	.4byte 0x87238100
	.4byte 0x890000D1
	.4byte 0x00059900
	.4byte 0x82000295
	.4byte 0x00E50291
	.4byte 0x00F30082
	.4byte 0x00100086
	.4byte 0x000100D0
	.4byte 0x171B9100
	.4byte 0x7D004D00
	.4byte 0x15011F5F
	.4byte 0x00DF0003
	.4byte 0x150402BF
	.4byte 0x8809029F
	.4byte 0x01020082
	.4byte 0x001100DF
	.4byte 0x00031501
	.4byte 0x1F5F00DE
	.4byte 0x10430240
	.4byte 0xFFF002BF
	.4byte 0x88E5029F
	.4byte 0x01020082
	.4byte 0x00100086
	.4byte 0x000100D0
	.4byte 0x12859100
	.4byte 0x4D001501
	.4byte 0x00DE0003
	.4byte 0x14041F5E
	.4byte 0x02BF8809
	.4byte 0x00830013
	.4byte 0x1B7E8923
	.4byte 0x00830013
	.4byte 0x00DF0007
	.4byte 0x00DE11B8
	.4byte 0x0240FFF0
	.4byte 0x1F5E02BF
	.4byte 0x81F4F100
	.4byte 0x02BF8458
	.4byte 0x8F000082
	.4byte 0x001500DE
	.4byte 0x000600DA
	.4byte 0x165B02BF
	.4byte 0x88E514FD
	.4byte 0x14031B5E
	.4byte 0x1B5C0082
	.4byte 0x001600DE
	.4byte 0x172314F4
	.4byte 0x00DA166B
	.4byte 0x02BF88E5
	.4byte 0xB1000290
	.4byte 0x012E8100
	.4byte 0x14FD8E00
	.4byte 0x00DF1491
	.4byte 0x0340D0F0
	.4byte 0x1CBF00DF
	.4byte 0x146800D1
	.4byte 0x11FC157C
	.4byte 0x1CDF00D1
	.4byte 0x11B89900
	.4byte 0x14181478
	.4byte 0x1F5E1FFE
	.4byte 0x1F653600
	.4byte 0x14021F66
	.4byte 0x37001501
	.4byte 0x4C001518
	.4byte 0x99003500
	.4byte 0x4C0000DF
	.4byte 0x00123F00
	.4byte 0x00FF0012
	.4byte 0x147000DF
	.4byte 0x00113F00
	.4byte 0x00FF0011
	.4byte 0x1FA51501
	.4byte 0x1FE6F100
	.4byte 0x15F8F500
	.4byte 0x1F5F1F7D
	.4byte 0x810000DE
	.4byte 0x00113400
	.4byte 0x890000DF
	.4byte 0x00123500
	.4byte 0x4C0000DF
	.4byte 0x00121578
	.4byte 0x4C008900
	.4byte 0x1FFE1508
	.4byte 0x3B0000DE
	.4byte 0x00113E00
	.4byte 0x00DF0012
	.4byte 0x3B001CBF
	.4byte 0x00DA15F1
	.4byte 0x35000295
	.4byte 0x019200DF
	.4byte 0x10E21508
	.4byte 0x1F5F00DF
	.4byte 0x103B7900
	.4byte 0x39003080
	.4byte 0x00FE0022
	.4byte 0x00DC1229
	.4byte 0x00DD11F8
	.4byte 0x5C00F000
	.4byte 0x1FE53080
	.4byte 0x029F01A5
	.4byte 0x00DF10CA
	.4byte 0x15081F5F
	.4byte 0x00DF1043
	.4byte 0x75003900
	.4byte 0x308000FE
	.4byte 0x002200DC
	.4byte 0x125900DD
	.4byte 0x16FE4C00
	.4byte 0xF0001FE5
	.4byte 0x308000FE
	.4byte 0x002300DA
	.4byte 0x000800D8
	.4byte 0x0009009B
	.4byte 0x00200099
	.4byte 0x00080087
	.4byte 0x000002BF
	.4byte 0x808B02DF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80085AE8
lbl_80085AE8:

	# ROM: 0x82AE8
	.asciz "GBAKey.c"
	.balign 4

.global lbl_80085AF4
lbl_80085AF4:

	# ROM: 0x82AF4
	.asciz "GBA - unexpected dsp call"
