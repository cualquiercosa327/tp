/* dump_sort__10JKRExpHeapFv __ct__10JKRExpHeapFPvUlP7JKRHeapb::dump_sort(void) */
/* missing reference */
/* 802D05CC 002CD50C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802D05D0 002CD510  7C 08 02 A6 */	mflr r0
/* 802D05D4 002CD514  90 01 00 44 */	stw r0, 0x44(r1)
/* 802D05D8 002CD518  39 61 00 40 */	addi r11, r1, 0x40
/* 802D05DC 002CD51C  48 09 1B F1 */	bl _savegpr_25
/* 802D05E0 002CD520  7C 79 1B 78 */	mr r25, r3
/* 802D05E4 002CD524  38 79 00 18 */	addi r3, r25, 0x18
/* 802D05E8 002CD528  48 06 EA 59 */	bl OSLockMutex
/* 802D05EC 002CD52C  7F 23 CB 78 */	mr r3, r25
/* 802D05F0 002CD530  81 99 00 00 */	lwz r12, 0(r25)
/* 802D05F4 002CD534  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802D05F8 002CD538  7D 89 03 A6 */	mtctr r12
/* 802D05FC 002CD53C  4E 80 04 21 */	bctrl
/* 802D0600 002CD540  7C 7E 1B 78 */	mr r30, r3
/* 802D0604 002CD544  3B A0 00 00 */	li r29, 0
/* 802D0608 002CD548  3B 80 00 00 */	li r28, 0
/* 802D060C 002CD54C  3B 60 00 00 */	li r27, 0
/* 802D0610 002CD550  3C 60 80 3A */	lis r3, lbl_8039CAF0@ha
/* 802D0614 002CD554  38 63 CA F0 */	addi r3, r3, lbl_8039CAF0@l
/* 802D0618 002CD558  38 63 01 9D */	addi r3, r3, 0x19d
/* 802D061C 002CD55C  48 01 80 2D */	bl JUTReportConsole
/* 802D0620 002CD560  3C 60 80 3A */	lis r3, lbl_8039CAF0@ha
/* 802D0624 002CD564  38 63 CA F0 */	addi r3, r3, lbl_8039CAF0@l
/* 802D0628 002CD568  38 63 01 D4 */	addi r3, r3, 0x1d4
/* 802D062C 002CD56C  48 01 80 1D */	bl JUTReportConsole
/* 802D0630 002CD570  80 19 00 80 */	lwz r0, 0x80(r25)
/* 802D0634 002CD574  28 00 00 00 */	cmplwi r0, 0
/* 802D0638 002CD578  40 82 00 18 */	bne lbl_802D0650
/* 802D063C 002CD57C  3C 60 80 3A */	lis r3, lbl_8039CAF0@ha
/* 802D0640 002CD580  38 63 CA F0 */	addi r3, r3, lbl_8039CAF0@l
/* 802D0644 002CD584  38 63 01 E3 */	addi r3, r3, 0x1e3
/* 802D0648 002CD588  48 01 80 01 */	bl JUTReportConsole
/* 802D064C 002CD58C  48 00 00 D0 */	b lbl_802D071C
lbl_802D0650:
/* 802D0650 002CD590  38 80 00 00 */	li r4, 0
/* 802D0654 002CD594  3C 60 80 3A */	lis r3, lbl_8039CAF0@ha
/* 802D0658 002CD598  3B E3 CA F0 */	addi r31, r3, lbl_8039CAF0@l
lbl_802D065C:
/* 802D065C 002CD59C  3B 40 FF FF */	li r26, -1
/* 802D0660 002CD5A0  80 79 00 80 */	lwz r3, 0x80(r25)
/* 802D0664 002CD5A4  48 00 00 1C */	b lbl_802D0680
lbl_802D0668:
/* 802D0668 002CD5A8  7C 04 18 40 */	cmplw r4, r3
/* 802D066C 002CD5AC  40 80 00 10 */	bge lbl_802D067C
/* 802D0670 002CD5B0  7C 03 D0 40 */	cmplw r3, r26
/* 802D0674 002CD5B4  40 80 00 08 */	bge lbl_802D067C
/* 802D0678 002CD5B8  7C 7A 1B 78 */	mr r26, r3
lbl_802D067C:
/* 802D067C 002CD5BC  80 63 00 0C */	lwz r3, 0xc(r3)
lbl_802D0680:
/* 802D0680 002CD5C0  28 03 00 00 */	cmplwi r3, 0
/* 802D0684 002CD5C4  40 82 FF E4 */	bne lbl_802D0668
/* 802D0688 002CD5C8  3C 1A 00 01 */	addis r0, r26, 1
/* 802D068C 002CD5CC  28 00 FF FF */	cmplwi r0, 0xffff
/* 802D0690 002CD5D0  41 82 00 8C */	beq lbl_802D071C
/* 802D0694 002CD5D4  A0 1A 00 00 */	lhz r0, 0(r26)
/* 802D0698 002CD5D8  28 00 48 4D */	cmplwi r0, 0x484d
/* 802D069C 002CD5DC  41 82 00 1C */	beq lbl_802D06B8
/* 802D06A0 002CD5E0  3C 60 80 3A */	lis r3, lbl_8039CAF0@ha
/* 802D06A4 002CD5E4  38 63 CA F0 */	addi r3, r3, lbl_8039CAF0@l
/* 802D06A8 002CD5E8  38 63 01 EA */	addi r3, r3, 0x1ea
/* 802D06AC 002CD5EC  4C C6 31 82 */	crclr 6
/* 802D06B0 002CD5F0  48 01 7F 19 */	bl JUTReportConsole_f
/* 802D06B4 002CD5F4  48 00 00 68 */	b lbl_802D071C
lbl_802D06B8:
/* 802D06B8 002CD5F8  88 1A 00 02 */	lbz r0, 2(r26)
/* 802D06BC 002CD5FC  54 08 06 7E */	clrlwi r8, r0, 0x19
/* 802D06C0 002CD600  38 BA 00 10 */	addi r5, r26, 0x10
/* 802D06C4 002CD604  38 7F 02 24 */	addi r3, r31, 0x224
/* 802D06C8 002CD608  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 802D06CC 002CD60C  38 9F 02 4F */	addi r4, r31, 0x24f
/* 802D06D0 002CD610  41 82 00 10 */	beq lbl_802D06E0
/* 802D06D4 002CD614  3C 80 80 3A */	lis r4, lbl_8039CAF0@ha
/* 802D06D8 002CD618  38 84 CA F0 */	addi r4, r4, lbl_8039CAF0@l
/* 802D06DC 002CD61C  38 84 02 49 */	addi r4, r4, 0x249
lbl_802D06E0:
/* 802D06E0 002CD620  80 DA 00 04 */	lwz r6, 4(r26)
/* 802D06E4 002CD624  88 FA 00 03 */	lbz r7, 3(r26)
/* 802D06E8 002CD628  81 3A 00 08 */	lwz r9, 8(r26)
/* 802D06EC 002CD62C  81 5A 00 0C */	lwz r10, 0xc(r26)
/* 802D06F0 002CD630  4C C6 31 82 */	crclr 6
/* 802D06F4 002CD634  48 01 7E D5 */	bl JUTReportConsole_f
/* 802D06F8 002CD638  80 7A 00 04 */	lwz r3, 4(r26)
/* 802D06FC 002CD63C  88 1A 00 02 */	lbz r0, 2(r26)
/* 802D0700 002CD640  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 802D0704 002CD644  7C 03 02 14 */	add r0, r3, r0
/* 802D0708 002CD648  7F A0 EA 14 */	add r29, r0, r29
/* 802D070C 002CD64C  7F 44 D3 78 */	mr r4, r26
/* 802D0710 002CD650  3B BD 00 10 */	addi r29, r29, 0x10
/* 802D0714 002CD654  3B 9C 00 01 */	addi r28, r28, 1
/* 802D0718 002CD658  4B FF FF 44 */	b lbl_802D065C
lbl_802D071C:
/* 802D071C 002CD65C  3C 60 80 3A */	lis r3, lbl_8039CAF0@ha
/* 802D0720 002CD660  38 63 CA F0 */	addi r3, r3, lbl_8039CAF0@l
/* 802D0724 002CD664  38 63 02 55 */	addi r3, r3, 0x255
/* 802D0728 002CD668  48 01 7F 21 */	bl JUTReportConsole
/* 802D072C 002CD66C  80 19 00 78 */	lwz r0, 0x78(r25)
/* 802D0730 002CD670  28 00 00 00 */	cmplwi r0, 0
/* 802D0734 002CD674  40 82 00 14 */	bne lbl_802D0748
/* 802D0738 002CD678  3C 60 80 3A */	lis r3, lbl_8039CAF0@ha
/* 802D073C 002CD67C  38 63 CA F0 */	addi r3, r3, lbl_8039CAF0@l
/* 802D0740 002CD680  38 63 01 E3 */	addi r3, r3, 0x1e3
/* 802D0744 002CD684  48 01 7F 05 */	bl JUTReportConsole
lbl_802D0748:
/* 802D0748 002CD688  83 F9 00 78 */	lwz r31, 0x78(r25)
/* 802D074C 002CD68C  3C 60 80 3A */	lis r3, lbl_8039CAF0@ha
/* 802D0750 002CD690  3B 43 CA F0 */	addi r26, r3, lbl_8039CAF0@l
/* 802D0754 002CD694  48 00 00 38 */	b lbl_802D078C
lbl_802D0758:
/* 802D0758 002CD698  38 7A 02 24 */	addi r3, r26, 0x224
/* 802D075C 002CD69C  38 9A 02 64 */	addi r4, r26, 0x264
/* 802D0760 002CD6A0  38 BF 00 10 */	addi r5, r31, 0x10
/* 802D0764 002CD6A4  80 DF 00 04 */	lwz r6, 4(r31)
/* 802D0768 002CD6A8  88 FF 00 03 */	lbz r7, 3(r31)
/* 802D076C 002CD6AC  88 1F 00 02 */	lbz r0, 2(r31)
/* 802D0770 002CD6B0  54 08 06 7E */	clrlwi r8, r0, 0x19
/* 802D0774 002CD6B4  81 3F 00 08 */	lwz r9, 8(r31)
/* 802D0778 002CD6B8  81 5F 00 0C */	lwz r10, 0xc(r31)
/* 802D077C 002CD6BC  4C C6 31 82 */	crclr 6
/* 802D0780 002CD6C0  48 01 7E 49 */	bl JUTReportConsole_f
/* 802D0784 002CD6C4  83 FF 00 0C */	lwz r31, 0xc(r31)
/* 802D0788 002CD6C8  3B 7B 00 01 */	addi r27, r27, 1
lbl_802D078C:
/* 802D078C 002CD6CC  28 1F 00 00 */	cmplwi r31, 0
/* 802D0790 002CD6D0  40 82 FF C8 */	bne lbl_802D0758
/* 802D0794 002CD6D4  80 B9 00 38 */	lwz r5, 0x38(r25)
/* 802D0798 002CD6D8  3C 60 80 3A */	lis r3, lbl_8039CAF0@ha
/* 802D079C 002CD6DC  38 63 CA F0 */	addi r3, r3, lbl_8039CAF0@l
/* 802D07A0 002CD6E0  38 63 02 6A */	addi r3, r3, 0x26a
/* 802D07A4 002CD6E4  7F A4 EB 78 */	mr r4, r29
/* 802D07A8 002CD6E8  C0 62 C5 98 */	lfs f3, lbl_80455F98-_SDA2_BASE_(r2)
/* 802D07AC 002CD6EC  C8 42 C5 A0 */	lfd f2, lbl_80455FA0-_SDA2_BASE_(r2)
/* 802D07B0 002CD6F0  93 A1 00 0C */	stw r29, 0xc(r1)
/* 802D07B4 002CD6F4  3C 00 43 30 */	lis r0, 0x4330
/* 802D07B8 002CD6F8  90 01 00 08 */	stw r0, 8(r1)
/* 802D07BC 002CD6FC  C8 01 00 08 */	lfd f0, 8(r1)
/* 802D07C0 002CD700  EC 20 10 28 */	fsubs f1, f0, f2
/* 802D07C4 002CD704  90 A1 00 14 */	stw r5, 0x14(r1)
/* 802D07C8 002CD708  90 01 00 10 */	stw r0, 0x10(r1)
/* 802D07CC 002CD70C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802D07D0 002CD710  EC 00 10 28 */	fsubs f0, f0, f2
/* 802D07D4 002CD714  EC 01 00 24 */	fdivs f0, f1, f0
/* 802D07D8 002CD718  EC 23 00 32 */	fmuls f1, f3, f0
/* 802D07DC 002CD71C  7F 86 E3 78 */	mr r6, r28
/* 802D07E0 002CD720  7F 67 DB 78 */	mr r7, r27
/* 802D07E4 002CD724  4C C6 32 42 */	crset 6
/* 802D07E8 002CD728  48 01 7D E1 */	bl JUTReportConsole_f
/* 802D07EC 002CD72C  38 79 00 18 */	addi r3, r25, 0x18
/* 802D07F0 002CD730  48 06 E9 2D */	bl OSUnlockMutex
/* 802D07F4 002CD734  7F C3 F3 78 */	mr r3, r30
/* 802D07F8 002CD738  39 61 00 40 */	addi r11, r1, 0x40
/* 802D07FC 002CD73C  48 09 1A 1D */	bl _restgpr_25
/* 802D0800 002CD740  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802D0804 002CD744  7C 08 03 A6 */	mtlr r0
/* 802D0808 002CD748  38 21 00 40 */	addi r1, r1, 0x40
/* 802D080C 002CD74C  4E 80 00 20 */	blr
