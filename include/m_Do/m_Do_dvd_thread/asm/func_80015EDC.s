/* 80015EDC 00012E1C  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 80015EE0 00012E20  7C 08 02 A6 */ mflr r0
/* 80015EE4 00012E24  90 01 00 34 */ stw r0, 0x34(r1)
/* 80015EE8 00012E28  39 61 00 30 */ addi r11, r1, 0x30
/* 80015EEC 00012E2C  48 34 C2 E1 */ bl _savegpr_25
/* 80015EF0 00012E30  7C 7A 1B 78 */ mr r26, r3
/* 80015EF4 00012E34  3B C0 00 00 */ li r30, 0
/* 80015EF8 00012E38  3B A0 00 00 */ li r29, 0
/* 80015EFC 00012E3C  3B 80 00 00 */ li r28, 0
/* 80015F00 00012E40  3B 60 00 00 */ li r27, 0
/* 80015F04 00012E44  80 63 00 20 */ lwz r3, 0x20(r3)
/* 80015F08 00012E48  28 03 00 00 */ cmplwi r3, 0
/* 80015F0C 00012E4C  41 82 00 08 */ beq lbl_80015F14
/* 80015F10 00012E50  48 00 00 08 */ b lbl_80015F18
lbl_80015F14:
/* 80015F14 00012E54  4B FF 8E D9 */ bl mDoExt_getArchiveHeap
lbl_80015F18:
/* 80015F18 00012E58  7C 79 1B 78 */ mr r25, r3
/* 80015F1C 00012E5C  3C 60 80 37 */ lis r3, lbl_803741A8@ha
/* 80015F20 00012E60  3B E3 41 A8 */ addi r31, r3, lbl_803741A8@l
lbl_80015F24:
/* 80015F24 00012E64  4B FF 8E D1 */ bl mDoExt_getArchiveHeapPtr
/* 80015F28 00012E68  7C 19 18 40 */ cmplw r25, r3
/* 80015F2C 00012E6C  40 82 00 0C */ bne lbl_80015F38
/* 80015F30 00012E70  3B 80 00 01 */ li r28, 1
/* 80015F34 00012E74  48 00 00 3C */ b lbl_80015F70
lbl_80015F38:
/* 80015F38 00012E78  4B FF 8E 49 */ bl mDoExt_getZeldaHeap
/* 80015F3C 00012E7C  7C 19 18 40 */ cmplw r25, r3
/* 80015F40 00012E80  40 82 00 0C */ bne lbl_80015F4C
/* 80015F44 00012E84  3B C0 00 01 */ li r30, 1
/* 80015F48 00012E88  48 00 00 28 */ b lbl_80015F70
lbl_80015F4C:
/* 80015F4C 00012E8C  4B FF 8E 05 */ bl mDoExt_getGameHeap
/* 80015F50 00012E90  7C 19 18 40 */ cmplw r25, r3
/* 80015F54 00012E94  40 82 00 0C */ bne lbl_80015F60
/* 80015F58 00012E98  3B A0 00 01 */ li r29, 1
/* 80015F5C 00012E9C  48 00 00 14 */ b lbl_80015F70
lbl_80015F60:
/* 80015F60 00012EA0  4B FF 8E D1 */ bl mDoExt_getJ2dHeap
/* 80015F64 00012EA4  7C 19 18 40 */ cmplw r25, r3
/* 80015F68 00012EA8  40 82 00 08 */ bne lbl_80015F70
/* 80015F6C 00012EAC  3B 60 00 01 */ li r27, 1
lbl_80015F70:
/* 80015F70 00012EB0  88 1A 00 14 */ lbz r0, 0x14(r26)
/* 80015F74 00012EB4  28 00 00 00 */ cmplwi r0, 0
/* 80015F78 00012EB8  40 82 00 34 */ bne lbl_80015FAC
/* 80015F7C 00012EBC  38 60 00 70 */ li r3, 0x70
/* 80015F80 00012EC0  7F 24 CB 78 */ mr r4, r25
/* 80015F84 00012EC4  38 A0 00 00 */ li r5, 0
/* 80015F88 00012EC8  48 2B 8D 11 */ bl __nw__FUlP7JKRHeapi
/* 80015F8C 00012ECC  7C 60 1B 79 */ or. r0, r3, r3
/* 80015F90 00012ED0  41 82 00 14 */ beq lbl_80015FA4
/* 80015F94 00012ED4  80 9A 00 18 */ lwz r4, 0x18(r26)
/* 80015F98 00012ED8  38 A0 00 01 */ li r5, 1
/* 80015F9C 00012EDC  48 2C 0A 1D */ bl __ct__13JKRMemArchiveFlQ210JKRArchive15EMountDirection
/* 80015FA0 00012EE0  7C 60 1B 78 */ mr r0, r3
lbl_80015FA4:
/* 80015FA4 00012EE4  7C 19 03 78 */ mr r25, r0
/* 80015FA8 00012EE8  48 00 00 30 */ b lbl_80015FD8
lbl_80015FAC:
/* 80015FAC 00012EEC  38 60 00 70 */ li r3, 0x70
/* 80015FB0 00012EF0  7F 24 CB 78 */ mr r4, r25
/* 80015FB4 00012EF4  38 A0 FF FC */ li r5, -4
/* 80015FB8 00012EF8  48 2B 8C E1 */ bl __nw__FUlP7JKRHeapi
/* 80015FBC 00012EFC  7C 60 1B 79 */ or. r0, r3, r3
/* 80015FC0 00012F00  41 82 00 14 */ beq lbl_80015FD4
/* 80015FC4 00012F04  80 9A 00 18 */ lwz r4, 0x18(r26)
/* 80015FC8 00012F08  38 A0 00 02 */ li r5, 2
/* 80015FCC 00012F0C  48 2C 09 ED */ bl __ct__13JKRMemArchiveFlQ210JKRArchive15EMountDirection
/* 80015FD0 00012F10  7C 60 1B 78 */ mr r0, r3
lbl_80015FD4:
/* 80015FD4 00012F14  7C 19 03 78 */ mr r25, r0
lbl_80015FD8:
/* 80015FD8 00012F18  28 19 00 00 */ cmplwi r25, 0
/* 80015FDC 00012F1C  41 82 00 18 */ beq lbl_80015FF4
/* 80015FE0 00012F20  88 19 00 30 */ lbz r0, 0x30(r25)
/* 80015FE4 00012F24  28 00 00 00 */ cmplwi r0, 0
/* 80015FE8 00012F28  41 82 00 0C */ beq lbl_80015FF4
/* 80015FEC 00012F2C  93 3A 00 1C */ stw r25, 0x1c(r26)
/* 80015FF0 00012F30  48 00 00 E8 */ b lbl_800160D8
lbl_80015FF4:
/* 80015FF4 00012F34  38 7F 00 3E */ addi r3, r31, 0x3e
/* 80015FF8 00012F38  4C C6 31 82 */ crclr 6
/* 80015FFC 00012F3C  4B FF 0C 11 */ bl OSReport_Error
/* 80016000 00012F40  28 19 00 00 */ cmplwi r25, 0
/* 80016004 00012F44  41 82 00 20 */ beq lbl_80016024
/* 80016008 00012F48  41 82 00 1C */ beq lbl_80016024
/* 8001600C 00012F4C  7F 23 CB 78 */ mr r3, r25
/* 80016010 00012F50  38 80 00 01 */ li r4, 1
/* 80016014 00012F54  81 99 00 00 */ lwz r12, 0(r25)
/* 80016018 00012F58  81 8C 00 08 */ lwz r12, 8(r12)
/* 8001601C 00012F5C  7D 89 03 A6 */ mtctr r12
/* 80016020 00012F60  4E 80 04 21 */ bctrl
lbl_80016024:
/* 80016024 00012F64  57 C0 06 3F */ clrlwi. r0, r30, 0x18
/* 80016028 00012F68  40 82 00 24 */ bne lbl_8001604C
/* 8001602C 00012F6C  3C 60 80 37 */ lis r3, lbl_803741A8@ha
/* 80016030 00012F70  38 63 41 A8 */ addi r3, r3, lbl_803741A8@l
/* 80016034 00012F74  38 63 00 6E */ addi r3, r3, 0x6e
/* 80016038 00012F78  4C C6 31 82 */ crclr 6
/* 8001603C 00012F7C  4B FF 0B D1 */ bl OSReport_Error
/* 80016040 00012F80  4B FF 8D 41 */ bl mDoExt_getZeldaHeap
/* 80016044 00012F84  7C 79 1B 78 */ mr r25, r3
/* 80016048 00012F88  4B FF FE DC */ b lbl_80015F24
lbl_8001604C:
/* 8001604C 00012F8C  57 80 06 3F */ clrlwi. r0, r28, 0x18
/* 80016050 00012F90  40 82 00 24 */ bne lbl_80016074
/* 80016054 00012F94  3C 60 80 37 */ lis r3, lbl_803741A8@ha
/* 80016058 00012F98  38 63 41 A8 */ addi r3, r3, lbl_803741A8@l
/* 8001605C 00012F9C  38 63 00 AE */ addi r3, r3, 0xae
/* 80016060 00012FA0  4C C6 31 82 */ crclr 6
/* 80016064 00012FA4  4B FF 0B A9 */ bl OSReport_Error
/* 80016068 00012FA8  4B FF 8D 8D */ bl mDoExt_getArchiveHeapPtr
/* 8001606C 00012FAC  7C 79 1B 78 */ mr r25, r3
/* 80016070 00012FB0  4B FF FE B4 */ b lbl_80015F24
lbl_80016074:
/* 80016074 00012FB4  57 A0 06 3F */ clrlwi. r0, r29, 0x18
/* 80016078 00012FB8  40 82 00 24 */ bne lbl_8001609C
/* 8001607C 00012FBC  3C 60 80 37 */ lis r3, lbl_803741A8@ha
/* 80016080 00012FC0  38 63 41 A8 */ addi r3, r3, lbl_803741A8@l
/* 80016084 00012FC4  38 63 00 F2 */ addi r3, r3, 0xf2
/* 80016088 00012FC8  4C C6 31 82 */ crclr 6
/* 8001608C 00012FCC  4B FF 0B 81 */ bl OSReport_Error
/* 80016090 00012FD0  4B FF 8C C1 */ bl mDoExt_getGameHeap
/* 80016094 00012FD4  7C 79 1B 78 */ mr r25, r3
/* 80016098 00012FD8  4B FF FE 8C */ b lbl_80015F24
lbl_8001609C:
/* 8001609C 00012FDC  57 60 06 3F */ clrlwi. r0, r27, 0x18
/* 800160A0 00012FE0  40 82 00 24 */ bne lbl_800160C4
/* 800160A4 00012FE4  3C 60 80 37 */ lis r3, lbl_803741A8@ha
/* 800160A8 00012FE8  38 63 41 A8 */ addi r3, r3, lbl_803741A8@l
/* 800160AC 00012FEC  38 63 01 32 */ addi r3, r3, 0x132
/* 800160B0 00012FF0  4C C6 31 82 */ crclr 6
/* 800160B4 00012FF4  4B FF 0B 59 */ bl OSReport_Error
/* 800160B8 00012FF8  4B FF 8D 79 */ bl mDoExt_getJ2dHeap
/* 800160BC 00012FFC  7C 79 1B 78 */ mr r25, r3
/* 800160C0 00013000  4B FF FE 64 */ b lbl_80015F24
lbl_800160C4:
/* 800160C4 00013004  3C 60 80 37 */ lis r3, lbl_803741A8@ha
/* 800160C8 00013008  38 63 41 A8 */ addi r3, r3, lbl_803741A8@l
/* 800160CC 0001300C  38 63 01 6F */ addi r3, r3, 0x16f
/* 800160D0 00013010  4C C6 31 82 */ crclr 6
/* 800160D4 00013014  4B FF 0A 69 */ bl OSReport_FatalError
lbl_800160D8:
/* 800160D8 00013018  38 00 00 01 */ li r0, 1
/* 800160DC 0001301C  98 1A 00 0C */ stb r0, 0xc(r26)
/* 800160E0 00013020  80 7A 00 1C */ lwz r3, 0x1c(r26)
/* 800160E4 00013024  30 03 FF FF */ addic r0, r3, -1
/* 800160E8 00013028  7C 00 19 10 */ subfe r0, r0, r3
/* 800160EC 0001302C  54 03 06 3E */ clrlwi r3, r0, 0x18
/* 800160F0 00013030  39 61 00 30 */ addi r11, r1, 0x30
/* 800160F4 00013034  48 34 C1 25 */ bl _restgpr_25
/* 800160F8 00013038  80 01 00 34 */ lwz r0, 0x34(r1)
/* 800160FC 0001303C  7C 08 03 A6 */ mtlr r0
/* 80016100 00013040  38 21 00 30 */ addi r1, r1, 0x30
/* 80016104 00013044  4E 80 00 20 */ blr