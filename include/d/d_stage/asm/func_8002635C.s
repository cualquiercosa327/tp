/* 8002635C 0002329C  38 A3 00 04 */ addi r5, r3, 4
/* 80026360 000232A0  38 C0 00 00 */ li r6, 0
/* 80026364 000232A4  3C 80 80 00 */ lis r4, 0x8000
/* 80026368 000232A8  48 00 00 28 */ b lbl_80026390
lbl_8002636C:
/* 8002636C 000232AC  80 05 00 08 */ lwz r0, 8(r5)
/* 80026370 000232B0  28 00 00 00 */ cmplwi r0, 0
/* 80026374 000232B4  41 82 00 14 */ beq lbl_80026388
/* 80026378 000232B8  7C 00 20 40 */ cmplw r0, r4
/* 8002637C 000232BC  40 80 00 0C */ bge lbl_80026388
/* 80026380 000232C0  7C 00 1A 14 */ add r0, r0, r3
/* 80026384 000232C4  90 05 00 08 */ stw r0, 8(r5)
lbl_80026388:
/* 80026388 000232C8  38 A5 00 0C */ addi r5, r5, 0xc
/* 8002638C 000232CC  38 C6 00 01 */ addi r6, r6, 1
lbl_80026390:
/* 80026390 000232D0  80 03 00 00 */ lwz r0, 0(r3)
/* 80026394 000232D4  7C 06 00 00 */ cmpw r6, r0
/* 80026398 000232D8  41 80 FF D4 */ blt lbl_8002636C
/* 8002639C 000232DC  4E 80 00 20 */ blr