/* 80025648 00022588  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8002564C 0002258C  7C 08 02 A6 */ mflr r0
/* 80025650 00022590  90 01 00 14 */ stw r0, 0x14(r1)
/* 80025654 00022594  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80025658 00022598  93 C1 00 08 */ stw r30, 8(r1)
/* 8002565C 0002259C  7C 7E 1B 78 */ mr r30, r3
/* 80025660 000225A0  7C BF 2B 78 */ mr r31, r5
/* 80025664 000225A4  80 84 00 08 */ lwz r4, 8(r4)
/* 80025668 000225A8  81 83 00 00 */ lwz r12, 0(r3)
/* 8002566C 000225AC  81 8C 00 70 */ lwz r12, 0x70(r12)
/* 80025670 000225B0  7D 89 03 A6 */ mtctr r12
/* 80025674 000225B4  4E 80 04 21 */ bctrl
/* 80025678 000225B8  7F C3 F3 78 */ mr r3, r30
/* 8002567C 000225BC  7F E4 FB 78 */ mr r4, r31
/* 80025680 000225C0  81 9E 00 00 */ lwz r12, 0(r30)
/* 80025684 000225C4  81 8C 00 A0 */ lwz r12, 0xa0(r12)
/* 80025688 000225C8  7D 89 03 A6 */ mtctr r12
/* 8002568C 000225CC  4E 80 04 21 */ bctrl
/* 80025690 000225D0  38 60 00 01 */ li r3, 1
/* 80025694 000225D4  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80025698 000225D8  83 C1 00 08 */ lwz r30, 8(r1)
/* 8002569C 000225DC  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800256A0 000225E0  7C 08 03 A6 */ mtlr r0
/* 800256A4 000225E4  38 21 00 10 */ addi r1, r1, 0x10
/* 800256A8 000225E8  4E 80 00 20 */ blr