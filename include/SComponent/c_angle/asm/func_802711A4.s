/* 802711A4 0026E0E4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 802711A8 0026E0E8  7C 08 02 A6 */ mflr r0
/* 802711AC 0026E0EC  90 01 00 14 */ stw r0, 0x14(r1)
/* 802711B0 0026E0F0  A8 A5 00 00 */ lha r5, 0(r5)
/* 802711B4 0026E0F4  A8 04 00 00 */ lha r0, 0(r4)
/* 802711B8 0026E0F8  7C 05 00 50 */ subf r0, r5, r0
/* 802711BC 0026E0FC  7C 04 07 34 */ extsh r4, r0
/* 802711C0 0026E100  4B FF FD D9 */ bl __ct__7cSAngleFs
/* 802711C4 0026E104  80 01 00 14 */ lwz r0, 0x14(r1)
/* 802711C8 0026E108  7C 08 03 A6 */ mtlr r0
/* 802711CC 0026E10C  38 21 00 10 */ addi r1, r1, 0x10
/* 802711D0 0026E110  4E 80 00 20 */ blr