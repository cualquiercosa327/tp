/* 80032AF8 0002FA38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80032AFC 0002FA3C  7C 08 02 A6 */	mflr r0
/* 80032B00 0002FA40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80032B04 0002FA44  54 84 06 3F */	clrlwi. r4, r4, 0x18
/* 80032B08 0002FA48  40 82 00 1C */	bne lbl_80032B24
/* 80032B0C 0002FA4C  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80032B10 0002FA50  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 80032B14 0002FA54  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80032B18 0002FA58  38 80 23 04 */	li r4, 0x2304
/* 80032B1C 0002FA5C  48 00 1E A1 */	bl dSv_event_c_NS_isEventBit
/* 80032B20 0002FA60  48 00 00 20 */	b lbl_80032B40
lbl_80032B24:
/* 80032B24 0002FA64  88 63 00 1C */	lbz r3, 0x1c(r3)
/* 80032B28 0002FA68  38 00 00 01 */	li r0, 1
/* 80032B2C 0002FA6C  7C 00 20 30 */	slw r0, r0, r4
/* 80032B30 0002FA70  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80032B34 0002FA74  7C 63 00 38 */	and r3, r3, r0
/* 80032B38 0002FA78  30 03 FF FF */	addic r0, r3, -1
/* 80032B3C 0002FA7C  7C 60 19 10 */	subfe r3, r0, r3
lbl_80032B40:
/* 80032B40 0002FA80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80032B44 0002FA84  7C 08 03 A6 */	mtlr r0
/* 80032B48 0002FA88  38 21 00 10 */	addi r1, r1, 0x10
/* 80032B4C 0002FA8C  4E 80 00 20 */	blr