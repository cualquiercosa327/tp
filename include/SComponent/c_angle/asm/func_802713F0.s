/* 802713F0 0026E330  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 802713F4 0026E334  7C 08 02 A6 */ mflr r0
/* 802713F8 0026E338  90 01 00 14 */ stw r0, 0x14(r1)
/* 802713FC 0026E33C  4B FF FF E5 */ bl Radian__7cDegreeCFv
/* 80271400 0026E340  48 0F B1 91 */ bl func_8036C590
/* 80271404 0026E344  FC 20 08 18 */ frsp f1, f1
/* 80271408 0026E348  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8027140C 0026E34C  7C 08 03 A6 */ mtlr r0
/* 80271410 0026E350  38 21 00 10 */ addi r1, r1, 0x10
/* 80271414 0026E354  4E 80 00 20 */ blr
