/* 80030154 0002D094  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80030158 0002D098  7C 08 02 A6 */ mflr r0
/* 8003015C 0002D09C  90 01 00 14 */ stw r0, 0x14(r1)
/* 80030160 0002D0A0  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80030164 0002D0A4  7C 7F 1B 79 */ or. r31, r3, r3
/* 80030168 0002D0A8  41 82 00 10 */ beq lbl_80030178
/* 8003016C 0002D0AC  7C 80 07 35 */ extsh. r0, r4
/* 80030170 0002D0B0  40 81 00 08 */ ble lbl_80030178
/* 80030174 0002D0B4  48 29 EB C9 */ bl __dl__FPv
lbl_80030178:
/* 80030178 0002D0B8  7F E3 FB 78 */ mr r3, r31
/* 8003017C 0002D0BC  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80030180 0002D0C0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80030184 0002D0C4  7C 08 03 A6 */ mtlr r0
/* 80030188 0002D0C8  38 21 00 10 */ addi r1, r1, 0x10
/* 8003018C 0002D0CC  4E 80 00 20 */ blr