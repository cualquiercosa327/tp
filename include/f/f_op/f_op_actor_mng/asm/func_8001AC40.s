/* 8001AC40 00017B80  94 21 FF B0 */ stwu r1, -0x50(r1)
/* 8001AC44 00017B84  7C 08 02 A6 */ mflr r0
/* 8001AC48 00017B88  90 01 00 54 */ stw r0, 0x54(r1)
/* 8001AC4C 00017B8C  7C 64 1B 78 */ mr r4, r3
/* 8001AC50 00017B90  3C 60 80 38 */ lis r3, lbl_80378880@ha
/* 8001AC54 00017B94  38 A3 88 80 */ addi r5, r3, lbl_80378880@l
/* 8001AC58 00017B98  80 65 00 00 */ lwz r3, 0(r5)
/* 8001AC5C 00017B9C  80 05 00 04 */ lwz r0, 4(r5)
/* 8001AC60 00017BA0  90 61 00 14 */ stw r3, 0x14(r1)
/* 8001AC64 00017BA4  90 01 00 18 */ stw r0, 0x18(r1)
/* 8001AC68 00017BA8  80 05 00 08 */ lwz r0, 8(r5)
/* 8001AC6C 00017BAC  90 01 00 1C */ stw r0, 0x1c(r1)
/* 8001AC70 00017BB0  D0 21 00 14 */ stfs f1, 0x14(r1)
/* 8001AC74 00017BB4  D0 41 00 18 */ stfs f2, 0x18(r1)
/* 8001AC78 00017BB8  D0 61 00 1C */ stfs f3, 0x1c(r1)
/* 8001AC7C 00017BBC  3C 60 80 38 */ lis r3, lbl_8037888C@ha
/* 8001AC80 00017BC0  38 A3 88 8C */ addi r5, r3, lbl_8037888C@l
/* 8001AC84 00017BC4  80 65 00 00 */ lwz r3, 0(r5)
/* 8001AC88 00017BC8  80 05 00 04 */ lwz r0, 4(r5)
/* 8001AC8C 00017BCC  90 61 00 08 */ stw r3, 8(r1)
/* 8001AC90 00017BD0  90 01 00 0C */ stw r0, 0xc(r1)
/* 8001AC94 00017BD4  80 05 00 08 */ lwz r0, 8(r5)
/* 8001AC98 00017BD8  90 01 00 10 */ stw r0, 0x10(r1)
/* 8001AC9C 00017BDC  D0 81 00 08 */ stfs f4, 8(r1)
/* 8001ACA0 00017BE0  D0 A1 00 0C */ stfs f5, 0xc(r1)
/* 8001ACA4 00017BE4  D0 C1 00 10 */ stfs f6, 0x10(r1)
/* 8001ACA8 00017BE8  3C 60 80 43 */ lis r3, lbl_80434AC8@ha
/* 8001ACAC 00017BEC  38 63 4A C8 */ addi r3, r3, lbl_80434AC8@l
/* 8001ACB0 00017BF0  38 A1 00 20 */ addi r5, r1, 0x20
/* 8001ACB4 00017BF4  48 32 B8 31 */ bl PSMTXConcat
/* 8001ACB8 00017BF8  3C 60 80 3E */ lis r3, lbl_803DD8E4@ha
/* 8001ACBC 00017BFC  38 63 D8 E4 */ addi r3, r3, lbl_803DD8E4@l
/* 8001ACC0 00017C00  38 81 00 20 */ addi r4, r1, 0x20
/* 8001ACC4 00017C04  38 A1 00 08 */ addi r5, r1, 8
/* 8001ACC8 00017C08  38 C1 00 14 */ addi r6, r1, 0x14
/* 8001ACCC 00017C0C  48 25 8D 79 */ bl J3DUClipper_NS_clip_X1_
/* 8001ACD0 00017C10  30 03 FF FF */ addic r0, r3, -1
/* 8001ACD4 00017C14  7C 00 19 10 */ subfe r0, r0, r3
/* 8001ACD8 00017C18  54 03 06 3E */ clrlwi r3, r0, 0x18
/* 8001ACDC 00017C1C  80 01 00 54 */ lwz r0, 0x54(r1)
/* 8001ACE0 00017C20  7C 08 03 A6 */ mtlr r0
/* 8001ACE4 00017C24  38 21 00 50 */ addi r1, r1, 0x50
/* 8001ACE8 00017C28  4E 80 00 20 */ blr