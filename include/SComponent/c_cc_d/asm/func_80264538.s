/* 80264538 00261478  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8026453C 0026147C  7C 08 02 A6 */ mflr r0
/* 80264540 00261480  90 01 00 14 */ stw r0, 0x14(r1)
/* 80264544 00261484  28 04 00 00 */ cmplwi r4, 0
/* 80264548 00261488  41 82 00 08 */ beq lbl_80264550
/* 8026454C 0026148C  38 84 00 20 */ addi r4, r4, 0x20
lbl_80264550:
/* 80264550 00261490  38 63 00 20 */ addi r3, r3, 0x20
/* 80264554 00261494  48 00 B1 E9 */ bl cM3dGSph_NS_cross_X1_
/* 80264558 00261498  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8026455C 0026149C  41 82 00 0C */ beq lbl_80264568
/* 80264560 002614A0  38 60 00 01 */ li r3, 1
/* 80264564 002614A4  48 00 00 08 */ b lbl_8026456C
lbl_80264568:
/* 80264568 002614A8  38 60 00 00 */ li r3, 0
lbl_8026456C:
/* 8026456C 002614AC  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80264570 002614B0  7C 08 03 A6 */ mtlr r0
/* 80264574 002614B4  38 21 00 10 */ addi r1, r1, 0x10
/* 80264578 002614B8  4E 80 00 20 */ blr