/* 80267640 00264580  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80267644 00264584  C0 62 B6 B4 */ lfs f3, lbl_804550B4-_SDA2_BASE_(r2)
/* 80267648 00264588  EC 01 10 24 */ fdivs f0, f1, f2
/* 8026764C 0026458C  EC 03 00 32 */ fmuls f0, f3, f0
/* 80267650 00264590  FC 00 00 1E */ fctiwz f0, f0
/* 80267654 00264594  D8 01 00 08 */ stfd f0, 8(r1)
/* 80267658 00264598  80 01 00 0C */ lwz r0, 0xc(r1)
/* 8026765C 0026459C  54 00 08 3C */ slwi r0, r0, 1
/* 80267660 002645A0  3C 60 80 3C */ lis r3, lbl_803C3778@ha
/* 80267664 002645A4  38 63 37 78 */ addi r3, r3, lbl_803C3778@l
/* 80267668 002645A8  7C 63 02 2E */ lhzx r3, r3, r0
/* 8026766C 002645AC  38 21 00 10 */ addi r1, r1, 0x10
/* 80267670 002645B0  4E 80 00 20 */ blr