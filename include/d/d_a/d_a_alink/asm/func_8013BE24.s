/* 8013BE24 00138D64  94 21 FF 70 */ stwu r1, -0x90(r1)
/* 8013BE28 00138D68  7C 08 02 A6 */ mflr r0
/* 8013BE2C 00138D6C  90 01 00 94 */ stw r0, 0x94(r1)
/* 8013BE30 00138D70  DB E1 00 80 */ stfd f31, 0x80(r1)
/* 8013BE34 00138D74  F3 E1 00 88 */ psq_st f31, 136(r1), 0, 0
/* 8013BE38 00138D78  DB C1 00 70 */ stfd f30, 0x70(r1)
/* 8013BE3C 00138D7C  F3 C1 00 78 */ psq_st f30, 120(r1), 0, 0
/* 8013BE40 00138D80  93 E1 00 6C */ stw r31, 0x6c(r1)
/* 8013BE44 00138D84  93 C1 00 68 */ stw r30, 0x68(r1)
/* 8013BE48 00138D88  7C 7F 1B 78 */ mr r31, r3
/* 8013BE4C 00138D8C  7C 9E 23 78 */ mr r30, r4
/* 8013BE50 00138D90  38 80 01 25 */ li r4, 0x125
/* 8013BE54 00138D94  4B F8 61 19 */ bl daAlink_c_NS_commonProcInit
/* 8013BE58 00138D98  7F E3 FB 78 */ mr r3, r31
/* 8013BE5C 00138D9C  38 80 00 50 */ li r4, 0x50
/* 8013BE60 00138DA0  3C A0 80 39 */ lis r5, lbl_8038F578@ha
/* 8013BE64 00138DA4  38 A5 F5 78 */ addi r5, r5, lbl_8038F578@l
/* 8013BE68 00138DA8  4B FE D9 E1 */ bl daAlink_c_NS_setSingleAnimeWolfParam
/* 8013BE6C 00138DAC  80 7F 07 C8 */ lwz r3, 0x7c8(r31)
/* 8013BE70 00138DB0  A8 03 00 08 */ lha r0, 8(r3)
/* 8013BE74 00138DB4  2C 00 01 F6 */ cmpwi r0, 0x1f6
/* 8013BE78 00138DB8  40 82 00 5C */ bne lbl_8013BED4
/* 8013BE7C 00138DBC  38 00 00 01 */ li r0, 1
/* 8013BE80 00138DC0  B0 1F 30 12 */ sth r0, 0x3012(r31)
/* 8013BE84 00138DC4  2C 1E 00 00 */ cmpwi r30, 0
/* 8013BE88 00138DC8  40 82 00 0C */ bne lbl_8013BE94
/* 8013BE8C 00138DCC  38 00 00 06 */ li r0, 6
/* 8013BE90 00138DD0  B0 1F 30 0A */ sth r0, 0x300a(r31)
lbl_8013BE94:
/* 8013BE94 00138DD4  A8 7F 30 0A */ lha r3, 0x300a(r31)
/* 8013BE98 00138DD8  38 03 FF FF */ addi r0, r3, -1
/* 8013BE9C 00138DDC  B0 1F 30 0A */ sth r0, 0x300a(r31)
/* 8013BEA0 00138DE0  80 7F 07 C8 */ lwz r3, 0x7c8(r31)
/* 8013BEA4 00138DE4  C0 03 05 38 */ lfs f0, 0x538(r3)
/* 8013BEA8 00138DE8  D0 1F 37 C8 */ stfs f0, 0x37c8(r31)
/* 8013BEAC 00138DEC  C0 03 05 3C */ lfs f0, 0x53c(r3)
/* 8013BEB0 00138DF0  D0 1F 37 CC */ stfs f0, 0x37cc(r31)
/* 8013BEB4 00138DF4  C0 03 05 40 */ lfs f0, 0x540(r3)
/* 8013BEB8 00138DF8  D0 1F 37 D0 */ stfs f0, 0x37d0(r31)
/* 8013BEBC 00138DFC  A8 1F 30 0A */ lha r0, 0x300a(r31)
/* 8013BEC0 00138E00  2C 00 00 00 */ cmpwi r0, 0
/* 8013BEC4 00138E04  40 82 00 38 */ bne lbl_8013BEFC
/* 8013BEC8 00138E08  38 7F 07 C4 */ addi r3, r31, 0x7c4
/* 8013BECC 00138E0C  48 02 2E 31 */ bl daPy_actorKeep_c_NS_clearData
/* 8013BED0 00138E10  48 00 00 2C */ b lbl_8013BEFC
lbl_8013BED4:
/* 8013BED4 00138E14  C0 03 05 38 */ lfs f0, 0x538(r3)
/* 8013BED8 00138E18  D0 1F 37 C8 */ stfs f0, 0x37c8(r31)
/* 8013BEDC 00138E1C  C0 03 05 3C */ lfs f0, 0x53c(r3)
/* 8013BEE0 00138E20  D0 1F 37 CC */ stfs f0, 0x37cc(r31)
/* 8013BEE4 00138E24  C0 03 05 40 */ lfs f0, 0x540(r3)
/* 8013BEE8 00138E28  D0 1F 37 D0 */ stfs f0, 0x37d0(r31)
/* 8013BEEC 00138E2C  38 7F 07 C4 */ addi r3, r31, 0x7c4
/* 8013BEF0 00138E30  48 02 2E 0D */ bl daPy_actorKeep_c_NS_clearData
/* 8013BEF4 00138E34  38 00 00 00 */ li r0, 0
/* 8013BEF8 00138E38  B0 1F 30 12 */ sth r0, 0x3012(r31)
lbl_8013BEFC:
/* 8013BEFC 00138E3C  38 7F 04 D0 */ addi r3, r31, 0x4d0
/* 8013BF00 00138E40  38 9F 37 C8 */ addi r4, r31, 0x37c8
/* 8013BF04 00138E44  48 13 4D 01 */ bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8013BF08 00138E48  B0 7F 04 E6 */ sth r3, 0x4e6(r31)
/* 8013BF0C 00138E4C  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 8013BF10 00138E50  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 8013BF14 00138E54  38 61 00 44 */ addi r3, r1, 0x44
/* 8013BF18 00138E58  38 9F 37 C8 */ addi r4, r31, 0x37c8
/* 8013BF1C 00138E5C  38 BF 05 38 */ addi r5, r31, 0x538
/* 8013BF20 00138E60  48 12 AC 15 */ bl cXyz_NS___mi
/* 8013BF24 00138E64  C0 01 00 44 */ lfs f0, 0x44(r1)
/* 8013BF28 00138E68  D0 01 00 50 */ stfs f0, 0x50(r1)
/* 8013BF2C 00138E6C  C0 21 00 48 */ lfs f1, 0x48(r1)
/* 8013BF30 00138E70  D0 21 00 54 */ stfs f1, 0x54(r1)
/* 8013BF34 00138E74  C0 01 00 4C */ lfs f0, 0x4c(r1)
/* 8013BF38 00138E78  D0 01 00 58 */ stfs f0, 0x58(r1)
/* 8013BF3C 00138E7C  C0 02 93 30 */ lfs f0, lbl_80452D30-_SDA2_BASE_(r2)
/* 8013BF40 00138E80  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8013BF44 00138E84  40 80 00 0C */ bge lbl_8013BF50
/* 8013BF48 00138E88  D0 01 00 54 */ stfs f0, 0x54(r1)
/* 8013BF4C 00138E8C  48 00 00 1C */ b lbl_8013BF68
lbl_8013BF50:
/* 8013BF50 00138E90  3C 60 80 39 */ lis r3, lbl_8038F6F4@ha
/* 8013BF54 00138E94  38 63 F6 F4 */ addi r3, r3, lbl_8038F6F4@l
/* 8013BF58 00138E98  C0 03 00 4C */ lfs f0, 0x4c(r3)
/* 8013BF5C 00138E9C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8013BF60 00138EA0  40 81 00 08 */ ble lbl_8013BF68
/* 8013BF64 00138EA4  D0 01 00 54 */ stfs f0, 0x54(r1)
lbl_8013BF68:
/* 8013BF68 00138EA8  C0 01 00 50 */ lfs f0, 0x50(r1)
/* 8013BF6C 00138EAC  D0 01 00 38 */ stfs f0, 0x38(r1)
/* 8013BF70 00138EB0  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8013BF74 00138EB4  D0 01 00 3C */ stfs f0, 0x3c(r1)
/* 8013BF78 00138EB8  C0 01 00 58 */ lfs f0, 0x58(r1)
/* 8013BF7C 00138EBC  D0 01 00 40 */ stfs f0, 0x40(r1)
/* 8013BF80 00138EC0  38 61 00 38 */ addi r3, r1, 0x38
/* 8013BF84 00138EC4  48 20 B1 B5 */ bl PSVECSquareMag
/* 8013BF88 00138EC8  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8013BF8C 00138ECC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8013BF90 00138ED0  40 81 00 58 */ ble lbl_8013BFE8
/* 8013BF94 00138ED4  FC 00 08 34 */ frsqrte f0, f1
/* 8013BF98 00138ED8  C8 82 92 E8 */ lfd f4, lbl_80452CE8-_SDA2_BASE_(r2)
/* 8013BF9C 00138EDC  FC 44 00 32 */ fmul f2, f4, f0
/* 8013BFA0 00138EE0  C8 62 92 F0 */ lfd f3, lbl_80452CF0-_SDA2_BASE_(r2)
/* 8013BFA4 00138EE4  FC 00 00 32 */ fmul f0, f0, f0
/* 8013BFA8 00138EE8  FC 01 00 32 */ fmul f0, f1, f0
/* 8013BFAC 00138EEC  FC 03 00 28 */ fsub f0, f3, f0
/* 8013BFB0 00138EF0  FC 02 00 32 */ fmul f0, f2, f0
/* 8013BFB4 00138EF4  FC 44 00 32 */ fmul f2, f4, f0
/* 8013BFB8 00138EF8  FC 00 00 32 */ fmul f0, f0, f0
/* 8013BFBC 00138EFC  FC 01 00 32 */ fmul f0, f1, f0
/* 8013BFC0 00138F00  FC 03 00 28 */ fsub f0, f3, f0
/* 8013BFC4 00138F04  FC 02 00 32 */ fmul f0, f2, f0
/* 8013BFC8 00138F08  FC 44 00 32 */ fmul f2, f4, f0
/* 8013BFCC 00138F0C  FC 00 00 32 */ fmul f0, f0, f0
/* 8013BFD0 00138F10  FC 01 00 32 */ fmul f0, f1, f0
/* 8013BFD4 00138F14  FC 03 00 28 */ fsub f0, f3, f0
/* 8013BFD8 00138F18  FC 02 00 32 */ fmul f0, f2, f0
/* 8013BFDC 00138F1C  FC 21 00 32 */ fmul f1, f1, f0
/* 8013BFE0 00138F20  FC 20 08 18 */ frsp f1, f1
/* 8013BFE4 00138F24  48 00 00 88 */ b lbl_8013C06C
lbl_8013BFE8:
/* 8013BFE8 00138F28  C8 02 92 F8 */ lfd f0, lbl_80452CF8-_SDA2_BASE_(r2)
/* 8013BFEC 00138F2C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8013BFF0 00138F30  40 80 00 10 */ bge lbl_8013C000
/* 8013BFF4 00138F34  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 8013BFF8 00138F38  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
/* 8013BFFC 00138F3C  48 00 00 70 */ b lbl_8013C06C
lbl_8013C000:
/* 8013C000 00138F40  D0 21 00 28 */ stfs f1, 0x28(r1)
/* 8013C004 00138F44  80 81 00 28 */ lwz r4, 0x28(r1)
/* 8013C008 00138F48  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 8013C00C 00138F4C  3C 00 7F 80 */ lis r0, 0x7f80
/* 8013C010 00138F50  7C 03 00 00 */ cmpw r3, r0
/* 8013C014 00138F54  41 82 00 14 */ beq lbl_8013C028
/* 8013C018 00138F58  40 80 00 40 */ bge lbl_8013C058
/* 8013C01C 00138F5C  2C 03 00 00 */ cmpwi r3, 0
/* 8013C020 00138F60  41 82 00 20 */ beq lbl_8013C040
/* 8013C024 00138F64  48 00 00 34 */ b lbl_8013C058
lbl_8013C028:
/* 8013C028 00138F68  54 80 02 7F */ clrlwi. r0, r4, 9
/* 8013C02C 00138F6C  41 82 00 0C */ beq lbl_8013C038
/* 8013C030 00138F70  38 00 00 01 */ li r0, 1
/* 8013C034 00138F74  48 00 00 28 */ b lbl_8013C05C
lbl_8013C038:
/* 8013C038 00138F78  38 00 00 02 */ li r0, 2
/* 8013C03C 00138F7C  48 00 00 20 */ b lbl_8013C05C
lbl_8013C040:
/* 8013C040 00138F80  54 80 02 7F */ clrlwi. r0, r4, 9
/* 8013C044 00138F84  41 82 00 0C */ beq lbl_8013C050
/* 8013C048 00138F88  38 00 00 05 */ li r0, 5
/* 8013C04C 00138F8C  48 00 00 10 */ b lbl_8013C05C
lbl_8013C050:
/* 8013C050 00138F90  38 00 00 03 */ li r0, 3
/* 8013C054 00138F94  48 00 00 08 */ b lbl_8013C05C
lbl_8013C058:
/* 8013C058 00138F98  38 00 00 04 */ li r0, 4
lbl_8013C05C:
/* 8013C05C 00138F9C  2C 00 00 01 */ cmpwi r0, 1
/* 8013C060 00138FA0  40 82 00 0C */ bne lbl_8013C06C
/* 8013C064 00138FA4  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 8013C068 00138FA8  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
lbl_8013C06C:
/* 8013C06C 00138FAC  3C 60 80 39 */ lis r3, lbl_8038F6F4@ha
/* 8013C070 00138FB0  38 63 F6 F4 */ addi r3, r3, lbl_8038F6F4@l
/* 8013C074 00138FB4  C0 03 00 50 */ lfs f0, 0x50(r3)
/* 8013C078 00138FB8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8013C07C 00138FBC  40 81 00 20 */ ble lbl_8013C09C
/* 8013C080 00138FC0  EC 20 08 24 */ fdivs f1, f0, f1
/* 8013C084 00138FC4  C0 01 00 50 */ lfs f0, 0x50(r1)
/* 8013C088 00138FC8  EC 00 00 72 */ fmuls f0, f0, f1
/* 8013C08C 00138FCC  D0 01 00 50 */ stfs f0, 0x50(r1)
/* 8013C090 00138FD0  C0 01 00 58 */ lfs f0, 0x58(r1)
/* 8013C094 00138FD4  EC 00 00 72 */ fmuls f0, f0, f1
/* 8013C098 00138FD8  D0 01 00 58 */ stfs f0, 0x58(r1)
lbl_8013C09C:
/* 8013C09C 00138FDC  38 61 00 50 */ addi r3, r1, 0x50
/* 8013C0A0 00138FE0  48 20 B0 99 */ bl PSVECSquareMag
/* 8013C0A4 00138FE4  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8013C0A8 00138FE8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8013C0AC 00138FEC  40 81 00 58 */ ble lbl_8013C104
/* 8013C0B0 00138FF0  FC 00 08 34 */ frsqrte f0, f1
/* 8013C0B4 00138FF4  C8 82 92 E8 */ lfd f4, lbl_80452CE8-_SDA2_BASE_(r2)
/* 8013C0B8 00138FF8  FC 44 00 32 */ fmul f2, f4, f0
/* 8013C0BC 00138FFC  C8 62 92 F0 */ lfd f3, lbl_80452CF0-_SDA2_BASE_(r2)
/* 8013C0C0 00139000  FC 00 00 32 */ fmul f0, f0, f0
/* 8013C0C4 00139004  FC 01 00 32 */ fmul f0, f1, f0
/* 8013C0C8 00139008  FC 03 00 28 */ fsub f0, f3, f0
/* 8013C0CC 0013900C  FC 02 00 32 */ fmul f0, f2, f0
/* 8013C0D0 00139010  FC 44 00 32 */ fmul f2, f4, f0
/* 8013C0D4 00139014  FC 00 00 32 */ fmul f0, f0, f0
/* 8013C0D8 00139018  FC 01 00 32 */ fmul f0, f1, f0
/* 8013C0DC 0013901C  FC 03 00 28 */ fsub f0, f3, f0
/* 8013C0E0 00139020  FC 02 00 32 */ fmul f0, f2, f0
/* 8013C0E4 00139024  FC 44 00 32 */ fmul f2, f4, f0
/* 8013C0E8 00139028  FC 00 00 32 */ fmul f0, f0, f0
/* 8013C0EC 0013902C  FC 01 00 32 */ fmul f0, f1, f0
/* 8013C0F0 00139030  FC 03 00 28 */ fsub f0, f3, f0
/* 8013C0F4 00139034  FC 02 00 32 */ fmul f0, f2, f0
/* 8013C0F8 00139038  FC 21 00 32 */ fmul f1, f1, f0
/* 8013C0FC 0013903C  FC 20 08 18 */ frsp f1, f1
/* 8013C100 00139040  48 00 00 88 */ b lbl_8013C188
lbl_8013C104:
/* 8013C104 00139044  C8 02 92 F8 */ lfd f0, lbl_80452CF8-_SDA2_BASE_(r2)
/* 8013C108 00139048  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8013C10C 0013904C  40 80 00 10 */ bge lbl_8013C11C
/* 8013C110 00139050  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 8013C114 00139054  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
/* 8013C118 00139058  48 00 00 70 */ b lbl_8013C188
lbl_8013C11C:
/* 8013C11C 0013905C  D0 21 00 24 */ stfs f1, 0x24(r1)
/* 8013C120 00139060  80 81 00 24 */ lwz r4, 0x24(r1)
/* 8013C124 00139064  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 8013C128 00139068  3C 00 7F 80 */ lis r0, 0x7f80
/* 8013C12C 0013906C  7C 03 00 00 */ cmpw r3, r0
/* 8013C130 00139070  41 82 00 14 */ beq lbl_8013C144
/* 8013C134 00139074  40 80 00 40 */ bge lbl_8013C174
/* 8013C138 00139078  2C 03 00 00 */ cmpwi r3, 0
/* 8013C13C 0013907C  41 82 00 20 */ beq lbl_8013C15C
/* 8013C140 00139080  48 00 00 34 */ b lbl_8013C174
lbl_8013C144:
/* 8013C144 00139084  54 80 02 7F */ clrlwi. r0, r4, 9
/* 8013C148 00139088  41 82 00 0C */ beq lbl_8013C154
/* 8013C14C 0013908C  38 00 00 01 */ li r0, 1
/* 8013C150 00139090  48 00 00 28 */ b lbl_8013C178
lbl_8013C154:
/* 8013C154 00139094  38 00 00 02 */ li r0, 2
/* 8013C158 00139098  48 00 00 20 */ b lbl_8013C178
lbl_8013C15C:
/* 8013C15C 0013909C  54 80 02 7F */ clrlwi. r0, r4, 9
/* 8013C160 001390A0  41 82 00 0C */ beq lbl_8013C16C
/* 8013C164 001390A4  38 00 00 05 */ li r0, 5
/* 8013C168 001390A8  48 00 00 10 */ b lbl_8013C178
lbl_8013C16C:
/* 8013C16C 001390AC  38 00 00 03 */ li r0, 3
/* 8013C170 001390B0  48 00 00 08 */ b lbl_8013C178
lbl_8013C174:
/* 8013C174 001390B4  38 00 00 04 */ li r0, 4
lbl_8013C178:
/* 8013C178 001390B8  2C 00 00 01 */ cmpwi r0, 1
/* 8013C17C 001390BC  40 82 00 0C */ bne lbl_8013C188
/* 8013C180 001390C0  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 8013C184 001390C4  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
lbl_8013C188:
/* 8013C188 001390C8  3C 60 80 39 */ lis r3, lbl_8038F6F4@ha
/* 8013C18C 001390CC  38 63 F6 F4 */ addi r3, r3, lbl_8038F6F4@l
/* 8013C190 001390D0  C0 43 00 38 */ lfs f2, 0x38(r3)
/* 8013C194 001390D4  EF E1 10 24 */ fdivs f31, f1, f2
/* 8013C198 001390D8  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 8013C19C 001390DC  FC 1F 00 40 */ fcmpo cr0, f31, f0
/* 8013C1A0 001390E0  40 80 00 08 */ bge lbl_8013C1A8
/* 8013C1A4 001390E4  FF E0 00 90 */ fmr f31, f0
lbl_8013C1A8:
/* 8013C1A8 001390E8  EF C2 08 24 */ fdivs f30, f2, f1
/* 8013C1AC 001390EC  C0 01 00 50 */ lfs f0, 0x50(r1)
/* 8013C1B0 001390F0  D0 01 00 2C */ stfs f0, 0x2c(r1)
/* 8013C1B4 001390F4  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8013C1B8 001390F8  D0 01 00 30 */ stfs f0, 0x30(r1)
/* 8013C1BC 001390FC  C0 01 00 58 */ lfs f0, 0x58(r1)
/* 8013C1C0 00139100  D0 01 00 34 */ stfs f0, 0x34(r1)
/* 8013C1C4 00139104  38 61 00 2C */ addi r3, r1, 0x2c
/* 8013C1C8 00139108  48 20 AF 71 */ bl PSVECSquareMag
/* 8013C1CC 0013910C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8013C1D0 00139110  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8013C1D4 00139114  40 81 00 58 */ ble lbl_8013C22C
/* 8013C1D8 00139118  FC 00 08 34 */ frsqrte f0, f1
/* 8013C1DC 0013911C  C8 82 92 E8 */ lfd f4, lbl_80452CE8-_SDA2_BASE_(r2)
/* 8013C1E0 00139120  FC 44 00 32 */ fmul f2, f4, f0
/* 8013C1E4 00139124  C8 62 92 F0 */ lfd f3, lbl_80452CF0-_SDA2_BASE_(r2)
/* 8013C1E8 00139128  FC 00 00 32 */ fmul f0, f0, f0
/* 8013C1EC 0013912C  FC 01 00 32 */ fmul f0, f1, f0
/* 8013C1F0 00139130  FC 03 00 28 */ fsub f0, f3, f0
/* 8013C1F4 00139134  FC 02 00 32 */ fmul f0, f2, f0
/* 8013C1F8 00139138  FC 44 00 32 */ fmul f2, f4, f0
/* 8013C1FC 0013913C  FC 00 00 32 */ fmul f0, f0, f0
/* 8013C200 00139140  FC 01 00 32 */ fmul f0, f1, f0
/* 8013C204 00139144  FC 03 00 28 */ fsub f0, f3, f0
/* 8013C208 00139148  FC 02 00 32 */ fmul f0, f2, f0
/* 8013C20C 0013914C  FC 44 00 32 */ fmul f2, f4, f0
/* 8013C210 00139150  FC 00 00 32 */ fmul f0, f0, f0
/* 8013C214 00139154  FC 01 00 32 */ fmul f0, f1, f0
/* 8013C218 00139158  FC 03 00 28 */ fsub f0, f3, f0
/* 8013C21C 0013915C  FC 02 00 32 */ fmul f0, f2, f0
/* 8013C220 00139160  FC 21 00 32 */ fmul f1, f1, f0
/* 8013C224 00139164  FC 20 08 18 */ frsp f1, f1
/* 8013C228 00139168  48 00 00 88 */ b lbl_8013C2B0
lbl_8013C22C:
/* 8013C22C 0013916C  C8 02 92 F8 */ lfd f0, lbl_80452CF8-_SDA2_BASE_(r2)
/* 8013C230 00139170  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8013C234 00139174  40 80 00 10 */ bge lbl_8013C244
/* 8013C238 00139178  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 8013C23C 0013917C  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
/* 8013C240 00139180  48 00 00 70 */ b lbl_8013C2B0
lbl_8013C244:
/* 8013C244 00139184  D0 21 00 20 */ stfs f1, 0x20(r1)
/* 8013C248 00139188  80 81 00 20 */ lwz r4, 0x20(r1)
/* 8013C24C 0013918C  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 8013C250 00139190  3C 00 7F 80 */ lis r0, 0x7f80
/* 8013C254 00139194  7C 03 00 00 */ cmpw r3, r0
/* 8013C258 00139198  41 82 00 14 */ beq lbl_8013C26C
/* 8013C25C 0013919C  40 80 00 40 */ bge lbl_8013C29C
/* 8013C260 001391A0  2C 03 00 00 */ cmpwi r3, 0
/* 8013C264 001391A4  41 82 00 20 */ beq lbl_8013C284
/* 8013C268 001391A8  48 00 00 34 */ b lbl_8013C29C
lbl_8013C26C:
/* 8013C26C 001391AC  54 80 02 7F */ clrlwi. r0, r4, 9
/* 8013C270 001391B0  41 82 00 0C */ beq lbl_8013C27C
/* 8013C274 001391B4  38 00 00 01 */ li r0, 1
/* 8013C278 001391B8  48 00 00 28 */ b lbl_8013C2A0
lbl_8013C27C:
/* 8013C27C 001391BC  38 00 00 02 */ li r0, 2
/* 8013C280 001391C0  48 00 00 20 */ b lbl_8013C2A0
lbl_8013C284:
/* 8013C284 001391C4  54 80 02 7F */ clrlwi. r0, r4, 9
/* 8013C288 001391C8  41 82 00 0C */ beq lbl_8013C294
/* 8013C28C 001391CC  38 00 00 05 */ li r0, 5
/* 8013C290 001391D0  48 00 00 10 */ b lbl_8013C2A0
lbl_8013C294:
/* 8013C294 001391D4  38 00 00 03 */ li r0, 3
/* 8013C298 001391D8  48 00 00 08 */ b lbl_8013C2A0
lbl_8013C29C:
/* 8013C29C 001391DC  38 00 00 04 */ li r0, 4
lbl_8013C2A0:
/* 8013C2A0 001391E0  2C 00 00 01 */ cmpwi r0, 1
/* 8013C2A4 001391E4  40 82 00 0C */ bne lbl_8013C2B0
/* 8013C2A8 001391E8  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 8013C2AC 001391EC  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
lbl_8013C2B0:
/* 8013C2B0 001391F0  EC 1E 00 72 */ fmuls f0, f30, f1
/* 8013C2B4 001391F4  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 8013C2B8 001391F8  7F E3 FB 78 */ mr r3, r31
/* 8013C2BC 001391FC  C0 22 93 6C */ lfs f1, lbl_80452D6C-_SDA2_BASE_(r2)
/* 8013C2C0 00139200  C0 01 00 54 */ lfs f0, 0x54(r1)
/* 8013C2C4 00139204  EC 21 00 32 */ fmuls f1, f1, f0
/* 8013C2C8 00139208  EC 1F 07 F2 */ fmuls f0, f31, f31
/* 8013C2CC 0013920C  EC 21 00 24 */ fdivs f1, f1, f0
/* 8013C2D0 00139210  C0 5F 05 34 */ lfs f2, 0x534(r31)
/* 8013C2D4 00139214  38 80 00 00 */ li r4, 0
/* 8013C2D8 00139218  4B F7 F4 99 */ bl daAlink_c_NS_setSpecialGravity
/* 8013C2DC 0013921C  C0 1F 05 30 */ lfs f0, 0x530(r31)
/* 8013C2E0 00139220  FC 00 00 50 */ fneg f0, f0
/* 8013C2E4 00139224  EC 00 07 F2 */ fmuls f0, f0, f31
/* 8013C2E8 00139228  D0 1F 04 FC */ stfs f0, 0x4fc(r31)
/* 8013C2EC 0013922C  FC 00 F8 1E */ fctiwz f0, f31
/* 8013C2F0 00139230  D8 01 00 60 */ stfd f0, 0x60(r1)
/* 8013C2F4 00139234  80 01 00 64 */ lwz r0, 0x64(r1)
/* 8013C2F8 00139238  B0 1F 30 08 */ sth r0, 0x3008(r31)
/* 8013C2FC 0013923C  7F E3 FB 78 */ mr r3, r31
/* 8013C300 00139240  3C 80 08 00 */ lis r4, 0x800
/* 8013C304 00139244  38 A0 00 00 */ li r5, 0
/* 8013C308 00139248  38 C0 00 01 */ li r6, 1
/* 8013C30C 0013924C  38 E0 00 04 */ li r7, 4
/* 8013C310 00139250  39 00 00 06 */ li r8, 6
/* 8013C314 00139254  3D 20 80 39 */ lis r9, lbl_8038F6F4@ha
/* 8013C318 00139258  39 29 F6 F4 */ addi r9, r9, lbl_8038F6F4@l
/* 8013C31C 0013925C  C0 29 00 40 */ lfs f1, 0x40(r9)
/* 8013C320 00139260  C0 49 00 44 */ lfs f2, 0x44(r9)
/* 8013C324 00139264  4B F9 52 1D */ bl daAlink_c_NS_setCylAtParam
/* 8013C328 00139268  3C 60 80 39 */ lis r3, lbl_8038F6F4@ha
/* 8013C32C 0013926C  38 63 F6 F4 */ addi r3, r3, lbl_8038F6F4@l
/* 8013C330 00139270  C0 03 00 3C */ lfs f0, 0x3c(r3)
/* 8013C334 00139274  D0 1F 34 38 */ stfs f0, 0x3438(r31)
/* 8013C338 00139278  7F E3 FB 78 */ mr r3, r31
/* 8013C33C 0013927C  38 80 00 36 */ li r4, 0x36
/* 8013C340 00139280  4B F9 51 ED */ bl daAlink_c_NS_setCutType
/* 8013C344 00139284  7F E3 FB 78 */ mr r3, r31
/* 8013C348 00139288  3C 80 00 01 */ lis r4, 0x0001003B@ha
/* 8013C34C 0013928C  38 84 00 3B */ addi r4, r4, 0x0001003B@l
/* 8013C350 00139290  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 8013C354 00139294  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 8013C358 00139298  7D 89 03 A6 */ mtctr r12
/* 8013C35C 0013929C  4E 80 04 21 */ bctrl
/* 8013C360 001392A0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8013C364 001392A4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8013C368 001392A8  80 03 5F 1C */ lwz r0, 0x5f1c(r3)
/* 8013C36C 001392AC  64 00 01 00 */ oris r0, r0, 0x100
/* 8013C370 001392B0  90 03 5F 1C */ stw r0, 0x5f1c(r3)
/* 8013C374 001392B4  80 63 5D 3C */ lwz r3, 0x5d3c(r3)
/* 8013C378 001392B8  38 80 00 00 */ li r4, 0
/* 8013C37C 001392BC  90 81 00 08 */ stw r4, 8(r1)
/* 8013C380 001392C0  38 00 FF FF */ li r0, -1
/* 8013C384 001392C4  90 01 00 0C */ stw r0, 0xc(r1)
/* 8013C388 001392C8  90 81 00 10 */ stw r4, 0x10(r1)
/* 8013C38C 001392CC  90 81 00 14 */ stw r4, 0x14(r1)
/* 8013C390 001392D0  90 81 00 18 */ stw r4, 0x18(r1)
/* 8013C394 001392D4  38 80 00 00 */ li r4, 0
/* 8013C398 001392D8  38 A0 02 47 */ li r5, 0x247
/* 8013C39C 001392DC  38 DF 04 D0 */ addi r6, r31, 0x4d0
/* 8013C3A0 001392E0  38 E0 00 00 */ li r7, 0
/* 8013C3A4 001392E4  39 1F 04 DC */ addi r8, r31, 0x4dc
/* 8013C3A8 001392E8  39 20 00 00 */ li r9, 0
/* 8013C3AC 001392EC  39 40 00 FF */ li r10, 0xff
/* 8013C3B0 001392F0  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 8013C3B4 001392F4  4B F1 06 DD */ bl dPa_control_c_NS_set
/* 8013C3B8 001392F8  38 60 00 01 */ li r3, 1
/* 8013C3BC 001392FC  E3 E1 00 88 */ psq_l f31, 136(r1), 0, 0
/* 8013C3C0 00139300  CB E1 00 80 */ lfd f31, 0x80(r1)
/* 8013C3C4 00139304  E3 C1 00 78 */ psq_l f30, 120(r1), 0, 0
/* 8013C3C8 00139308  CB C1 00 70 */ lfd f30, 0x70(r1)
/* 8013C3CC 0013930C  83 E1 00 6C */ lwz r31, 0x6c(r1)
/* 8013C3D0 00139310  83 C1 00 68 */ lwz r30, 0x68(r1)
/* 8013C3D4 00139314  80 01 00 94 */ lwz r0, 0x94(r1)
/* 8013C3D8 00139318  7C 08 03 A6 */ mtlr r0
/* 8013C3DC 0013931C  38 21 00 90 */ addi r1, r1, 0x90
/* 8013C3E0 00139320  4E 80 00 20 */ blr