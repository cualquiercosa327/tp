/* 802675E4 00264524  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 802675E8 00264528  7C 08 02 A6 */ mflr r0
/* 802675EC 0026452C  90 01 00 14 */ stw r0, 0x14(r1)
/* 802675F0 00264530  C8 42 B6 A8 */ lfd f2, lbl_804550A8-_SDA2_BASE_(r2)
/* 802675F4 00264534  48 10 51 6D */ bl func_8036C760
/* 802675F8 00264538  FC 20 08 18 */ frsp f1, f1
/* 802675FC 0026453C  C0 02 B6 B0 */ lfs f0, lbl_804550B0-_SDA2_BASE_(r2)
/* 80267600 00264540  EC 00 00 72 */ fmuls f0, f0, f1
/* 80267604 00264544  FC 00 00 1E */ fctiwz f0, f0
/* 80267608 00264548  D8 01 00 08 */ stfd f0, 8(r1)
/* 8026760C 0026454C  80 61 00 0C */ lwz r3, 0xc(r1)
/* 80267610 00264550  2C 03 80 00 */ cmpwi r3, -32768
/* 80267614 00264554  40 80 00 0C */ bge lbl_80267620
/* 80267618 00264558  3C 63 00 01 */ addis r3, r3, 1
/* 8026761C 0026455C  48 00 00 10 */ b lbl_8026762C
lbl_80267620:
/* 80267620 00264560  2C 03 7F FF */ cmpwi r3, 0x7fff
/* 80267624 00264564  40 81 00 08 */ ble lbl_8026762C
/* 80267628 00264568  3C 63 FF FF */ addis r3, r3, 0xffff
lbl_8026762C:
/* 8026762C 0026456C  7C 63 07 34 */ extsh r3, r3
/* 80267630 00264570  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80267634 00264574  7C 08 03 A6 */ mtlr r0
/* 80267638 00264578  38 21 00 10 */ addi r1, r1, 0x10
/* 8026763C 0026457C  4E 80 00 20 */ blr
