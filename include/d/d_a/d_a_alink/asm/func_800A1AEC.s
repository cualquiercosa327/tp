/* 800A1AEC 0009EA2C  94 21 FF B0 */ stwu r1, -0x50(r1)
/* 800A1AF0 0009EA30  7C 08 02 A6 */ mflr r0
/* 800A1AF4 0009EA34  90 01 00 54 */ stw r0, 0x54(r1)
/* 800A1AF8 0009EA38  DB E1 00 40 */ stfd f31, 0x40(r1)
/* 800A1AFC 0009EA3C  F3 E1 00 48 */ psq_st f31, 72(r1), 0, 0
/* 800A1B00 0009EA40  DB C1 00 30 */ stfd f30, 0x30(r1)
/* 800A1B04 0009EA44  F3 C1 00 38 */ psq_st f30, 56(r1), 0, 0
/* 800A1B08 0009EA48  39 61 00 30 */ addi r11, r1, 0x30
/* 800A1B0C 0009EA4C  48 2C 06 C9 */ bl _savegpr_27
/* 800A1B10 0009EA50  7C 7F 1B 78 */ mr r31, r3
/* 800A1B14 0009EA54  7C 9B 23 78 */ mr r27, r4
/* 800A1B18 0009EA58  7C BC 2B 78 */ mr r28, r5
/* 800A1B1C 0009EA5C  7C DD 33 78 */ mr r29, r6
/* 800A1B20 0009EA60  8B C3 2F A7 */ lbz r30, 0x2fa7(r3)
/* 800A1B24 0009EA64  C3 E3 34 18 */ lfs f31, 0x3418(r3)
/* 800A1B28 0009EA68  C3 C3 34 1C */ lfs f30, 0x341c(r3)
/* 800A1B2C 0009EA6C  C0 22 92 E0 */ lfs f1, lbl_80452CE0-_SDA2_BASE_(r2)
/* 800A1B30 0009EA70  48 1C 5E 25 */ bl cM_rndF__Ff
/* 800A1B34 0009EA74  C0 02 94 80 */ lfs f0, lbl_80452E80-_SDA2_BASE_(r2)
/* 800A1B38 0009EA78  EC 00 08 2A */ fadds f0, f0, f1
/* 800A1B3C 0009EA7C  FC 00 00 1E */ fctiwz f0, f0
/* 800A1B40 0009EA80  D8 01 00 08 */ stfd f0, 8(r1)
/* 800A1B44 0009EA84  80 01 00 0C */ lwz r0, 0xc(r1)
/* 800A1B48 0009EA88  98 1F 2F A7 */ stb r0, 0x2fa7(r31)
/* 800A1B4C 0009EA8C  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800A1B50 0009EA90  D0 3F 34 18 */ stfs f1, 0x3418(r31)
/* 800A1B54 0009EA94  D0 3F 34 1C */ stfs f1, 0x341c(r31)
/* 800A1B58 0009EA98  D0 3F 33 F8 */ stfs f1, 0x33f8(r31)
/* 800A1B5C 0009EA9C  28 1B 00 00 */ cmplwi r27, 0
/* 800A1B60 0009EAA0  41 82 00 4C */ beq lbl_800A1BAC
/* 800A1B64 0009EAA4  C0 42 98 14 */ lfs f2, lbl_80453214-_SDA2_BASE_(r2)
/* 800A1B68 0009EAA8  7F 80 07 34 */ extsh r0, r28
/* 800A1B6C 0009EAAC  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 800A1B70 0009EAB0  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 800A1B74 0009EAB4  90 01 00 0C */ stw r0, 0xc(r1)
/* 800A1B78 0009EAB8  3C 60 43 30 */ lis r3, 0x4330
/* 800A1B7C 0009EABC  90 61 00 08 */ stw r3, 8(r1)
/* 800A1B80 0009EAC0  C8 01 00 08 */ lfd f0, 8(r1)
/* 800A1B84 0009EAC4  EC 00 08 28 */ fsubs f0, f0, f1
/* 800A1B88 0009EAC8  EC 82 00 32 */ fmuls f4, f2, f0
/* 800A1B8C 0009EACC  7F A0 07 34 */ extsh r0, r29
/* 800A1B90 0009EAD0  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 800A1B94 0009EAD4  90 01 00 14 */ stw r0, 0x14(r1)
/* 800A1B98 0009EAD8  90 61 00 10 */ stw r3, 0x10(r1)
/* 800A1B9C 0009EADC  C8 01 00 10 */ lfd f0, 0x10(r1)
/* 800A1BA0 0009EAE0  EC 00 08 28 */ fsubs f0, f0, f1
/* 800A1BA4 0009EAE4  EC 02 00 32 */ fmuls f0, f2, f0
/* 800A1BA8 0009EAE8  48 00 02 9C */ b lbl_800A1E44
lbl_800A1BAC:
/* 800A1BAC 0009EAEC  C0 5F 33 F0 */ lfs f2, 0x33f0(r31)
/* 800A1BB0 0009EAF0  FC 01 10 00 */ fcmpu cr0, f1, f2
/* 800A1BB4 0009EAF4  40 82 00 10 */ bne lbl_800A1BC4
/* 800A1BB8 0009EAF8  C0 1F 33 F4 */ lfs f0, 0x33f4(r31)
/* 800A1BBC 0009EAFC  FC 01 00 00 */ fcmpu cr0, f1, f0
/* 800A1BC0 0009EB00  41 82 00 14 */ beq lbl_800A1BD4
lbl_800A1BC4:
/* 800A1BC4 0009EB04  C0 9F 33 F4 */ lfs f4, 0x33f4(r31)
/* 800A1BC8 0009EB08  FC 00 10 90 */ fmr f0, f2
/* 800A1BCC 0009EB0C  D0 5F 33 F8 */ stfs f2, 0x33f8(r31)
/* 800A1BD0 0009EB10  48 00 02 74 */ b lbl_800A1E44
lbl_800A1BD4:
/* 800A1BD4 0009EB14  A0 1F 2F E8 */ lhz r0, 0x2fe8(r31)
/* 800A1BD8 0009EB18  28 00 00 04 */ cmplwi r0, 4
/* 800A1BDC 0009EB1C  41 82 00 0C */ beq lbl_800A1BE8
/* 800A1BE0 0009EB20  28 00 00 F2 */ cmplwi r0, 0xf2
/* 800A1BE4 0009EB24  40 82 00 50 */ bne lbl_800A1C34
lbl_800A1BE8:
/* 800A1BE8 0009EB28  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 800A1BEC 0009EB2C  54 00 01 CF */ rlwinm. r0, r0, 0, 7, 7
/* 800A1BF0 0009EB30  40 82 00 44 */ bne lbl_800A1C34
/* 800A1BF4 0009EB34  A8 7F 2F EE */ lha r3, 0x2fee(r31)
/* 800A1BF8 0009EB38  7C 60 07 35 */ extsh. r0, r3
/* 800A1BFC 0009EB3C  41 82 00 38 */ beq lbl_800A1C34
/* 800A1C00 0009EB40  C0 82 92 C0 */ lfs f4, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800A1C04 0009EB44  C0 42 98 18 */ lfs f2, lbl_80453218-_SDA2_BASE_(r2)
/* 800A1C08 0009EB48  7C 03 00 D0 */ neg r0, r3
/* 800A1C0C 0009EB4C  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 800A1C10 0009EB50  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 800A1C14 0009EB54  90 01 00 14 */ stw r0, 0x14(r1)
/* 800A1C18 0009EB58  3C 00 43 30 */ lis r0, 0x4330
/* 800A1C1C 0009EB5C  90 01 00 10 */ stw r0, 0x10(r1)
/* 800A1C20 0009EB60  C8 01 00 10 */ lfd f0, 0x10(r1)
/* 800A1C24 0009EB64  EC 00 08 28 */ fsubs f0, f0, f1
/* 800A1C28 0009EB68  EC 02 00 32 */ fmuls f0, f2, f0
/* 800A1C2C 0009EB6C  D0 1F 33 F8 */ stfs f0, 0x33f8(r31)
/* 800A1C30 0009EB70  48 00 02 14 */ b lbl_800A1E44
lbl_800A1C34:
/* 800A1C34 0009EB74  7F E3 FB 78 */ mr r3, r31
/* 800A1C38 0009EB78  48 06 23 B1 */ bl daAlink_c_NS_checkSwimNeckUpDown
/* 800A1C3C 0009EB7C  2C 03 00 00 */ cmpwi r3, 0
/* 800A1C40 0009EB80  41 82 00 34 */ beq lbl_800A1C74
/* 800A1C44 0009EB84  A8 7F 31 24 */ lha r3, 0x3124(r31)
/* 800A1C48 0009EB88  7C 60 07 35 */ extsh. r0, r3
/* 800A1C4C 0009EB8C  40 81 00 0C */ ble lbl_800A1C58
/* 800A1C50 0009EB90  C0 82 92 98 */ lfs f4, lbl_80452C98-_SDA2_BASE_(r2)
/* 800A1C54 0009EB94  48 00 00 18 */ b lbl_800A1C6C
lbl_800A1C58:
/* 800A1C58 0009EB98  7C 60 07 35 */ extsh. r0, r3
/* 800A1C5C 0009EB9C  40 80 00 0C */ bge lbl_800A1C68
/* 800A1C60 0009EBA0  C0 82 93 4C */ lfs f4, lbl_80452D4C-_SDA2_BASE_(r2)
/* 800A1C64 0009EBA4  48 00 00 08 */ b lbl_800A1C6C
lbl_800A1C68:
/* 800A1C68 0009EBA8  C0 82 92 C0 */ lfs f4, lbl_80452CC0-_SDA2_BASE_(r2)
lbl_800A1C6C:
/* 800A1C6C 0009EBAC  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800A1C70 0009EBB0  48 00 01 D4 */ b lbl_800A1E44
lbl_800A1C74:
/* 800A1C74 0009EBB4  7F E3 FB 78 */ mr r3, r31
/* 800A1C78 0009EBB8  48 07 3F A9 */ bl daAlink_c_NS_checkEventRun
/* 800A1C7C 0009EBBC  2C 03 00 00 */ cmpwi r3, 0
/* 800A1C80 0009EBC0  40 82 01 80 */ bne lbl_800A1E00
/* 800A1C84 0009EBC4  80 1F 31 A0 */ lwz r0, 0x31a0(r31)
/* 800A1C88 0009EBC8  54 00 07 FF */ clrlwi. r0, r0, 0x1f
/* 800A1C8C 0009EBCC  41 82 01 74 */ beq lbl_800A1E00
/* 800A1C90 0009EBD0  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 800A1C94 0009EBD4  54 00 04 A5 */ rlwinm. r0, r0, 0, 0x12, 0x12
/* 800A1C98 0009EBD8  41 82 01 68 */ beq lbl_800A1E00
/* 800A1C9C 0009EBDC  7F E3 FB 78 */ mr r3, r31
/* 800A1CA0 0009EBE0  48 01 75 B5 */ bl daAlink_c_NS_checkNoUpperAnime
/* 800A1CA4 0009EBE4  2C 03 00 00 */ cmpwi r3, 0
/* 800A1CA8 0009EBE8  40 82 00 14 */ bne lbl_800A1CBC
/* 800A1CAC 0009EBEC  7F E3 FB 78 */ mr r3, r31
/* 800A1CB0 0009EBF0  48 04 1F BD */ bl daAlink_c_NS_checkGrabAnime
/* 800A1CB4 0009EBF4  2C 03 00 00 */ cmpwi r3, 0
/* 800A1CB8 0009EBF8  41 82 01 48 */ beq lbl_800A1E00
lbl_800A1CBC:
/* 800A1CBC 0009EBFC  A0 1F 2F E8 */ lhz r0, 0x2fe8(r31)
/* 800A1CC0 0009EC00  28 00 00 03 */ cmplwi r0, 3
/* 800A1CC4 0009EC04  41 82 00 24 */ beq lbl_800A1CE8
/* 800A1CC8 0009EC08  28 00 00 71 */ cmplwi r0, 0x71
/* 800A1CCC 0009EC0C  41 82 00 1C */ beq lbl_800A1CE8
/* 800A1CD0 0009EC10  28 00 00 1C */ cmplwi r0, 0x1c
/* 800A1CD4 0009EC14  41 82 00 14 */ beq lbl_800A1CE8
/* 800A1CD8 0009EC18  28 00 00 3C */ cmplwi r0, 0x3c
/* 800A1CDC 0009EC1C  41 82 00 0C */ beq lbl_800A1CE8
/* 800A1CE0 0009EC20  28 00 00 F1 */ cmplwi r0, 0xf1
/* 800A1CE4 0009EC24  40 82 01 1C */ bne lbl_800A1E00
lbl_800A1CE8:
/* 800A1CE8 0009EC28  28 1E 00 00 */ cmplwi r30, 0
/* 800A1CEC 0009EC2C  41 82 00 18 */ beq lbl_800A1D04
/* 800A1CF0 0009EC30  38 1E FF FF */ addi r0, r30, -1
/* 800A1CF4 0009EC34  98 1F 2F A7 */ stb r0, 0x2fa7(r31)
/* 800A1CF8 0009EC38  D3 FF 34 18 */ stfs f31, 0x3418(r31)
/* 800A1CFC 0009EC3C  D3 DF 34 1C */ stfs f30, 0x341c(r31)
/* 800A1D00 0009EC40  48 00 00 F4 */ b lbl_800A1DF4
lbl_800A1D04:
/* 800A1D04 0009EC44  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800A1D08 0009EC48  FC 00 F8 00 */ fcmpu cr0, f0, f31
/* 800A1D0C 0009EC4C  40 82 00 0C */ bne lbl_800A1D18
/* 800A1D10 0009EC50  FC 00 F0 00 */ fcmpu cr0, f0, f30
/* 800A1D14 0009EC54  41 82 00 88 */ beq lbl_800A1D9C
lbl_800A1D18:
/* 800A1D18 0009EC58  A0 1F 1F BC */ lhz r0, 0x1fbc(r31)
/* 800A1D1C 0009EC5C  28 00 00 60 */ cmplwi r0, 0x60
/* 800A1D20 0009EC60  41 82 00 14 */ beq lbl_800A1D34
/* 800A1D24 0009EC64  48 1C 5B 49 */ bl cM_rnd__Fv
/* 800A1D28 0009EC68  C0 02 92 98 */ lfs f0, lbl_80452C98-_SDA2_BASE_(r2)
/* 800A1D2C 0009EC6C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800A1D30 0009EC70  40 80 00 14 */ bge lbl_800A1D44
lbl_800A1D34:
/* 800A1D34 0009EC74  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800A1D38 0009EC78  D0 1F 34 18 */ stfs f0, 0x3418(r31)
/* 800A1D3C 0009EC7C  D0 1F 34 1C */ stfs f0, 0x341c(r31)
/* 800A1D40 0009EC80  48 00 00 B4 */ b lbl_800A1DF4
lbl_800A1D44:
/* 800A1D44 0009EC84  C0 3F 34 18 */ lfs f1, 0x3418(r31)
/* 800A1D48 0009EC88  C0 5F 34 1C */ lfs f2, 0x341c(r31)
/* 800A1D4C 0009EC8C  48 1C 59 29 */ bl cM_atan2s__Fff
/* 800A1D50 0009EC90  7C 7E 1B 78 */ mr r30, r3
/* 800A1D54 0009EC94  C0 22 92 C4 */ lfs f1, lbl_80452CC4-_SDA2_BASE_(r2)
/* 800A1D58 0009EC98  48 1C 5B FD */ bl cM_rndF__Ff
/* 800A1D5C 0009EC9C  FC 00 08 1E */ fctiwz f0, f1
/* 800A1D60 0009ECA0  D8 01 00 10 */ stfd f0, 0x10(r1)
/* 800A1D64 0009ECA4  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800A1D68 0009ECA8  54 03 68 24 */ slwi r3, r0, 0xd
/* 800A1D6C 0009ECAC  38 03 60 00 */ addi r0, r3, 0x6000
/* 800A1D70 0009ECB0  7C 00 07 34 */ extsh r0, r0
/* 800A1D74 0009ECB4  7C 1E 02 14 */ add r0, r30, r0
/* 800A1D78 0009ECB8  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 800A1D7C 0009ECBC  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 800A1D80 0009ECC0  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 800A1D84 0009ECC4  7C 03 04 2E */ lfsx f0, r3, r0
/* 800A1D88 0009ECC8  D0 1F 34 18 */ stfs f0, 0x3418(r31)
/* 800A1D8C 0009ECCC  7C 63 02 14 */ add r3, r3, r0
/* 800A1D90 0009ECD0  C0 03 00 04 */ lfs f0, 4(r3)
/* 800A1D94 0009ECD4  D0 1F 34 1C */ stfs f0, 0x341c(r31)
/* 800A1D98 0009ECD8  48 00 00 5C */ b lbl_800A1DF4
lbl_800A1D9C:
/* 800A1D9C 0009ECDC  A0 1F 1F BC */ lhz r0, 0x1fbc(r31)
/* 800A1DA0 0009ECE0  28 00 00 60 */ cmplwi r0, 0x60
/* 800A1DA4 0009ECE4  40 82 00 1C */ bne lbl_800A1DC0
/* 800A1DA8 0009ECE8  80 1F 28 30 */ lwz r0, 0x2830(r31)
/* 800A1DAC 0009ECEC  28 00 00 00 */ cmplwi r0, 0
/* 800A1DB0 0009ECF0  41 82 00 10 */ beq lbl_800A1DC0
/* 800A1DB4 0009ECF4  C0 02 92 BC */ lfs f0, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800A1DB8 0009ECF8  D0 1F 34 18 */ stfs f0, 0x3418(r31)
/* 800A1DBC 0009ECFC  48 00 00 38 */ b lbl_800A1DF4
lbl_800A1DC0:
/* 800A1DC0 0009ED00  C0 22 93 8C */ lfs f1, lbl_80452D8C-_SDA2_BASE_(r2)
/* 800A1DC4 0009ED04  48 1C 5B 91 */ bl cM_rndF__Ff
/* 800A1DC8 0009ED08  FC 00 08 1E */ fctiwz f0, f1
/* 800A1DCC 0009ED0C  D8 01 00 10 */ stfd f0, 0x10(r1)
/* 800A1DD0 0009ED10  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800A1DD4 0009ED14  54 00 6C 24 */ rlwinm r0, r0, 0xd, 0x10, 0x12
/* 800A1DD8 0009ED18  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 800A1DDC 0009ED1C  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 800A1DE0 0009ED20  7C 03 04 2E */ lfsx f0, r3, r0
/* 800A1DE4 0009ED24  D0 1F 34 18 */ stfs f0, 0x3418(r31)
/* 800A1DE8 0009ED28  7C 63 02 14 */ add r3, r3, r0
/* 800A1DEC 0009ED2C  C0 03 00 04 */ lfs f0, 4(r3)
/* 800A1DF0 0009ED30  D0 1F 34 1C */ stfs f0, 0x341c(r31)
lbl_800A1DF4:
/* 800A1DF4 0009ED34  C0 1F 34 18 */ lfs f0, 0x3418(r31)
/* 800A1DF8 0009ED38  C0 9F 34 1C */ lfs f4, 0x341c(r31)
/* 800A1DFC 0009ED3C  48 00 00 48 */ b lbl_800A1E44
lbl_800A1E00:
/* 800A1E00 0009ED40  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800A1E04 0009ED44  80 7F 21 80 */ lwz r3, 0x2180(r31)
/* 800A1E08 0009ED48  D0 03 00 FC */ stfs f0, 0xfc(r3)
/* 800A1E0C 0009ED4C  80 7F 21 84 */ lwz r3, 0x2184(r31)
/* 800A1E10 0009ED50  D0 03 00 FC */ stfs f0, 0xfc(r3)
/* 800A1E14 0009ED54  80 7F 21 80 */ lwz r3, 0x2180(r31)
/* 800A1E18 0009ED58  D0 03 01 00 */ stfs f0, 0x100(r3)
/* 800A1E1C 0009ED5C  80 7F 21 84 */ lwz r3, 0x2184(r31)
/* 800A1E20 0009ED60  D0 03 01 00 */ stfs f0, 0x100(r3)
/* 800A1E24 0009ED64  88 0D 8A 48 */ lbz r0, lbl_80450FC8-_SDA_BASE_(r13)
/* 800A1E28 0009ED68  28 00 00 00 */ cmplwi r0, 0
/* 800A1E2C 0009ED6C  41 82 01 3C */ beq lbl_800A1F68
/* 800A1E30 0009ED70  38 00 00 00 */ li r0, 0
/* 800A1E34 0009ED74  98 0D 8A 48 */ stb r0, lbl_80450FC8-_SDA_BASE_(r13)
/* 800A1E38 0009ED78  38 00 00 03 */ li r0, 3
/* 800A1E3C 0009ED7C  98 0D 8A 49 */ stb r0, lbl_80450FC9-_SDA_BASE_(r13)
/* 800A1E40 0009ED80  48 00 01 28 */ b lbl_800A1F68
lbl_800A1E44:
/* 800A1E44 0009ED84  88 0D 8A 49 */ lbz r0, lbl_80450FC9-_SDA_BASE_(r13)
/* 800A1E48 0009ED88  28 00 00 00 */ cmplwi r0, 0
/* 800A1E4C 0009ED8C  40 82 01 1C */ bne lbl_800A1F68
/* 800A1E50 0009ED90  C0 42 92 BC */ lfs f2, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800A1E54 0009ED94  FC 00 10 40 */ fcmpo cr0, f0, f2
/* 800A1E58 0009ED98  40 80 00 08 */ bge lbl_800A1E60
/* 800A1E5C 0009ED9C  48 00 00 18 */ b lbl_800A1E74
lbl_800A1E60:
/* 800A1E60 0009EDA0  C0 42 92 B8 */ lfs f2, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800A1E64 0009EDA4  FC 00 10 40 */ fcmpo cr0, f0, f2
/* 800A1E68 0009EDA8  40 81 00 08 */ ble lbl_800A1E70
/* 800A1E6C 0009EDAC  48 00 00 08 */ b lbl_800A1E74
lbl_800A1E70:
/* 800A1E70 0009EDB0  FC 40 00 90 */ fmr f2, f0
lbl_800A1E74:
/* 800A1E74 0009EDB4  C0 62 92 BC */ lfs f3, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800A1E78 0009EDB8  FC 04 18 40 */ fcmpo cr0, f4, f3
/* 800A1E7C 0009EDBC  40 80 00 08 */ bge lbl_800A1E84
/* 800A1E80 0009EDC0  48 00 00 18 */ b lbl_800A1E98
lbl_800A1E84:
/* 800A1E84 0009EDC4  C0 62 92 B8 */ lfs f3, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800A1E88 0009EDC8  FC 04 18 40 */ fcmpo cr0, f4, f3
/* 800A1E8C 0009EDCC  40 81 00 08 */ ble lbl_800A1E94
/* 800A1E90 0009EDD0  48 00 00 08 */ b lbl_800A1E98
lbl_800A1E94:
/* 800A1E94 0009EDD4  FC 60 20 90 */ fmr f3, f4
lbl_800A1E98:
/* 800A1E98 0009EDD8  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800A1E9C 0009EDDC  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 800A1EA0 0009EDE0  40 81 00 18 */ ble lbl_800A1EB8
/* 800A1EA4 0009EDE4  C0 02 94 E0 */ lfs f0, lbl_80452EE0-_SDA2_BASE_(r2)
/* 800A1EA8 0009EDE8  EC 20 00 B2 */ fmuls f1, f0, f2
/* 800A1EAC 0009EDEC  C0 02 93 EC */ lfs f0, lbl_80452DEC-_SDA2_BASE_(r2)
/* 800A1EB0 0009EDF0  EF C0 00 B2 */ fmuls f30, f0, f2
/* 800A1EB4 0009EDF4  48 00 00 14 */ b lbl_800A1EC8
lbl_800A1EB8:
/* 800A1EB8 0009EDF8  C0 02 93 EC */ lfs f0, lbl_80452DEC-_SDA2_BASE_(r2)
/* 800A1EBC 0009EDFC  EC 20 00 B2 */ fmuls f1, f0, f2
/* 800A1EC0 0009EE00  C0 02 94 E0 */ lfs f0, lbl_80452EE0-_SDA2_BASE_(r2)
/* 800A1EC4 0009EE04  EF C0 00 B2 */ fmuls f30, f0, f2
lbl_800A1EC8:
/* 800A1EC8 0009EE08  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800A1ECC 0009EE0C  FC 03 00 40 */ fcmpo cr0, f3, f0
/* 800A1ED0 0009EE10  40 81 00 10 */ ble lbl_800A1EE0
/* 800A1ED4 0009EE14  C0 02 93 F8 */ lfs f0, lbl_80452DF8-_SDA2_BASE_(r2)
/* 800A1ED8 0009EE18  EF E0 00 F2 */ fmuls f31, f0, f3
/* 800A1EDC 0009EE1C  48 00 00 0C */ b lbl_800A1EE8
lbl_800A1EE0:
/* 800A1EE0 0009EE20  C0 02 93 A0 */ lfs f0, lbl_80452DA0-_SDA2_BASE_(r2)
/* 800A1EE4 0009EE24  EF E0 00 F2 */ fmuls f31, f0, f3
lbl_800A1EE8:
/* 800A1EE8 0009EE28  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 800A1EEC 0009EE2C  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800A1EF0 0009EE30  41 82 00 10 */ beq lbl_800A1F00
/* 800A1EF4 0009EE34  C0 02 92 BC */ lfs f0, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800A1EF8 0009EE38  EC 21 00 32 */ fmuls f1, f1, f0
/* 800A1EFC 0009EE3C  EF DE 00 32 */ fmuls f30, f30, f0
lbl_800A1F00:
/* 800A1F00 0009EE40  38 00 00 01 */ li r0, 1
/* 800A1F04 0009EE44  98 0D 8A 48 */ stb r0, lbl_80450FC8-_SDA_BASE_(r13)
/* 800A1F08 0009EE48  80 7F 21 80 */ lwz r3, 0x2180(r31)
/* 800A1F0C 0009EE4C  38 63 00 FC */ addi r3, r3, 0xfc
/* 800A1F10 0009EE50  C0 42 92 98 */ lfs f2, lbl_80452C98-_SDA2_BASE_(r2)
/* 800A1F14 0009EE54  C0 62 93 A0 */ lfs f3, lbl_80452DA0-_SDA2_BASE_(r2)
/* 800A1F18 0009EE58  C0 82 98 1C */ lfs f4, lbl_8045321C-_SDA2_BASE_(r2)
/* 800A1F1C 0009EE5C  48 1C DA 61 */ bl cLib_addCalc__FPfffff
/* 800A1F20 0009EE60  80 7F 21 84 */ lwz r3, 0x2184(r31)
/* 800A1F24 0009EE64  38 63 00 FC */ addi r3, r3, 0xfc
/* 800A1F28 0009EE68  FC 20 F0 90 */ fmr f1, f30
/* 800A1F2C 0009EE6C  C0 42 92 98 */ lfs f2, lbl_80452C98-_SDA2_BASE_(r2)
/* 800A1F30 0009EE70  C0 62 93 A0 */ lfs f3, lbl_80452DA0-_SDA2_BASE_(r2)
/* 800A1F34 0009EE74  C0 82 98 1C */ lfs f4, lbl_8045321C-_SDA2_BASE_(r2)
/* 800A1F38 0009EE78  48 1C DA 45 */ bl cLib_addCalc__FPfffff
/* 800A1F3C 0009EE7C  80 7F 21 80 */ lwz r3, 0x2180(r31)
/* 800A1F40 0009EE80  38 63 01 00 */ addi r3, r3, 0x100
/* 800A1F44 0009EE84  FC 20 F8 90 */ fmr f1, f31
/* 800A1F48 0009EE88  C0 42 92 98 */ lfs f2, lbl_80452C98-_SDA2_BASE_(r2)
/* 800A1F4C 0009EE8C  C0 62 98 20 */ lfs f3, lbl_80453220-_SDA2_BASE_(r2)
/* 800A1F50 0009EE90  C0 82 94 44 */ lfs f4, lbl_80452E44-_SDA2_BASE_(r2)
/* 800A1F54 0009EE94  48 1C DA 29 */ bl cLib_addCalc__FPfffff
/* 800A1F58 0009EE98  80 7F 21 80 */ lwz r3, 0x2180(r31)
/* 800A1F5C 0009EE9C  C0 03 01 00 */ lfs f0, 0x100(r3)
/* 800A1F60 0009EEA0  80 7F 21 84 */ lwz r3, 0x2184(r31)
/* 800A1F64 0009EEA4  D0 03 01 00 */ stfs f0, 0x100(r3)
lbl_800A1F68:
/* 800A1F68 0009EEA8  E3 E1 00 48 */ psq_l f31, 72(r1), 0, 0
/* 800A1F6C 0009EEAC  CB E1 00 40 */ lfd f31, 0x40(r1)
/* 800A1F70 0009EEB0  E3 C1 00 38 */ psq_l f30, 56(r1), 0, 0
/* 800A1F74 0009EEB4  CB C1 00 30 */ lfd f30, 0x30(r1)
/* 800A1F78 0009EEB8  39 61 00 30 */ addi r11, r1, 0x30
/* 800A1F7C 0009EEBC  48 2C 02 A5 */ bl _restgpr_27
/* 800A1F80 0009EEC0  80 01 00 54 */ lwz r0, 0x54(r1)
/* 800A1F84 0009EEC4  7C 08 03 A6 */ mtlr r0
/* 800A1F88 0009EEC8  38 21 00 50 */ addi r1, r1, 0x50
/* 800A1F8C 0009EECC  4E 80 00 20 */ blr
