/* 80106F00 00103E40  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80106F04 00103E44  7C 08 02 A6 */ mflr r0
/* 80106F08 00103E48  90 01 00 14 */ stw r0, 0x14(r1)
/* 80106F0C 00103E4C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80106F10 00103E50  93 C1 00 08 */ stw r30, 8(r1)
/* 80106F14 00103E54  7C 7E 1B 78 */ mr r30, r3
/* 80106F18 00103E58  38 80 00 01 */ li r4, 1
/* 80106F1C 00103E5C  4B FF EC 3D */ bl daAlink_c_NS_boardCommon
/* 80106F20 00103E60  2C 03 00 00 */ cmpwi r3, 0
/* 80106F24 00103E64  41 82 00 0C */ beq lbl_80106F30
/* 80106F28 00103E68  38 60 00 01 */ li r3, 1
/* 80106F2C 00103E6C  48 00 01 1C */ b lbl_80107048
lbl_80106F30:
/* 80106F30 00103E70  A8 1E 30 10 */ lha r0, 0x3010(r30)
/* 80106F34 00103E74  2C 00 00 00 */ cmpwi r0, 0
/* 80106F38 00103E78  41 82 00 18 */ beq lbl_80106F50
/* 80106F3C 00103E7C  80 1E 05 84 */ lwz r0, 0x584(r30)
/* 80106F40 00103E80  60 00 00 40 */ ori r0, r0, 0x40
/* 80106F44 00103E84  90 1E 05 84 */ stw r0, 0x584(r30)
/* 80106F48 00103E88  38 00 00 04 */ li r0, 4
/* 80106F4C 00103E8C  B0 1E 30 08 */ sth r0, 0x3008(r30)
lbl_80106F50:
/* 80106F50 00103E90  7F C3 F3 78 */ mr r3, r30
/* 80106F54 00103E94  4B FF F6 39 */ bl daAlink_c_NS_checkNextActionBoard
/* 80106F58 00103E98  2C 03 00 00 */ cmpwi r3, 0
/* 80106F5C 00103E9C  40 82 00 E8 */ bne lbl_80107044
/* 80106F60 00103EA0  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 80106F64 00103EA4  7F E3 FB 78 */ mr r3, r31
/* 80106F68 00103EA8  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80106F6C 00103EAC  48 22 14 C1 */ bl J3DFrameCtrl_NS_checkPass
/* 80106F70 00103EB0  2C 03 00 00 */ cmpwi r3, 0
/* 80106F74 00103EB4  41 82 00 90 */ beq lbl_80107004
/* 80106F78 00103EB8  C0 3E 33 AC */ lfs f1, 0x33ac(r30)
/* 80106F7C 00103EBC  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 80106F80 00103EC0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80106F84 00103EC4  40 81 00 64 */ ble lbl_80106FE8
/* 80106F88 00103EC8  A8 7E 2F E0 */ lha r3, 0x2fe0(r30)
/* 80106F8C 00103ECC  48 25 E1 45 */ bl abs
/* 80106F90 00103ED0  2C 03 20 00 */ cmpwi r3, 0x2000
/* 80106F94 00103ED4  40 80 00 54 */ bge lbl_80106FE8
/* 80106F98 00103ED8  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 80106F9C 00103EDC  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80106FA0 00103EE0  40 82 00 48 */ bne lbl_80106FE8
/* 80106FA4 00103EE4  80 1E 19 9C */ lwz r0, 0x199c(r30)
/* 80106FA8 00103EE8  54 00 06 B5 */ rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80106FAC 00103EEC  41 82 00 3C */ beq lbl_80106FE8
/* 80106FB0 00103EF0  A8 7E 30 0E */ lha r3, 0x300e(r30)
/* 80106FB4 00103EF4  A8 1E 31 22 */ lha r0, 0x3122(r30)
/* 80106FB8 00103EF8  7C 03 00 00 */ cmpw r3, r0
/* 80106FBC 00103EFC  40 80 00 2C */ bge lbl_80106FE8
/* 80106FC0 00103F00  C0 3E 33 98 */ lfs f1, 0x3398(r30)
/* 80106FC4 00103F04  3C 60 80 39 */ lis r3, lbl_8038E870@ha
/* 80106FC8 00103F08  38 63 E8 70 */ addi r3, r3, lbl_8038E870@l
/* 80106FCC 00103F0C  C0 03 00 8C */ lfs f0, 0x8c(r3)
/* 80106FD0 00103F10  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80106FD4 00103F14  4C 40 13 82 */ cror 2, 0, 2
/* 80106FD8 00103F18  40 82 00 10 */ bne lbl_80106FE8
/* 80106FDC 00103F1C  38 00 00 00 */ li r0, 0
/* 80106FE0 00103F20  B0 1E 30 12 */ sth r0, 0x3012(r30)
/* 80106FE4 00103F24  48 00 00 60 */ b lbl_80107044
lbl_80106FE8:
/* 80106FE8 00103F28  7F C3 F3 78 */ mr r3, r30
/* 80106FEC 00103F2C  38 80 00 00 */ li r4, 0
/* 80106FF0 00103F30  4B FF F5 45 */ bl daAlink_c_NS_setCommonBoardAnime
/* 80106FF4 00103F34  7F C3 F3 78 */ mr r3, r30
/* 80106FF8 00103F38  38 80 00 00 */ li r4, 0
/* 80106FFC 00103F3C  4B FF FA 3D */ bl daAlink_c_NS_procBoardWaitInit
/* 80107000 00103F40  48 00 00 44 */ b lbl_80107044
lbl_80107004:
/* 80107004 00103F44  7F E3 FB 78 */ mr r3, r31
/* 80107008 00103F48  C0 22 93 74 */ lfs f1, lbl_80452D74-_SDA2_BASE_(r2)
/* 8010700C 00103F4C  48 22 14 21 */ bl J3DFrameCtrl_NS_checkPass
/* 80107010 00103F50  2C 03 00 00 */ cmpwi r3, 0
/* 80107014 00103F54  41 82 00 30 */ beq lbl_80107044
/* 80107018 00103F58  C0 3E 33 98 */ lfs f1, 0x3398(r30)
/* 8010701C 00103F5C  3C 60 80 39 */ lis r3, lbl_8038E870@ha
/* 80107020 00103F60  38 63 E8 70 */ addi r3, r3, lbl_8038E870@l
/* 80107024 00103F64  C0 03 00 54 */ lfs f0, 0x54(r3)
/* 80107028 00103F68  EC 01 00 2A */ fadds f0, f1, f0
/* 8010702C 00103F6C  D0 1E 33 98 */ stfs f0, 0x3398(r30)
/* 80107030 00103F70  C0 1E 33 98 */ lfs f0, 0x3398(r30)
/* 80107034 00103F74  C0 23 00 8C */ lfs f1, 0x8c(r3)
/* 80107038 00103F78  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 8010703C 00103F7C  40 81 00 08 */ ble lbl_80107044
/* 80107040 00103F80  D0 3E 33 98 */ stfs f1, 0x3398(r30)
lbl_80107044:
/* 80107044 00103F84  38 60 00 01 */ li r3, 1
lbl_80107048:
/* 80107048 00103F88  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8010704C 00103F8C  83 C1 00 08 */ lwz r30, 8(r1)
/* 80107050 00103F90  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80107054 00103F94  7C 08 03 A6 */ mtlr r0
/* 80107058 00103F98  38 21 00 10 */ addi r1, r1, 0x10
/* 8010705C 00103F9C  4E 80 00 20 */ blr
