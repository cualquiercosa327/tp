/* 800C3B1C 000C0A5C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800C3B20 000C0A60  7C 08 02 A6 */ mflr r0
/* 800C3B24 000C0A64  90 01 00 14 */ stw r0, 0x14(r1)
/* 800C3B28 000C0A68  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800C3B2C 000C0A6C  93 C1 00 08 */ stw r30, 8(r1)
/* 800C3B30 000C0A70  7C 7E 1B 78 */ mr r30, r3
/* 800C3B34 000C0A74  38 7E 33 98 */ addi r3, r30, 0x3398
/* 800C3B38 000C0A78  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800C3B3C 000C0A7C  3C 80 80 39 */ lis r4, lbl_8038D6BC@ha
/* 800C3B40 000C0A80  38 84 D6 BC */ addi r4, r4, lbl_8038D6BC@l
/* 800C3B44 000C0A84  C0 44 00 38 */ lfs f2, 0x38(r4)
/* 800C3B48 000C0A88  48 1A CB F9 */ bl cLib_chaseF__FPfff
/* 800C3B4C 000C0A8C  7F C3 F3 78 */ mr r3, r30
/* 800C3B50 000C0A90  4B FF 64 01 */ bl daAlink_c_NS_checkGroundSpecialMode
/* 800C3B54 000C0A94  2C 03 00 00 */ cmpwi r3, 0
/* 800C3B58 000C0A98  41 82 00 0C */ beq lbl_800C3B64
/* 800C3B5C 000C0A9C  38 60 00 01 */ li r3, 1
/* 800C3B60 000C0AA0  48 00 00 C4 */ b lbl_800C3C24
lbl_800C3B64:
/* 800C3B64 000C0AA4  80 1E 05 88 */ lwz r0, 0x588(r30)
/* 800C3B68 000C0AA8  54 00 02 D7 */ rlwinm. r0, r0, 0, 0xb, 0xb
/* 800C3B6C 000C0AAC  41 82 00 10 */ beq lbl_800C3B7C
/* 800C3B70 000C0AB0  7F C3 F3 78 */ mr r3, r30
/* 800C3B74 000C0AB4  48 00 48 ED */ bl daAlink_c_NS_procFloorDownReboundInit
/* 800C3B78 000C0AB8  48 00 00 AC */ b lbl_800C3C24
lbl_800C3B7C:
/* 800C3B7C 000C0ABC  38 7E 04 E6 */ addi r3, r30, 0x4e6
/* 800C3B80 000C0AC0  A8 9E 30 0E */ lha r4, 0x300e(r30)
/* 800C3B84 000C0AC4  38 A0 00 1E */ li r5, 0x1e
/* 800C3B88 000C0AC8  38 C0 3C DF */ li r6, 0x3cdf
/* 800C3B8C 000C0ACC  38 E0 1F 40 */ li r7, 0x1f40
/* 800C3B90 000C0AD0  48 1A C9 B1 */ bl cLib_addCalcAngleS__FPsssss
/* 800C3B94 000C0AD4  7C 7F 1B 78 */ mr r31, r3
/* 800C3B98 000C0AD8  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 800C3B9C 000C0ADC  B0 1E 04 DE */ sth r0, 0x4de(r30)
/* 800C3BA0 000C0AE0  7F C3 F3 78 */ mr r3, r30
/* 800C3BA4 000C0AE4  4B FF 61 89 */ bl daAlink_c_NS_checkNextActionFromButton
/* 800C3BA8 000C0AE8  2C 03 00 00 */ cmpwi r3, 0
/* 800C3BAC 000C0AEC  41 82 00 0C */ beq lbl_800C3BB8
/* 800C3BB0 000C0AF0  38 60 00 01 */ li r3, 1
/* 800C3BB4 000C0AF4  48 00 00 70 */ b lbl_800C3C24
lbl_800C3BB8:
/* 800C3BB8 000C0AF8  7F E0 07 35 */ extsh. r0, r31
/* 800C3BBC 000C0AFC  40 82 00 64 */ bne lbl_800C3C20
/* 800C3BC0 000C0B00  7F C3 F3 78 */ mr r3, r30
/* 800C3BC4 000C0B04  48 05 20 5D */ bl daAlink_c_NS_checkEventRun
/* 800C3BC8 000C0B08  2C 03 00 00 */ cmpwi r3, 0
/* 800C3BCC 000C0B0C  41 82 00 48 */ beq lbl_800C3C14
/* 800C3BD0 000C0B10  80 1E 06 14 */ lwz r0, 0x614(r30)
/* 800C3BD4 000C0B14  28 00 00 05 */ cmplwi r0, 5
/* 800C3BD8 000C0B18  40 82 00 1C */ bne lbl_800C3BF4
/* 800C3BDC 000C0B1C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800C3BE0 000C0B20  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800C3BE4 000C0B24  38 63 4F F8 */ addi r3, r3, 0x4ff8
/* 800C3BE8 000C0B28  80 9E 31 84 */ lwz r4, 0x3184(r30)
/* 800C3BEC 000C0B2C  4B F8 45 91 */ bl dEvent_manager_c_NS_cutEnd
/* 800C3BF0 000C0B30  48 00 00 30 */ b lbl_800C3C20
lbl_800C3BF4:
/* 800C3BF4 000C0B34  7F C3 F3 78 */ mr r3, r30
/* 800C3BF8 000C0B38  38 80 00 00 */ li r4, 0
/* 800C3BFC 000C0B3C  4B FF 64 D5 */ bl daAlink_c_NS_checkNextAction
/* 800C3C00 000C0B40  2C 03 00 00 */ cmpwi r3, 0
/* 800C3C04 000C0B44  40 82 00 1C */ bne lbl_800C3C20
/* 800C3C08 000C0B48  7F C3 F3 78 */ mr r3, r30
/* 800C3C0C 000C0B4C  4B FF 1C E1 */ bl daAlink_c_NS_checkWaitAction
/* 800C3C10 000C0B50  48 00 00 10 */ b lbl_800C3C20
lbl_800C3C14:
/* 800C3C14 000C0B54  7F C3 F3 78 */ mr r3, r30
/* 800C3C18 000C0B58  38 80 00 00 */ li r4, 0
/* 800C3C1C 000C0B5C  4B FF 64 B5 */ bl daAlink_c_NS_checkNextAction
lbl_800C3C20:
/* 800C3C20 000C0B60  38 60 00 01 */ li r3, 1
lbl_800C3C24:
/* 800C3C24 000C0B64  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800C3C28 000C0B68  83 C1 00 08 */ lwz r30, 8(r1)
/* 800C3C2C 000C0B6C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800C3C30 000C0B70  7C 08 03 A6 */ mtlr r0
/* 800C3C34 000C0B74  38 21 00 10 */ addi r1, r1, 0x10
/* 800C3C38 000C0B78  4E 80 00 20 */ blr
