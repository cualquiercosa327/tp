/* 8010FC38 0010CB78  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 8010FC3C 0010CB7C  7C 08 02 A6 */ mflr r0
/* 8010FC40 0010CB80  90 01 00 24 */ stw r0, 0x24(r1)
/* 8010FC44 0010CB84  39 61 00 20 */ addi r11, r1, 0x20
/* 8010FC48 0010CB88  48 25 25 95 */ bl _savegpr_29
/* 8010FC4C 0010CB8C  7C 7D 1B 78 */ mr r29, r3
/* 8010FC50 0010CB90  7C 9F 23 79 */ or. r31, r4, r4
/* 8010FC54 0010CB94  7C BE 2B 78 */ mr r30, r5
/* 8010FC58 0010CB98  41 82 00 20 */ beq lbl_8010FC78
/* 8010FC5C 0010CB9C  A0 1D 2F DC */ lhz r0, 0x2fdc(r29)
/* 8010FC60 0010CBA0  28 00 00 48 */ cmplwi r0, 0x48
/* 8010FC64 0010CBA4  41 82 00 14 */ beq lbl_8010FC78
/* 8010FC68 0010CBA8  38 80 00 B5 */ li r4, 0xb5
/* 8010FC6C 0010CBAC  38 A0 00 00 */ li r5, 0
/* 8010FC70 0010CBB0  4B FB 31 6D */ bl daAlink_c_NS_procPreActionUnequipInit
/* 8010FC74 0010CBB4  48 00 02 CC */ b lbl_8010FF40
lbl_8010FC78:
/* 8010FC78 0010CBB8  28 1F 00 00 */ cmplwi r31, 0
/* 8010FC7C 0010CBBC  40 82 00 24 */ bne lbl_8010FCA0
/* 8010FC80 0010CBC0  88 7D 2F 9C */ lbz r3, 0x2f9c(r29)
/* 8010FC84 0010CBC4  4B F1 E2 99 */ bl dComIfGp_getSelectItem
/* 8010FC88 0010CBC8  54 60 06 3E */ clrlwi r0, r3, 0x18
/* 8010FC8C 0010CBCC  28 00 00 60 */ cmplwi r0, 0x60
/* 8010FC90 0010CBD0  41 82 00 10 */ beq lbl_8010FCA0
/* 8010FC94 0010CBD4  7F A3 EB 78 */ mr r3, r29
/* 8010FC98 0010CBD8  4B FA 5C 55 */ bl daAlink_c_NS_checkWaitAction
/* 8010FC9C 0010CBDC  48 00 02 A4 */ b lbl_8010FF40
lbl_8010FCA0:
/* 8010FCA0 0010CBE0  7F A3 EB 78 */ mr r3, r29
/* 8010FCA4 0010CBE4  38 80 00 B5 */ li r4, 0xb5
/* 8010FCA8 0010CBE8  4B FB 22 C5 */ bl daAlink_c_NS_commonProcInit
/* 8010FCAC 0010CBEC  A8 1D 04 E6 */ lha r0, 0x4e6(r29)
/* 8010FCB0 0010CBF0  B0 1D 04 DE */ sth r0, 0x4de(r29)
/* 8010FCB4 0010CBF4  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8010FCB8 0010CBF8  D0 1D 33 98 */ stfs f0, 0x3398(r29)
/* 8010FCBC 0010CBFC  38 00 00 04 */ li r0, 4
/* 8010FCC0 0010CC00  98 1D 2F 98 */ stb r0, 0x2f98(r29)
/* 8010FCC4 0010CC04  B3 DD 30 10 */ sth r30, 0x3010(r29)
/* 8010FCC8 0010CC08  28 1F 00 00 */ cmplwi r31, 0
/* 8010FCCC 0010CC0C  41 82 00 14 */ beq lbl_8010FCE0
/* 8010FCD0 0010CC10  38 7D 28 0C */ addi r3, r29, 0x280c
/* 8010FCD4 0010CC14  7F E4 FB 78 */ mr r4, r31
/* 8010FCD8 0010CC18  48 04 EF E1 */ bl daPy_actorKeep_c_NS_setData
/* 8010FCDC 0010CC1C  48 00 00 1C */ b lbl_8010FCF8
lbl_8010FCE0:
/* 8010FCE0 0010CC20  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8010FCE4 0010CC24  38 83 61 C0 */ addi r4, r3, g_dComIfG_gameInfo@l
/* 8010FCE8 0010CC28  38 64 5B 54 */ addi r3, r4, 0x5b54
/* 8010FCEC 0010CC2C  80 84 5B 64 */ lwz r4, 0x5b64(r4)
/* 8010FCF0 0010CC30  4B F6 3C 9D */ bl dAttCatch_c_NS_convPId
/* 8010FCF4 0010CC34  7C 7F 1B 78 */ mr r31, r3
lbl_8010FCF8:
/* 8010FCF8 0010CC38  28 1F 00 00 */ cmplwi r31, 0
/* 8010FCFC 0010CC3C  41 82 00 30 */ beq lbl_8010FD2C
/* 8010FD00 0010CC40  C0 5F 05 54 */ lfs f2, 0x554(r31)
/* 8010FD04 0010CC44  C0 3D 38 38 */ lfs f1, 0x3838(r29)
/* 8010FD08 0010CC48  C0 02 92 E0 */ lfs f0, lbl_80452CE0-_SDA2_BASE_(r2)
/* 8010FD0C 0010CC4C  EC 01 00 28 */ fsubs f0, f1, f0
/* 8010FD10 0010CC50  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 8010FD14 0010CC54  40 81 00 0C */ ble lbl_8010FD20
/* 8010FD18 0010CC58  38 60 00 00 */ li r3, 0
/* 8010FD1C 0010CC5C  48 00 00 08 */ b lbl_8010FD24
lbl_8010FD20:
/* 8010FD20 0010CC60  38 60 00 01 */ li r3, 1
lbl_8010FD24:
/* 8010FD24 0010CC64  AB DF 00 08 */ lha r30, 8(r31)
/* 8010FD28 0010CC68  48 00 00 40 */ b lbl_8010FD68
lbl_8010FD2C:
/* 8010FD2C 0010CC6C  88 1D 2F BC */ lbz r0, 0x2fbc(r29)
/* 8010FD30 0010CC70  28 00 00 0B */ cmplwi r0, 0xb
/* 8010FD34 0010CC74  41 82 00 2C */ beq lbl_8010FD60
/* 8010FD38 0010CC78  28 00 00 06 */ cmplwi r0, 6
/* 8010FD3C 0010CC7C  41 82 00 24 */ beq lbl_8010FD60
/* 8010FD40 0010CC80  C0 5D 33 B4 */ lfs f2, 0x33b4(r29)
/* 8010FD44 0010CC84  C0 22 93 30 */ lfs f1, lbl_80452D30-_SDA2_BASE_(r2)
/* 8010FD48 0010CC88  C0 1D 04 D4 */ lfs f0, 0x4d4(r29)
/* 8010FD4C 0010CC8C  EC 01 00 2A */ fadds f0, f1, f0
/* 8010FD50 0010CC90  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 8010FD54 0010CC94  40 81 00 0C */ ble lbl_8010FD60
/* 8010FD58 0010CC98  38 60 00 01 */ li r3, 1
/* 8010FD5C 0010CC9C  48 00 00 08 */ b lbl_8010FD64
lbl_8010FD60:
/* 8010FD60 0010CCA0  38 60 00 00 */ li r3, 0
lbl_8010FD64:
/* 8010FD64 0010CCA4  3B C0 00 FD */ li r30, 0xfd
lbl_8010FD68:
/* 8010FD68 0010CCA8  7F C0 07 34 */ extsh r0, r30
/* 8010FD6C 0010CCAC  2C 00 01 1E */ cmpwi r0, 0x11e
/* 8010FD70 0010CCB0  41 82 00 20 */ beq lbl_8010FD90
/* 8010FD74 0010CCB4  38 1E FE DE */ addi r0, r30, -290
/* 8010FD78 0010CCB8  54 00 04 3E */ clrlwi r0, r0, 0x10
/* 8010FD7C 0010CCBC  28 00 00 01 */ cmplwi r0, 1
/* 8010FD80 0010CCC0  40 81 00 10 */ ble lbl_8010FD90
/* 8010FD84 0010CCC4  A0 1D 2F DC */ lhz r0, 0x2fdc(r29)
/* 8010FD88 0010CCC8  28 00 00 48 */ cmplwi r0, 0x48
/* 8010FD8C 0010CCCC  40 82 00 FC */ bne lbl_8010FE88
lbl_8010FD90:
/* 8010FD90 0010CCD0  7F A3 EB 78 */ mr r3, r29
/* 8010FD94 0010CCD4  38 80 01 0A */ li r4, 0x10a
/* 8010FD98 0010CCD8  3C A0 80 39 */ lis r5, lbl_8038E90C@ha
/* 8010FD9C 0010CCDC  38 A5 E9 0C */ addi r5, r5, lbl_8038E90C@l
/* 8010FDA0 0010CCE0  38 A5 00 A0 */ addi r5, r5, 0xa0
/* 8010FDA4 0010CCE4  4B F9 D3 51 */ bl daAlink_c_NS_setSingleAnimeParam
/* 8010FDA8 0010CCE8  A0 1D 2F DC */ lhz r0, 0x2fdc(r29)
/* 8010FDAC 0010CCEC  28 00 00 48 */ cmplwi r0, 0x48
/* 8010FDB0 0010CCF0  40 82 00 3C */ bne lbl_8010FDEC
/* 8010FDB4 0010CCF4  80 1D 05 78 */ lwz r0, 0x578(r29)
/* 8010FDB8 0010CCF8  64 00 10 00 */ oris r0, r0, 0x1000
/* 8010FDBC 0010CCFC  90 1D 05 78 */ stw r0, 0x578(r29)
/* 8010FDC0 0010CD00  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8010FDC4 0010CD04  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8010FDC8 0010CD08  80 63 5D 3C */ lwz r3, 0x5d3c(r3)
/* 8010FDCC 0010CD0C  38 63 02 10 */ addi r3, r3, 0x210
/* 8010FDD0 0010CD10  80 9D 31 C4 */ lwz r4, 0x31c4(r29)
/* 8010FDD4 0010CD14  4B F3 BB 45 */ bl dPa_control_c_NS_level_c_NS_getEmitter
/* 8010FDD8 0010CD18  28 03 00 00 */ cmplwi r3, 0
/* 8010FDDC 0010CD1C  41 82 00 10 */ beq lbl_8010FDEC
/* 8010FDE0 0010CD20  80 03 00 F4 */ lwz r0, 0xf4(r3)
/* 8010FDE4 0010CD24  60 00 00 04 */ ori r0, r0, 4
/* 8010FDE8 0010CD28  90 03 00 F4 */ stw r0, 0xf4(r3)
lbl_8010FDEC:
/* 8010FDEC 0010CD2C  3C 60 80 39 */ lis r3, lbl_8038E90C@ha
/* 8010FDF0 0010CD30  38 63 E9 0C */ addi r3, r3, lbl_8038E90C@l
/* 8010FDF4 0010CD34  C0 03 00 B0 */ lfs f0, 0xb0(r3)
/* 8010FDF8 0010CD38  D0 1D 34 78 */ stfs f0, 0x3478(r29)
/* 8010FDFC 0010CD3C  C0 02 93 48 */ lfs f0, lbl_80452D48-_SDA2_BASE_(r2)
/* 8010FE00 0010CD40  D0 1D 34 7C */ stfs f0, 0x347c(r29)
/* 8010FE04 0010CD44  28 1F 00 00 */ cmplwi r31, 0
/* 8010FE08 0010CD48  41 82 00 64 */ beq lbl_8010FE6C
/* 8010FE0C 0010CD4C  38 7D 04 D0 */ addi r3, r29, 0x4d0
/* 8010FE10 0010CD50  38 9F 04 D0 */ addi r4, r31, 0x4d0
/* 8010FE14 0010CD54  48 16 0D F1 */ bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8010FE18 0010CD58  B0 7D 04 E6 */ sth r3, 0x4e6(r29)
/* 8010FE1C 0010CD5C  A8 1D 04 E6 */ lha r0, 0x4e6(r29)
/* 8010FE20 0010CD60  B0 1D 04 DE */ sth r0, 0x4de(r29)
/* 8010FE24 0010CD64  A8 1D 04 E6 */ lha r0, 0x4e6(r29)
/* 8010FE28 0010CD68  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 8010FE2C 0010CD6C  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 8010FE30 0010CD70  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 8010FE34 0010CD74  7C 03 04 2E */ lfsx f0, r3, r0
/* 8010FE38 0010CD78  C0 3F 04 D0 */ lfs f1, 0x4d0(r31)
/* 8010FE3C 0010CD7C  C0 42 93 10 */ lfs f2, lbl_80452D10-_SDA2_BASE_(r2)
/* 8010FE40 0010CD80  EC 02 00 32 */ fmuls f0, f2, f0
/* 8010FE44 0010CD84  EC 01 00 28 */ fsubs f0, f1, f0
/* 8010FE48 0010CD88  D0 1D 04 D0 */ stfs f0, 0x4d0(r29)
/* 8010FE4C 0010CD8C  A8 1D 04 E6 */ lha r0, 0x4e6(r29)
/* 8010FE50 0010CD90  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 8010FE54 0010CD94  7C 63 02 14 */ add r3, r3, r0
/* 8010FE58 0010CD98  C0 03 00 04 */ lfs f0, 4(r3)
/* 8010FE5C 0010CD9C  C0 3F 04 D8 */ lfs f1, 0x4d8(r31)
/* 8010FE60 0010CDA0  EC 02 00 32 */ fmuls f0, f2, f0
/* 8010FE64 0010CDA4  EC 01 00 28 */ fsubs f0, f1, f0
/* 8010FE68 0010CDA8  D0 1D 04 D8 */ stfs f0, 0x4d8(r29)
lbl_8010FE6C:
/* 8010FE6C 0010CDAC  7F C0 07 34 */ extsh r0, r30
/* 8010FE70 0010CDB0  2C 00 01 1E */ cmpwi r0, 0x11e
/* 8010FE74 0010CDB4  40 82 00 80 */ bne lbl_8010FEF4
/* 8010FE78 0010CDB8  80 1D 31 A0 */ lwz r0, 0x31a0(r29)
/* 8010FE7C 0010CDBC  60 00 20 00 */ ori r0, r0, 0x2000
/* 8010FE80 0010CDC0  90 1D 31 A0 */ stw r0, 0x31a0(r29)
/* 8010FE84 0010CDC4  48 00 00 70 */ b lbl_8010FEF4
lbl_8010FE88:
/* 8010FE88 0010CDC8  2C 03 00 00 */ cmpwi r3, 0
/* 8010FE8C 0010CDCC  41 82 00 38 */ beq lbl_8010FEC4
/* 8010FE90 0010CDD0  7F A3 EB 78 */ mr r3, r29
/* 8010FE94 0010CDD4  38 80 01 08 */ li r4, 0x108
/* 8010FE98 0010CDD8  3C A0 80 39 */ lis r5, lbl_8038E90C@ha
/* 8010FE9C 0010CDDC  38 A5 E9 0C */ addi r5, r5, lbl_8038E90C@l
/* 8010FEA0 0010CDE0  38 A5 00 50 */ addi r5, r5, 0x50
/* 8010FEA4 0010CDE4  4B F9 D2 51 */ bl daAlink_c_NS_setSingleAnimeParam
/* 8010FEA8 0010CDE8  3C 60 80 39 */ lis r3, lbl_8038E90C@ha
/* 8010FEAC 0010CDEC  38 63 E9 0C */ addi r3, r3, lbl_8038E90C@l
/* 8010FEB0 0010CDF0  C0 03 00 60 */ lfs f0, 0x60(r3)
/* 8010FEB4 0010CDF4  D0 1D 34 78 */ stfs f0, 0x3478(r29)
/* 8010FEB8 0010CDF8  C0 02 93 8C */ lfs f0, lbl_80452D8C-_SDA2_BASE_(r2)
/* 8010FEBC 0010CDFC  D0 1D 34 7C */ stfs f0, 0x347c(r29)
/* 8010FEC0 0010CE00  48 00 00 34 */ b lbl_8010FEF4
lbl_8010FEC4:
/* 8010FEC4 0010CE04  7F A3 EB 78 */ mr r3, r29
/* 8010FEC8 0010CE08  38 80 01 07 */ li r4, 0x107
/* 8010FECC 0010CE0C  3C A0 80 39 */ lis r5, lbl_8038E90C@ha
/* 8010FED0 0010CE10  38 A5 E9 0C */ addi r5, r5, lbl_8038E90C@l
/* 8010FED4 0010CE14  38 A5 00 64 */ addi r5, r5, 0x64
/* 8010FED8 0010CE18  4B F9 D2 1D */ bl daAlink_c_NS_setSingleAnimeParam
/* 8010FEDC 0010CE1C  3C 60 80 39 */ lis r3, lbl_8038E90C@ha
/* 8010FEE0 0010CE20  38 63 E9 0C */ addi r3, r3, lbl_8038E90C@l
/* 8010FEE4 0010CE24  C0 03 00 74 */ lfs f0, 0x74(r3)
/* 8010FEE8 0010CE28  D0 1D 34 78 */ stfs f0, 0x3478(r29)
/* 8010FEEC 0010CE2C  C0 02 93 24 */ lfs f0, lbl_80452D24-_SDA2_BASE_(r2)
/* 8010FEF0 0010CE30  D0 1D 34 7C */ stfs f0, 0x347c(r29)
lbl_8010FEF4:
/* 8010FEF4 0010CE34  38 00 00 00 */ li r0, 0
/* 8010FEF8 0010CE38  B0 1D 30 0C */ sth r0, 0x300c(r29)
/* 8010FEFC 0010CE3C  7F A3 EB 78 */ mr r3, r29
/* 8010FF00 0010CE40  3C 80 00 01 */ lis r4, 0x0001001D@ha
/* 8010FF04 0010CE44  38 84 00 1D */ addi r4, r4, 0x0001001D@l
/* 8010FF08 0010CE48  81 9D 06 28 */ lwz r12, 0x628(r29)
/* 8010FF0C 0010CE4C  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 8010FF10 0010CE50  7D 89 03 A6 */ mtctr r12
/* 8010FF14 0010CE54  4E 80 04 21 */ bctrl
/* 8010FF18 0010CE58  7F A3 EB 78 */ mr r3, r29
/* 8010FF1C 0010CE5C  3C 80 00 02 */ lis r4, 0x00020020@ha
/* 8010FF20 0010CE60  38 84 00 20 */ addi r4, r4, 0x00020020@l
/* 8010FF24 0010CE64  81 9D 06 28 */ lwz r12, 0x628(r29)
/* 8010FF28 0010CE68  81 8C 01 18 */ lwz r12, 0x118(r12)
/* 8010FF2C 0010CE6C  7D 89 03 A6 */ mtctr r12
/* 8010FF30 0010CE70  4E 80 04 21 */ bctrl
/* 8010FF34 0010CE74  38 00 00 00 */ li r0, 0
/* 8010FF38 0010CE78  B0 1D 30 0E */ sth r0, 0x300e(r29)
/* 8010FF3C 0010CE7C  38 60 00 01 */ li r3, 1
lbl_8010FF40:
/* 8010FF40 0010CE80  39 61 00 20 */ addi r11, r1, 0x20
/* 8010FF44 0010CE84  48 25 22 E5 */ bl _restgpr_29
/* 8010FF48 0010CE88  80 01 00 24 */ lwz r0, 0x24(r1)
/* 8010FF4C 0010CE8C  7C 08 03 A6 */ mtlr r0
/* 8010FF50 0010CE90  38 21 00 20 */ addi r1, r1, 0x20
/* 8010FF54 0010CE94  4E 80 00 20 */ blr