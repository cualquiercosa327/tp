/* orderAsync__12JKRAramPieceFiUlUlUlP12JKRAramBlockPFUl_v JKRAramPiece::orderAsync(int, unsigned long, unsigned long, unsigned long, JKRAramBlock *, void (*)(unsigned long)) */
/* JKRAramPiece_NS_orderAsync */
/* 802D3614 002D0554  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802D3618 002D0558  7C 08 02 A6 */	mflr r0
/* 802D361C 002D055C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802D3620 002D0560  39 61 00 30 */	addi r11, r1, 0x30
/* 802D3624 002D0564  48 08 EB A9 */	bl _savegpr_25
/* 802D3628 002D0568  7C 7A 1B 78 */	mr r26, r3
/* 802D362C 002D056C  7C 9B 23 78 */	mr r27, r4
/* 802D3630 002D0570  7C BC 2B 78 */	mr r28, r5
/* 802D3634 002D0574  7C DD 33 78 */	mr r29, r6
/* 802D3638 002D0578  7C FE 3B 78 */	mr r30, r7
/* 802D363C 002D057C  7D 1F 43 78 */	mr r31, r8
/* 802D3640 002D0580  3C 60 80 43 */	lis r3, lbl_80434330@ha
/* 802D3644 002D0584  38 63 43 30 */	addi r3, r3, lbl_80434330@l
/* 802D3648 002D0588  48 06 B9 F9 */	bl OSLockMutex
/* 802D364C 002D058C  57 60 06 FF */	clrlwi. r0, r27, 0x1b
/* 802D3650 002D0590  40 82 00 0C */	bne lbl_802D365C
/* 802D3654 002D0594  57 80 06 FF */	clrlwi. r0, r28, 0x1b
/* 802D3658 002D0598  41 82 00 80 */	beq lbl_802D36D8
lbl_802D365C:
/* 802D365C 002D059C  3C 60 80 3A */	lis r3, lbl_8039D0B8@ha
/* 802D3660 002D05A0  38 63 D0 B8 */	addi r3, r3, lbl_8039D0B8@l
/* 802D3664 002D05A4  7F 44 D3 78 */	mr r4, r26
/* 802D3668 002D05A8  4C C6 31 82 */	crclr 6
/* 802D366C 002D05AC  4B D3 34 51 */	bl OSReport
/* 802D3670 002D05B0  3C 60 80 3A */	lis r3, lbl_8039D0B8@ha
/* 802D3674 002D05B4  38 63 D0 B8 */	addi r3, r3, lbl_8039D0B8@l
/* 802D3678 002D05B8  38 63 00 10 */	addi r3, r3, 0x10
/* 802D367C 002D05BC  7F 64 DB 78 */	mr r4, r27
/* 802D3680 002D05C0  4C C6 31 82 */	crclr 6
/* 802D3684 002D05C4  4B D3 34 39 */	bl OSReport
/* 802D3688 002D05C8  3C 60 80 3A */	lis r3, lbl_8039D0B8@ha
/* 802D368C 002D05CC  38 63 D0 B8 */	addi r3, r3, lbl_8039D0B8@l
/* 802D3690 002D05D0  38 63 00 1D */	addi r3, r3, 0x1d
/* 802D3694 002D05D4  7F 84 E3 78 */	mr r4, r28
/* 802D3698 002D05D8  4C C6 31 82 */	crclr 6
/* 802D369C 002D05DC  4B D3 34 21 */	bl OSReport
/* 802D36A0 002D05E0  3C 60 80 3A */	lis r3, lbl_8039D0B8@ha
/* 802D36A4 002D05E4  38 63 D0 B8 */	addi r3, r3, lbl_8039D0B8@l
/* 802D36A8 002D05E8  38 63 00 2F */	addi r3, r3, 0x2f
/* 802D36AC 002D05EC  7F A4 EB 78 */	mr r4, r29
/* 802D36B0 002D05F0  4C C6 31 82 */	crclr 6
/* 802D36B4 002D05F4  4B D3 34 09 */	bl OSReport
/* 802D36B8 002D05F8  3C 60 80 3A */	lis r3, lbl_8039D0B8@ha
/* 802D36BC 002D05FC  38 C3 D0 B8 */	addi r6, r3, lbl_8039D0B8@l
/* 802D36C0 002D0600  38 66 00 3C */	addi r3, r6, 0x3c
/* 802D36C4 002D0604  38 80 00 6C */	li r4, 0x6c
/* 802D36C8 002D0608  38 A6 00 4D */	addi r5, r6, 0x4d
/* 802D36CC 002D060C  38 C6 00 50 */	addi r6, r6, 0x50
/* 802D36D0 002D0610  4C C6 31 82 */	crclr 6
/* 802D36D4 002D0614  48 00 EB 29 */	bl JUTException_NS_panic_f
lbl_802D36D8:
/* 802D36D8 002D0618  38 60 00 08 */	li r3, 8
/* 802D36DC 002D061C  80 8D 8D F0 */	lwz r4, sSystemHeap__7JKRHeap-_SDA_BASE_(r13)
/* 802D36E0 002D0620  38 A0 FF FC */	li r5, -4
/* 802D36E4 002D0624  4B FF B5 B5 */	bl __nw__FUlP7JKRHeapi
/* 802D36E8 002D0628  7C 79 1B 78 */	mr r25, r3
/* 802D36EC 002D062C  7F 43 D3 78 */	mr r3, r26
/* 802D36F0 002D0630  7F 64 DB 78 */	mr r4, r27
/* 802D36F4 002D0634  7F 85 E3 78 */	mr r5, r28
/* 802D36F8 002D0638  7F A6 EB 78 */	mr r6, r29
/* 802D36FC 002D063C  7F C7 F3 78 */	mr r7, r30
/* 802D3700 002D0640  7F E8 FB 78 */	mr r8, r31
/* 802D3704 002D0644  4B FF FE 71 */	bl prepareCommand__12JKRAramPieceFiUlUlUlP12JKRAramBlockPFUl_v
/* 802D3708 002D0648  7C 7A 1B 78 */	mr r26, r3
/* 802D370C 002D064C  38 00 00 01 */	li r0, 1
/* 802D3710 002D0650  90 19 00 00 */	stw r0, 0(r25)
/* 802D3714 002D0654  93 59 00 04 */	stw r26, 4(r25)
/* 802D3718 002D0658  3C 60 80 3D */	lis r3, sMessageQueue__7JKRAram@ha
/* 802D371C 002D065C  38 63 C1 38 */	addi r3, r3, sMessageQueue__7JKRAram@l
/* 802D3720 002D0660  7F 24 CB 78 */	mr r4, r25
/* 802D3724 002D0664  38 A0 00 01 */	li r5, 1
/* 802D3728 002D0668  48 06 B2 CD */	bl OSSendMessage
/* 802D372C 002D066C  80 1A 00 58 */	lwz r0, 0x58(r26)
/* 802D3730 002D0670  28 00 00 00 */	cmplwi r0, 0
/* 802D3734 002D0674  41 82 00 14 */	beq lbl_802D3748
/* 802D3738 002D0678  3C 60 80 43 */	lis r3, lbl_80434324@ha
/* 802D373C 002D067C  38 63 43 24 */	addi r3, r3, lbl_80434324@l
/* 802D3740 002D0680  38 9A 00 20 */	addi r4, r26, 0x20
/* 802D3744 002D0684  48 00 88 09 */	bl append__10JSUPtrListFP10JSUPtrLink
lbl_802D3748:
/* 802D3748 002D0688  3C 60 80 43 */	lis r3, lbl_80434330@ha
/* 802D374C 002D068C  38 63 43 30 */	addi r3, r3, lbl_80434330@l
/* 802D3750 002D0690  48 06 B9 CD */	bl OSUnlockMutex
/* 802D3754 002D0694  7F 43 D3 78 */	mr r3, r26
/* 802D3758 002D0698  39 61 00 30 */	addi r11, r1, 0x30
/* 802D375C 002D069C  48 08 EA BD */	bl _restgpr_25
/* 802D3760 002D06A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802D3764 002D06A4  7C 08 03 A6 */	mtlr r0
/* 802D3768 002D06A8  38 21 00 30 */	addi r1, r1, 0x30
/* 802D376C 002D06AC  4E 80 00 20 */	blr
