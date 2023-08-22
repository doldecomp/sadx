.include "macros.s"

.section .sdata2, "wa"  # 0x800C4680 - 0x800C5140 ; 0x00000AC0


.balign 8

.global lbl_800C4CC0
lbl_800C4CC0:

	# ROM: 0x83380
	.4byte lbl_800A4248

.global lbl_800C4CC4
lbl_800C4CC4:

	# ROM: 0x83384
	.4byte 0x404040FF

.global lbl_800C4CC8
lbl_800C4CC8:

	# ROM: 0x83388
	.4byte 0x00000000

.global lbl_800C4CCC
lbl_800C4CCC:

	# ROM: 0x8338C
	.4byte 0xFFFFFFFF

.global lbl_800C4CD0
lbl_800C4CD0:

	# ROM: 0x83390
	.float 1.0

.global lbl_800C4CD4
lbl_800C4CD4:

	# ROM: 0x83394
	.float 0.0

.global lbl_800C4CD8
lbl_800C4CD8:

	# ROM: 0x83398
	.float 0.1
	.balign 8

.global lbl_800C4CE0
lbl_800C4CE0:

	# ROM: 0x833A0
	.4byte 0x43300000
	.4byte 0x00000000
	
	# split

.global lbl_800C4CE8
lbl_800C4CE8:

	# ROM: 0x833A8
	.float 256.0
	.balign 8
	
	# split

.global lbl_800C4CF0
lbl_800C4CF0:

	# ROM: 0x833B0
	.float 16.0
	.balign 8

.global lbl_800C4CF8
lbl_800C4CF8:

	# ROM: 0x833B8
	.4byte 0x43300000
	.4byte 0x00000000

.global lbl_800C4D00
lbl_800C4D00:

	# ROM: 0x833C0
	.float -4.0

.global lbl_800C4D04
lbl_800C4D04:

	# ROM: 0x833C4
	.float 4.0

.global lbl_800C4D08
lbl_800C4D08:

	# ROM: 0x833C8
	.float 3.99

.global lbl_800C4D0C
lbl_800C4D0C:

	# ROM: 0x833CC
	.float 32.0

.global lbl_800C4D10
lbl_800C4D10:

	# ROM: 0x833D0
	.float 0.0

.global lbl_800C4D14
lbl_800C4D14:

	# ROM: 0x833D4
	.float 10.0

.global lbl_800C4D18
lbl_800C4D18:

	# ROM: 0x833D8
	.float 1024.0
	.balign 8
	
	# split

.global lbl_800C4D20
lbl_800C4D20:

	# ROM: 0x833E0
	.float 0.0

.global lbl_800C4D24
lbl_800C4D24:

	# ROM: 0x833E4
	.float 1.0

.global lbl_800C4D28
lbl_800C4D28:

	# ROM: 0x833E8
	.float 0.5
	.balign 8

.global lbl_800C4D30
lbl_800C4D30:

	# ROM: 0x833F0
	.double 1.0

.global lbl_800C4D38
lbl_800C4D38:

	# ROM: 0x833F8
	.double 2.0

.global lbl_800C4D40
lbl_800C4D40:

	# ROM: 0x83400
	.double 0.5

.global lbl_800C4D48
lbl_800C4D48:

	# ROM: 0x83408
	.float 8388638.0
	.balign 8

.global lbl_800C4D50
lbl_800C4D50:

	# ROM: 0x83410
	.4byte 0x43300000
	.4byte 0x80000000
	
	# split

.global lbl_800C4D58
lbl_800C4D58:

	# ROM: 0x83418
	.float 0.0

.global lbl_800C4D5C
lbl_800C4D5C:

	# ROM: 0x8341C
	.float 1.0

.global lbl_800C4D60
lbl_800C4D60:

	# ROM: 0x83420
	.float 0.5
	.balign 8

.global lbl_800C4D68
lbl_800C4D68:

	# ROM: 0x83428
	.4byte 0x43300000
	.4byte 0x00000000

.global lbl_800C4D70
lbl_800C4D70:

	# ROM: 0x83430
	.float 342.0

.global lbl_800C4D74
lbl_800C4D74:

	# ROM: 0x83434
	.float 16777215.0
	
	# split

.global lbl_800C4D78
lbl_800C4D78:

	# ROM: 0x83438
	.float 1.0

.global lbl_800C4D7C
lbl_800C4D7C:

	# ROM: 0x8343C
	.float 0.0

.global lbl_800C4D80
lbl_800C4D80:

	# ROM: 0x83440
	.float 0.5

.global lbl_800C4D84
lbl_800C4D84:

	# ROM: 0x83444
	.float 3.0

.global lbl_800C4D88
lbl_800C4D88:

	# ROM: 0x83448
	.float -1.0

.global lbl_800C4D8C
lbl_800C4D8C:

	# ROM: 0x8344C
	.float 0.017453292
	
	# split

.global lbl_800C4D90
lbl_800C4D90:

	# ROM: 0x83450
	.float 1.0

.global lbl_800C4D94
lbl_800C4D94:

	# ROM: 0x83454
	.float 2.0

.global lbl_800C4D98
lbl_800C4D98:

	# ROM: 0x83458
	.float 0.0

.global lbl_800C4D9C
lbl_800C4D9C:

	# ROM: 0x8345C
	.float -1.0

.global lbl_800C4DA0
lbl_800C4DA0:

	# ROM: 0x83460
	.float 0.5

.global lbl_800C4DA4
lbl_800C4DA4:

	# ROM: 0x83464
	.float 0.017453292
	
	# split

.global lbl_800C4DA8
lbl_800C4DA8:

	# ROM: 0x83468
	.float 0.5

.global lbl_800C4DAC
lbl_800C4DAC:

	# ROM: 0x8346C
	.float 3.0

.global lbl_800C4DB0
lbl_800C4DB0:

	# ROM: 0x83470
	.4byte 0x2ABE003D

.global lbl_800C4DB4
lbl_800C4DB4:

	# ROM: 0x83474
	.4byte 0x003D003D

.global lbl_800C4DB8
lbl_800C4DB8:

	# ROM: 0x83478
	.float 1.0
	.balign 8
	
	# split

.global lbl_800C4DC0
lbl_800C4DC0:

	# ROM: 0x83480
	.float 0.0
	.balign 8
	
	# split

.global lbl_800C4DC8
lbl_800C4DC8:

	# ROM: 0x83488
	.float 0.0

.global lbl_800C4DCC
lbl_800C4DCC:

	# ROM: 0x8348C
	.float -1.0

.global lbl_800C4DD0
lbl_800C4DD0:

	# ROM: 0x83490
	.float -60000.0
	.balign 8

.global lbl_800C4DD8
lbl_800C4DD8:

	# ROM: 0x83498
	.double 0.00009587378008291125

.global lbl_800C4DE0
lbl_800C4DE0:

	# ROM: 0x834A0
	.4byte 0x43300000
	.4byte 0x80000000
	
	# split

.global lbl_800C4DE8
lbl_800C4DE8:

	# ROM: 0x834A8
	.float -1.0

.global lbl_800C4DEC
lbl_800C4DEC:

	# ROM: 0x834AC
	.float -65535.0

.global lbl_800C4DF0
lbl_800C4DF0:

	# ROM: 0x834B0
	.float 1.0
	.balign 8
	
	# split

.global lbl_800C4DF8
lbl_800C4DF8:

	# ROM: 0x834B8
	.float 2.0

.global lbl_800C4DFC
lbl_800C4DFC:

	# ROM: 0x834BC
	.float 1.0
	
	# split

.global lbl_800C4E00
lbl_800C4E00:

	# ROM: 0x834C0
	.float 1.0
	.balign 8
	
	# split

.global lbl_800C4E08
lbl_800C4E08:

	# ROM: 0x834C8
	.float 0.0
	.balign 8
	
	# split

.global lbl_800C4E10
lbl_800C4E10:

	# ROM: 0x834D0
	.4byte 0x43300000
	.4byte 0x80000000

.global lbl_800C4E18
lbl_800C4E18:

	# ROM: 0x834D8
	.float 1.0

.global lbl_800C4E1C
lbl_800C4E1C:

	# ROM: 0x834DC
	.float 1.0

.global lbl_800C4E20
lbl_800C4E20:

	# ROM: 0x834E0
	.float 0.5

.global lbl_800C4E24
lbl_800C4E24:

	# ROM: 0x834E4
	.float 2.0

.global lbl_800C4E28
lbl_800C4E28:

	# ROM: 0x834E8
	.float 1.0

.global lbl_800C4E2C
lbl_800C4E2C:

	# ROM: 0x834EC
	.float 1.5

.global lbl_800C4E30
lbl_800C4E30:

	# ROM: 0x834F0
	.float 2.5

.global lbl_800C4E34
lbl_800C4E34:

	# ROM: 0x834F4
	.float -1.5

.global lbl_800C4E38
lbl_800C4E38:

	# ROM: 0x834F8
	.4byte 0x43300000
	.4byte 0x00000000
	
	# split

.global lbl_800C4E40
lbl_800C4E40:

	# ROM: 0x83500
	.float 1.0
	.balign 8

.global lbl_800C4E48
lbl_800C4E48:

	# ROM: 0x83508
	.4byte 0x43300000
	.4byte 0x00000000

.global lbl_800C4E50
lbl_800C4E50:

	# ROM: 0x83510
	.4byte 0x43300000
	.4byte 0x80000000
	
	# split

.global lbl_800C4E58
lbl_800C4E58:

	# ROM: 0x83518
	.float 16.0
	.balign 8

.global lbl_800C4E60
lbl_800C4E60:

	# ROM: 0x83520
	.4byte 0x43300000
	.4byte 0x00000000

.global lbl_800C4E68
lbl_800C4E68:

	# ROM: 0x83528
	.4byte 0x43300000
	.4byte 0x80000000

.global lbl_800C4E70
lbl_800C4E70:

	# ROM: 0x83530
	.float 0.0

.global lbl_800C4E74
lbl_800C4E74:

	# ROM: 0x83534
	.float -1.0
	
	# split

.global lbl_800C4E78
lbl_800C4E78:

	# ROM: 0x83538
	.double 0.00009587378008291125

.global lbl_800C4E80
lbl_800C4E80:

	# ROM: 0x83540
	.4byte 0x43300000
	.4byte 0x80000000

.global lbl_800C4E88
lbl_800C4E88:

	# ROM: 0x83548
	.float 0.0
	.balign 8
	
	# split

.global lbl_800C4E90
lbl_800C4E90:

	# ROM: 0x83550
	.float 1.0

.global lbl_800C4E94
lbl_800C4E94:

	# ROM: 0x83554
	.float 0.0
	
	# split

.global lbl_800C4E98
lbl_800C4E98:

	# ROM: 0x83558
	.double 10430.38043493439

.global lbl_800C4EA0
lbl_800C4EA0:

	# ROM: 0x83560
	.float 0.0

.global lbl_800C4EA4
lbl_800C4EA4:

	# ROM: 0x83564
	.float 1.0

.global lbl_800C4EA8
lbl_800C4EA8:

	# ROM: 0x83568
	.float -1.0
	.balign 8
	
	# split

.global lbl_800C4EB0
lbl_800C4EB0:

	# ROM: 0x83570
	.double 0.00009587378008291125

.global lbl_800C4EB8
lbl_800C4EB8:

	# ROM: 0x83578
	.4byte 0x43300000
	.4byte 0x80000000
	
	# split

.global lbl_800C4EC0
lbl_800C4EC0:

	# ROM: 0x83580
	.double 0.00009587378008291125

.global lbl_800C4EC8
lbl_800C4EC8:

	# ROM: 0x83588
	.4byte 0x43300000
	.4byte 0x80000000
	
	# split

.global lbl_800C4ED0
lbl_800C4ED0:

	# ROM: 0x83590
	.double 0.00009587378008291125

.global lbl_800C4ED8
lbl_800C4ED8:

	# ROM: 0x83598
	.4byte 0x43300000
	.4byte 0x80000000
	
	# split

.global lbl_800C4EE0
lbl_800C4EE0:

	# ROM: 0x835A0
	.4byte 0x43300000
	.4byte 0x00000000

.global lbl_800C4EE8
lbl_800C4EE8:

	# ROM: 0x835A8
	.float 1.0

.global lbl_800C4EEC
lbl_800C4EEC:

	# ROM: 0x835AC
	.float 500.0

.global lbl_800C4EF0
lbl_800C4EF0:

	# ROM: 0x835B0
	.float 60000.0

.global lbl_800C4EF4
lbl_800C4EF4:

	# ROM: 0x835B4
	.float 3.141592

.global lbl_800C4EF8
lbl_800C4EF8:

	# ROM: 0x835B8
	.float 65536.0
	.balign 8

.global lbl_800C4F00
lbl_800C4F00:

	# ROM: 0x835C0
	.4byte 0x43300000
	.4byte 0x80000000
	
	# split

.global lbl_800C4F08
lbl_800C4F08:

	# ROM: 0x835C8
	.float 0.0

.global lbl_800C4F0C
lbl_800C4F0C:

	# ROM: 0x835CC
	.float 480.0

.global lbl_800C4F10
lbl_800C4F10:

	# ROM: 0x835D0
	.float 640.0

.global lbl_800C4F14
lbl_800C4F14:

	# ROM: 0x835D4
	.float 100.0
	
	# split

.global lbl_800C4F18
lbl_800C4F18:

	# ROM: 0x835D8
	.float 255.0

.global lbl_800C4F1C
lbl_800C4F1C:

	# ROM: 0x835DC
	.float 0.0
	
	# split

.global lbl_800C4F20
lbl_800C4F20:

	# ROM: 0x835E0
	.float 0.0
	.balign 8
	
	# split

.global lbl_800C4F28
lbl_800C4F28:

	# ROM: 0x835E8
	.float 0.025

.global lbl_800C4F2C
lbl_800C4F2C:

	# ROM: 0x835EC
	.float 0.0

.global lbl_800C4F30
lbl_800C4F30:

	# ROM: 0x835F0
	.float 1.0
	.balign 8
	
	# split

.global lbl_800C4F38
lbl_800C4F38:

	# ROM: 0x835F8
	.float 0.0

.global lbl_800C4F3C
lbl_800C4F3C:

	# ROM: 0x835FC
	.float 1.0

.global lbl_800C4F40
lbl_800C4F40:

	# ROM: 0x83600
	.float 0.025
	.balign 8
	
	# split

.global lbl_800C4F48
lbl_800C4F48:

	# ROM: 0x83608
	.float 0.975
	.balign 8
	
	# split

.global lbl_800C4F50
lbl_800C4F50:

	# ROM: 0x83610
	.float 1.0

.global lbl_800C4F54
lbl_800C4F54:

	# ROM: 0x83614
	.float 0.5

.global lbl_800C4F58
lbl_800C4F58:

	# ROM: 0x83618
	.4byte 0x43300000
	.4byte 0x00000000

.global lbl_800C4F60
lbl_800C4F60:

	# ROM: 0x83620
	.4byte 0x43300000
	.4byte 0x80000000

.global lbl_800C4F68
lbl_800C4F68:

	# ROM: 0x83628
	.float 0.0
	.balign 8
	
	# split

.global lbl_800C4F70
lbl_800C4F70:

	# ROM: 0x83630
	.float -1.0
	.balign 8
	
	# split

.global lbl_800C4F78
lbl_800C4F78:

	# ROM: 0x83638
	.float -1.0
	.balign 8
	
	# split

.global lbl_800C4F80
lbl_800C4F80:

	# ROM: 0x83640
	.float 0.00390625
	.balign 8

.global lbl_800C4F88
lbl_800C4F88:

	# ROM: 0x83648
	.4byte 0x43300000
	.4byte 0x80000000

.global lbl_800C4F90
lbl_800C4F90:

	# ROM: 0x83650
	.float -1.0

.global lbl_800C4F94
lbl_800C4F94:

	# ROM: 0x83654
	.float 255.0
	.balign 8
	
	# split

.global lbl_800C4F98
lbl_800C4F98:

	# ROM: 0x83658
	.float 255.0

.global lbl_800C4F9C
lbl_800C4F9C:

	# ROM: 0x8365C
	.float 0.00390625

.global lbl_800C4FA0
lbl_800C4FA0:

	# ROM: 0x83660
	.4byte 0x43300000
	.4byte 0x80000000
	
	# split

.global lbl_800C4FA8
lbl_800C4FA8:

	# ROM: 0x83668
	.double 10430.38043493439

.global lbl_800C4FB0
lbl_800C4FB0:

	# ROM: 0x83670
	.float 0.5

.global lbl_800C4FB4
lbl_800C4FB4:

	# ROM: 0x83674
	.float 0.75

.global lbl_800C4FB8
lbl_800C4FB8:

	# ROM: 0x83678
	.double 0.0054931640625

.global lbl_800C4FC0
lbl_800C4FC0:

	# ROM: 0x83680
	.float 1.0
	.balign 8

.global lbl_800C4FC8
lbl_800C4FC8:

	# ROM: 0x83688
	.4byte 0x43300000
	.4byte 0x80000000
	
	# split

.global lbl_800C4FD0
lbl_800C4FD0:

	# ROM: 0x83690
	.float 0.0

.global lbl_800C4FD4
lbl_800C4FD4:

	# ROM: 0x83694
	.float 255.0

.global lbl_800C4FD8
lbl_800C4FD8:

	# ROM: 0x83698
	.float 1.0
	.balign 8

.global lbl_800C4FE0
lbl_800C4FE0:

	# ROM: 0x836A0
	.4byte 0x43300000
	.4byte 0x00000000

.global lbl_800C4FE8
lbl_800C4FE8:

	# ROM: 0x836A8
	.float 0.0039215689

.global lbl_800C4FEC
lbl_800C4FEC:

	# ROM: 0x836AC
	.float -0.5

.global lbl_800C4FF0
lbl_800C4FF0:

	# ROM: 0x836B0
	.float 0.5

.global lbl_800C4FF4
lbl_800C4FF4:

	# ROM: 0x836B4
	.float 1.0E+9

.global lbl_800C4FF8
lbl_800C4FF8:

	# ROM: 0x836B8
	.float -1.0E+9
	.balign 8
	
	# split

.global lbl_800C5000
lbl_800C5000:

	# ROM: 0x836C0
	.float -0.5

.global lbl_800C5004
lbl_800C5004:

	# ROM: 0x836C4
	.float 0.0

.global lbl_800C5008
lbl_800C5008:

	# ROM: 0x836C8
	.float 0.5

.global lbl_800C500C
lbl_800C500C:

	# ROM: 0x836CC
	.float 1.0
	
	# split

.global lbl_800C5010
lbl_800C5010:

	# ROM: 0x836D0
	.float 1.0

.global lbl_800C5014
lbl_800C5014:

	# ROM: 0x836D4
	.float 0.0099999998

.global lbl_800C5018
lbl_800C5018:

	# ROM: 0x836D8
	.float 0.8

.global lbl_800C501C
lbl_800C501C:

	# ROM: 0x836DC
	.float 0.5

.global lbl_800C5020
lbl_800C5020:

	# ROM: 0x836E0
	.float 0.3
	.balign 8
	
	# split

.global lbl_800C5028
lbl_800C5028:

	# ROM: 0x836E8
	.float 0.2
	.balign 8
	
	# split

.global lbl_800C5030
lbl_800C5030:

	# ROM: 0x836F0
	.float 96.0

.global lbl_800C5034
lbl_800C5034:

	# ROM: 0x836F4
	.float 1.0

.global lbl_800C5038
lbl_800C5038:

	# ROM: 0x836F8
	.float 0.0

.global lbl_800C503C
lbl_800C503C:

	# ROM: 0x836FC
	.float 5.0

.global lbl_800C5040
lbl_800C5040:

	# ROM: 0x83700
	.double 2.0

.global lbl_800C5048
lbl_800C5048:

	# ROM: 0x83708
	.double 1.0594630943592952

.global lbl_800C5050
lbl_800C5050:

	# ROM: 0x83710
	.double 1.007246412223704

.global lbl_800C5058
lbl_800C5058:

	# ROM: 0x83718
	.double 1.0004513695322616

.global lbl_800C5060
lbl_800C5060:

	# ROM: 0x83720
	.float 65536.0

.global lbl_800C5064
lbl_800C5064:

	# ROM: 0x83724
	.float 255.0

.global lbl_800C5068
lbl_800C5068:

	# ROM: 0x83728
	.float -96.0

.global lbl_800C506C
lbl_800C506C:

	# ROM: 0x8372C
	.float -0.375

.global lbl_800C5070
lbl_800C5070:

	# ROM: 0x83730
	.float -0.75

.global lbl_800C5074
lbl_800C5074:

	# ROM: 0x83734
	.float -1.5

.global lbl_800C5078
lbl_800C5078:

	# ROM: 0x83738
	.float -3.0

.global lbl_800C507C
lbl_800C507C:

	# ROM: 0x8373C
	.float -6.0

.global lbl_800C5080
lbl_800C5080:

	# ROM: 0x83740
	.float -12.0

.global lbl_800C5084
lbl_800C5084:

	# ROM: 0x83744
	.float -24.0

.global lbl_800C5088
lbl_800C5088:

	# ROM: 0x83748
	.float -48.0

.global lbl_800C508C
lbl_800C508C:

	# ROM: 0x8374C
	.float 0.707

.global lbl_800C5090
lbl_800C5090:

	# ROM: 0x83750
	.float 32768.0

.global lbl_800C5094
lbl_800C5094:

	# ROM: 0x83754
	.float -2.0

.global lbl_800C5098
lbl_800C5098:

	# ROM: 0x83758
	.float 127.0
	.balign 8

.global lbl_800C50A0
lbl_800C50A0:

	# ROM: 0x83760
	.4byte 0x43300000
	.4byte 0x80000000

.global lbl_800C50A8
lbl_800C50A8:

	# ROM: 0x83768
	.float 0.5

.global lbl_800C50AC
lbl_800C50AC:

	# ROM: 0x8376C
	.float 32000.0

.global lbl_800C50B0
lbl_800C50B0:

	# ROM: 0x83770
	.double 172.265625

.global lbl_800C50B8
lbl_800C50B8:

	# ROM: 0x83778
	.double 1024.0

.global lbl_800C50C0
lbl_800C50C0:

	# ROM: 0x83780
	.float 1.5
	.balign 8

.global lbl_800C50C8
lbl_800C50C8:

	# ROM: 0x83788
	.4byte 0x43300000
	.4byte 0x00000000

.global lbl_800C50D0
lbl_800C50D0:

	# ROM: 0x83790
	.double 90316.8

.global lbl_800C50D8
lbl_800C50D8:

	# ROM: 0x83798
	.double 0.5
	
	# split

.global lbl_800C50E0
lbl_800C50E0:

	# ROM: 0x837A0
	.float 0.0

.global lbl_800C50E4
lbl_800C50E4:

	# ROM: 0x837A4
	.float -1.0

.global lbl_800C50E8
lbl_800C50E8:

	# ROM: 0x837A8
	.float 1.0

.global lbl_800C50EC
lbl_800C50EC:

	# ROM: 0x837AC
	.float 5.0

.global lbl_800C50F0
lbl_800C50F0:

	# ROM: 0x837B0
	.float 2.2906493E+9
	.balign 8
	
	# split

.global lbl_800C50F8
lbl_800C50F8:

	# ROM: 0x837B8
	.float 0.0

.global lbl_800C50FC
lbl_800C50FC:

	# ROM: 0x837BC
	.float 1.0

.global lbl_800C5100
lbl_800C5100:

	# ROM: 0x837C0
	.float 3.0

.global lbl_800C5104
lbl_800C5104:

	# ROM: 0x837C4
	.float 0.1

.global lbl_800C5108
lbl_800C5108:

	# ROM: 0x837C8
	.float 0.5

.global lbl_800C510C
lbl_800C510C:

	# ROM: 0x837CC
	.float 0.3

.global lbl_800C5110
lbl_800C5110:

	# ROM: 0x837D0
	.float 127.0
	.balign 8

.global lbl_800C5118
lbl_800C5118:

	# ROM: 0x837D8
	.4byte 0x43300000
	.4byte 0x80000000
	
	# split

.global lbl_800C5120
lbl_800C5120:

	# ROM: 0x837E0
	.float 120.0

.global lbl_800C5124
lbl_800C5124:

	# ROM: 0x837E4
	.float 60.0

.global lbl_800C5128
lbl_800C5128:

	# ROM: 0x837E8
	.float 60000000.0
	.balign 8

.global lbl_800C5130
lbl_800C5130:

	# ROM: 0x837F0
	.4byte 0x43300000
	.4byte 0x00000000

.global lbl_800C5138
lbl_800C5138:

	# ROM: 0x837F8
	.4byte 0x43300000
	.4byte 0x80000000
