.include "macros.inc"

.section .text, "ax" # 80280b20


.global JStage_NS_TAmbientLight_NS_dtor
JStage_NS_TAmbientLight_NS_dtor:
/* 80280B20 0027DA60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80280B24 0027DA64  7C 08 02 A6 */	mflr r0
/* 80280B28 0027DA68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80280B2C 0027DA6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80280B30 0027DA70  93 C1 00 08 */	stw r30, 8(r1)
/* 80280B34 0027DA74  7C 7E 1B 79 */	or. r30, r3, r3
/* 80280B38 0027DA78  7C 9F 23 78 */	mr r31, r4
/* 80280B3C 0027DA7C  41 82 00 28 */	beq lbl_80280B64
/* 80280B40 0027DA80  3C 80 80 3C */	lis r4, lbl_803C4638@ha
/* 80280B44 0027DA84  38 04 46 38 */	addi r0, r4, lbl_803C4638@l
/* 80280B48 0027DA88  90 1E 00 00 */	stw r0, 0(r30)
/* 80280B4C 0027DA8C  38 80 00 00 */	li r4, 0
/* 80280B50 0027DA90  48 00 02 85 */	bl JStage_NS_TObject_NS_dtor
/* 80280B54 0027DA94  7F E0 07 35 */	extsh. r0, r31
/* 80280B58 0027DA98  40 81 00 0C */	ble lbl_80280B64
/* 80280B5C 0027DA9C  7F C3 F3 78 */	mr r3, r30
/* 80280B60 0027DAA0  48 04 E1 DD */	bl __dl
lbl_80280B64:
/* 80280B64 0027DAA4  7F C3 F3 78 */	mr r3, r30
/* 80280B68 0027DAA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80280B6C 0027DAAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80280B70 0027DAB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80280B74 0027DAB4  7C 08 03 A6 */	mtlr r0
/* 80280B78 0027DAB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80280B7C 0027DABC  4E 80 00 20 */	blr 
/* 80280B80 0027DAC0  38 60 00 04 */	li r3, 4
/* 80280B84 0027DAC4  4E 80 00 20 */	blr 
/* 80280B88 0027DAC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80280B8C 0027DACC  80 62 B9 D0 */	lwz r3, lbl_804553D0-_SDA2_BASE_(r2)
/* 80280B90 0027DAD0  90 61 00 08 */	stw r3, 8(r1)
/* 80280B94 0027DAD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80280B98 0027DAD8  4E 80 00 20 */	blr 
/* 80280B9C 0027DADC  4E 80 00 20 */	blr 

