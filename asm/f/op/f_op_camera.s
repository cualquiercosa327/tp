.include "macros.inc"

.section .text, "ax" # 8001e140


/* 8001E140 0001B080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E144 0001B084  7C 08 02 A6 */	mflr r0
/* 8001E148 0001B088  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E14C 0001B08C  7C 64 1B 78 */	mr r4, r3
/* 8001E150 0001B090  38 60 00 01 */	li r3, 1
/* 8001E154 0001B094  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8001E158 0001B098  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8001E15C 0001B09C  88 05 5E B5 */	lbz r0, 0x5eb5(r5)
/* 8001E160 0001B0A0  28 00 00 00 */	cmplwi r0, 0
/* 8001E164 0001B0A4  40 82 00 0C */	bne lbl_8001E170
/* 8001E168 0001B0A8  80 64 02 24 */	lwz r3, 0x224(r4)
/* 8001E16C 0001B0AC  48 00 38 B9 */	bl fpcLf_DrawMethod
lbl_8001E170:
/* 8001E170 0001B0B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E174 0001B0B4  7C 08 03 A6 */	mtlr r0
/* 8001E178 0001B0B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E17C 0001B0BC  4E 80 00 20 */	blr 
/* 8001E180 0001B0C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E184 0001B0C4  7C 08 02 A6 */	mflr r0
/* 8001E188 0001B0C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E18C 0001B0CC  7C 64 1B 78 */	mr r4, r3
/* 8001E190 0001B0D0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8001E194 0001B0D4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8001E198 0001B0D8  88 05 5E B5 */	lbz r0, 0x5eb5(r5)
/* 8001E19C 0001B0DC  28 00 00 00 */	cmplwi r0, 0
/* 8001E1A0 0001B0E0  40 82 00 18 */	bne lbl_8001E1B8
/* 8001E1A4 0001B0E4  88 0D 8B A4 */	lbz r0, lbl_80451124-_SDA_BASE_(r13)
/* 8001E1A8 0001B0E8  7C 00 07 75 */	extsb. r0, r0
/* 8001E1AC 0001B0EC  40 82 00 0C */	bne lbl_8001E1B8
/* 8001E1B0 0001B0F0  80 64 02 24 */	lwz r3, 0x224(r4)
/* 8001E1B4 0001B0F4  48 00 42 AD */	bl fpcMtd_Execute
lbl_8001E1B8:
/* 8001E1B8 0001B0F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E1BC 0001B0FC  7C 08 03 A6 */	mtlr r0
/* 8001E1C0 0001B100  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E1C4 0001B104  4E 80 00 20 */	blr 
/* 8001E1C8 0001B108  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E1CC 0001B10C  7C 08 02 A6 */	mflr r0
/* 8001E1D0 0001B110  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E1D4 0001B114  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001E1D8 0001B118  93 C1 00 08 */	stw r30, 8(r1)
/* 8001E1DC 0001B11C  7C 7E 1B 78 */	mr r30, r3
/* 8001E1E0 0001B120  80 63 02 24 */	lwz r3, 0x224(r3)
/* 8001E1E4 0001B124  7F C4 F3 78 */	mr r4, r30
/* 8001E1E8 0001B128  48 00 42 9D */	bl fpcMtd_IsDelete
/* 8001E1EC 0001B12C  7C 7F 1B 78 */	mr r31, r3
/* 8001E1F0 0001B130  2C 1F 00 01 */	cmpwi r31, 1
/* 8001E1F4 0001B134  40 82 00 0C */	bne lbl_8001E200
/* 8001E1F8 0001B138  38 7E 02 10 */	addi r3, r30, 0x210
/* 8001E1FC 0001B13C  48 00 22 D9 */	bl fopDwTg_DrawQTo
lbl_8001E200:
/* 8001E200 0001B140  7F E3 FB 78 */	mr r3, r31
/* 8001E204 0001B144  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001E208 0001B148  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001E20C 0001B14C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E210 0001B150  7C 08 03 A6 */	mtlr r0
/* 8001E214 0001B154  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E218 0001B158  4E 80 00 20 */	blr 
/* 8001E21C 0001B15C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E220 0001B160  7C 08 02 A6 */	mflr r0
/* 8001E224 0001B164  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E228 0001B168  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001E22C 0001B16C  93 C1 00 08 */	stw r30, 8(r1)
/* 8001E230 0001B170  7C 7E 1B 78 */	mr r30, r3
/* 8001E234 0001B174  80 63 02 24 */	lwz r3, 0x224(r3)
/* 8001E238 0001B178  7F C4 F3 78 */	mr r4, r30
/* 8001E23C 0001B17C  48 00 42 6D */	bl fpcMtd_Delete
/* 8001E240 0001B180  7C 7F 1B 78 */	mr r31, r3
/* 8001E244 0001B184  2C 1F 00 01 */	cmpwi r31, 1
/* 8001E248 0001B188  40 82 00 0C */	bne lbl_8001E254
/* 8001E24C 0001B18C  38 7E 02 10 */	addi r3, r30, 0x210
/* 8001E250 0001B190  48 00 22 85 */	bl fopDwTg_DrawQTo
lbl_8001E254:
/* 8001E254 0001B194  7F E3 FB 78 */	mr r3, r31
/* 8001E258 0001B198  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001E25C 0001B19C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001E260 0001B1A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E264 0001B1A4  7C 08 03 A6 */	mtlr r0
/* 8001E268 0001B1A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E26C 0001B1AC  4E 80 00 20 */	blr 
/* 8001E270 0001B1B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E274 0001B1B4  7C 08 02 A6 */	mflr r0
/* 8001E278 0001B1B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E27C 0001B1BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001E280 0001B1C0  93 C1 00 08 */	stw r30, 8(r1)
/* 8001E284 0001B1C4  7C 7F 1B 78 */	mr r31, r3
/* 8001E288 0001B1C8  88 03 00 0C */	lbz r0, 0xc(r3)
/* 8001E28C 0001B1CC  7C 00 07 75 */	extsb. r0, r0
/* 8001E290 0001B1D0  40 82 00 30 */	bne lbl_8001E2C0
/* 8001E294 0001B1D4  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8001E298 0001B1D8  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 8001E29C 0001B1DC  90 1F 02 24 */	stw r0, 0x224(r31)
/* 8001E2A0 0001B1E0  38 7F 02 10 */	addi r3, r31, 0x210
/* 8001E2A4 0001B1E4  7F E4 FB 78 */	mr r4, r31
/* 8001E2A8 0001B1E8  48 00 22 4D */	bl fopDwTg_Init
/* 8001E2AC 0001B1EC  80 7F 00 AC */	lwz r3, 0xac(r31)
/* 8001E2B0 0001B1F0  28 03 00 00 */	cmplwi r3, 0
/* 8001E2B4 0001B1F4  41 82 00 0C */	beq lbl_8001E2C0
/* 8001E2B8 0001B1F8  80 03 00 00 */	lwz r0, 0(r3)
/* 8001E2BC 0001B1FC  90 1F 00 B0 */	stw r0, 0xb0(r31)
lbl_8001E2C0:
/* 8001E2C0 0001B200  80 7F 02 24 */	lwz r3, 0x224(r31)
/* 8001E2C4 0001B204  7F E4 FB 78 */	mr r4, r31
/* 8001E2C8 0001B208  48 00 42 05 */	bl fpcMtd_Create
/* 8001E2CC 0001B20C  7C 7E 1B 78 */	mr r30, r3
/* 8001E2D0 0001B210  2C 1E 00 04 */	cmpwi r30, 4
/* 8001E2D4 0001B214  40 82 00 18 */	bne lbl_8001E2EC
/* 8001E2D8 0001B218  7F E3 FB 78 */	mr r3, r31
/* 8001E2DC 0001B21C  48 00 37 25 */	bl fpcLf_GetPriority
/* 8001E2E0 0001B220  7C 64 07 34 */	extsh r4, r3
/* 8001E2E4 0001B224  38 7F 02 10 */	addi r3, r31, 0x210
/* 8001E2E8 0001B228  48 00 21 C5 */	bl fopDwTg_ToDrawQ
lbl_8001E2EC:
/* 8001E2EC 0001B22C  7F C3 F3 78 */	mr r3, r30
/* 8001E2F0 0001B230  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001E2F4 0001B234  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001E2F8 0001B238  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E2FC 0001B23C  7C 08 03 A6 */	mtlr r0
/* 8001E300 0001B240  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E304 0001B244  4E 80 00 20 */	blr 

