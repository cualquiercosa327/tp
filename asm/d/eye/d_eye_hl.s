.include "macros.inc"

.section .text, "ax" # 8009c964


.global dEyeHL_c_NS_entry
dEyeHL_c_NS_entry:
/* 8009C964 000998A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009C968 000998A8  7C 08 02 A6 */	mflr r0
/* 8009C96C 000998AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8009C970 000998B0  39 61 00 20 */	addi r11, r1, 0x20
/* 8009C974 000998B4  48 2C 58 61 */	bl _savegpr_27
/* 8009C978 000998B8  7C 7B 1B 78 */	mr r27, r3
/* 8009C97C 000998BC  7C BC 2B 78 */	mr r28, r5
/* 8009C980 000998C0  83 E4 00 6C */	lwz r31, 0x6c(r4)
/* 8009C984 000998C4  83 C4 00 70 */	lwz r30, 0x70(r4)
/* 8009C988 000998C8  28 1F 00 00 */	cmplwi r31, 0
/* 8009C98C 000998CC  41 82 00 74 */	beq lbl_8009CA00
/* 8009C990 000998D0  28 1E 00 00 */	cmplwi r30, 0
/* 8009C994 000998D4  41 82 00 6C */	beq lbl_8009CA00
/* 8009C998 000998D8  3B A0 00 00 */	li r29, 0
/* 8009C99C 000998DC  48 00 00 54 */	b lbl_8009C9F0
lbl_8009C9A0:
/* 8009C9A0 000998E0  7F C3 F3 78 */	mr r3, r30
/* 8009C9A4 000998E4  7F A4 EB 78 */	mr r4, r29
/* 8009C9A8 000998E8  48 24 21 51 */	bl JUTNameTab_NS_getName
/* 8009C9AC 000998EC  28 03 00 00 */	cmplwi r3, 0
/* 8009C9B0 000998F0  41 82 00 3C */	beq lbl_8009C9EC
/* 8009C9B4 000998F4  7F 84 E3 78 */	mr r4, r28
/* 8009C9B8 000998F8  48 2C BF DD */	bl strcmp
/* 8009C9BC 000998FC  2C 03 00 00 */	cmpwi r3, 0
/* 8009C9C0 00099900  40 82 00 2C */	bne lbl_8009C9EC
/* 8009C9C4 00099904  80 7F 00 04 */	lwz r3, 4(r31)
/* 8009C9C8 00099908  57 A0 2A F4 */	rlwinm r0, r29, 5, 0xb, 0x1a
/* 8009C9CC 0009990C  7C 03 02 14 */	add r0, r3, r0
/* 8009C9D0 00099910  90 1B 00 04 */	stw r0, 4(r27)
/* 8009C9D4 00099914  80 7B 00 04 */	lwz r3, 4(r27)
/* 8009C9D8 00099918  A8 03 00 1A */	lha r0, 0x1a(r3)
/* 8009C9DC 0009991C  B0 1B 00 08 */	sth r0, 8(r27)
/* 8009C9E0 00099920  7F 63 DB 78 */	mr r3, r27
/* 8009C9E4 00099924  48 00 01 31 */	bl dEyeHL_mng_c_NS_entry
/* 8009C9E8 00099928  48 00 00 28 */	b lbl_8009CA10
lbl_8009C9EC:
/* 8009C9EC 0009992C  3B BD 00 01 */	addi r29, r29, 1
lbl_8009C9F0:
/* 8009C9F0 00099930  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 8009C9F4 00099934  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8009C9F8 00099938  7C 03 00 40 */	cmplw r3, r0
/* 8009C9FC 0009993C  41 80 FF A4 */	blt lbl_8009C9A0
lbl_8009CA00:
/* 8009CA00 00099940  3C 60 80 38 */	lis r3, lbl_8037B100@ha
/* 8009CA04 00099944  38 63 B1 00 */	addi r3, r3, lbl_8037B100@l
/* 8009CA08 00099948  4C C6 31 82 */	crclr 6
/* 8009CA0C 0009994C  4B F6 A2 01 */	bl OSReport_Error
lbl_8009CA10:
/* 8009CA10 00099950  39 61 00 20 */	addi r11, r1, 0x20
/* 8009CA14 00099954  48 2C 58 0D */	bl _restgpr_27
/* 8009CA18 00099958  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8009CA1C 0009995C  7C 08 03 A6 */	mtlr r0
/* 8009CA20 00099960  38 21 00 20 */	addi r1, r1, 0x20
/* 8009CA24 00099964  4E 80 00 20 */	blr 

.global dEyeHL_c_NS_remove
dEyeHL_c_NS_remove:
/* 8009CA28 00099968  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009CA2C 0009996C  7C 08 02 A6 */	mflr r0
/* 8009CA30 00099970  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009CA34 00099974  48 00 01 01 */	bl dEyeHL_mng_c_NS_remove
/* 8009CA38 00099978  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009CA3C 0009997C  7C 08 03 A6 */	mtlr r0
/* 8009CA40 00099980  38 21 00 10 */	addi r1, r1, 0x10
/* 8009CA44 00099984  4E 80 00 20 */	blr 

.global dEyeHL_mng_c_NS_update
dEyeHL_mng_c_NS_update:
/* 8009CA48 00099988  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009CA4C 0009998C  80 AD 8A 28 */	lwz r5, lbl_80450FA8-_SDA_BASE_(r13)
/* 8009CA50 00099990  3C 60 80 43 */	lis r3, lbl_8043079C@ha
/* 8009CA54 00099994  38 63 07 9C */	addi r3, r3, lbl_8043079C@l
/* 8009CA58 00099998  88 03 00 10 */	lbz r0, 0x10(r3)
/* 8009CA5C 0009999C  28 00 00 00 */	cmplwi r0, 0
/* 8009CA60 000999A0  41 82 00 2C */	beq lbl_8009CA8C
/* 8009CA64 000999A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009CA68 000999A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009CA6C 000999AC  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8009CA70 000999B0  28 00 00 00 */	cmplwi r0, 0
/* 8009CA74 000999B4  40 82 00 24 */	bne lbl_8009CA98
/* 8009CA78 000999B8  48 00 00 14 */	b lbl_8009CA8C
lbl_8009CA7C:
/* 8009CA7C 000999BC  A8 05 00 08 */	lha r0, 8(r5)
/* 8009CA80 000999C0  80 65 00 04 */	lwz r3, 4(r5)
/* 8009CA84 000999C4  B0 03 00 1A */	sth r0, 0x1a(r3)
/* 8009CA88 000999C8  80 A5 00 10 */	lwz r5, 0x10(r5)
lbl_8009CA8C:
/* 8009CA8C 000999CC  28 05 00 00 */	cmplwi r5, 0
/* 8009CA90 000999D0  40 82 FF EC */	bne lbl_8009CA7C
/* 8009CA94 000999D4  48 00 00 78 */	b lbl_8009CB0C
lbl_8009CA98:
/* 8009CA98 000999D8  C0 42 92 10 */	lfs f2, lbl_80452C10-_SDA2_BASE_(r2)
/* 8009CA9C 000999DC  80 63 61 B0 */	lwz r3, 0x61b0(r3)
/* 8009CAA0 000999E0  C0 23 00 D0 */	lfs f1, 0xd0(r3)
/* 8009CAA4 000999E4  C0 02 92 14 */	lfs f0, lbl_80452C14-_SDA2_BASE_(r2)
/* 8009CAA8 000999E8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8009CAAC 000999EC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8009CAB0 000999F0  FC 00 00 1E */	fctiwz f0, f0
/* 8009CAB4 000999F4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8009CAB8 000999F8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8009CABC 000999FC  7C 04 07 34 */	extsh r4, r0
/* 8009CAC0 00099A00  48 00 00 44 */	b lbl_8009CB04
lbl_8009CAC4:
/* 8009CAC4 00099A04  80 C5 00 04 */	lwz r6, 4(r5)
/* 8009CAC8 00099A08  A8 05 00 08 */	lha r0, 8(r5)
/* 8009CACC 00099A0C  7C 00 22 14 */	add r0, r0, r4
/* 8009CAD0 00099A10  B0 06 00 1A */	sth r0, 0x1a(r6)
/* 8009CAD4 00099A14  A8 66 00 1A */	lha r3, 0x1a(r6)
/* 8009CAD8 00099A18  2C 03 FE 70 */	cmpwi r3, -400
/* 8009CADC 00099A1C  40 80 00 0C */	bge lbl_8009CAE8
/* 8009CAE0 00099A20  38 00 FE 70 */	li r0, -400
/* 8009CAE4 00099A24  48 00 00 18 */	b lbl_8009CAFC
lbl_8009CAE8:
/* 8009CAE8 00099A28  7C 60 07 34 */	extsh r0, r3
/* 8009CAEC 00099A2C  2C 00 01 8F */	cmpwi r0, 0x18f
/* 8009CAF0 00099A30  38 00 01 8F */	li r0, 0x18f
/* 8009CAF4 00099A34  41 81 00 08 */	bgt lbl_8009CAFC
/* 8009CAF8 00099A38  7C 60 1B 78 */	mr r0, r3
lbl_8009CAFC:
/* 8009CAFC 00099A3C  B0 06 00 1A */	sth r0, 0x1a(r6)
/* 8009CB00 00099A40  80 A5 00 10 */	lwz r5, 0x10(r5)
lbl_8009CB04:
/* 8009CB04 00099A44  28 05 00 00 */	cmplwi r5, 0
/* 8009CB08 00099A48  40 82 FF BC */	bne lbl_8009CAC4
lbl_8009CB0C:
/* 8009CB0C 00099A4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8009CB10 00099A50  4E 80 00 20 */	blr 

.global dEyeHL_mng_c_NS_entry
dEyeHL_mng_c_NS_entry:
/* 8009CB14 00099A54  80 8D 8A 28 */	lwz r4, lbl_80450FA8-_SDA_BASE_(r13)
/* 8009CB18 00099A58  28 04 00 00 */	cmplwi r4, 0
/* 8009CB1C 00099A5C  41 82 00 08 */	beq lbl_8009CB24
/* 8009CB20 00099A60  90 64 00 0C */	stw r3, 0xc(r4)
lbl_8009CB24:
/* 8009CB24 00099A64  80 0D 8A 28 */	lwz r0, lbl_80450FA8-_SDA_BASE_(r13)
/* 8009CB28 00099A68  90 03 00 10 */	stw r0, 0x10(r3)
/* 8009CB2C 00099A6C  90 6D 8A 28 */	stw r3, lbl_80450FA8-_SDA_BASE_(r13)
/* 8009CB30 00099A70  4E 80 00 20 */	blr 

.global dEyeHL_mng_c_NS_remove
dEyeHL_mng_c_NS_remove:
/* 8009CB34 00099A74  80 03 00 04 */	lwz r0, 4(r3)
/* 8009CB38 00099A78  28 00 00 00 */	cmplwi r0, 0
/* 8009CB3C 00099A7C  4D 82 00 20 */	beqlr 
/* 8009CB40 00099A80  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8009CB44 00099A84  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 8009CB48 00099A88  28 05 00 00 */	cmplwi r5, 0
/* 8009CB4C 00099A8C  41 82 00 08 */	beq lbl_8009CB54
/* 8009CB50 00099A90  90 85 00 0C */	stw r4, 0xc(r5)
lbl_8009CB54:
/* 8009CB54 00099A94  28 04 00 00 */	cmplwi r4, 0
/* 8009CB58 00099A98  40 82 00 0C */	bne lbl_8009CB64
/* 8009CB5C 00099A9C  90 AD 8A 28 */	stw r5, lbl_80450FA8-_SDA_BASE_(r13)
/* 8009CB60 00099AA0  48 00 00 08 */	b lbl_8009CB68
lbl_8009CB64:
/* 8009CB64 00099AA4  90 A4 00 10 */	stw r5, 0x10(r4)
lbl_8009CB68:
/* 8009CB68 00099AA8  A8 03 00 08 */	lha r0, 8(r3)
/* 8009CB6C 00099AAC  80 83 00 04 */	lwz r4, 4(r3)
/* 8009CB70 00099AB0  B0 04 00 1A */	sth r0, 0x1a(r4)
/* 8009CB74 00099AB4  38 00 00 00 */	li r0, 0
/* 8009CB78 00099AB8  90 03 00 04 */	stw r0, 4(r3)
/* 8009CB7C 00099ABC  90 03 00 0C */	stw r0, 0xc(r3)
/* 8009CB80 00099AC0  90 03 00 10 */	stw r0, 0x10(r3)
/* 8009CB84 00099AC4  4E 80 00 20 */	blr 

