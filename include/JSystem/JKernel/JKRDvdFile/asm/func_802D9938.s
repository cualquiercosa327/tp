/* close__10JKRDvdFileFv __ct__10JKRDvdFileFv::close(void) */
/* missing reference */
/* 802D9938 002D6878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D993C 002D687C  7C 08 02 A6 */	mflr r0
/* 802D9940 002D6880  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D9944 002D6884  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D9948 002D6888  7C 7F 1B 78 */	mr r31, r3
/* 802D994C 002D688C  88 03 00 18 */	lbz r0, 0x18(r3)
/* 802D9950 002D6890  28 00 00 00 */	cmplwi r0, 0
/* 802D9954 002D6894  41 82 00 4C */	beq lbl_802D99A0
/* 802D9958 002D6898  38 7F 00 5C */	addi r3, r31, 0x5c
/* 802D995C 002D689C  48 06 EF FD */	bl DVDClose
/* 802D9960 002D68A0  2C 03 00 00 */	cmpwi r3, 0
/* 802D9964 002D68A4  41 82 00 20 */	beq lbl_802D9984
/* 802D9968 002D68A8  38 00 00 00 */	li r0, 0
/* 802D996C 002D68AC  98 1F 00 18 */	stb r0, 0x18(r31)
/* 802D9970 002D68B0  3C 60 80 43 */	lis r3, sDvdList__10JKRDvdFile@ha
/* 802D9974 002D68B4  38 63 43 6C */	addi r3, r3, sDvdList__10JKRDvdFile@l
/* 802D9978 002D68B8  38 9F 00 E4 */	addi r4, r31, 0xe4
/* 802D997C 002D68BC  48 00 27 E1 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 802D9980 002D68C0  48 00 00 20 */	b lbl_802D99A0
lbl_802D9984:
/* 802D9984 002D68C4  3C 60 80 3A */	lis r3, lbl_8039D260@ha
/* 802D9988 002D68C8  38 63 D2 60 */	addi r3, r3, lbl_8039D260@l
/* 802D998C 002D68CC  38 80 00 D5 */	li r4, 0xd5
/* 802D9990 002D68D0  38 A3 00 0F */	addi r5, r3, 0xf
/* 802D9994 002D68D4  38 C3 00 12 */	addi r6, r3, 0x12
/* 802D9998 002D68D8  4C C6 31 82 */	crclr 6
/* 802D999C 002D68DC  48 00 88 61 */	bl JUTException_NS_panic_f
lbl_802D99A0:
/* 802D99A0 002D68E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D99A4 002D68E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D99A8 002D68E8  7C 08 03 A6 */	mtlr r0
/* 802D99AC 002D68EC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D99B0 002D68F0  4E 80 00 20 */	blr
