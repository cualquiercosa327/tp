/* 8001A710 00017650  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8001A714 00017654  7C 08 02 A6 */ mflr r0
/* 8001A718 00017658  90 01 00 14 */ stw r0, 0x14(r1)
/* 8001A71C 0001765C  38 63 04 D0 */ addi r3, r3, 0x4d0
/* 8001A720 00017660  38 84 04 D0 */ addi r4, r4, 0x4d0
/* 8001A724 00017664  48 25 64 E1 */ bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8001A728 00017668  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8001A72C 0001766C  7C 08 03 A6 */ mtlr r0
/* 8001A730 00017670  38 21 00 10 */ addi r1, r1, 0x10
/* 8001A734 00017674  4E 80 00 20 */ blr