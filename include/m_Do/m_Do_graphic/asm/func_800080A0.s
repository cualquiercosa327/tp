/* 800080A0 00004FE0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800080A4 00004FE4  7C 08 02 A6 */ mflr r0
/* 800080A8 00004FE8  90 01 00 14 */ stw r0, 0x14(r1)
/* 800080AC 00004FEC  38 00 00 01 */ li r0, 1
/* 800080B0 00004FF0  98 0D 86 64 */ stb r0, lbl_80450BE4-_SDA_BASE_(r13)
/* 800080B4 00004FF4  3C 80 80 3E */ lis r4, lbl_803DD43C@ha
/* 800080B8 00004FF8  38 84 D4 3C */ addi r4, r4, lbl_803DD43C@l
/* 800080BC 00004FFC  48 33 E3 F5 */ bl PSMTXCopy
/* 800080C0 00005000  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800080C4 00005004  7C 08 03 A6 */ mtlr r0
/* 800080C8 00005008  38 21 00 10 */ addi r1, r1, 0x10
/* 800080CC 0000500C  4E 80 00 20 */ blr
