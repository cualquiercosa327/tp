/* 800FE868 000FB7A8  94 21 FF B0 */ stwu r1, -0x50(r1)
/* 800FE86C 000FB7AC  7C 08 02 A6 */ mflr r0
/* 800FE870 000FB7B0  90 01 00 54 */ stw r0, 0x54(r1)
/* 800FE874 000FB7B4  93 E1 00 4C */ stw r31, 0x4c(r1)
/* 800FE878 000FB7B8  93 C1 00 48 */ stw r30, 0x48(r1)
/* 800FE87C 000FB7BC  7C 7F 1B 78 */ mr r31, r3
/* 800FE880 000FB7C0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800FE884 000FB7C4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800FE888 000FB7C8  3B C3 0F 38 */ addi r30, r3, 0xf38
/* 800FE88C 000FB7CC  7F C3 F3 78 */ mr r3, r30
/* 800FE890 000FB7D0  38 9F 1E 1C */ addi r4, r31, 0x1e1c
/* 800FE894 000FB7D4  4B F7 5D CD */ bl cBgS_NS_ChkPolySafe
/* 800FE898 000FB7D8  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800FE89C 000FB7DC  41 82 00 34 */ beq lbl_800FE8D0
/* 800FE8A0 000FB7E0  7F C3 F3 78 */ mr r3, r30
/* 800FE8A4 000FB7E4  38 9F 1E 1C */ addi r4, r31, 0x1e1c
/* 800FE8A8 000FB7E8  4B F7 62 15 */ bl dBgS_NS_ChkMoveBG
/* 800FE8AC 000FB7EC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800FE8B0 000FB7F0  41 82 00 20 */ beq lbl_800FE8D0
/* 800FE8B4 000FB7F4  7F C3 F3 78 */ mr r3, r30
/* 800FE8B8 000FB7F8  38 9F 1E 1C */ addi r4, r31, 0x1e1c
/* 800FE8BC 000FB7FC  38 A0 00 01 */ li r5, 1
/* 800FE8C0 000FB800  38 DF 04 D0 */ addi r6, r31, 0x4d0
/* 800FE8C4 000FB804  38 FF 04 DC */ addi r7, r31, 0x4dc
/* 800FE8C8 000FB808  39 1F 04 E4 */ addi r8, r31, 0x4e4
/* 800FE8CC 000FB80C  4B F7 6F B5 */ bl dBgS_NS_MoveBgTransPos
lbl_800FE8D0:
/* 800FE8D0 000FB810  A0 1F 2F E8 */ lhz r0, 0x2fe8(r31)
/* 800FE8D4 000FB814  28 00 00 81 */ cmplwi r0, 0x81
/* 800FE8D8 000FB818  40 82 00 1C */ bne lbl_800FE8F4
/* 800FE8DC 000FB81C  38 7F 1F D0 */ addi r3, r31, 0x1fd0
/* 800FE8E0 000FB820  48 05 FB ED */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 800FE8E4 000FB824  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800FE8E8 000FB828  40 82 00 0C */ bne lbl_800FE8F4
/* 800FE8EC 000FB82C  38 60 00 00 */ li r3, 0
/* 800FE8F0 000FB830  48 00 02 88 */ b lbl_800FEB78
lbl_800FE8F4:
/* 800FE8F4 000FB834  80 1F 19 9C */ lwz r0, 0x199c(r31)
/* 800FE8F8 000FB838  54 00 06 B5 */ rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800FE8FC 000FB83C  41 82 00 20 */ beq lbl_800FE91C
/* 800FE900 000FB840  7F E3 FB 78 */ mr r3, r31
/* 800FE904 000FB844  38 80 00 01 */ li r4, 1
/* 800FE908 000FB848  3C A0 80 39 */ lis r5, lbl_8038E068@ha
/* 800FE90C 000FB84C  38 A5 E0 68 */ addi r5, r5, lbl_8038E068@l
/* 800FE910 000FB850  C0 25 00 70 */ lfs f1, 0x70(r5)
/* 800FE914 000FB854  4B FC 81 35 */ bl daAlink_c_NS_procFallInit
/* 800FE918 000FB858  48 00 02 60 */ b lbl_800FEB78
lbl_800FE91C:
/* 800FE91C 000FB85C  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 800FE920 000FB860  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FE924 000FB864  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 800FE928 000FB868  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 800FE92C 000FB86C  7D 03 04 2E */ lfsx f8, r3, r0
/* 800FE930 000FB870  7C 63 02 14 */ add r3, r3, r0
/* 800FE934 000FB874  C1 23 00 04 */ lfs f9, 4(r3)
/* 800FE938 000FB878  C0 BF 04 D8 */ lfs f5, 0x4d8(r31)
/* 800FE93C 000FB87C  C0 42 92 E0 */ lfs f2, lbl_80452CE0-_SDA2_BASE_(r2)
/* 800FE940 000FB880  EC 02 02 72 */ fmuls f0, f2, f9
/* 800FE944 000FB884  EC E5 00 28 */ fsubs f7, f5, f0
/* 800FE948 000FB888  C0 9F 04 D4 */ lfs f4, 0x4d4(r31)
/* 800FE94C 000FB88C  C0 22 92 98 */ lfs f1, lbl_80452C98-_SDA2_BASE_(r2)
/* 800FE950 000FB890  C0 1F 05 98 */ lfs f0, 0x598(r31)
/* 800FE954 000FB894  EC 01 00 32 */ fmuls f0, f1, f0
/* 800FE958 000FB898  EC C4 00 2A */ fadds f6, f4, f0
/* 800FE95C 000FB89C  C0 7F 04 D0 */ lfs f3, 0x4d0(r31)
/* 800FE960 000FB8A0  EC 02 02 32 */ fmuls f0, f2, f8
/* 800FE964 000FB8A4  EC 43 00 28 */ fsubs f2, f3, f0
/* 800FE968 000FB8A8  D0 41 00 20 */ stfs f2, 0x20(r1)
/* 800FE96C 000FB8AC  D0 C1 00 24 */ stfs f6, 0x24(r1)
/* 800FE970 000FB8B0  D0 E1 00 28 */ stfs f7, 0x28(r1)
/* 800FE974 000FB8B4  C0 22 93 68 */ lfs f1, lbl_80452D68-_SDA2_BASE_(r2)
/* 800FE978 000FB8B8  EC 01 02 72 */ fmuls f0, f1, f9
/* 800FE97C 000FB8BC  EC A5 00 2A */ fadds f5, f5, f0
/* 800FE980 000FB8C0  EC 01 02 32 */ fmuls f0, f1, f8
/* 800FE984 000FB8C4  EC 03 00 2A */ fadds f0, f3, f0
/* 800FE988 000FB8C8  D0 01 00 14 */ stfs f0, 0x14(r1)
/* 800FE98C 000FB8CC  D0 C1 00 18 */ stfs f6, 0x18(r1)
/* 800FE990 000FB8D0  D0 A1 00 1C */ stfs f5, 0x1c(r1)
/* 800FE994 000FB8D4  D0 41 00 08 */ stfs f2, 8(r1)
/* 800FE998 000FB8D8  D0 81 00 0C */ stfs f4, 0xc(r1)
/* 800FE99C 000FB8DC  D0 E1 00 10 */ stfs f7, 0x10(r1)
/* 800FE9A0 000FB8E0  38 7F 1D 08 */ addi r3, r31, 0x1d08
/* 800FE9A4 000FB8E4  38 81 00 08 */ addi r4, r1, 8
/* 800FE9A8 000FB8E8  48 16 93 81 */ bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800FE9AC 000FB8EC  A0 1F 2F E8 */ lhz r0, 0x2fe8(r31)
/* 800FE9B0 000FB8F0  28 00 00 82 */ cmplwi r0, 0x82
/* 800FE9B4 000FB8F4  40 82 00 7C */ bne lbl_800FEA30
/* 800FE9B8 000FB8F8  C0 5F 04 D4 */ lfs f2, 0x4d4(r31)
/* 800FE9BC 000FB8FC  C0 22 94 D0 */ lfs f1, lbl_80452ED0-_SDA2_BASE_(r2)
/* 800FE9C0 000FB900  C0 1F 05 98 */ lfs f0, 0x598(r31)
/* 800FE9C4 000FB904  EC 01 00 32 */ fmuls f0, f1, f0
/* 800FE9C8 000FB908  EC 02 00 2A */ fadds f0, f2, f0
/* 800FE9CC 000FB90C  D0 01 00 24 */ stfs f0, 0x24(r1)
/* 800FE9D0 000FB910  D0 01 00 18 */ stfs f0, 0x18(r1)
/* 800FE9D4 000FB914  7F E3 FB 78 */ mr r3, r31
/* 800FE9D8 000FB918  38 81 00 20 */ addi r4, r1, 0x20
/* 800FE9DC 000FB91C  38 A1 00 14 */ addi r5, r1, 0x14
/* 800FE9E0 000FB920  4B FA 37 B9 */ bl daAlink_c_NS_commonLineCheck
/* 800FE9E4 000FB924  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800FE9E8 000FB928  41 82 00 18 */ beq lbl_800FEA00
/* 800FE9EC 000FB92C  7F E3 FB 78 */ mr r3, r31
/* 800FE9F0 000FB930  38 9F 1B 5C */ addi r4, r31, 0x1b5c
/* 800FE9F4 000FB934  4B FF F6 65 */ bl daAlink_c_NS_checkClimbCode
/* 800FE9F8 000FB938  2C 03 00 00 */ cmpwi r3, 0
/* 800FE9FC 000FB93C  40 82 00 18 */ bne lbl_800FEA14
lbl_800FEA00:
/* 800FEA00 000FB940  7F E3 FB 78 */ mr r3, r31
/* 800FEA04 000FB944  38 80 00 01 */ li r4, 1
/* 800FEA08 000FB948  38 A0 00 00 */ li r5, 0
/* 800FEA0C 000FB94C  48 00 16 ED */ bl daAlink_c_NS_procClimbWaitInit
/* 800FEA10 000FB950  48 00 01 68 */ b lbl_800FEB78
lbl_800FEA14:
/* 800FEA14 000FB954  C0 5F 04 D4 */ lfs f2, 0x4d4(r31)
/* 800FEA18 000FB958  C0 22 92 98 */ lfs f1, lbl_80452C98-_SDA2_BASE_(r2)
/* 800FEA1C 000FB95C  C0 1F 05 98 */ lfs f0, 0x598(r31)
/* 800FEA20 000FB960  EC 01 00 32 */ fmuls f0, f1, f0
/* 800FEA24 000FB964  EC 02 00 2A */ fadds f0, f2, f0
/* 800FEA28 000FB968  D0 01 00 24 */ stfs f0, 0x24(r1)
/* 800FEA2C 000FB96C  D0 01 00 18 */ stfs f0, 0x18(r1)
lbl_800FEA30:
/* 800FEA30 000FB970  7F E3 FB 78 */ mr r3, r31
/* 800FEA34 000FB974  38 81 00 20 */ addi r4, r1, 0x20
/* 800FEA38 000FB978  38 A1 00 14 */ addi r5, r1, 0x14
/* 800FEA3C 000FB97C  4B FA 37 5D */ bl daAlink_c_NS_commonLineCheck
/* 800FEA40 000FB980  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800FEA44 000FB984  41 82 00 4C */ beq lbl_800FEA90
/* 800FEA48 000FB988  7F E3 FB 78 */ mr r3, r31
/* 800FEA4C 000FB98C  38 9F 1B 5C */ addi r4, r31, 0x1b5c
/* 800FEA50 000FB990  4B FF F6 09 */ bl daAlink_c_NS_checkClimbCode
/* 800FEA54 000FB994  2C 03 00 00 */ cmpwi r3, 0
/* 800FEA58 000FB998  41 82 00 38 */ beq lbl_800FEA90
/* 800FEA5C 000FB99C  A0 1F 2F E8 */ lhz r0, 0x2fe8(r31)
/* 800FEA60 000FB9A0  28 00 00 82 */ cmplwi r0, 0x82
/* 800FEA64 000FB9A4  41 82 00 0C */ beq lbl_800FEA70
/* 800FEA68 000FB9A8  28 00 00 83 */ cmplwi r0, 0x83
/* 800FEA6C 000FB9AC  40 82 00 40 */ bne lbl_800FEAAC
lbl_800FEA70:
/* 800FEA70 000FB9B0  7F C3 F3 78 */ mr r3, r30
/* 800FEA74 000FB9B4  38 9F 1D 08 */ addi r4, r31, 0x1d08
/* 800FEA78 000FB9B8  4B F7 5A 29 */ bl cBgS_NS_GroundCross
/* 800FEA7C 000FB9BC  C0 5F 04 D4 */ lfs f2, 0x4d4(r31)
/* 800FEA80 000FB9C0  C0 02 94 64 */ lfs f0, lbl_80452E64-_SDA2_BASE_(r2)
/* 800FEA84 000FB9C4  EC 02 00 28 */ fsubs f0, f2, f0
/* 800FEA88 000FB9C8  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 800FEA8C 000FB9CC  40 80 00 20 */ bge lbl_800FEAAC
lbl_800FEA90:
/* 800FEA90 000FB9D0  7F E3 FB 78 */ mr r3, r31
/* 800FEA94 000FB9D4  38 80 00 01 */ li r4, 1
/* 800FEA98 000FB9D8  3C A0 80 39 */ lis r5, lbl_8038E068@ha
/* 800FEA9C 000FB9DC  38 A5 E0 68 */ addi r5, r5, lbl_8038E068@l
/* 800FEAA0 000FB9E0  C0 25 00 70 */ lfs f1, 0x70(r5)
/* 800FEAA4 000FB9E4  4B FC 7F A5 */ bl daAlink_c_NS_procFallInit
/* 800FEAA8 000FB9E8  48 00 00 D0 */ b lbl_800FEB78
lbl_800FEAAC:
/* 800FEAAC 000FB9EC  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 800FEAB0 000FB9F0  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 800FEAB4 000FB9F4  90 01 00 3C */ stw r0, 0x3c(r1)
/* 800FEAB8 000FB9F8  7F C3 F3 78 */ mr r3, r30
/* 800FEABC 000FB9FC  38 9F 1B 5C */ addi r4, r31, 0x1b5c
/* 800FEAC0 000FBA00  38 A1 00 2C */ addi r5, r1, 0x2c
/* 800FEAC4 000FBA04  4B F7 5C 81 */ bl cBgS_NS_GetTriPla
/* 800FEAC8 000FBA08  38 61 00 2C */ addi r3, r1, 0x2c
/* 800FEACC 000FBA0C  48 16 86 5D */ bl cXyz_NS_atan2sX_Z
/* 800FEAD0 000FBA10  7C 7E 1B 78 */ mr r30, r3
/* 800FEAD4 000FBA14  A8 9F 04 E6 */ lha r4, 0x4e6(r31)
/* 800FEAD8 000FBA18  48 17 23 4D */ bl cLib_distanceAngleS
/* 800FEADC 000FBA1C  2C 03 54 9F */ cmpwi r3, 0x549f
/* 800FEAE0 000FBA20  41 81 00 2C */ bgt lbl_800FEB0C
/* 800FEAE4 000FBA24  7F E3 FB 78 */ mr r3, r31
/* 800FEAE8 000FBA28  38 80 00 01 */ li r4, 1
/* 800FEAEC 000FBA2C  3C A0 80 39 */ lis r5, lbl_8038E068@ha
/* 800FEAF0 000FBA30  38 A5 E0 68 */ addi r5, r5, lbl_8038E068@l
/* 800FEAF4 000FBA34  C0 25 00 70 */ lfs f1, 0x70(r5)
/* 800FEAF8 000FBA38  4B FC 7F 51 */ bl daAlink_c_NS_procFallInit
/* 800FEAFC 000FBA3C  3C 80 80 3A */ lis r4, lbl_803A37C0@ha
/* 800FEB00 000FBA40  38 04 37 C0 */ addi r0, r4, lbl_803A37C0@l
/* 800FEB04 000FBA44  90 01 00 3C */ stw r0, 0x3c(r1)
/* 800FEB08 000FBA48  48 00 00 70 */ b lbl_800FEB78
lbl_800FEB0C:
/* 800FEB0C 000FBA4C  A8 9F 04 E6 */ lha r4, 0x4e6(r31)
/* 800FEB10 000FBA50  3C 7E 00 01 */ addis r3, r30, 1
/* 800FEB14 000FBA54  38 03 80 00 */ addi r0, r3, -32768
/* 800FEB18 000FBA58  B0 1F 04 E6 */ sth r0, 0x4e6(r31)
/* 800FEB1C 000FBA5C  C0 1F 1B 78 */ lfs f0, 0x1b78(r31)
/* 800FEB20 000FBA60  D0 1F 04 D0 */ stfs f0, 0x4d0(r31)
/* 800FEB24 000FBA64  C0 1F 1B 80 */ lfs f0, 0x1b80(r31)
/* 800FEB28 000FBA68  D0 1F 04 D8 */ stfs f0, 0x4d8(r31)
/* 800FEB2C 000FBA6C  A8 7F 04 DE */ lha r3, 0x4de(r31)
/* 800FEB30 000FBA70  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 800FEB34 000FBA74  7C 04 00 50 */ subf r0, r4, r0
/* 800FEB38 000FBA78  7C 00 07 34 */ extsh r0, r0
/* 800FEB3C 000FBA7C  7C 03 02 14 */ add r0, r3, r0
/* 800FEB40 000FBA80  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 800FEB44 000FBA84  A8 7F 30 8C */ lha r3, 0x308c(r31)
/* 800FEB48 000FBA88  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 800FEB4C 000FBA8C  7C 00 20 50 */ subf r0, r0, r4
/* 800FEB50 000FBA90  7C 00 07 34 */ extsh r0, r0
/* 800FEB54 000FBA94  7C 03 02 14 */ add r0, r3, r0
/* 800FEB58 000FBA98  B0 1F 30 8C */ sth r0, 0x308c(r31)
/* 800FEB5C 000FBA9C  38 7F 1E 1C */ addi r3, r31, 0x1e1c
/* 800FEB60 000FBAA0  38 9F 1B 5C */ addi r4, r31, 0x1b5c
/* 800FEB64 000FBAA4  48 16 95 E5 */ bl cBgS_PolyInfo_NS_SetPolyInfo
/* 800FEB68 000FBAA8  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 800FEB6C 000FBAAC  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 800FEB70 000FBAB0  90 01 00 3C */ stw r0, 0x3c(r1)
/* 800FEB74 000FBAB4  38 60 00 00 */ li r3, 0
lbl_800FEB78:
/* 800FEB78 000FBAB8  83 E1 00 4C */ lwz r31, 0x4c(r1)
/* 800FEB7C 000FBABC  83 C1 00 48 */ lwz r30, 0x48(r1)
/* 800FEB80 000FBAC0  80 01 00 54 */ lwz r0, 0x54(r1)
/* 800FEB84 000FBAC4  7C 08 03 A6 */ mtlr r0
/* 800FEB88 000FBAC8  38 21 00 50 */ addi r1, r1, 0x50
/* 800FEB8C 000FBACC  4E 80 00 20 */ blr
