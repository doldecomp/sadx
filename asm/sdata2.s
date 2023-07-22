.include "macros.s"

.section .sdata2, "wa"  # 0x800C4680 - 0x800C5140 ; 0x00000AC0


.balign 8

.global lbl_800C46A0
lbl_800C46A0:

	# ROM: 0x82D60
	.double 0.0

.global lbl_800C46A8
lbl_800C46A8:

	# ROM: 0x82D68
	.double 1.0

.global lbl_800C46B0
lbl_800C46B0:

	# ROM: 0x82D70
	.double -1.0

.global lbl_800C46B8
lbl_800C46B8:

	# ROM: 0x82D78
	.double 5.0

.global lbl_800C46C0
lbl_800C46C0:

	# ROM: 0x82D80
	.4byte 0x43300000
	.4byte 0x00000000

.global lbl_800C46C8
lbl_800C46C8:

	# ROM: 0x82D88
	.4byte 0x43300000
	.4byte 0x80000000
	
	# possible split location 1

.global lbl_800C46D0
lbl_800C46D0:

	# ROM: 0x82D90
	.4byte 0x0000C0E0
	.balign 8
	
	# possible split location 2

.global lbl_800C46D8
lbl_800C46D8:

	# ROM: 0x82D98
	.double 0.0
	
	# split

.global lbl_800C46E0
lbl_800C46E0:

	# ROM: 0x82DA0
	.4byte 0x4E414E28

.global lbl_800C46E4
lbl_800C46E4:

	# ROM: 0x82DA4
	.byte 0x00
	.balign 8

.global lbl_800C46E8
lbl_800C46E8:

	# ROM: 0x82DA8
	.double 0.0

.global lbl_800C46F0
lbl_800C46F0:

	# ROM: 0x82DB0
	.double 0.0
	
	# split

.global lbl_800C46F8
lbl_800C46F8:

	# ROM: 0x82DB8
	.double 0.0

.global lbl_800C4700
lbl_800C4700:

	# ROM: 0x82DC0
	.double 3.141592653589793

.global lbl_800C4708
lbl_800C4708:

	# ROM: 0x82DC8
	.double 1.5707963267948965

.global lbl_800C4710
lbl_800C4710:

	# ROM: 0x82DD0
	.double 6.123233995736766E-17

.global lbl_800C4718
lbl_800C4718:

	# ROM: 0x82DD8
	.double 0.16666666666666666

.global lbl_800C4720
lbl_800C4720:

	# ROM: 0x82DE0
	.double -0.3255658186224009

.global lbl_800C4728
lbl_800C4728:

	# ROM: 0x82DE8
	.double 0.20121253213486292

.global lbl_800C4730
lbl_800C4730:

	# ROM: 0x82DF0
	.double -0.04005553450067941

.global lbl_800C4738
lbl_800C4738:

	# ROM: 0x82DF8
	.double 0.0007915349942898145

.global lbl_800C4740
lbl_800C4740:

	# ROM: 0x82E00
	.double 0.00003479331075960212

.global lbl_800C4748
lbl_800C4748:

	# ROM: 0x82E08
	.double 1.0

.global lbl_800C4750
lbl_800C4750:

	# ROM: 0x82E10
	.double -2.403394911734414

.global lbl_800C4758
lbl_800C4758:

	# ROM: 0x82E18
	.double 2.0209457602335055

.global lbl_800C4760
lbl_800C4760:

	# ROM: 0x82E20
	.double -0.6882839716054533

.global lbl_800C4768
lbl_800C4768:

	# ROM: 0x82E28
	.double 0.07703815055590194

.global lbl_800C4770
lbl_800C4770:

	# ROM: 0x82E30
	.double 0.5

.global lbl_800C4778
lbl_800C4778:

	# ROM: 0x82E38
	.double 3.0

.global lbl_800C4780
lbl_800C4780:

	# ROM: 0x82E40
	.double 2.0
	
	# split

.global lbl_800C4788
lbl_800C4788:

	# ROM: 0x82E48
	.double 1.5707963267948965

.global lbl_800C4790
lbl_800C4790:

	# ROM: 0x82E50
	.double 6.123233995736766E-17

.global lbl_800C4798
lbl_800C4798:

	# ROM: 0x82E58
	.double 1.0E+300

.global lbl_800C47A0
lbl_800C47A0:

	# ROM: 0x82E60
	.double 1.0

.global lbl_800C47A8
lbl_800C47A8:

	# ROM: 0x82E68
	.double 0.16666666666666666

.global lbl_800C47B0
lbl_800C47B0:

	# ROM: 0x82E70
	.double -0.3255658186224009

.global lbl_800C47B8
lbl_800C47B8:

	# ROM: 0x82E78
	.double 0.20121253213486292

.global lbl_800C47C0
lbl_800C47C0:

	# ROM: 0x82E80
	.double -0.04005553450067941

.global lbl_800C47C8
lbl_800C47C8:

	# ROM: 0x82E88
	.double 0.0007915349942898145

.global lbl_800C47D0
lbl_800C47D0:

	# ROM: 0x82E90
	.double 0.00003479331075960212

.global lbl_800C47D8
lbl_800C47D8:

	# ROM: 0x82E98
	.double -2.403394911734414

.global lbl_800C47E0
lbl_800C47E0:

	# ROM: 0x82EA0
	.double 2.0209457602335055

.global lbl_800C47E8
lbl_800C47E8:

	# ROM: 0x82EA8
	.double -0.6882839716054533

.global lbl_800C47F0
lbl_800C47F0:

	# ROM: 0x82EB0
	.double 0.07703815055590194

.global lbl_800C47F8
lbl_800C47F8:

	# ROM: 0x82EB8
	.double 0.5

.global lbl_800C4800
lbl_800C4800:

	# ROM: 0x82EC0
	.double 0.0

.global lbl_800C4808
lbl_800C4808:

	# ROM: 0x82EC8
	.double 3.0

.global lbl_800C4810
lbl_800C4810:

	# ROM: 0x82ED0
	.double 2.0

.global lbl_800C4818
lbl_800C4818:

	# ROM: 0x82ED8
	.double 0.7853981633974483
	
	# split

.global lbl_800C4820
lbl_800C4820:

	# ROM: 0x82EE0
	.double 3.141592653589793

.global lbl_800C4828
lbl_800C4828:

	# ROM: 0x82EE8
	.double -3.141592653589793

.global lbl_800C4830
lbl_800C4830:

	# ROM: 0x82EF0
	.double -1.5707963267948965

.global lbl_800C4838
lbl_800C4838:

	# ROM: 0x82EF8
	.double 1.5707963267948965

.global lbl_800C4840
lbl_800C4840:

	# ROM: 0x82F00
	.double 0.7853981633974483

.global lbl_800C4848
lbl_800C4848:

	# ROM: 0x82F08
	.double -0.7853981633974483

.global lbl_800C4850
lbl_800C4850:

	# ROM: 0x82F10
	.double 2.356194490192345

.global lbl_800C4858
lbl_800C4858:

	# ROM: 0x82F18
	.double -2.356194490192345

.global lbl_800C4860
lbl_800C4860:

	# ROM: 0x82F20
	.double 0.0

.global lbl_800C4868
lbl_800C4868:

	# ROM: 0x82F28
	.double -0.0

.global lbl_800C4870
lbl_800C4870:

	# ROM: 0x82F30
	.double 1.2246467991473532E-16
	
	# split

.global lbl_800C4878
lbl_800C4878:

	# ROM: 0x82F38
	.double -1.8014398509481983E+16

.global lbl_800C4880
lbl_800C4880:

	# ROM: 0x82F40
	.double 1.8014398509481983E+16

.global lbl_800C4888
lbl_800C4888:

	# ROM: 0x82F48
	.double 1.0

.global lbl_800C4890
lbl_800C4890:

	# ROM: 0x82F50
	.double 0.6931471803691238

.global lbl_800C4898
lbl_800C4898:

	# ROM: 0x82F58
	.double 1.9082149292705878E-10

.global lbl_800C48A0
lbl_800C48A0:

	# ROM: 0x82F60
	.double 0.5

.global lbl_800C48A8
lbl_800C48A8:

	# ROM: 0x82F68
	.double 0.3333333333333333

.global lbl_800C48B0
lbl_800C48B0:

	# ROM: 0x82F70
	.double 2.0

.global lbl_800C48B8
lbl_800C48B8:

	# ROM: 0x82F78
	.double 0.6666666666666735

.global lbl_800C48C0
lbl_800C48C0:

	# ROM: 0x82F80
	.double 0.2857142874366239

.global lbl_800C48C8
lbl_800C48C8:

	# ROM: 0x82F88
	.double 0.1818357216161805

.global lbl_800C48D0
lbl_800C48D0:

	# ROM: 0x82F90
	.double 0.14798198605116585

.global lbl_800C48D8
lbl_800C48D8:

	# ROM: 0x82F98
	.double 0.3999999999940942

.global lbl_800C48E0
lbl_800C48E0:

	# ROM: 0x82FA0
	.double 0.22222198432149785

.global lbl_800C48E8
lbl_800C48E8:

	# ROM: 0x82FA8
	.double 0.153138376992093725

.global lbl_800C48F0
lbl_800C48F0:

	# ROM: 0x82FB0
	.4byte 0x43300000
	.4byte 0x80000000
	
	# split

.global lbl_800C48F8
lbl_800C48F8:

	# ROM: 0x82FB8
	.double -1.8014398509481983E+16

.global lbl_800C4900
lbl_800C4900:

	# ROM: 0x82FC0
	.double 1.8014398509481983E+16

.global lbl_800C4908
lbl_800C4908:

	# ROM: 0x82FC8
	.double 3.694239077158931E-13

.global lbl_800C4910
lbl_800C4910:

	# ROM: 0x82FD0
	.double 0.4342944819032518

.global lbl_800C4918
lbl_800C4918:

	# ROM: 0x82FD8
	.double 0.30102999566361175

.global lbl_800C4920
lbl_800C4920:

	# ROM: 0x82FE0
	.4byte 0x43300000
	.4byte 0x80000000
	
	# split

.global lbl_800C4928
lbl_800C4928:

	# ROM: 0x82FE8
	.double 1.0

.global lbl_800C4930
lbl_800C4930:

	# ROM: 0x82FF0
	.double 0.0

.global lbl_800C4938
lbl_800C4938:

	# ROM: 0x82FF8
	.double 0.5

.global lbl_800C4940
lbl_800C4940:

	# ROM: 0x83000
	.double 3.0

.global lbl_800C4948
lbl_800C4948:

	# ROM: 0x83008
	.8byte 0x7FF0000000000000

.global lbl_800C4950
lbl_800C4950:

	# ROM: 0x83010
	.double 0.3333333333333333

.global lbl_800C4958
lbl_800C4958:

	# ROM: 0x83018
	.double 0.25

.global lbl_800C4960
lbl_800C4960:

	# ROM: 0x83020
	.double 1.4426950216293335

.global lbl_800C4968
lbl_800C4968:

	# ROM: 0x83028
	.double 1.9259629911266175E-8

.global lbl_800C4970
lbl_800C4970:

	# ROM: 0x83030
	.double 1.4426950408889633

.global lbl_800C4978
lbl_800C4978:

	# ROM: 0x83038
	.double 9007199254740992.0

.global lbl_800C4980
lbl_800C4980:

	# ROM: 0x83040
	.double 0.5999999999999946

.global lbl_800C4988
lbl_800C4988:

	# ROM: 0x83048
	.double 0.4285714285785502

.global lbl_800C4990
lbl_800C4990:

	# ROM: 0x83050
	.double 0.33333332981837745

.global lbl_800C4998
lbl_800C4998:

	# ROM: 0x83058
	.double 0.272728123808534

.global lbl_800C49A0
lbl_800C49A0:

	# ROM: 0x83060
	.double 0.23066074577556175

.global lbl_800C49A8
lbl_800C49A8:

	# ROM: 0x83068
	.double 0.206975017800338425

.global lbl_800C49B0
lbl_800C49B0:

	# ROM: 0x83070
	.double 0.9617967009544373

.global lbl_800C49B8
lbl_800C49B8:

	# ROM: 0x83078
	.double -7.028461650952758E-9

.global lbl_800C49C0
lbl_800C49C0:

	# ROM: 0x83080
	.double 0.9617966939259756

.global lbl_800C49C8
lbl_800C49C8:

	# ROM: 0x83088
	.double -1.0

.global lbl_800C49D0
lbl_800C49D0:

	# ROM: 0x83090
	.double 1.0E+300

.global lbl_800C49D8
lbl_800C49D8:

	# ROM: 0x83098
	.double 8.008566259537294E-17

.global lbl_800C49E0
lbl_800C49E0:

	# ROM: 0x830A0
	.double 1.0E-300

.global lbl_800C49E8
lbl_800C49E8:

	# ROM: 0x830A8
	.double 0.6931471824645996

.global lbl_800C49F0
lbl_800C49F0:

	# ROM: 0x830B0
	.double 0.6931471805599453

.global lbl_800C49F8
lbl_800C49F8:

	# ROM: 0x830B8
	.double -1.904654299957768E-9

.global lbl_800C4A00
lbl_800C4A00:

	# ROM: 0x830C0
	.double 0.16666666666666603

.global lbl_800C4A08
lbl_800C4A08:

	# ROM: 0x830C8
	.double -0.0027777777777015595

.global lbl_800C4A10
lbl_800C4A10:

	# ROM: 0x830D0
	.double 0.00006613756321437934

.global lbl_800C4A18
lbl_800C4A18:

	# ROM: 0x830D8
	.double -0.00000165339022054652525

.global lbl_800C4A20
lbl_800C4A20:

	# ROM: 0x830E0
	.double 4.1381367970572385E-8

.global lbl_800C4A28
lbl_800C4A28:

	# ROM: 0x830E8
	.double 2.0

.global lbl_800C4A30
lbl_800C4A30:

	# ROM: 0x830F0
	.4byte 0x43300000
	.4byte 0x80000000
	
	# split

.global lbl_800C4A38
lbl_800C4A38:

	# ROM: 0x830F8
	.double 0.0

.global lbl_800C4A40
lbl_800C4A40:

	# ROM: 0x83100
	.double 1.5707963267341256

.global lbl_800C4A48
lbl_800C4A48:

	# ROM: 0x83108
	.double 6.077100506506192E-11

.global lbl_800C4A50
lbl_800C4A50:

	# ROM: 0x83110
	.double 6.077100506303966E-11

.global lbl_800C4A58
lbl_800C4A58:

	# ROM: 0x83118
	.double 2.0222662487959505E-21

.global lbl_800C4A60
lbl_800C4A60:

	# ROM: 0x83120
	.double 0.5

.global lbl_800C4A68
lbl_800C4A68:

	# ROM: 0x83128
	.double 0.6366197723675814

.global lbl_800C4A70
lbl_800C4A70:

	# ROM: 0x83130
	.double 2.0222662487111664E-21

.global lbl_800C4A78
lbl_800C4A78:

	# ROM: 0x83138
	.double 8.4784276603689E-32

.global lbl_800C4A80
lbl_800C4A80:

	# ROM: 0x83140
	.double 16777216.0

.global lbl_800C4A88
lbl_800C4A88:

	# ROM: 0x83148
	.4byte 0x43300000
	.4byte 0x80000000
	
	# split

.global lbl_800C4A90
lbl_800C4A90:

	# ROM: 0x83150
	.double 1.0

.global lbl_800C4A98
lbl_800C4A98:

	# ROM: 0x83158
	.double 0.0416666666666666

.global lbl_800C4AA0
lbl_800C4AA0:

	# ROM: 0x83160
	.double -0.001388888888887411

.global lbl_800C4AA8
lbl_800C4AA8:

	# ROM: 0x83168
	.double 0.00002480158728947673

.global lbl_800C4AB0
lbl_800C4AB0:

	# ROM: 0x83170
	.double -2.7557314351390665E-7

.global lbl_800C4AB8
lbl_800C4AB8:

	# ROM: 0x83178
	.double 2.087572321298175E-9

.global lbl_800C4AC0
lbl_800C4AC0:

	# ROM: 0x83180
	.double -1.1359647557788195E-11

.global lbl_800C4AC8
lbl_800C4AC8:

	# ROM: 0x83188
	.double 0.5

.global lbl_800C4AD0
lbl_800C4AD0:

	# ROM: 0x83190
	.double 0.28125
	
	# split

.global lbl_800C4AD8
lbl_800C4AD8:

	# ROM: 0x83198
	.double 0.0

.global lbl_800C4AE0
lbl_800C4AE0:

	# ROM: 0x831A0
	.double 5.9604644775390625E-8

.global lbl_800C4AE8
lbl_800C4AE8:

	# ROM: 0x831A8
	.double 16777216.0

.global lbl_800C4AF0
lbl_800C4AF0:

	# ROM: 0x831B0
	.double 8.0

.global lbl_800C4AF8
lbl_800C4AF8:

	# ROM: 0x831B8
	.double 0.125

.global lbl_800C4B00
lbl_800C4B00:

	# ROM: 0x831C0
	.double 0.5

.global lbl_800C4B08
lbl_800C4B08:

	# ROM: 0x831C8
	.double 1.0

.global lbl_800C4B10
lbl_800C4B10:

	# ROM: 0x831D0
	.4byte 0x43300000
	.4byte 0x80000000
	
	# split

.global lbl_800C4B18
lbl_800C4B18:

	# ROM: 0x831D8
	.double 0.008333333333322489

.global lbl_800C4B20
lbl_800C4B20:

	# ROM: 0x831E0
	.double -0.0001984126982985795

.global lbl_800C4B28
lbl_800C4B28:

	# ROM: 0x831E8
	.double 0.00000275573137070700675

.global lbl_800C4B30
lbl_800C4B30:

	# ROM: 0x831F0
	.double -2.5050760253406865E-8

.global lbl_800C4B38
lbl_800C4B38:

	# ROM: 0x831F8
	.double 1.58969099521155E-10

.global lbl_800C4B40
lbl_800C4B40:

	# ROM: 0x83200
	.double -0.16666666666666632

.global lbl_800C4B48
lbl_800C4B48:

	# ROM: 0x83208
	.double 0.5

.global lbl_800C4B50
lbl_800C4B50:

	# ROM: 0x83210
	.double 1.0

.global lbl_800C4B58
lbl_800C4B58:

	# ROM: 0x83218
	.double -1.0

.global lbl_800C4B60
lbl_800C4B60:

	# ROM: 0x83220
	.double 0.7853981633974483

.global lbl_800C4B68
lbl_800C4B68:

	# ROM: 0x83228
	.double 3.061616997868383E-17

.global lbl_800C4B70
lbl_800C4B70:

	# ROM: 0x83230
	.double 0.0

.global lbl_800C4B78
lbl_800C4B78:

	# ROM: 0x83238
	.double 2.0

.global lbl_800C4B80
lbl_800C4B80:

	# ROM: 0x83240
	.4byte 0x43300000
	.4byte 0x80000000
	
	# split

.global lbl_800C4B88
lbl_800C4B88:

	# ROM: 0x83248
	.double 1.0E+300

.global lbl_800C4B90
lbl_800C4B90:

	# ROM: 0x83250
	.double 1.0

.global lbl_800C4B98
lbl_800C4B98:

	# ROM: 0x83258
	.double 2.0

.global lbl_800C4BA0
lbl_800C4BA0:

	# ROM: 0x83260
	.double 1.5

.global lbl_800C4BA8
lbl_800C4BA8:

	# ROM: 0x83268
	.double -1.0
	
	# split

.global lbl_800C4BB0
lbl_800C4BB0:

	# ROM: 0x83270
	.double 1.0E+300

.global lbl_800C4BB8
lbl_800C4BB8:

	# ROM: 0x83278
	.double 0.0
	
	# split

.global lbl_800C4BC0
lbl_800C4BC0:

	# ROM: 0x83280
	.double 0.0
	
	# split

.global lbl_800C4BC8
lbl_800C4BC8:

	# ROM: 0x83288
	.double 1.0E+300

.global lbl_800C4BD0
lbl_800C4BD0:

	# ROM: 0x83290
	.double 0.0

.global lbl_800C4BD8
lbl_800C4BD8:

	# ROM: 0x83298
	.double 1.8014398509481983E+16
	
	# split

.global lbl_800C4BE0
lbl_800C4BE0:

	# ROM: 0x832A0
	.double 0.0

.global lbl_800C4BE8
lbl_800C4BE8:

	# ROM: 0x832A8
	.double 1.8014398509481983E+16

.global lbl_800C4BF0
lbl_800C4BF0:

	# ROM: 0x832B0
	.double 1.0E-300

.global lbl_800C4BF8
lbl_800C4BF8:

	# ROM: 0x832B8
	.double 1.0E+300

.global lbl_800C4C00
lbl_800C4C00:

	# ROM: 0x832C0
	.double 5.551115123125783E-17
	
	# split

.global lbl_800C4C08
lbl_800C4C08:

	# ROM: 0x832C8
	.double 0.0
	
	# split

.global lbl_800C4C10
lbl_800C4C10:

	# ROM: 0x832D0
	.double 0.0
	
	# split

.global lbl_800C4C18
lbl_800C4C18:

	# ROM: 0x832D8
	.float 0.0
	.balign 8

.global lbl_800C4C20
lbl_800C4C20:

	# ROM: 0x832E0
	.4byte 0x43300000
	.4byte 0x80000000

.global lbl_800C4C28
lbl_800C4C28:

	# ROM: 0x832E8
	.double 0.5

.global lbl_800C4C30
lbl_800C4C30:

	# ROM: 0x832F0
	.double 3.0
	
	# split

.global lbl_800C4C38
lbl_800C4C38:

	# ROM: 0x832F8
	.float 65536.0
	.balign 8
	
	# split

.global lbl_800C4C40
lbl_800C4C40:

	# ROM: 0x83300
	.float 0.0

.global lbl_800C4C44
lbl_800C4C44:

	# ROM: 0x83304
	.float 1.0

.global lbl_800C4C48
lbl_800C4C48:

	# ROM: 0x83308
	.float 0.0099999998

.global lbl_800C4C4C
lbl_800C4C4C:

	# ROM: 0x8330C
	.float 10.0

.global lbl_800C4C50
lbl_800C4C50:

	# ROM: 0x83310
	.float 0.1

.global lbl_800C4C54
lbl_800C4C54:

	# ROM: 0x83314
	.float 32000.0

.global lbl_800C4C58
lbl_800C4C58:

	# ROM: 0x83318
	.float 0.05

.global lbl_800C4C5C
lbl_800C4C5C:

	# ROM: 0x8331C
	.float 0.8

.global lbl_800C4C60
lbl_800C4C60:

	# ROM: 0x83320
	.4byte 0x43300000
	.4byte 0x80000000
	
	# split

.global lbl_800C4C68
lbl_800C4C68:

	# ROM: 0x83328
	.4byte 0x43300000
	.4byte 0x80000000

.global lbl_800C4C70
lbl_800C4C70:

	# ROM: 0x83330
	.float 1.0

.global lbl_800C4C74
lbl_800C4C74:

	# ROM: 0x83334
	.float 0.3

.global lbl_800C4C78
lbl_800C4C78:

	# ROM: 0x83338
	.float 0.6

.global lbl_800C4C7C
lbl_800C4C7C:

	# ROM: 0x8333C
	.float 0.5
	
	# split

.global lbl_800C4C80
lbl_800C4C80:

	# ROM: 0x83340
	.float 0.0

.global lbl_800C4C84
lbl_800C4C84:

	# ROM: 0x83344
	.float 1.0

.global lbl_800C4C88
lbl_800C4C88:

	# ROM: 0x83348
	.float 0.0099999998

.global lbl_800C4C8C
lbl_800C4C8C:

	# ROM: 0x8334C
	.float 10.0

.global lbl_800C4C90
lbl_800C4C90:

	# ROM: 0x83350
	.float 0.1

.global lbl_800C4C94
lbl_800C4C94:

	# ROM: 0x83354
	.float 32000.0

.global lbl_800C4C98
lbl_800C4C98:

	# ROM: 0x83358
	.float 0.05

.global lbl_800C4C9C
lbl_800C4C9C:

	# ROM: 0x8335C
	.float 0.8

.global lbl_800C4CA0
lbl_800C4CA0:

	# ROM: 0x83360
	.4byte 0x43300000
	.4byte 0x80000000
	
	# split

.global lbl_800C4CA8
lbl_800C4CA8:

	# ROM: 0x83368
	.float 0.3

.global lbl_800C4CAC
lbl_800C4CAC:

	# ROM: 0x8336C
	.float 0.6

.global lbl_800C4CB0
lbl_800C4CB0:

	# ROM: 0x83370
	.4byte 0x43300000
	.4byte 0x80000000
	
	# split

.global lbl_800C4CB8
lbl_800C4CB8:

	# ROM: 0x83378
	.4byte 0x43300000
	.4byte 0x80000000
	
	# split

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
