/* 80225A64 002229A4  38 A0 00 00 */ li r5, 0
/* 80225A68 002229A8  38 80 00 00 */ li r4, 0
/* 80225A6C 002229AC  38 00 00 02 */ li r0, 2
/* 80225A70 002229B0  7C 09 03 A6 */ mtctr r0
lbl_80225A74:
/* 80225A74 002229B4  38 04 01 D2 */ addi r0, r4, 0x1d2
/* 80225A78 002229B8  7C 03 00 AE */ lbzx r0, r3, r0
/* 80225A7C 002229BC  28 00 00 4B */ cmplwi r0, 0x4b
/* 80225A80 002229C0  40 82 00 0C */ bne lbl_80225A8C
/* 80225A84 002229C4  38 65 00 01 */ addi r3, r5, 1
/* 80225A88 002229C8  4E 80 00 20 */ blr
lbl_80225A8C:
/* 80225A8C 002229CC  38 A5 00 01 */ addi r5, r5, 1
/* 80225A90 002229D0  38 84 00 02 */ addi r4, r4, 2
/* 80225A94 002229D4  42 00 FF E0 */ bdnz lbl_80225A74
/* 80225A98 002229D8  38 60 00 00 */ li r3, 0
/* 80225A9C 002229DC  4E 80 00 20 */ blr