/* 802C51EC 002C212C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 802C51F0 002C2130  7C 08 02 A6 */ mflr r0
/* 802C51F4 002C2134  90 01 00 14 */ stw r0, 0x14(r1)
/* 802C51F8 002C2138  4B FF B2 F1 */ bl Z2Creature_NS_deleteObject
/* 802C51FC 002C213C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 802C5200 002C2140  7C 08 03 A6 */ mtlr r0
/* 802C5204 002C2144  38 21 00 10 */ addi r1, r1, 0x10
/* 802C5208 002C2148  4E 80 00 20 */ blr