/* 800C5CA4 000C2BE4  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 800C5CA8 000C2BE8  7C 08 02 A6 */ mflr r0
/* 800C5CAC 000C2BEC  90 01 00 34 */ stw r0, 0x34(r1)
/* 800C5CB0 000C2BF0  93 E1 00 2C */ stw r31, 0x2c(r1)
/* 800C5CB4 000C2BF4  7C 7F 1B 78 */ mr r31, r3
/* 800C5CB8 000C2BF8  38 7F 33 98 */ addi r3, r31, 0x3398
/* 800C5CBC 000C2BFC  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800C5CC0 000C2C00  3C 80 80 39 */ lis r4, lbl_8038D6BC@ha
/* 800C5CC4 000C2C04  38 84 D6 BC */ addi r4, r4, lbl_8038D6BC@l
/* 800C5CC8 000C2C08  C0 44 00 44 */ lfs f2, 0x44(r4)
/* 800C5CCC 000C2C0C  48 1A AA 75 */ bl cLib_chaseF__FPfff
/* 800C5CD0 000C2C10  7F E3 FB 78 */ mr r3, r31
/* 800C5CD4 000C2C14  4B FE DC 31 */ bl daAlink_c_NS_checkZeroSpeedF
/* 800C5CD8 000C2C18  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800C5CDC 000C2C1C  41 82 00 60 */ beq lbl_800C5D3C
/* 800C5CE0 000C2C20  C0 3F 33 AC */ lfs f1, 0x33ac(r31)
/* 800C5CE4 000C2C24  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 800C5CE8 000C2C28  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800C5CEC 000C2C2C  40 81 00 40 */ ble lbl_800C5D2C
/* 800C5CF0 000C2C30  A8 7F 04 E6 */ lha r3, 0x4e6(r31)
/* 800C5CF4 000C2C34  3C 63 00 01 */ addis r3, r3, 1
/* 800C5CF8 000C2C38  38 03 80 00 */ addi r0, r3, -32768
/* 800C5CFC 000C2C3C  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 800C5D00 000C2C40  A8 7F 04 E6 */ lha r3, 0x4e6(r31)
/* 800C5D04 000C2C44  38 03 01 00 */ addi r0, r3, 0x100
/* 800C5D08 000C2C48  B0 1F 04 E6 */ sth r0, 0x4e6(r31)
/* 800C5D0C 000C2C4C  C0 22 92 98 */ lfs f1, lbl_80452C98-_SDA2_BASE_(r2)
/* 800C5D10 000C2C50  C0 1F 05 94 */ lfs f0, 0x594(r31)
/* 800C5D14 000C2C54  EC 01 00 32 */ fmuls f0, f1, f0
/* 800C5D18 000C2C58  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 800C5D1C 000C2C5C  7F E3 FB 78 */ mr r3, r31
/* 800C5D20 000C2C60  38 80 00 00 */ li r4, 0
/* 800C5D24 000C2C64  4B FF DF 19 */ bl daAlink_c_NS_procMoveTurnInit
/* 800C5D28 000C2C68  48 00 01 28 */ b lbl_800C5E50
lbl_800C5D2C:
/* 800C5D2C 000C2C6C  7F E3 FB 78 */ mr r3, r31
/* 800C5D30 000C2C70  38 80 00 00 */ li r4, 0
/* 800C5D34 000C2C74  4B FF 43 9D */ bl daAlink_c_NS_checkNextAction
/* 800C5D38 000C2C78  48 00 01 18 */ b lbl_800C5E50
lbl_800C5D3C:
/* 800C5D3C 000C2C7C  A8 7F 30 08 */ lha r3, 0x3008(r31)
/* 800C5D40 000C2C80  38 03 FF FF */ addi r0, r3, -1
/* 800C5D44 000C2C84  B0 1F 30 08 */ sth r0, 0x3008(r31)
/* 800C5D48 000C2C88  80 1F 19 9C */ lwz r0, 0x199c(r31)
/* 800C5D4C 000C2C8C  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800C5D50 000C2C90  40 82 00 1C */ bne lbl_800C5D6C
/* 800C5D54 000C2C94  80 1F 31 74 */ lwz r0, 0x3174(r31)
/* 800C5D58 000C2C98  2C 00 00 08 */ cmpwi r0, 8
/* 800C5D5C 000C2C9C  40 82 00 2C */ bne lbl_800C5D88
/* 800C5D60 000C2CA0  A8 1F 30 08 */ lha r0, 0x3008(r31)
/* 800C5D64 000C2CA4  2C 00 00 00 */ cmpwi r0, 0
/* 800C5D68 000C2CA8  40 82 00 20 */ bne lbl_800C5D88
lbl_800C5D6C:
/* 800C5D6C 000C2CAC  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800C5D70 000C2CB0  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 800C5D74 000C2CB4  7F E3 FB 78 */ mr r3, r31
/* 800C5D78 000C2CB8  38 80 00 00 */ li r4, 0
/* 800C5D7C 000C2CBC  4B FF 43 55 */ bl daAlink_c_NS_checkNextAction
/* 800C5D80 000C2CC0  38 60 00 01 */ li r3, 1
/* 800C5D84 000C2CC4  48 00 00 D0 */ b lbl_800C5E54
lbl_800C5D88:
/* 800C5D88 000C2CC8  C0 3F 33 98 */ lfs f1, 0x3398(r31)
/* 800C5D8C 000C2CCC  C0 02 93 D8 */ lfs f0, lbl_80452DD8-_SDA2_BASE_(r2)
/* 800C5D90 000C2CD0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800C5D94 000C2CD4  40 81 00 0C */ ble lbl_800C5DA0
/* 800C5D98 000C2CD8  38 00 00 40 */ li r0, 0x40
/* 800C5D9C 000C2CDC  98 1F 2F 9D */ stb r0, 0x2f9d(r31)
lbl_800C5DA0:
/* 800C5DA0 000C2CE0  C0 9F 04 D0 */ lfs f4, 0x4d0(r31)
/* 800C5DA4 000C2CE4  D0 81 00 14 */ stfs f4, 0x14(r1)
/* 800C5DA8 000C2CE8  C0 3F 04 D4 */ lfs f1, 0x4d4(r31)
/* 800C5DAC 000C2CEC  D0 21 00 18 */ stfs f1, 0x18(r1)
/* 800C5DB0 000C2CF0  C0 7F 04 D8 */ lfs f3, 0x4d8(r31)
/* 800C5DB4 000C2CF4  D0 61 00 1C */ stfs f3, 0x1c(r1)
/* 800C5DB8 000C2CF8  C0 02 93 D8 */ lfs f0, lbl_80452DD8-_SDA2_BASE_(r2)
/* 800C5DBC 000C2CFC  EC 41 00 2A */ fadds f2, f1, f0
/* 800C5DC0 000C2D00  D0 41 00 18 */ stfs f2, 0x18(r1)
/* 800C5DC4 000C2D04  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 800C5DC8 000C2D08  38 83 9A 20 */ addi r4, r3, lbl_80439A20@l
/* 800C5DCC 000C2D0C  A8 1F 04 DE */ lha r0, 0x4de(r31)
/* 800C5DD0 000C2D10  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 800C5DD4 000C2D14  7C 64 02 14 */ add r3, r4, r0
/* 800C5DD8 000C2D18  C0 A3 00 04 */ lfs f5, 4(r3)
/* 800C5DDC 000C2D1C  7C 04 04 2E */ lfsx f0, r4, r0
/* 800C5DE0 000C2D20  C0 22 93 00 */ lfs f1, lbl_80452D00-_SDA2_BASE_(r2)
/* 800C5DE4 000C2D24  EC 01 00 32 */ fmuls f0, f1, f0
/* 800C5DE8 000C2D28  EC 04 00 2A */ fadds f0, f4, f0
/* 800C5DEC 000C2D2C  D0 01 00 08 */ stfs f0, 8(r1)
/* 800C5DF0 000C2D30  D0 41 00 0C */ stfs f2, 0xc(r1)
/* 800C5DF4 000C2D34  EC 01 01 72 */ fmuls f0, f1, f5
/* 800C5DF8 000C2D38  EC 03 00 2A */ fadds f0, f3, f0
/* 800C5DFC 000C2D3C  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 800C5E00 000C2D40  7F E3 FB 78 */ mr r3, r31
/* 800C5E04 000C2D44  38 81 00 14 */ addi r4, r1, 0x14
/* 800C5E08 000C2D48  38 A1 00 08 */ addi r5, r1, 8
/* 800C5E0C 000C2D4C  4B FD C3 8D */ bl daAlink_c_NS_commonLineCheck
/* 800C5E10 000C2D50  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800C5E14 000C2D54  41 82 00 2C */ beq lbl_800C5E40
/* 800C5E18 000C2D58  38 7F 1B 5C */ addi r3, r31, 0x1b5c
/* 800C5E1C 000C2D5C  4B FA FE F1 */ bl dBgS_CheckBWallPoly
/* 800C5E20 000C2D60  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800C5E24 000C2D64  41 82 00 1C */ beq lbl_800C5E40
/* 800C5E28 000C2D68  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800C5E2C 000C2D6C  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 800C5E30 000C2D70  7F E3 FB 78 */ mr r3, r31
/* 800C5E34 000C2D74  38 80 00 00 */ li r4, 0
/* 800C5E38 000C2D78  4B FF 42 99 */ bl daAlink_c_NS_checkNextAction
/* 800C5E3C 000C2D7C  48 00 00 18 */ b lbl_800C5E54
lbl_800C5E40:
/* 800C5E40 000C2D80  7F E3 FB 78 */ mr r3, r31
/* 800C5E44 000C2D84  3C 80 00 03 */ lis r4, 0x00030017@ha
/* 800C5E48 000C2D88  38 84 00 17 */ addi r4, r4, 0x00030017@l
/* 800C5E4C 000C2D8C  4B FF 93 81 */ bl daAlink_c_NS_seStartMapInfoLevel
lbl_800C5E50:
/* 800C5E50 000C2D90  38 60 00 01 */ li r3, 1
lbl_800C5E54:
/* 800C5E54 000C2D94  83 E1 00 2C */ lwz r31, 0x2c(r1)
/* 800C5E58 000C2D98  80 01 00 34 */ lwz r0, 0x34(r1)
/* 800C5E5C 000C2D9C  7C 08 03 A6 */ mtlr r0
/* 800C5E60 000C2DA0  38 21 00 30 */ addi r1, r1, 0x30
/* 800C5E64 000C2DA4  4E 80 00 20 */ blr
