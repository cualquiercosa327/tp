/* 8005AE28 00057D68  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8005AE2C 00057D6C  7C 08 02 A6 */ mflr r0
/* 8005AE30 00057D70  90 01 00 14 */ stw r0, 0x14(r1)
/* 8005AE34 00057D74  38 00 00 00 */ li r0, 0
/* 8005AE38 00057D78  98 03 00 28 */ stb r0, 0x28(r3)
/* 8005AE3C 00057D7C  38 00 00 01 */ li r0, 1
/* 8005AE40 00057D80  98 03 00 29 */ stb r0, 0x29(r3)
/* 8005AE44 00057D84  4B FF FF 55 */ bl pntwind_set
/* 8005AE48 00057D88  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8005AE4C 00057D8C  7C 08 03 A6 */ mtlr r0
/* 8005AE50 00057D90  38 21 00 10 */ addi r1, r1, 0x10
/* 8005AE54 00057D94  4E 80 00 20 */ blr
