/* 80271120 0026E060  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80271124 0026E064  7C 08 02 A6 */ mflr r0
/* 80271128 0026E068  90 01 00 14 */ stw r0, 0x14(r1)
/* 8027112C 0026E06C  4B FF FF 39 */ bl Radian__7cSAngleCFv
/* 80271130 0026E070  48 0F AE F9 */ bl func_8036C028
/* 80271134 0026E074  FC 20 08 18 */ frsp f1, f1
/* 80271138 0026E078  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8027113C 0026E07C  7C 08 03 A6 */ mtlr r0
/* 80271140 0026E080  38 21 00 10 */ addi r1, r1, 0x10
/* 80271144 0026E084  4E 80 00 20 */ blr
