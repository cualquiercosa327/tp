/* 80112768 0010F6A8  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 8011276C 0010F6AC  7C 08 02 A6 */ mflr r0
/* 80112770 0010F6B0  90 01 00 24 */ stw r0, 0x24(r1)
/* 80112774 0010F6B4  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 80112778 0010F6B8  7C 7F 1B 78 */ mr r31, r3
/* 8011277C 0010F6BC  80 63 38 40 */ lwz r3, 0x3840(r3)
/* 80112780 0010F6C0  4B EF A5 E5 */ bl mDoMtx_stack_c_NS_transS
/* 80112784 0010F6C4  80 7F 38 44 */ lwz r3, 0x3844(r31)
/* 80112788 0010F6C8  4B EF A7 BD */ bl mDoMtx_stack_c_NS_ZXYrotM
/* 8011278C 0010F6CC  3C 60 80 3E */ lis r3, lbl_803DD470@ha
/* 80112790 0010F6D0  38 63 D4 70 */ addi r3, r3, lbl_803DD470@l
/* 80112794 0010F6D4  3C 80 80 39 */ lis r4, lbl_8038FB50@ha
/* 80112798 0010F6D8  38 84 FB 50 */ addi r4, r4, lbl_8038FB50@l
/* 8011279C 0010F6DC  38 A1 00 08 */ addi r5, r1, 8
/* 801127A0 0010F6E0  48 23 45 CD */ bl PSMTXMultVec
/* 801127A4 0010F6E4  C0 41 00 10 */ lfs f2, 0x10(r1)
/* 801127A8 0010F6E8  C0 21 00 0C */ lfs f1, 0xc(r1)
/* 801127AC 0010F6EC  C0 02 94 28 */ lfs f0, lbl_80452E28-_SDA2_BASE_(r2)
/* 801127B0 0010F6F0  EC 21 00 28 */ fsubs f1, f1, f0
/* 801127B4 0010F6F4  C0 1F 34 90 */ lfs f0, 0x3490(r31)
/* 801127B8 0010F6F8  EC 21 00 28 */ fsubs f1, f1, f0
/* 801127BC 0010F6FC  C0 01 00 08 */ lfs f0, 8(r1)
/* 801127C0 0010F700  D0 1F 38 04 */ stfs f0, 0x3804(r31)
/* 801127C4 0010F704  D0 3F 38 08 */ stfs f1, 0x3808(r31)
/* 801127C8 0010F708  D0 5F 38 0C */ stfs f2, 0x380c(r31)
/* 801127CC 0010F70C  38 7F 34 90 */ addi r3, r31, 0x3490
/* 801127D0 0010F710  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 801127D4 0010F714  C0 42 93 14 */ lfs f2, lbl_80452D14-_SDA2_BASE_(r2)
/* 801127D8 0010F718  48 15 DF 69 */ bl cLib_chaseF__FPfff
/* 801127DC 0010F71C  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 801127E0 0010F720  80 01 00 24 */ lwz r0, 0x24(r1)
/* 801127E4 0010F724  7C 08 03 A6 */ mtlr r0
/* 801127E8 0010F728  38 21 00 20 */ addi r1, r1, 0x20
/* 801127EC 0010F72C  4E 80 00 20 */ blr
