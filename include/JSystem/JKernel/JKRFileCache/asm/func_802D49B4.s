
/* 802D49B4 002D18F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D49B8 002D18F8  7C 08 02 A6 */	mflr r0
/* 802D49BC 002D18FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D49C0 002D1900  39 61 00 20 */	addi r11, r1, 0x20
/* 802D49C4 002D1904  48 08 D8 11 */	bl _savegpr_27
/* 802D49C8 002D1908  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D49CC 002D190C  7C 9B 23 78 */	mr r27, r4
/* 802D49D0 002D1910  7C BF 2B 78 */	mr r31, r5
/* 802D49D4 002D1914  41 82 00 10 */	beq lbl_802D49E4
/* 802D49D8 002D1918  88 1E 00 00 */	lbz r0, 0(r30)
/* 802D49DC 002D191C  2C 00 00 2F */	cmpwi r0, 0x2f
/* 802D49E0 002D1920  41 82 00 0C */	beq lbl_802D49EC
lbl_802D49E4:
/* 802D49E4 002D1924  38 60 00 00 */	li r3, 0
/* 802D49E8 002D1928  48 00 00 B4 */	b lbl_802D4A9C
lbl_802D49EC:
/* 802D49EC 002D192C  48 09 41 F9 */	bl strlen
/* 802D49F0 002D1930  28 03 00 01 */	cmplwi r3, 1
/* 802D49F4 002D1934  41 82 00 1C */	beq lbl_802D4A10
/* 802D49F8 002D1938  7C 7E 1A 14 */	add r3, r30, r3
/* 802D49FC 002D193C  88 03 FF FF */	lbz r0, -1(r3)
/* 802D4A00 002D1940  2C 00 00 2F */	cmpwi r0, 0x2f
/* 802D4A04 002D1944  40 82 00 0C */	bne lbl_802D4A10
/* 802D4A08 002D1948  38 60 00 00 */	li r3, 0
/* 802D4A0C 002D194C  48 00 00 90 */	b lbl_802D4A9C
lbl_802D4A10:
/* 802D4A10 002D1950  3C 60 80 43 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 802D4A14 002D1954  83 A3 43 54 */	lwz r29, sVolumeList__13JKRFileLoader@l(r3)
/* 802D4A18 002D1958  48 00 00 50 */	b lbl_802D4A68
lbl_802D4A1C:
/* 802D4A1C 002D195C  80 9D 00 00 */	lwz r4, 0(r29)
/* 802D4A20 002D1960  80 64 00 2C */	lwz r3, 0x2c(r4)
/* 802D4A24 002D1964  3C 03 BC BF */	addis r0, r3, 0xbcbf
/* 802D4A28 002D1968  28 00 53 48 */	cmplwi r0, 0x5348
/* 802D4A2C 002D196C  40 82 00 38 */	bne lbl_802D4A64
/* 802D4A30 002D1970  7C 9C 23 78 */	mr r28, r4
/* 802D4A34 002D1974  80 64 00 48 */	lwz r3, 0x48(r4)
/* 802D4A38 002D1978  28 03 00 00 */	cmplwi r3, 0
/* 802D4A3C 002D197C  41 82 00 28 */	beq lbl_802D4A64
/* 802D4A40 002D1980  7F C4 F3 78 */	mr r4, r30
/* 802D4A44 002D1984  48 09 3F 51 */	bl strcmp
/* 802D4A48 002D1988  2C 03 00 00 */	cmpwi r3, 0
/* 802D4A4C 002D198C  40 82 00 18 */	bne lbl_802D4A64
/* 802D4A50 002D1990  80 7C 00 34 */	lwz r3, 0x34(r28)
/* 802D4A54 002D1994  38 03 00 01 */	addi r0, r3, 1
/* 802D4A58 002D1998  90 1C 00 34 */	stw r0, 0x34(r28)
/* 802D4A5C 002D199C  7F 83 E3 78 */	mr r3, r28
/* 802D4A60 002D19A0  48 00 00 3C */	b lbl_802D4A9C
lbl_802D4A64:
/* 802D4A64 002D19A4  83 BD 00 0C */	lwz r29, 0xc(r29)
lbl_802D4A68:
/* 802D4A68 002D19A8  28 1D 00 00 */	cmplwi r29, 0
/* 802D4A6C 002D19AC  40 82 FF B0 */	bne lbl_802D4A1C
/* 802D4A70 002D19B0  38 60 00 54 */	li r3, 0x54
/* 802D4A74 002D19B4  7F 64 DB 78 */	mr r4, r27
/* 802D4A78 002D19B8  38 A0 00 00 */	li r5, 0
/* 802D4A7C 002D19BC  4B FF A2 1D */	bl __nw__FUlP7JKRHeapi
/* 802D4A80 002D19C0  7C 60 1B 79 */	or. r0, r3, r3
/* 802D4A84 002D19C4  41 82 00 14 */	beq lbl_802D4A98
/* 802D4A88 002D19C8  7F C4 F3 78 */	mr r4, r30
/* 802D4A8C 002D19CC  7F E5 FB 78 */	mr r5, r31
/* 802D4A90 002D19D0  48 00 00 25 */	bl __ct__12JKRFileCacheFPCcPCc
/* 802D4A94 002D19D4  7C 60 1B 78 */	mr r0, r3
lbl_802D4A98:
/* 802D4A98 002D19D8  7C 03 03 78 */	mr r3, r0
lbl_802D4A9C:
/* 802D4A9C 002D19DC  39 61 00 20 */	addi r11, r1, 0x20
/* 802D4AA0 002D19E0  48 08 D7 81 */	bl _restgpr_27
/* 802D4AA4 002D19E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D4AA8 002D19E8  7C 08 03 A6 */	mtlr r0
/* 802D4AAC 002D19EC  38 21 00 20 */	addi r1, r1, 0x20
/* 802D4AB0 002D19F0  4E 80 00 20 */	blr 