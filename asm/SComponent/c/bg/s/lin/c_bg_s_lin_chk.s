.include "macros.inc"

.section .text, "ax" # 80267d5c


.global cBgS_LinChk
cBgS_LinChk:
/* 80267D5C 00264C9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80267D60 00264CA0  7C 08 02 A6 */	mflr r0
/* 80267D64 00264CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80267D68 00264CA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80267D6C 00264CAC  7C 7F 1B 78 */	mr r31, r3
/* 80267D70 00264CB0  4B FF FD DD */	bl __ct__8cBgS_ChkFv
/* 80267D74 00264CB4  38 7F 00 14 */	addi r3, r31, 0x14
/* 80267D78 00264CB8  48 00 02 FD */	bl cBgS_PolyInfo_NS_ctor
/* 80267D7C 00264CBC  3C 60 80 3C */	lis r3, lbl_803C3FA8@ha
/* 80267D80 00264CC0  38 63 3F A8 */	addi r3, r3, lbl_803C3FA8@l
/* 80267D84 00264CC4  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80267D88 00264CC8  38 03 00 0C */	addi r0, r3, 0xc
/* 80267D8C 00264CCC  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80267D90 00264CD0  3C 60 80 3A */	lis r3, lbl_803A78F8@ha
/* 80267D94 00264CD4  38 03 78 F8 */	addi r0, r3, lbl_803A78F8@l
/* 80267D98 00264CD8  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80267D9C 00264CDC  7F E3 FB 78 */	mr r3, r31
/* 80267DA0 00264CE0  48 00 00 A9 */	bl cBgS_LinChk_NS_ct
/* 80267DA4 00264CE4  7F E3 FB 78 */	mr r3, r31
/* 80267DA8 00264CE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80267DAC 00264CEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80267DB0 00264CF0  7C 08 03 A6 */	mtlr r0
/* 80267DB4 00264CF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80267DB8 00264CF8  4E 80 00 20 */	blr 

.global cBgS_LinChk_NS_dtor
cBgS_LinChk_NS_dtor:
/* 80267DBC 00264CFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80267DC0 00264D00  7C 08 02 A6 */	mflr r0
/* 80267DC4 00264D04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80267DC8 00264D08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80267DCC 00264D0C  93 C1 00 08 */	stw r30, 8(r1)
/* 80267DD0 00264D10  7C 7E 1B 79 */	or. r30, r3, r3
/* 80267DD4 00264D14  7C 9F 23 78 */	mr r31, r4
/* 80267DD8 00264D18  41 82 00 54 */	beq lbl_80267E2C
/* 80267DDC 00264D1C  3C 60 80 3C */	lis r3, lbl_803C3FA8@ha
/* 80267DE0 00264D20  38 63 3F A8 */	addi r3, r3, lbl_803C3FA8@l
/* 80267DE4 00264D24  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80267DE8 00264D28  38 03 00 0C */	addi r0, r3, 0xc
/* 80267DEC 00264D2C  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80267DF0 00264D30  34 1E 00 24 */	addic. r0, r30, 0x24
/* 80267DF4 00264D34  41 82 00 10 */	beq lbl_80267E04
/* 80267DF8 00264D38  3C 60 80 3A */	lis r3, lbl_803A78F8@ha
/* 80267DFC 00264D3C  38 03 78 F8 */	addi r0, r3, lbl_803A78F8@l
/* 80267E00 00264D40  90 1E 00 3C */	stw r0, 0x3c(r30)
lbl_80267E04:
/* 80267E04 00264D44  38 7E 00 14 */	addi r3, r30, 0x14
/* 80267E08 00264D48  38 80 00 00 */	li r4, 0
/* 80267E0C 00264D4C  48 00 02 A5 */	bl cBgS_PolyInfo_NS_dtor
/* 80267E10 00264D50  7F C3 F3 78 */	mr r3, r30
/* 80267E14 00264D54  38 80 00 00 */	li r4, 0
/* 80267E18 00264D58  4B FF FD 59 */	bl __dt__8cBgS_ChkFv
/* 80267E1C 00264D5C  7F E0 07 35 */	extsh. r0, r31
/* 80267E20 00264D60  40 81 00 0C */	ble lbl_80267E2C
/* 80267E24 00264D64  7F C3 F3 78 */	mr r3, r30
/* 80267E28 00264D68  48 06 6F 15 */	bl __dl__FPv
lbl_80267E2C:
/* 80267E2C 00264D6C  7F C3 F3 78 */	mr r3, r30
/* 80267E30 00264D70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80267E34 00264D74  83 C1 00 08 */	lwz r30, 8(r1)
/* 80267E38 00264D78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80267E3C 00264D7C  7C 08 03 A6 */	mtlr r0
/* 80267E40 00264D80  38 21 00 10 */	addi r1, r1, 0x10
/* 80267E44 00264D84  4E 80 00 20 */	blr 

.global cBgS_LinChk_NS_ct
cBgS_LinChk_NS_ct:
/* 80267E48 00264D88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80267E4C 00264D8C  7C 08 02 A6 */	mflr r0
/* 80267E50 00264D90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80267E54 00264D94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80267E58 00264D98  7C 7F 1B 78 */	mr r31, r3
/* 80267E5C 00264D9C  3C 60 80 43 */	lis r3, lbl_80430CF4@ha
/* 80267E60 00264DA0  C4 03 0C F4 */	lfsu f0, lbl_80430CF4@l(r3)
/* 80267E64 00264DA4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80267E68 00264DA8  C0 03 00 04 */	lfs f0, 4(r3)
/* 80267E6C 00264DAC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80267E70 00264DB0  C0 03 00 08 */	lfs f0, 8(r3)
/* 80267E74 00264DB4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80267E78 00264DB8  38 7F 00 24 */	addi r3, r31, 0x24
/* 80267E7C 00264DBC  38 81 00 08 */	addi r4, r1, 8
/* 80267E80 00264DC0  7C 85 23 78 */	mr r5, r4
/* 80267E84 00264DC4  48 00 74 65 */	bl cM3dGLin_NS_SetStartEnd
/* 80267E88 00264DC8  C0 01 00 08 */	lfs f0, 8(r1)
/* 80267E8C 00264DCC  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 80267E90 00264DD0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80267E94 00264DD4  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 80267E98 00264DD8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80267E9C 00264DDC  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 80267EA0 00264DE0  38 00 FF FF */	li r0, -1
/* 80267EA4 00264DE4  90 1F 00 08 */	stw r0, 8(r31)
/* 80267EA8 00264DE8  38 60 00 00 */	li r3, 0
/* 80267EAC 00264DEC  90 7F 00 4C */	stw r3, 0x4c(r31)
/* 80267EB0 00264DF0  38 00 00 01 */	li r0, 1
/* 80267EB4 00264DF4  98 1F 00 53 */	stb r0, 0x53(r31)
/* 80267EB8 00264DF8  98 7F 00 54 */	stb r3, 0x54(r31)
/* 80267EBC 00264DFC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80267EC0 00264E00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80267EC4 00264E04  7C 08 03 A6 */	mtlr r0
/* 80267EC8 00264E08  38 21 00 20 */	addi r1, r1, 0x20
/* 80267ECC 00264E0C  4E 80 00 20 */	blr 

.global cBgS_LinChk_NS_Set2
cBgS_LinChk_NS_Set2:
/* 80267ED0 00264E10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80267ED4 00264E14  7C 08 02 A6 */	mflr r0
/* 80267ED8 00264E18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80267EDC 00264E1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80267EE0 00264E20  48 0F A2 FD */	bl _savegpr_29
/* 80267EE4 00264E24  7C 7D 1B 78 */	mr r29, r3
/* 80267EE8 00264E28  7C BE 2B 78 */	mr r30, r5
/* 80267EEC 00264E2C  7C DF 33 78 */	mr r31, r6
/* 80267EF0 00264E30  38 7D 00 24 */	addi r3, r29, 0x24
/* 80267EF4 00264E34  48 00 73 F5 */	bl cM3dGLin_NS_SetStartEnd
/* 80267EF8 00264E38  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80267EFC 00264E3C  D0 1D 00 40 */	stfs f0, 0x40(r29)
/* 80267F00 00264E40  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80267F04 00264E44  D0 1D 00 44 */	stfs f0, 0x44(r29)
/* 80267F08 00264E48  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80267F0C 00264E4C  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 80267F10 00264E50  93 FD 00 08 */	stw r31, 8(r29)
/* 80267F14 00264E54  80 1D 00 4C */	lwz r0, 0x4c(r29)
/* 80267F18 00264E58  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80267F1C 00264E5C  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 80267F20 00264E60  38 7D 00 14 */	addi r3, r29, 0x14
/* 80267F24 00264E64  48 00 01 FD */	bl cBgS_PolyInfo_NS_ClearPi
/* 80267F28 00264E68  39 61 00 20 */	addi r11, r1, 0x20
/* 80267F2C 00264E6C  48 0F A2 FD */	bl _restgpr_29
/* 80267F30 00264E70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80267F34 00264E74  7C 08 03 A6 */	mtlr r0
/* 80267F38 00264E78  38 21 00 20 */	addi r1, r1, 0x20
/* 80267F3C 00264E7C  4E 80 00 20 */	blr 

.global cBgS_LinChk_NS_PreCalc
cBgS_LinChk_NS_PreCalc:
/* 80267F40 00264E80  80 03 00 4C */	lwz r0, 0x4c(r3)
/* 80267F44 00264E84  54 00 00 42 */	rlwinm r0, r0, 0, 1, 1
/* 80267F48 00264E88  7C 00 00 34 */	cntlzw r0, r0
/* 80267F4C 00264E8C  54 00 D9 7E */	srwi r0, r0, 5
/* 80267F50 00264E90  98 03 00 50 */	stb r0, 0x50(r3)
/* 80267F54 00264E94  80 03 00 4C */	lwz r0, 0x4c(r3)
/* 80267F58 00264E98  54 00 00 00 */	rlwinm r0, r0, 0, 0, 0
/* 80267F5C 00264E9C  7C 00 00 34 */	cntlzw r0, r0
/* 80267F60 00264EA0  54 00 D9 7E */	srwi r0, r0, 5
/* 80267F64 00264EA4  98 03 00 51 */	stb r0, 0x51(r3)
/* 80267F68 00264EA8  80 03 00 4C */	lwz r0, 0x4c(r3)
/* 80267F6C 00264EAC  54 00 00 84 */	rlwinm r0, r0, 0, 2, 2
/* 80267F70 00264EB0  7C 00 00 34 */	cntlzw r0, r0
/* 80267F74 00264EB4  54 00 D9 7E */	srwi r0, r0, 5
/* 80267F78 00264EB8  98 03 00 52 */	stb r0, 0x52(r3)
/* 80267F7C 00264EBC  4E 80 00 20 */	blr 
/* 80267F80 00264EC0  38 63 FF EC */	addi r3, r3, -20
/* 80267F84 00264EC4  4B FF FE 38 */	b cBgS_LinChk_NS_dtor

