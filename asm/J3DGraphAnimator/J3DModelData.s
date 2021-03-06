.include "macros.inc"

.section .text, "ax" # 80325d88


.global J3DModelData_NS_clear
J3DModelData_NS_clear:
/* 80325D88 00322CC8  38 00 00 00 */	li r0, 0
/* 80325D8C 00322CCC  90 03 00 04 */	stw r0, 4(r3)
/* 80325D90 00322CD0  90 03 00 08 */	stw r0, 8(r3)
/* 80325D94 00322CD4  B0 03 00 0C */	sth r0, 0xc(r3)
/* 80325D98 00322CD8  B0 03 00 0E */	sth r0, 0xe(r3)
/* 80325D9C 00322CDC  4E 80 00 20 */	blr 

.global J3DModelData
J3DModelData:
/* 80325DA0 00322CE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80325DA4 00322CE4  7C 08 02 A6 */	mflr r0
/* 80325DA8 00322CE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80325DAC 00322CEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80325DB0 00322CF0  7C 7F 1B 78 */	mr r31, r3
/* 80325DB4 00322CF4  3C 60 80 3D */	lis r3, lbl_803CED14@ha
/* 80325DB8 00322CF8  38 03 ED 14 */	addi r0, r3, lbl_803CED14@l
/* 80325DBC 00322CFC  90 1F 00 00 */	stw r0, 0(r31)
/* 80325DC0 00322D00  38 7F 00 10 */	addi r3, r31, 0x10
/* 80325DC4 00322D04  4B FF FC 55 */	bl J3DJointTree
/* 80325DC8 00322D08  38 7F 00 58 */	addi r3, r31, 0x58
/* 80325DCC 00322D0C  48 00 98 05 */	bl J3DMaterialTable
/* 80325DD0 00322D10  3C 60 80 3D */	lis r3, lbl_803CED08@ha
/* 80325DD4 00322D14  38 03 ED 08 */	addi r0, r3, lbl_803CED08@l
/* 80325DD8 00322D18  90 1F 00 78 */	stw r0, 0x78(r31)
/* 80325DDC 00322D1C  38 00 00 00 */	li r0, 0
/* 80325DE0 00322D20  B0 1F 00 7C */	sth r0, 0x7c(r31)
/* 80325DE4 00322D24  90 1F 00 80 */	stw r0, 0x80(r31)
/* 80325DE8 00322D28  90 1F 00 84 */	stw r0, 0x84(r31)
/* 80325DEC 00322D2C  38 7F 00 88 */	addi r3, r31, 0x88
/* 80325DF0 00322D30  4B FE B1 09 */	bl J3DVertexData
/* 80325DF4 00322D34  7F E3 FB 78 */	mr r3, r31
/* 80325DF8 00322D38  4B FF FF 91 */	bl J3DModelData_NS_clear
/* 80325DFC 00322D3C  7F E3 FB 78 */	mr r3, r31
/* 80325E00 00322D40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80325E04 00322D44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80325E08 00322D48  7C 08 03 A6 */	mtlr r0
/* 80325E0C 00322D4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80325E10 00322D50  4E 80 00 20 */	blr 

.global J3DModelData_NS_newSharedDisplayList
J3DModelData_NS_newSharedDisplayList:
/* 80325E14 00322D54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80325E18 00322D58  7C 08 02 A6 */	mflr r0
/* 80325E1C 00322D5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80325E20 00322D60  39 61 00 20 */	addi r11, r1, 0x20
/* 80325E24 00322D64  48 03 C3 B1 */	bl _savegpr_27
/* 80325E28 00322D68  7C 7B 1B 78 */	mr r27, r3
/* 80325E2C 00322D6C  A3 E3 00 5C */	lhz r31, 0x5c(r3)
/* 80325E30 00322D70  3B 80 00 00 */	li r28, 0
/* 80325E34 00322D74  54 9E 03 5A */	rlwinm r30, r4, 0, 0xd, 0xd
/* 80325E38 00322D78  48 00 00 68 */	b lbl_80325EA0
lbl_80325E3C:
/* 80325E3C 00322D7C  28 1E 00 00 */	cmplwi r30, 0
/* 80325E40 00322D80  41 82 00 30 */	beq lbl_80325E70
/* 80325E44 00322D84  80 7B 00 60 */	lwz r3, 0x60(r27)
/* 80325E48 00322D88  57 80 13 BA */	rlwinm r0, r28, 2, 0xe, 0x1d
/* 80325E4C 00322D8C  7F A3 00 2E */	lwzx r29, r3, r0
/* 80325E50 00322D90  7F A3 EB 78 */	mr r3, r29
/* 80325E54 00322D94  4B FF 04 3D */	bl J3DMaterial_NS_countDLSize
/* 80325E58 00322D98  7C 64 1B 78 */	mr r4, r3
/* 80325E5C 00322D9C  7F A3 EB 78 */	mr r3, r29
/* 80325E60 00322DA0  4B FF 10 C5 */	bl J3DMaterial_NS_newSingleSharedDisplayList
/* 80325E64 00322DA4  2C 03 00 00 */	cmpwi r3, 0
/* 80325E68 00322DA8  41 82 00 34 */	beq lbl_80325E9C
/* 80325E6C 00322DAC  48 00 00 44 */	b lbl_80325EB0
lbl_80325E70:
/* 80325E70 00322DB0  80 7B 00 60 */	lwz r3, 0x60(r27)
/* 80325E74 00322DB4  57 80 13 BA */	rlwinm r0, r28, 2, 0xe, 0x1d
/* 80325E78 00322DB8  7F A3 00 2E */	lwzx r29, r3, r0
/* 80325E7C 00322DBC  7F A3 EB 78 */	mr r3, r29
/* 80325E80 00322DC0  4B FF 04 11 */	bl J3DMaterial_NS_countDLSize
/* 80325E84 00322DC4  7C 64 1B 78 */	mr r4, r3
/* 80325E88 00322DC8  7F A3 EB 78 */	mr r3, r29
/* 80325E8C 00322DCC  4B FF 10 05 */	bl J3DMaterial_NS_newSharedDisplayList
/* 80325E90 00322DD0  2C 03 00 00 */	cmpwi r3, 0
/* 80325E94 00322DD4  41 82 00 08 */	beq lbl_80325E9C
/* 80325E98 00322DD8  48 00 00 18 */	b lbl_80325EB0
lbl_80325E9C:
/* 80325E9C 00322DDC  3B 9C 00 01 */	addi r28, r28, 1
lbl_80325EA0:
/* 80325EA0 00322DE0  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 80325EA4 00322DE4  7C 00 F8 40 */	cmplw r0, r31
/* 80325EA8 00322DE8  41 80 FF 94 */	blt lbl_80325E3C
/* 80325EAC 00322DEC  38 60 00 00 */	li r3, 0
lbl_80325EB0:
/* 80325EB0 00322DF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80325EB4 00322DF4  48 03 C3 6D */	bl _restgpr_27
/* 80325EB8 00322DF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80325EBC 00322DFC  7C 08 03 A6 */	mtlr r0
/* 80325EC0 00322E00  38 21 00 20 */	addi r1, r1, 0x20
/* 80325EC4 00322E04  4E 80 00 20 */	blr 

.global J3DModelData_NS_indexToPtr
J3DModelData_NS_indexToPtr:
/* 80325EC8 00322E08  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80325ECC 00322E0C  7C 08 02 A6 */	mflr r0
/* 80325ED0 00322E10  90 01 00 34 */	stw r0, 0x34(r1)
/* 80325ED4 00322E14  39 61 00 30 */	addi r11, r1, 0x30
/* 80325ED8 00322E18  48 03 C2 FD */	bl _savegpr_27
/* 80325EDC 00322E1C  7C 7B 1B 78 */	mr r27, r3
/* 80325EE0 00322E20  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 80325EE4 00322E24  3C 60 80 43 */	lis r3, lbl_80434AC8@ha
/* 80325EE8 00322E28  38 63 4A C8 */	addi r3, r3, lbl_80434AC8@l
/* 80325EEC 00322E2C  90 03 00 58 */	stw r0, 0x58(r3)
/* 80325EF0 00322E30  88 0D 90 6C */	lbz r0, lbl_804515EC-_SDA_BASE_(r13)
/* 80325EF4 00322E34  7C 00 07 75 */	extsb. r0, r0
/* 80325EF8 00322E38  40 82 00 14 */	bne lbl_80325F0C
/* 80325EFC 00322E3C  48 01 77 F9 */	bl __RAS_OSDisableInterrupts_begin 
/* 80325F00 00322E40  90 6D 90 68 */	stw r3, lbl_804515E8-_SDA_BASE_(r13)
/* 80325F04 00322E44  38 00 00 01 */	li r0, 1
/* 80325F08 00322E48  98 0D 90 6C */	stb r0, lbl_804515EC-_SDA_BASE_(r13)
lbl_80325F0C:
/* 80325F0C 00322E4C  48 01 AD B9 */	bl OSDisableScheduler
/* 80325F10 00322E50  A3 FB 00 5C */	lhz r31, 0x5c(r27)
/* 80325F14 00322E54  3B 80 00 00 */	li r28, 0
/* 80325F18 00322E58  3B C1 00 08 */	addi r30, r1, 8
/* 80325F1C 00322E5C  48 00 00 40 */	b lbl_80325F5C
lbl_80325F20:
/* 80325F20 00322E60  80 7B 00 60 */	lwz r3, 0x60(r27)
/* 80325F24 00322E64  57 80 13 BA */	rlwinm r0, r28, 2, 0xe, 0x1d
/* 80325F28 00322E68  7F A3 00 2E */	lwzx r29, r3, r0
/* 80325F2C 00322E6C  80 BD 00 48 */	lwz r5, 0x48(r29)
/* 80325F30 00322E70  38 61 00 08 */	addi r3, r1, 8
/* 80325F34 00322E74  80 85 00 00 */	lwz r4, 0(r5)
/* 80325F38 00322E78  80 A5 00 08 */	lwz r5, 8(r5)
/* 80325F3C 00322E7C  48 03 B0 5D */	bl GDInitGDLObj
/* 80325F40 00322E80  93 CD 94 00 */	stw r30, lbl_80451980-_SDA_BASE_(r13)
/* 80325F44 00322E84  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 80325F48 00322E88  81 83 00 00 */	lwz r12, 0(r3)
/* 80325F4C 00322E8C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80325F50 00322E90  7D 89 03 A6 */	mtctr r12
/* 80325F54 00322E94  4E 80 04 21 */	bctrl 
/* 80325F58 00322E98  3B 9C 00 01 */	addi r28, r28, 1
lbl_80325F5C:
/* 80325F5C 00322E9C  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 80325F60 00322EA0  7C 00 F8 40 */	cmplw r0, r31
/* 80325F64 00322EA4  41 80 FF BC */	blt lbl_80325F20
/* 80325F68 00322EA8  38 00 00 00 */	li r0, 0
/* 80325F6C 00322EAC  90 0D 94 00 */	stw r0, lbl_80451980-_SDA_BASE_(r13)
/* 80325F70 00322EB0  48 01 AD 95 */	bl OSEnableScheduler
/* 80325F74 00322EB4  80 6D 90 68 */	lwz r3, lbl_804515E8-_SDA_BASE_(r13)
/* 80325F78 00322EB8  48 01 77 A5 */	bl OSRestoreInterrupts
/* 80325F7C 00322EBC  39 61 00 30 */	addi r11, r1, 0x30
/* 80325F80 00322EC0  48 03 C2 A1 */	bl _restgpr_27
/* 80325F84 00322EC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80325F88 00322EC8  7C 08 03 A6 */	mtlr r0
/* 80325F8C 00322ECC  38 21 00 30 */	addi r1, r1, 0x30
/* 80325F90 00322ED0  4E 80 00 20 */	blr 

.global J3DModelData_NS_makeSharedDL
J3DModelData_NS_makeSharedDL:
/* 80325F94 00322ED4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80325F98 00322ED8  7C 08 02 A6 */	mflr r0
/* 80325F9C 00322EDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80325FA0 00322EE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80325FA4 00322EE4  48 03 C2 39 */	bl _savegpr_29
/* 80325FA8 00322EE8  7C 7D 1B 78 */	mr r29, r3
/* 80325FAC 00322EEC  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 80325FB0 00322EF0  3C 60 80 43 */	lis r3, lbl_80434AC8@ha
/* 80325FB4 00322EF4  38 63 4A C8 */	addi r3, r3, lbl_80434AC8@l
/* 80325FB8 00322EF8  90 03 00 58 */	stw r0, 0x58(r3)
/* 80325FBC 00322EFC  A3 FD 00 5C */	lhz r31, 0x5c(r29)
/* 80325FC0 00322F00  3B C0 00 00 */	li r30, 0
/* 80325FC4 00322F04  48 00 00 24 */	b lbl_80325FE8
lbl_80325FC8:
/* 80325FC8 00322F08  80 7D 00 60 */	lwz r3, 0x60(r29)
/* 80325FCC 00322F0C  57 C0 13 BA */	rlwinm r0, r30, 2, 0xe, 0x1d
/* 80325FD0 00322F10  7C 63 00 2E */	lwzx r3, r3, r0
/* 80325FD4 00322F14  81 83 00 00 */	lwz r12, 0(r3)
/* 80325FD8 00322F18  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80325FDC 00322F1C  7D 89 03 A6 */	mtctr r12
/* 80325FE0 00322F20  4E 80 04 21 */	bctrl 
/* 80325FE4 00322F24  3B DE 00 01 */	addi r30, r30, 1
lbl_80325FE8:
/* 80325FE8 00322F28  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 80325FEC 00322F2C  7C 00 F8 40 */	cmplw r0, r31
/* 80325FF0 00322F30  41 80 FF D8 */	blt lbl_80325FC8
/* 80325FF4 00322F34  39 61 00 20 */	addi r11, r1, 0x20
/* 80325FF8 00322F38  48 03 C2 31 */	bl _restgpr_29
/* 80325FFC 00322F3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80326000 00322F40  7C 08 03 A6 */	mtlr r0
/* 80326004 00322F44  38 21 00 20 */	addi r1, r1, 0x20
/* 80326008 00322F48  4E 80 00 20 */	blr 

.global J3DModelData_NS_simpleCalcMaterial
J3DModelData_NS_simpleCalcMaterial:
/* 8032600C 00322F4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80326010 00322F50  7C 08 02 A6 */	mflr r0
/* 80326014 00322F54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80326018 00322F58  39 61 00 20 */	addi r11, r1, 0x20
/* 8032601C 00322F5C  48 03 C1 C1 */	bl _savegpr_29
/* 80326020 00322F60  7C 7F 1B 78 */	mr r31, r3
/* 80326024 00322F64  7C 9E 23 78 */	mr r30, r4
/* 80326028 00322F68  7C BD 2B 78 */	mr r29, r5
/* 8032602C 00322F6C  48 00 00 CD */	bl J3DModelData_NS_syncJ3DSysFlags
/* 80326030 00322F70  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80326034 00322F74  57 C0 13 BA */	rlwinm r0, r30, 2, 0xe, 0x1d
/* 80326038 00322F78  7C 63 00 2E */	lwzx r3, r3, r0
/* 8032603C 00322F7C  83 C3 00 58 */	lwz r30, 0x58(r3)
/* 80326040 00322F80  3F E0 C0 00 */	lis r31, 0xc000
/* 80326044 00322F84  48 00 00 68 */	b lbl_803260AC
lbl_80326048:
/* 80326048 00322F88  80 7E 00 3C */	lwz r3, 0x3c(r30)
/* 8032604C 00322F8C  7C 03 F8 40 */	cmplw r3, r31
/* 80326050 00322F90  40 80 00 0C */	bge lbl_8032605C
/* 80326054 00322F94  7C 60 1B 78 */	mr r0, r3
/* 80326058 00322F98  48 00 00 08 */	b lbl_80326060
lbl_8032605C:
/* 8032605C 00322F9C  38 00 00 00 */	li r0, 0
lbl_80326060:
/* 80326060 00322FA0  28 00 00 00 */	cmplwi r0, 0
/* 80326064 00322FA4  41 82 00 2C */	beq lbl_80326090
/* 80326068 00322FA8  3C 00 C0 00 */	lis r0, 0xc000
/* 8032606C 00322FAC  7C 03 00 40 */	cmplw r3, r0
/* 80326070 00322FB0  40 80 00 08 */	bge lbl_80326078
/* 80326074 00322FB4  48 00 00 08 */	b lbl_8032607C
lbl_80326078:
/* 80326078 00322FB8  38 60 00 00 */	li r3, 0
lbl_8032607C:
/* 8032607C 00322FBC  7F C4 F3 78 */	mr r4, r30
/* 80326080 00322FC0  81 83 00 00 */	lwz r12, 0(r3)
/* 80326084 00322FC4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80326088 00322FC8  7D 89 03 A6 */	mtctr r12
/* 8032608C 00322FCC  4E 80 04 21 */	bctrl 
lbl_80326090:
/* 80326090 00322FD0  7F C3 F3 78 */	mr r3, r30
/* 80326094 00322FD4  7F A4 EB 78 */	mr r4, r29
/* 80326098 00322FD8  81 9E 00 00 */	lwz r12, 0(r30)
/* 8032609C 00322FDC  81 8C 00 08 */	lwz r12, 8(r12)
/* 803260A0 00322FE0  7D 89 03 A6 */	mtctr r12
/* 803260A4 00322FE4  4E 80 04 21 */	bctrl 
/* 803260A8 00322FE8  83 DE 00 04 */	lwz r30, 4(r30)
lbl_803260AC:
/* 803260AC 00322FEC  28 1E 00 00 */	cmplwi r30, 0
/* 803260B0 00322FF0  40 82 FF 98 */	bne lbl_80326048
/* 803260B4 00322FF4  39 61 00 20 */	addi r11, r1, 0x20
/* 803260B8 00322FF8  48 03 C1 71 */	bl _restgpr_29
/* 803260BC 00322FFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803260C0 00323000  7C 08 03 A6 */	mtlr r0
/* 803260C4 00323004  38 21 00 20 */	addi r1, r1, 0x20
/* 803260C8 00323008  4E 80 00 20 */	blr 

.global J3DModelData_NS_syncJ3DSysPointers
J3DModelData_NS_syncJ3DSysPointers:
/* 803260CC 0032300C  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 803260D0 00323010  3C 80 80 43 */	lis r4, lbl_80434AC8@ha
/* 803260D4 00323014  38 84 4A C8 */	addi r4, r4, lbl_80434AC8@l
/* 803260D8 00323018  90 04 00 58 */	stw r0, 0x58(r4)
/* 803260DC 0032301C  80 03 00 A0 */	lwz r0, 0xa0(r3)
/* 803260E0 00323020  90 04 01 0C */	stw r0, 0x10c(r4)
/* 803260E4 00323024  80 03 00 A4 */	lwz r0, 0xa4(r3)
/* 803260E8 00323028  90 04 01 10 */	stw r0, 0x110(r4)
/* 803260EC 0032302C  80 03 00 AC */	lwz r0, 0xac(r3)
/* 803260F0 00323030  90 04 01 14 */	stw r0, 0x114(r4)
/* 803260F4 00323034  4E 80 00 20 */	blr 

.global J3DModelData_NS_syncJ3DSysFlags
J3DModelData_NS_syncJ3DSysFlags:
/* 803260F8 00323038  80 03 00 08 */	lwz r0, 8(r3)
/* 803260FC 0032303C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80326100 00323040  41 82 00 1C */	beq lbl_8032611C
/* 80326104 00323044  3C 60 80 43 */	lis r3, lbl_80434AC8@ha
/* 80326108 00323048  38 63 4A C8 */	addi r3, r3, lbl_80434AC8@l
/* 8032610C 0032304C  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80326110 00323050  64 00 40 00 */	oris r0, r0, 0x4000
/* 80326114 00323054  90 03 00 34 */	stw r0, 0x34(r3)
/* 80326118 00323058  4E 80 00 20 */	blr 
lbl_8032611C:
/* 8032611C 0032305C  3C 60 80 43 */	lis r3, lbl_80434AC8@ha
/* 80326120 00323060  38 63 4A C8 */	addi r3, r3, lbl_80434AC8@l
/* 80326124 00323064  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80326128 00323068  54 00 00 80 */	rlwinm r0, r0, 0, 2, 0
/* 8032612C 0032306C  90 03 00 34 */	stw r0, 0x34(r3)
/* 80326130 00323070  4E 80 00 20 */	blr 
/* 80326134 00323074  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80326138 00323078  7C 08 02 A6 */	mflr r0
/* 8032613C 0032307C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80326140 00323080  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80326144 00323084  7C 7F 1B 79 */	or. r31, r3, r3
/* 80326148 00323088  41 82 00 1C */	beq lbl_80326164
/* 8032614C 0032308C  3C A0 80 3D */	lis r5, lbl_803CED08@ha
/* 80326150 00323090  38 05 ED 08 */	addi r0, r5, lbl_803CED08@l
/* 80326154 00323094  90 1F 00 00 */	stw r0, 0(r31)
/* 80326158 00323098  7C 80 07 35 */	extsh. r0, r4
/* 8032615C 0032309C  40 81 00 08 */	ble lbl_80326164
/* 80326160 003230A0  4B FA 8B DD */	bl __dl
lbl_80326164:
/* 80326164 003230A4  7F E3 FB 78 */	mr r3, r31
/* 80326168 003230A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032616C 003230AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80326170 003230B0  7C 08 03 A6 */	mtlr r0
/* 80326174 003230B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80326178 003230B8  4E 80 00 20 */	blr 
/* 8032617C 003230BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80326180 003230C0  7C 08 02 A6 */	mflr r0
/* 80326184 003230C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80326188 003230C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032618C 003230CC  93 C1 00 08 */	stw r30, 8(r1)
/* 80326190 003230D0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80326194 003230D4  7C 9F 23 78 */	mr r31, r4
/* 80326198 003230D8  41 82 00 60 */	beq lbl_803261F8
/* 8032619C 003230DC  3C 60 80 3D */	lis r3, lbl_803CED14@ha
/* 803261A0 003230E0  38 03 ED 14 */	addi r0, r3, lbl_803CED14@l
/* 803261A4 003230E4  90 1E 00 00 */	stw r0, 0(r30)
/* 803261A8 003230E8  34 1E 00 78 */	addic. r0, r30, 0x78
/* 803261AC 003230EC  41 82 00 10 */	beq lbl_803261BC
/* 803261B0 003230F0  3C 60 80 3D */	lis r3, lbl_803CED08@ha
/* 803261B4 003230F4  38 03 ED 08 */	addi r0, r3, lbl_803CED08@l
/* 803261B8 003230F8  90 1E 00 78 */	stw r0, 0x78(r30)
lbl_803261BC:
/* 803261BC 003230FC  38 7E 00 58 */	addi r3, r30, 0x58
/* 803261C0 00323100  38 80 FF FF */	li r4, -1
/* 803261C4 00323104  48 00 94 41 */	bl J3DMaterialTable_NS_dtor
/* 803261C8 00323108  34 1E 00 10 */	addic. r0, r30, 0x10
/* 803261CC 0032310C  41 82 00 1C */	beq lbl_803261E8
/* 803261D0 00323110  3C 60 80 3D */	lis r3, lbl_803CECF4@ha
/* 803261D4 00323114  38 03 EC F4 */	addi r0, r3, lbl_803CECF4@l
/* 803261D8 00323118  90 1E 00 10 */	stw r0, 0x10(r30)
/* 803261DC 0032311C  38 7E 00 44 */	addi r3, r30, 0x44
/* 803261E0 00323120  38 80 FF FF */	li r4, -1
/* 803261E4 00323124  4B FE B4 11 */	bl J3DDrawMtxData_NS_dtor
lbl_803261E8:
/* 803261E8 00323128  7F E0 07 35 */	extsh. r0, r31
/* 803261EC 0032312C  40 81 00 0C */	ble lbl_803261F8
/* 803261F0 00323130  7F C3 F3 78 */	mr r3, r30
/* 803261F4 00323134  4B FA 8B 49 */	bl __dl
lbl_803261F8:
/* 803261F8 00323138  7F C3 F3 78 */	mr r3, r30
/* 803261FC 0032313C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80326200 00323140  83 C1 00 08 */	lwz r30, 8(r1)
/* 80326204 00323144  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80326208 00323148  7C 08 03 A6 */	mtlr r0
/* 8032620C 0032314C  38 21 00 10 */	addi r1, r1, 0x10
/* 80326210 00323150  4E 80 00 20 */	blr 

