/* 80027FB4 00024EF4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80027FB8 00024EF8  7C 08 02 A6 */ mflr r0
/* 80027FBC 00024EFC  90 01 00 14 */ stw r0, 0x14(r1)
/* 80027FC0 00024F00  3C 60 80 38 */ lis r3, lbl_80378A50@ha
/* 80027FC4 00024F04  38 63 8A 50 */ addi r3, r3, lbl_80378A50@l
/* 80027FC8 00024F08  38 63 03 89 */ addi r3, r3, 0x389
/* 80027FCC 00024F0C  4C C6 31 82 */ crclr 6
/* 80027FD0 00024F10  4B FD EA ED */ bl OSReport
/* 80027FD4 00024F14  38 60 00 00 */ li r3, 0
/* 80027FD8 00024F18  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80027FDC 00024F1C  7C 08 03 A6 */ mtlr r0
/* 80027FE0 00024F20  38 21 00 10 */ addi r1, r1, 0x10
/* 80027FE4 00024F24  4E 80 00 20 */ blr