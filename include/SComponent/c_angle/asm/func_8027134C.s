/* 8027134C 0026E28C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80271350 0026E290  7C 08 02 A6 */ mflr r0
/* 80271354 0026E294  90 01 00 14 */ stw r0, 0x14(r1)
/* 80271358 0026E298  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8027135C 0026E29C  7C 7F 1B 78 */ mr r31, r3
/* 80271360 0026E2A0  48 00 00 5D */ bl Val__7cDegreeFf
/* 80271364 0026E2A4  7F E3 FB 78 */ mr r3, r31
/* 80271368 0026E2A8  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8027136C 0026E2AC  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80271370 0026E2B0  7C 08 03 A6 */ mtlr r0
/* 80271374 0026E2B4  38 21 00 10 */ addi r1, r1, 0x10
/* 80271378 0026E2B8  4E 80 00 20 */ blr