/* 8009EC28 0009BB68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009EC2C 0009BB6C  7C 08 02 A6 */	mflr r0
/* 8009EC30 0009BB70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009EC34 0009BB74  A0 A3 00 14 */	lhz r5, 0x14(r3)
/* 8009EC38 0009BB78  3C 60 80 43 */	lis r3, lbl_80434AC8@ha
/* 8009EC3C 0009BB7C  38 63 4A C8 */	addi r3, r3, lbl_80434AC8@l
/* 8009EC40 0009BB80  80 63 00 38 */	lwz r3, 0x38(r3)
/* 8009EC44 0009BB84  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8009EC48 0009BB88  2C 04 00 00 */	cmpwi r4, 0
/* 8009EC4C 0009BB8C  40 82 00 10 */	bne lbl_8009EC5C
/* 8009EC50 0009BB90  7C A4 2B 78 */	mr r4, r5
/* 8009EC54 0009BB94  4B FF FF 05 */	bl modelCallBack__9daAlink_cFi
/* 8009EC58 0009BB98  48 00 00 34 */	b lbl_8009EC8C
lbl_8009EC5C:
/* 8009EC5C 0009BB9C  2C 04 00 01 */	cmpwi r4, 1
/* 8009EC60 0009BBA0  40 82 00 2C */	bne lbl_8009EC8C
/* 8009EC64 0009BBA4  38 80 00 00 */	li r4, 0
/* 8009EC68 0009BBA8  88 03 2F 90 */	lbz r0, 0x2f90(r3)
/* 8009EC6C 0009BBAC  28 00 00 00 */	cmplwi r0, 0
/* 8009EC70 0009BBB0  41 82 00 10 */	beq lbl_8009EC80
/* 8009EC74 0009BBB4  2C 05 00 01 */	cmpwi r5, 1
/* 8009EC78 0009BBB8  40 82 00 08 */	bne lbl_8009EC80
/* 8009EC7C 0009BBBC  38 80 00 01 */	li r4, 1
lbl_8009EC80:
/* 8009EC80 0009BBC0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8009EC84 0009BBC4  41 82 00 08 */	beq lbl_8009EC8C
/* 8009EC88 0009BBC8  4B FF FE 91 */	bl resetRootMtx__9daAlink_cFv
lbl_8009EC8C:
/* 8009EC8C 0009BBCC  38 60 00 01 */	li r3, 1
/* 8009EC90 0009BBD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009EC94 0009BBD4  7C 08 03 A6 */	mtlr r0
/* 8009EC98 0009BBD8  38 21 00 10 */	addi r1, r1, 0x10
/* 8009EC9C 0009BBDC  4E 80 00 20 */	blr 