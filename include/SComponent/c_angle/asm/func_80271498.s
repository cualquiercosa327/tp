/* 80271498 0026E3D8  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 8027149C 0026E3DC  7C 08 02 A6 */ mflr r0
/* 802714A0 0026E3E0  90 01 00 24 */ stw r0, 0x24(r1)
/* 802714A4 0026E3E4  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 802714A8 0026E3E8  7C 7F 1B 78 */ mr r31, r3
/* 802714AC 0026E3EC  C0 23 00 00 */ lfs f1, 0(r3)
/* 802714B0 0026E3F0  C0 02 B8 2C */ lfs f0, lbl_8045522C-_SDA2_BASE_(r2)
/* 802714B4 0026E3F4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 802714B8 0026E3F8  40 80 00 48 */ bge lbl_80271500
/* 802714BC 0026E3FC  FC 00 08 50 */ fneg f0, f1
/* 802714C0 0026E400  D0 1F 00 00 */ stfs f0, 0(r31)
/* 802714C4 0026E404  38 61 00 10 */ addi r3, r1, 0x10
/* 802714C8 0026E408  38 80 80 00 */ li r4, -32768
/* 802714CC 0026E40C  4B FF FA CD */ bl __ct__7cSAngleFs
/* 802714D0 0026E410  38 61 00 0C */ addi r3, r1, 0xc
/* 802714D4 0026E414  38 81 00 10 */ addi r4, r1, 0x10
/* 802714D8 0026E418  38 BF 00 04 */ addi r5, r31, 4
/* 802714DC 0026E41C  4B FF FC C9 */ bl __mi__7cSAngleCFRC7cSAngle
/* 802714E0 0026E420  38 7F 00 04 */ addi r3, r31, 4
/* 802714E4 0026E424  38 81 00 0C */ addi r4, r1, 0xc
/* 802714E8 0026E428  4B FF FB 11 */ bl Val__7cSAngleFRC7cSAngle
/* 802714EC 0026E42C  38 7F 00 06 */ addi r3, r31, 6
/* 802714F0 0026E430  4B FF FB F9 */ bl Inv__7cSAngleCFv
/* 802714F4 0026E434  7C 64 1B 78 */ mr r4, r3
/* 802714F8 0026E438  38 7F 00 06 */ addi r3, r31, 6
/* 802714FC 0026E43C  4B FF FB 09 */ bl Val__7cSAngleFs
lbl_80271500:
/* 80271500 0026E440  A8 1F 00 04 */ lha r0, 4(r31)
/* 80271504 0026E444  7C 00 07 35 */ extsh. r0, r0
/* 80271508 0026E448  40 80 00 38 */ bge lbl_80271540
/* 8027150C 0026E44C  2C 00 80 00 */ cmpwi r0, -32768
/* 80271510 0026E450  41 82 00 30 */ beq lbl_80271540
/* 80271514 0026E454  38 61 00 08 */ addi r3, r1, 8
/* 80271518 0026E458  38 9F 00 04 */ addi r4, r31, 4
/* 8027151C 0026E45C  4B FF FC 2D */ bl __mi__7cSAngleCFv
/* 80271520 0026E460  38 7F 00 04 */ addi r3, r31, 4
/* 80271524 0026E464  38 81 00 08 */ addi r4, r1, 8
/* 80271528 0026E468  4B FF FA D1 */ bl Val__7cSAngleFRC7cSAngle
/* 8027152C 0026E46C  38 7F 00 06 */ addi r3, r31, 6
/* 80271530 0026E470  4B FF FB B9 */ bl Inv__7cSAngleCFv
/* 80271534 0026E474  7C 64 1B 78 */ mr r4, r3
/* 80271538 0026E478  38 7F 00 06 */ addi r3, r31, 6
/* 8027153C 0026E47C  4B FF FA C9 */ bl Val__7cSAngleFs
lbl_80271540:
/* 80271540 0026E480  7F E3 FB 78 */ mr r3, r31
/* 80271544 0026E484  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 80271548 0026E488  80 01 00 24 */ lwz r0, 0x24(r1)
/* 8027154C 0026E48C  7C 08 03 A6 */ mtlr r0
/* 80271550 0026E490  38 21 00 20 */ addi r1, r1, 0x20
/* 80271554 0026E494  4E 80 00 20 */ blr
