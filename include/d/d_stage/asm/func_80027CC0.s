/* 80027CC0 00024C00  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80027CC4 00024C04  7C 08 02 A6 */ mflr r0
/* 80027CC8 00024C08  90 01 00 14 */ stw r0, 0x14(r1)
/* 80027CCC 00024C0C  3C 60 80 38 */ lis r3, lbl_80378A50@ha
/* 80027CD0 00024C10  38 63 8A 50 */ addi r3, r3, lbl_80378A50@l
/* 80027CD4 00024C14  38 63 03 03 */ addi r3, r3, 0x303
/* 80027CD8 00024C18  4C C6 31 82 */ crclr 6
/* 80027CDC 00024C1C  4B FD ED E1 */ bl OSReport
/* 80027CE0 00024C20  38 60 00 00 */ li r3, 0
/* 80027CE4 00024C24  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80027CE8 00024C28  7C 08 03 A6 */ mtlr r0
/* 80027CEC 00024C2C  38 21 00 10 */ addi r1, r1, 0x10
/* 80027CF0 00024C30  4E 80 00 20 */ blr