/* 800FB790 000F86D0  94 21 FF 90 */ stwu r1, -0x70(r1)
/* 800FB794 000F86D4  7C 08 02 A6 */ mflr r0
/* 800FB798 000F86D8  90 01 00 74 */ stw r0, 0x74(r1)
/* 800FB79C 000F86DC  DB E1 00 60 */ stfd f31, 0x60(r1)
/* 800FB7A0 000F86E0  F3 E1 00 68 */ psq_st f31, 104(r1), 0, 0
/* 800FB7A4 000F86E4  39 61 00 60 */ addi r11, r1, 0x60
/* 800FB7A8 000F86E8  48 26 6A 35 */ bl _savegpr_29
/* 800FB7AC 000F86EC  7C 7E 1B 78 */ mr r30, r3
/* 800FB7B0 000F86F0  4B FF E8 4D */ bl daAlink_c_NS_getHangDirectionFromAngle
/* 800FB7B4 000F86F4  7C 7D 1B 78 */ mr r29, r3
/* 800FB7B8 000F86F8  38 00 00 01 */ li r0, 1
/* 800FB7BC 000F86FC  98 1E 2F 99 */ stb r0, 0x2f99(r30)
/* 800FB7C0 000F8700  7F C3 F3 78 */ mr r3, r30
/* 800FB7C4 000F8704  4B FF EF C9 */ bl daAlink_c_NS_changeHangEndProc
/* 800FB7C8 000F8708  2C 03 00 00 */ cmpwi r3, 0
/* 800FB7CC 000F870C  40 82 03 D8 */ bne lbl_800FBBA4
/* 800FB7D0 000F8710  2C 1D 00 00 */ cmpwi r29, 0
/* 800FB7D4 000F8714  40 82 00 2C */ bne lbl_800FB800
/* 800FB7D8 000F8718  C0 3E 33 AC */ lfs f1, 0x33ac(r30)
/* 800FB7DC 000F871C  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 800FB7E0 000F8720  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800FB7E4 000F8724  40 81 00 1C */ ble lbl_800FB800
/* 800FB7E8 000F8728  7F C3 F3 78 */ mr r3, r30
/* 800FB7EC 000F872C  3C 80 80 39 */ lis r4, lbl_8038E164@ha
/* 800FB7F0 000F8730  38 84 E1 64 */ addi r4, r4, lbl_8038E164@l
/* 800FB7F4 000F8734  C0 24 00 30 */ lfs f1, 0x30(r4)
/* 800FB7F8 000F8738  48 00 03 D1 */ bl daAlink_c_NS_procHangClimbInit
/* 800FB7FC 000F873C  48 00 03 A8 */ b lbl_800FBBA4
lbl_800FB800:
/* 800FB800 000F8740  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 800FB804 000F8744  7F E3 FB 78 */ mr r3, r31
/* 800FB808 000F8748  48 06 2C C5 */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 800FB80C 000F874C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800FB810 000F8750  41 82 00 54 */ beq lbl_800FB864
/* 800FB814 000F8754  AB FE 30 8C */ lha r31, 0x308c(r30)
/* 800FB818 000F8758  C0 3E 33 AC */ lfs f1, 0x33ac(r30)
/* 800FB81C 000F875C  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 800FB820 000F8760  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800FB824 000F8764  40 81 00 30 */ ble lbl_800FB854
/* 800FB828 000F8768  2C 1D 00 01 */ cmpwi r29, 1
/* 800FB82C 000F876C  41 82 00 28 */ beq lbl_800FB854
/* 800FB830 000F8770  7F C3 F3 78 */ mr r3, r30
/* 800FB834 000F8774  7F A4 EB 78 */ mr r4, r29
/* 800FB838 000F8778  4B FF EB 01 */ bl daAlink_c_NS_changeHangMoveProc
/* 800FB83C 000F877C  2C 03 00 00 */ cmpwi r3, 0
/* 800FB840 000F8780  41 82 00 14 */ beq lbl_800FB854
/* 800FB844 000F8784  7F C3 F3 78 */ mr r3, r30
/* 800FB848 000F8788  7F A4 EB 78 */ mr r4, r29
/* 800FB84C 000F878C  4B FF FE 05 */ bl daAlink_c_NS_procHangMoveInit
/* 800FB850 000F8790  48 00 00 0C */ b lbl_800FB85C
lbl_800FB854:
/* 800FB854 000F8794  7F C3 F3 78 */ mr r3, r30
/* 800FB858 000F8798  4B FF FB E5 */ bl daAlink_c_NS_procHangWaitInit
lbl_800FB85C:
/* 800FB85C 000F879C  B3 FE 30 8C */ sth r31, 0x308c(r30)
/* 800FB860 000F87A0  48 00 03 30 */ b lbl_800FBB90
lbl_800FB864:
/* 800FB864 000F87A4  C0 1F 00 0C */ lfs f0, 0xc(r31)
/* 800FB868 000F87A8  FC 00 02 10 */ fabs f0, f0
/* 800FB86C 000F87AC  FC 20 00 18 */ frsp f1, f0
/* 800FB870 000F87B0  C0 02 93 88 */ lfs f0, lbl_80452D88-_SDA2_BASE_(r2)
/* 800FB874 000F87B4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800FB878 000F87B8  40 81 00 3C */ ble lbl_800FB8B4
/* 800FB87C 000F87BC  80 1E 05 78 */ lwz r0, 0x578(r30)
/* 800FB880 000F87C0  54 00 04 A5 */ rlwinm. r0, r0, 0, 0x12, 0x12
/* 800FB884 000F87C4  41 82 00 1C */ beq lbl_800FB8A0
/* 800FB888 000F87C8  7F C3 F3 78 */ mr r3, r30
/* 800FB88C 000F87CC  48 00 27 A9 */ bl daAlink_c_NS_getClimbMoveSideAnmSpeed
/* 800FB890 000F87D0  7F C3 F3 78 */ mr r3, r30
/* 800FB894 000F87D4  7F E4 FB 78 */ mr r4, r31
/* 800FB898 000F87D8  48 00 64 5D */ bl daAlink_c_NS_setWaterInAnmRate
/* 800FB89C 000F87DC  48 00 00 18 */ b lbl_800FB8B4
lbl_800FB8A0:
/* 800FB8A0 000F87E0  7F C3 F3 78 */ mr r3, r30
/* 800FB8A4 000F87E4  4B FF E7 39 */ bl daAlink_c_NS_getHangMoveAnmSpeed
/* 800FB8A8 000F87E8  7F C3 F3 78 */ mr r3, r30
/* 800FB8AC 000F87EC  7F E4 FB 78 */ mr r4, r31
/* 800FB8B0 000F87F0  48 00 64 45 */ bl daAlink_c_NS_setWaterInAnmRate
lbl_800FB8B4:
/* 800FB8B4 000F87F4  7F C3 F3 78 */ mr r3, r30
/* 800FB8B8 000F87F8  38 80 00 04 */ li r4, 4
/* 800FB8BC 000F87FC  4B FF EA 7D */ bl daAlink_c_NS_changeHangMoveProc
/* 800FB8C0 000F8800  2C 03 00 00 */ cmpwi r3, 0
/* 800FB8C4 000F8804  41 82 02 C4 */ beq lbl_800FBB88
/* 800FB8C8 000F8808  80 1E 05 78 */ lwz r0, 0x578(r30)
/* 800FB8CC 000F880C  54 00 04 A5 */ rlwinm. r0, r0, 0, 0x12, 0x12
/* 800FB8D0 000F8810  41 82 00 BC */ beq lbl_800FB98C
/* 800FB8D4 000F8814  7F C3 F3 78 */ mr r3, r30
/* 800FB8D8 000F8818  4B FF EC F1 */ bl daAlink_c_NS_checkHangFootWall
/* 800FB8DC 000F881C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800FB8E0 000F8820  40 82 00 AC */ bne lbl_800FB98C
/* 800FB8E4 000F8824  C0 5F 00 10 */ lfs f2, 0x10(r31)
/* 800FB8E8 000F8828  A8 1F 00 08 */ lha r0, 8(r31)
/* 800FB8EC 000F882C  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 800FB8F0 000F8830  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 800FB8F4 000F8834  90 01 00 44 */ stw r0, 0x44(r1)
/* 800FB8F8 000F8838  3C 00 43 30 */ lis r0, 0x4330
/* 800FB8FC 000F883C  90 01 00 40 */ stw r0, 0x40(r1)
/* 800FB900 000F8840  C8 01 00 40 */ lfd f0, 0x40(r1)
/* 800FB904 000F8844  EC 00 08 28 */ fsubs f0, f0, f1
/* 800FB908 000F8848  EF E2 00 24 */ fdivs f31, f2, f0
/* 800FB90C 000F884C  A8 7E 04 E6 */ lha r3, 0x4e6(r30)
/* 800FB910 000F8850  A8 1E 04 DE */ lha r0, 0x4de(r30)
/* 800FB914 000F8854  7C 03 00 50 */ subf r0, r3, r0
/* 800FB918 000F8858  7C 00 07 35 */ extsh. r0, r0
/* 800FB91C 000F885C  3B A0 00 98 */ li r29, 0x98
/* 800FB920 000F8860  40 81 00 08 */ ble lbl_800FB928
/* 800FB924 000F8864  3B A0 00 97 */ li r29, 0x97
lbl_800FB928:
/* 800FB928 000F8868  7F C3 F3 78 */ mr r3, r30
/* 800FB92C 000F886C  4B FF E6 B1 */ bl daAlink_c_NS_getHangMoveAnmSpeed
/* 800FB930 000F8870  7F C3 F3 78 */ mr r3, r30
/* 800FB934 000F8874  7F A4 EB 78 */ mr r4, r29
/* 800FB938 000F8878  C0 42 93 30 */ lfs f2, lbl_80452D30-_SDA2_BASE_(r2)
/* 800FB93C 000F887C  4B FB 16 A5 */ bl daAlink_c_NS_setSingleAnimeBaseSpeed
/* 800FB940 000F8880  38 00 00 0D */ li r0, 0xd
/* 800FB944 000F8884  98 1E 2F 99 */ stb r0, 0x2f99(r30)
/* 800FB948 000F8888  A8 1F 00 08 */ lha r0, 8(r31)
/* 800FB94C 000F888C  C8 22 92 B0 */ lfd f1, lbl_80452CB0-_SDA2_BASE_(r2)
/* 800FB950 000F8890  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 800FB954 000F8894  90 01 00 4C */ stw r0, 0x4c(r1)
/* 800FB958 000F8898  3C 00 43 30 */ lis r0, 0x4330
/* 800FB95C 000F889C  90 01 00 48 */ stw r0, 0x48(r1)
/* 800FB960 000F88A0  C8 01 00 48 */ lfd f0, 0x48(r1)
/* 800FB964 000F88A4  EC 00 08 28 */ fsubs f0, f0, f1
/* 800FB968 000F88A8  EC 1F 00 32 */ fmuls f0, f31, f0
/* 800FB96C 000F88AC  D0 1F 00 10 */ stfs f0, 0x10(r31)
/* 800FB970 000F88B0  C0 1F 00 10 */ lfs f0, 0x10(r31)
/* 800FB974 000F88B4  80 7E 1F 2C */ lwz r3, 0x1f2c(r30)
/* 800FB978 000F88B8  D0 03 00 08 */ stfs f0, 8(r3)
/* 800FB97C 000F88BC  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800FB980 000F88C0  D0 1E 33 F0 */ stfs f0, 0x33f0(r30)
/* 800FB984 000F88C4  38 00 00 00 */ li r0, 0
/* 800FB988 000F88C8  B0 1E 30 A2 */ sth r0, 0x30a2(r30)
lbl_800FB98C:
/* 800FB98C 000F88CC  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 800FB990 000F88D0  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FB994 000F88D4  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 800FB998 000F88D8  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 800FB99C 000F88DC  7C C3 04 2E */ lfsx f6, r3, r0
/* 800FB9A0 000F88E0  38 83 00 04 */ addi r4, r3, 4
/* 800FB9A4 000F88E4  7C E4 04 2E */ lfsx f7, r4, r0
/* 800FB9A8 000F88E8  A8 1E 04 DE */ lha r0, 0x4de(r30)
/* 800FB9AC 000F88EC  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FB9B0 000F88F0  7D 03 04 2E */ lfsx f8, r3, r0
/* 800FB9B4 000F88F4  7C 04 04 2E */ lfsx f0, r4, r0
/* 800FB9B8 000F88F8  C0 3E 04 D8 */ lfs f1, 0x4d8(r30)
/* 800FB9BC 000F88FC  C0 62 92 9C */ lfs f3, lbl_80452C9C-_SDA2_BASE_(r2)
/* 800FB9C0 000F8900  EC 03 00 32 */ fmuls f0, f3, f0
/* 800FB9C4 000F8904  EC 21 00 2A */ fadds f1, f1, f0
/* 800FB9C8 000F8908  C0 42 92 E0 */ lfs f2, lbl_80452CE0-_SDA2_BASE_(r2)
/* 800FB9CC 000F890C  EC 02 01 F2 */ fmuls f0, f2, f7
/* 800FB9D0 000F8910  EC A1 00 28 */ fsubs f5, f1, f0
/* 800FB9D4 000F8914  C0 3E 04 D4 */ lfs f1, 0x4d4(r30)
/* 800FB9D8 000F8918  C0 02 93 3C */ lfs f0, lbl_80452D3C-_SDA2_BASE_(r2)
/* 800FB9DC 000F891C  EC 81 00 28 */ fsubs f4, f1, f0
/* 800FB9E0 000F8920  C0 3E 04 D0 */ lfs f1, 0x4d0(r30)
/* 800FB9E4 000F8924  EC 03 02 32 */ fmuls f0, f3, f8
/* 800FB9E8 000F8928  EC 21 00 2A */ fadds f1, f1, f0
/* 800FB9EC 000F892C  EC 02 01 B2 */ fmuls f0, f2, f6
/* 800FB9F0 000F8930  EC 41 00 28 */ fsubs f2, f1, f0
/* 800FB9F4 000F8934  D0 41 00 20 */ stfs f2, 0x20(r1)
/* 800FB9F8 000F8938  D0 81 00 24 */ stfs f4, 0x24(r1)
/* 800FB9FC 000F893C  D0 A1 00 28 */ stfs f5, 0x28(r1)
/* 800FBA00 000F8940  C0 22 93 B4 */ lfs f1, lbl_80452DB4-_SDA2_BASE_(r2)
/* 800FBA04 000F8944  EC 01 01 B2 */ fmuls f0, f1, f6
/* 800FBA08 000F8948  EC 02 00 2A */ fadds f0, f2, f0
/* 800FBA0C 000F894C  D0 01 00 14 */ stfs f0, 0x14(r1)
/* 800FBA10 000F8950  D0 81 00 18 */ stfs f4, 0x18(r1)
/* 800FBA14 000F8954  EC 01 01 F2 */ fmuls f0, f1, f7
/* 800FBA18 000F8958  EC 05 00 2A */ fadds f0, f5, f0
/* 800FBA1C 000F895C  D0 01 00 1C */ stfs f0, 0x1c(r1)
/* 800FBA20 000F8960  7F C3 F3 78 */ mr r3, r30
/* 800FBA24 000F8964  38 81 00 20 */ addi r4, r1, 0x20
/* 800FBA28 000F8968  38 A1 00 14 */ addi r5, r1, 0x14
/* 800FBA2C 000F896C  4B FA 67 6D */ bl daAlink_c_NS_commonLineCheck
/* 800FBA30 000F8970  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800FBA34 000F8974  41 82 01 5C */ beq lbl_800FBB90
/* 800FBA38 000F8978  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 800FBA3C 000F897C  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 800FBA40 000F8980  90 01 00 3C */ stw r0, 0x3c(r1)
/* 800FBA44 000F8984  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800FBA48 000F8988  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800FBA4C 000F898C  3B A3 0F 38 */ addi r29, r3, 0xf38
/* 800FBA50 000F8990  7F A3 EB 78 */ mr r3, r29
/* 800FBA54 000F8994  38 9E 1B 5C */ addi r4, r30, 0x1b5c
/* 800FBA58 000F8998  38 A1 00 2C */ addi r5, r1, 0x2c
/* 800FBA5C 000F899C  4B F7 8C E9 */ bl cBgS_NS_GetTriPla
/* 800FBA60 000F89A0  38 61 00 2C */ addi r3, r1, 0x2c
/* 800FBA64 000F89A4  48 16 B6 C5 */ bl cXyz_NS_atan2sX_Z
/* 800FBA68 000F89A8  3C 63 00 01 */ addis r3, r3, 1
/* 800FBA6C 000F89AC  38 03 80 00 */ addi r0, r3, -32768
/* 800FBA70 000F89B0  7C 04 07 34 */ extsh r4, r0
/* 800FBA74 000F89B4  A8 7E 04 E6 */ lha r3, 0x4e6(r30)
/* 800FBA78 000F89B8  7C 04 18 00 */ cmpw r4, r3
/* 800FBA7C 000F89BC  41 82 00 FC */ beq lbl_800FBB78
/* 800FBA80 000F89C0  A8 1E 04 DE */ lha r0, 0x4de(r30)
/* 800FBA84 000F89C4  7C 03 00 50 */ subf r0, r3, r0
/* 800FBA88 000F89C8  7C 00 07 35 */ extsh. r0, r0
/* 800FBA8C 000F89CC  40 81 00 10 */ ble lbl_800FBA9C
/* 800FBA90 000F89D0  38 04 40 00 */ addi r0, r4, 0x4000
/* 800FBA94 000F89D4  B0 1E 04 DE */ sth r0, 0x4de(r30)
/* 800FBA98 000F89D8  48 00 00 0C */ b lbl_800FBAA4
lbl_800FBA9C:
/* 800FBA9C 000F89DC  38 04 C0 00 */ addi r0, r4, -16384
/* 800FBAA0 000F89E0  B0 1E 04 DE */ sth r0, 0x4de(r30)
lbl_800FBAA4:
/* 800FBAA4 000F89E4  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 800FBAA8 000F89E8  7C 04 00 50 */ subf r0, r4, r0
/* 800FBAAC 000F89EC  7C 03 07 34 */ extsh r3, r0
/* 800FBAB0 000F89F0  A8 1E 30 8C */ lha r0, 0x308c(r30)
/* 800FBAB4 000F89F4  7C 00 1A 14 */ add r0, r0, r3
/* 800FBAB8 000F89F8  B0 1E 30 8C */ sth r0, 0x308c(r30)
/* 800FBABC 000F89FC  B0 9E 04 E6 */ sth r4, 0x4e6(r30)
/* 800FBAC0 000F8A00  48 26 96 11 */ bl func_803650D0
/* 800FBAC4 000F8A04  2C 03 00 64 */ cmpwi r3, 0x64
/* 800FBAC8 000F8A08  40 80 00 10 */ bge lbl_800FBAD8
/* 800FBACC 000F8A0C  38 00 00 00 */ li r0, 0
/* 800FBAD0 000F8A10  B0 1E 30 8C */ sth r0, 0x308c(r30)
/* 800FBAD4 000F8A14  48 00 00 A4 */ b lbl_800FBB78
lbl_800FBAD8:
/* 800FBAD8 000F8A18  C0 9E 1B 78 */ lfs f4, 0x1b78(r30)
/* 800FBADC 000F8A1C  D0 81 00 08 */ stfs f4, 8(r1)
/* 800FBAE0 000F8A20  C0 7E 1B 7C */ lfs f3, 0x1b7c(r30)
/* 800FBAE4 000F8A24  D0 61 00 0C */ stfs f3, 0xc(r1)
/* 800FBAE8 000F8A28  C0 5E 1B 80 */ lfs f2, 0x1b80(r30)
/* 800FBAEC 000F8A2C  D0 41 00 10 */ stfs f2, 0x10(r1)
/* 800FBAF0 000F8A30  C0 22 93 2C */ lfs f1, lbl_80452D2C-_SDA2_BASE_(r2)
/* 800FBAF4 000F8A34  C0 01 00 2C */ lfs f0, 0x2c(r1)
/* 800FBAF8 000F8A38  EC 01 00 32 */ fmuls f0, f1, f0
/* 800FBAFC 000F8A3C  EC 04 00 28 */ fsubs f0, f4, f0
/* 800FBB00 000F8A40  D0 01 00 08 */ stfs f0, 8(r1)
/* 800FBB04 000F8A44  C0 02 92 9C */ lfs f0, lbl_80452C9C-_SDA2_BASE_(r2)
/* 800FBB08 000F8A48  EC 03 00 2A */ fadds f0, f3, f0
/* 800FBB0C 000F8A4C  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 800FBB10 000F8A50  C0 01 00 34 */ lfs f0, 0x34(r1)
/* 800FBB14 000F8A54  EC 01 00 32 */ fmuls f0, f1, f0
/* 800FBB18 000F8A58  EC 02 00 28 */ fsubs f0, f2, f0
/* 800FBB1C 000F8A5C  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 800FBB20 000F8A60  38 7E 1D 08 */ addi r3, r30, 0x1d08
/* 800FBB24 000F8A64  38 81 00 08 */ addi r4, r1, 8
/* 800FBB28 000F8A68  48 16 C2 01 */ bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800FBB2C 000F8A6C  7F A3 EB 78 */ mr r3, r29
/* 800FBB30 000F8A70  38 9E 1D 08 */ addi r4, r30, 0x1d08
/* 800FBB34 000F8A74  4B F7 89 6D */ bl cBgS_NS_GroundCross
/* 800FBB38 000F8A78  D0 21 00 0C */ stfs f1, 0xc(r1)
/* 800FBB3C 000F8A7C  FC 20 08 18 */ frsp f1, f1
/* 800FBB40 000F8A80  C0 1E 04 D4 */ lfs f0, 0x4d4(r30)
/* 800FBB44 000F8A84  EC 01 00 28 */ fsubs f0, f1, f0
/* 800FBB48 000F8A88  FC 00 02 10 */ fabs f0, f0
/* 800FBB4C 000F8A8C  FC 20 00 18 */ frsp f1, f0
/* 800FBB50 000F8A90  C0 02 93 3C */ lfs f0, lbl_80452D3C-_SDA2_BASE_(r2)
/* 800FBB54 000F8A94  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800FBB58 000F8A98  4C 40 13 82 */ cror 2, 0, 2
/* 800FBB5C 000F8A9C  40 82 00 1C */ bne lbl_800FBB78
/* 800FBB60 000F8AA0  C0 01 00 08 */ lfs f0, 8(r1)
/* 800FBB64 000F8AA4  D0 1E 04 D0 */ stfs f0, 0x4d0(r30)
/* 800FBB68 000F8AA8  C0 01 00 0C */ lfs f0, 0xc(r1)
/* 800FBB6C 000F8AAC  D0 1E 04 D4 */ stfs f0, 0x4d4(r30)
/* 800FBB70 000F8AB0  C0 01 00 10 */ lfs f0, 0x10(r1)
/* 800FBB74 000F8AB4  D0 1E 04 D8 */ stfs f0, 0x4d8(r30)
lbl_800FBB78:
/* 800FBB78 000F8AB8  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 800FBB7C 000F8ABC  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 800FBB80 000F8AC0  90 01 00 3C */ stw r0, 0x3c(r1)
/* 800FBB84 000F8AC4  48 00 00 0C */ b lbl_800FBB90
lbl_800FBB88:
/* 800FBB88 000F8AC8  7F C3 F3 78 */ mr r3, r30
/* 800FBB8C 000F8ACC  4B FF F8 B1 */ bl daAlink_c_NS_procHangWaitInit
lbl_800FBB90:
/* 800FBB90 000F8AD0  80 1E 31 A0 */ lwz r0, 0x31a0(r30)
/* 800FBB94 000F8AD4  54 00 06 73 */ rlwinm. r0, r0, 0, 0x19, 0x19
/* 800FBB98 000F8AD8  41 82 00 0C */ beq lbl_800FBBA4
/* 800FBB9C 000F8ADC  7F C3 F3 78 */ mr r3, r30
/* 800FBBA0 000F8AE0  48 00 25 D5 */ bl daAlink_c_NS_setClimbShapeOffset
lbl_800FBBA4:
/* 800FBBA4 000F8AE4  38 60 00 01 */ li r3, 1
/* 800FBBA8 000F8AE8  E3 E1 00 68 */ psq_l f31, 104(r1), 0, 0
/* 800FBBAC 000F8AEC  CB E1 00 60 */ lfd f31, 0x60(r1)
/* 800FBBB0 000F8AF0  39 61 00 60 */ addi r11, r1, 0x60
/* 800FBBB4 000F8AF4  48 26 66 75 */ bl _restgpr_29
/* 800FBBB8 000F8AF8  80 01 00 74 */ lwz r0, 0x74(r1)
/* 800FBBBC 000F8AFC  7C 08 03 A6 */ mtlr r0
/* 800FBBC0 000F8B00  38 21 00 70 */ addi r1, r1, 0x70
/* 800FBBC4 000F8B04  4E 80 00 20 */ blr
