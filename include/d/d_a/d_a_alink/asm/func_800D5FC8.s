/* 800D5FC8 000D2F08  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800D5FCC 000D2F0C  7C 08 02 A6 */ mflr r0
/* 800D5FD0 000D2F10  90 01 00 14 */ stw r0, 0x14(r1)
/* 800D5FD4 000D2F14  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800D5FD8 000D2F18  93 C1 00 08 */ stw r30, 8(r1)
/* 800D5FDC 000D2F1C  7C 7E 1B 78 */ mr r30, r3
/* 800D5FE0 000D2F20  A8 03 30 0E */ lha r0, 0x300e(r3)
/* 800D5FE4 000D2F24  2C 00 00 00 */ cmpwi r0, 0
/* 800D5FE8 000D2F28  40 82 00 80 */ bne lbl_800D6068
/* 800D5FEC 000D2F2C  38 7E 33 98 */ addi r3, r30, 0x3398
/* 800D5FF0 000D2F30  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800D5FF4 000D2F34  C0 5E 34 78 */ lfs f2, 0x3478(r30)
/* 800D5FF8 000D2F38  48 19 A7 49 */ bl cLib_chaseF__FPfff
/* 800D5FFC 000D2F3C  C0 3E 04 FC */ lfs f1, 0x4fc(r30)
/* 800D6000 000D2F40  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800D6004 000D2F44  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800D6008 000D2F48  4C 40 13 82 */ cror 2, 0, 2
/* 800D600C 000D2F4C  40 82 01 08 */ bne lbl_800D6114
/* 800D6010 000D2F50  7F C3 F3 78 */ mr r3, r30
/* 800D6014 000D2F54  38 80 00 7D */ li r4, 0x7d
/* 800D6018 000D2F58  3C A0 80 39 */ lis r5, lbl_8038DDB8@ha
/* 800D601C 000D2F5C  38 A5 DD B8 */ addi r5, r5, lbl_8038DDB8@l
/* 800D6020 000D2F60  38 A5 00 14 */ addi r5, r5, 0x14
/* 800D6024 000D2F64  4B FD 70 D1 */ bl daAlink_c_NS_setSingleAnimeParam
/* 800D6028 000D2F68  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800D602C 000D2F6C  D0 3E 33 98 */ stfs f1, 0x3398(r30)
/* 800D6030 000D2F70  D0 3E 04 FC */ stfs f1, 0x4fc(r30)
/* 800D6034 000D2F74  7F C3 F3 78 */ mr r3, r30
/* 800D6038 000D2F78  C0 5E 05 34 */ lfs f2, 0x534(r30)
/* 800D603C 000D2F7C  38 80 00 00 */ li r4, 0
/* 800D6040 000D2F80  4B FE 57 31 */ bl setSpecialGravity__9daAlink_cFffi
/* 800D6044 000D2F84  38 00 00 01 */ li r0, 1
/* 800D6048 000D2F88  B0 1E 30 0E */ sth r0, 0x300e(r30)
/* 800D604C 000D2F8C  7F C3 F3 78 */ mr r3, r30
/* 800D6050 000D2F90  48 04 E0 F5 */ bl daAlink_c_NS_setCutWaterDropEffect
/* 800D6054 000D2F94  7F C3 F3 78 */ mr r3, r30
/* 800D6058 000D2F98  3C 80 00 01 */ lis r4, 0x00010099@ha
/* 800D605C 000D2F9C  38 84 00 99 */ addi r4, r4, 0x00010099@l
/* 800D6060 000D2FA0  4B FF C2 25 */ bl daAlink_c_NS_setSwordVoiceSe
/* 800D6064 000D2FA4  48 00 00 B0 */ b lbl_800D6114
lbl_800D6068:
/* 800D6068 000D2FA8  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 800D606C 000D2FAC  C0 3E 33 98 */ lfs f1, 0x3398(r30)
/* 800D6070 000D2FB0  C0 02 93 70 */ lfs f0, lbl_80452D70-_SDA2_BASE_(r2)
/* 800D6074 000D2FB4  EC 01 00 32 */ fmuls f0, f1, f0
/* 800D6078 000D2FB8  D0 1E 33 98 */ stfs f0, 0x3398(r30)
/* 800D607C 000D2FBC  7F E3 FB 78 */ mr r3, r31
/* 800D6080 000D2FC0  C0 22 93 74 */ lfs f1, lbl_80452D74-_SDA2_BASE_(r2)
/* 800D6084 000D2FC4  48 25 23 A9 */ bl J3DFrameCtrl_NS_checkPass
/* 800D6088 000D2FC8  2C 03 00 00 */ cmpwi r3, 0
/* 800D608C 000D2FCC  41 82 00 24 */ beq lbl_800D60B0
/* 800D6090 000D2FD0  3C 60 80 39 */ lis r3, lbl_8038DDB8@ha
/* 800D6094 000D2FD4  38 63 DD B8 */ addi r3, r3, lbl_8038DDB8@l
/* 800D6098 000D2FD8  C0 03 00 48 */ lfs f0, 0x48(r3)
/* 800D609C 000D2FDC  D0 1E 04 FC */ stfs f0, 0x4fc(r30)
/* 800D60A0 000D2FE0  C0 03 00 4C */ lfs f0, 0x4c(r3)
/* 800D60A4 000D2FE4  D0 1E 33 98 */ stfs f0, 0x3398(r30)
/* 800D60A8 000D2FE8  7F C3 F3 78 */ mr r3, r30
/* 800D60AC 000D2FEC  4B FE 55 99 */ bl daAlink_c_NS_initGravity
lbl_800D60B0:
/* 800D60B0 000D2FF0  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800D60B4 000D2FF4  3C 60 80 39 */ lis r3, lbl_8038DDB8@ha
/* 800D60B8 000D2FF8  38 63 DD B8 */ addi r3, r3, lbl_8038DDB8@l
/* 800D60BC 000D2FFC  C0 03 00 50 */ lfs f0, 0x50(r3)
/* 800D60C0 000D3000  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800D60C4 000D3004  4C 41 13 82 */ cror 2, 1, 2
/* 800D60C8 000D3008  40 82 00 38 */ bne lbl_800D6100
/* 800D60CC 000D300C  C0 03 00 54 */ lfs f0, 0x54(r3)
/* 800D60D0 000D3010  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800D60D4 000D3014  40 80 00 2C */ bge lbl_800D6100
/* 800D60D8 000D3018  80 1E 05 70 */ lwz r0, 0x570(r30)
/* 800D60DC 000D301C  54 00 06 73 */ rlwinm. r0, r0, 0, 0x19, 0x19
/* 800D60E0 000D3020  40 82 00 14 */ bne lbl_800D60F4
/* 800D60E4 000D3024  7F C3 F3 78 */ mr r3, r30
/* 800D60E8 000D3028  3C 80 00 02 */ lis r4, 0x00020003@ha
/* 800D60EC 000D302C  38 84 00 03 */ addi r4, r4, 0x00020003@l
/* 800D60F0 000D3030  4B FE 8F FD */ bl daAlink_c_NS_seStartSwordCut
lbl_800D60F4:
/* 800D60F4 000D3034  80 1E 05 80 */ lwz r0, 0x580(r30)
/* 800D60F8 000D3038  60 00 00 02 */ ori r0, r0, 2
/* 800D60FC 000D303C  90 1E 05 80 */ stw r0, 0x580(r30)
lbl_800D6100:
/* 800D6100 000D3040  80 1E 19 9C */ lwz r0, 0x199c(r30)
/* 800D6104 000D3044  54 00 06 B5 */ rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800D6108 000D3048  41 82 00 0C */ beq lbl_800D6114
/* 800D610C 000D304C  7F C3 F3 78 */ mr r3, r30
/* 800D6110 000D3050  48 00 00 21 */ bl daAlink_c_NS_procCutHeadLandInit
lbl_800D6114:
/* 800D6114 000D3054  38 60 00 01 */ li r3, 1
/* 800D6118 000D3058  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800D611C 000D305C  83 C1 00 08 */ lwz r30, 8(r1)
/* 800D6120 000D3060  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800D6124 000D3064  7C 08 03 A6 */ mtlr r0
/* 800D6128 000D3068  38 21 00 10 */ addi r1, r1, 0x10
/* 800D612C 000D306C  4E 80 00 20 */ blr
