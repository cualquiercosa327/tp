/* 800EFDC4 000ECD04  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 800EFDC8 000ECD08  7C 08 02 A6 */ mflr r0
/* 800EFDCC 000ECD0C  90 01 00 34 */ stw r0, 0x34(r1)
/* 800EFDD0 000ECD10  39 61 00 30 */ addi r11, r1, 0x30
/* 800EFDD4 000ECD14  48 27 24 05 */ bl _savegpr_28
/* 800EFDD8 000ECD18  7C 7C 1B 78 */ mr r28, r3
/* 800EFDDC 000ECD1C  3B FC 1F D0 */ addi r31, r28, 0x1fd0
/* 800EFDE0 000ECD20  83 A3 28 18 */ lwz r29, 0x2818(r3)
/* 800EFDE4 000ECD24  28 1D 00 00 */ cmplwi r29, 0
/* 800EFDE8 000ECD28  40 82 00 10 */ bne lbl_800EFDF8
/* 800EFDEC 000ECD2C  38 80 00 00 */ li r4, 0
/* 800EFDF0 000ECD30  4B FC A2 E1 */ bl daAlink_c_NS_checkNextAction
/* 800EFDF4 000ECD34  48 00 05 80 */ b lbl_800F0374
lbl_800EFDF8:
/* 800EFDF8 000ECD38  7F BE EB 78 */ mr r30, r29
/* 800EFDFC 000ECD3C  38 00 00 07 */ li r0, 7
/* 800EFE00 000ECD40  98 1C 2F 99 */ stb r0, 0x2f99(r28)
/* 800EFE04 000ECD44  38 61 00 10 */ addi r3, r1, 0x10
/* 800EFE08 000ECD48  38 9D 04 D0 */ addi r4, r29, 0x4d0
/* 800EFE0C 000ECD4C  38 BC 37 C8 */ addi r5, r28, 0x37c8
/* 800EFE10 000ECD50  48 17 6D 25 */ bl cXyz_NS___mi
/* 800EFE14 000ECD54  38 7C 04 D0 */ addi r3, r28, 0x4d0
/* 800EFE18 000ECD58  38 81 00 10 */ addi r4, r1, 0x10
/* 800EFE1C 000ECD5C  7C 65 1B 78 */ mr r5, r3
/* 800EFE20 000ECD60  48 25 72 71 */ bl PSVECAdd
/* 800EFE24 000ECD64  C0 1D 04 D0 */ lfs f0, 0x4d0(r29)
/* 800EFE28 000ECD68  D0 1C 37 C8 */ stfs f0, 0x37c8(r28)
/* 800EFE2C 000ECD6C  C0 1D 04 D4 */ lfs f0, 0x4d4(r29)
/* 800EFE30 000ECD70  D0 1C 37 CC */ stfs f0, 0x37cc(r28)
/* 800EFE34 000ECD74  C0 1D 04 D8 */ lfs f0, 0x4d8(r29)
/* 800EFE38 000ECD78  D0 1C 37 D0 */ stfs f0, 0x37d0(r28)
/* 800EFE3C 000ECD7C  88 9C 2F C0 */ lbz r4, 0x2fc0(r28)
/* 800EFE40 000ECD80  28 04 00 02 */ cmplwi r4, 2
/* 800EFE44 000ECD84  40 82 00 FC */ bne lbl_800EFF40
/* 800EFE48 000ECD88  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800EFE4C 000ECD8C  C0 02 92 9C */ lfs f0, lbl_80452C9C-_SDA2_BASE_(r2)
/* 800EFE50 000ECD90  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800EFE54 000ECD94  4C 41 13 82 */ cror 2, 1, 2
/* 800EFE58 000ECD98  40 82 00 18 */ bne lbl_800EFE70
/* 800EFE5C 000ECD9C  38 00 00 05 */ li r0, 5
/* 800EFE60 000ECDA0  98 1C 2F 93 */ stb r0, 0x2f93(r28)
/* 800EFE64 000ECDA4  38 00 00 13 */ li r0, 0x13
/* 800EFE68 000ECDA8  98 1C 2F AB */ stb r0, 0x2fab(r28)
/* 800EFE6C 000ECDAC  48 00 00 1C */ b lbl_800EFE88
lbl_800EFE70:
/* 800EFE70 000ECDB0  C0 02 93 48 */ lfs f0, lbl_80452D48-_SDA2_BASE_(r2)
/* 800EFE74 000ECDB4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800EFE78 000ECDB8  4C 41 13 82 */ cror 2, 1, 2
/* 800EFE7C 000ECDBC  40 82 00 0C */ bne lbl_800EFE88
/* 800EFE80 000ECDC0  38 00 00 04 */ li r0, 4
/* 800EFE84 000ECDC4  98 1C 2F 92 */ stb r0, 0x2f92(r28)
lbl_800EFE88:
/* 800EFE88 000ECDC8  80 1D 17 44 */ lwz r0, 0x1744(r29)
/* 800EFE8C 000ECDCC  54 00 00 01 */ rlwinm. r0, r0, 0, 0, 0
/* 800EFE90 000ECDD0  41 82 00 3C */ beq lbl_800EFECC
/* 800EFE94 000ECDD4  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800EFE98 000ECDD8  C0 02 94 64 */ lfs f0, lbl_80452E64-_SDA2_BASE_(r2)
/* 800EFE9C 000ECDDC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800EFEA0 000ECDE0  40 81 00 10 */ ble lbl_800EFEB0
/* 800EFEA4 000ECDE4  7F 83 E3 78 */ mr r3, r28
/* 800EFEA8 000ECDE8  48 00 30 39 */ bl daAlink_c_NS_procHorseRunInit
/* 800EFEAC 000ECDEC  48 00 04 C8 */ b lbl_800F0374
lbl_800EFEB0:
/* 800EFEB0 000ECDF0  C0 02 93 24 */ lfs f0, lbl_80452D24-_SDA2_BASE_(r2)
/* 800EFEB4 000ECDF4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800EFEB8 000ECDF8  4C 41 13 82 */ cror 2, 1, 2
/* 800EFEBC 000ECDFC  40 82 02 C0 */ bne lbl_800F017C
/* 800EFEC0 000ECE00  7F 83 E3 78 */ mr r3, r28
/* 800EFEC4 000ECE04  4B FF D6 19 */ bl daAlink_c_NS_setSyncHorsePos
/* 800EFEC8 000ECE08  48 00 02 B4 */ b lbl_800F017C
lbl_800EFECC:
/* 800EFECC 000ECE0C  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800EFED0 000ECE10  C0 02 93 24 */ lfs f0, lbl_80452D24-_SDA2_BASE_(r2)
/* 800EFED4 000ECE14  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800EFED8 000ECE18  4C 41 13 82 */ cror 2, 1, 2
/* 800EFEDC 000ECE1C  40 82 00 34 */ bne lbl_800EFF10
/* 800EFEE0 000ECE20  C0 02 93 8C */ lfs f0, lbl_80452D8C-_SDA2_BASE_(r2)
/* 800EFEE4 000ECE24  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800EFEE8 000ECE28  40 80 00 28 */ bge lbl_800EFF10
/* 800EFEEC 000ECE2C  C0 7C 04 D4 */ lfs f3, 0x4d4(r28)
/* 800EFEF0 000ECE30  C0 5C 34 78 */ lfs f2, 0x3478(r28)
/* 800EFEF4 000ECE34  C0 22 94 E0 */ lfs f1, lbl_80452EE0-_SDA2_BASE_(r2)
/* 800EFEF8 000ECE38  C0 1F 00 0C */ lfs f0, 0xc(r31)
/* 800EFEFC 000ECE3C  EC 01 00 32 */ fmuls f0, f1, f0
/* 800EFF00 000ECE40  EC 02 00 32 */ fmuls f0, f2, f0
/* 800EFF04 000ECE44  EC 03 00 28 */ fsubs f0, f3, f0
/* 800EFF08 000ECE48  D0 1C 04 D4 */ stfs f0, 0x4d4(r28)
/* 800EFF0C 000ECE4C  48 00 02 70 */ b lbl_800F017C
lbl_800EFF10:
/* 800EFF10 000ECE50  C0 02 93 8C */ lfs f0, lbl_80452D8C-_SDA2_BASE_(r2)
/* 800EFF14 000ECE54  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800EFF18 000ECE58  40 81 02 64 */ ble lbl_800F017C
/* 800EFF1C 000ECE5C  7F 83 E3 78 */ mr r3, r28
/* 800EFF20 000ECE60  4B FF D5 BD */ bl daAlink_c_NS_setSyncHorsePos
/* 800EFF24 000ECE64  80 1D 17 4C */ lwz r0, 0x174c(r29)
/* 800EFF28 000ECE68  60 00 00 80 */ ori r0, r0, 0x80
/* 800EFF2C 000ECE6C  90 1D 17 4C */ stw r0, 0x174c(r29)
/* 800EFF30 000ECE70  80 1D 17 4C */ lwz r0, 0x174c(r29)
/* 800EFF34 000ECE74  60 00 00 10 */ ori r0, r0, 0x10
/* 800EFF38 000ECE78  90 1D 17 4C */ stw r0, 0x174c(r29)
/* 800EFF3C 000ECE7C  48 00 02 40 */ b lbl_800F017C
lbl_800EFF40:
/* 800EFF40 000ECE80  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800EFF44 000ECE84  C0 02 94 E4 */ lfs f0, lbl_80452EE4-_SDA2_BASE_(r2)
/* 800EFF48 000ECE88  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800EFF4C 000ECE8C  4C 41 13 82 */ cror 2, 1, 2
/* 800EFF50 000ECE90  40 82 00 DC */ bne lbl_800F002C
/* 800EFF54 000ECE94  38 00 00 04 */ li r0, 4
/* 800EFF58 000ECE98  98 1C 2F 92 */ stb r0, 0x2f92(r28)
/* 800EFF5C 000ECE9C  7F 83 E3 78 */ mr r3, r28
/* 800EFF60 000ECEA0  81 9C 06 28 */ lwz r12, 0x628(r28)
/* 800EFF64 000ECEA4  81 8C 01 8C */ lwz r12, 0x18c(r12)
/* 800EFF68 000ECEA8  7D 89 03 A6 */ mtctr r12
/* 800EFF6C 000ECEAC  4E 80 04 21 */ bctrl
/* 800EFF70 000ECEB0  28 03 00 00 */ cmplwi r3, 0
/* 800EFF74 000ECEB4  41 82 00 24 */ beq lbl_800EFF98
/* 800EFF78 000ECEB8  88 1C 2F C0 */ lbz r0, 0x2fc0(r28)
/* 800EFF7C 000ECEBC  28 00 00 00 */ cmplwi r0, 0
/* 800EFF80 000ECEC0  41 82 00 18 */ beq lbl_800EFF98
/* 800EFF84 000ECEC4  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800EFF88 000ECEC8  C0 02 94 E8 */ lfs f0, lbl_80452EE8-_SDA2_BASE_(r2)
/* 800EFF8C 000ECECC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800EFF90 000ECED0  4C 41 13 82 */ cror 2, 1, 2
/* 800EFF94 000ECED4  40 82 00 18 */ bne lbl_800EFFAC
lbl_800EFF98:
/* 800EFF98 000ECED8  38 00 00 05 */ li r0, 5
/* 800EFF9C 000ECEDC  98 1C 2F 93 */ stb r0, 0x2f93(r28)
/* 800EFFA0 000ECEE0  38 00 00 13 */ li r0, 0x13
/* 800EFFA4 000ECEE4  98 1C 2F AB */ stb r0, 0x2fab(r28)
/* 800EFFA8 000ECEE8  48 00 00 0C */ b lbl_800EFFB4
lbl_800EFFAC:
/* 800EFFAC 000ECEEC  38 00 00 03 */ li r0, 3
/* 800EFFB0 000ECEF0  98 1C 2F AB */ stb r0, 0x2fab(r28)
lbl_800EFFB4:
/* 800EFFB4 000ECEF4  7F 83 E3 78 */ mr r3, r28
/* 800EFFB8 000ECEF8  81 9C 06 28 */ lwz r12, 0x628(r28)
/* 800EFFBC 000ECEFC  81 8C 01 8C */ lwz r12, 0x18c(r12)
/* 800EFFC0 000ECF00  7D 89 03 A6 */ mtctr r12
/* 800EFFC4 000ECF04  4E 80 04 21 */ bctrl
/* 800EFFC8 000ECF08  28 03 00 00 */ cmplwi r3, 0
/* 800EFFCC 000ECF0C  41 82 00 44 */ beq lbl_800F0010
/* 800EFFD0 000ECF10  80 7E 05 E0 */ lwz r3, 0x5e0(r30)
/* 800EFFD4 000ECF14  80 63 00 04 */ lwz r3, 4(r3)
/* 800EFFD8 000ECF18  80 63 00 84 */ lwz r3, 0x84(r3)
/* 800EFFDC 000ECF1C  80 63 00 0C */ lwz r3, 0xc(r3)
/* 800EFFE0 000ECF20  38 63 02 D0 */ addi r3, r3, 0x2d0
/* 800EFFE4 000ECF24  38 81 00 08 */ addi r4, r1, 8
/* 800EFFE8 000ECF28  4B F1 CC 19 */ bl mDoMtx_MtxToRot
/* 800EFFEC 000ECF2C  38 7C 04 E4 */ addi r3, r28, 0x4e4
/* 800EFFF0 000ECF30  A8 01 00 0C */ lha r0, 0xc(r1)
/* 800EFFF4 000ECF34  7C 00 00 D0 */ neg r0, r0
/* 800EFFF8 000ECF38  7C 04 07 34 */ extsh r4, r0
/* 800EFFFC 000ECF3C  38 A0 00 04 */ li r5, 4
/* 800F0000 000ECF40  38 C0 07 D0 */ li r6, 0x7d0
/* 800F0004 000ECF44  38 E0 01 90 */ li r7, 0x190
/* 800F0008 000ECF48  48 18 05 39 */ bl cLib_addCalcAngleS__FPsssss
/* 800F000C 000ECF4C  48 00 00 D4 */ b lbl_800F00E0
lbl_800F0010:
/* 800F0010 000ECF50  38 7C 04 E4 */ addi r3, r28, 0x4e4
/* 800F0014 000ECF54  A8 9D 04 E4 */ lha r4, 0x4e4(r29)
/* 800F0018 000ECF58  38 A0 00 04 */ li r5, 4
/* 800F001C 000ECF5C  38 C0 07 D0 */ li r6, 0x7d0
/* 800F0020 000ECF60  38 E0 01 90 */ li r7, 0x190
/* 800F0024 000ECF64  48 18 05 1D */ bl cLib_addCalcAngleS__FPsssss
/* 800F0028 000ECF68  48 00 00 B8 */ b lbl_800F00E0
lbl_800F002C:
/* 800F002C 000ECF6C  C0 02 94 94 */ lfs f0, lbl_80452E94-_SDA2_BASE_(r2)
/* 800F0030 000ECF70  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800F0034 000ECF74  4C 41 13 82 */ cror 2, 1, 2
/* 800F0038 000ECF78  40 82 00 A8 */ bne lbl_800F00E0
/* 800F003C 000ECF7C  88 7C 2F AB */ lbz r3, 0x2fab(r28)
/* 800F0040 000ECF80  38 00 00 01 */ li r0, 1
/* 800F0044 000ECF84  7C 00 20 30 */ slw r0, r0, r4
/* 800F0048 000ECF88  54 00 06 3E */ clrlwi r0, r0, 0x18
/* 800F004C 000ECF8C  7C 60 03 78 */ or r0, r3, r0
/* 800F0050 000ECF90  98 1C 2F AB */ stb r0, 0x2fab(r28)
/* 800F0054 000ECF94  88 1C 2F C0 */ lbz r0, 0x2fc0(r28)
/* 800F0058 000ECF98  28 00 00 00 */ cmplwi r0, 0
/* 800F005C 000ECF9C  40 82 00 40 */ bne lbl_800F009C
/* 800F0060 000ECFA0  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800F0064 000ECFA4  C0 02 94 EC */ lfs f0, lbl_80452EEC-_SDA2_BASE_(r2)
/* 800F0068 000ECFA8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800F006C 000ECFAC  4C 41 13 82 */ cror 2, 1, 2
/* 800F0070 000ECFB0  40 82 00 70 */ bne lbl_800F00E0
/* 800F0074 000ECFB4  7F 83 E3 78 */ mr r3, r28
/* 800F0078 000ECFB8  81 9C 06 28 */ lwz r12, 0x628(r28)
/* 800F007C 000ECFBC  81 8C 01 88 */ lwz r12, 0x188(r12)
/* 800F0080 000ECFC0  7D 89 03 A6 */ mtctr r12
/* 800F0084 000ECFC4  4E 80 04 21 */ bctrl
/* 800F0088 000ECFC8  28 03 00 00 */ cmplwi r3, 0
/* 800F008C 000ECFCC  41 82 00 54 */ beq lbl_800F00E0
/* 800F0090 000ECFD0  38 00 00 04 */ li r0, 4
/* 800F0094 000ECFD4  98 1C 2F 92 */ stb r0, 0x2f92(r28)
/* 800F0098 000ECFD8  48 00 00 48 */ b lbl_800F00E0
lbl_800F009C:
/* 800F009C 000ECFDC  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800F00A0 000ECFE0  C0 02 93 94 */ lfs f0, lbl_80452D94-_SDA2_BASE_(r2)
/* 800F00A4 000ECFE4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800F00A8 000ECFE8  4C 41 13 82 */ cror 2, 1, 2
/* 800F00AC 000ECFEC  40 82 00 34 */ bne lbl_800F00E0
/* 800F00B0 000ECFF0  7F 83 E3 78 */ mr r3, r28
/* 800F00B4 000ECFF4  81 9C 06 28 */ lwz r12, 0x628(r28)
/* 800F00B8 000ECFF8  81 8C 01 88 */ lwz r12, 0x188(r12)
/* 800F00BC 000ECFFC  7D 89 03 A6 */ mtctr r12
/* 800F00C0 000ED000  4E 80 04 21 */ bctrl
/* 800F00C4 000ED004  28 03 00 00 */ cmplwi r3, 0
/* 800F00C8 000ED008  41 82 00 18 */ beq lbl_800F00E0
/* 800F00CC 000ED00C  38 00 00 05 */ li r0, 5
/* 800F00D0 000ED010  98 1C 2F 93 */ stb r0, 0x2f93(r28)
/* 800F00D4 000ED014  88 1C 2F AB */ lbz r0, 0x2fab(r28)
/* 800F00D8 000ED018  60 00 00 10 */ ori r0, r0, 0x10
/* 800F00DC 000ED01C  98 1C 2F AB */ stb r0, 0x2fab(r28)
lbl_800F00E0:
/* 800F00E0 000ED020  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800F00E4 000ED024  C0 02 94 B4 */ lfs f0, lbl_80452EB4-_SDA2_BASE_(r2)
/* 800F00E8 000ED028  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800F00EC 000ED02C  4C 41 13 82 */ cror 2, 1, 2
/* 800F00F0 000ED030  40 82 00 30 */ bne lbl_800F0120
/* 800F00F4 000ED034  C0 02 94 04 */ lfs f0, lbl_80452E04-_SDA2_BASE_(r2)
/* 800F00F8 000ED038  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800F00FC 000ED03C  40 80 00 24 */ bge lbl_800F0120
/* 800F0100 000ED040  C0 7C 04 D4 */ lfs f3, 0x4d4(r28)
/* 800F0104 000ED044  C0 5C 34 78 */ lfs f2, 0x3478(r28)
/* 800F0108 000ED048  C0 22 93 F8 */ lfs f1, lbl_80452DF8-_SDA2_BASE_(r2)
/* 800F010C 000ED04C  C0 1F 00 0C */ lfs f0, 0xc(r31)
/* 800F0110 000ED050  EC 01 00 32 */ fmuls f0, f1, f0
/* 800F0114 000ED054  EC 02 00 32 */ fmuls f0, f2, f0
/* 800F0118 000ED058  EC 03 00 28 */ fsubs f0, f3, f0
/* 800F011C 000ED05C  D0 1C 04 D4 */ stfs f0, 0x4d4(r28)
lbl_800F0120:
/* 800F0120 000ED060  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800F0124 000ED064  C0 02 94 94 */ lfs f0, lbl_80452E94-_SDA2_BASE_(r2)
/* 800F0128 000ED068  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800F012C 000ED06C  4C 41 13 82 */ cror 2, 1, 2
/* 800F0130 000ED070  40 82 00 4C */ bne lbl_800F017C
/* 800F0134 000ED074  7F 83 E3 78 */ mr r3, r28
/* 800F0138 000ED078  81 9C 06 28 */ lwz r12, 0x628(r28)
/* 800F013C 000ED07C  81 8C 01 88 */ lwz r12, 0x188(r12)
/* 800F0140 000ED080  7D 89 03 A6 */ mtctr r12
/* 800F0144 000ED084  4E 80 04 21 */ bctrl
/* 800F0148 000ED088  28 03 00 00 */ cmplwi r3, 0
/* 800F014C 000ED08C  41 82 00 30 */ beq lbl_800F017C
/* 800F0150 000ED090  A8 1C 30 0C */ lha r0, 0x300c(r28)
/* 800F0154 000ED094  2C 00 00 00 */ cmpwi r0, 0
/* 800F0158 000ED098  41 82 00 24 */ beq lbl_800F017C
/* 800F015C 000ED09C  7F 83 E3 78 */ mr r3, r28
/* 800F0160 000ED0A0  4B FF D3 7D */ bl daAlink_c_NS_setSyncHorsePos
/* 800F0164 000ED0A4  80 1D 17 4C */ lwz r0, 0x174c(r29)
/* 800F0168 000ED0A8  60 00 00 80 */ ori r0, r0, 0x80
/* 800F016C 000ED0AC  90 1D 17 4C */ stw r0, 0x174c(r29)
/* 800F0170 000ED0B0  80 1D 17 4C */ lwz r0, 0x174c(r29)
/* 800F0174 000ED0B4  60 00 00 10 */ ori r0, r0, 0x10
/* 800F0178 000ED0B8  90 1D 17 4C */ stw r0, 0x174c(r29)
lbl_800F017C:
/* 800F017C 000ED0BC  7F E3 FB 78 */ mr r3, r31
/* 800F0180 000ED0C0  48 06 E3 4D */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 800F0184 000ED0C4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800F0188 000ED0C8  41 82 01 E8 */ beq lbl_800F0370
/* 800F018C 000ED0CC  80 7C 20 60 */ lwz r3, 0x2060(r28)
/* 800F0190 000ED0D0  83 E3 00 1C */ lwz r31, 0x1c(r3)
/* 800F0194 000ED0D4  7F 83 E3 78 */ mr r3, r28
/* 800F0198 000ED0D8  81 9C 06 28 */ lwz r12, 0x628(r28)
/* 800F019C 000ED0DC  81 8C 01 88 */ lwz r12, 0x188(r12)
/* 800F01A0 000ED0E0  7D 89 03 A6 */ mtctr r12
/* 800F01A4 000ED0E4  4E 80 04 21 */ bctrl
/* 800F01A8 000ED0E8  28 03 00 00 */ cmplwi r3, 0
/* 800F01AC 000ED0EC  41 82 00 58 */ beq lbl_800F0204
/* 800F01B0 000ED0F0  7F A3 EB 78 */ mr r3, r29
/* 800F01B4 000ED0F4  39 9D 18 EC */ addi r12, r29, 0x18ec
/* 800F01B8 000ED0F8  48 27 1E CD */ bl func_80362084
/* 800F01BC 000ED0FC  60 00 00 00 */ nop
/* 800F01C0 000ED100  A8 1C 30 0C */ lha r0, 0x300c(r28)
/* 800F01C4 000ED104  2C 00 00 00 */ cmpwi r0, 0
/* 800F01C8 000ED108  40 82 00 78 */ bne lbl_800F0240
/* 800F01CC 000ED10C  C0 3F 00 14 */ lfs f1, 0x14(r31)
/* 800F01D0 000ED110  3C 60 80 42 */ lis r3, lbl_8042558C@ha
/* 800F01D4 000ED114  C4 03 55 8C */ lfsu f0, lbl_8042558C@l(r3)
/* 800F01D8 000ED118  EC 01 00 2A */ fadds f0, f1, f0
/* 800F01DC 000ED11C  D0 1F 00 14 */ stfs f0, 0x14(r31)
/* 800F01E0 000ED120  C0 3F 00 18 */ lfs f1, 0x18(r31)
/* 800F01E4 000ED124  C0 03 00 04 */ lfs f0, 4(r3)
/* 800F01E8 000ED128  EC 01 00 2A */ fadds f0, f1, f0
/* 800F01EC 000ED12C  D0 1F 00 18 */ stfs f0, 0x18(r31)
/* 800F01F0 000ED130  C0 3F 00 1C */ lfs f1, 0x1c(r31)
/* 800F01F4 000ED134  C0 03 00 08 */ lfs f0, 8(r3)
/* 800F01F8 000ED138  EC 01 00 2A */ fadds f0, f1, f0
/* 800F01FC 000ED13C  D0 1F 00 1C */ stfs f0, 0x1c(r31)
/* 800F0200 000ED140  48 00 00 40 */ b lbl_800F0240
lbl_800F0204:
/* 800F0204 000ED144  7F C3 F3 78 */ mr r3, r30
/* 800F0208 000ED148  4B F4 7A A9 */ bl setPlayerRide__10e_wb_classFv
/* 800F020C 000ED14C  C0 3F 00 14 */ lfs f1, 0x14(r31)
/* 800F0210 000ED150  3C 60 80 42 */ lis r3, lbl_804255A4@ha
/* 800F0214 000ED154  C4 03 55 A4 */ lfsu f0, lbl_804255A4@l(r3)
/* 800F0218 000ED158  EC 01 00 2A */ fadds f0, f1, f0
/* 800F021C 000ED15C  D0 1F 00 14 */ stfs f0, 0x14(r31)
/* 800F0220 000ED160  C0 3F 00 18 */ lfs f1, 0x18(r31)
/* 800F0224 000ED164  C0 03 00 04 */ lfs f0, 4(r3)
/* 800F0228 000ED168  EC 01 00 2A */ fadds f0, f1, f0
/* 800F022C 000ED16C  D0 1F 00 18 */ stfs f0, 0x18(r31)
/* 800F0230 000ED170  C0 3F 00 1C */ lfs f1, 0x1c(r31)
/* 800F0234 000ED174  C0 03 00 08 */ lfs f0, 8(r3)
/* 800F0238 000ED178  EC 01 00 2A */ fadds f0, f1, f0
/* 800F023C 000ED17C  D0 1F 00 1C */ stfs f0, 0x1c(r31)
lbl_800F0240:
/* 800F0240 000ED180  38 00 00 04 */ li r0, 4
/* 800F0244 000ED184  98 1C 2F 92 */ stb r0, 0x2f92(r28)
/* 800F0248 000ED188  38 00 00 05 */ li r0, 5
/* 800F024C 000ED18C  98 1C 2F 93 */ stb r0, 0x2f93(r28)
/* 800F0250 000ED190  38 00 00 13 */ li r0, 0x13
/* 800F0254 000ED194  98 1C 2F AB */ stb r0, 0x2fab(r28)
/* 800F0258 000ED198  88 1C 2F C0 */ lbz r0, 0x2fc0(r28)
/* 800F025C 000ED19C  28 00 00 02 */ cmplwi r0, 2
/* 800F0260 000ED1A0  40 82 00 A4 */ bne lbl_800F0304
/* 800F0264 000ED1A4  38 00 00 00 */ li r0, 0
/* 800F0268 000ED1A8  98 1C 2F C0 */ stb r0, 0x2fc0(r28)
/* 800F026C 000ED1AC  4B FF C5 71 */ bl daAlink_c_NS_checkHorseDashAccept
/* 800F0270 000ED1B0  2C 03 00 00 */ cmpwi r3, 0
/* 800F0274 000ED1B4  41 82 00 D4 */ beq lbl_800F0348
/* 800F0278 000ED1B8  7F 83 E3 78 */ mr r3, r28
/* 800F027C 000ED1BC  38 80 00 4F */ li r4, 0x4f
/* 800F0280 000ED1C0  3C A0 80 39 */ lis r5, lbl_8038E5A4@ha
/* 800F0284 000ED1C4  38 A5 E5 A4 */ addi r5, r5, lbl_8038E5A4@l
/* 800F0288 000ED1C8  3B C5 00 28 */ addi r30, r5, 0x28
/* 800F028C 000ED1CC  7F C5 F3 78 */ mr r5, r30
/* 800F0290 000ED1D0  4B FB CE 65 */ bl daAlink_c_NS_setSingleAnimeParam
/* 800F0294 000ED1D4  7F 83 E3 78 */ mr r3, r28
/* 800F0298 000ED1D8  38 80 00 4F */ li r4, 0x4f
/* 800F029C 000ED1DC  4B FB C1 B5 */ bl daAlink_c_NS_getMainBckData
/* 800F02A0 000ED1E0  A0 83 00 00 */ lhz r4, 0(r3)
/* 800F02A4 000ED1E4  7F 83 E3 78 */ mr r3, r28
/* 800F02A8 000ED1E8  38 A0 00 02 */ li r5, 2
/* 800F02AC 000ED1EC  7F C6 F3 78 */ mr r6, r30
/* 800F02B0 000ED1F0  4B FB D8 09 */ bl daAlink_c_NS_setUnderAnimeParam
/* 800F02B4 000ED1F4  80 1C 05 74 */ lwz r0, 0x574(r28)
/* 800F02B8 000ED1F8  60 00 10 00 */ ori r0, r0, 0x1000
/* 800F02BC 000ED1FC  90 1C 05 74 */ stw r0, 0x574(r28)
/* 800F02C0 000ED200  7F 83 E3 78 */ mr r3, r28
/* 800F02C4 000ED204  3C 80 00 01 */ lis r4, 0x0001001B@ha
/* 800F02C8 000ED208  38 84 00 1B */ addi r4, r4, 0x0001001B@l
/* 800F02CC 000ED20C  81 9C 06 28 */ lwz r12, 0x628(r28)
/* 800F02D0 000ED210  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 800F02D4 000ED214  7D 89 03 A6 */ mtctr r12
/* 800F02D8 000ED218  4E 80 04 21 */ bctrl
/* 800F02DC 000ED21C  3C 60 80 39 */ lis r3, lbl_8038E5A4@ha
/* 800F02E0 000ED220  38 63 E5 A4 */ addi r3, r3, lbl_8038E5A4@l
/* 800F02E4 000ED224  A8 03 00 56 */ lha r0, 0x56(r3)
/* 800F02E8 000ED228  B0 1C 30 A6 */ sth r0, 0x30a6(r28)
/* 800F02EC 000ED22C  A8 03 00 54 */ lha r0, 0x54(r3)
/* 800F02F0 000ED230  B0 1C 30 04 */ sth r0, 0x3004(r28)
/* 800F02F4 000ED234  80 1D 17 44 */ lwz r0, 0x1744(r29)
/* 800F02F8 000ED238  64 00 00 01 */ oris r0, r0, 1
/* 800F02FC 000ED23C  90 1D 17 44 */ stw r0, 0x1744(r29)
/* 800F0300 000ED240  48 00 00 48 */ b lbl_800F0348
lbl_800F0304:
/* 800F0304 000ED244  A8 1C 30 0C */ lha r0, 0x300c(r28)
/* 800F0308 000ED248  2C 00 00 00 */ cmpwi r0, 0
/* 800F030C 000ED24C  40 82 00 3C */ bne lbl_800F0348
/* 800F0310 000ED250  7F 83 E3 78 */ mr r3, r28
/* 800F0314 000ED254  81 9C 06 28 */ lwz r12, 0x628(r28)
/* 800F0318 000ED258  81 8C 01 88 */ lwz r12, 0x188(r12)
/* 800F031C 000ED25C  7D 89 03 A6 */ mtctr r12
/* 800F0320 000ED260  4E 80 04 21 */ bctrl
/* 800F0324 000ED264  28 03 00 00 */ cmplwi r3, 0
/* 800F0328 000ED268  41 82 00 20 */ beq lbl_800F0348
/* 800F032C 000ED26C  7F 83 E3 78 */ mr r3, r28
/* 800F0330 000ED270  38 80 00 51 */ li r4, 0x51
/* 800F0334 000ED274  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800F0338 000ED278  C0 42 93 34 */ lfs f2, lbl_80452D34-_SDA2_BASE_(r2)
/* 800F033C 000ED27C  38 A0 FF FF */ li r5, -1
/* 800F0340 000ED280  C0 62 93 24 */ lfs f3, lbl_80452D24-_SDA2_BASE_(r2)
/* 800F0344 000ED284  4B FB CC C9 */ bl daAlink_c_NS_setSingleAnime
lbl_800F0348:
/* 800F0348 000ED288  38 00 00 1E */ li r0, 0x1e
/* 800F034C 000ED28C  98 1C 2F B4 */ stb r0, 0x2fb4(r28)
/* 800F0350 000ED290  A8 1C 30 0E */ lha r0, 0x300e(r28)
/* 800F0354 000ED294  2C 00 00 00 */ cmpwi r0, 0
/* 800F0358 000ED298  41 82 00 10 */ beq lbl_800F0368
/* 800F035C 000ED29C  7F 83 E3 78 */ mr r3, r28
/* 800F0360 000ED2A0  38 80 00 00 */ li r4, 0
/* 800F0364 000ED2A4  4B FC 90 91 */ bl daAlink_c_NS_swordEquip
lbl_800F0368:
/* 800F0368 000ED2A8  7F 83 E3 78 */ mr r3, r28
/* 800F036C 000ED2AC  48 00 06 15 */ bl daAlink_c_NS_procHorseWaitInit
lbl_800F0370:
/* 800F0370 000ED2B0  38 60 00 01 */ li r3, 1
lbl_800F0374:
/* 800F0374 000ED2B4  39 61 00 30 */ addi r11, r1, 0x30
/* 800F0378 000ED2B8  48 27 1E AD */ bl _restgpr_28
/* 800F037C 000ED2BC  80 01 00 34 */ lwz r0, 0x34(r1)
/* 800F0380 000ED2C0  7C 08 03 A6 */ mtlr r0
/* 800F0384 000ED2C4  38 21 00 30 */ addi r1, r1, 0x30
/* 800F0388 000ED2C8  4E 80 00 20 */ blr
