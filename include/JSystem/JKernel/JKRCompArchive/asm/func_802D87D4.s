/* __ct__14JKRCompArchiveFlQ210JKRArchive15EMountDirection __ct__14JKRCompArchiveFlQ210JKRArchive15EMountDirection::__ct(long, JKRArchive::EMountDirection) */
/* JKRCompArchive */
/* 802D87D4 002D5714  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D87D8 002D5718  7C 08 02 A6 */	mflr r0
/* 802D87DC 002D571C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D87E0 002D5720  39 61 00 20 */	addi r11, r1, 0x20
/* 802D87E4 002D5724  48 08 99 F9 */	bl _savegpr_29
/* 802D87E8 002D5728  7C 7D 1B 78 */	mr r29, r3
/* 802D87EC 002D572C  7C 9E 23 78 */	mr r30, r4
/* 802D87F0 002D5730  7C BF 2B 78 */	mr r31, r5
/* 802D87F4 002D5734  38 A0 00 04 */	li r5, 4
/* 802D87F8 002D5738  4B FF DA 9D */	bl __ct__10JKRArchiveFlQ210JKRArchive10EMountMode
/* 802D87FC 002D573C  3C 60 80 3D */	lis r3, lbl_803CC3E8@ha
/* 802D8800 002D5740  38 03 C3 E8 */	addi r0, r3, lbl_803CC3E8@l
/* 802D8804 002D5744  90 1D 00 00 */	stw r0, 0(r29)
/* 802D8808 002D5748  93 FD 00 60 */	stw r31, 0x60(r29)
/* 802D880C 002D574C  7F A3 EB 78 */	mr r3, r29
/* 802D8810 002D5750  7F C4 F3 78 */	mr r4, r30
/* 802D8814 002D5754  48 00 01 A9 */	bl open__14JKRCompArchiveFl
/* 802D8818 002D5758  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802D881C 002D575C  40 82 00 0C */	bne lbl_802D8828
/* 802D8820 002D5760  7F A3 EB 78 */	mr r3, r29
/* 802D8824 002D5764  48 00 00 40 */	b lbl_802D8864
lbl_802D8828:
/* 802D8828 002D5768  3C 60 52 41 */	lis r3, 0x52415243@ha
/* 802D882C 002D576C  38 03 52 43 */	addi r0, r3, 0x52415243@l
/* 802D8830 002D5770  90 1D 00 2C */	stw r0, 0x2c(r29)
/* 802D8834 002D5774  80 9D 00 54 */	lwz r4, 0x54(r29)
/* 802D8838 002D5778  80 7D 00 48 */	lwz r3, 0x48(r29)
/* 802D883C 002D577C  80 03 00 04 */	lwz r0, 4(r3)
/* 802D8840 002D5780  7C 04 02 14 */	add r0, r4, r0
/* 802D8844 002D5784  90 1D 00 28 */	stw r0, 0x28(r29)
/* 802D8848 002D5788  3C 60 80 43 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 802D884C 002D578C  38 63 43 54 */	addi r3, r3, sVolumeList__13JKRFileLoader@l
/* 802D8850 002D5790  38 9D 00 18 */	addi r4, r29, 0x18
/* 802D8854 002D5794  48 00 37 9D */	bl prepend__10JSUPtrListFP10JSUPtrLink
/* 802D8858 002D5798  38 00 00 01 */	li r0, 1
/* 802D885C 002D579C  98 1D 00 30 */	stb r0, 0x30(r29)
/* 802D8860 002D57A0  7F A3 EB 78 */	mr r3, r29
lbl_802D8864:
/* 802D8864 002D57A4  39 61 00 20 */	addi r11, r1, 0x20
/* 802D8868 002D57A8  48 08 99 C1 */	bl _restgpr_29
/* 802D886C 002D57AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D8870 002D57B0  7C 08 03 A6 */	mtlr r0
/* 802D8874 002D57B4  38 21 00 20 */	addi r1, r1, 0x20
/* 802D8878 002D57B8  4E 80 00 20 */	blr
