/* 80027B98 00024AD8  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80027B9C 00024ADC  7C 08 02 A6 */ mflr r0
/* 80027BA0 00024AE0  90 01 00 14 */ stw r0, 0x14(r1)
/* 80027BA4 00024AE4  3C 60 80 38 */ lis r3, lbl_80378A50@ha
/* 80027BA8 00024AE8  38 63 8A 50 */ addi r3, r3, lbl_80378A50@l
/* 80027BAC 00024AEC  38 63 02 D2 */ addi r3, r3, 0x2d2
/* 80027BB0 00024AF0  4C C6 31 82 */ crclr 6
/* 80027BB4 00024AF4  4B FD EF 09 */ bl OSReport
/* 80027BB8 00024AF8  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80027BBC 00024AFC  7C 08 03 A6 */ mtlr r0
/* 80027BC0 00024B00  38 21 00 10 */ addi r1, r1, 0x10
/* 80027BC4 00024B04  4E 80 00 20 */ blr