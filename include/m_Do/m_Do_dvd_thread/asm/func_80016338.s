/* 80016338 00013278  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8001633C 0001327C  7C 08 02 A6 */ mflr r0
/* 80016340 00013280  90 01 00 14 */ stw r0, 0x14(r1)
/* 80016344 00013284  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80016348 00013288  93 C1 00 08 */ stw r30, 8(r1)
/* 8001634C 0001328C  7C 7E 1B 78 */ mr r30, r3
/* 80016350 00013290  7C 9F 23 78 */ mr r31, r4
/* 80016354 00013294  4B FF F8 21 */ bl mDoDvdThd_command_c
/* 80016358 00013298  3C 60 80 3A */ lis r3, lbl_803A34A8@ha
/* 8001635C 0001329C  38 03 34 A8 */ addi r0, r3, lbl_803A34A8@l
/* 80016360 000132A0  90 1E 00 10 */ stw r0, 0x10(r30)
/* 80016364 000132A4  9B FE 00 14 */ stb r31, 0x14(r30)
/* 80016368 000132A8  57 E0 06 3F */ clrlwi. r0, r31, 0x18
/* 8001636C 000132AC  40 82 00 0C */ bne lbl_80016378
/* 80016370 000132B0  88 0D 87 01 */ lbz r0, lbl_80450C81-_SDA_BASE_(r13)
/* 80016374 000132B4  98 1E 00 14 */ stb r0, 0x14(r30)
lbl_80016378:
/* 80016378 000132B8  7F C3 F3 78 */ mr r3, r30
/* 8001637C 000132BC  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80016380 000132C0  83 C1 00 08 */ lwz r30, 8(r1)
/* 80016384 000132C4  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80016388 000132C8  7C 08 03 A6 */ mtlr r0
/* 8001638C 000132CC  38 21 00 10 */ addi r1, r1, 0x10
/* 80016390 000132D0  4E 80 00 20 */ blr
