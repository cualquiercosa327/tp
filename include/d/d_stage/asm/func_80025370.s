/* 80025370 000222B0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80025374 000222B4  7C 08 02 A6 */ mflr r0
/* 80025378 000222B8  90 01 00 14 */ stw r0, 0x14(r1)
/* 8002537C 000222BC  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80025380 000222C0  7C 9F 23 78 */ mr r31, r4
/* 80025384 000222C4  81 83 00 00 */ lwz r12, 0(r3)
/* 80025388 000222C8  81 8C 00 44 */ lwz r12, 0x44(r12)
/* 8002538C 000222CC  7D 89 03 A6 */ mtctr r12
/* 80025390 000222D0  4E 80 04 21 */ bctrl
/* 80025394 000222D4  28 03 00 00 */ cmplwi r3, 0
/* 80025398 000222D8  41 82 00 1C */ beq lbl_800253B4
/* 8002539C 000222DC  80 83 00 00 */ lwz r4, 0(r3)
/* 800253A0 000222E0  2C 04 00 00 */ cmpwi r4, 0
/* 800253A4 000222E4  41 82 00 10 */ beq lbl_800253B4
/* 800253A8 000222E8  80 03 00 04 */ lwz r0, 4(r3)
/* 800253AC 000222EC  28 00 00 00 */ cmplwi r0, 0
/* 800253B0 000222F0  40 82 00 0C */ bne lbl_800253BC
lbl_800253B4:
/* 800253B4 000222F4  38 60 00 00 */ li r3, 0
/* 800253B8 000222F8  48 00 00 30 */ b lbl_800253E8
lbl_800253BC:
/* 800253BC 000222FC  7C 03 03 78 */ mr r3, r0
/* 800253C0 00022300  7C 89 03 A6 */ mtctr r4
/* 800253C4 00022304  2C 04 00 00 */ cmpwi r4, 0
/* 800253C8 00022308  40 81 00 1C */ ble lbl_800253E4
lbl_800253CC:
/* 800253CC 0002230C  88 03 00 35 */ lbz r0, 0x35(r3)
/* 800253D0 00022310  7C 1F 00 00 */ cmpw r31, r0
/* 800253D4 00022314  40 82 00 08 */ bne lbl_800253DC
/* 800253D8 00022318  48 00 00 10 */ b lbl_800253E8
lbl_800253DC:
/* 800253DC 0002231C  38 63 00 38 */ addi r3, r3, 0x38
/* 800253E0 00022320  42 00 FF EC */ bdnz lbl_800253CC
lbl_800253E4:
/* 800253E4 00022324  38 60 00 00 */ li r3, 0
lbl_800253E8:
/* 800253E8 00022328  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800253EC 0002232C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800253F0 00022330  7C 08 03 A6 */ mtlr r0
/* 800253F4 00022334  38 21 00 10 */ addi r1, r1, 0x10
/* 800253F8 00022338  4E 80 00 20 */ blr