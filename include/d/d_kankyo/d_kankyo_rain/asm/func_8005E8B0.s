/* 8005E8B0 0005B7F0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8005E8B4 0005B7F4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8005E8B8 0005B7F8  80 83 5D AC */ lwz r4, 0x5dac(r3)
/* 8005E8BC 0005B7FC  38 60 00 00 */ li r3, 0
/* 8005E8C0 0005B800  28 04 00 00 */ cmplwi r4, 0
/* 8005E8C4 0005B804  4D 82 00 20 */ beqlr
/* 8005E8C8 0005B808  88 04 05 68 */ lbz r0, 0x568(r4)
/* 8005E8CC 0005B80C  28 00 00 08 */ cmplwi r0, 8
/* 8005E8D0 0005B810  41 82 00 20 */ beq lbl_8005E8F0
/* 8005E8D4 0005B814  54 00 06 3E */ clrlwi r0, r0, 0x18
/* 8005E8D8 0005B818  28 00 00 16 */ cmplwi r0, 0x16
/* 8005E8DC 0005B81C  41 82 00 14 */ beq lbl_8005E8F0
/* 8005E8E0 0005B820  28 00 00 17 */ cmplwi r0, 0x17
/* 8005E8E4 0005B824  41 82 00 0C */ beq lbl_8005E8F0
/* 8005E8E8 0005B828  28 00 00 18 */ cmplwi r0, 0x18
/* 8005E8EC 0005B82C  4C 82 00 20 */ bnelr
lbl_8005E8F0:
/* 8005E8F0 0005B830  38 60 00 01 */ li r3, 1
/* 8005E8F4 0005B834  4E 80 00 20 */ blr
