/* 8019CE5C 00199D9C  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 8019CE60 00199DA0  7C 08 02 A6 */ mflr r0
/* 8019CE64 00199DA4  90 01 00 44 */ stw r0, 0x44(r1)
/* 8019CE68 00199DA8  93 E1 00 3C */ stw r31, 0x3c(r1)
/* 8019CE6C 00199DAC  93 C1 00 38 */ stw r30, 0x38(r1)
/* 8019CE70 00199DB0  7C 67 1B 78 */ mr r7, r3
/* 8019CE74 00199DB4  7C 80 23 78 */ mr r0, r4
/* 8019CE78 00199DB8  7C BE 2B 78 */ mr r30, r5
/* 8019CE7C 00199DBC  7C DF 33 78 */ mr r31, r6
/* 8019CE80 00199DC0  38 61 00 18 */ addi r3, r1, 0x18
/* 8019CE84 00199DC4  7C E4 3B 78 */ mr r4, r7
/* 8019CE88 00199DC8  7C 05 03 78 */ mr r5, r0
/* 8019CE8C 00199DCC  48 0C 9C A9 */ bl __mi__4cXyzCFRC3Vec
/* 8019CE90 00199DD0  C0 41 00 18 */ lfs f2, 0x18(r1)
/* 8019CE94 00199DD4  D0 41 00 24 */ stfs f2, 0x24(r1)
/* 8019CE98 00199DD8  C0 01 00 1C */ lfs f0, 0x1c(r1)
/* 8019CE9C 00199DDC  D0 01 00 28 */ stfs f0, 0x28(r1)
/* 8019CEA0 00199DE0  C0 21 00 20 */ lfs f1, 0x20(r1)
/* 8019CEA4 00199DE4  D0 21 00 2C */ stfs f1, 0x2c(r1)
/* 8019CEA8 00199DE8  D0 41 00 0C */ stfs f2, 0xc(r1)
/* 8019CEAC 00199DEC  C0 02 A2 0C */ lfs f0, lbl_80453C0C-_SDA2_BASE_(r2)
/* 8019CEB0 00199DF0  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 8019CEB4 00199DF4  D0 21 00 14 */ stfs f1, 0x14(r1)
/* 8019CEB8 00199DF8  38 61 00 0C */ addi r3, r1, 0xc
/* 8019CEBC 00199DFC  48 1A A2 7D */ bl PSVECSquareMag
/* 8019CEC0 00199E00  C0 02 A2 0C */ lfs f0, lbl_80453C0C-_SDA2_BASE_(r2)
/* 8019CEC4 00199E04  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8019CEC8 00199E08  40 81 00 58 */ ble lbl_8019CF20
/* 8019CECC 00199E0C  FC 00 08 34 */ frsqrte f0, f1
/* 8019CED0 00199E10  C8 82 A2 10 */ lfd f4, lbl_80453C10-_SDA2_BASE_(r2)
/* 8019CED4 00199E14  FC 44 00 32 */ fmul f2, f4, f0
/* 8019CED8 00199E18  C8 62 A2 18 */ lfd f3, lbl_80453C18-_SDA2_BASE_(r2)
/* 8019CEDC 00199E1C  FC 00 00 32 */ fmul f0, f0, f0
/* 8019CEE0 00199E20  FC 01 00 32 */ fmul f0, f1, f0
/* 8019CEE4 00199E24  FC 03 00 28 */ fsub f0, f3, f0
/* 8019CEE8 00199E28  FC 02 00 32 */ fmul f0, f2, f0
/* 8019CEEC 00199E2C  FC 44 00 32 */ fmul f2, f4, f0
/* 8019CEF0 00199E30  FC 00 00 32 */ fmul f0, f0, f0
/* 8019CEF4 00199E34  FC 01 00 32 */ fmul f0, f1, f0
/* 8019CEF8 00199E38  FC 03 00 28 */ fsub f0, f3, f0
/* 8019CEFC 00199E3C  FC 02 00 32 */ fmul f0, f2, f0
/* 8019CF00 00199E40  FC 44 00 32 */ fmul f2, f4, f0
/* 8019CF04 00199E44  FC 00 00 32 */ fmul f0, f0, f0
/* 8019CF08 00199E48  FC 01 00 32 */ fmul f0, f1, f0
/* 8019CF0C 00199E4C  FC 03 00 28 */ fsub f0, f3, f0
/* 8019CF10 00199E50  FC 02 00 32 */ fmul f0, f2, f0
/* 8019CF14 00199E54  FC 41 00 32 */ fmul f2, f1, f0
/* 8019CF18 00199E58  FC 40 10 18 */ frsp f2, f2
/* 8019CF1C 00199E5C  48 00 00 90 */ b lbl_8019CFAC
lbl_8019CF20:
/* 8019CF20 00199E60  C8 02 A2 20 */ lfd f0, lbl_80453C20-_SDA2_BASE_(r2)
/* 8019CF24 00199E64  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8019CF28 00199E68  40 80 00 10 */ bge lbl_8019CF38
/* 8019CF2C 00199E6C  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 8019CF30 00199E70  C0 43 0A E0 */ lfs f2, lbl_80450AE0@l(r3)
/* 8019CF34 00199E74  48 00 00 78 */ b lbl_8019CFAC
lbl_8019CF38:
/* 8019CF38 00199E78  D0 21 00 08 */ stfs f1, 8(r1)
/* 8019CF3C 00199E7C  80 81 00 08 */ lwz r4, 8(r1)
/* 8019CF40 00199E80  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 8019CF44 00199E84  3C 00 7F 80 */ lis r0, 0x7f80
/* 8019CF48 00199E88  7C 03 00 00 */ cmpw r3, r0
/* 8019CF4C 00199E8C  41 82 00 14 */ beq lbl_8019CF60
/* 8019CF50 00199E90  40 80 00 40 */ bge lbl_8019CF90
/* 8019CF54 00199E94  2C 03 00 00 */ cmpwi r3, 0
/* 8019CF58 00199E98  41 82 00 20 */ beq lbl_8019CF78
/* 8019CF5C 00199E9C  48 00 00 34 */ b lbl_8019CF90
lbl_8019CF60:
/* 8019CF60 00199EA0  54 80 02 7F */ clrlwi. r0, r4, 9
/* 8019CF64 00199EA4  41 82 00 0C */ beq lbl_8019CF70
/* 8019CF68 00199EA8  38 00 00 01 */ li r0, 1
/* 8019CF6C 00199EAC  48 00 00 28 */ b lbl_8019CF94
lbl_8019CF70:
/* 8019CF70 00199EB0  38 00 00 02 */ li r0, 2
/* 8019CF74 00199EB4  48 00 00 20 */ b lbl_8019CF94
lbl_8019CF78:
/* 8019CF78 00199EB8  54 80 02 7F */ clrlwi. r0, r4, 9
/* 8019CF7C 00199EBC  41 82 00 0C */ beq lbl_8019CF88
/* 8019CF80 00199EC0  38 00 00 05 */ li r0, 5
/* 8019CF84 00199EC4  48 00 00 10 */ b lbl_8019CF94
lbl_8019CF88:
/* 8019CF88 00199EC8  38 00 00 03 */ li r0, 3
/* 8019CF8C 00199ECC  48 00 00 08 */ b lbl_8019CF94
lbl_8019CF90:
/* 8019CF90 00199ED0  38 00 00 04 */ li r0, 4
lbl_8019CF94:
/* 8019CF94 00199ED4  2C 00 00 01 */ cmpwi r0, 1
/* 8019CF98 00199ED8  40 82 00 10 */ bne lbl_8019CFA8
/* 8019CF9C 00199EDC  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 8019CFA0 00199EE0  C0 43 0A E0 */ lfs f2, lbl_80450AE0@l(r3)
/* 8019CFA4 00199EE4  48 00 00 08 */ b lbl_8019CFAC
lbl_8019CFA8:
/* 8019CFA8 00199EE8  FC 40 08 90 */ fmr f2, f1
lbl_8019CFAC:
/* 8019CFAC 00199EEC  C0 01 00 28 */ lfs f0, 0x28(r1)
/* 8019CFB0 00199EF0  FC 20 00 50 */ fneg f1, f0
/* 8019CFB4 00199EF4  48 0C A6 C1 */ bl cM_atan2s
/* 8019CFB8 00199EF8  B0 7E 00 00 */ sth r3, 0(r30)
/* 8019CFBC 00199EFC  C0 21 00 24 */ lfs f1, 0x24(r1)
/* 8019CFC0 00199F00  C0 41 00 2C */ lfs f2, 0x2c(r1)
/* 8019CFC4 00199F04  48 0C A6 B1 */ bl cM_atan2s
/* 8019CFC8 00199F08  B0 7F 00 00 */ sth r3, 0(r31)
/* 8019CFCC 00199F0C  83 E1 00 3C */ lwz r31, 0x3c(r1)
/* 8019CFD0 00199F10  83 C1 00 38 */ lwz r30, 0x38(r1)
/* 8019CFD4 00199F14  80 01 00 44 */ lwz r0, 0x44(r1)
/* 8019CFD8 00199F18  7C 08 03 A6 */ mtlr r0
/* 8019CFDC 00199F1C  38 21 00 40 */ addi r1, r1, 0x40
/* 8019CFE0 00199F20  4E 80 00 20 */ blr
