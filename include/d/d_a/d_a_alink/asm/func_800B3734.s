/* 800B3734 000B0674  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800B3738 000B0678  7C 08 02 A6 */ mflr r0
/* 800B373C 000B067C  90 01 00 24 */ stw r0, 0x24(r1)
/* 800B3740 000B0680  39 61 00 20 */ addi r11, r1, 0x20
/* 800B3744 000B0684  48 2A EA 99 */ bl _savegpr_29
/* 800B3748 000B0688  7C 7D 1B 78 */ mr r29, r3
/* 800B374C 000B068C  7C 9E 23 78 */ mr r30, r4
/* 800B3750 000B0690  80 83 27 EC */ lwz r4, 0x27ec(r3)
/* 800B3754 000B0694  28 04 00 00 */ cmplwi r4, 0
/* 800B3758 000B0698  41 82 00 D0 */ beq lbl_800B3828
/* 800B375C 000B069C  80 1D 28 38 */ lwz r0, 0x2838(r29)
/* 800B3760 000B06A0  7C 04 00 40 */ cmplw r4, r0
/* 800B3764 000B06A4  40 82 00 20 */ bne lbl_800B3784
/* 800B3768 000B06A8  48 02 CD 45 */ bl daAlink_c_NS_checkBoomerangThrowAnime
/* 800B376C 000B06AC  2C 03 00 00 */ cmpwi r3, 0
/* 800B3770 000B06B0  40 82 00 5C */ bne lbl_800B37CC
/* 800B3774 000B06B4  C0 3D 33 AC */ lfs f1, 0x33ac(r29)
/* 800B3778 000B06B8  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 800B377C 000B06BC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800B3780 000B06C0  40 81 00 4C */ ble lbl_800B37CC
lbl_800B3784:
/* 800B3784 000B06C4  80 7D 27 EC */ lwz r3, 0x27ec(r29)
/* 800B3788 000B06C8  80 1D 28 40 */ lwz r0, 0x2840(r29)
/* 800B378C 000B06CC  7C 03 00 40 */ cmplw r3, r0
/* 800B3790 000B06D0  40 82 00 44 */ bne lbl_800B37D4
/* 800B3794 000B06D4  38 60 00 00 */ li r3, 0
/* 800B3798 000B06D8  A0 1D 2F DC */ lhz r0, 0x2fdc(r29)
/* 800B379C 000B06DC  28 00 00 46 */ cmplwi r0, 0x46
/* 800B37A0 000B06E0  40 82 00 14 */ bne lbl_800B37B4
/* 800B37A4 000B06E4  A0 1D 1F BC */ lhz r0, 0x1fbc(r29)
/* 800B37A8 000B06E8  28 00 00 53 */ cmplwi r0, 0x53
/* 800B37AC 000B06EC  40 82 00 08 */ bne lbl_800B37B4
/* 800B37B0 000B06F0  38 60 00 01 */ li r3, 1
lbl_800B37B4:
/* 800B37B4 000B06F4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B37B8 000B06F8  40 82 00 14 */ bne lbl_800B37CC
/* 800B37BC 000B06FC  C0 3D 33 AC */ lfs f1, 0x33ac(r29)
/* 800B37C0 000B0700  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 800B37C4 000B0704  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800B37C8 000B0708  41 81 00 0C */ bgt lbl_800B37D4
lbl_800B37CC:
/* 800B37CC 000B070C  38 60 00 01 */ li r3, 1
/* 800B37D0 000B0710  48 00 00 5C */ b lbl_800B382C
lbl_800B37D4:
/* 800B37D4 000B0714  7F A3 EB 78 */ mr r3, r29
/* 800B37D8 000B0718  4B FF FE 59 */ bl daAlink_c_NS_getShapeAngleYAtnActor
/* 800B37DC 000B071C  7C 7F 1B 78 */ mr r31, r3
/* 800B37E0 000B0720  2C 1E 00 00 */ cmpwi r30, 0
/* 800B37E4 000B0724  41 82 00 24 */ beq lbl_800B3808
/* 800B37E8 000B0728  A8 1D 04 E6 */ lha r0, 0x4e6(r29)
/* 800B37EC 000B072C  7C 00 F8 50 */ subf r0, r0, r31
/* 800B37F0 000B0730  7C 03 07 34 */ extsh r3, r0
/* 800B37F4 000B0734  48 2B 18 DD */ bl func_803650D0
/* 800B37F8 000B0738  2C 03 30 00 */ cmpwi r3, 0x3000
/* 800B37FC 000B073C  40 81 00 0C */ ble lbl_800B3808
/* 800B3800 000B0740  38 60 00 01 */ li r3, 1
/* 800B3804 000B0744  48 00 00 28 */ b lbl_800B382C
lbl_800B3808:
/* 800B3808 000B0748  38 7D 04 E6 */ addi r3, r29, 0x4e6
/* 800B380C 000B074C  7F E4 FB 78 */ mr r4, r31
/* 800B3810 000B0750  38 A0 00 02 */ li r5, 2
/* 800B3814 000B0754  38 C0 20 00 */ li r6, 0x2000
/* 800B3818 000B0758  38 E0 08 00 */ li r7, 0x800
/* 800B381C 000B075C  48 1B CD 25 */ bl cLib_addCalcAngleS__FPsssss
/* 800B3820 000B0760  38 60 00 01 */ li r3, 1
/* 800B3824 000B0764  48 00 00 08 */ b lbl_800B382C
lbl_800B3828:
/* 800B3828 000B0768  38 60 00 00 */ li r3, 0
lbl_800B382C:
/* 800B382C 000B076C  39 61 00 20 */ addi r11, r1, 0x20
/* 800B3830 000B0770  48 2A E9 F9 */ bl _restgpr_29
/* 800B3834 000B0774  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800B3838 000B0778  7C 08 03 A6 */ mtlr r0
/* 800B383C 000B077C  38 21 00 20 */ addi r1, r1, 0x20
/* 800B3840 000B0780  4E 80 00 20 */ blr
