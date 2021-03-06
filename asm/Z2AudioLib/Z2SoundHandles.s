.include "macros.inc"

.section .text, "ax" # 802ab07c


.global Z2SoundHandles
Z2SoundHandles:
/* 802AB07C 002A7FBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AB080 002A7FC0  7C 08 02 A6 */	mflr r0
/* 802AB084 002A7FC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AB088 002A7FC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AB08C 002A7FCC  7C 7F 1B 78 */	mr r31, r3
/* 802AB090 002A7FD0  48 03 0E 85 */	bl JSUPtrList_NS_initiate
/* 802AB094 002A7FD4  38 00 00 00 */	li r0, 0
/* 802AB098 002A7FD8  98 1F 00 0C */	stb r0, 0xc(r31)
/* 802AB09C 002A7FDC  7F E3 FB 78 */	mr r3, r31
/* 802AB0A0 002A7FE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AB0A4 002A7FE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AB0A8 002A7FE8  7C 08 03 A6 */	mtlr r0
/* 802AB0AC 002A7FEC  38 21 00 10 */	addi r1, r1, 0x10
/* 802AB0B0 002A7FF0  4E 80 00 20 */	blr 

.global Z2SoundHandles_NS_dtor
Z2SoundHandles_NS_dtor:
/* 802AB0B4 002A7FF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AB0B8 002A7FF8  7C 08 02 A6 */	mflr r0
/* 802AB0BC 002A7FFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AB0C0 002A8000  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AB0C4 002A8004  93 C1 00 08 */	stw r30, 8(r1)
/* 802AB0C8 002A8008  7C 7E 1B 79 */	or. r30, r3, r3
/* 802AB0CC 002A800C  7C 9F 23 78 */	mr r31, r4
/* 802AB0D0 002A8010  41 82 00 2C */	beq lbl_802AB0FC
/* 802AB0D4 002A8014  48 00 00 4D */	bl Z2SoundHandles_NS_deleteHandlesPool
/* 802AB0D8 002A8018  28 1E 00 00 */	cmplwi r30, 0
/* 802AB0DC 002A801C  41 82 00 10 */	beq lbl_802AB0EC
/* 802AB0E0 002A8020  7F C3 F3 78 */	mr r3, r30
/* 802AB0E4 002A8024  38 80 00 00 */	li r4, 0
/* 802AB0E8 002A8028  48 03 0D C5 */	bl JSUPtrList_NS_dtor
lbl_802AB0EC:
/* 802AB0EC 002A802C  7F E0 07 35 */	extsh. r0, r31
/* 802AB0F0 002A8030  40 81 00 0C */	ble lbl_802AB0FC
/* 802AB0F4 002A8034  7F C3 F3 78 */	mr r3, r30
/* 802AB0F8 002A8038  48 02 3C 45 */	bl __dl
lbl_802AB0FC:
/* 802AB0FC 002A803C  7F C3 F3 78 */	mr r3, r30
/* 802AB100 002A8040  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AB104 002A8044  83 C1 00 08 */	lwz r30, 8(r1)
/* 802AB108 002A8048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AB10C 002A804C  7C 08 03 A6 */	mtlr r0
/* 802AB110 002A8050  38 21 00 10 */	addi r1, r1, 0x10
/* 802AB114 002A8054  4E 80 00 20 */	blr 

.global Z2SoundHandles_NS_initHandlesPool
Z2SoundHandles_NS_initHandlesPool:
/* 802AB118 002A8058  98 83 00 0C */	stb r4, 0xc(r3)
/* 802AB11C 002A805C  4E 80 00 20 */	blr 

.global Z2SoundHandles_NS_deleteHandlesPool
Z2SoundHandles_NS_deleteHandlesPool:
/* 802AB120 002A8060  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AB124 002A8064  7C 08 02 A6 */	mflr r0
/* 802AB128 002A8068  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AB12C 002A806C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AB130 002A8070  93 C1 00 08 */	stw r30, 8(r1)
/* 802AB134 002A8074  7C 7F 1B 78 */	mr r31, r3
/* 802AB138 002A8078  48 00 00 9C */	b lbl_802AB1D4
lbl_802AB13C:
/* 802AB13C 002A807C  83 C3 00 00 */	lwz r30, 0(r3)
/* 802AB140 002A8080  7F C4 F3 78 */	mr r4, r30
/* 802AB144 002A8084  28 1E 00 00 */	cmplwi r30, 0
/* 802AB148 002A8088  41 82 00 08 */	beq lbl_802AB150
/* 802AB14C 002A808C  38 9E 00 04 */	addi r4, r30, 4
lbl_802AB150:
/* 802AB150 002A8090  7F E3 FB 78 */	mr r3, r31
/* 802AB154 002A8094  48 03 10 09 */	bl JSUPtrList_NS_remove
/* 802AB158 002A8098  28 1E 00 00 */	cmplwi r30, 0
/* 802AB15C 002A809C  41 82 00 78 */	beq lbl_802AB1D4
/* 802AB160 002A80A0  34 1E 00 04 */	addic. r0, r30, 4
/* 802AB164 002A80A4  41 82 00 10 */	beq lbl_802AB174
/* 802AB168 002A80A8  38 7E 00 04 */	addi r3, r30, 4
/* 802AB16C 002A80AC  38 80 00 00 */	li r4, 0
/* 802AB170 002A80B0  48 03 0C A5 */	bl JSUPtrLink_NS_dtor
lbl_802AB174:
/* 802AB174 002A80B4  28 1E 00 00 */	cmplwi r30, 0
/* 802AB178 002A80B8  41 82 00 0C */	beq lbl_802AB184
/* 802AB17C 002A80BC  7F C3 F3 78 */	mr r3, r30
/* 802AB180 002A80C0  4B FF 70 05 */	bl JAISoundHandle_NS_releaseSound
lbl_802AB184:
/* 802AB184 002A80C4  88 0D 8D C8 */	lbz r0, lbl_80451348-_SDA_BASE_(r13)
/* 802AB188 002A80C8  7C 00 07 75 */	extsb. r0, r0
/* 802AB18C 002A80CC  40 82 00 34 */	bne lbl_802AB1C0
/* 802AB190 002A80D0  3C 60 80 43 */	lis r3, lbl_804341C4@ha
/* 802AB194 002A80D4  38 63 41 C4 */	addi r3, r3, lbl_804341C4@l
/* 802AB198 002A80D8  4B FE 56 B1 */	bl JASGenericMemPool
/* 802AB19C 002A80DC  3C 60 80 43 */	lis r3, lbl_804341C4@ha
/* 802AB1A0 002A80E0  38 63 41 C4 */	addi r3, r3, lbl_804341C4@l
.global JASMemPool_NS_dtor_X4_
/* 802AB1A4 002A80E4  3C 80 80 2B */	lis r4, JASMemPool_NS_dtor_X4_@ha
.global JASMemPool_NS_dtor_X4_
/* 802AB1A8 002A80E8  38 84 B2 00 */	addi r4, r4, JASMemPool_NS_dtor_X4_@l
/* 802AB1AC 002A80EC  3C A0 80 43 */	lis r5, lbl_804341B8@ha
/* 802AB1B0 002A80F0  38 A5 41 B8 */	addi r5, r5, lbl_804341B8@l
/* 802AB1B4 002A80F4  48 0B 6A 71 */	bl func_80361C24
/* 802AB1B8 002A80F8  38 00 00 01 */	li r0, 1
/* 802AB1BC 002A80FC  98 0D 8D C8 */	stb r0, lbl_80451348-_SDA_BASE_(r13)
lbl_802AB1C0:
/* 802AB1C0 002A8100  3C 60 80 43 */	lis r3, lbl_804341C4@ha
/* 802AB1C4 002A8104  38 63 41 C4 */	addi r3, r3, lbl_804341C4@l
/* 802AB1C8 002A8108  7F C4 F3 78 */	mr r4, r30
/* 802AB1CC 002A810C  38 A0 00 14 */	li r5, 0x14
/* 802AB1D0 002A8110  4B FE 57 C5 */	bl JASGenericMemPool_NS_free
lbl_802AB1D4:
/* 802AB1D4 002A8114  80 7F 00 00 */	lwz r3, 0(r31)
/* 802AB1D8 002A8118  28 03 00 00 */	cmplwi r3, 0
/* 802AB1DC 002A811C  40 82 FF 60 */	bne lbl_802AB13C
/* 802AB1E0 002A8120  38 00 00 00 */	li r0, 0
/* 802AB1E4 002A8124  98 1F 00 0C */	stb r0, 0xc(r31)
/* 802AB1E8 002A8128  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AB1EC 002A812C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802AB1F0 002A8130  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AB1F4 002A8134  7C 08 03 A6 */	mtlr r0
/* 802AB1F8 002A8138  38 21 00 10 */	addi r1, r1, 0x10
/* 802AB1FC 002A813C  4E 80 00 20 */	blr 
.global JASMemPool_NS_dtor_X4_
JASMemPool_NS_dtor_X4_:
/* 802AB200 002A8140  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AB204 002A8144  7C 08 02 A6 */	mflr r0
/* 802AB208 002A8148  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AB20C 002A814C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AB210 002A8150  93 C1 00 08 */	stw r30, 8(r1)
/* 802AB214 002A8154  7C 7E 1B 79 */	or. r30, r3, r3
/* 802AB218 002A8158  7C 9F 23 78 */	mr r31, r4
/* 802AB21C 002A815C  41 82 00 1C */	beq lbl_802AB238
/* 802AB220 002A8160  38 80 00 00 */	li r4, 0
/* 802AB224 002A8164  4B FE 56 3D */	bl JASGenericMemPool_NS_dtor
/* 802AB228 002A8168  7F E0 07 35 */	extsh. r0, r31
/* 802AB22C 002A816C  40 81 00 0C */	ble lbl_802AB238
/* 802AB230 002A8170  7F C3 F3 78 */	mr r3, r30
/* 802AB234 002A8174  48 02 3B 09 */	bl __dl
lbl_802AB238:
/* 802AB238 002A8178  7F C3 F3 78 */	mr r3, r30
/* 802AB23C 002A817C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AB240 002A8180  83 C1 00 08 */	lwz r30, 8(r1)
/* 802AB244 002A8184  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AB248 002A8188  7C 08 03 A6 */	mtlr r0
/* 802AB24C 002A818C  38 21 00 10 */	addi r1, r1, 0x10
/* 802AB250 002A8190  4E 80 00 20 */	blr 

.global Z2SoundHandles_NS_getHandleSoundID
Z2SoundHandles_NS_getHandleSoundID:
/* 802AB254 002A8194  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AB258 002A8198  80 A3 00 00 */	lwz r5, 0(r3)
/* 802AB25C 002A819C  80 04 00 00 */	lwz r0, 0(r4)
/* 802AB260 002A81A0  48 00 00 2C */	b lbl_802AB28C
lbl_802AB264:
/* 802AB264 002A81A4  80 65 00 00 */	lwz r3, 0(r5)
/* 802AB268 002A81A8  80 83 00 00 */	lwz r4, 0(r3)
/* 802AB26C 002A81AC  28 04 00 00 */	cmplwi r4, 0
/* 802AB270 002A81B0  41 82 00 18 */	beq lbl_802AB288
/* 802AB274 002A81B4  80 84 00 18 */	lwz r4, 0x18(r4)
/* 802AB278 002A81B8  90 81 00 08 */	stw r4, 8(r1)
/* 802AB27C 002A81BC  7C 04 00 40 */	cmplw r4, r0
/* 802AB280 002A81C0  40 82 00 08 */	bne lbl_802AB288
/* 802AB284 002A81C4  48 00 00 14 */	b lbl_802AB298
lbl_802AB288:
/* 802AB288 002A81C8  80 A5 00 0C */	lwz r5, 0xc(r5)
lbl_802AB28C:
/* 802AB28C 002A81CC  28 05 00 00 */	cmplwi r5, 0
/* 802AB290 002A81D0  40 82 FF D4 */	bne lbl_802AB264
/* 802AB294 002A81D4  38 60 00 00 */	li r3, 0
lbl_802AB298:
/* 802AB298 002A81D8  38 21 00 10 */	addi r1, r1, 0x10
/* 802AB29C 002A81DC  4E 80 00 20 */	blr 

.global Z2SoundHandles_NS_getHandleUserData
Z2SoundHandles_NS_getHandleUserData:
/* 802AB2A0 002A81E0  80 C3 00 00 */	lwz r6, 0(r3)
/* 802AB2A4 002A81E4  48 00 00 24 */	b lbl_802AB2C8
lbl_802AB2A8:
/* 802AB2A8 002A81E8  80 66 00 00 */	lwz r3, 0(r6)
/* 802AB2AC 002A81EC  80 A3 00 00 */	lwz r5, 0(r3)
/* 802AB2B0 002A81F0  28 05 00 00 */	cmplwi r5, 0
/* 802AB2B4 002A81F4  41 82 00 10 */	beq lbl_802AB2C4
/* 802AB2B8 002A81F8  80 05 00 20 */	lwz r0, 0x20(r5)
/* 802AB2BC 002A81FC  7C 04 00 40 */	cmplw r4, r0
/* 802AB2C0 002A8200  4D 82 00 20 */	beqlr 
lbl_802AB2C4:
/* 802AB2C4 002A8204  80 C6 00 0C */	lwz r6, 0xc(r6)
lbl_802AB2C8:
/* 802AB2C8 002A8208  28 06 00 00 */	cmplwi r6, 0
/* 802AB2CC 002A820C  40 82 FF DC */	bne lbl_802AB2A8
/* 802AB2D0 002A8210  38 60 00 00 */	li r3, 0
/* 802AB2D4 002A8214  4E 80 00 20 */	blr 

.global Z2SoundHandles_NS_getFreeHandle
Z2SoundHandles_NS_getFreeHandle:
/* 802AB2D8 002A8218  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AB2DC 002A821C  7C 08 02 A6 */	mflr r0
/* 802AB2E0 002A8220  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AB2E4 002A8224  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AB2E8 002A8228  93 C1 00 08 */	stw r30, 8(r1)
/* 802AB2EC 002A822C  7C 7F 1B 78 */	mr r31, r3
/* 802AB2F0 002A8230  80 83 00 00 */	lwz r4, 0(r3)
/* 802AB2F4 002A8234  48 00 00 1C */	b lbl_802AB310
lbl_802AB2F8:
/* 802AB2F8 002A8238  80 64 00 00 */	lwz r3, 0(r4)
/* 802AB2FC 002A823C  80 03 00 00 */	lwz r0, 0(r3)
/* 802AB300 002A8240  28 00 00 00 */	cmplwi r0, 0
/* 802AB304 002A8244  40 82 00 08 */	bne lbl_802AB30C
/* 802AB308 002A8248  48 00 00 B0 */	b lbl_802AB3B8
lbl_802AB30C:
/* 802AB30C 002A824C  80 84 00 0C */	lwz r4, 0xc(r4)
lbl_802AB310:
/* 802AB310 002A8250  28 04 00 00 */	cmplwi r4, 0
/* 802AB314 002A8254  40 82 FF E4 */	bne lbl_802AB2F8
/* 802AB318 002A8258  80 7F 00 08 */	lwz r3, 8(r31)
/* 802AB31C 002A825C  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 802AB320 002A8260  7C 03 00 00 */	cmpw r3, r0
/* 802AB324 002A8264  40 80 00 90 */	bge lbl_802AB3B4
/* 802AB328 002A8268  88 0D 8D C8 */	lbz r0, lbl_80451348-_SDA_BASE_(r13)
/* 802AB32C 002A826C  7C 00 07 75 */	extsb. r0, r0
/* 802AB330 002A8270  40 82 00 34 */	bne lbl_802AB364
/* 802AB334 002A8274  3C 60 80 43 */	lis r3, lbl_804341C4@ha
/* 802AB338 002A8278  38 63 41 C4 */	addi r3, r3, lbl_804341C4@l
/* 802AB33C 002A827C  4B FE 55 0D */	bl JASGenericMemPool
/* 802AB340 002A8280  3C 60 80 43 */	lis r3, lbl_804341C4@ha
/* 802AB344 002A8284  38 63 41 C4 */	addi r3, r3, lbl_804341C4@l
.global JASMemPool_NS_dtor_X4_
/* 802AB348 002A8288  3C 80 80 2B */	lis r4, JASMemPool_NS_dtor_X4_@ha
.global JASMemPool_NS_dtor_X4_
/* 802AB34C 002A828C  38 84 B2 00 */	addi r4, r4, JASMemPool_NS_dtor_X4_@l
/* 802AB350 002A8290  3C A0 80 43 */	lis r5, lbl_804341B8@ha
/* 802AB354 002A8294  38 A5 41 B8 */	addi r5, r5, lbl_804341B8@l
/* 802AB358 002A8298  48 0B 68 CD */	bl func_80361C24
/* 802AB35C 002A829C  38 00 00 01 */	li r0, 1
/* 802AB360 002A82A0  98 0D 8D C8 */	stb r0, lbl_80451348-_SDA_BASE_(r13)
lbl_802AB364:
/* 802AB364 002A82A4  3C 60 80 43 */	lis r3, lbl_804341C4@ha
/* 802AB368 002A82A8  38 63 41 C4 */	addi r3, r3, lbl_804341C4@l
/* 802AB36C 002A82AC  38 80 00 14 */	li r4, 0x14
/* 802AB370 002A82B0  4B FE 55 D9 */	bl JASGenericMemPool_NS_alloc
/* 802AB374 002A82B4  7C 7E 1B 79 */	or. r30, r3, r3
/* 802AB378 002A82B8  41 82 00 18 */	beq lbl_802AB390
/* 802AB37C 002A82BC  38 00 00 00 */	li r0, 0
/* 802AB380 002A82C0  90 03 00 00 */	stw r0, 0(r3)
/* 802AB384 002A82C4  7C 64 1B 78 */	mr r4, r3
/* 802AB388 002A82C8  38 64 00 04 */	addi r3, r4, 4
/* 802AB38C 002A82CC  48 03 0A 71 */	bl JSUPtrLink
lbl_802AB390:
/* 802AB390 002A82D0  28 1E 00 00 */	cmplwi r30, 0
/* 802AB394 002A82D4  41 82 00 20 */	beq lbl_802AB3B4
/* 802AB398 002A82D8  7F C4 F3 78 */	mr r4, r30
/* 802AB39C 002A82DC  41 82 00 08 */	beq lbl_802AB3A4
/* 802AB3A0 002A82E0  38 9E 00 04 */	addi r4, r30, 4
lbl_802AB3A4:
/* 802AB3A4 002A82E4  7F E3 FB 78 */	mr r3, r31
/* 802AB3A8 002A82E8  48 03 0B A5 */	bl JSUPtrList_NS_append
/* 802AB3AC 002A82EC  7F C3 F3 78 */	mr r3, r30
/* 802AB3B0 002A82F0  48 00 00 08 */	b lbl_802AB3B8
lbl_802AB3B4:
/* 802AB3B4 002A82F4  38 60 00 00 */	li r3, 0
lbl_802AB3B8:
/* 802AB3B8 002A82F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AB3BC 002A82FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802AB3C0 002A8300  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AB3C4 002A8304  7C 08 03 A6 */	mtlr r0
/* 802AB3C8 002A8308  38 21 00 10 */	addi r1, r1, 0x10
/* 802AB3CC 002A830C  4E 80 00 20 */	blr 

.global Z2SoundHandles_NS_getLowPrioSound
Z2SoundHandles_NS_getLowPrioSound:
/* 802AB3D0 002A8310  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802AB3D4 002A8314  7C 08 02 A6 */	mflr r0
/* 802AB3D8 002A8318  90 01 00 34 */	stw r0, 0x34(r1)
/* 802AB3DC 002A831C  39 61 00 30 */	addi r11, r1, 0x30
/* 802AB3E0 002A8320  48 0B 6D F1 */	bl func_803621D0
/* 802AB3E4 002A8324  7C 9A 23 78 */	mr r26, r4
/* 802AB3E8 002A8328  83 ED 85 DC */	lwz r31, lbl_80450B5C-_SDA_BASE_(r13)
/* 802AB3EC 002A832C  3C 80 00 01 */	lis r4, 0x0000FFFF@ha
/* 802AB3F0 002A8330  3B A4 FF FF */	addi r29, r4, 0x0000FFFF@l
/* 802AB3F4 002A8334  3B 80 00 00 */	li r28, 0
/* 802AB3F8 002A8338  83 63 00 00 */	lwz r27, 0(r3)
/* 802AB3FC 002A833C  48 00 00 50 */	b lbl_802AB44C
lbl_802AB400:
/* 802AB400 002A8340  83 DB 00 00 */	lwz r30, 0(r27)
/* 802AB404 002A8344  80 7E 00 00 */	lwz r3, 0(r30)
/* 802AB408 002A8348  28 03 00 00 */	cmplwi r3, 0
/* 802AB40C 002A834C  40 82 00 0C */	bne lbl_802AB418
/* 802AB410 002A8350  7F C3 F3 78 */	mr r3, r30
/* 802AB414 002A8354  48 00 00 74 */	b lbl_802AB488
lbl_802AB418:
/* 802AB418 002A8358  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802AB41C 002A835C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802AB420 002A8360  7F E3 FB 78 */	mr r3, r31
/* 802AB424 002A8364  38 81 00 0C */	addi r4, r1, 0xc
/* 802AB428 002A8368  81 9F 00 00 */	lwz r12, 0(r31)
/* 802AB42C 002A836C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802AB430 002A8370  7D 89 03 A6 */	mtctr r12
/* 802AB434 002A8374  4E 80 04 21 */	bctrl 
/* 802AB438 002A8378  7C 03 E8 40 */	cmplw r3, r29
/* 802AB43C 002A837C  40 80 00 0C */	bge lbl_802AB448
/* 802AB440 002A8380  7C 7D 1B 78 */	mr r29, r3
/* 802AB444 002A8384  7F DC F3 78 */	mr r28, r30
lbl_802AB448:
/* 802AB448 002A8388  83 7B 00 0C */	lwz r27, 0xc(r27)
lbl_802AB44C:
/* 802AB44C 002A838C  28 1B 00 00 */	cmplwi r27, 0
/* 802AB450 002A8390  40 82 FF B0 */	bne lbl_802AB400
/* 802AB454 002A8394  80 1A 00 00 */	lwz r0, 0(r26)
/* 802AB458 002A8398  90 01 00 08 */	stw r0, 8(r1)
/* 802AB45C 002A839C  7F E3 FB 78 */	mr r3, r31
/* 802AB460 002A83A0  38 81 00 08 */	addi r4, r1, 8
/* 802AB464 002A83A4  81 9F 00 00 */	lwz r12, 0(r31)
/* 802AB468 002A83A8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802AB46C 002A83AC  7D 89 03 A6 */	mtctr r12
/* 802AB470 002A83B0  4E 80 04 21 */	bctrl 
/* 802AB474 002A83B4  7C 03 E8 40 */	cmplw r3, r29
/* 802AB478 002A83B8  41 80 00 0C */	blt lbl_802AB484
/* 802AB47C 002A83BC  7F 83 E3 78 */	mr r3, r28
/* 802AB480 002A83C0  48 00 00 08 */	b lbl_802AB488
lbl_802AB484:
/* 802AB484 002A83C4  38 60 00 00 */	li r3, 0
lbl_802AB488:
/* 802AB488 002A83C8  39 61 00 30 */	addi r11, r1, 0x30
/* 802AB48C 002A83CC  48 0B 6D 91 */	bl func_8036221C
/* 802AB490 002A83D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802AB494 002A83D4  7C 08 03 A6 */	mtlr r0
/* 802AB498 002A83D8  38 21 00 30 */	addi r1, r1, 0x30
/* 802AB49C 002A83DC  4E 80 00 20 */	blr 

.global Z2SoundHandles_NS_stopAllSounds
Z2SoundHandles_NS_stopAllSounds:
/* 802AB4A0 002A83E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AB4A4 002A83E4  7C 08 02 A6 */	mflr r0
/* 802AB4A8 002A83E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AB4AC 002A83EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AB4B0 002A83F0  93 C1 00 08 */	stw r30, 8(r1)
/* 802AB4B4 002A83F4  7C 9E 23 78 */	mr r30, r4
/* 802AB4B8 002A83F8  83 E3 00 00 */	lwz r31, 0(r3)
/* 802AB4BC 002A83FC  48 00 00 28 */	b lbl_802AB4E4
lbl_802AB4C0:
/* 802AB4C0 002A8400  80 7F 00 00 */	lwz r3, 0(r31)
/* 802AB4C4 002A8404  28 03 00 00 */	cmplwi r3, 0
/* 802AB4C8 002A8408  41 82 00 18 */	beq lbl_802AB4E0
/* 802AB4CC 002A840C  80 63 00 00 */	lwz r3, 0(r3)
/* 802AB4D0 002A8410  28 03 00 00 */	cmplwi r3, 0
/* 802AB4D4 002A8414  41 82 00 0C */	beq lbl_802AB4E0
/* 802AB4D8 002A8418  7F C4 F3 78 */	mr r4, r30
/* 802AB4DC 002A841C  4B FF 70 01 */	bl JAISound_NS_stop
lbl_802AB4E0:
/* 802AB4E0 002A8420  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_802AB4E4:
/* 802AB4E4 002A8424  28 1F 00 00 */	cmplwi r31, 0
/* 802AB4E8 002A8428  40 82 FF D8 */	bne lbl_802AB4C0
/* 802AB4EC 002A842C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AB4F0 002A8430  83 C1 00 08 */	lwz r30, 8(r1)
/* 802AB4F4 002A8434  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AB4F8 002A8438  7C 08 03 A6 */	mtlr r0
/* 802AB4FC 002A843C  38 21 00 10 */	addi r1, r1, 0x10
/* 802AB500 002A8440  4E 80 00 20 */	blr 

.global Z2SoundHandles_NS_isActive
Z2SoundHandles_NS_isActive:
/* 802AB504 002A8444  80 83 00 00 */	lwz r4, 0(r3)
/* 802AB508 002A8448  48 00 00 20 */	b lbl_802AB528
lbl_802AB50C:
/* 802AB50C 002A844C  80 64 00 00 */	lwz r3, 0(r4)
/* 802AB510 002A8450  80 03 00 00 */	lwz r0, 0(r3)
/* 802AB514 002A8454  28 00 00 00 */	cmplwi r0, 0
/* 802AB518 002A8458  41 82 00 0C */	beq lbl_802AB524
/* 802AB51C 002A845C  38 60 00 01 */	li r3, 1
/* 802AB520 002A8460  4E 80 00 20 */	blr 
lbl_802AB524:
/* 802AB524 002A8464  80 84 00 0C */	lwz r4, 0xc(r4)
lbl_802AB528:
/* 802AB528 002A8468  28 04 00 00 */	cmplwi r4, 0
/* 802AB52C 002A846C  40 82 FF E0 */	bne lbl_802AB50C
/* 802AB530 002A8470  38 60 00 00 */	li r3, 0
/* 802AB534 002A8474  4E 80 00 20 */	blr 

.global Z2SoundHandles_NS_setPos
Z2SoundHandles_NS_setPos:
/* 802AB538 002A8478  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AB53C 002A847C  7C 08 02 A6 */	mflr r0
/* 802AB540 002A8480  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AB544 002A8484  39 61 00 20 */	addi r11, r1, 0x20
/* 802AB548 002A8488  48 0B 6C 91 */	bl _savegpr_28
/* 802AB54C 002A848C  7C 7C 1B 78 */	mr r28, r3
/* 802AB550 002A8490  7C 9D 23 78 */	mr r29, r4
/* 802AB554 002A8494  83 C3 00 00 */	lwz r30, 0(r3)
/* 802AB558 002A8498  48 00 00 D4 */	b lbl_802AB62C
lbl_802AB55C:
/* 802AB55C 002A849C  83 FE 00 00 */	lwz r31, 0(r30)
/* 802AB560 002A84A0  80 7F 00 00 */	lwz r3, 0(r31)
/* 802AB564 002A84A4  28 03 00 00 */	cmplwi r3, 0
/* 802AB568 002A84A8  41 82 00 2C */	beq lbl_802AB594
/* 802AB56C 002A84AC  80 63 00 08 */	lwz r3, 8(r3)
/* 802AB570 002A84B0  28 03 00 00 */	cmplwi r3, 0
/* 802AB574 002A84B4  41 82 00 B4 */	beq lbl_802AB628
/* 802AB578 002A84B8  C0 1D 00 00 */	lfs f0, 0(r29)
/* 802AB57C 002A84BC  D0 03 00 04 */	stfs f0, 4(r3)
/* 802AB580 002A84C0  C0 1D 00 04 */	lfs f0, 4(r29)
/* 802AB584 002A84C4  D0 03 00 08 */	stfs f0, 8(r3)
/* 802AB588 002A84C8  C0 1D 00 08 */	lfs f0, 8(r29)
/* 802AB58C 002A84CC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802AB590 002A84D0  48 00 00 98 */	b lbl_802AB628
lbl_802AB594:
/* 802AB594 002A84D4  7F E4 FB 78 */	mr r4, r31
/* 802AB598 002A84D8  28 1F 00 00 */	cmplwi r31, 0
/* 802AB59C 002A84DC  41 82 00 08 */	beq lbl_802AB5A4
/* 802AB5A0 002A84E0  38 9F 00 04 */	addi r4, r31, 4
lbl_802AB5A4:
/* 802AB5A4 002A84E4  7F 83 E3 78 */	mr r3, r28
/* 802AB5A8 002A84E8  48 03 0B B5 */	bl JSUPtrList_NS_remove
/* 802AB5AC 002A84EC  28 1F 00 00 */	cmplwi r31, 0
/* 802AB5B0 002A84F0  41 82 00 78 */	beq lbl_802AB628
/* 802AB5B4 002A84F4  34 1F 00 04 */	addic. r0, r31, 4
/* 802AB5B8 002A84F8  41 82 00 10 */	beq lbl_802AB5C8
/* 802AB5BC 002A84FC  38 7F 00 04 */	addi r3, r31, 4
/* 802AB5C0 002A8500  38 80 00 00 */	li r4, 0
/* 802AB5C4 002A8504  48 03 08 51 */	bl JSUPtrLink_NS_dtor
lbl_802AB5C8:
/* 802AB5C8 002A8508  28 1F 00 00 */	cmplwi r31, 0
/* 802AB5CC 002A850C  41 82 00 0C */	beq lbl_802AB5D8
/* 802AB5D0 002A8510  7F E3 FB 78 */	mr r3, r31
/* 802AB5D4 002A8514  4B FF 6B B1 */	bl JAISoundHandle_NS_releaseSound
lbl_802AB5D8:
/* 802AB5D8 002A8518  88 0D 8D C8 */	lbz r0, lbl_80451348-_SDA_BASE_(r13)
/* 802AB5DC 002A851C  7C 00 07 75 */	extsb. r0, r0
/* 802AB5E0 002A8520  40 82 00 34 */	bne lbl_802AB614
/* 802AB5E4 002A8524  3C 60 80 43 */	lis r3, lbl_804341C4@ha
/* 802AB5E8 002A8528  38 63 41 C4 */	addi r3, r3, lbl_804341C4@l
/* 802AB5EC 002A852C  4B FE 52 5D */	bl JASGenericMemPool
/* 802AB5F0 002A8530  3C 60 80 43 */	lis r3, lbl_804341C4@ha
/* 802AB5F4 002A8534  38 63 41 C4 */	addi r3, r3, lbl_804341C4@l
.global JASMemPool_NS_dtor_X4_
/* 802AB5F8 002A8538  3C 80 80 2B */	lis r4, JASMemPool_NS_dtor_X4_@ha
.global JASMemPool_NS_dtor_X4_
/* 802AB5FC 002A853C  38 84 B2 00 */	addi r4, r4, JASMemPool_NS_dtor_X4_@l
/* 802AB600 002A8540  3C A0 80 43 */	lis r5, lbl_804341B8@ha
/* 802AB604 002A8544  38 A5 41 B8 */	addi r5, r5, lbl_804341B8@l
/* 802AB608 002A8548  48 0B 66 1D */	bl func_80361C24
/* 802AB60C 002A854C  38 00 00 01 */	li r0, 1
/* 802AB610 002A8550  98 0D 8D C8 */	stb r0, lbl_80451348-_SDA_BASE_(r13)
lbl_802AB614:
/* 802AB614 002A8554  3C 60 80 43 */	lis r3, lbl_804341C4@ha
/* 802AB618 002A8558  38 63 41 C4 */	addi r3, r3, lbl_804341C4@l
/* 802AB61C 002A855C  7F E4 FB 78 */	mr r4, r31
/* 802AB620 002A8560  38 A0 00 14 */	li r5, 0x14
/* 802AB624 002A8564  4B FE 53 71 */	bl JASGenericMemPool_NS_free
lbl_802AB628:
/* 802AB628 002A8568  83 DE 00 0C */	lwz r30, 0xc(r30)
lbl_802AB62C:
/* 802AB62C 002A856C  28 1E 00 00 */	cmplwi r30, 0
/* 802AB630 002A8570  40 82 FF 2C */	bne lbl_802AB55C
/* 802AB634 002A8574  39 61 00 20 */	addi r11, r1, 0x20
/* 802AB638 002A8578  48 0B 6B ED */	bl _restgpr_28
/* 802AB63C 002A857C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AB640 002A8580  7C 08 03 A6 */	mtlr r0
/* 802AB644 002A8584  38 21 00 20 */	addi r1, r1, 0x20
/* 802AB648 002A8588  4E 80 00 20 */	blr 

