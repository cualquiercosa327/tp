/* 8002F5C0 0002C500  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8002F5C4 0002C504  7C 08 02 A6 */ mflr r0
/* 8002F5C8 0002C508  90 01 00 14 */ stw r0, 0x14(r1)
/* 8002F5CC 0002C50C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8002F5D0 0002C510  93 C1 00 08 */ stw r30, 8(r1)
/* 8002F5D4 0002C514  7C 7E 1B 78 */ mr r30, r3
/* 8002F5D8 0002C518  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8002F5DC 0002C51C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8002F5E0 0002C520  3B E3 0F 38 */ addi r31, r3, 0xf38
/* 8002F5E4 0002C524  7F E3 FB 78 */ mr r3, r31
/* 8002F5E8 0002C528  4B FF D5 D5 */ bl getTimerMode__14dComIfG_play_cFv
/* 8002F5EC 0002C52C  7C 1E 18 00 */ cmpw r30, r3
/* 8002F5F0 0002C530  40 82 00 2C */ bne lbl_8002F61C
/* 8002F5F4 0002C534  7F E3 FB 78 */ mr r3, r31
/* 8002F5F8 0002C538  4B FF D5 E5 */ bl getTimerPtr__14dComIfG_play_cFv
/* 8002F5FC 0002C53C  28 03 00 00 */ cmplwi r3, 0
/* 8002F600 0002C540  41 82 00 14 */ beq lbl_8002F614
/* 8002F604 0002C544  38 80 00 04 */ li r4, 4
/* 8002F608 0002C548  48 22 E1 E1 */ bl dTimer_c_NS_stop
/* 8002F60C 0002C54C  38 60 00 01 */ li r3, 1
/* 8002F610 0002C550  48 00 00 10 */ b lbl_8002F620
lbl_8002F614:
/* 8002F614 0002C554  38 60 00 00 */ li r3, 0
/* 8002F618 0002C558  48 00 00 08 */ b lbl_8002F620
lbl_8002F61C:
/* 8002F61C 0002C55C  38 60 00 00 */ li r3, 0
lbl_8002F620:
/* 8002F620 0002C560  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8002F624 0002C564  83 C1 00 08 */ lwz r30, 8(r1)
/* 8002F628 0002C568  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8002F62C 0002C56C  7C 08 03 A6 */ mtlr r0
/* 8002F630 0002C570  38 21 00 10 */ addi r1, r1, 0x10
/* 8002F634 0002C574  4E 80 00 20 */ blr