/* 8002558C 000224CC  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80025590 000224D0  7C 08 02 A6 */ mflr r0
/* 80025594 000224D4  90 01 00 14 */ stw r0, 0x14(r1)
/* 80025598 000224D8  2C 05 00 00 */ cmpwi r5, 0
/* 8002559C 000224DC  40 82 00 1C */ bne lbl_800255B8
/* 800255A0 000224E0  38 80 00 00 */ li r4, 0
/* 800255A4 000224E4  81 83 00 00 */ lwz r12, 0(r3)
/* 800255A8 000224E8  81 8C 01 08 */ lwz r12, 0x108(r12)
/* 800255AC 000224EC  7D 89 03 A6 */ mtctr r12
/* 800255B0 000224F0  4E 80 04 21 */ bctrl
/* 800255B4 000224F4  48 00 00 18 */ b lbl_800255CC
lbl_800255B8:
/* 800255B8 000224F8  80 84 00 08 */ lwz r4, 8(r4)
/* 800255BC 000224FC  81 83 00 00 */ lwz r12, 0(r3)
/* 800255C0 00022500  81 8C 01 08 */ lwz r12, 0x108(r12)
/* 800255C4 00022504  7D 89 03 A6 */ mtctr r12
/* 800255C8 00022508  4E 80 04 21 */ bctrl
lbl_800255CC:
/* 800255CC 0002250C  38 60 00 01 */ li r3, 1
/* 800255D0 00022510  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800255D4 00022514  7C 08 03 A6 */ mtlr r0
/* 800255D8 00022518  38 21 00 10 */ addi r1, r1, 0x10
/* 800255DC 0002251C  4E 80 00 20 */ blr