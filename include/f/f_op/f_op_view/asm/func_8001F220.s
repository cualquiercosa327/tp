/* 8001F220 0001C160  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8001F224 0001C164  7C 08 02 A6 */ mflr r0
/* 8001F228 0001C168  90 01 00 14 */ stw r0, 0x14(r1)
/* 8001F22C 0001C16C  7C 64 1B 78 */ mr r4, r3
/* 8001F230 0001C170  80 63 00 C0 */ lwz r3, 0xc0(r3)
/* 8001F234 0001C174  48 00 32 75 */ bl fpcMtd_Delete
/* 8001F238 0001C178  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8001F23C 0001C17C  7C 08 03 A6 */ mtlr r0
/* 8001F240 0001C180  38 21 00 10 */ addi r1, r1, 0x10
/* 8001F244 0001C184  4E 80 00 20 */ blr