/* 80007F90 00004ED0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80007F94 00004ED4  7C 08 02 A6 */ mflr r0
/* 80007F98 00004ED8  90 01 00 14 */ stw r0, 0x14(r1)
/* 80007F9C 00004EDC  88 0D 86 68 */ lbz r0, lbl_80450BE8-_SDA_BASE_(r13)
/* 80007FA0 00004EE0  28 00 00 00 */ cmplwi r0, 0
/* 80007FA4 00004EE4  41 82 00 10 */ beq lbl_80007FB4
/* 80007FA8 00004EE8  38 00 FF FF */ li r0, -1
/* 80007FAC 00004EEC  80 6D 8F D0 */ lwz r3, lbl_80451550-_SDA_BASE_(r13)
/* 80007FB0 00004EF0  B0 03 00 14 */ sth r0, 0x14(r3)
lbl_80007FB4:
/* 80007FB4 00004EF4  80 6D 8C 40 */ lwz r3, lbl_804511C0-_SDA_BASE_(r13)
/* 80007FB8 00004EF8  81 83 00 00 */ lwz r12, 0(r3)
/* 80007FBC 00004EFC  81 8C 00 08 */ lwz r12, 8(r12)
/* 80007FC0 00004F00  7D 89 03 A6 */ mtctr r12
/* 80007FC4 00004F04  4E 80 04 21 */ bctrl
/* 80007FC8 00004F08  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80007FCC 00004F0C  7C 08 03 A6 */ mtlr r0
/* 80007FD0 00004F10  38 21 00 10 */ addi r1, r1, 0x10
/* 80007FD4 00004F14  4E 80 00 20 */ blr
