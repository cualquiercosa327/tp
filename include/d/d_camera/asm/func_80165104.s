/* 80165104 00162044  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 80165108 00162048  7C 08 02 A6 */ mflr r0
/* 8016510C 0016204C  90 01 00 24 */ stw r0, 0x24(r1)
/* 80165110 00162050  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 80165114 00162054  7C 7F 1B 78 */ mr r31, r3
/* 80165118 00162058  38 00 00 01 */ li r0, 1
/* 8016511C 0016205C  98 03 02 98 */ stb r0, 0x298(r3)
/* 80165120 00162060  38 7F 00 2E */ addi r3, r31, 0x2e
/* 80165124 00162064  48 10 BF C5 */ bl Inv__7cSAngleCFv
/* 80165128 00162068  7C 64 1B 78 */ mr r4, r3
/* 8016512C 0016206C  38 61 00 08 */ addi r3, r1, 8
/* 80165130 00162070  48 10 BE 69 */ bl __ct__7cSAngleFs
/* 80165134 00162074  A8 01 00 08 */ lha r0, 8(r1)
/* 80165138 00162078  B0 1F 02 9A */ sth r0, 0x29a(r31)
/* 8016513C 0016207C  A8 1F 01 D4 */ lha r0, 0x1d4(r31)
/* 80165140 00162080  B0 1F 02 9C */ sth r0, 0x29c(r31)
/* 80165144 00162084  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 80165148 00162088  80 01 00 24 */ lwz r0, 0x24(r1)
/* 8016514C 0016208C  7C 08 03 A6 */ mtlr r0
/* 80165150 00162090  38 21 00 20 */ addi r1, r1, 0x20
/* 80165154 00162094  4E 80 00 20 */ blr
