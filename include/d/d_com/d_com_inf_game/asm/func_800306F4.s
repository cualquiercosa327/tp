/* 800306F4 0002D634  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800306F8 0002D638  7C 08 02 A6 */ mflr r0
/* 800306FC 0002D63C  90 01 00 14 */ stw r0, 0x14(r1)
/* 80030700 0002D640  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80030704 0002D644  7C 7F 1B 79 */ or. r31, r3, r3
/* 80030708 0002D648  41 82 00 28 */ beq lbl_80030730
/* 8003070C 0002D64C  41 82 00 14 */ beq lbl_80030720
/* 80030710 0002D650  41 82 00 10 */ beq lbl_80030720
/* 80030714 0002D654  3C 60 80 3A */ lis r3, lbl_803A3354@ha
/* 80030718 0002D658  38 03 33 54 */ addi r0, r3, lbl_803A3354@l
/* 8003071C 0002D65C  90 1F 00 00 */ stw r0, 0(r31)
lbl_80030720:
/* 80030720 0002D660  7C 80 07 35 */ extsh. r0, r4
/* 80030724 0002D664  40 81 00 0C */ ble lbl_80030730
/* 80030728 0002D668  7F E3 FB 78 */ mr r3, r31
/* 8003072C 0002D66C  48 29 E6 11 */ bl __dl__FPv
lbl_80030730:
/* 80030730 0002D670  7F E3 FB 78 */ mr r3, r31
/* 80030734 0002D674  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80030738 0002D678  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8003073C 0002D67C  7C 08 03 A6 */ mtlr r0
/* 80030740 0002D680  38 21 00 10 */ addi r1, r1, 0x10
/* 80030744 0002D684  4E 80 00 20 */ blr