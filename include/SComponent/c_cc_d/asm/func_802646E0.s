/* 802646E0 00261620  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 802646E4 00261624  7C 08 02 A6 */ mflr r0
/* 802646E8 00261628  90 01 00 24 */ stw r0, 0x24(r1)
/* 802646EC 0026162C  C0 83 00 20 */ lfs f4, 0x20(r3)
/* 802646F0 00261630  D0 81 00 08 */ stfs f4, 8(r1)
/* 802646F4 00261634  C0 63 00 24 */ lfs f3, 0x24(r3)
/* 802646F8 00261638  D0 61 00 0C */ stfs f3, 0xc(r1)
/* 802646FC 0026163C  C0 43 00 28 */ lfs f2, 0x28(r3)
/* 80264700 00261640  D0 41 00 10 */ stfs f2, 0x10(r1)
/* 80264704 00261644  D0 81 00 14 */ stfs f4, 0x14(r1)
/* 80264708 00261648  D0 61 00 18 */ stfs f3, 0x18(r1)
/* 8026470C 0026164C  D0 41 00 1C */ stfs f2, 0x1c(r1)
/* 80264710 00261650  FC 00 20 18 */ frsp f0, f4
/* 80264714 00261654  C0 23 00 2C */ lfs f1, 0x2c(r3)
/* 80264718 00261658  EC 00 08 28 */ fsubs f0, f0, f1
/* 8026471C 0026165C  D0 01 00 14 */ stfs f0, 0x14(r1)
/* 80264720 00261660  FC 00 18 18 */ frsp f0, f3
/* 80264724 00261664  EC 00 08 28 */ fsubs f0, f0, f1
/* 80264728 00261668  D0 01 00 18 */ stfs f0, 0x18(r1)
/* 8026472C 0026166C  FC 00 10 18 */ frsp f0, f2
/* 80264730 00261670  EC 00 08 28 */ fsubs f0, f0, f1
/* 80264734 00261674  D0 01 00 1C */ stfs f0, 0x1c(r1)
/* 80264738 00261678  EC 04 08 2A */ fadds f0, f4, f1
/* 8026473C 0026167C  D0 01 00 08 */ stfs f0, 8(r1)
/* 80264740 00261680  EC 03 08 2A */ fadds f0, f3, f1
/* 80264744 00261684  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 80264748 00261688  EC 02 08 2A */ fadds f0, f2, f1
/* 8026474C 0026168C  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 80264750 00261690  38 81 00 14 */ addi r4, r1, 0x14
/* 80264754 00261694  38 A1 00 08 */ addi r5, r1, 8
/* 80264758 00261698  48 00 A4 FD */ bl cM3dGAab_NS_Set
/* 8026475C 0026169C  80 01 00 24 */ lwz r0, 0x24(r1)
/* 80264760 002616A0  7C 08 03 A6 */ mtlr r0
/* 80264764 002616A4  38 21 00 20 */ addi r1, r1, 0x20
/* 80264768 002616A8  4E 80 00 20 */ blr