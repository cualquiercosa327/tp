/* 80016108 00013048  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8001610C 0001304C  7C 08 02 A6 */ mflr r0
/* 80016110 00013050  90 01 00 14 */ stw r0, 0x14(r1)
/* 80016114 00013054  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80016118 00013058  93 C1 00 08 */ stw r30, 8(r1)
/* 8001611C 0001305C  7C 7E 1B 79 */ or. r30, r3, r3
/* 80016120 00013060  7C 9F 23 78 */ mr r31, r4
/* 80016124 00013064  41 82 00 28 */ beq lbl_8001614C
/* 80016128 00013068  3C 80 80 3A */ lis r4, lbl_803A34B8@ha
/* 8001612C 0001306C  38 04 34 B8 */ addi r0, r4, lbl_803A34B8@l
/* 80016130 00013070  90 1E 00 10 */ stw r0, 0x10(r30)
/* 80016134 00013074  38 80 00 00 */ li r4, 0
/* 80016138 00013078  4B FF F7 C5 */ bl mDoDvdThd_command_c_NS_dtor
/* 8001613C 0001307C  7F E0 07 35 */ extsh. r0, r31
/* 80016140 00013080  40 81 00 0C */ ble lbl_8001614C
/* 80016144 00013084  7F C3 F3 78 */ mr r3, r30
/* 80016148 00013088  48 2B 8B F5 */ bl __dl__FPv
lbl_8001614C:
/* 8001614C 0001308C  7F C3 F3 78 */ mr r3, r30
/* 80016150 00013090  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80016154 00013094  83 C1 00 08 */ lwz r30, 8(r1)
/* 80016158 00013098  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8001615C 0001309C  7C 08 03 A6 */ mtlr r0
/* 80016160 000130A0  38 21 00 10 */ addi r1, r1, 0x10
/* 80016164 000130A4  4E 80 00 20 */ blr
