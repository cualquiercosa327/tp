/* 80005AD8 00002A18  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80005ADC 00002A1C  7C 08 02 A6 */	mflr r0
/* 80005AE0 00002A20  90 01 00 34 */	stw r0, 0x34(r1)
/* 80005AE4 00002A24  39 61 00 30 */	addi r11, r1, 0x30
/* 80005AE8 00002A28  48 35 C6 DD */	bl _savegpr_23
/* 80005AEC 00002A2C  3C 60 80 3A */	lis r3, lbl_803A2EE0@ha
/* 80005AF0 00002A30  3B 23 2E E0 */	addi r25, r3, lbl_803A2EE0@l
/* 80005AF4 00002A34  88 0D 85 99 */	lbz r0, lbl_80450B19-_SDA_BASE_(r13)
/* 80005AF8 00002A38  28 00 00 01 */	cmplwi r0, 1
/* 80005AFC 00002A3C  41 80 00 20 */	blt lbl_80005B1C
/* 80005B00 00002A40  28 00 00 06 */	cmplwi r0, 6
/* 80005B04 00002A44  41 81 00 18 */	bgt lbl_80005B1C
/* 80005B08 00002A48  38 79 00 14 */	addi r3, r25, 0x14
/* 80005B0C 00002A4C  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80005B10 00002A50  7C 63 02 14 */	add r3, r3, r0
/* 80005B14 00002A54  80 63 FF FC */	lwz r3, -4(r3)
/* 80005B18 00002A58  4B FF FD AD */	bl heapDisplay__9HeapCheckCFv
lbl_80005B1C:
/* 80005B1C 00002A5C  88 0D 80 08 */	lbz r0, lbl_80450588-_SDA_BASE_(r13)
/* 80005B20 00002A60  28 00 00 05 */	cmplwi r0, 5
/* 80005B24 00002A64  40 82 00 A0 */	bne lbl_80005BC4
/* 80005B28 00002A68  80 6D 8E 48 */	lwz r3, lbl_804513C8-_SDA_BASE_(r13)
/* 80005B2C 00002A6C  83 23 00 94 */	lwz r25, 0x94(r3)
/* 80005B30 00002A70  28 19 00 00 */	cmplwi r25, 0
/* 80005B34 00002A74  41 82 02 00 */	beq lbl_80005D34
/* 80005B38 00002A78  38 60 01 DB */	li r3, 0x1db
/* 80005B3C 00002A7C  38 80 00 64 */	li r4, 0x64
/* 80005B40 00002A80  3C A0 80 37 */	lis r5, lbl_803739A0@ha
/* 80005B44 00002A84  38 A5 39 A0 */	addi r5, r5, lbl_803739A0@l
/* 80005B48 00002A88  38 A5 01 96 */	addi r5, r5, 0x196
/* 80005B4C 00002A8C  4C C6 31 82 */	crclr 6
/* 80005B50 00002A90  48 2D A9 E1 */	bl JUTReport__FiiPCce
/* 80005B54 00002A94  7F 23 CB 78 */	mr r3, r25
/* 80005B58 00002A98  48 2C D5 DD */	bl getFreeSize__11JKRAramHeapFv
/* 80005B5C 00002A9C  7C 66 1B 78 */	mr r6, r3
/* 80005B60 00002AA0  38 60 01 DB */	li r3, 0x1db
/* 80005B64 00002AA4  38 80 00 72 */	li r4, 0x72
/* 80005B68 00002AA8  3C A0 80 37 */	lis r5, lbl_803739A0@ha
/* 80005B6C 00002AAC  38 A5 39 A0 */	addi r5, r5, lbl_803739A0@l
/* 80005B70 00002AB0  38 A5 01 A0 */	addi r5, r5, 0x1a0
/* 80005B74 00002AB4  4C C6 31 82 */	crclr 6
/* 80005B78 00002AB8  48 2D A9 B9 */	bl JUTReport__FiiPCce
/* 80005B7C 00002ABC  38 60 01 DB */	li r3, 0x1db
/* 80005B80 00002AC0  38 80 00 80 */	li r4, 0x80
/* 80005B84 00002AC4  3C A0 80 37 */	lis r5, lbl_803739A0@ha
/* 80005B88 00002AC8  38 A5 39 A0 */	addi r5, r5, lbl_803739A0@l
/* 80005B8C 00002ACC  38 A5 01 50 */	addi r5, r5, 0x150
/* 80005B90 00002AD0  4C C6 31 82 */	crclr 6
/* 80005B94 00002AD4  48 2D A9 9D */	bl JUTReport__FiiPCce
/* 80005B98 00002AD8  7F 23 CB 78 */	mr r3, r25
/* 80005B9C 00002ADC  48 2C D6 11 */	bl getTotalFreeSize__11JKRAramHeapFv
/* 80005BA0 00002AE0  7C 66 1B 78 */	mr r6, r3
/* 80005BA4 00002AE4  38 60 01 DB */	li r3, 0x1db
/* 80005BA8 00002AE8  38 80 00 8E */	li r4, 0x8e
/* 80005BAC 00002AEC  3C A0 80 37 */	lis r5, lbl_803739A0@ha
/* 80005BB0 00002AF0  38 A5 39 A0 */	addi r5, r5, lbl_803739A0@l
/* 80005BB4 00002AF4  38 A5 01 A0 */	addi r5, r5, 0x1a0
/* 80005BB8 00002AF8  4C C6 31 82 */	crclr 6
/* 80005BBC 00002AFC  48 2D A9 75 */	bl JUTReport__FiiPCce
/* 80005BC0 00002B00  48 00 01 74 */	b lbl_80005D34
lbl_80005BC4:
/* 80005BC4 00002B04  28 00 00 00 */	cmplwi r0, 0
/* 80005BC8 00002B08  41 82 01 6C */	beq lbl_80005D34
/* 80005BCC 00002B0C  38 60 01 DB */	li r3, 0x1db
/* 80005BD0 00002B10  38 80 00 64 */	li r4, 0x64
/* 80005BD4 00002B14  3C A0 80 37 */	lis r5, lbl_803739A0@ha
/* 80005BD8 00002B18  38 A5 39 A0 */	addi r5, r5, lbl_803739A0@l
/* 80005BDC 00002B1C  38 A5 01 A3 */	addi r5, r5, 0x1a3
/* 80005BE0 00002B20  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80005BE4 00002B24  38 D9 00 34 */	addi r6, r25, 0x34
/* 80005BE8 00002B28  7C C6 00 2E */	lwzx r6, r6, r0
/* 80005BEC 00002B2C  4C C6 31 82 */	crclr 6
/* 80005BF0 00002B30  48 2D A9 41 */	bl JUTReport__FiiPCce
/* 80005BF4 00002B34  38 60 01 DB */	li r3, 0x1db
/* 80005BF8 00002B38  38 80 00 72 */	li r4, 0x72
/* 80005BFC 00002B3C  3C A0 80 37 */	lis r5, lbl_803739A0@ha
/* 80005C00 00002B40  38 A5 39 A0 */	addi r5, r5, lbl_803739A0@l
/* 80005C04 00002B44  38 A5 01 A3 */	addi r5, r5, 0x1a3
/* 80005C08 00002B48  88 0D 80 08 */	lbz r0, lbl_80450588-_SDA_BASE_(r13)
/* 80005C0C 00002B4C  54 00 10 3A */	slwi r0, r0, 2
/* 80005C10 00002B50  38 D9 00 48 */	addi r6, r25, 0x48
/* 80005C14 00002B54  7C C6 00 2E */	lwzx r6, r6, r0
/* 80005C18 00002B58  4C C6 31 82 */	crclr 6
/* 80005C1C 00002B5C  48 2D A9 15 */	bl JUTReport__FiiPCce
/* 80005C20 00002B60  3B E0 00 00 */	li r31, 0
/* 80005C24 00002B64  3B 80 00 00 */	li r28, 0
/* 80005C28 00002B68  3B 60 00 00 */	li r27, 0
/* 80005C2C 00002B6C  3B 39 00 14 */	addi r25, r25, 0x14
/* 80005C30 00002B70  3C 60 80 37 */	lis r3, lbl_803739A0@ha
/* 80005C34 00002B74  3B 43 39 A0 */	addi r26, r3, lbl_803739A0@l
lbl_80005C38:
/* 80005C38 00002B78  7E F9 D8 2E */	lwzx r23, r25, r27
/* 80005C3C 00002B7C  83 17 00 08 */	lwz r24, 8(r23)
/* 80005C40 00002B80  88 0D 80 08 */	lbz r0, lbl_80450588-_SDA_BASE_(r13)
/* 80005C44 00002B84  2C 00 00 03 */	cmpwi r0, 3
/* 80005C48 00002B88  41 82 00 4C */	beq lbl_80005C94
/* 80005C4C 00002B8C  40 80 00 14 */	bge lbl_80005C60
/* 80005C50 00002B90  2C 00 00 01 */	cmpwi r0, 1
/* 80005C54 00002B94  41 82 00 18 */	beq lbl_80005C6C
/* 80005C58 00002B98  40 80 00 30 */	bge lbl_80005C88
/* 80005C5C 00002B9C  48 00 00 7C */	b lbl_80005CD8
lbl_80005C60:
/* 80005C60 00002BA0  2C 00 00 05 */	cmpwi r0, 5
/* 80005C64 00002BA4  40 80 00 74 */	bge lbl_80005CD8
/* 80005C68 00002BA8  48 00 00 48 */	b lbl_80005CB0
lbl_80005C6C:
/* 80005C6C 00002BAC  7F 03 C3 78 */	mr r3, r24
/* 80005C70 00002BB0  48 2C 8B 15 */	bl getTotalFreeSize__7JKRHeapFv
/* 80005C74 00002BB4  7C 7E 1B 78 */	mr r30, r3
/* 80005C78 00002BB8  7F 03 C3 78 */	mr r3, r24
/* 80005C7C 00002BBC  48 2C 8A B1 */	bl getFreeSize__7JKRHeapFv
/* 80005C80 00002BC0  7C 7D 1B 78 */	mr r29, r3
/* 80005C84 00002BC4  48 00 00 54 */	b lbl_80005CD8
lbl_80005C88:
/* 80005C88 00002BC8  83 D7 00 0C */	lwz r30, 0xc(r23)
/* 80005C8C 00002BCC  83 B8 00 38 */	lwz r29, 0x38(r24)
/* 80005C90 00002BD0  48 00 00 48 */	b lbl_80005CD8
lbl_80005C94:
/* 80005C94 00002BD4  7E E3 BB 78 */	mr r3, r23
/* 80005C98 00002BD8  4B FF FC 09 */	bl getUsedCount__9HeapCheckCFv
/* 80005C9C 00002BDC  7C 7E 1B 78 */	mr r30, r3
/* 80005CA0 00002BE0  7F 03 C3 78 */	mr r3, r24
/* 80005CA4 00002BE4  48 2C A0 C1 */	bl getTotalUsedSize__10JKRExpHeapCFv
/* 80005CA8 00002BE8  7C 7D 1B 78 */	mr r29, r3
/* 80005CAC 00002BEC  48 00 00 2C */	b lbl_80005CD8
lbl_80005CB0:
/* 80005CB0 00002BF0  7E E3 BB 78 */	mr r3, r23
/* 80005CB4 00002BF4  4B FF FB ED */	bl getUsedCount__9HeapCheckCFv
/* 80005CB8 00002BF8  80 17 00 20 */	lwz r0, 0x20(r23)
/* 80005CBC 00002BFC  7C 00 18 50 */	subf r0, r0, r3
/* 80005CC0 00002C00  7C 1E 03 78 */	mr r30, r0
/* 80005CC4 00002C04  80 77 00 08 */	lwz r3, 8(r23)
/* 80005CC8 00002C08  48 2C A0 9D */	bl getTotalUsedSize__10JKRExpHeapCFv
/* 80005CCC 00002C0C  80 17 00 24 */	lwz r0, 0x24(r23)
/* 80005CD0 00002C10  7C 00 18 50 */	subf r0, r0, r3
/* 80005CD4 00002C14  7C 1D 03 78 */	mr r29, r0
lbl_80005CD8:
/* 80005CD8 00002C18  38 60 01 DB */	li r3, 0x1db
/* 80005CDC 00002C1C  38 9C 00 96 */	addi r4, r28, 0x96
/* 80005CE0 00002C20  38 BA 01 A6 */	addi r5, r26, 0x1a6
/* 80005CE4 00002C24  80 D7 00 00 */	lwz r6, 0(r23)
/* 80005CE8 00002C28  4C C6 31 82 */	crclr 6
/* 80005CEC 00002C2C  48 2D A8 45 */	bl JUTReport__FiiPCce
/* 80005CF0 00002C30  38 60 01 DB */	li r3, 0x1db
/* 80005CF4 00002C34  38 9C 00 A4 */	addi r4, r28, 0xa4
/* 80005CF8 00002C38  38 BA 01 AC */	addi r5, r26, 0x1ac
/* 80005CFC 00002C3C  7F C6 F3 78 */	mr r6, r30
/* 80005D00 00002C40  4C C6 31 82 */	crclr 6
/* 80005D04 00002C44  48 2D A8 2D */	bl JUTReport__FiiPCce
/* 80005D08 00002C48  38 60 01 DB */	li r3, 0x1db
/* 80005D0C 00002C4C  38 9C 00 B2 */	addi r4, r28, 0xb2
/* 80005D10 00002C50  38 BA 01 AC */	addi r5, r26, 0x1ac
/* 80005D14 00002C54  7F A6 EB 78 */	mr r6, r29
/* 80005D18 00002C58  4C C6 31 82 */	crclr 6
/* 80005D1C 00002C5C  48 2D A8 15 */	bl JUTReport__FiiPCce
/* 80005D20 00002C60  3B FF 00 01 */	addi r31, r31, 1
/* 80005D24 00002C64  2C 1F 00 08 */	cmpwi r31, 8
/* 80005D28 00002C68  3B 9C 00 2C */	addi r28, r28, 0x2c
/* 80005D2C 00002C6C  3B 7B 00 04 */	addi r27, r27, 4
/* 80005D30 00002C70  41 80 FF 08 */	blt lbl_80005C38
lbl_80005D34:
/* 80005D34 00002C74  39 61 00 30 */	addi r11, r1, 0x30
/* 80005D38 00002C78  48 35 C4 D9 */	bl _restgpr_23
/* 80005D3C 00002C7C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80005D40 00002C80  7C 08 03 A6 */	mtlr r0
/* 80005D44 00002C84  38 21 00 30 */	addi r1, r1, 0x30
/* 80005D48 00002C88  4E 80 00 20 */	blr
