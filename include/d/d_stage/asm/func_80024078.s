/* 80024078 00020FB8  28 04 00 00 */ cmplwi r4, 0
/* 8002407C 00020FBC  4D 82 00 20 */ beqlr
/* 80024080 00020FC0  80 C4 00 00 */ lwz r6, 0(r4)
/* 80024084 00020FC4  3C A0 80 3F */ lis r5, 0x803f
/* 80024088 00020FC8  84 E5 57 84 */ lwzu r7, 0x5784(r5)
/* 8002408C 00020FCC  7C 06 3A 14 */ add r0, r6, r7
/* 80024090 00020FD0  2C 00 00 40 */ cmpwi r0, 0x40
/* 80024094 00020FD4  4C 80 00 20 */ bgelr
/* 80024098 00020FD8  2C 06 00 00 */ cmpwi r6, 0
/* 8002409C 00020FDC  40 80 00 08 */ bge lbl_800240A4
/* 800240A0 00020FE0  4E 80 00 20 */ blr
lbl_800240A4:
/* 800240A4 00020FE4  4D 82 00 20 */ beqlr
/* 800240A8 00020FE8  80 C4 00 04 */ lwz r6, 4(r4)
/* 800240AC 00020FEC  1C 07 00 24 */ mulli r0, r7, 0x24
/* 800240B0 00020FF0  7C A5 02 14 */ add r5, r5, r0
/* 800240B4 00020FF4  38 E5 00 04 */ addi r7, r5, 4
/* 800240B8 00020FF8  39 00 00 00 */ li r8, 0
/* 800240BC 00020FFC  39 20 00 00 */ li r9, 0
/* 800240C0 00021000  48 00 00 94 */ b lbl_80024154
lbl_800240C4:
/* 800240C4 00021004  80 A6 00 00 */ lwz r5, 0(r6)
/* 800240C8 00021008  80 06 00 04 */ lwz r0, 4(r6)
/* 800240CC 0002100C  90 A7 00 00 */ stw r5, 0(r7)
/* 800240D0 00021010  90 07 00 04 */ stw r0, 4(r7)
/* 800240D4 00021014  80 06 00 08 */ lwz r0, 8(r6)
/* 800240D8 00021018  90 07 00 08 */ stw r0, 8(r7)
/* 800240DC 0002101C  C0 06 00 0C */ lfs f0, 0xc(r6)
/* 800240E0 00021020  D0 07 00 0C */ stfs f0, 0xc(r7)
/* 800240E4 00021024  C0 06 00 10 */ lfs f0, 0x10(r6)
/* 800240E8 00021028  D0 07 00 10 */ stfs f0, 0x10(r7)
/* 800240EC 0002102C  C0 06 00 14 */ lfs f0, 0x14(r6)
/* 800240F0 00021030  D0 07 00 14 */ stfs f0, 0x14(r7)
/* 800240F4 00021034  A8 06 00 18 */ lha r0, 0x18(r6)
/* 800240F8 00021038  B0 07 00 18 */ sth r0, 0x18(r7)
/* 800240FC 0002103C  A8 06 00 1A */ lha r0, 0x1a(r6)
/* 80024100 00021040  B0 07 00 1A */ sth r0, 0x1a(r7)
/* 80024104 00021044  A8 06 00 1C */ lha r0, 0x1c(r6)
/* 80024108 00021048  B0 07 00 1C */ sth r0, 0x1c(r7)
/* 8002410C 0002104C  A0 06 00 1E */ lhz r0, 0x1e(r6)
/* 80024110 00021050  B0 07 00 1E */ sth r0, 0x1e(r7)
/* 80024114 00021054  A0 06 00 20 */ lhz r0, 0x20(r6)
/* 80024118 00021058  B0 07 00 20 */ sth r0, 0x20(r7)
/* 8002411C 0002105C  88 06 00 22 */ lbz r0, 0x22(r6)
/* 80024120 00021060  98 07 00 22 */ stb r0, 0x22(r7)
/* 80024124 00021064  A8 07 00 18 */ lha r0, 0x18(r7)
/* 80024128 00021068  54 00 00 32 */ rlwinm r0, r0, 0, 0, 0x19
/* 8002412C 0002106C  B0 07 00 18 */ sth r0, 0x18(r7)
/* 80024130 00021070  A8 A7 00 18 */ lha r5, 0x18(r7)
/* 80024134 00021074  88 03 00 04 */ lbz r0, 4(r3)
/* 80024138 00021078  54 00 06 BE */ clrlwi r0, r0, 0x1a
/* 8002413C 0002107C  7C A0 03 78 */ or r0, r5, r0
/* 80024140 00021080  B0 07 00 18 */ sth r0, 0x18(r7)
/* 80024144 00021084  38 E7 00 24 */ addi r7, r7, 0x24
/* 80024148 00021088  38 C6 00 24 */ addi r6, r6, 0x24
/* 8002414C 0002108C  39 08 00 01 */ addi r8, r8, 1
/* 80024150 00021090  39 29 00 01 */ addi r9, r9, 1
lbl_80024154:
/* 80024154 00021094  80 04 00 00 */ lwz r0, 0(r4)
/* 80024158 00021098  7C 09 00 00 */ cmpw r9, r0
/* 8002415C 0002109C  41 80 FF 68 */ blt lbl_800240C4
/* 80024160 000210A0  3C 60 80 3F */ lis r3, lbl_803F0000@ha
/* 80024164 000210A4  84 03 57 84 */ lwzu r0, 0x5784(r3)
/* 80024168 000210A8  7C 00 42 14 */ add r0, r0, r8
/* 8002416C 000210AC  90 03 00 00 */ stw r0, lbl_803F0000@l(r3)
/* 80024170 000210B0  4E 80 00 20 */ blr