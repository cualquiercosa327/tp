/* 800261B0 000230F0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800261B4 000230F4  7C 08 02 A6 */ mflr r0
/* 800261B8 000230F8  90 01 00 14 */ stw r0, 0x14(r1)
/* 800261BC 000230FC  81 83 00 00 */ lwz r12, 0(r3)
/* 800261C0 00023100  81 8C 00 F8 */ lwz r12, 0xf8(r12)
/* 800261C4 00023104  7D 89 03 A6 */ mtctr r12
/* 800261C8 00023108  38 84 00 04 */ addi r4, r4, 4
/* 800261CC 0002310C  4E 80 04 21 */ bctrl
/* 800261D0 00023110  38 60 00 01 */ li r3, 1
/* 800261D4 00023114  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800261D8 00023118  7C 08 03 A6 */ mtlr r0
/* 800261DC 0002311C  38 21 00 10 */ addi r1, r1, 0x10
/* 800261E0 00023120  4E 80 00 20 */ blr