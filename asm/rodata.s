.include "macros.s"

.section .rodata, "wa"  # 0x800764E0 - 0x80079C60 ; 0x00003780


.balign 8

.global lbl_80076AB8
lbl_80076AB8:

	# ROM: 0x73AB8
	.asciz "MetroTRK for GAMECUBE v0.10"
	.balign 8
	
	# split

.global lbl_80076AD8
lbl_80076AD8:

	# ROM: 0x73AD8
	.asciz "ERROR : No buffer available\n"
	.balign 4

.global lbl_80076AF8
lbl_80076AF8:

	# ROM: 0x73AF8
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0x00000001

.global lbl_80076B08
lbl_80076B08:

	# ROM: 0x73B08
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000

.global lbl_80076B30
lbl_80076B30:

	# ROM: 0x73B30
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000

.global lbl_80076B58
lbl_80076B58:

	# ROM: 0x73B58
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000

.global lbl_80076B80
lbl_80076B80:

	# ROM: 0x73B80
	.asciz "MetroTRK : Set to GDEV hardware\n"
	.balign 4

.global lbl_80076BA4
lbl_80076BA4:

	# ROM: 0x73BA4
	.asciz "MetroTRK : Set to AMC DDH hardware\n"

.global lbl_80076BC8
lbl_80076BC8:

	# ROM: 0x73BC8
	.4byte 0
	.float 1.0
	.4byte 0
	.4byte 0

.global lbl_80076BD8
lbl_80076BD8:

	# ROM: 0x73BD8
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80076BE8
lbl_80076BE8:

	# ROM: 0x73BE8
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000007
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0

.global lbl_80076C18
lbl_80076C18:

	# ROM: 0x73C18
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000007

.global lbl_80076C38
lbl_80076C38:

	# ROM: 0x73C38
	.4byte lbl_8004E7A4
	.4byte lbl_8004E7CC
	.4byte lbl_8004E7F4
	.4byte lbl_8004E848

.global lbl_80076C48
lbl_80076C48:

	# ROM: 0x73C48
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000002
	.4byte 0

.global lbl_80076C58
lbl_80076C58:

	# ROM: 0x73C58
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000007

.global lbl_80076C78
lbl_80076C78:

	# ROM: 0x73C78
	.asciz "\nADXT/GC Ver.8.64 Build:Feb 27 2003 16:10:36\n"
	.balign 4

.global lbl_80076CA8
lbl_80076CA8:

	# ROM: 0x73CA8
	.4byte lbl_80076C78
	.balign 8
	
	# split

.global lbl_80076CB0
lbl_80076CB0:

	# ROM: 0x73CB0
	.asciz "E03010901 ADXB_DecodeHeader: "
	.balign 4

.global lbl_80076CD0
lbl_80076CD0:

	# ROM: 0x73CD0
	.asciz "Can not decode this file format."
	.balign 8
	
	# split

.global lbl_80076CF8
lbl_80076CF8:

	# ROM: 0x73CF8
	.asciz "fmt "
	.balign 4

.global lbl_80076D00
lbl_80076D00:

	# ROM: 0x73D00
	.asciz "data"
	.balign 4

.global lbl_80076D08
lbl_80076D08:

	# ROM: 0x73D08
	.asciz "RIFF"
	.balign 4

.global lbl_80076D10
lbl_80076D10:

	# ROM: 0x73D10
	.asciz "WAVE"
	.balign 4

.global lbl_80076D18
lbl_80076D18:

	# ROM: 0x73D18
	.asciz "FORM"
	.balign 4

.global lbl_80076D20
lbl_80076D20:

	# ROM: 0x73D20
	.asciz "AIFF"
	.balign 4

.global lbl_80076D28
lbl_80076D28:

	# ROM: 0x73D28
	.asciz ".snd"
	.balign 4

.global lbl_80076D30
lbl_80076D30:

	# ROM: 0x73D30
	.asciz ".sd"
	.balign 8
	
	# split

.global lbl_80076D38
lbl_80076D38:

	# ROM: 0x73D38
	.asciz "\nSKG/GC Ver.0.63 Build:Feb 27 2003 16:10:39\n"
	.balign 4
	.4byte 0x401B4021
	.4byte 0x4025402B
	.4byte 0x4031403F
	.4byte 0x40434045
	.4byte 0x405D4061
	.4byte 0x4067406D
	.4byte 0x40874091
	.4byte 0x40A340A9
	.4byte 0x40B140B7
	.4byte 0x40BD40DB
	.4byte 0x40DF40EB
	.4byte 0x40F740F9
	.4byte 0x4109410B
	.4byte 0x41114115
	.4byte 0x41214133
	.4byte 0x4135413B
	.4byte 0x413F4159
	.4byte 0x4165416B
	.4byte 0x4177417B
	.4byte 0x419341AB
	.4byte 0x41B741BD
	.4byte 0x41BF41CB
	.4byte 0x41E741EF
	.4byte 0x41F341F9
	.4byte 0x42054207
	.4byte 0x4219421F
	.4byte 0x42234229
	.4byte 0x422F4243
	.4byte 0x42534255
	.4byte 0x425B4261
	.4byte 0x4273427D
	.4byte 0x42834285
	.4byte 0x42894291
	.4byte 0x4297429D
	.4byte 0x42B542C5
	.4byte 0x42CB42D3
	.4byte 0x42DD42E3
	.4byte 0x42F14307
	.4byte 0x430F431F
	.4byte 0x43254327
	.4byte 0x43334337
	.4byte 0x4339434F
	.4byte 0x43574369
	.4byte 0x438B438D
	.4byte 0x439343A5
	.4byte 0x43A943AF
	.4byte 0x43B543BD
	.4byte 0x43C743CF
	.4byte 0x43E143E7
	.4byte 0x43EB43ED
	.4byte 0x43F143F9
	.4byte 0x4409440B
	.4byte 0x44174423
	.4byte 0x4429443B
	.4byte 0x443F4445
	.4byte 0x444B4451
	.4byte 0x44534459
	.4byte 0x4465446F
	.4byte 0x4483448F
	.4byte 0x44A144A5
	.4byte 0x44AB44AD
	.4byte 0x44BD44BF
	.4byte 0x44C944D7
	.4byte 0x44DB44F9
	.4byte 0x44FB4505
	.4byte 0x45114513
	.4byte 0x452B4531
	.4byte 0x45414549
	.4byte 0x45534555
	.4byte 0x45614577
	.4byte 0x457D457F
	.4byte 0x458F45A3
	.4byte 0x45AD45AF
	.4byte 0x45BB45C7
	.4byte 0x45D945E3
	.4byte 0x45EF45F5
	.4byte 0x45F74601
	.4byte 0x46034609
	.4byte 0x46134625
	.4byte 0x46274633
	.4byte 0x4639463D
	.4byte 0x46434645
	.4byte 0x465D4679
	.4byte 0x467B467F
	.4byte 0x4681468B
	.4byte 0x468D469D
	.4byte 0x46A946B1
	.4byte 0x46C746C9
	.4byte 0x46CF46D3
	.4byte 0x46D546DF
	.4byte 0x46E546F9
	.4byte 0x4705470F
	.4byte 0x47174723
	.4byte 0x4729472F
	.4byte 0x47354739
	.4byte 0x474B474D
	.4byte 0x4751475D
	.4byte 0x476F4771
	.4byte 0x477D4783
	.4byte 0x47874789
	.4byte 0x479947A5
	.4byte 0x47B147BF
	.4byte 0x47C347CB
	.4byte 0x47DD47E1
	.4byte 0x47ED47FB
	.4byte 0x48014807
	.4byte 0x480B4813
	.4byte 0x4819481D
	.4byte 0x4831483D
	.4byte 0x48474855
	.4byte 0x4859485B
	.4byte 0x486B486D
	.4byte 0x48794897
	.4byte 0x489B48A1
	.4byte 0x48B948CD
	.4byte 0x48E548EF
	.4byte 0x48F74903
	.4byte 0x490D4919
	.4byte 0x491F492B
	.4byte 0x4937493D
	.4byte 0x49454955
	.4byte 0x49634969
	.4byte 0x496D4973
	.4byte 0x499749AB
	.4byte 0x49B549D3
	.4byte 0x49DF49E1
	.4byte 0x49E549E7
	.4byte 0x4A034A0F
	.4byte 0x4A1D4A23
	.4byte 0x4A394A41
	.4byte 0x4A454A57
	.4byte 0x4A5D4A6B
	.4byte 0x4A7D4A81
	.4byte 0x4A874A89
	.4byte 0x4A8F4AB1
	.4byte 0x4AC34AC5
	.4byte 0x4AD54ADB
	.4byte 0x4AED4AEF
	.4byte 0x4B074B0B
	.4byte 0x4B0D4B13
	.4byte 0x4B1F4B25
	.4byte 0x4B314B3B
	.4byte 0x4B434B49
	.4byte 0x4B594B65
	.4byte 0x4B6D4B77
	.4byte 0x4B854BAD
	.4byte 0x4BB34BB5
	.4byte 0x4BBB4BBF
	.4byte 0x4BCB4BD9
	.4byte 0x4BDD4BDF
	.4byte 0x4BE34BE5
	.4byte 0x4BE94BF1
	.4byte 0x4BF74C01
	.4byte 0x4C074C0D
	.4byte 0x4C0F4C15
	.4byte 0x4C1B4C21
	.4byte 0x4C2D4C33
	.4byte 0x4C4B4C55
	.4byte 0x4C574C61
	.4byte 0x4C674C73
	.4byte 0x4C794C7F
	.4byte 0x4C8D4C93
	.4byte 0x4C994CCD
	.4byte 0x4CE14CE7
	.4byte 0x4CF14CF3
	.4byte 0x4CFD4D05
	.4byte 0x4D0F4D1B
	.4byte 0x4D274D29
	.4byte 0x4D2F4D33
	.4byte 0x4D414D51
	.4byte 0x4D594D65
	.4byte 0x4D6B4D81
	.4byte 0x4D834D8D
	.4byte 0x4D954D9B
	.4byte 0x4DB14DB3
	.4byte 0x4DC94DCF
	.4byte 0x4DD74DE1
	.4byte 0x4DED4DF9
	.4byte 0x4DFB4E05
	.4byte 0x4E0B4E17
	.4byte 0x4E194E1D
	.4byte 0x4E2B4E35
	.4byte 0x4E374E3D
	.4byte 0x4E4F4E53
	.4byte 0x4E5F4E67
	.4byte 0x4E794E85
	.4byte 0x4E8B4E91
	.4byte 0x4E954E9B
	.4byte 0x4EA14EAF
	.4byte 0x4EB34EB5
	.4byte 0x4EC14ECD
	.4byte 0x4ED14ED7
	.4byte 0x4EE94EFB
	.4byte 0x4F074F09
	.4byte 0x4F194F25
	.4byte 0x4F2D4F3F
	.4byte 0x4F494F63
	.4byte 0x4F674F6D
	.4byte 0x4F754F7B
	.4byte 0x4F814F85
	.4byte 0x4F874F91
	.4byte 0x4FA54FA9
	.4byte 0x4FAF4FB7
	.4byte 0x4FBB4FCF
	.4byte 0x4FD94FDB
	.4byte 0x4FFD4FFF
	.4byte 0x5003501B
	.4byte 0x501D5029
	.4byte 0x5035503F
	.4byte 0x50455047
	.4byte 0x50535071
	.4byte 0x50775083
	.4byte 0x5093509F
	.4byte 0x50A150B7
	.4byte 0x50C950D5
	.4byte 0x50E350ED
	.4byte 0x50EF50FB
	.4byte 0x5107510B
	.4byte 0x510D5111
	.4byte 0x51175123
	.4byte 0x51255135
	.4byte 0x51475149
	.4byte 0x51715179
	.4byte 0x5189518F
	.4byte 0x519751A1
	.4byte 0x51A351A7
	.4byte 0x51B951C1
	.4byte 0x51CB51D3
	.4byte 0x51DF51E3
	.4byte 0x51F551F7
	.4byte 0x52095213
	.4byte 0x52155219
	.4byte 0x521B521F
	.4byte 0x52275243
	.4byte 0x5245524B
	.4byte 0x5261526D
	.4byte 0x52735281
	.4byte 0x52935297
	.4byte 0x529D52A5
	.4byte 0x52AB52B1
	.4byte 0x52BB52C3
	.4byte 0x52C752C9
	.4byte 0x52DB52E5
	.4byte 0x52EB52FF
	.4byte 0x5315531D
	.4byte 0x53235341
	.4byte 0x53455347
	.4byte 0x534B535D
	.4byte 0x53635381
	.4byte 0x53835387
	.4byte 0x538F5395
	.4byte 0x5399539F
	.4byte 0x53AB53B9
	.4byte 0x53DB53E9
	.4byte 0x53EF53F3
	.4byte 0x53F553FB
	.4byte 0x53FF540D
	.4byte 0x54115413
	.4byte 0x54195435
	.4byte 0x5437543B
	.4byte 0x54415449
	.4byte 0x54535455
	.4byte 0x545F5461
	.4byte 0x546B546D
	.4byte 0x5471548F
	.4byte 0x5491549D
	.4byte 0x54A954B3
	.4byte 0x54C554D1
	.4byte 0x54DF54E9
	.4byte 0x54EB54F7
	.4byte 0x54FD5507
	.4byte 0x550D551B
	.4byte 0x5527552B
	.4byte 0x5539553D
	.4byte 0x554F5551
	.4byte 0x555B5563
	.4byte 0x5567556F
	.4byte 0x55795585
	.4byte 0x559755A9
	.4byte 0x55B155B7
	.4byte 0x55C955D9
	.4byte 0x55E755ED
	.4byte 0x55F355FD
	.4byte 0x560B560F
	.4byte 0x56155617
	.4byte 0x5623562F
	.4byte 0x56335639
	.4byte 0x563F564B
	.4byte 0x564D565D
	.4byte 0x565F566B
	.4byte 0x56715675
	.4byte 0x56835689
	.4byte 0x568D568F
	.4byte 0x569B56AD
	.4byte 0x56B156D5
	.4byte 0x56E756F3
	.4byte 0x56FF5701
	.4byte 0x57055707
	.4byte 0x570B5713
	.4byte 0x571F5723
	.4byte 0x5747574D
	.4byte 0x575F5761
	.4byte 0x576D5777
	.4byte 0x577D5789
	.4byte 0x57A157A9
	.4byte 0x57AF57B5
	.4byte 0x57C557D1
	.4byte 0x57D357E5
	.4byte 0x57EF5803
	.4byte 0x580D580F
	.4byte 0x58155827
	.4byte 0x582B582D
	.4byte 0x5855585B
	.4byte 0x585D586D
	.4byte 0x586F5873
	.4byte 0x587B588D
	.4byte 0x589758A3
	.4byte 0x58A958AB
	.4byte 0x58B558BD
	.4byte 0x58C158C7
	.4byte 0x58D358D5
	.4byte 0x58DF58F1
	.4byte 0x58F958FF
	.4byte 0x59035917
	.4byte 0x591B5921
	.4byte 0x5945594B
	.4byte 0x594D5957
	.4byte 0x595D5975
	.4byte 0x597B5989
	.4byte 0x5999599F
	.4byte 0x59B159B3
	.4byte 0x59BD59D1
	.4byte 0x59DB59E3
	.4byte 0x59E959ED
	.4byte 0x59F359F5
	.4byte 0x59FF5A01
	.4byte 0x5A0D5A11
	.4byte 0x5A135A17
	.4byte 0x5A1F5A29
	.4byte 0x5A2F5A3B
	.4byte 0x5A4D5A5B
	.4byte 0x5A675A77
	.4byte 0x5A7F5A85
	.4byte 0x5A955A9D
	.4byte 0x5AA15AA3
	.4byte 0x5AA95ABB
	.4byte 0x5AD35AE5
	.4byte 0x5AEF5AFB
	.4byte 0x5AFD5B01
	.4byte 0x5B0F5B19
	.4byte 0x5B1F5B25
	.4byte 0x5B2B5B3D
	.4byte 0x5B495B4B
	.4byte 0x5B675B79
	.4byte 0x5B875B97
	.4byte 0x5BA35BB1
	.4byte 0x5BC95BD5
	.4byte 0x5BEB5BF1
	.4byte 0x5BF35BFD
	.4byte 0x5C055C09
	.4byte 0x5C0B5C0F
	.4byte 0x5C1D5C29
	.4byte 0x5C2F5C33
	.4byte 0x5C395C47
	.4byte 0x5C4B5C4D
	.4byte 0x5C515C6F
	.4byte 0x5C755C77
	.4byte 0x5C7D5C87
	.4byte 0x5C895CA7
	.4byte 0x5CBD5CBF
	.4byte 0x5CC35CC9
	.4byte 0x5CD15CD7
	.4byte 0x5CDD5CED
	.4byte 0x5CF95D05
	.4byte 0x5D0B5D13
	.4byte 0x5D175D19
	.4byte 0x5D315D3D
	.4byte 0x5D415D47
	.4byte 0x5D4F5D55
	.4byte 0x5D5B5D65
	.4byte 0x5D675D6D
	.4byte 0x5D795D95
	.4byte 0x5DA35DA9
	.4byte 0x5DAD5DB9
	.4byte 0x5DC15DC7
	.4byte 0x5DD35DD7
	.4byte 0x5DDD5DEB
	.4byte 0x5DF15DFD
	.4byte 0x5E075E0D
	.4byte 0x5E135E1B
	.4byte 0x5E215E27
	.4byte 0x5E2B5E2D
	.4byte 0x5E315E39
	.4byte 0x5E455E49
	.4byte 0x5E575E69
	.4byte 0x5E735E75
	.4byte 0x5E855E8B
	.4byte 0x5E9F5EA5
	.4byte 0x5EAF5EB7
	.4byte 0x5EBB5ED9
	.4byte 0x5EFD5F09
	.4byte 0x5F115F27
	.4byte 0x5F335F35
	.4byte 0x5F3B5F47
	.4byte 0x5F575F5D
	.4byte 0x5F635F65
	.4byte 0x5F775F7B
	.4byte 0x5F955F99
	.4byte 0x5FA15FB3
	.4byte 0x5FBD5FC5
	.4byte 0x5FCF5FD5
	.4byte 0x5FE35FE7
	.4byte 0x5FFB6011
	.4byte 0x6023602F
	.4byte 0x60376053
	.4byte 0x605F6065
	.4byte 0x606B6073
	.4byte 0x60796085
	.4byte 0x609D60AD
	.4byte 0x60BB60BF
	.4byte 0x60CD60D9
	.4byte 0x60DF60E9
	.4byte 0x60F56109
	.4byte 0x610F6113
	.4byte 0x611B612D
	.4byte 0x6139614B
	.4byte 0x61556157
	.4byte 0x615B616F
	.4byte 0x61796187
	.4byte 0x618B6191
	.4byte 0x6193619D
	.4byte 0x61B561C7
	.4byte 0x61C961CD
	.4byte 0x61E161F1
	.4byte 0x61FF6209
	.4byte 0x6217621D
	.4byte 0x62216227
	.4byte 0x623B6241
	.4byte 0x624B6251
	.4byte 0x6253625F
	.4byte 0x62656283
	.4byte 0x628D6295
	.4byte 0x629B629F
	.4byte 0x62A562AD
	.4byte 0x62D562D7
	.4byte 0x62DB62DD
	.4byte 0x62E962FB
	.4byte 0x62FF6305
	.4byte 0x630D6317
	.4byte 0x631D632F
	.4byte 0x63416343
	.4byte 0x634F635F
	.4byte 0x6367636D
	.4byte 0x63716377
	.4byte 0x637D637F
	.4byte 0x63B363C1
	.4byte 0x63C563D9
	.4byte 0x63E963EB
	.4byte 0x63EF63F5
	.4byte 0x64016403
	.4byte 0x64096415
	.4byte 0x64216427
	.4byte 0x642B6439
	.4byte 0x64436449
	.4byte 0x644F645D
	.4byte 0x64676475
	.4byte 0x6485648D
	.4byte 0x6493649F
	.4byte 0x64A364AB
	.4byte 0x64C164C7
	.4byte 0x64C964DB
	.4byte 0x64F164F7
	.4byte 0x64F9650B
	.4byte 0x65116521
	.4byte 0x652F6539
	.4byte 0x653F654B
	.4byte 0x654D6553
	.4byte 0x6557655F
	.4byte 0x6571657D
	.4byte 0x658D658F
	.4byte 0x659365A1
	.4byte 0x65A565AD
	.4byte 0x65B965C5
	.4byte 0x65E365F3
	.4byte 0x65FB65FF
	.4byte 0x66016607
	.4byte 0x661D6629
	.4byte 0x6631663B
	.4byte 0x66416647
	.4byte 0x664D665B
	.4byte 0x66616673
	.4byte 0x667D6689
	.4byte 0x668B6695
	.4byte 0x6697669B
	.4byte 0x66B566B9
	.4byte 0x66C566CD
	.4byte 0x66D166E3
	.4byte 0x66EB66F5
	.4byte 0x67036713
	.4byte 0x6719671F
	.4byte 0x67276731
	.4byte 0x6737673F
	.4byte 0x67456751
	.4byte 0x675B676F
	.4byte 0x67796781
	.4byte 0x67856791
	.4byte 0x67AB67BD
	.4byte 0x67C167CD
	.4byte 0x67DF67E5
	.4byte 0x68036809
	.4byte 0x68116817
	.asciz "h-h9%08X"
	.balign 4
	.asciz "E1060101 ADXB_DecodeHeaderAdx: "
	.asciz "can't play AHX data by this handle"
	.balign 4
	.asciz "CRI-MW"
	.balign 8
	
	# split

.global lbl_800775C0
lbl_800775C0:

	# ROM: 0x745C0
	.asciz "SPSD"
	.balign 4

.global lbl_800775C8
lbl_800775C8:

	# ROM: 0x745C8
	.asciz "(c)CRI"
	.balign 4

.global lbl_800775D0
lbl_800775D0:

	# ROM: 0x745D0
	.float 6.2831855
	.balign 8
	
	# split

.global lbl_800775D8
lbl_800775D8:

	# ROM: 0x745D8
	.double 2.0

.global lbl_800775E0
lbl_800775E0:

	# ROM: 0x745E0
	.double 0.5

.global lbl_800775E8
lbl_800775E8:

	# ROM: 0x745E8
	.double 3.0

.global lbl_800775F0
lbl_800775F0:

	# ROM: 0x745F0
	.float 1.0

.global lbl_800775F4
lbl_800775F4:

	# ROM: 0x745F4
	.float 0.0

.global lbl_800775F8
lbl_800775F8:

	# ROM: 0x745F8
	.float 4096.0

.global lbl_800775FC
lbl_800775FC:

	# ROM: 0x745FC
	.float 2.0

.global lbl_80077600
lbl_80077600:

	# ROM: 0x74600
	.4byte 0x43300000
	.4byte 0x80000000

.global lbl_80077608
lbl_80077608:

	# ROM: 0x74608
	.4byte 0x20000000
	.4byte 0

.global lbl_80077610
lbl_80077610:

	# ROM: 0x74610
	.asciz "(c)CRI"
	.balign 4

.global lbl_80077618
lbl_80077618:

	# ROM: 0x74618
	.4byte 0x43300000
	.4byte 0x80000000

.global lbl_80077620
lbl_80077620:

	# ROM: 0x74620
	.double 32767.0

.global lbl_80077628
lbl_80077628:

	# ROM: 0x74628
	.asciz "E02110501 adxstmf_stat_exec: can't open "
	.balign 8
	
	# split

.global lbl_80077658
lbl_80077658:

	# ROM: 0x74658
	.asciz "E02080860 ADXT_SetKeyString: parameter error"
	.balign 4
	.asciz "E02080818 ADXT_GetDecNumSmpl: parameter error"
	.balign 4

.global lbl_800776B8
lbl_800776B8:

	# ROM: 0x746B8
	.4byte 0x43300000
	.4byte 0x80000000
	.asciz "E02080847 ADXT_GetStatPause: parameter error"
	.balign 4

.global lbl_800776F0
lbl_800776F0:

	# ROM: 0x746F0
	.asciz "E02080846 ADXT_Pause: parameter error"
	.balign 4
	.asciz "E02080831 ADXT_IsReadyPlayStart: parameter error"
	.balign 4
	.asciz "E02080830 ADXT_SetWaitPlayStart: parameter error"
	.balign 4
	.asciz "E02080833 ADXT_GetInputSj: parameter error"
	.balign 4
	.asciz "E02080828 ADXT_SetLpFlg: parameter error"
	.balign 4
	.asciz "E02080829 ADXT_GetLpCnt: parameter error"
	.balign 4

.global lbl_80077804
lbl_80077804:

	# ROM: 0x74804
	.asciz "E02080844 ADXT_ClearErrCode: parameter error"
	.balign 4

.global lbl_80077834
lbl_80077834:

	# ROM: 0x74834
	.asciz "E02080843 ADXT_GetErrCode: parameter error"
	.balign 4
	.asciz "E02080802 ADXT_IsCompleted: parameter error"
	.asciz "E02080836 ADXT_IsIbufSafety: parameter error"
	.balign 4
	.4byte 0
	.asciz "E02080835 ADXT_GetIbufRemainTime: parameter error"
	.balign 4
	.float -1.0

.global lbl_800778F8
lbl_800778F8:

	# ROM: 0x748F8
	.asciz "E02080814 ADXT_GetStat: parameter error"

.global lbl_80077920
lbl_80077920:

	# ROM: 0x74920
	.asciz "E02080820 ADXT_GetNumChan: parameter error"
	.balign 4

.global lbl_8007794C
lbl_8007794C:

	# ROM: 0x7494C
	.asciz "E02080819 ADXT_GetSfreq: parameter error"
	.balign 4
	.asciz "E02080837 ADXT_GetNumSmplObuf: parameter error"
	.balign 4
	.asciz "E02080834 ADXT_GetNumSctIbuf: parameter error"
	.balign 4

.global lbl_800779D8
lbl_800779D8:

	# ROM: 0x749D8
	.asciz "E02080839 ADXT_SetReloadSct: parameter error"
	.balign 4
	.asciz "E02080838 ADXT_SetReloadTime: parameter error"
	.balign 4

.global lbl_80077A38
lbl_80077A38:

	# ROM: 0x74A38
	.asciz "E02080840 ADXT_SetSvrFreq: parameter error"
	.balign 4

.global lbl_80077A64
lbl_80077A64:

	# ROM: 0x74A64
	.asciz "E02080824 ADXT_GetOutVol: parameter error"
	.balign 4

.global lbl_80077A90
lbl_80077A90:

	# ROM: 0x74A90
	.asciz "E02080823 ADXT_SetOutVol: parameter error"
	.balign 4

.global lbl_80077ABC
lbl_80077ABC:

	# ROM: 0x74ABC
	.asciz "E02080826 ADXT_GetOutPan: parameter error"
	.balign 4

.global lbl_80077AE8
lbl_80077AE8:

	# ROM: 0x74AE8
	.asciz "E02080825 ADXT_SetOutPan: parameter error"
	.balign 4

.global lbl_80077B14
lbl_80077B14:

	# ROM: 0x74B14
	.asciz "E8101208 ADXT_SetOutPan: parameter error"
	.balign 4
	.asciz "E02080821 ADXT_GetFmtBps: parameter error"
	.balign 4
	.asciz "E02080822 ADXT_GetHdrLen: parameter error"
	.balign 4

.global lbl_80077B98
lbl_80077B98:

	# ROM: 0x74B98
	.asciz "E02080817 ADXT_GetNumSmpl: parameter error"
	.balign 4
	.float 100.0
	.asciz "E02080815 ADXT_GetTime: parameter error"
	.float 1000.0
	.float 60.0
	.float -60.0

.global lbl_80077BFC
lbl_80077BFC:

	# ROM: 0x74BFC
	.asciz "E02080813 ADXT_Stop: parameter error"
	.balign 4

.global lbl_80077C24
lbl_80077C24:

	# ROM: 0x74C24
	.asciz "E02080812 ADXT_StartSj: parameter error"

.global lbl_80077C4C
lbl_80077C4C:

	# ROM: 0x74C4C
	.asciz "E02080805 ADXT_Destroy: parameter error"

.global lbl_80077C74
lbl_80077C74:

	# ROM: 0x74C74
	.asciz "E02080804 ADXT_Create: parameter error"
	.balign 4

.global lbl_80077C9C
lbl_80077C9C:

	# ROM: 0x74C9C
	.float 0.85

.global lbl_80077CA0
lbl_80077CA0:

	# ROM: 0x74CA0
	.asciz "E02080807 ADXT_StartFname: parameter error"
	.balign 4

.global lbl_80077CCC
lbl_80077CCC:

	# ROM: 0x74CCC
	.asciz "E02080811 ADXT_StartAfs: parameter error"
	.balign 4

.global lbl_80077CF8
lbl_80077CF8:

	# ROM: 0x74CF8
	.asciz "E8101202 ADXT_StartAfs: can't open "
	.balign 8
	
	# split

.global lbl_80077D20
lbl_80077D20:

	# ROM: 0x74D20
	.asciz "E02080842 ADXT_ExecHndl: parameter error"
	.balign 4

.global lbl_80077D4C
lbl_80077D4C:

	# ROM: 0x74D4C
	.asciz "E9081001 adxt_stat_decinfo: can't play this number of channels"
	.balign 4

.global lbl_80077D8C
lbl_80077D8C:

	# ROM: 0x74D8C
	.asciz "E8101201 adxt_trap_entry: not enough data"
	.balign 4

.global lbl_80077DB8
lbl_80077DB8:

	# ROM: 0x74DB8
	.asciz "\nADXGC Ver.1.21 Build:Feb 27 2003 16:10:50\n"

.global lbl_80077DE4
lbl_80077DE4:

	# ROM: 0x74DE4
	.4byte lbl_80077DB8

.global lbl_80077DE8
lbl_80077DE8:

	# ROM: 0x74DE8
	.asciz "1060102: Internal Error: adxm_goto_mwidle_border"
	.balign 8
	
	# split

.global lbl_80077E20
lbl_80077E20:

	# ROM: 0x74E20
	.asciz "\nADXGCSDK Ver.05Sep2002Patch2 Build:Feb 27 2003 16:10:51\n"
	.balign 4
	.4byte lbl_80077E20
	.4byte 0x4D465300
	.4byte 0x47434400

.global lbl_80077E68
lbl_80077E68:

	# ROM: 0x74E68
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0xFFFFFFF8
	.4byte 0xFFFFFFF9
	.4byte 0xFFFFFFFA
	.4byte 0xFFFFFFFB
	.4byte 0xFFFFFFFC
	.4byte 0xFFFFFFFD
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF

.global lbl_80077EA8
lbl_80077EA8:

	# ROM: 0x74EA8
	.4byte 0x0000AC44
	.4byte 0x0000BB80
	.4byte 0x00007D00
	.4byte 0

.global lbl_80077EB8
lbl_80077EB8:

	# ROM: 0x74EB8
	.asciz "\nADXF/GC Ver.7.04 Build:Feb 27 2003 16:08:27\n"
	.balign 4

.global lbl_80077EE8
lbl_80077EE8:

	# ROM: 0x74EE8
	.4byte lbl_80077EB8
	.balign 8
	
	# split

.global lbl_80077EF0
lbl_80077EF0:

	# ROM: 0x74EF0
	.asciz "E0041201:state is reading(ADXF_SetReqRdSct)"

.global lbl_80077F1C
lbl_80077F1C:

	# ROM: 0x74F1C
	.asciz "E9040828:'ptid' is range outside."
	.balign 4

.global lbl_80077F40
lbl_80077F40:

	# ROM: 0x74F40
	.asciz "E9040828:'flid' is range outside."
	.balign 4
	.asciz "E9040832:'adxf' is NULL.(ADXF_GetStat)"
	.balign 4
	.asciz "E9040831:'adxf' is NULL.(ADXF_GetNumReadSct)"
	.balign 4
	.asciz "E9040830:'adxf' is NULL.(ADXF_GetNumReqSct)"
	.asciz "E9040828:'adxf' is NULL.(ADXF_GetFsizeSct)"
	.balign 4
	.asciz "E9040827:'adxf' is NULL.(ADXF_Tell)"
	.asciz "E9040825:'adxf' is NULL.(ADXF_Seek)"

.global lbl_8007805C
lbl_8007805C:

	# ROM: 0x7505C
	.asciz "E9040822:'adxf' is NULL.(ADXF_Stop)"

.global lbl_80078080
lbl_80078080:

	# ROM: 0x75080
	.asciz "E9040823:'adxf->stm' is NULL.(ADXF_Stop)"
	.balign 4
	.asciz "E9040826:'type' is illigal.(ADXF_Seek)"
	.balign 4
	.asciz "E2092301:'adxf' is NULL.(ADXF_StopNw)"
	.balign 4
	.asciz "E2092302:'adxf->stm' is NULL.(ADXF_StopNw)"
	.balign 4
	.asciz "E0120401:'buf' isn't 32byte alignment.(ADXF_ReadNw)"
	.asciz "E9040816:'adxf' is NULL.(ADXF_ReadNw32)"
	.asciz "E9040817:'nsct' is negative.(ADXF_ReadNw32)"
	.asciz "E9040818:'buf' is NULL.(ADXF_ReadNw32)"
	.balign 4
	.asciz "E9040821:'sj' is NULL.(ADXF_ReadNw32)"
	.balign 4
	.asciz "E9040811:'adxf' is NULL.(ADXF_ReadSj32)"
	.asciz "E9040812:'nsct'is negative.(ADXF_ReadSj32)"
	.balign 4
	.asciz "E9040813:'sj'is NULL.(ADXF_ReadSj32)"
	.balign 4

.global lbl_8007827C
lbl_8007827C:

	# ROM: 0x7527C
	.asciz "E02111001:can't create stm handle (adxf_CreateAdxFs)"
	.balign 4

.global lbl_800782B4
lbl_800782B4:

	# ROM: 0x752B4
	.asciz "E9081901:illigal parameter fname=null.(ADXF_Open)"
	.balign 4
	.asciz "E0041303:illigal parameter 'ptid'.(ADXF_GetPtStat)"
	.balign 4
	.4byte 0x41465300
	.asciz "E0040701:Illigal format(not AFS).(ADXF_GetPtStat)"
	.balign 4
	.asciz "E0040702:Illigal number of file.(ADXF_GetPtStat)"
	.balign 4
	.asciz "E1110701:'tmpbuf' is null.(load partition)"
	.balign 4
	.asciz "E1110702:'tbsize' <= 0.(load partition)"
	.asciz "E9040801:partition ID is range outside.(adxf_ChkPrmPt)"
	.balign 4
	.asciz "E9040802:'ptinfo' is NULL.(adxf_ChkPrmPt)"
	.balign 4
	.asciz "E0042401:multi-load partition.(load partition)"
	.balign 4
	.asciz "E9040804:can't open file.(load partition)"
	.balign 8
	
	# split

.global lbl_800784A0
lbl_800784A0:

	# ROM: 0x754A0
	.asciz "\nCVFS/GC Ver.2.33 Build:Feb 27 2003 16:08:18\n"
	.balign 4
	.4byte lbl_800784A0
	.asciz "%s:%s"
	.balign 4
	.asciz "cvFsSetDefVol #1:illegal device name"
	.balign 4
	.asciz "cvFsSetDefVol #2:illegal volume name"
	.balign 4
	.asciz "cvFsSetDefVol #3:device not found"
	.balign 4
	.asciz "cvFsGetVolumeInfo #1:illegal device name"
	.balign 4
	.asciz "cvFsGetVolumeInfo #2:illegal volume name"
	.balign 4
	.asciz "cvFsGetVolumeInfo #3:device not found"
	.balign 4
	.asciz "cvFsDelVolume #1:illegal device name"
	.balign 4
	.asciz "cvFsDelVolume #2:illegal volume name"
	.balign 4
	.asciz "cvFsDelVolume #3:device not found"
	.balign 4
	.asciz "cvFsAddVolumeEx #1:illegal device name"
	.balign 4
	.asciz "cvFsAddVolumeEx #2:illegal volume name"
	.balign 4
	.asciz "cvFsAddVolumeEx #3:illegal image handle"
	.asciz "cvFsAddVolumeEx #3:device not found"
	.asciz "cvFsSetCurVolume #1:illegal device name"
	.asciz "cvFsSetCurVolume #2:illegal image handle"
	.balign 4
	.asciz "cvFsSetCurVolume #3:device not found"
	.balign 4
	.asciz "cvFsOptFn2 #1:handle error"
	.balign 4
	.asciz "cvFsOptFn2 #2:vtbl error"
	.balign 4
	.asciz "cvFsOptFn1 #1:handle error"
	.balign 4
	.asciz "cvFsOptFn1 #2:vtbl error"
	.balign 4
	.asciz "cvFsGetDevName #1:vtbl error"
	.balign 4
	.asciz "cvFsDeleteFile #1:illegal file name"
	.asciz "cvFsDeleteFile #2:illegal device name"
	.balign 4
	.asciz "cvFsDeleteFile #3:device not found"
	.balign 4
	.asciz "cvFsDeleteFile #4:vtbl error"
	.balign 4
	.asciz "cvFsRemoveDir #1:illegal directory name"
	.asciz "cvFsRemoveDir #2:illegal device name"
	.balign 4
	.asciz "cvFsRemoveDir #3:device not found"
	.balign 4
	.asciz "cvFsRemoveDir #4:vtbl error"
	.asciz "cvFsMakeDir #1:illegal directory name"
	.balign 4
	.asciz "cvFsMakeDir #2:illegal device name"
	.balign 4
	.asciz "cvFsMakeDir #3:device not found"
	.asciz "cvFsMakeDir #4:vtbl error"
	.balign 4
	.asciz "cvFsGetMaxByteRate #1:handle error"
	.balign 4
	.asciz "cvFsGetMaxByteRate #2:vtbl error"
	.balign 4
	.asciz "cvFsIsExistFile #2:illegal device name"
	.balign 4
	.asciz "cvFsIsExistFile #1:illegal file name"
	.balign 4
	.asciz "cvFsIsExistFile #3:device not found"
	.asciz "cvFsIsExistFile #4:vtbl error"
	.balign 4
	.asciz "cvFsChangeDir #1:illegal directory name"
	.asciz "cvFsChangeDir #2:illegal device name"
	.balign 4
	.asciz "cvFsChangeDir #3:device not found"
	.balign 4
	.asciz "cvFsChangeDir #4:vtbl error"
	.asciz "cvFsGetNumTr #1:handle error"
	.balign 4
	.asciz "cvFsGetNumTr #2:vtbl error"
	.balign 4
	.asciz "cvFsSetSctLen #3:handle error"
	.balign 4
	.asciz "cvFsSetSctLen #4:vtbl error"
	.asciz "cvFsGetSctLen #1:handle error"
	.balign 4
	.asciz "cvFsGetSctLen #2:vtbl error"
	.asciz "cvFsGetFreeSize #5:device not found"
	.asciz "cvFsGetFreeSize #6:vtbl error"
	.balign 4
	.asciz "cvFsGetFileSizeByHndl #1:illegal file handle"
	.balign 4
	.asciz "cvFsGetFileSizeEx #1:illegal file name"
	.balign 4
	.asciz "cvFsGetFileSizeEx #2:illegal device name"
	.balign 4
	.asciz "cvFsGetFileSizeEx #3:device not found"
	.balign 4
	.asciz "cvFsGetFileSizeEx #4:vtbl error"
	.asciz "cvFsGetFileSize #1:illegal file name"
	.balign 4
	.asciz "cvFsGetFileSize #2:illegal device name"
	.balign 4
	.asciz "cvFsGetFileSize #3:device not found"
	.asciz "cvFsGetFileSize #4:vtbl error"
	.balign 4

.global lbl_80078D58
lbl_80078D58:

	# ROM: 0x75D58
	.asciz "cvFsGetStat #1:handle error"

.global lbl_80078D74
lbl_80078D74:

	# ROM: 0x75D74
	.asciz "cvFsGetStat #2:vtbl error"
	.balign 4
	.asciz "cvFsStopTr #1:handle error"
	.balign 4
	.asciz "cvFsStopTr #2:vtbl error"
	.balign 4
	.asciz "cvFsReqWr #1:handle error"
	.balign 4
	.asciz "cvFsReqWr #2:vtbl error"

.global lbl_80078DFC
lbl_80078DFC:

	# ROM: 0x75DFC
	.asciz "cvFsReqRd #1:handle error"
	.balign 4

.global lbl_80078E18
lbl_80078E18:

	# ROM: 0x75E18
	.asciz "cvFsReqRd #2:vtbl error"

.global lbl_80078E30
lbl_80078E30:

	# ROM: 0x75E30
	.asciz "cvFsSeek #1:handle error"
	.balign 4

.global lbl_80078E4C
lbl_80078E4C:

	# ROM: 0x75E4C
	.asciz "cvFsSeek #2:vtbl error"
	.balign 4

.global lbl_80078E64
lbl_80078E64:

	# ROM: 0x75E64
	.asciz "cvFsTell #1:handle error"
	.balign 4

.global lbl_80078E80
lbl_80078E80:

	# ROM: 0x75E80
	.asciz "cvFsTell #2:vtbl error"
	.balign 4

.global lbl_80078E98
lbl_80078E98:

	# ROM: 0x75E98
	.asciz "cvFsClose #1:handle error"
	.balign 4

.global lbl_80078EB4
lbl_80078EB4:

	# ROM: 0x75EB4
	.asciz "cvFsClose #2:vtbl error"
	.asciz "cvFsOpen #1:illegal file name"
	.balign 4
	.asciz "cvFsOpen #3:failed handle alloced"
	.balign 4
	.asciz "cvFsOpen #2:illegal device name"
	.asciz "cvFsOpen #4:device not found"
	.balign 4
	.asciz "cvFsOpen #5:vtbl error"
	.balign 4
	.asciz "cvFsOpen #6:open failed"

.global lbl_80078F80
lbl_80078F80:

	# ROM: 0x75F80
	.asciz "cvFsSetDefDev #1:illegal device name"
	.balign 4

.global lbl_80078FA8
lbl_80078FA8:

	# ROM: 0x75FA8
	.asciz "cvFsSetDefDev #2:unknown device name"
	.balign 4
	.asciz "cvFsDelDev #1:illegal device name"
	.balign 4
	.asciz "cvFsAddDev #1:illegal device name"
	.balign 4
	.asciz "cvFsAddDev #2:illegal I/F func name"
	.asciz "cvFsAddDev #3:failed added a device"

.global lbl_80079060
lbl_80079060:

	# ROM: 0x76060
	.asciz "\nGCCI Ver.1.09 Build:Feb 27 2003 16:08:16\n"
	.balign 4

.global lbl_8007908C
lbl_8007908C:

	# ROM: 0x7608C
	.asciz "E0092912:handl is null."

.global lbl_800790A4
lbl_800790A4:

	# ROM: 0x760A4
	.asciz "E0040302:handl is null."

.global lbl_800790BC
lbl_800790BC:

	# ROM: 0x760BC
	.asciz "E0040303:invalidate size."
	.balign 4

.global lbl_800790D8
lbl_800790D8:

	# ROM: 0x760D8
	.asciz "E0040301:handl is null."
	.asciz "E0092917:DVDCancel failed."
	.balign 4
	.asciz "E0092918:DVDCancel time out."
	.balign 4
	.asciz "E0092913:nsct < 0.(gcCiReqRd)"
	.balign 4
	.asciz "E0092914:buf is null.(gcCiReqRd)"
	.balign 4
	.asciz "E0092908:fname is null.(gcCiOpen)"
	.balign 4
	.asciz "E0092909:rw is illigal.(gcCiOpen)"
	.balign 4
	.asciz "E0092910:not enough handle resource.(gcCiOpen)"
	.balign 4
	.asciz "E0092911:DVDOpen fail.(gcCiOpen)"
	.balign 4
	.asciz "E0092901:fname is null.(gcCiGetFileSize)"
	.balign 4
	.asciz "E0040201:can't open a file.(gcCiGetFileSize)"
	.balign 4
	.asciz "E0040202:can't close a file.(gcCiGetFileSize)"
	.balign 4

.global lbl_80079298
lbl_80079298:

	# ROM: 0x76298
	.asciz "E0003: Illigal parameter lsc=NULL\n"
	.balign 4

.global lbl_800792BC
lbl_800792BC:

	# ROM: 0x762BC
	.asciz "E0010: Illigal parameter min=%d\n"
	.balign 4

.global lbl_800792E0
lbl_800792E0:

	# ROM: 0x762E0
	.asciz "E0012: Can not find stream ID =%d\n"
	.balign 4

.global lbl_80079304
lbl_80079304:

	# ROM: 0x76304
	.asciz "E0009: Illigal parameter no=%d\n"

.global lbl_80079324
lbl_80079324:

	# ROM: 0x76324
	.asciz "E0011: Illigal parameter fname=%s\n"
	.balign 4

.global lbl_80079348
lbl_80079348:

	# ROM: 0x76348
	.asciz "E0001: Illigal parameter=sj (LSC_Create)\n"
	.balign 4

.global lbl_80079374
lbl_80079374:

	# ROM: 0x76374
	.asciz "E0002: Not enough instance (LSC_Create)\n"
	.balign 4

.global lbl_800793A0
lbl_800793A0:

	# ROM: 0x763A0
	.asciz "\nLSC/GC Ver.2.11 Build:Feb 27 2003 16:08:15\n"
	.balign 4

.global lbl_800793D0
lbl_800793D0:

	# ROM: 0x763D0
	.4byte lbl_800793A0
	.balign 8
	
	# split

.global lbl_800793D8
lbl_800793D8:

	# ROM: 0x763D8
	.asciz "E0007: lsc->fp=NULL\n"
	.balign 4

.global lbl_800793F0
lbl_800793F0:

	# ROM: 0x763F0
	.4byte 0xDD9EEE41
	.4byte 0x167911D2
	.4byte 0x936C0060
	.4byte 0x089448BC

.global lbl_80079400
lbl_80079400:

	# ROM: 0x76400
	.asciz "\nSJ/GC Ver.6.10 Build:Feb 27 2003 16:08:35\n"

.global lbl_8007942C
lbl_8007942C:

	# ROM: 0x7642C
	.4byte lbl_80079400

.global lbl_80079430
lbl_80079430:

	# ROM: 0x76430
	.4byte 0x3B9A9E81
	.4byte 0x0DBB11D2
	.4byte 0xA6BF4445
	.4byte 0x53540000

.global lbl_80079440
lbl_80079440:

	# ROM: 0x76440
	.asciz "\nSVM/GC Ver.1.51 Build:Feb 27 2003 16:08:33\n"
	.balign 4
	.4byte lbl_80079440

.global lbl_80079474
lbl_80079474:

	# ROM: 0x76474
	.asciz "2103102:SVM:svm_unlock:lock type miss match.(type org=%d, type now=%d)"
	.balign 4
	.asciz "1071301:SVM_ExecSvrFuncId:illegal id"
	.balign 4
	.asciz "1071302:SVM_ExecSvrFuncId:illegal svtype"
	.balign 4
	.asciz "1071201:SVM_SetCbSvrId:illegal id"
	.balign 4
	.asciz "1071202:SVM_SetCbSvrId:illegal svtype"
	.balign 4
	.asciz "2100801:SVM_SetCbSvrId:over write callback function."
	.balign 4

.global lbl_80079594
lbl_80079594:

	# ROM: 0x76594
	.asciz "1051002:SVM_DelCbSvr:illegal id"

.global lbl_800795B4
lbl_800795B4:

	# ROM: 0x765B4
	.asciz "1051001:SVM_SetCbSvr:too many server function"
	.balign 4
	.4byte 0x20000000

.global lbl_800795E8
lbl_800795E8:

	# ROM: 0x765E8
	.asciz "\nMFCI/GC Ver.1.04 Build:Feb 27 2003 16:08:54\n"
	.balign 4

.global lbl_80079618
lbl_80079618:

	# ROM: 0x76618
	.4byte lbl_800795E8
	.asciz "E1041001:invalid entry number.(mfCiOpenEntry)"
	.balign 4
	.asciz "E1041002:rw is illigal.(mfCiOpenEntry)"
	.balign 4
	.asciz "E1041002:not enough handle resource.(mfCiOpenEntry)"

.global lbl_800796A8
lbl_800796A8:

	# ROM: 0x766A8
	.asciz "E01100308:length of '%s' is not 17 bytes.(mfci_get_adr_size)"
	.balign 4

.global lbl_800796E8
lbl_800796E8:

	# ROM: 0x766E8
	.asciz "E01100309:illegal file name format '%s'(mfci_get_adr_size)"
	.balign 4

.global lbl_80079724
lbl_80079724:

	# ROM: 0x76724
	.asciz "E0092912:handl is null."

.global lbl_8007973C
lbl_8007973C:

	# ROM: 0x7673C
	.asciz "E0040302:handl is null."

.global lbl_80079754
lbl_80079754:

	# ROM: 0x76754
	.asciz "E0040301:handl is null."
	.asciz "E01100307:handl is null."
	.balign 4
	.asciz "E01100308:nsct < 0.(mfCiReqRd)"
	.balign 4
	.asciz "E01100309:buf is null.(mfCiReqRd)"
	.balign 4

.global lbl_800797CC
lbl_800797CC:

	# ROM: 0x767CC
	.asciz "E01100306:handl is null."
	.balign 4

.global lbl_800797E8
lbl_800797E8:

	# ROM: 0x767E8
	.asciz "E01100305:handl is null."
	.balign 4
	.asciz "E01100301:fname is null.(mfCiOpen)"
	.balign 4
	.asciz "E01100302:rw is illigal.(mfCiOpen)"
	.balign 4
	.asciz "E01100303:not enough handle resource.(mfCiOpen)"
	.4byte 0

.global lbl_80079880
lbl_80079880:

	# ROM: 0x76880
	.asciz "\nAXRNA Ver.1.02 Build:Feb 27 2003 16:10:33\n"

.global lbl_800798AC
lbl_800798AC:

	# ROM: 0x768AC
	.4byte lbl_80079880

.global lbl_800798B0
lbl_800798B0:

	# ROM: 0x768B0
	.4byte 0x4F464600

.global lbl_800798B4
lbl_800798B4:

	# ROM: 0x768B4
	.4byte 0x4F4E2000
	.4byte lbl_800798B0
	.4byte lbl_800798B4

.global lbl_800798C0
lbl_800798C0:

	# ROM: 0x768C0
	.asciz "E1070309:Illigal parameter(sw).\n"
	.balign 4
	.asciz "E2071701:DMA transfer(data) to A-RAM did not finish.\n"
	.balign 4
	.asciz "E2071701:DMA transfer(flash) to A-RAM did not finish.\n"
	.balign 4
	.asciz "E1070308:Illigal parameter(sw).\n"
	.balign 4
	.asciz "E1070301:Illigal parameter(maxnch<=0).\n"
	.asciz "E1070302:Illigal parameter(sj=null).\n"
	.balign 4
	.asciz "E1070303:Illigal parameter(sj[]=null).\n"
	.asciz "E1070304:Not enough RNA handle.\n"
	.balign 4
	.asciz "E1070305:Can't create RNARES.\n"
	.balign 4
	.asciz "E1070306:Can't create SJ.\n"
	.balign 4
	.asciz "E1070307:Can't acquire voice(AX).\n"
	.balign 8
	
	# split

.global lbl_80079A78
lbl_80079A78:

	# ROM: 0x76A78
	.asciz "E1070313:Not enough RNARES handle.\n"

.global lbl_80079A9C
lbl_80079A9C:

	# ROM: 0x76A9C
	.asciz "E1090601:Free area other than ADX buffer.\n"
	.balign 4

.global lbl_80079AC8
lbl_80079AC8:

	# ROM: 0x76AC8
	.asciz "AX SDLIB: Panic: no more at %s:%s\n"
	.balign 4

.global lbl_80079AEC
lbl_80079AEC:

	# ROM: 0x76AEC
	.asciz "gcaxSndMemory.c"

.global lbl_80079AFC
lbl_80079AFC:

	# ROM: 0x76AFC
	.asciz "AX SDLIB: Panic: arq not found at %s:%s\n"
	.balign 4

.global lbl_80079B28
lbl_80079B28:

	# ROM: 0x76B28
	.asciz "AX SDLIB: gacxSndMalloc(%d) failed (should not happen, rest=%d\n"

.global lbl_80079B68
lbl_80079B68:

	# ROM: 0x76B68
	.asciz "AX SDLIB: gcaxNewAramBank(%d,%d) failed (should not happen\n"
	.balign 8
	
	# split

.global lbl_80079BA8
lbl_80079BA8:

	# ROM: 0x76BA8
	.asciz "AX SDLIB: AXAcquireVoice() failed in drop callback\n"
	.balign 8
	
	# split

.global lbl_80079BE0
lbl_80079BE0:

	# ROM: 0x76BE0
	.asciz "AX SDLIB: aramRest=%d\n"
	.balign 4

.global lbl_80079BF8
lbl_80079BF8:

	# ROM: 0x76BF8
	.asciz "AX SDLIB: Panic: cannot allocate memory (%d)\n"
	.balign 4

.global lbl_80079C28
lbl_80079C28:

	# ROM: 0x76C28
	.asciz "AX SDLIB: allocated (%d)\n"
