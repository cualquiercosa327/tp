/* 800FA338 000F7278  94 21 FF A0 */ stwu r1, -0x60(r1)
/* 800FA33C 000F727C  7C 08 02 A6 */ mflr r0
/* 800FA340 000F7280  90 01 00 64 */ stw r0, 0x64(r1)
/* 800FA344 000F7284  39 61 00 60 */ addi r11, r1, 0x60
/* 800FA348 000F7288  48 26 7E 91 */ bl _savegpr_28
/* 800FA34C 000F728C  7C 7E 1B 78 */ mr r30, r3
/* 800FA350 000F7290  7C 9C 23 78 */ mr r28, r4
/* 800FA354 000F7294  80 03 19 9C */ lwz r0, 0x199c(r3)
/* 800FA358 000F7298  54 00 06 B5 */ rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800FA35C 000F729C  41 82 00 24 */ beq lbl_800FA380
/* 800FA360 000F72A0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800FA364 000F72A4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800FA368 000F72A8  3B E3 0F 38 */ addi r31, r3, 0xf38
/* 800FA36C 000F72AC  7F E3 FB 78 */ mr r3, r31
/* 800FA370 000F72B0  38 9E 1A 60 */ addi r4, r30, 0x1a60
/* 800FA374 000F72B4  4B F7 A2 ED */ bl cBgS_NS_ChkPolySafe
/* 800FA378 000F72B8  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800FA37C 000F72BC  40 82 00 0C */ bne lbl_800FA388
lbl_800FA380:
/* 800FA380 000F72C0  38 60 00 00 */ li r3, 0
/* 800FA384 000F72C4  48 00 02 2C */ b lbl_800FA5B0
lbl_800FA388:
/* 800FA388 000F72C8  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 800FA38C 000F72CC  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 800FA390 000F72D0  90 01 00 48 */ stw r0, 0x48(r1)
/* 800FA394 000F72D4  7F E3 FB 78 */ mr r3, r31
/* 800FA398 000F72D8  38 9E 1A 60 */ addi r4, r30, 0x1a60
/* 800FA39C 000F72DC  38 A1 00 38 */ addi r5, r1, 0x38
/* 800FA3A0 000F72E0  4B F7 A3 A5 */ bl cBgS_NS_GetTriPla
/* 800FA3A4 000F72E4  C0 21 00 3C */ lfs f1, 0x3c(r1)
/* 800FA3A8 000F72E8  C0 02 95 4C */ lfs f0, lbl_80452F4C-_SDA2_BASE_(r2)
/* 800FA3AC 000F72EC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800FA3B0 000F72F0  40 80 00 18 */ bge lbl_800FA3C8
/* 800FA3B4 000F72F4  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 800FA3B8 000F72F8  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 800FA3BC 000F72FC  90 01 00 48 */ stw r0, 0x48(r1)
/* 800FA3C0 000F7300  38 60 00 00 */ li r3, 0
/* 800FA3C4 000F7304  48 00 01 EC */ b lbl_800FA5B0
lbl_800FA3C8:
/* 800FA3C8 000F7308  2C 1C 00 02 */ cmpwi r28, 2
/* 800FA3CC 000F730C  40 82 00 14 */ bne lbl_800FA3E0
/* 800FA3D0 000F7310  A8 7E 04 E6 */ lha r3, 0x4e6(r30)
/* 800FA3D4 000F7314  38 03 40 00 */ addi r0, r3, 0x4000
/* 800FA3D8 000F7318  7C 1C 07 34 */ extsh r28, r0
/* 800FA3DC 000F731C  48 00 00 20 */ b lbl_800FA3FC
lbl_800FA3E0:
/* 800FA3E0 000F7320  2C 1C 00 03 */ cmpwi r28, 3
/* 800FA3E4 000F7324  40 82 00 14 */ bne lbl_800FA3F8
/* 800FA3E8 000F7328  A8 7E 04 E6 */ lha r3, 0x4e6(r30)
/* 800FA3EC 000F732C  38 03 C0 00 */ addi r0, r3, -16384
/* 800FA3F0 000F7330  7C 1C 07 34 */ extsh r28, r0
/* 800FA3F4 000F7334  48 00 00 08 */ b lbl_800FA3FC
lbl_800FA3F8:
/* 800FA3F8 000F7338  AB 9E 04 DE */ lha r28, 0x4de(r30)
lbl_800FA3FC:
/* 800FA3FC 000F733C  C0 5E 04 D8 */ lfs f2, 0x4d8(r30)
/* 800FA400 000F7340  C0 22 93 3C */ lfs f1, lbl_80452D3C-_SDA2_BASE_(r2)
/* 800FA404 000F7344  C0 1E 04 D4 */ lfs f0, 0x4d4(r30)
/* 800FA408 000F7348  EC 21 00 2A */ fadds f1, f1, f0
/* 800FA40C 000F734C  C0 1E 04 D0 */ lfs f0, 0x4d0(r30)
/* 800FA410 000F7350  D0 01 00 2C */ stfs f0, 0x2c(r1)
/* 800FA414 000F7354  D0 21 00 30 */ stfs f1, 0x30(r1)
/* 800FA418 000F7358  D0 41 00 34 */ stfs f2, 0x34(r1)
/* 800FA41C 000F735C  80 1E 05 78 */ lwz r0, 0x578(r30)
/* 800FA420 000F7360  54 00 04 A5 */ rlwinm. r0, r0, 0, 0x12, 0x12
/* 800FA424 000F7364  41 82 00 0C */ beq lbl_800FA430
/* 800FA428 000F7368  C0 42 93 D4 */ lfs f2, lbl_80452DD4-_SDA2_BASE_(r2)
/* 800FA42C 000F736C  48 00 00 08 */ b lbl_800FA434
lbl_800FA430:
/* 800FA430 000F7370  C0 42 92 9C */ lfs f2, lbl_80452C9C-_SDA2_BASE_(r2)
lbl_800FA434:
/* 800FA434 000F7374  C0 21 00 2C */ lfs f1, 0x2c(r1)
/* 800FA438 000F7378  57 80 04 38 */ rlwinm r0, r28, 0, 0x10, 0x1c
/* 800FA43C 000F737C  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 800FA440 000F7380  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 800FA444 000F7384  7C 03 04 2E */ lfsx f0, r3, r0
/* 800FA448 000F7388  EC 02 00 32 */ fmuls f0, f2, f0
/* 800FA44C 000F738C  EC 01 00 2A */ fadds f0, f1, f0
/* 800FA450 000F7390  D0 01 00 20 */ stfs f0, 0x20(r1)
/* 800FA454 000F7394  C0 01 00 30 */ lfs f0, 0x30(r1)
/* 800FA458 000F7398  D0 01 00 24 */ stfs f0, 0x24(r1)
/* 800FA45C 000F739C  C0 21 00 34 */ lfs f1, 0x34(r1)
/* 800FA460 000F73A0  3B A3 00 04 */ addi r29, r3, 4
/* 800FA464 000F73A4  7C 1D 04 2E */ lfsx f0, r29, r0
/* 800FA468 000F73A8  EC 02 00 32 */ fmuls f0, f2, f0
/* 800FA46C 000F73AC  EC 01 00 2A */ fadds f0, f1, f0
/* 800FA470 000F73B0  D0 01 00 28 */ stfs f0, 0x28(r1)
/* 800FA474 000F73B4  7F C3 F3 78 */ mr r3, r30
/* 800FA478 000F73B8  38 81 00 2C */ addi r4, r1, 0x2c
/* 800FA47C 000F73BC  38 A1 00 20 */ addi r5, r1, 0x20
/* 800FA480 000F73C0  4B FA 7D 19 */ bl daAlink_c_NS_commonLineCheck
/* 800FA484 000F73C4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800FA488 000F73C8  41 82 00 18 */ beq lbl_800FA4A0
/* 800FA48C 000F73CC  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 800FA490 000F73D0  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 800FA494 000F73D4  90 01 00 48 */ stw r0, 0x48(r1)
/* 800FA498 000F73D8  38 60 00 00 */ li r3, 0
/* 800FA49C 000F73DC  48 00 01 14 */ b lbl_800FA5B0
lbl_800FA4A0:
/* 800FA4A0 000F73E0  38 7E 1D 08 */ addi r3, r30, 0x1d08
/* 800FA4A4 000F73E4  38 81 00 20 */ addi r4, r1, 0x20
/* 800FA4A8 000F73E8  48 16 D8 81 */ bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800FA4AC 000F73EC  7F E3 FB 78 */ mr r3, r31
/* 800FA4B0 000F73F0  38 9E 1D 08 */ addi r4, r30, 0x1d08
/* 800FA4B4 000F73F4  4B F7 9F ED */ bl cBgS_NS_GroundCross
/* 800FA4B8 000F73F8  C0 5E 04 D4 */ lfs f2, 0x4d4(r30)
/* 800FA4BC 000F73FC  EC 01 10 28 */ fsubs f0, f1, f2
/* 800FA4C0 000F7400  FC 00 02 10 */ fabs f0, f0
/* 800FA4C4 000F7404  FC 20 00 18 */ frsp f1, f0
/* 800FA4C8 000F7408  C0 02 93 3C */ lfs f0, lbl_80452D3C-_SDA2_BASE_(r2)
/* 800FA4CC 000F740C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800FA4D0 000F7410  40 81 00 BC */ ble lbl_800FA58C
/* 800FA4D4 000F7414  EC 42 00 28 */ fsubs f2, f2, f0
/* 800FA4D8 000F7418  C0 81 00 20 */ lfs f4, 0x20(r1)
/* 800FA4DC 000F741C  D0 81 00 14 */ stfs f4, 0x14(r1)
/* 800FA4E0 000F7420  D0 41 00 18 */ stfs f2, 0x18(r1)
/* 800FA4E4 000F7424  C0 A1 00 28 */ lfs f5, 0x28(r1)
/* 800FA4E8 000F7428  D0 A1 00 1C */ stfs f5, 0x1c(r1)
/* 800FA4EC 000F742C  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 800FA4F0 000F7430  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FA4F4 000F7434  7C 7D 04 2E */ lfsx f3, r29, r0
/* 800FA4F8 000F7438  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 800FA4FC 000F743C  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 800FA500 000F7440  7C 03 04 2E */ lfsx f0, r3, r0
/* 800FA504 000F7444  C0 22 94 80 */ lfs f1, lbl_80452E80-_SDA2_BASE_(r2)
/* 800FA508 000F7448  EC 01 00 32 */ fmuls f0, f1, f0
/* 800FA50C 000F744C  EC 04 00 2A */ fadds f0, f4, f0
/* 800FA510 000F7450  D0 01 00 08 */ stfs f0, 8(r1)
/* 800FA514 000F7454  D0 41 00 0C */ stfs f2, 0xc(r1)
/* 800FA518 000F7458  EC 01 00 F2 */ fmuls f0, f1, f3
/* 800FA51C 000F745C  EC 05 00 2A */ fadds f0, f5, f0
/* 800FA520 000F7460  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 800FA524 000F7464  7F C3 F3 78 */ mr r3, r30
/* 800FA528 000F7468  38 81 00 14 */ addi r4, r1, 0x14
/* 800FA52C 000F746C  38 A1 00 08 */ addi r5, r1, 8
/* 800FA530 000F7470  4B FA 7C 69 */ bl daAlink_c_NS_commonLineCheck
/* 800FA534 000F7474  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800FA538 000F7478  40 82 00 18 */ bne lbl_800FA550
/* 800FA53C 000F747C  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 800FA540 000F7480  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 800FA544 000F7484  90 01 00 48 */ stw r0, 0x48(r1)
/* 800FA548 000F7488  38 60 00 00 */ li r3, 0
/* 800FA54C 000F748C  48 00 00 64 */ b lbl_800FA5B0
lbl_800FA550:
/* 800FA550 000F7490  7F E3 FB 78 */ mr r3, r31
/* 800FA554 000F7494  38 9E 1B 5C */ addi r4, r30, 0x1b5c
/* 800FA558 000F7498  38 A1 00 38 */ addi r5, r1, 0x38
/* 800FA55C 000F749C  4B F7 A1 E9 */ bl cBgS_NS_GetTriPla
/* 800FA560 000F74A0  38 61 00 38 */ addi r3, r1, 0x38
/* 800FA564 000F74A4  48 16 CB C5 */ bl cXyz_NS_atan2sX_Z
/* 800FA568 000F74A8  A8 9E 04 E6 */ lha r4, 0x4e6(r30)
/* 800FA56C 000F74AC  48 17 68 B9 */ bl cLib_distanceAngleS
/* 800FA570 000F74B0  2C 03 54 9F */ cmpwi r3, 0x549f
/* 800FA574 000F74B4  40 80 00 18 */ bge lbl_800FA58C
/* 800FA578 000F74B8  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 800FA57C 000F74BC  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 800FA580 000F74C0  90 01 00 48 */ stw r0, 0x48(r1)
/* 800FA584 000F74C4  38 60 00 00 */ li r3, 0
/* 800FA588 000F74C8  48 00 00 28 */ b lbl_800FA5B0
lbl_800FA58C:
/* 800FA58C 000F74CC  7F C3 F3 78 */ mr r3, r30
/* 800FA590 000F74D0  7F 84 E3 78 */ mr r4, r28
/* 800FA594 000F74D4  38 A0 00 00 */ li r5, 0
/* 800FA598 000F74D8  4B FF FA D9 */ bl daAlink_c_NS_hangMoveBgCheck
/* 800FA59C 000F74DC  7C 60 00 34 */ cntlzw r0, r3
/* 800FA5A0 000F74E0  54 03 DE 3E */ rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 800FA5A4 000F74E4  3C 80 80 3A */ lis r4, lbl_803A37C0@ha
/* 800FA5A8 000F74E8  38 04 37 C0 */ addi r0, r4, lbl_803A37C0@l
/* 800FA5AC 000F74EC  90 01 00 48 */ stw r0, 0x48(r1)
lbl_800FA5B0:
/* 800FA5B0 000F74F0  39 61 00 60 */ addi r11, r1, 0x60
/* 800FA5B4 000F74F4  48 26 7C 71 */ bl _restgpr_28
/* 800FA5B8 000F74F8  80 01 00 64 */ lwz r0, 0x64(r1)
/* 800FA5BC 000F74FC  7C 08 03 A6 */ mtlr r0
/* 800FA5C0 000F7500  38 21 00 60 */ addi r1, r1, 0x60
/* 800FA5C4 000F7504  4E 80 00 20 */ blr
