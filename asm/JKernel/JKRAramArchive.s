.include "macros.inc"

.section .text, "ax" # 802d70c0


.global JKRAramArchive
JKRAramArchive:
/* 802D70C0 002D4000  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D70C4 002D4004  7C 08 02 A6 */	mflr r0
/* 802D70C8 002D4008  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D70CC 002D400C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D70D0 002D4010  48 08 B1 0D */	bl _savegpr_29
/* 802D70D4 002D4014  7C 7D 1B 78 */	mr r29, r3
/* 802D70D8 002D4018  7C 9E 23 78 */	mr r30, r4
/* 802D70DC 002D401C  7C BF 2B 78 */	mr r31, r5
/* 802D70E0 002D4020  38 A0 00 02 */	li r5, 2
/* 802D70E4 002D4024  4B FF F1 B1 */	bl __ct__10JKRArchiveFlQ210JKRArchive10EMountMode
/* 802D70E8 002D4028  3C 60 80 3D */	lis r3, lbl_803CC348@ha
/* 802D70EC 002D402C  38 03 C3 48 */	addi r0, r3, lbl_803CC348@l
/* 802D70F0 002D4030  90 1D 00 00 */	stw r0, 0(r29)
/* 802D70F4 002D4034  93 FD 00 60 */	stw r31, 0x60(r29)
/* 802D70F8 002D4038  7F A3 EB 78 */	mr r3, r29
/* 802D70FC 002D403C  7F C4 F3 78 */	mr r4, r30
/* 802D7100 002D4040  48 00 01 A9 */	bl JKRAramArchive_NS_open
/* 802D7104 002D4044  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802D7108 002D4048  40 82 00 0C */	bne lbl_802D7114
/* 802D710C 002D404C  7F A3 EB 78 */	mr r3, r29
/* 802D7110 002D4050  48 00 00 40 */	b lbl_802D7150
lbl_802D7114:
/* 802D7114 002D4054  3C 60 52 41 */	lis r3, 0x52415243@ha
/* 802D7118 002D4058  38 03 52 43 */	addi r0, r3, 0x52415243@l
/* 802D711C 002D405C  90 1D 00 2C */	stw r0, 0x2c(r29)
/* 802D7120 002D4060  80 9D 00 54 */	lwz r4, 0x54(r29)
/* 802D7124 002D4064  80 7D 00 48 */	lwz r3, 0x48(r29)
/* 802D7128 002D4068  80 03 00 04 */	lwz r0, 4(r3)
/* 802D712C 002D406C  7C 04 02 14 */	add r0, r4, r0
/* 802D7130 002D4070  90 1D 00 28 */	stw r0, 0x28(r29)
/* 802D7134 002D4074  3C 60 80 43 */	lis r3, lbl_80434354@ha
/* 802D7138 002D4078  38 63 43 54 */	addi r3, r3, lbl_80434354@l
/* 802D713C 002D407C  38 9D 00 18 */	addi r4, r29, 0x18
/* 802D7140 002D4080  48 00 4E B1 */	bl prepend__10JSUPtrListFP10JSUPtrLink
/* 802D7144 002D4084  38 00 00 01 */	li r0, 1
/* 802D7148 002D4088  98 1D 00 30 */	stb r0, 0x30(r29)
/* 802D714C 002D408C  7F A3 EB 78 */	mr r3, r29
lbl_802D7150:
/* 802D7150 002D4090  39 61 00 20 */	addi r11, r1, 0x20
/* 802D7154 002D4094  48 08 B0 D5 */	bl _restgpr_29
/* 802D7158 002D4098  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D715C 002D409C  7C 08 03 A6 */	mtlr r0
/* 802D7160 002D40A0  38 21 00 20 */	addi r1, r1, 0x20
/* 802D7164 002D40A4  4E 80 00 20 */	blr 
/* 802D7168 002D40A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D716C 002D40AC  7C 08 02 A6 */	mflr r0
/* 802D7170 002D40B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D7174 002D40B4  39 61 00 20 */	addi r11, r1, 0x20
/* 802D7178 002D40B8  48 08 B0 61 */	bl _savegpr_28
/* 802D717C 002D40BC  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D7180 002D40C0  7C 9F 23 78 */	mr r31, r4
/* 802D7184 002D40C4  41 82 01 08 */	beq lbl_802D728C
/* 802D7188 002D40C8  3C 60 80 3D */	lis r3, lbl_803CC348@ha
/* 802D718C 002D40CC  38 03 C3 48 */	addi r0, r3, lbl_803CC348@l
/* 802D7190 002D40D0  90 1E 00 00 */	stw r0, 0(r30)
/* 802D7194 002D40D4  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 802D7198 002D40D8  28 00 00 01 */	cmplwi r0, 1
/* 802D719C 002D40DC  40 82 00 D4 */	bne lbl_802D7270
/* 802D71A0 002D40E0  80 1E 00 44 */	lwz r0, 0x44(r30)
/* 802D71A4 002D40E4  28 00 00 00 */	cmplwi r0, 0
/* 802D71A8 002D40E8  41 82 00 4C */	beq lbl_802D71F4
/* 802D71AC 002D40EC  83 BE 00 4C */	lwz r29, 0x4c(r30)
/* 802D71B0 002D40F0  3B 80 00 00 */	li r28, 0
/* 802D71B4 002D40F4  48 00 00 20 */	b lbl_802D71D4
lbl_802D71B8:
/* 802D71B8 002D40F8  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 802D71BC 002D40FC  28 03 00 00 */	cmplwi r3, 0
/* 802D71C0 002D4100  41 82 00 0C */	beq lbl_802D71CC
/* 802D71C4 002D4104  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 802D71C8 002D4108  4B FF 73 39 */	bl free__7JKRHeapFPvP7JKRHeap
lbl_802D71CC:
/* 802D71CC 002D410C  3B BD 00 14 */	addi r29, r29, 0x14
/* 802D71D0 002D4110  3B 9C 00 01 */	addi r28, r28, 1
lbl_802D71D4:
/* 802D71D4 002D4114  80 7E 00 44 */	lwz r3, 0x44(r30)
/* 802D71D8 002D4118  80 03 00 08 */	lwz r0, 8(r3)
/* 802D71DC 002D411C  7C 1C 00 40 */	cmplw r28, r0
/* 802D71E0 002D4120  41 80 FF D8 */	blt lbl_802D71B8
/* 802D71E4 002D4124  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 802D71E8 002D4128  4B FF 73 19 */	bl free__7JKRHeapFPvP7JKRHeap
/* 802D71EC 002D412C  38 00 00 00 */	li r0, 0
/* 802D71F0 002D4130  90 1E 00 44 */	stw r0, 0x44(r30)
lbl_802D71F4:
/* 802D71F4 002D4134  80 7E 00 50 */	lwz r3, 0x50(r30)
/* 802D71F8 002D4138  28 03 00 00 */	cmplwi r3, 0
/* 802D71FC 002D413C  41 82 00 14 */	beq lbl_802D7210
/* 802D7200 002D4140  38 80 00 00 */	li r4, 0
/* 802D7204 002D4144  4B FF 72 FD */	bl free__7JKRHeapFPvP7JKRHeap
/* 802D7208 002D4148  38 00 00 00 */	li r0, 0
/* 802D720C 002D414C  90 1E 00 50 */	stw r0, 0x50(r30)
lbl_802D7210:
/* 802D7210 002D4150  80 7E 00 68 */	lwz r3, 0x68(r30)
/* 802D7214 002D4154  28 03 00 00 */	cmplwi r3, 0
/* 802D7218 002D4158  41 82 00 1C */	beq lbl_802D7234
/* 802D721C 002D415C  41 82 00 18 */	beq lbl_802D7234
/* 802D7220 002D4160  38 80 00 01 */	li r4, 1
/* 802D7224 002D4164  81 83 00 00 */	lwz r12, 0(r3)
/* 802D7228 002D4168  81 8C 00 08 */	lwz r12, 8(r12)
/* 802D722C 002D416C  7D 89 03 A6 */	mtctr r12
/* 802D7230 002D4170  4E 80 04 21 */	bctrl 
lbl_802D7234:
/* 802D7234 002D4174  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 802D7238 002D4178  28 03 00 00 */	cmplwi r3, 0
/* 802D723C 002D417C  41 82 00 1C */	beq lbl_802D7258
/* 802D7240 002D4180  41 82 00 18 */	beq lbl_802D7258
/* 802D7244 002D4184  38 80 00 01 */	li r4, 1
/* 802D7248 002D4188  81 83 00 00 */	lwz r12, 0(r3)
/* 802D724C 002D418C  81 8C 00 08 */	lwz r12, 8(r12)
/* 802D7250 002D4190  7D 89 03 A6 */	mtctr r12
/* 802D7254 002D4194  4E 80 04 21 */	bctrl 
lbl_802D7258:
/* 802D7258 002D4198  3C 60 80 43 */	lis r3, lbl_80434354@ha
/* 802D725C 002D419C  38 63 43 54 */	addi r3, r3, lbl_80434354@l
/* 802D7260 002D41A0  38 9E 00 18 */	addi r4, r30, 0x18
/* 802D7264 002D41A4  48 00 4E F9 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 802D7268 002D41A8  38 00 00 00 */	li r0, 0
/* 802D726C 002D41AC  98 1E 00 30 */	stb r0, 0x30(r30)
lbl_802D7270:
/* 802D7270 002D41B0  7F C3 F3 78 */	mr r3, r30
/* 802D7274 002D41B4  38 80 00 00 */	li r4, 0
/* 802D7278 002D41B8  4B FF F0 BD */	bl __dt__10JKRArchiveFv
/* 802D727C 002D41BC  7F E0 07 35 */	extsh. r0, r31
/* 802D7280 002D41C0  40 81 00 0C */	ble lbl_802D728C
/* 802D7284 002D41C4  7F C3 F3 78 */	mr r3, r30
/* 802D7288 002D41C8  4B FF 7A B5 */	bl __dl__FPv
lbl_802D728C:
/* 802D728C 002D41CC  7F C3 F3 78 */	mr r3, r30
/* 802D7290 002D41D0  39 61 00 20 */	addi r11, r1, 0x20
/* 802D7294 002D41D4  48 08 AF 91 */	bl _restgpr_28
/* 802D7298 002D41D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D729C 002D41DC  7C 08 03 A6 */	mtlr r0
/* 802D72A0 002D41E0  38 21 00 20 */	addi r1, r1, 0x20
/* 802D72A4 002D41E4  4E 80 00 20 */	blr 

.global JKRAramArchive_NS_open
JKRAramArchive_NS_open:
/* 802D72A8 002D41E8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802D72AC 002D41EC  7C 08 02 A6 */	mflr r0
/* 802D72B0 002D41F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802D72B4 002D41F4  39 61 00 30 */	addi r11, r1, 0x30
/* 802D72B8 002D41F8  48 08 AF 1D */	bl _savegpr_27
/* 802D72BC 002D41FC  7C 7F 1B 78 */	mr r31, r3
/* 802D72C0 002D4200  7C 9C 23 78 */	mr r28, r4
/* 802D72C4 002D4204  38 00 00 00 */	li r0, 0
/* 802D72C8 002D4208  90 03 00 44 */	stw r0, 0x44(r3)
/* 802D72CC 002D420C  90 03 00 48 */	stw r0, 0x48(r3)
/* 802D72D0 002D4210  90 03 00 4C */	stw r0, 0x4c(r3)
/* 802D72D4 002D4214  90 03 00 54 */	stw r0, 0x54(r3)
/* 802D72D8 002D4218  90 03 00 64 */	stw r0, 0x64(r3)
/* 802D72DC 002D421C  38 60 00 F8 */	li r3, 0xf8
/* 802D72E0 002D4220  80 8D 8D F0 */	lwz r4, lbl_80451370-_SDA_BASE_(r13)
/* 802D72E4 002D4224  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 802D72E8 002D4228  2C 00 00 01 */	cmpwi r0, 1
/* 802D72EC 002D422C  38 A0 FF FC */	li r5, -4
/* 802D72F0 002D4230  40 82 00 08 */	bne lbl_802D72F8
/* 802D72F4 002D4234  38 A0 00 04 */	li r5, 4
lbl_802D72F8:
/* 802D72F8 002D4238  4B FF 79 A1 */	bl __nw__FUlP7JKRHeapi
/* 802D72FC 002D423C  7C 60 1B 79 */	or. r0, r3, r3
/* 802D7300 002D4240  41 82 00 10 */	beq lbl_802D7310
/* 802D7304 002D4244  7F 84 E3 78 */	mr r4, r28
/* 802D7308 002D4248  48 00 23 99 */	bl __ct__10JKRDvdFileFl
/* 802D730C 002D424C  7C 60 1B 78 */	mr r0, r3
lbl_802D7310:
/* 802D7310 002D4250  90 1F 00 68 */	stw r0, 0x68(r31)
/* 802D7314 002D4254  80 1F 00 68 */	lwz r0, 0x68(r31)
/* 802D7318 002D4258  28 00 00 00 */	cmplwi r0, 0
/* 802D731C 002D425C  40 82 00 14 */	bne lbl_802D7330
/* 802D7320 002D4260  38 00 00 00 */	li r0, 0
/* 802D7324 002D4264  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 802D7328 002D4268  38 60 00 00 */	li r3, 0
/* 802D732C 002D426C  48 00 02 9C */	b lbl_802D75C8
lbl_802D7330:
/* 802D7330 002D4270  80 6D 8D F0 */	lwz r3, lbl_80451370-_SDA_BASE_(r13)
/* 802D7334 002D4274  38 80 00 20 */	li r4, 0x20
/* 802D7338 002D4278  38 A0 FF E0 */	li r5, -32
/* 802D733C 002D427C  4B FF 71 99 */	bl alloc__7JKRHeapFUli
/* 802D7340 002D4280  7C 7D 1B 79 */	or. r29, r3, r3
/* 802D7344 002D4284  40 82 00 10 */	bne lbl_802D7354
/* 802D7348 002D4288  38 00 00 00 */	li r0, 0
/* 802D734C 002D428C  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 802D7350 002D4290  48 00 02 28 */	b lbl_802D7578
lbl_802D7354:
/* 802D7354 002D4294  38 00 00 00 */	li r0, 0
/* 802D7358 002D4298  90 01 00 08 */	stw r0, 8(r1)
/* 802D735C 002D429C  7F 83 E3 78 */	mr r3, r28
/* 802D7360 002D42A0  7F A4 EB 78 */	mr r4, r29
/* 802D7364 002D42A4  38 A0 00 01 */	li r5, 1
/* 802D7368 002D42A8  38 C0 00 20 */	li r6, 0x20
/* 802D736C 002D42AC  38 E0 00 00 */	li r7, 0
/* 802D7370 002D42B0  39 00 00 01 */	li r8, 1
/* 802D7374 002D42B4  39 20 00 00 */	li r9, 0
/* 802D7378 002D42B8  39 5F 00 5C */	addi r10, r31, 0x5c
/* 802D737C 002D42BC  48 00 28 D9 */	bl JKRDvdRipper_NS_loadToMainRAM_X1_
/* 802D7380 002D42C0  7F A3 EB 78 */	mr r3, r29
/* 802D7384 002D42C4  38 80 00 20 */	li r4, 0x20
/* 802D7388 002D42C8  48 06 41 F9 */	bl DCInvalidateRange
/* 802D738C 002D42CC  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 802D7390 002D42D0  2C 00 00 01 */	cmpwi r0, 1
/* 802D7394 002D42D4  3B C0 FF E0 */	li r30, -32
/* 802D7398 002D42D8  40 82 00 08 */	bne lbl_802D73A0
/* 802D739C 002D42DC  3B C0 00 20 */	li r30, 0x20
lbl_802D73A0:
/* 802D73A0 002D42E0  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 802D73A4 002D42E4  38 03 00 1F */	addi r0, r3, 0x1f
/* 802D73A8 002D42E8  54 1B 00 34 */	rlwinm r27, r0, 0, 0, 0x1a
/* 802D73AC 002D42EC  7F 63 DB 78 */	mr r3, r27
/* 802D73B0 002D42F0  7F C4 F3 78 */	mr r4, r30
/* 802D73B4 002D42F4  80 BF 00 38 */	lwz r5, 0x38(r31)
/* 802D73B8 002D42F8  4B FF 70 BD */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D73BC 002D42FC  90 7F 00 44 */	stw r3, 0x44(r31)
/* 802D73C0 002D4300  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 802D73C4 002D4304  28 04 00 00 */	cmplwi r4, 0
/* 802D73C8 002D4308  40 82 00 10 */	bne lbl_802D73D8
/* 802D73CC 002D430C  38 00 00 00 */	li r0, 0
/* 802D73D0 002D4310  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 802D73D4 002D4314  48 00 01 A4 */	b lbl_802D7578
lbl_802D73D8:
/* 802D73D8 002D4318  38 00 00 00 */	li r0, 0
/* 802D73DC 002D431C  90 01 00 08 */	stw r0, 8(r1)
/* 802D73E0 002D4320  7F 83 E3 78 */	mr r3, r28
/* 802D73E4 002D4324  38 A0 00 01 */	li r5, 1
/* 802D73E8 002D4328  7F 66 DB 78 */	mr r6, r27
/* 802D73EC 002D432C  38 E0 00 00 */	li r7, 0
/* 802D73F0 002D4330  39 00 00 01 */	li r8, 1
/* 802D73F4 002D4334  39 20 00 20 */	li r9, 0x20
/* 802D73F8 002D4338  39 40 00 00 */	li r10, 0
/* 802D73FC 002D433C  48 00 28 59 */	bl JKRDvdRipper_NS_loadToMainRAM_X1_
/* 802D7400 002D4340  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D7404 002D4344  7F 64 DB 78 */	mr r4, r27
/* 802D7408 002D4348  48 06 41 79 */	bl DCInvalidateRange
/* 802D740C 002D434C  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D7410 002D4350  80 03 00 04 */	lwz r0, 4(r3)
/* 802D7414 002D4354  7C 03 02 14 */	add r0, r3, r0
/* 802D7418 002D4358  90 1F 00 48 */	stw r0, 0x48(r31)
/* 802D741C 002D435C  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D7420 002D4360  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802D7424 002D4364  7C 03 02 14 */	add r0, r3, r0
/* 802D7428 002D4368  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 802D742C 002D436C  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D7430 002D4370  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802D7434 002D4374  7C 03 02 14 */	add r0, r3, r0
/* 802D7438 002D4378  90 1F 00 54 */	stw r0, 0x54(r31)
/* 802D743C 002D437C  38 00 00 00 */	li r0, 0
/* 802D7440 002D4380  90 1F 00 50 */	stw r0, 0x50(r31)
/* 802D7444 002D4384  38 80 00 00 */	li r4, 0
/* 802D7448 002D4388  80 BF 00 4C */	lwz r5, 0x4c(r31)
/* 802D744C 002D438C  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D7450 002D4390  80 03 00 08 */	lwz r0, 8(r3)
/* 802D7454 002D4394  7C 09 03 A6 */	mtctr r0
/* 802D7458 002D4398  28 00 00 00 */	cmplwi r0, 0
/* 802D745C 002D439C  40 81 00 28 */	ble lbl_802D7484
lbl_802D7460:
/* 802D7460 002D43A0  80 05 00 04 */	lwz r0, 4(r5)
/* 802D7464 002D43A4  54 03 46 3E */	srwi r3, r0, 0x18
/* 802D7468 002D43A8  54 00 47 FF */	rlwinm. r0, r0, 8, 0x1f, 0x1f
/* 802D746C 002D43AC  41 82 00 10 */	beq lbl_802D747C
/* 802D7470 002D43B0  54 60 07 7A */	rlwinm r0, r3, 0, 0x1d, 0x1d
/* 802D7474 002D43B4  7C 80 03 78 */	or r0, r4, r0
/* 802D7478 002D43B8  54 04 06 3E */	clrlwi r4, r0, 0x18
lbl_802D747C:
/* 802D747C 002D43BC  38 A5 00 14 */	addi r5, r5, 0x14
/* 802D7480 002D43C0  42 00 FF E0 */	bdnz lbl_802D7460
lbl_802D7484:
/* 802D7484 002D43C4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802D7488 002D43C8  41 82 00 60 */	beq lbl_802D74E8
/* 802D748C 002D43CC  7F C3 F3 78 */	mr r3, r30
/* 802D7490 002D43D0  48 08 DC 41 */	bl func_803650D0
/* 802D7494 002D43D4  7C 64 1B 78 */	mr r4, r3
/* 802D7498 002D43D8  80 BF 00 38 */	lwz r5, 0x38(r31)
/* 802D749C 002D43DC  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D74A0 002D43E0  80 03 00 08 */	lwz r0, 8(r3)
/* 802D74A4 002D43E4  54 03 10 3A */	slwi r3, r0, 2
/* 802D74A8 002D43E8  4B FF 6F CD */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D74AC 002D43EC  90 7F 00 50 */	stw r3, 0x50(r31)
/* 802D74B0 002D43F0  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 802D74B4 002D43F4  28 03 00 00 */	cmplwi r3, 0
/* 802D74B8 002D43F8  40 82 00 1C */	bne lbl_802D74D4
/* 802D74BC 002D43FC  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D74C0 002D4400  38 80 00 00 */	li r4, 0
/* 802D74C4 002D4404  4B FF 70 3D */	bl free__7JKRHeapFPvP7JKRHeap
/* 802D74C8 002D4408  38 00 00 00 */	li r0, 0
/* 802D74CC 002D440C  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 802D74D0 002D4410  48 00 00 A8 */	b lbl_802D7578
lbl_802D74D4:
/* 802D74D4 002D4414  38 80 00 00 */	li r4, 0
/* 802D74D8 002D4418  80 BF 00 44 */	lwz r5, 0x44(r31)
/* 802D74DC 002D441C  80 05 00 08 */	lwz r0, 8(r5)
/* 802D74E0 002D4420  54 05 10 3A */	slwi r5, r0, 2
/* 802D74E4 002D4424  4B D2 BF 75 */	bl func_80003458
lbl_802D74E8:
/* 802D74E8 002D4428  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 802D74EC 002D442C  38 03 00 1F */	addi r0, r3, 0x1f
/* 802D74F0 002D4430  54 04 00 34 */	rlwinm r4, r0, 0, 0, 0x1a
/* 802D74F4 002D4434  80 6D 8E 48 */	lwz r3, lbl_804513C8-_SDA_BASE_(r13)
/* 802D74F8 002D4438  80 63 00 94 */	lwz r3, 0x94(r3)
/* 802D74FC 002D443C  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 802D7500 002D4440  20 A0 00 01 */	subfic r5, r0, 1
/* 802D7504 002D4444  30 05 FF FF */	addic r0, r5, -1
/* 802D7508 002D4448  7C A0 29 10 */	subfe r5, r0, r5
/* 802D750C 002D444C  4B FF BA B1 */	bl JKRAramHeap_NS_alloc
/* 802D7510 002D4450  90 7F 00 64 */	stw r3, 0x64(r31)
/* 802D7514 002D4454  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 802D7518 002D4458  28 03 00 00 */	cmplwi r3, 0
/* 802D751C 002D445C  40 82 00 38 */	bne lbl_802D7554
/* 802D7520 002D4460  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D7524 002D4464  28 03 00 00 */	cmplwi r3, 0
/* 802D7528 002D4468  41 82 00 0C */	beq lbl_802D7534
/* 802D752C 002D446C  38 80 00 00 */	li r4, 0
/* 802D7530 002D4470  4B FF 6F D1 */	bl free__7JKRHeapFPvP7JKRHeap
lbl_802D7534:
/* 802D7534 002D4474  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 802D7538 002D4478  28 03 00 00 */	cmplwi r3, 0
/* 802D753C 002D447C  41 82 00 0C */	beq lbl_802D7548
/* 802D7540 002D4480  38 80 00 00 */	li r4, 0
/* 802D7544 002D4484  4B FF 6F BD */	bl free__7JKRHeapFPvP7JKRHeap
lbl_802D7548:
/* 802D7548 002D4488  38 00 00 00 */	li r0, 0
/* 802D754C 002D448C  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 802D7550 002D4490  48 00 00 28 */	b lbl_802D7578
lbl_802D7554:
/* 802D7554 002D4494  80 83 00 14 */	lwz r4, 0x14(r3)
/* 802D7558 002D4498  7F 83 E3 78 */	mr r3, r28
/* 802D755C 002D449C  38 A0 00 01 */	li r5, 1
/* 802D7560 002D44A0  80 DD 00 08 */	lwz r6, 8(r29)
/* 802D7564 002D44A4  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 802D7568 002D44A8  7C C6 02 14 */	add r6, r6, r0
/* 802D756C 002D44AC  38 E0 00 00 */	li r7, 0
/* 802D7570 002D44B0  39 00 00 00 */	li r8, 0
/* 802D7574 002D44B4  48 00 33 01 */	bl JKRDvdAramRipper_NS_loadToAram
lbl_802D7578:
/* 802D7578 002D44B8  28 1D 00 00 */	cmplwi r29, 0
/* 802D757C 002D44BC  41 82 00 10 */	beq lbl_802D758C
/* 802D7580 002D44C0  80 6D 8D F0 */	lwz r3, lbl_80451370-_SDA_BASE_(r13)
/* 802D7584 002D44C4  7F A4 EB 78 */	mr r4, r29
/* 802D7588 002D44C8  4B FF 6F C1 */	bl free__7JKRHeapFPv
lbl_802D758C:
/* 802D758C 002D44CC  88 1F 00 3C */	lbz r0, 0x3c(r31)
/* 802D7590 002D44D0  28 00 00 00 */	cmplwi r0, 0
/* 802D7594 002D44D4  40 82 00 30 */	bne lbl_802D75C4
/* 802D7598 002D44D8  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 802D759C 002D44DC  28 03 00 00 */	cmplwi r3, 0
/* 802D75A0 002D44E0  41 82 00 1C */	beq lbl_802D75BC
/* 802D75A4 002D44E4  41 82 00 18 */	beq lbl_802D75BC
/* 802D75A8 002D44E8  38 80 00 01 */	li r4, 1
/* 802D75AC 002D44EC  81 83 00 00 */	lwz r12, 0(r3)
/* 802D75B0 002D44F0  81 8C 00 08 */	lwz r12, 8(r12)
/* 802D75B4 002D44F4  7D 89 03 A6 */	mtctr r12
/* 802D75B8 002D44F8  4E 80 04 21 */	bctrl 
lbl_802D75BC:
/* 802D75BC 002D44FC  38 60 00 00 */	li r3, 0
/* 802D75C0 002D4500  48 00 00 08 */	b lbl_802D75C8
lbl_802D75C4:
/* 802D75C4 002D4504  38 60 00 01 */	li r3, 1
lbl_802D75C8:
/* 802D75C8 002D4508  39 61 00 30 */	addi r11, r1, 0x30
/* 802D75CC 002D450C  48 08 AC 55 */	bl _restgpr_27
/* 802D75D0 002D4510  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802D75D4 002D4514  7C 08 03 A6 */	mtlr r0
/* 802D75D8 002D4518  38 21 00 30 */	addi r1, r1, 0x30
/* 802D75DC 002D451C  4E 80 00 20 */	blr 
/* 802D75E0 002D4520  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D75E4 002D4524  7C 08 02 A6 */	mflr r0
/* 802D75E8 002D4528  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D75EC 002D452C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D75F0 002D4530  48 08 AB E9 */	bl _savegpr_28
/* 802D75F4 002D4534  7C 7C 1B 78 */	mr r28, r3
/* 802D75F8 002D4538  7C 9D 23 78 */	mr r29, r4
/* 802D75FC 002D453C  7C BE 2B 79 */	or. r30, r5, r5
/* 802D7600 002D4540  40 82 00 08 */	bne lbl_802D7608
/* 802D7604 002D4544  3B C1 00 0C */	addi r30, r1, 0xc
lbl_802D7608:
/* 802D7608 002D4548  80 1D 00 04 */	lwz r0, 4(r29)
/* 802D760C 002D454C  54 03 46 3E */	srwi r3, r0, 0x18
/* 802D7610 002D4550  54 00 47 7B */	rlwinm. r0, r0, 8, 0x1d, 0x1d
/* 802D7614 002D4554  40 82 00 0C */	bne lbl_802D7620
/* 802D7618 002D4558  3B E0 00 00 */	li r31, 0
/* 802D761C 002D455C  48 00 00 18 */	b lbl_802D7634
lbl_802D7620:
/* 802D7620 002D4560  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 802D7624 002D4564  41 82 00 0C */	beq lbl_802D7630
/* 802D7628 002D4568  3B E0 00 02 */	li r31, 2
/* 802D762C 002D456C  48 00 00 08 */	b lbl_802D7634
lbl_802D7630:
/* 802D7630 002D4570  3B E0 00 01 */	li r31, 1
lbl_802D7634:
/* 802D7634 002D4574  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 802D7638 002D4578  28 00 00 00 */	cmplwi r0, 0
/* 802D763C 002D457C  40 82 00 6C */	bne lbl_802D76A8
/* 802D7640 002D4580  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 802D7644 002D4584  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802D7648 002D4588  80 1D 00 08 */	lwz r0, 8(r29)
/* 802D764C 002D458C  7C 60 1A 14 */	add r3, r0, r3
/* 802D7650 002D4590  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 802D7654 002D4594  80 BC 00 38 */	lwz r5, 0x38(r28)
/* 802D7658 002D4598  7F E6 FB 78 */	mr r6, r31
/* 802D765C 002D459C  38 E1 00 08 */	addi r7, r1, 8
/* 802D7660 002D45A0  48 00 02 B5 */	bl JKRAramArchive_NS_fetchResource_subroutine_X1_
/* 802D7664 002D45A4  90 7E 00 00 */	stw r3, 0(r30)
/* 802D7668 002D45A8  28 03 00 00 */	cmplwi r3, 0
/* 802D766C 002D45AC  40 82 00 0C */	bne lbl_802D7678
/* 802D7670 002D45B0  38 60 00 00 */	li r3, 0
/* 802D7674 002D45B4  48 00 00 68 */	b lbl_802D76DC
lbl_802D7678:
/* 802D7678 002D45B8  80 01 00 08 */	lwz r0, 8(r1)
/* 802D767C 002D45BC  90 1D 00 10 */	stw r0, 0x10(r29)
/* 802D7680 002D45C0  2C 1F 00 02 */	cmpwi r31, 2
/* 802D7684 002D45C4  40 82 00 54 */	bne lbl_802D76D8
/* 802D7688 002D45C8  7F 83 E3 78 */	mr r3, r28
/* 802D768C 002D45CC  7F A4 EB 78 */	mr r4, r29
/* 802D7690 002D45D0  80 BE 00 00 */	lwz r5, 0(r30)
/* 802D7694 002D45D4  81 9C 00 00 */	lwz r12, 0(r28)
/* 802D7698 002D45D8  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 802D769C 002D45DC  7D 89 03 A6 */	mtctr r12
/* 802D76A0 002D45E0  4E 80 04 21 */	bctrl 
/* 802D76A4 002D45E4  48 00 00 34 */	b lbl_802D76D8
lbl_802D76A8:
/* 802D76A8 002D45E8  2C 1F 00 02 */	cmpwi r31, 2
/* 802D76AC 002D45EC  40 82 00 24 */	bne lbl_802D76D0
/* 802D76B0 002D45F0  7F 83 E3 78 */	mr r3, r28
/* 802D76B4 002D45F4  7F A4 EB 78 */	mr r4, r29
/* 802D76B8 002D45F8  81 9C 00 00 */	lwz r12, 0(r28)
/* 802D76BC 002D45FC  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 802D76C0 002D4600  7D 89 03 A6 */	mtctr r12
/* 802D76C4 002D4604  4E 80 04 21 */	bctrl 
/* 802D76C8 002D4608  90 7E 00 00 */	stw r3, 0(r30)
/* 802D76CC 002D460C  48 00 00 0C */	b lbl_802D76D8
lbl_802D76D0:
/* 802D76D0 002D4610  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 802D76D4 002D4614  90 1E 00 00 */	stw r0, 0(r30)
lbl_802D76D8:
/* 802D76D8 002D4618  80 7D 00 10 */	lwz r3, 0x10(r29)
lbl_802D76DC:
/* 802D76DC 002D461C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D76E0 002D4620  48 08 AB 45 */	bl _restgpr_28
/* 802D76E4 002D4624  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D76E8 002D4628  7C 08 03 A6 */	mtlr r0
/* 802D76EC 002D462C  38 21 00 20 */	addi r1, r1, 0x20
/* 802D76F0 002D4630  4E 80 00 20 */	blr 
/* 802D76F4 002D4634  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D76F8 002D4638  7C 08 02 A6 */	mflr r0
/* 802D76FC 002D463C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D7700 002D4640  39 61 00 20 */	addi r11, r1, 0x20
/* 802D7704 002D4644  48 08 AA D1 */	bl _savegpr_27
/* 802D7708 002D4648  7C 9B 23 78 */	mr r27, r4
/* 802D770C 002D464C  7C BC 2B 78 */	mr r28, r5
/* 802D7710 002D4650  7C DD 33 78 */	mr r29, r6
/* 802D7714 002D4654  7C FE 3B 78 */	mr r30, r7
/* 802D7718 002D4658  83 E6 00 0C */	lwz r31, 0xc(r6)
/* 802D771C 002D465C  7C 1F E0 40 */	cmplw r31, r28
/* 802D7720 002D4660  40 81 00 08 */	ble lbl_802D7728
/* 802D7724 002D4664  7F 9F E3 78 */	mr r31, r28
lbl_802D7728:
/* 802D7728 002D4668  80 1D 00 04 */	lwz r0, 4(r29)
/* 802D772C 002D466C  54 04 46 3E */	srwi r4, r0, 0x18
/* 802D7730 002D4670  54 00 47 7B */	rlwinm. r0, r0, 8, 0x1d, 0x1d
/* 802D7734 002D4674  40 82 00 0C */	bne lbl_802D7740
/* 802D7738 002D4678  38 E0 00 00 */	li r7, 0
/* 802D773C 002D467C  48 00 00 18 */	b lbl_802D7754
lbl_802D7740:
/* 802D7740 002D4680  54 80 06 31 */	rlwinm. r0, r4, 0, 0x18, 0x18
/* 802D7744 002D4684  41 82 00 0C */	beq lbl_802D7750
/* 802D7748 002D4688  38 E0 00 02 */	li r7, 2
/* 802D774C 002D468C  48 00 00 08 */	b lbl_802D7754
lbl_802D7750:
/* 802D7750 002D4690  38 E0 00 01 */	li r7, 1
lbl_802D7754:
/* 802D7754 002D4694  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 802D7758 002D4698  28 00 00 00 */	cmplwi r0, 0
/* 802D775C 002D469C  40 82 00 30 */	bne lbl_802D778C
/* 802D7760 002D46A0  57 9C 00 34 */	rlwinm r28, r28, 0, 0, 0x1a
/* 802D7764 002D46A4  80 63 00 64 */	lwz r3, 0x64(r3)
/* 802D7768 002D46A8  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802D776C 002D46AC  80 1D 00 08 */	lwz r0, 8(r29)
/* 802D7770 002D46B0  7C 60 1A 14 */	add r3, r0, r3
/* 802D7774 002D46B4  7F E4 FB 78 */	mr r4, r31
/* 802D7778 002D46B8  7F 65 DB 78 */	mr r5, r27
/* 802D777C 002D46BC  7F 86 E3 78 */	mr r6, r28
/* 802D7780 002D46C0  48 00 00 D9 */	bl JKRAramArchive_NS_fetchResource_subroutine
/* 802D7784 002D46C4  7C 7F 1B 78 */	mr r31, r3
/* 802D7788 002D46C8  48 00 00 48 */	b lbl_802D77D0
lbl_802D778C:
/* 802D778C 002D46CC  2C 07 00 02 */	cmpwi r7, 2
/* 802D7790 002D46D0  40 82 00 24 */	bne lbl_802D77B4
/* 802D7794 002D46D4  7F A4 EB 78 */	mr r4, r29
/* 802D7798 002D46D8  81 83 00 00 */	lwz r12, 0(r3)
/* 802D779C 002D46DC  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 802D77A0 002D46E0  7D 89 03 A6 */	mtctr r12
/* 802D77A4 002D46E4  4E 80 04 21 */	bctrl 
/* 802D77A8 002D46E8  28 03 00 00 */	cmplwi r3, 0
/* 802D77AC 002D46EC  41 82 00 08 */	beq lbl_802D77B4
/* 802D77B0 002D46F0  7C 7F 1B 78 */	mr r31, r3
lbl_802D77B4:
/* 802D77B4 002D46F4  7C 1F E0 40 */	cmplw r31, r28
/* 802D77B8 002D46F8  40 81 00 08 */	ble lbl_802D77C0
/* 802D77BC 002D46FC  7F 9F E3 78 */	mr r31, r28
lbl_802D77C0:
/* 802D77C0 002D4700  7F 63 DB 78 */	mr r3, r27
/* 802D77C4 002D4704  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 802D77C8 002D4708  7F E5 FB 78 */	mr r5, r31
/* 802D77CC 002D470C  4B FF 73 4D */	bl copyMemory__7JKRHeapFPvPvUl
lbl_802D77D0:
/* 802D77D0 002D4710  28 1E 00 00 */	cmplwi r30, 0
/* 802D77D4 002D4714  41 82 00 08 */	beq lbl_802D77DC
/* 802D77D8 002D4718  93 FE 00 00 */	stw r31, 0(r30)
lbl_802D77DC:
/* 802D77DC 002D471C  7F 63 DB 78 */	mr r3, r27
/* 802D77E0 002D4720  39 61 00 20 */	addi r11, r1, 0x20
/* 802D77E4 002D4724  48 08 AA 3D */	bl _restgpr_27
/* 802D77E8 002D4728  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D77EC 002D472C  7C 08 03 A6 */	mtlr r0
/* 802D77F0 002D4730  38 21 00 20 */	addi r1, r1, 0x20
/* 802D77F4 002D4734  4E 80 00 20 */	blr 

.global JKRAramArchive_NS_getAramAddress_Entry
JKRAramArchive_NS_getAramAddress_Entry:
/* 802D77F8 002D4738  28 04 00 00 */	cmplwi r4, 0
/* 802D77FC 002D473C  40 82 00 0C */	bne lbl_802D7808
/* 802D7800 002D4740  38 60 00 00 */	li r3, 0
/* 802D7804 002D4744  4E 80 00 20 */	blr 
lbl_802D7808:
/* 802D7808 002D4748  80 63 00 64 */	lwz r3, 0x64(r3)
/* 802D780C 002D474C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802D7810 002D4750  80 04 00 08 */	lwz r0, 8(r4)
/* 802D7814 002D4754  7C 60 1A 14 */	add r3, r0, r3
/* 802D7818 002D4758  4E 80 00 20 */	blr 

.global JKRAramArchive_NS_getAramAddress
JKRAramArchive_NS_getAramAddress:
/* 802D781C 002D475C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D7820 002D4760  7C 08 02 A6 */	mflr r0
/* 802D7824 002D4764  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D7828 002D4768  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D782C 002D476C  7C 7F 1B 78 */	mr r31, r3
/* 802D7830 002D4770  38 A0 00 00 */	li r5, 0
/* 802D7834 002D4774  4B FF ED 71 */	bl findFsResource__10JKRArchiveCFPCcUl
/* 802D7838 002D4778  7C 64 1B 78 */	mr r4, r3
/* 802D783C 002D477C  7F E3 FB 78 */	mr r3, r31
/* 802D7840 002D4780  4B FF FF B9 */	bl JKRAramArchive_NS_getAramAddress_Entry
/* 802D7844 002D4784  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D7848 002D4788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D784C 002D478C  7C 08 03 A6 */	mtlr r0
/* 802D7850 002D4790  38 21 00 10 */	addi r1, r1, 0x10
/* 802D7854 002D4794  4E 80 00 20 */	blr 

.global JKRAramArchive_NS_fetchResource_subroutine
JKRAramArchive_NS_fetchResource_subroutine:
/* 802D7858 002D4798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D785C 002D479C  7C 08 02 A6 */	mflr r0
/* 802D7860 002D47A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D7864 002D47A4  38 04 00 1F */	addi r0, r4, 0x1f
/* 802D7868 002D47A8  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 802D786C 002D47AC  54 C8 00 34 */	rlwinm r8, r6, 0, 0, 0x1a
/* 802D7870 002D47B0  2C 07 00 00 */	cmpwi r7, 0
/* 802D7874 002D47B4  41 82 00 14 */	beq lbl_802D7888
/* 802D7878 002D47B8  41 80 00 6C */	blt lbl_802D78E4
/* 802D787C 002D47BC  2C 07 00 03 */	cmpwi r7, 3
/* 802D7880 002D47C0  40 80 00 64 */	bge lbl_802D78E4
/* 802D7884 002D47C4  48 00 00 38 */	b lbl_802D78BC
lbl_802D7888:
/* 802D7888 002D47C8  7C 00 40 40 */	cmplw r0, r8
/* 802D788C 002D47CC  40 81 00 08 */	ble lbl_802D7894
/* 802D7890 002D47D0  7D 00 43 78 */	mr r0, r8
lbl_802D7894:
/* 802D7894 002D47D4  7C A4 2B 78 */	mr r4, r5
/* 802D7898 002D47D8  7C 05 03 78 */	mr r5, r0
/* 802D789C 002D47DC  38 C0 00 00 */	li r6, 0
/* 802D78A0 002D47E0  7D 07 43 78 */	mr r7, r8
/* 802D78A4 002D47E4  39 00 00 00 */	li r8, 0
/* 802D78A8 002D47E8  39 20 FF FF */	li r9, -1
/* 802D78AC 002D47EC  39 41 00 08 */	addi r10, r1, 8
/* 802D78B0 002D47F0  4B FF AD 05 */	bl JKRAram_NS_aramToMainRam
/* 802D78B4 002D47F4  80 61 00 08 */	lwz r3, 8(r1)
/* 802D78B8 002D47F8  48 00 00 4C */	b lbl_802D7904
lbl_802D78BC:
/* 802D78BC 002D47FC  7C A4 2B 78 */	mr r4, r5
/* 802D78C0 002D4800  7C 05 03 78 */	mr r5, r0
/* 802D78C4 002D4804  38 C0 00 01 */	li r6, 1
/* 802D78C8 002D4808  7D 07 43 78 */	mr r7, r8
/* 802D78CC 002D480C  39 00 00 00 */	li r8, 0
/* 802D78D0 002D4810  39 20 FF FF */	li r9, -1
/* 802D78D4 002D4814  39 41 00 08 */	addi r10, r1, 8
/* 802D78D8 002D4818  4B FF AC DD */	bl JKRAram_NS_aramToMainRam
/* 802D78DC 002D481C  80 61 00 08 */	lwz r3, 8(r1)
/* 802D78E0 002D4820  48 00 00 24 */	b lbl_802D7904
lbl_802D78E4:
/* 802D78E4 002D4824  3C 60 80 3A */	lis r3, lbl_8039D188@ha
/* 802D78E8 002D4828  38 63 D1 88 */	addi r3, r3, lbl_8039D188@l
/* 802D78EC 002D482C  38 80 02 8F */	li r4, 0x28f
/* 802D78F0 002D4830  38 A3 00 13 */	addi r5, r3, 0x13
/* 802D78F4 002D4834  38 C3 00 16 */	addi r6, r3, 0x16
/* 802D78F8 002D4838  4C C6 31 82 */	crclr 6
/* 802D78FC 002D483C  48 00 A9 01 */	bl JUTException_NS_panic_f
/* 802D7900 002D4840  38 60 00 00 */	li r3, 0
lbl_802D7904:
/* 802D7904 002D4844  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D7908 002D4848  7C 08 03 A6 */	mtlr r0
/* 802D790C 002D484C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D7910 002D4850  4E 80 00 20 */	blr 

.global JKRAramArchive_NS_fetchResource_subroutine_X1_
JKRAramArchive_NS_fetchResource_subroutine_X1_:
/* 802D7914 002D4854  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802D7918 002D4858  7C 08 02 A6 */	mflr r0
/* 802D791C 002D485C  90 01 00 74 */	stw r0, 0x74(r1)
/* 802D7920 002D4860  39 61 00 70 */	addi r11, r1, 0x70
/* 802D7924 002D4864  48 08 A8 AD */	bl _savegpr_26
/* 802D7928 002D4868  7C 7C 1B 78 */	mr r28, r3
/* 802D792C 002D486C  7C 9A 23 78 */	mr r26, r4
/* 802D7930 002D4870  7C BD 2B 78 */	mr r29, r5
/* 802D7934 002D4874  7C FE 3B 78 */	mr r30, r7
/* 802D7938 002D4878  38 1A 00 1F */	addi r0, r26, 0x1f
/* 802D793C 002D487C  54 1F 00 34 */	rlwinm r31, r0, 0, 0, 0x1a
/* 802D7940 002D4880  2C 06 00 00 */	cmpwi r6, 0
/* 802D7944 002D4884  41 82 00 14 */	beq lbl_802D7958
/* 802D7948 002D4888  41 80 00 E4 */	blt lbl_802D7A2C
/* 802D794C 002D488C  2C 06 00 03 */	cmpwi r6, 3
/* 802D7950 002D4890  40 80 00 DC */	bge lbl_802D7A2C
/* 802D7954 002D4894  48 00 00 44 */	b lbl_802D7998
lbl_802D7958:
/* 802D7958 002D4898  7F E3 FB 78 */	mr r3, r31
/* 802D795C 002D489C  38 80 00 20 */	li r4, 0x20
/* 802D7960 002D48A0  4B FF 6B 15 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D7964 002D48A4  7C 7B 1B 78 */	mr r27, r3
/* 802D7968 002D48A8  7F 83 E3 78 */	mr r3, r28
/* 802D796C 002D48AC  7F 64 DB 78 */	mr r4, r27
/* 802D7970 002D48B0  7F E5 FB 78 */	mr r5, r31
/* 802D7974 002D48B4  38 C0 00 00 */	li r6, 0
/* 802D7978 002D48B8  7F E7 FB 78 */	mr r7, r31
/* 802D797C 002D48BC  39 00 00 00 */	li r8, 0
/* 802D7980 002D48C0  39 20 FF FF */	li r9, -1
/* 802D7984 002D48C4  39 40 00 00 */	li r10, 0
/* 802D7988 002D48C8  4B FF AC 2D */	bl JKRAram_NS_aramToMainRam
/* 802D798C 002D48CC  93 7E 00 00 */	stw r27, 0(r30)
/* 802D7990 002D48D0  7F 43 D3 78 */	mr r3, r26
/* 802D7994 002D48D4  48 00 00 B8 */	b lbl_802D7A4C
lbl_802D7998:
/* 802D7998 002D48D8  38 01 00 2B */	addi r0, r1, 0x2b
/* 802D799C 002D48DC  54 1B 00 34 */	rlwinm r27, r0, 0, 0, 0x1a
/* 802D79A0 002D48E0  7F 64 DB 78 */	mr r4, r27
/* 802D79A4 002D48E4  38 A0 00 20 */	li r5, 0x20
/* 802D79A8 002D48E8  38 C0 00 00 */	li r6, 0
/* 802D79AC 002D48EC  38 E0 00 00 */	li r7, 0
/* 802D79B0 002D48F0  39 00 00 00 */	li r8, 0
/* 802D79B4 002D48F4  39 20 FF FF */	li r9, -1
/* 802D79B8 002D48F8  39 40 00 00 */	li r10, 0
/* 802D79BC 002D48FC  4B FF AB F9 */	bl JKRAram_NS_aramToMainRam
/* 802D79C0 002D4900  88 BB 00 07 */	lbz r5, 7(r27)
/* 802D79C4 002D4904  88 9B 00 06 */	lbz r4, 6(r27)
/* 802D79C8 002D4908  88 7B 00 04 */	lbz r3, 4(r27)
/* 802D79CC 002D490C  88 1B 00 05 */	lbz r0, 5(r27)
/* 802D79D0 002D4910  54 00 80 1E */	slwi r0, r0, 0x10
/* 802D79D4 002D4914  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 802D79D8 002D4918  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 802D79DC 002D491C  7C A3 03 78 */	or r3, r5, r0
/* 802D79E0 002D4920  38 03 00 1F */	addi r0, r3, 0x1f
/* 802D79E4 002D4924  54 1A 00 34 */	rlwinm r26, r0, 0, 0, 0x1a
/* 802D79E8 002D4928  7F 43 D3 78 */	mr r3, r26
/* 802D79EC 002D492C  38 80 00 20 */	li r4, 0x20
/* 802D79F0 002D4930  7F A5 EB 78 */	mr r5, r29
/* 802D79F4 002D4934  4B FF 6A 81 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D79F8 002D4938  7C 7B 1B 78 */	mr r27, r3
/* 802D79FC 002D493C  7F 83 E3 78 */	mr r3, r28
/* 802D7A00 002D4940  7F 64 DB 78 */	mr r4, r27
/* 802D7A04 002D4944  7F E5 FB 78 */	mr r5, r31
/* 802D7A08 002D4948  38 C0 00 01 */	li r6, 1
/* 802D7A0C 002D494C  7F 47 D3 78 */	mr r7, r26
/* 802D7A10 002D4950  7F A8 EB 78 */	mr r8, r29
/* 802D7A14 002D4954  39 20 FF FF */	li r9, -1
/* 802D7A18 002D4958  39 41 00 08 */	addi r10, r1, 8
/* 802D7A1C 002D495C  4B FF AB 99 */	bl JKRAram_NS_aramToMainRam
/* 802D7A20 002D4960  93 7E 00 00 */	stw r27, 0(r30)
/* 802D7A24 002D4964  80 61 00 08 */	lwz r3, 8(r1)
/* 802D7A28 002D4968  48 00 00 24 */	b lbl_802D7A4C
lbl_802D7A2C:
/* 802D7A2C 002D496C  3C 60 80 3A */	lis r3, lbl_8039D188@ha
/* 802D7A30 002D4970  38 63 D1 88 */	addi r3, r3, lbl_8039D188@l
/* 802D7A34 002D4974  38 80 02 C9 */	li r4, 0x2c9
/* 802D7A38 002D4978  38 A3 00 13 */	addi r5, r3, 0x13
/* 802D7A3C 002D497C  38 C3 00 16 */	addi r6, r3, 0x16
/* 802D7A40 002D4980  4C C6 31 82 */	crclr 6
/* 802D7A44 002D4984  48 00 A7 B9 */	bl JUTException_NS_panic_f
/* 802D7A48 002D4988  38 60 00 00 */	li r3, 0
lbl_802D7A4C:
/* 802D7A4C 002D498C  39 61 00 70 */	addi r11, r1, 0x70
/* 802D7A50 002D4990  48 08 A7 CD */	bl _restgpr_26
/* 802D7A54 002D4994  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802D7A58 002D4998  7C 08 03 A6 */	mtlr r0
/* 802D7A5C 002D499C  38 21 00 70 */	addi r1, r1, 0x70
/* 802D7A60 002D49A0  4E 80 00 20 */	blr 
/* 802D7A64 002D49A4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802D7A68 002D49A8  7C 08 02 A6 */	mflr r0
/* 802D7A6C 002D49AC  90 01 00 64 */	stw r0, 0x64(r1)
/* 802D7A70 002D49B0  39 61 00 60 */	addi r11, r1, 0x60
/* 802D7A74 002D49B4  48 08 A7 69 */	bl _savegpr_29
/* 802D7A78 002D49B8  7C 7F 1B 78 */	mr r31, r3
/* 802D7A7C 002D49BC  7C 9E 23 78 */	mr r30, r4
/* 802D7A80 002D49C0  80 03 00 50 */	lwz r0, 0x50(r3)
/* 802D7A84 002D49C4  28 00 00 00 */	cmplwi r0, 0
/* 802D7A88 002D49C8  40 82 00 18 */	bne lbl_802D7AA0
/* 802D7A8C 002D49CC  81 83 00 00 */	lwz r12, 0(r3)
/* 802D7A90 002D49D0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802D7A94 002D49D4  7D 89 03 A6 */	mtctr r12
/* 802D7A98 002D49D8  4E 80 04 21 */	bctrl 
/* 802D7A9C 002D49DC  48 00 00 DC */	b lbl_802D7B78
lbl_802D7AA0:
/* 802D7AA0 002D49E0  4B FF EC 95 */	bl findPtrResource__10JKRArchiveCFPCv
/* 802D7AA4 002D49E4  7C 7D 1B 79 */	or. r29, r3, r3
/* 802D7AA8 002D49E8  40 82 00 0C */	bne lbl_802D7AB4
/* 802D7AAC 002D49EC  38 60 FF FF */	li r3, -1
/* 802D7AB0 002D49F0  48 00 00 C8 */	b lbl_802D7B78
lbl_802D7AB4:
/* 802D7AB4 002D49F4  80 1D 00 04 */	lwz r0, 4(r29)
/* 802D7AB8 002D49F8  54 00 47 7B */	rlwinm. r0, r0, 8, 0x1d, 0x1d
/* 802D7ABC 002D49FC  40 82 00 20 */	bne lbl_802D7ADC
/* 802D7AC0 002D4A00  7F E3 FB 78 */	mr r3, r31
/* 802D7AC4 002D4A04  7F C4 F3 78 */	mr r4, r30
/* 802D7AC8 002D4A08  81 9F 00 00 */	lwz r12, 0(r31)
/* 802D7ACC 002D4A0C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802D7AD0 002D4A10  7D 89 03 A6 */	mtctr r12
/* 802D7AD4 002D4A14  4E 80 04 21 */	bctrl 
/* 802D7AD8 002D4A18  48 00 00 A0 */	b lbl_802D7B78
lbl_802D7ADC:
/* 802D7ADC 002D4A1C  7F E3 FB 78 */	mr r3, r31
/* 802D7AE0 002D4A20  7F A4 EB 78 */	mr r4, r29
/* 802D7AE4 002D4A24  81 9F 00 00 */	lwz r12, 0(r31)
/* 802D7AE8 002D4A28  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 802D7AEC 002D4A2C  7D 89 03 A6 */	mtctr r12
/* 802D7AF0 002D4A30  4E 80 04 21 */	bctrl 
/* 802D7AF4 002D4A34  28 03 00 00 */	cmplwi r3, 0
/* 802D7AF8 002D4A38  41 82 00 08 */	beq lbl_802D7B00
/* 802D7AFC 002D4A3C  48 00 00 7C */	b lbl_802D7B78
lbl_802D7B00:
/* 802D7B00 002D4A40  38 01 00 27 */	addi r0, r1, 0x27
/* 802D7B04 002D4A44  54 1E 00 34 */	rlwinm r30, r0, 0, 0, 0x1a
/* 802D7B08 002D4A48  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 802D7B0C 002D4A4C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802D7B10 002D4A50  80 1D 00 08 */	lwz r0, 8(r29)
/* 802D7B14 002D4A54  7C 60 1A 14 */	add r3, r0, r3
/* 802D7B18 002D4A58  7F C4 F3 78 */	mr r4, r30
/* 802D7B1C 002D4A5C  38 A0 00 20 */	li r5, 0x20
/* 802D7B20 002D4A60  38 C0 00 00 */	li r6, 0
/* 802D7B24 002D4A64  38 E0 00 00 */	li r7, 0
/* 802D7B28 002D4A68  39 00 00 00 */	li r8, 0
/* 802D7B2C 002D4A6C  39 20 FF FF */	li r9, -1
/* 802D7B30 002D4A70  39 40 00 00 */	li r10, 0
/* 802D7B34 002D4A74  4B FF AA 81 */	bl JKRAram_NS_aramToMainRam
/* 802D7B38 002D4A78  88 BE 00 07 */	lbz r5, 7(r30)
/* 802D7B3C 002D4A7C  88 9E 00 06 */	lbz r4, 6(r30)
/* 802D7B40 002D4A80  88 7E 00 04 */	lbz r3, 4(r30)
/* 802D7B44 002D4A84  88 1E 00 05 */	lbz r0, 5(r30)
/* 802D7B48 002D4A88  54 00 80 1E */	slwi r0, r0, 0x10
/* 802D7B4C 002D4A8C  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 802D7B50 002D4A90  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 802D7B54 002D4A94  7C BE 03 78 */	or r30, r5, r0
/* 802D7B58 002D4A98  7F E3 FB 78 */	mr r3, r31
/* 802D7B5C 002D4A9C  7F A4 EB 78 */	mr r4, r29
/* 802D7B60 002D4AA0  7F C5 F3 78 */	mr r5, r30
/* 802D7B64 002D4AA4  81 9F 00 00 */	lwz r12, 0(r31)
/* 802D7B68 002D4AA8  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 802D7B6C 002D4AAC  7D 89 03 A6 */	mtctr r12
/* 802D7B70 002D4AB0  4E 80 04 21 */	bctrl 
/* 802D7B74 002D4AB4  7F C3 F3 78 */	mr r3, r30
lbl_802D7B78:
/* 802D7B78 002D4AB8  39 61 00 60 */	addi r11, r1, 0x60
/* 802D7B7C 002D4ABC  48 08 A6 AD */	bl _restgpr_29
/* 802D7B80 002D4AC0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802D7B84 002D4AC4  7C 08 03 A6 */	mtlr r0
/* 802D7B88 002D4AC8  38 21 00 60 */	addi r1, r1, 0x60
/* 802D7B8C 002D4ACC  4E 80 00 20 */	blr 
/* 802D7B90 002D4AD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D7B94 002D4AD4  7C 08 02 A6 */	mflr r0
/* 802D7B98 002D4AD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D7B9C 002D4ADC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D7BA0 002D4AE0  93 C1 00 08 */	stw r30, 8(r1)
/* 802D7BA4 002D4AE4  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D7BA8 002D4AE8  7C 9F 23 78 */	mr r31, r4
/* 802D7BAC 002D4AEC  41 82 00 28 */	beq lbl_802D7BD4
/* 802D7BB0 002D4AF0  3C 80 80 3D */	lis r4, lbl_803CC328@ha
/* 802D7BB4 002D4AF4  38 04 C3 28 */	addi r0, r4, lbl_803CC328@l
/* 802D7BB8 002D4AF8  90 1E 00 00 */	stw r0, 0(r30)
/* 802D7BBC 002D4AFC  38 80 00 00 */	li r4, 0
/* 802D7BC0 002D4B00  4B FF 99 25 */	bl __dt__11JKRDisposerFv
/* 802D7BC4 002D4B04  7F E0 07 35 */	extsh. r0, r31
/* 802D7BC8 002D4B08  40 81 00 0C */	ble lbl_802D7BD4
/* 802D7BCC 002D4B0C  7F C3 F3 78 */	mr r3, r30
/* 802D7BD0 002D4B10  4B FF 71 6D */	bl __dl__FPv
lbl_802D7BD4:
/* 802D7BD4 002D4B14  7F C3 F3 78 */	mr r3, r30
/* 802D7BD8 002D4B18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D7BDC 002D4B1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D7BE0 002D4B20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D7BE4 002D4B24  7C 08 03 A6 */	mtlr r0
/* 802D7BE8 002D4B28  38 21 00 10 */	addi r1, r1, 0x10
/* 802D7BEC 002D4B2C  4E 80 00 20 */	blr 

