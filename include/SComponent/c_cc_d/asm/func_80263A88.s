/* 80263A88 002609C8  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 80263A8C 002609CC  7C 08 02 A6 */ mflr r0
/* 80263A90 002609D0  90 01 00 44 */ stw r0, 0x44(r1)
/* 80263A94 002609D4  3C C0 80 3A */ lis r6, lbl_803A37C0@ha
/* 80263A98 002609D8  38 06 37 C0 */ addi r0, r6, lbl_803A37C0@l
/* 80263A9C 002609DC  90 01 00 18 */ stw r0, 0x18(r1)
/* 80263AA0 002609E0  C0 03 00 20 */ lfs f0, 0x20(r3)
/* 80263AA4 002609E4  D0 01 00 08 */ stfs f0, 8(r1)
/* 80263AA8 002609E8  C0 03 00 24 */ lfs f0, 0x24(r3)
/* 80263AAC 002609EC  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 80263AB0 002609F0  C0 03 00 28 */ lfs f0, 0x28(r3)
/* 80263AB4 002609F4  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 80263AB8 002609F8  C0 03 00 2C */ lfs f0, 0x2c(r3)
/* 80263ABC 002609FC  D0 01 00 14 */ stfs f0, 0x14(r1)
/* 80263AC0 00260A00  3C C0 80 3B */ lis r6, lbl_803ABB84@ha
/* 80263AC4 00260A04  38 06 BB 84 */ addi r0, r6, lbl_803ABB84@l
/* 80263AC8 00260A08  90 01 00 18 */ stw r0, 0x18(r1)
/* 80263ACC 00260A0C  80 C3 00 34 */ lwz r6, 0x34(r3)
/* 80263AD0 00260A10  80 03 00 38 */ lwz r0, 0x38(r3)
/* 80263AD4 00260A14  90 C1 00 1C */ stw r6, 0x1c(r1)
/* 80263AD8 00260A18  90 01 00 20 */ stw r0, 0x20(r1)
/* 80263ADC 00260A1C  80 03 00 3C */ lwz r0, 0x3c(r3)
/* 80263AE0 00260A20  90 01 00 24 */ stw r0, 0x24(r1)
/* 80263AE4 00260A24  80 C3 00 40 */ lwz r6, 0x40(r3)
/* 80263AE8 00260A28  80 03 00 44 */ lwz r0, 0x44(r3)
/* 80263AEC 00260A2C  90 C1 00 28 */ stw r6, 0x28(r1)
/* 80263AF0 00260A30  90 01 00 2C */ stw r0, 0x2c(r1)
/* 80263AF4 00260A34  80 03 00 48 */ lwz r0, 0x48(r3)
/* 80263AF8 00260A38  90 01 00 30 */ stw r0, 0x30(r1)
/* 80263AFC 00260A3C  80 C3 00 4C */ lwz r6, 0x4c(r3)
/* 80263B00 00260A40  80 03 00 50 */ lwz r0, 0x50(r3)
/* 80263B04 00260A44  90 C1 00 34 */ stw r6, 0x34(r1)
/* 80263B08 00260A48  90 01 00 38 */ stw r0, 0x38(r1)
/* 80263B0C 00260A4C  80 03 00 54 */ lwz r0, 0x54(r3)
/* 80263B10 00260A50  90 01 00 3C */ stw r0, 0x3c(r1)
/* 80263B14 00260A54  38 64 00 20 */ addi r3, r4, 0x20
/* 80263B18 00260A58  38 81 00 08 */ addi r4, r1, 8
/* 80263B1C 00260A5C  48 00 A6 11 */ bl cM3d_Cross_CpsTri
/* 80263B20 00260A60  3C 80 80 3B */ lis r4, lbl_803ABB84@ha
/* 80263B24 00260A64  38 04 BB 84 */ addi r0, r4, lbl_803ABB84@l
/* 80263B28 00260A68  90 01 00 18 */ stw r0, 0x18(r1)
/* 80263B2C 00260A6C  3C 80 80 3A */ lis r4, lbl_803A37C0@ha
/* 80263B30 00260A70  38 04 37 C0 */ addi r0, r4, lbl_803A37C0@l
/* 80263B34 00260A74  90 01 00 18 */ stw r0, 0x18(r1)
/* 80263B38 00260A78  54 63 06 3E */ clrlwi r3, r3, 0x18
/* 80263B3C 00260A7C  30 03 FF FF */ addic r0, r3, -1
/* 80263B40 00260A80  7C 00 19 10 */ subfe r0, r0, r3
/* 80263B44 00260A84  54 03 06 3E */ clrlwi r3, r0, 0x18
/* 80263B48 00260A88  80 01 00 44 */ lwz r0, 0x44(r1)
/* 80263B4C 00260A8C  7C 08 03 A6 */ mtlr r0
/* 80263B50 00260A90  38 21 00 40 */ addi r1, r1, 0x40
/* 80263B54 00260A94  4E 80 00 20 */ blr