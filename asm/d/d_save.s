.include "macros.inc"

.section .text, "ax" # 80032918 

.global dSv_letter_info_c_NS_init
dSv_letter_info_c_NS_init:
/* 800343DC 0003131C  38 80 00 00 */	li r4, 0
/* 800343E0 00031320  7C 86 23 78 */	mr r6, r4
/* 800343E4 00031324  7C 85 23 78 */	mr r5, r4
/* 800343E8 00031328  38 00 00 02 */	li r0, 2
/* 800343EC 0003132C  7C 09 03 A6 */	mtctr r0
lbl_800343F0:
/* 800343F0 00031330  7C E3 22 14 */	add r7, r3, r4
/* 800343F4 00031334  90 C7 00 00 */	stw r6, 0(r7)
/* 800343F8 00031338  90 A7 00 08 */	stw r5, 8(r7)
/* 800343FC 0003133C  38 84 00 04 */	addi r4, r4, 4
/* 80034400 00031340  42 00 FF F0 */	bdnz lbl_800343F0
/* 80034404 00031344  38 A0 00 00 */	li r5, 0
/* 80034408 00031348  38 80 00 00 */	li r4, 0
/* 8003440C 0003134C  38 00 00 40 */	li r0, 0x40
/* 80034410 00031350  7C 09 03 A6 */	mtctr r0
lbl_80034414:
/* 80034414 00031354  38 05 00 10 */	addi r0, r5, 0x10
/* 80034418 00031358  7C 83 01 AE */	stbx r4, r3, r0
/* 8003441C 0003135C  38 A5 00 01 */	addi r5, r5, 1
/* 80034420 00031360  42 00 FF F4 */	bdnz lbl_80034414
/* 80034424 00031364  4E 80 00 20 */	blr 

.global dSv_letter_info_c_NS_onLetterGetFlag
dSv_letter_info_c_NS_onLetterGetFlag:
/* 80034428 00031368  7C 80 2E 70 */	srawi r0, r4, 5
/* 8003442C 0003136C  54 07 10 3A */	slwi r7, r0, 2
/* 80034430 00031370  7C C3 38 2E */	lwzx r6, r3, r7
/* 80034434 00031374  38 A0 00 01 */	li r5, 1
/* 80034438 00031378  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 8003443C 0003137C  7C A0 00 30 */	slw r0, r5, r0
/* 80034440 00031380  7C C0 03 78 */	or r0, r6, r0
/* 80034444 00031384  7C 03 39 2E */	stwx r0, r3, r7
/* 80034448 00031388  4E 80 00 20 */	blr 

.global dSv_letter_info_c_NS_isLetterGetFlag
dSv_letter_info_c_NS_isLetterGetFlag:
/* 8003444C 0003138C  38 A0 00 01 */	li r5, 1
/* 80034450 00031390  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 80034454 00031394  7C A5 00 30 */	slw r5, r5, r0
/* 80034458 00031398  7C 80 2E 70 */	srawi r0, r4, 5
/* 8003445C 0003139C  54 00 10 3A */	slwi r0, r0, 2
/* 80034460 000313A0  7C 03 00 2E */	lwzx r0, r3, r0
/* 80034464 000313A4  7C A3 00 38 */	and r3, r5, r0
/* 80034468 000313A8  30 03 FF FF */	addic r0, r3, -1
/* 8003446C 000313AC  7C 60 19 10 */	subfe r3, r0, r3
/* 80034470 000313B0  4E 80 00 20 */	blr 

.global dSv_letter_info_c_NS_onLetterReadFlag
dSv_letter_info_c_NS_onLetterReadFlag:
/* 80034474 000313B4  7C 80 2E 70 */	srawi r0, r4, 5
/* 80034478 000313B8  54 00 10 3A */	slwi r0, r0, 2
/* 8003447C 000313BC  7C C3 02 14 */	add r6, r3, r0
/* 80034480 000313C0  80 A6 00 08 */	lwz r5, 8(r6)
/* 80034484 000313C4  38 60 00 01 */	li r3, 1
/* 80034488 000313C8  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 8003448C 000313CC  7C 60 00 30 */	slw r0, r3, r0
/* 80034490 000313D0  7C A0 03 78 */	or r0, r5, r0
/* 80034494 000313D4  90 06 00 08 */	stw r0, 8(r6)
/* 80034498 000313D8  4E 80 00 20 */	blr 

.global dSv_letter_info_c_NS_isLetterReadFlag
dSv_letter_info_c_NS_isLetterReadFlag:
/* 8003449C 000313DC  7C 80 2E 70 */	srawi r0, r4, 5
/* 800344A0 000313E0  54 00 10 3A */	slwi r0, r0, 2
/* 800344A4 000313E4  7C 63 02 14 */	add r3, r3, r0
/* 800344A8 000313E8  80 A3 00 08 */	lwz r5, 8(r3)
/* 800344AC 000313EC  38 60 00 01 */	li r3, 1
/* 800344B0 000313F0  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 800344B4 000313F4  7C 60 00 30 */	slw r0, r3, r0
/* 800344B8 000313F8  7C A3 00 38 */	and r3, r5, r0
/* 800344BC 000313FC  30 03 FF FF */	addic r0, r3, -1
/* 800344C0 00031400  7C 60 19 10 */	subfe r3, r0, r3
/* 800344C4 00031404  4E 80 00 20 */	blr 

.global dSv_fishing_info_c_NS_init
dSv_fishing_info_c_NS_init:
/* 800344C8 00031408  38 E0 00 00 */	li r7, 0
/* 800344CC 0003140C  38 80 00 00 */	li r4, 0
/* 800344D0 00031410  7C 86 23 78 */	mr r6, r4
/* 800344D4 00031414  7C 85 23 78 */	mr r5, r4
/* 800344D8 00031418  38 00 00 10 */	li r0, 0x10
/* 800344DC 0003141C  7C 09 03 A6 */	mtctr r0
lbl_800344E0:
/* 800344E0 00031420  7C C3 23 2E */	sthx r6, r3, r4
/* 800344E4 00031424  38 07 00 20 */	addi r0, r7, 0x20
/* 800344E8 00031428  7C A3 01 AE */	stbx r5, r3, r0
/* 800344EC 0003142C  38 E7 00 01 */	addi r7, r7, 1
/* 800344F0 00031430  38 84 00 02 */	addi r4, r4, 2
/* 800344F4 00031434  42 00 FF EC */	bdnz lbl_800344E0
/* 800344F8 00031438  4E 80 00 20 */	blr 
/* 800344FC 0003143C  54 85 0D FC */	rlwinm r5, r4, 1, 0x17, 0x1e
/* 80034500 00031440  7C 83 2A 2E */	lhzx r4, r3, r5
/* 80034504 00031444  28 04 03 E7 */	cmplwi r4, 0x3e7
/* 80034508 00031448  4C 80 00 20 */	bgelr 
/* 8003450C 0003144C  38 04 00 01 */	addi r0, r4, 1
/* 80034510 00031450  7C 03 2B 2E */	sthx r0, r3, r5
/* 80034514 00031454  4E 80 00 20 */	blr 

.global dSv_player_info_c_NS_init
dSv_player_info_c_NS_init:
/* 80034518 00031458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003451C 0003145C  7C 08 02 A6 */	mflr r0
/* 80034520 00031460  90 01 00 14 */	stw r0, 0x14(r1)
/* 80034524 00031464  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80034528 00031468  7C 7F 1B 78 */	mr r31, r3
/* 8003452C 0003146C  3C 60 80 43 */	lis r3, lbl_80430188@ha
/* 80034530 00031470  38 63 01 88 */	addi r3, r3, lbl_80430188@l
/* 80034534 00031474  38 80 03 82 */	li r4, 0x382
/* 80034538 00031478  38 BF 00 14 */	addi r5, r31, 0x14
/* 8003453C 0003147C  38 C0 00 00 */	li r6, 0
/* 80034540 00031480  48 1E 7D 11 */	bl dMeter2Info_c_NS_getString
/* 80034544 00031484  3C 60 80 43 */	lis r3, lbl_80430188@ha
/* 80034548 00031488  38 63 01 88 */	addi r3, r3, lbl_80430188@l
/* 8003454C 0003148C  38 80 03 83 */	li r4, 0x383
/* 80034550 00031490  38 BF 00 25 */	addi r5, r31, 0x25
/* 80034554 00031494  38 C0 00 00 */	li r6, 0
/* 80034558 00031498  48 1E 7C F9 */	bl dMeter2Info_c_NS_getString
/* 8003455C 0003149C  38 60 00 00 */	li r3, 0
/* 80034560 000314A0  90 7F 00 04 */	stw r3, 4(r31)
/* 80034564 000314A4  90 7F 00 00 */	stw r3, 0(r31)
/* 80034568 000314A8  90 7F 00 0C */	stw r3, 0xc(r31)
/* 8003456C 000314AC  90 7F 00 08 */	stw r3, 8(r31)
/* 80034570 000314B0  B0 7F 00 10 */	sth r3, 0x10(r31)
/* 80034574 000314B4  B0 7F 00 12 */	sth r3, 0x12(r31)
/* 80034578 000314B8  98 7F 00 36 */	stb r3, 0x36(r31)
/* 8003457C 000314BC  38 80 00 00 */	li r4, 0
/* 80034580 000314C0  38 00 00 05 */	li r0, 5
/* 80034584 000314C4  7C 09 03 A6 */	mtctr r0
lbl_80034588:
/* 80034588 000314C8  38 04 00 37 */	addi r0, r4, 0x37
/* 8003458C 000314CC  7C 7F 01 AE */	stbx r3, r31, r0
/* 80034590 000314D0  38 84 00 01 */	addi r4, r4, 1
/* 80034594 000314D4  42 00 FF F4 */	bdnz lbl_80034588
/* 80034598 000314D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003459C 000314DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800345A0 000314E0  7C 08 03 A6 */	mtlr r0
/* 800345A4 000314E4  38 21 00 10 */	addi r1, r1, 0x10
/* 800345A8 000314E8  4E 80 00 20 */	blr 

.global dSv_player_config_c_NS_init
dSv_player_config_c_NS_init:
/* 800345AC 000314EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800345B0 000314F0  7C 08 02 A6 */	mflr r0
/* 800345B4 000314F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800345B8 000314F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800345BC 000314FC  7C 7F 1B 78 */	mr r31, r3
/* 800345C0 00031500  38 00 00 01 */	li r0, 1
/* 800345C4 00031504  98 03 00 00 */	stb r0, 0(r3)
/* 800345C8 00031508  48 30 BF C9 */	bl OSGetSoundMode
/* 800345CC 0003150C  28 03 00 00 */	cmplwi r3, 0
/* 800345D0 00031510  40 82 00 1C */	bne lbl_800345EC
/* 800345D4 00031514  38 00 00 00 */	li r0, 0
/* 800345D8 00031518  98 1F 00 01 */	stb r0, 1(r31)
/* 800345DC 0003151C  80 6D 8D E8 */	lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 800345E0 00031520  38 80 00 00 */	li r4, 0
/* 800345E4 00031524  48 29 92 A5 */	bl Z2AudioMgr_NS_setOutputMode
/* 800345E8 00031528  48 00 00 18 */	b lbl_80034600
lbl_800345EC:
/* 800345EC 0003152C  38 00 00 01 */	li r0, 1
/* 800345F0 00031530  98 1F 00 01 */	stb r0, 1(r31)
/* 800345F4 00031534  80 6D 8D E8 */	lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 800345F8 00031538  38 80 00 01 */	li r4, 1
/* 800345FC 0003153C  48 29 92 8D */	bl Z2AudioMgr_NS_setOutputMode
lbl_80034600:
/* 80034600 00031540  38 80 00 00 */	li r4, 0
/* 80034604 00031544  98 9F 00 02 */	stb r4, 2(r31)
/* 80034608 00031548  38 60 00 01 */	li r3, 1
/* 8003460C 0003154C  98 7F 00 03 */	stb r3, 3(r31)
/* 80034610 00031550  98 9F 00 04 */	stb r4, 4(r31)
/* 80034614 00031554  98 9F 00 05 */	stb r4, 5(r31)
/* 80034618 00031558  98 9F 00 09 */	stb r4, 9(r31)
/* 8003461C 0003155C  38 00 01 5E */	li r0, 0x15e
/* 80034620 00031560  B0 1F 00 06 */	sth r0, 6(r31)
/* 80034624 00031564  98 9F 00 08 */	stb r4, 8(r31)
/* 80034628 00031568  98 9F 00 0A */	stb r4, 0xa(r31)
/* 8003462C 0003156C  98 7F 00 0B */	stb r3, 0xb(r31)
/* 80034630 00031570  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80034634 00031574  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80034638 00031578  7C 08 03 A6 */	mtlr r0
/* 8003463C 0003157C  38 21 00 10 */	addi r1, r1, 0x10
/* 80034640 00031580  4E 80 00 20 */	blr 

.global dSv_player_config_c_NS_checkVibration
dSv_player_config_c_NS_checkVibration:
/* 80034644 00031584  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80034648 00031588  7C 08 02 A6 */	mflr r0
/* 8003464C 0003158C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80034650 00031590  80 0D 8F 60 */	lwz r0, lbl_804514E0-_SDA_BASE_(r13)
/* 80034654 00031594  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 80034658 00031598  41 82 00 18 */	beq lbl_80034670
/* 8003465C 0003159C  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80034660 000315A0  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 80034664 000315A4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80034668 000315A8  4B FF 6D 49 */	bl dComIfG_play_c_NS_getNowVibration
/* 8003466C 000315AC  48 00 00 08 */	b lbl_80034674
lbl_80034670:
/* 80034670 000315B0  38 60 00 00 */	li r3, 0
lbl_80034674:
/* 80034674 000315B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80034678 000315B8  7C 08 03 A6 */	mtlr r0
/* 8003467C 000315BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80034680 000315C0  4E 80 00 20 */	blr 

.global dSv_player_config_c_NS_getSound
dSv_player_config_c_NS_getSound:
/* 80034684 000315C4  88 63 00 01 */	lbz r3, 1(r3)
/* 80034688 000315C8  4E 80 00 20 */	blr 

.global dSv_player_config_c_NS_setSound
dSv_player_config_c_NS_setSound:
/* 8003468C 000315CC  98 83 00 01 */	stb r4, 1(r3)
/* 80034690 000315D0  4E 80 00 20 */	blr 

.global dSv_player_config_c_NS_getVibration
dSv_player_config_c_NS_getVibration:
/* 80034694 000315D4  88 63 00 03 */	lbz r3, 3(r3)
/* 80034698 000315D8  4E 80 00 20 */	blr 

.global dSv_player_config_c_NS_setVibration
dSv_player_config_c_NS_setVibration:
/* 8003469C 000315DC  98 83 00 03 */	stb r4, 3(r3)
/* 800346A0 000315E0  4E 80 00 20 */	blr 

.global dSv_player_c_NS_init
dSv_player_c_NS_init:
/* 800346A4 000315E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800346A8 000315E8  7C 08 02 A6 */	mflr r0
/* 800346AC 000315EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800346B0 000315F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800346B4 000315F4  7C 7F 1B 78 */	mr r31, r3
/* 800346B8 000315F8  4B FF E2 A1 */	bl init__21dSv_player_status_a_cFv
/* 800346BC 000315FC  38 7F 00 28 */	addi r3, r31, 0x28
/* 800346C0 00031600  4B FF E4 91 */	bl init__21dSv_player_status_b_cFv
/* 800346C4 00031604  38 7F 00 40 */	addi r3, r31, 0x40
/* 800346C8 00031608  4B FF E5 45 */	bl init__17dSv_horse_place_cFv
/* 800346CC 0003160C  38 7F 00 58 */	addi r3, r31, 0x58
/* 800346D0 00031610  4B FF E5 F9 */	bl init__25dSv_player_return_place_cFv
/* 800346D4 00031614  38 7F 00 64 */	addi r3, r31, 0x64
/* 800346D8 00031618  4B FF E6 89 */	bl init__33dSv_player_field_last_stay_info_cFv
/* 800346DC 0003161C  38 7F 00 80 */	addi r3, r31, 0x80
/* 800346E0 00031620  4B FF E7 D1 */	bl init__27dSv_player_last_mark_info_cFv
/* 800346E4 00031624  38 7F 00 9C */	addi r3, r31, 0x9c
/* 800346E8 00031628  4B FF E8 A9 */	bl init__17dSv_player_item_cFv
/* 800346EC 0003162C  38 7F 00 CC */	addi r3, r31, 0xcc
/* 800346F0 00031630  4B FF F7 51 */	bl init__21dSv_player_get_item_cFv
/* 800346F4 00031634  38 7F 00 EC */	addi r3, r31, 0xec
/* 800346F8 00031638  4B FF F8 09 */	bl init__24dSv_player_item_record_cFv
/* 800346FC 0003163C  38 7F 00 F8 */	addi r3, r31, 0xf8
/* 80034700 00031640  4B FF F9 41 */	bl init__21dSv_player_item_max_cFv
/* 80034704 00031644  38 7F 01 00 */	addi r3, r31, 0x100
/* 80034708 00031648  4B FF FA A5 */	bl init__20dSv_player_collect_cFv
/* 8003470C 0003164C  38 7F 01 10 */	addi r3, r31, 0x110
/* 80034710 00031650  4B FF FB A5 */	bl init__17dSv_player_wolf_cFv
/* 80034714 00031654  38 7F 01 14 */	addi r3, r31, 0x114
/* 80034718 00031658  4B FF FB C5 */	bl init__16dSv_light_drop_cFv
/* 8003471C 0003165C  38 7F 01 1C */	addi r3, r31, 0x11c
/* 80034720 00031660  4B FF FC BD */	bl dSv_letter_info_c_NS_init
/* 80034724 00031664  38 7F 01 6C */	addi r3, r31, 0x16c
/* 80034728 00031668  4B FF FD A1 */	bl dSv_fishing_info_c_NS_init
/* 8003472C 0003166C  38 7F 01 A0 */	addi r3, r31, 0x1a0
/* 80034730 00031670  4B FF FD E9 */	bl dSv_player_info_c_NS_init
/* 80034734 00031674  38 7F 01 E0 */	addi r3, r31, 0x1e0
/* 80034738 00031678  4B FF FE 75 */	bl dSv_player_config_c_NS_init
/* 8003473C 0003167C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80034740 00031680  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80034744 00031684  7C 08 03 A6 */	mtlr r0
/* 80034748 00031688  38 21 00 10 */	addi r1, r1, 0x10
/* 8003474C 0003168C  4E 80 00 20 */	blr 

.global dSv_memBit_c_NS_init
dSv_memBit_c_NS_init:
/* 80034750 00031690  38 80 00 00 */	li r4, 0
/* 80034754 00031694  7C 85 23 78 */	mr r5, r4
/* 80034758 00031698  38 00 00 02 */	li r0, 2
/* 8003475C 0003169C  7C 09 03 A6 */	mtctr r0
lbl_80034760:
/* 80034760 000316A0  7C A3 21 2E */	stwx r5, r3, r4
/* 80034764 000316A4  38 84 00 04 */	addi r4, r4, 4
/* 80034768 000316A8  42 00 FF F8 */	bdnz lbl_80034760
/* 8003476C 000316AC  38 80 00 00 */	li r4, 0
/* 80034770 000316B0  38 A0 00 00 */	li r5, 0
/* 80034774 000316B4  38 00 00 04 */	li r0, 4
/* 80034778 000316B8  7C 09 03 A6 */	mtctr r0
lbl_8003477C:
/* 8003477C 000316BC  38 04 00 08 */	addi r0, r4, 8
/* 80034780 000316C0  7C A3 01 2E */	stwx r5, r3, r0
/* 80034784 000316C4  38 84 00 04 */	addi r4, r4, 4
/* 80034788 000316C8  42 00 FF F4 */	bdnz lbl_8003477C
/* 8003478C 000316CC  38 00 00 00 */	li r0, 0
/* 80034790 000316D0  90 03 00 18 */	stw r0, 0x18(r3)
/* 80034794 000316D4  98 03 00 1C */	stb r0, 0x1c(r3)
/* 80034798 000316D8  98 03 00 1D */	stb r0, 0x1d(r3)
/* 8003479C 000316DC  4E 80 00 20 */	blr 
/* 800347A0 000316E0  7C 80 2E 70 */	srawi r0, r4, 5
/* 800347A4 000316E4  54 07 10 3A */	slwi r7, r0, 2
/* 800347A8 000316E8  7C C3 38 2E */	lwzx r6, r3, r7
/* 800347AC 000316EC  38 A0 00 01 */	li r5, 1
/* 800347B0 000316F0  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 800347B4 000316F4  7C A0 00 30 */	slw r0, r5, r0
/* 800347B8 000316F8  7C C0 03 78 */	or r0, r6, r0
/* 800347BC 000316FC  7C 03 39 2E */	stwx r0, r3, r7
/* 800347C0 00031700  4E 80 00 20 */	blr 
/* 800347C4 00031704  7C 80 2E 70 */	srawi r0, r4, 5
/* 800347C8 00031708  54 07 10 3A */	slwi r7, r0, 2
/* 800347CC 0003170C  7C C3 38 2E */	lwzx r6, r3, r7
/* 800347D0 00031710  38 A0 00 01 */	li r5, 1
/* 800347D4 00031714  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 800347D8 00031718  7C A0 00 30 */	slw r0, r5, r0
/* 800347DC 0003171C  7C C0 00 78 */	andc r0, r6, r0
/* 800347E0 00031720  7C 03 39 2E */	stwx r0, r3, r7
/* 800347E4 00031724  4E 80 00 20 */	blr 

.global dSv_memBit_c_NS_isTbox
dSv_memBit_c_NS_isTbox:
/* 800347E8 00031728  38 A0 00 01 */	li r5, 1
/* 800347EC 0003172C  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 800347F0 00031730  7C A5 00 30 */	slw r5, r5, r0
/* 800347F4 00031734  7C 80 2E 70 */	srawi r0, r4, 5
/* 800347F8 00031738  54 00 10 3A */	slwi r0, r0, 2
/* 800347FC 0003173C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80034800 00031740  7C A3 00 38 */	and r3, r5, r0
/* 80034804 00031744  30 03 FF FF */	addic r0, r3, -1
/* 80034808 00031748  7C 60 19 10 */	subfe r3, r0, r3
/* 8003480C 0003174C  4E 80 00 20 */	blr 

.global dSv_memBit_c_NS_onSwitch
dSv_memBit_c_NS_onSwitch:
/* 80034810 00031750  7C 80 2E 70 */	srawi r0, r4, 5
/* 80034814 00031754  54 00 10 3A */	slwi r0, r0, 2
/* 80034818 00031758  7C C3 02 14 */	add r6, r3, r0
/* 8003481C 0003175C  80 A6 00 08 */	lwz r5, 8(r6)
/* 80034820 00031760  38 60 00 01 */	li r3, 1
/* 80034824 00031764  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 80034828 00031768  7C 60 00 30 */	slw r0, r3, r0
/* 8003482C 0003176C  7C A0 03 78 */	or r0, r5, r0
/* 80034830 00031770  90 06 00 08 */	stw r0, 8(r6)
/* 80034834 00031774  4E 80 00 20 */	blr 

.global dSv_memBit_c_NS_offSwitch
dSv_memBit_c_NS_offSwitch:
/* 80034838 00031778  7C 80 2E 70 */	srawi r0, r4, 5
/* 8003483C 0003177C  54 00 10 3A */	slwi r0, r0, 2
/* 80034840 00031780  7C C3 02 14 */	add r6, r3, r0
/* 80034844 00031784  80 A6 00 08 */	lwz r5, 8(r6)
/* 80034848 00031788  38 60 00 01 */	li r3, 1
/* 8003484C 0003178C  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 80034850 00031790  7C 60 00 30 */	slw r0, r3, r0
/* 80034854 00031794  7C A0 00 78 */	andc r0, r5, r0
/* 80034858 00031798  90 06 00 08 */	stw r0, 8(r6)
/* 8003485C 0003179C  4E 80 00 20 */	blr 

.global dSv_memBit_c_NS_isSwitch
dSv_memBit_c_NS_isSwitch:
/* 80034860 000317A0  7C 80 2E 70 */	srawi r0, r4, 5
/* 80034864 000317A4  54 00 10 3A */	slwi r0, r0, 2
/* 80034868 000317A8  7C 63 02 14 */	add r3, r3, r0
/* 8003486C 000317AC  80 A3 00 08 */	lwz r5, 8(r3)
/* 80034870 000317B0  38 60 00 01 */	li r3, 1
/* 80034874 000317B4  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 80034878 000317B8  7C 60 00 30 */	slw r0, r3, r0
/* 8003487C 000317BC  7C A3 00 38 */	and r3, r5, r0
/* 80034880 000317C0  30 03 FF FF */	addic r0, r3, -1
/* 80034884 000317C4  7C 60 19 10 */	subfe r3, r0, r3
/* 80034888 000317C8  4E 80 00 20 */	blr 

.global dSv_memBit_c_NS_revSwitch
dSv_memBit_c_NS_revSwitch:
/* 8003488C 000317CC  7C 86 2E 70 */	srawi r6, r4, 5
/* 80034890 000317D0  38 A0 00 01 */	li r5, 1
/* 80034894 000317D4  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 80034898 000317D8  7C A4 00 30 */	slw r4, r5, r0
/* 8003489C 000317DC  54 C0 10 3A */	slwi r0, r6, 2
/* 800348A0 000317E0  7C 63 02 14 */	add r3, r3, r0
/* 800348A4 000317E4  80 03 00 08 */	lwz r0, 8(r3)
/* 800348A8 000317E8  7C 00 22 78 */	xor r0, r0, r4
/* 800348AC 000317EC  90 03 00 08 */	stw r0, 8(r3)
/* 800348B0 000317F0  80 03 00 08 */	lwz r0, 8(r3)
/* 800348B4 000317F4  7C 03 20 38 */	and r3, r0, r4
/* 800348B8 000317F8  30 03 FF FF */	addic r0, r3, -1
/* 800348BC 000317FC  7C 60 19 10 */	subfe r3, r0, r3
/* 800348C0 00031800  4E 80 00 20 */	blr 

.global dSv_memBit_c_NS_onItem
dSv_memBit_c_NS_onItem:
/* 800348C4 00031804  7C 80 2E 70 */	srawi r0, r4, 5
/* 800348C8 00031808  54 00 10 3A */	slwi r0, r0, 2
/* 800348CC 0003180C  7C C3 02 14 */	add r6, r3, r0
/* 800348D0 00031810  80 A6 00 18 */	lwz r5, 0x18(r6)
/* 800348D4 00031814  38 60 00 01 */	li r3, 1
/* 800348D8 00031818  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 800348DC 0003181C  7C 60 00 30 */	slw r0, r3, r0
/* 800348E0 00031820  7C A0 03 78 */	or r0, r5, r0
/* 800348E4 00031824  90 06 00 18 */	stw r0, 0x18(r6)
/* 800348E8 00031828  4E 80 00 20 */	blr 

.global dSv_memBit_c_NS_isItem
dSv_memBit_c_NS_isItem:
/* 800348EC 0003182C  7C 80 2E 70 */	srawi r0, r4, 5
/* 800348F0 00031830  54 00 10 3A */	slwi r0, r0, 2
/* 800348F4 00031834  7C 63 02 14 */	add r3, r3, r0
/* 800348F8 00031838  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 800348FC 0003183C  38 60 00 01 */	li r3, 1
/* 80034900 00031840  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 80034904 00031844  7C 60 00 30 */	slw r0, r3, r0
/* 80034908 00031848  7C A3 00 38 */	and r3, r5, r0
/* 8003490C 0003184C  30 03 FF FF */	addic r0, r3, -1
/* 80034910 00031850  7C 60 19 10 */	subfe r3, r0, r3
/* 80034914 00031854  4E 80 00 20 */	blr 

.global dSv_memBit_c_NS_onDungeonItem
dSv_memBit_c_NS_onDungeonItem:
/* 80034918 00031858  88 A3 00 1D */	lbz r5, 0x1d(r3)
/* 8003491C 0003185C  38 00 00 01 */	li r0, 1
/* 80034920 00031860  7C 00 20 30 */	slw r0, r0, r4
/* 80034924 00031864  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80034928 00031868  7C A0 03 78 */	or r0, r5, r0
/* 8003492C 0003186C  98 03 00 1D */	stb r0, 0x1d(r3)
/* 80034930 00031870  4E 80 00 20 */	blr 

.global dSv_memBit_c_NS_isDungeonItem
dSv_memBit_c_NS_isDungeonItem:
/* 80034934 00031874  88 63 00 1D */	lbz r3, 0x1d(r3)
/* 80034938 00031878  38 00 00 01 */	li r0, 1
/* 8003493C 0003187C  7C 00 20 30 */	slw r0, r0, r4
/* 80034940 00031880  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80034944 00031884  7C 63 00 38 */	and r3, r3, r0
/* 80034948 00031888  30 03 FF FF */	addic r0, r3, -1
/* 8003494C 0003188C  7C 60 19 10 */	subfe r3, r0, r3
/* 80034950 00031890  4E 80 00 20 */	blr 

.global dSv_event_c_NS_init
dSv_event_c_NS_init:
/* 80034954 00031894  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80034958 00031898  7C 08 02 A6 */	mflr r0
/* 8003495C 0003189C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80034960 000318A0  38 80 00 00 */	li r4, 0
/* 80034964 000318A4  38 00 01 00 */	li r0, 0x100
/* 80034968 000318A8  7C 09 03 A6 */	mtctr r0
lbl_8003496C:
/* 8003496C 000318AC  98 83 00 00 */	stb r4, 0(r3)
/* 80034970 000318B0  38 63 00 01 */	addi r3, r3, 1
/* 80034974 000318B4  42 00 FF F8 */	bdnz lbl_8003496C
/* 80034978 000318B8  48 00 13 11 */	bl setInitEventBit
/* 8003497C 000318BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80034980 000318C0  7C 08 03 A6 */	mtlr r0
/* 80034984 000318C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80034988 000318C8  4E 80 00 20 */	blr 

.global dSv_event_c_NS_onEventBit
dSv_event_c_NS_onEventBit:
/* 8003498C 000318CC  54 86 C6 3E */	rlwinm r6, r4, 0x18, 0x18, 0x1f
/* 80034990 000318D0  7C A3 30 AE */	lbzx r5, r3, r6
/* 80034994 000318D4  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80034998 000318D8  7C A0 03 78 */	or r0, r5, r0
/* 8003499C 000318DC  7C 03 31 AE */	stbx r0, r3, r6
/* 800349A0 000318E0  4E 80 00 20 */	blr 

.global dSv_event_c_NS_offEventBit
dSv_event_c_NS_offEventBit:
/* 800349A4 000318E4  54 86 C6 3E */	rlwinm r6, r4, 0x18, 0x18, 0x1f
/* 800349A8 000318E8  7C A3 30 AE */	lbzx r5, r3, r6
/* 800349AC 000318EC  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 800349B0 000318F0  7C A0 00 78 */	andc r0, r5, r0
/* 800349B4 000318F4  7C 03 31 AE */	stbx r0, r3, r6
/* 800349B8 000318F8  4E 80 00 20 */	blr 

.global dSv_event_c_NS_isEventBit
dSv_event_c_NS_isEventBit:
/* 800349BC 000318FC  54 85 06 3E */	clrlwi r5, r4, 0x18
/* 800349C0 00031900  54 80 C6 3E */	rlwinm r0, r4, 0x18, 0x18, 0x1f
/* 800349C4 00031904  7C 03 00 AE */	lbzx r0, r3, r0
/* 800349C8 00031908  7C A0 00 39 */	and. r0, r5, r0
/* 800349CC 0003190C  41 82 00 0C */	beq lbl_800349D8
/* 800349D0 00031910  38 60 00 01 */	li r3, 1
/* 800349D4 00031914  4E 80 00 20 */	blr 
lbl_800349D8:
/* 800349D8 00031918  38 60 00 00 */	li r3, 0
/* 800349DC 0003191C  4E 80 00 20 */	blr 

.global dSv_event_c_NS_setEventReg
dSv_event_c_NS_setEventReg:
/* 800349E0 00031920  54 87 C6 3E */	rlwinm r7, r4, 0x18, 0x18, 0x1f
/* 800349E4 00031924  7C C3 38 AE */	lbzx r6, r3, r7
/* 800349E8 00031928  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 800349EC 0003192C  7C C0 00 78 */	andc r0, r6, r0
/* 800349F0 00031930  7C 03 39 AE */	stbx r0, r3, r7
/* 800349F4 00031934  7C 03 38 AE */	lbzx r0, r3, r7
/* 800349F8 00031938  7C 00 2B 78 */	or r0, r0, r5
/* 800349FC 0003193C  7C 03 39 AE */	stbx r0, r3, r7
/* 80034A00 00031940  4E 80 00 20 */	blr 

.global dSv_event_c_NS_getEventReg
dSv_event_c_NS_getEventReg:
/* 80034A04 00031944  54 85 06 3E */	clrlwi r5, r4, 0x18
/* 80034A08 00031948  54 80 C6 3E */	rlwinm r0, r4, 0x18, 0x18, 0x1f
/* 80034A0C 0003194C  7C 03 00 AE */	lbzx r0, r3, r0
/* 80034A10 00031950  7C A0 00 38 */	and r0, r5, r0
/* 80034A14 00031954  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80034A18 00031958  4E 80 00 20 */	blr 

.global dSv_MiniGame_c_NS_init
dSv_MiniGame_c_NS_init:
/* 80034A1C 0003195C  38 80 00 00 */	li r4, 0
/* 80034A20 00031960  98 83 00 00 */	stb r4, 0(r3)
/* 80034A24 00031964  38 A0 00 00 */	li r5, 0
/* 80034A28 00031968  38 00 00 03 */	li r0, 3
/* 80034A2C 0003196C  7C 09 03 A6 */	mtctr r0
lbl_80034A30:
/* 80034A30 00031970  38 05 00 01 */	addi r0, r5, 1
/* 80034A34 00031974  7C 83 01 AE */	stbx r4, r3, r0
/* 80034A38 00031978  38 A5 00 01 */	addi r5, r5, 1
/* 80034A3C 0003197C  42 00 FF F4 */	bdnz lbl_80034A30
/* 80034A40 00031980  3C 80 00 02 */	lis r4, 0x0001D4C0@ha
/* 80034A44 00031984  38 04 D4 C0 */	addi r0, r4, 0x0001D4C0@l
/* 80034A48 00031988  90 03 00 04 */	stw r0, 4(r3)
/* 80034A4C 0003198C  38 00 00 00 */	li r0, 0
/* 80034A50 00031990  90 03 00 08 */	stw r0, 8(r3)
/* 80034A54 00031994  90 03 00 0C */	stw r0, 0xc(r3)
/* 80034A58 00031998  90 03 00 10 */	stw r0, 0x10(r3)
/* 80034A5C 0003199C  90 03 00 14 */	stw r0, 0x14(r3)
/* 80034A60 000319A0  4E 80 00 20 */	blr 

.global dSv_memory_c_NS_init
dSv_memory_c_NS_init:
/* 80034A64 000319A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80034A68 000319A8  7C 08 02 A6 */	mflr r0
/* 80034A6C 000319AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80034A70 000319B0  4B FF FC E1 */	bl dSv_memBit_c_NS_init
/* 80034A74 000319B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80034A78 000319B8  7C 08 03 A6 */	mtlr r0
/* 80034A7C 000319BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80034A80 000319C0  4E 80 00 20 */	blr 

.global dSv_memory2_c_NS_init
dSv_memory2_c_NS_init:
/* 80034A84 000319C4  38 80 00 00 */	li r4, 0
/* 80034A88 000319C8  7C 85 23 78 */	mr r5, r4
/* 80034A8C 000319CC  38 00 00 02 */	li r0, 2
/* 80034A90 000319D0  7C 09 03 A6 */	mtctr r0
lbl_80034A94:
/* 80034A94 000319D4  7C A3 21 2E */	stwx r5, r3, r4
/* 80034A98 000319D8  38 84 00 04 */	addi r4, r4, 4
/* 80034A9C 000319DC  42 00 FF F8 */	bdnz lbl_80034A94
/* 80034AA0 000319E0  4E 80 00 20 */	blr 

.global dSv_memory2_c_NS_onVisitedRoom
dSv_memory2_c_NS_onVisitedRoom:
/* 80034AA4 000319E4  7C 80 2E 70 */	srawi r0, r4, 5
/* 80034AA8 000319E8  54 07 10 3A */	slwi r7, r0, 2
/* 80034AAC 000319EC  7C C3 38 2E */	lwzx r6, r3, r7
/* 80034AB0 000319F0  38 A0 00 01 */	li r5, 1
/* 80034AB4 000319F4  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 80034AB8 000319F8  7C A0 00 30 */	slw r0, r5, r0
/* 80034ABC 000319FC  7C C0 03 78 */	or r0, r6, r0
/* 80034AC0 00031A00  7C 03 39 2E */	stwx r0, r3, r7
/* 80034AC4 00031A04  4E 80 00 20 */	blr 

.global dSv_memory2_c_NS_offVisitedRoom
dSv_memory2_c_NS_offVisitedRoom:
/* 80034AC8 00031A08  7C 80 2E 70 */	srawi r0, r4, 5
/* 80034ACC 00031A0C  54 07 10 3A */	slwi r7, r0, 2
/* 80034AD0 00031A10  7C C3 38 2E */	lwzx r6, r3, r7
/* 80034AD4 00031A14  38 A0 00 01 */	li r5, 1
/* 80034AD8 00031A18  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 80034ADC 00031A1C  7C A0 00 30 */	slw r0, r5, r0
/* 80034AE0 00031A20  7C C0 00 78 */	andc r0, r6, r0
/* 80034AE4 00031A24  7C 03 39 2E */	stwx r0, r3, r7
/* 80034AE8 00031A28  4E 80 00 20 */	blr 

.global dSv_memory2_c_NS_isVisitedRoom
dSv_memory2_c_NS_isVisitedRoom:
/* 80034AEC 00031A2C  38 A0 00 01 */	li r5, 1
/* 80034AF0 00031A30  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 80034AF4 00031A34  7C A5 00 30 */	slw r5, r5, r0
/* 80034AF8 00031A38  7C 80 2E 70 */	srawi r0, r4, 5
/* 80034AFC 00031A3C  54 00 10 3A */	slwi r0, r0, 2
/* 80034B00 00031A40  7C 03 00 2E */	lwzx r0, r3, r0
/* 80034B04 00031A44  7C A3 00 38 */	and r3, r5, r0
/* 80034B08 00031A48  30 03 FF FF */	addic r0, r3, -1
/* 80034B0C 00031A4C  7C 60 19 10 */	subfe r3, r0, r3
/* 80034B10 00031A50  4E 80 00 20 */	blr 

.global dSv_danBit_c_NS_init
dSv_danBit_c_NS_init:
/* 80034B14 00031A54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80034B18 00031A58  7C 08 02 A6 */	mflr r0
/* 80034B1C 00031A5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80034B20 00031A60  7C 85 07 74 */	extsb r5, r4
/* 80034B24 00031A64  88 03 00 00 */	lbz r0, 0(r3)
/* 80034B28 00031A68  7C 00 07 74 */	extsb r0, r0
/* 80034B2C 00031A6C  7C 05 00 00 */	cmpw r5, r0
/* 80034B30 00031A70  41 82 00 50 */	beq lbl_80034B80
/* 80034B34 00031A74  38 A0 00 00 */	li r5, 0
/* 80034B38 00031A78  90 A3 00 04 */	stw r5, 4(r3)
/* 80034B3C 00031A7C  90 A3 00 08 */	stw r5, 8(r3)
/* 80034B40 00031A80  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80034B44 00031A84  90 A3 00 10 */	stw r5, 0x10(r3)
/* 80034B48 00031A88  90 A3 00 14 */	stw r5, 0x14(r3)
/* 80034B4C 00031A8C  90 A3 00 18 */	stw r5, 0x18(r3)
/* 80034B50 00031A90  98 83 00 00 */	stb r4, 0(r3)
/* 80034B54 00031A94  98 A3 00 01 */	stb r5, 1(r3)
/* 80034B58 00031A98  38 80 FF FF */	li r4, -1
/* 80034B5C 00031A9C  38 00 00 10 */	li r0, 0x10
/* 80034B60 00031AA0  7C 09 03 A6 */	mtctr r0
lbl_80034B64:
/* 80034B64 00031AA4  38 05 00 1C */	addi r0, r5, 0x1c
/* 80034B68 00031AA8  7C 83 03 2E */	sthx r4, r3, r0
/* 80034B6C 00031AAC  38 A5 00 02 */	addi r5, r5, 2
/* 80034B70 00031AB0  42 00 FF F4 */	bdnz lbl_80034B64
/* 80034B74 00031AB4  4B FF D1 85 */	bl daObjCarry_c_NS_clrSaveFlag
/* 80034B78 00031AB8  38 60 00 01 */	li r3, 1
/* 80034B7C 00031ABC  48 00 00 0C */	b lbl_80034B88
lbl_80034B80:
/* 80034B80 00031AC0  4B FF D1 85 */	bl daObjCarry_c_NS_setSaveFlag
/* 80034B84 00031AC4  38 60 00 00 */	li r3, 0
lbl_80034B88:
/* 80034B88 00031AC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80034B8C 00031ACC  7C 08 03 A6 */	mtlr r0
/* 80034B90 00031AD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80034B94 00031AD4  4E 80 00 20 */	blr 

.global dSv_danBit_c_NS_onSwitch
dSv_danBit_c_NS_onSwitch:
/* 80034B98 00031AD8  7C 80 2E 70 */	srawi r0, r4, 5
/* 80034B9C 00031ADC  54 00 10 3A */	slwi r0, r0, 2
/* 80034BA0 00031AE0  7C C3 02 14 */	add r6, r3, r0
/* 80034BA4 00031AE4  80 A6 00 04 */	lwz r5, 4(r6)
/* 80034BA8 00031AE8  38 60 00 01 */	li r3, 1
/* 80034BAC 00031AEC  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 80034BB0 00031AF0  7C 60 00 30 */	slw r0, r3, r0
/* 80034BB4 00031AF4  7C A0 03 78 */	or r0, r5, r0
/* 80034BB8 00031AF8  90 06 00 04 */	stw r0, 4(r6)
/* 80034BBC 00031AFC  4E 80 00 20 */	blr 

.global dSv_danBit_c_NS_offSwitch
dSv_danBit_c_NS_offSwitch:
/* 80034BC0 00031B00  7C 80 2E 70 */	srawi r0, r4, 5
/* 80034BC4 00031B04  54 00 10 3A */	slwi r0, r0, 2
/* 80034BC8 00031B08  7C C3 02 14 */	add r6, r3, r0
/* 80034BCC 00031B0C  80 A6 00 04 */	lwz r5, 4(r6)
/* 80034BD0 00031B10  38 60 00 01 */	li r3, 1
/* 80034BD4 00031B14  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 80034BD8 00031B18  7C 60 00 30 */	slw r0, r3, r0
/* 80034BDC 00031B1C  7C A0 00 78 */	andc r0, r5, r0
/* 80034BE0 00031B20  90 06 00 04 */	stw r0, 4(r6)
/* 80034BE4 00031B24  4E 80 00 20 */	blr 

.global dSv_danBit_c_NS_isSwitch
dSv_danBit_c_NS_isSwitch:
/* 80034BE8 00031B28  7C 80 2E 70 */	srawi r0, r4, 5
/* 80034BEC 00031B2C  54 00 10 3A */	slwi r0, r0, 2
/* 80034BF0 00031B30  7C 63 02 14 */	add r3, r3, r0
/* 80034BF4 00031B34  80 A3 00 04 */	lwz r5, 4(r3)
/* 80034BF8 00031B38  38 60 00 01 */	li r3, 1
/* 80034BFC 00031B3C  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 80034C00 00031B40  7C 60 00 30 */	slw r0, r3, r0
/* 80034C04 00031B44  7C A3 00 38 */	and r3, r5, r0
/* 80034C08 00031B48  30 03 FF FF */	addic r0, r3, -1
/* 80034C0C 00031B4C  7C 60 19 10 */	subfe r3, r0, r3
/* 80034C10 00031B50  4E 80 00 20 */	blr 

.global dSv_danBit_c_NS_revSwitch
dSv_danBit_c_NS_revSwitch:
/* 80034C14 00031B54  38 A0 00 01 */	li r5, 1
/* 80034C18 00031B58  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 80034C1C 00031B5C  7C A5 00 30 */	slw r5, r5, r0
/* 80034C20 00031B60  7C 80 2E 70 */	srawi r0, r4, 5
/* 80034C24 00031B64  54 00 10 3A */	slwi r0, r0, 2
/* 80034C28 00031B68  7C 63 02 14 */	add r3, r3, r0
/* 80034C2C 00031B6C  80 03 00 04 */	lwz r0, 4(r3)
/* 80034C30 00031B70  7C 00 2A 78 */	xor r0, r0, r5
/* 80034C34 00031B74  90 03 00 04 */	stw r0, 4(r3)
/* 80034C38 00031B78  80 03 00 04 */	lwz r0, 4(r3)
/* 80034C3C 00031B7C  7C 03 28 38 */	and r3, r0, r5
/* 80034C40 00031B80  30 03 FF FF */	addic r0, r3, -1
/* 80034C44 00031B84  7C 60 19 10 */	subfe r3, r0, r3
/* 80034C48 00031B88  4E 80 00 20 */	blr 

.global dSv_danBit_c_NS_onItem
dSv_danBit_c_NS_onItem:
/* 80034C4C 00031B8C  7C 80 2E 70 */	srawi r0, r4, 5
/* 80034C50 00031B90  54 00 10 3A */	slwi r0, r0, 2
/* 80034C54 00031B94  7C C3 02 14 */	add r6, r3, r0
/* 80034C58 00031B98  80 A6 00 0C */	lwz r5, 0xc(r6)
/* 80034C5C 00031B9C  38 60 00 01 */	li r3, 1
/* 80034C60 00031BA0  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 80034C64 00031BA4  7C 60 00 30 */	slw r0, r3, r0
/* 80034C68 00031BA8  7C A0 03 78 */	or r0, r5, r0
/* 80034C6C 00031BAC  90 06 00 0C */	stw r0, 0xc(r6)
/* 80034C70 00031BB0  4E 80 00 20 */	blr 

.global dSv_danBit_c_NS_isItem
dSv_danBit_c_NS_isItem:
/* 80034C74 00031BB4  7C 80 2E 70 */	srawi r0, r4, 5
/* 80034C78 00031BB8  54 00 10 3A */	slwi r0, r0, 2
/* 80034C7C 00031BBC  7C 63 02 14 */	add r3, r3, r0
/* 80034C80 00031BC0  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 80034C84 00031BC4  38 60 00 01 */	li r3, 1
/* 80034C88 00031BC8  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 80034C8C 00031BCC  7C 60 00 30 */	slw r0, r3, r0
/* 80034C90 00031BD0  7C A3 00 38 */	and r3, r5, r0
/* 80034C94 00031BD4  30 03 FF FF */	addic r0, r3, -1
/* 80034C98 00031BD8  7C 60 19 10 */	subfe r3, r0, r3
/* 80034C9C 00031BDC  4E 80 00 20 */	blr 

.global dSv_zoneBit_c_NS_init
dSv_zoneBit_c_NS_init:
/* 80034CA0 00031BE0  38 80 00 00 */	li r4, 0
/* 80034CA4 00031BE4  7C 85 23 78 */	mr r5, r4
/* 80034CA8 00031BE8  38 00 00 02 */	li r0, 2
/* 80034CAC 00031BEC  7C 09 03 A6 */	mtctr r0
lbl_80034CB0:
/* 80034CB0 00031BF0  7C A3 23 2E */	sthx r5, r3, r4
/* 80034CB4 00031BF4  38 84 00 02 */	addi r4, r4, 2
/* 80034CB8 00031BF8  42 00 FF F8 */	bdnz lbl_80034CB0
/* 80034CBC 00031BFC  38 80 00 00 */	li r4, 0
/* 80034CC0 00031C00  38 A0 00 00 */	li r5, 0
/* 80034CC4 00031C04  38 00 00 02 */	li r0, 2
/* 80034CC8 00031C08  7C 09 03 A6 */	mtctr r0
lbl_80034CCC:
/* 80034CCC 00031C0C  38 04 00 06 */	addi r0, r4, 6
/* 80034CD0 00031C10  7C A3 03 2E */	sthx r5, r3, r0
/* 80034CD4 00031C14  38 84 00 02 */	addi r4, r4, 2
/* 80034CD8 00031C18  42 00 FF F4 */	bdnz lbl_80034CCC
/* 80034CDC 00031C1C  38 00 00 00 */	li r0, 0
/* 80034CE0 00031C20  B0 03 00 04 */	sth r0, 4(r3)
/* 80034CE4 00031C24  B0 03 00 0A */	sth r0, 0xa(r3)
/* 80034CE8 00031C28  4E 80 00 20 */	blr 

.global dSv_zoneBit_c_NS_clearRoomSwitch
dSv_zoneBit_c_NS_clearRoomSwitch:
/* 80034CEC 00031C2C  38 00 00 00 */	li r0, 0
/* 80034CF0 00031C30  B0 03 00 04 */	sth r0, 4(r3)
/* 80034CF4 00031C34  4E 80 00 20 */	blr 

.global dSv_zoneBit_c_NS_clearRoomItem
dSv_zoneBit_c_NS_clearRoomItem:
/* 80034CF8 00031C38  38 00 00 00 */	li r0, 0
/* 80034CFC 00031C3C  B0 03 00 0A */	sth r0, 0xa(r3)
/* 80034D00 00031C40  4E 80 00 20 */	blr 

.global dSv_zoneBit_c_NS_onSwitch
dSv_zoneBit_c_NS_onSwitch:
/* 80034D04 00031C44  7C 80 26 70 */	srawi r0, r4, 4
/* 80034D08 00031C48  54 07 08 3C */	slwi r7, r0, 1
/* 80034D0C 00031C4C  7C C3 3A 2E */	lhzx r6, r3, r7
/* 80034D10 00031C50  38 A0 00 01 */	li r5, 1
/* 80034D14 00031C54  54 80 07 3E */	clrlwi r0, r4, 0x1c
/* 80034D18 00031C58  7C A0 00 30 */	slw r0, r5, r0
/* 80034D1C 00031C5C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80034D20 00031C60  7C C0 03 78 */	or r0, r6, r0
/* 80034D24 00031C64  7C 03 3B 2E */	sthx r0, r3, r7
/* 80034D28 00031C68  4E 80 00 20 */	blr 

.global dSv_zoneBit_c_NS_offSwitch
dSv_zoneBit_c_NS_offSwitch:
/* 80034D2C 00031C6C  7C 80 26 70 */	srawi r0, r4, 4
/* 80034D30 00031C70  54 07 08 3C */	slwi r7, r0, 1
/* 80034D34 00031C74  7C C3 3A 2E */	lhzx r6, r3, r7
/* 80034D38 00031C78  38 A0 00 01 */	li r5, 1
/* 80034D3C 00031C7C  54 80 07 3E */	clrlwi r0, r4, 0x1c
/* 80034D40 00031C80  7C A0 00 30 */	slw r0, r5, r0
/* 80034D44 00031C84  7C C0 00 78 */	andc r0, r6, r0
/* 80034D48 00031C88  7C 03 3B 2E */	sthx r0, r3, r7
/* 80034D4C 00031C8C  4E 80 00 20 */	blr 

.global dSv_zoneBit_c_NS_isSwitch
dSv_zoneBit_c_NS_isSwitch:
/* 80034D50 00031C90  38 A0 00 01 */	li r5, 1
/* 80034D54 00031C94  54 80 07 3E */	clrlwi r0, r4, 0x1c
/* 80034D58 00031C98  7C A5 00 30 */	slw r5, r5, r0
/* 80034D5C 00031C9C  7C 80 26 70 */	srawi r0, r4, 4
/* 80034D60 00031CA0  54 00 08 3C */	slwi r0, r0, 1
/* 80034D64 00031CA4  7C 03 02 2E */	lhzx r0, r3, r0
/* 80034D68 00031CA8  7C A3 00 38 */	and r3, r5, r0
/* 80034D6C 00031CAC  30 03 FF FF */	addic r0, r3, -1
/* 80034D70 00031CB0  7C 60 19 10 */	subfe r3, r0, r3
/* 80034D74 00031CB4  4E 80 00 20 */	blr 

.global dSv_zoneBit_c_NS_revSwitch
dSv_zoneBit_c_NS_revSwitch:
/* 80034D78 00031CB8  7C 86 26 70 */	srawi r6, r4, 4
/* 80034D7C 00031CBC  38 A0 00 01 */	li r5, 1
/* 80034D80 00031CC0  54 80 07 3E */	clrlwi r0, r4, 0x1c
/* 80034D84 00031CC4  7C A5 00 30 */	slw r5, r5, r0
/* 80034D88 00031CC8  54 C4 08 3C */	slwi r4, r6, 1
/* 80034D8C 00031CCC  7C 03 22 2E */	lhzx r0, r3, r4
/* 80034D90 00031CD0  7C 00 2A 78 */	xor r0, r0, r5
/* 80034D94 00031CD4  7C 03 23 2E */	sthx r0, r3, r4
/* 80034D98 00031CD8  7C 03 22 2E */	lhzx r0, r3, r4
/* 80034D9C 00031CDC  7C A3 00 38 */	and r3, r5, r0
/* 80034DA0 00031CE0  30 03 FF FF */	addic r0, r3, -1
/* 80034DA4 00031CE4  7C 60 19 10 */	subfe r3, r0, r3
/* 80034DA8 00031CE8  4E 80 00 20 */	blr 

.global dSv_zoneBit_c_NS_onOneSwitch
dSv_zoneBit_c_NS_onOneSwitch:
/* 80034DAC 00031CEC  A0 A3 00 04 */	lhz r5, 4(r3)
/* 80034DB0 00031CF0  38 00 00 01 */	li r0, 1
/* 80034DB4 00031CF4  7C 00 20 30 */	slw r0, r0, r4
/* 80034DB8 00031CF8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80034DBC 00031CFC  7C A0 03 78 */	or r0, r5, r0
/* 80034DC0 00031D00  B0 03 00 04 */	sth r0, 4(r3)
/* 80034DC4 00031D04  4E 80 00 20 */	blr 

.global dSv_zoneBit_c_NS_offOneSwitch
dSv_zoneBit_c_NS_offOneSwitch:
/* 80034DC8 00031D08  A0 A3 00 04 */	lhz r5, 4(r3)
/* 80034DCC 00031D0C  38 00 00 01 */	li r0, 1
/* 80034DD0 00031D10  7C 00 20 30 */	slw r0, r0, r4
/* 80034DD4 00031D14  7C A0 00 78 */	andc r0, r5, r0
/* 80034DD8 00031D18  B0 03 00 04 */	sth r0, 4(r3)
/* 80034DDC 00031D1C  4E 80 00 20 */	blr 

.global dSv_zoneBit_c_NS_isOneSwitch
dSv_zoneBit_c_NS_isOneSwitch:
/* 80034DE0 00031D20  A0 63 00 04 */	lhz r3, 4(r3)
/* 80034DE4 00031D24  38 00 00 01 */	li r0, 1
/* 80034DE8 00031D28  7C 00 20 30 */	slw r0, r0, r4
/* 80034DEC 00031D2C  7C 63 00 38 */	and r3, r3, r0
/* 80034DF0 00031D30  30 03 FF FF */	addic r0, r3, -1
/* 80034DF4 00031D34  7C 60 19 10 */	subfe r3, r0, r3
/* 80034DF8 00031D38  4E 80 00 20 */	blr 

.global dSv_zoneBit_c_NS_revOneSwitch
dSv_zoneBit_c_NS_revOneSwitch:
/* 80034DFC 00031D3C  38 00 00 01 */	li r0, 1
/* 80034E00 00031D40  7C 04 20 30 */	slw r4, r0, r4
/* 80034E04 00031D44  A0 03 00 04 */	lhz r0, 4(r3)
/* 80034E08 00031D48  7C 00 22 78 */	xor r0, r0, r4
/* 80034E0C 00031D4C  B0 03 00 04 */	sth r0, 4(r3)
/* 80034E10 00031D50  A0 03 00 04 */	lhz r0, 4(r3)
/* 80034E14 00031D54  7C 03 20 38 */	and r3, r0, r4
/* 80034E18 00031D58  30 03 FF FF */	addic r0, r3, -1
/* 80034E1C 00031D5C  7C 60 19 10 */	subfe r3, r0, r3
/* 80034E20 00031D60  4E 80 00 20 */	blr 

.global dSv_zoneBit_c_NS_onItem
dSv_zoneBit_c_NS_onItem:
/* 80034E24 00031D64  7C 80 26 70 */	srawi r0, r4, 4
/* 80034E28 00031D68  54 00 08 3C */	slwi r0, r0, 1
/* 80034E2C 00031D6C  7C C3 02 14 */	add r6, r3, r0
/* 80034E30 00031D70  A0 A6 00 06 */	lhz r5, 6(r6)
/* 80034E34 00031D74  38 60 00 01 */	li r3, 1
/* 80034E38 00031D78  54 80 07 3E */	clrlwi r0, r4, 0x1c
/* 80034E3C 00031D7C  7C 60 00 30 */	slw r0, r3, r0
/* 80034E40 00031D80  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80034E44 00031D84  7C A0 03 78 */	or r0, r5, r0
/* 80034E48 00031D88  B0 06 00 06 */	sth r0, 6(r6)
/* 80034E4C 00031D8C  4E 80 00 20 */	blr 

.global dSv_zoneBit_c_NS_isItem
dSv_zoneBit_c_NS_isItem:
/* 80034E50 00031D90  7C 80 26 70 */	srawi r0, r4, 4
/* 80034E54 00031D94  54 00 08 3C */	slwi r0, r0, 1
/* 80034E58 00031D98  7C 63 02 14 */	add r3, r3, r0
/* 80034E5C 00031D9C  A0 A3 00 06 */	lhz r5, 6(r3)
/* 80034E60 00031DA0  38 60 00 01 */	li r3, 1
/* 80034E64 00031DA4  54 80 07 3E */	clrlwi r0, r4, 0x1c
/* 80034E68 00031DA8  7C 60 00 30 */	slw r0, r3, r0
/* 80034E6C 00031DAC  7C A3 00 38 */	and r3, r5, r0
/* 80034E70 00031DB0  30 03 FF FF */	addic r0, r3, -1
/* 80034E74 00031DB4  7C 60 19 10 */	subfe r3, r0, r3
/* 80034E78 00031DB8  4E 80 00 20 */	blr 

.global dSv_zoneBit_c_NS_onOneItem
dSv_zoneBit_c_NS_onOneItem:
/* 80034E7C 00031DBC  A0 A3 00 0A */	lhz r5, 0xa(r3)
/* 80034E80 00031DC0  38 00 00 01 */	li r0, 1
/* 80034E84 00031DC4  7C 00 20 30 */	slw r0, r0, r4
/* 80034E88 00031DC8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80034E8C 00031DCC  7C A0 03 78 */	or r0, r5, r0
/* 80034E90 00031DD0  B0 03 00 0A */	sth r0, 0xa(r3)
/* 80034E94 00031DD4  4E 80 00 20 */	blr 

.global dSv_zoneBit_c_NS_isOneItem
dSv_zoneBit_c_NS_isOneItem:
/* 80034E98 00031DD8  A0 63 00 0A */	lhz r3, 0xa(r3)
/* 80034E9C 00031DDC  38 00 00 01 */	li r0, 1
/* 80034EA0 00031DE0  7C 00 20 30 */	slw r0, r0, r4
/* 80034EA4 00031DE4  7C 63 00 38 */	and r3, r3, r0
/* 80034EA8 00031DE8  30 03 FF FF */	addic r0, r3, -1
/* 80034EAC 00031DEC  7C 60 19 10 */	subfe r3, r0, r3
/* 80034EB0 00031DF0  4E 80 00 20 */	blr 

.global dSv_zoneActor_c_NS_init
dSv_zoneActor_c_NS_init:
/* 80034EB4 00031DF4  38 80 00 00 */	li r4, 0
/* 80034EB8 00031DF8  7C 85 23 78 */	mr r5, r4
/* 80034EBC 00031DFC  38 00 00 04 */	li r0, 4
/* 80034EC0 00031E00  7C 09 03 A6 */	mtctr r0
lbl_80034EC4:
/* 80034EC4 00031E04  7C A3 21 2E */	stwx r5, r3, r4
/* 80034EC8 00031E08  38 84 00 04 */	addi r4, r4, 4
/* 80034ECC 00031E0C  42 00 FF F8 */	bdnz lbl_80034EC4
/* 80034ED0 00031E10  4E 80 00 20 */	blr 

.global dSv_zoneActor_c_NS_on
dSv_zoneActor_c_NS_on:
/* 80034ED4 00031E14  7C 80 2E 70 */	srawi r0, r4, 5
/* 80034ED8 00031E18  54 07 10 3A */	slwi r7, r0, 2
/* 80034EDC 00031E1C  7C C3 38 2E */	lwzx r6, r3, r7
/* 80034EE0 00031E20  38 A0 00 01 */	li r5, 1
/* 80034EE4 00031E24  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 80034EE8 00031E28  7C A0 00 30 */	slw r0, r5, r0
/* 80034EEC 00031E2C  7C C0 03 78 */	or r0, r6, r0
/* 80034EF0 00031E30  7C 03 39 2E */	stwx r0, r3, r7
/* 80034EF4 00031E34  4E 80 00 20 */	blr 

.global dSv_zoneActor_c_NS_off
dSv_zoneActor_c_NS_off:
/* 80034EF8 00031E38  7C 80 2E 70 */	srawi r0, r4, 5
/* 80034EFC 00031E3C  54 07 10 3A */	slwi r7, r0, 2
/* 80034F00 00031E40  7C C3 38 2E */	lwzx r6, r3, r7
/* 80034F04 00031E44  38 A0 00 01 */	li r5, 1
/* 80034F08 00031E48  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 80034F0C 00031E4C  7C A0 00 30 */	slw r0, r5, r0
/* 80034F10 00031E50  7C C0 00 78 */	andc r0, r6, r0
/* 80034F14 00031E54  7C 03 39 2E */	stwx r0, r3, r7
/* 80034F18 00031E58  4E 80 00 20 */	blr 

.global dSv_zoneActor_c_NS_is
dSv_zoneActor_c_NS_is:
/* 80034F1C 00031E5C  38 A0 00 01 */	li r5, 1
/* 80034F20 00031E60  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 80034F24 00031E64  7C A5 00 30 */	slw r5, r5, r0
/* 80034F28 00031E68  7C 80 2E 70 */	srawi r0, r4, 5
/* 80034F2C 00031E6C  54 00 10 3A */	slwi r0, r0, 2
/* 80034F30 00031E70  7C 03 00 2E */	lwzx r0, r3, r0
/* 80034F34 00031E74  7C A3 00 38 */	and r3, r5, r0
/* 80034F38 00031E78  30 03 FF FF */	addic r0, r3, -1
/* 80034F3C 00031E7C  7C 60 19 10 */	subfe r3, r0, r3
/* 80034F40 00031E80  4E 80 00 20 */	blr 

.global dSv_zone_c_NS_init
dSv_zone_c_NS_init:
/* 80034F44 00031E84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80034F48 00031E88  7C 08 02 A6 */	mflr r0
/* 80034F4C 00031E8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80034F50 00031E90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80034F54 00031E94  7C 7F 1B 78 */	mr r31, r3
/* 80034F58 00031E98  98 83 00 00 */	stb r4, 0(r3)
/* 80034F5C 00031E9C  38 7F 00 02 */	addi r3, r31, 2
/* 80034F60 00031EA0  4B FF FD 41 */	bl dSv_zoneBit_c_NS_init
/* 80034F64 00031EA4  38 7F 00 10 */	addi r3, r31, 0x10
/* 80034F68 00031EA8  4B FF FF 4D */	bl dSv_zoneActor_c_NS_init
/* 80034F6C 00031EAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80034F70 00031EB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80034F74 00031EB4  7C 08 03 A6 */	mtlr r0
/* 80034F78 00031EB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80034F7C 00031EBC  4E 80 00 20 */	blr 

.global dSv_restart_c_NS_setRoom
dSv_restart_c_NS_setRoom:
/* 80034F80 00031EC0  98 C3 00 00 */	stb r6, 0(r3)
/* 80034F84 00031EC4  C0 04 00 00 */	lfs f0, 0(r4)
/* 80034F88 00031EC8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80034F8C 00031ECC  C0 04 00 04 */	lfs f0, 4(r4)
/* 80034F90 00031ED0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80034F94 00031ED4  C0 04 00 08 */	lfs f0, 8(r4)
/* 80034F98 00031ED8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80034F9C 00031EDC  B0 A3 00 06 */	sth r5, 6(r3)
/* 80034FA0 00031EE0  4E 80 00 20 */	blr 

.global dSv_turnRestart_c_NS_set
dSv_turnRestart_c_NS_set:
/* 80034FA4 00031EE4  C0 04 00 00 */	lfs f0, 0(r4)
/* 80034FA8 00031EE8  D0 03 00 00 */	stfs f0, 0(r3)
/* 80034FAC 00031EEC  C0 04 00 04 */	lfs f0, 4(r4)
/* 80034FB0 00031EF0  D0 03 00 04 */	stfs f0, 4(r3)
/* 80034FB4 00031EF4  C0 04 00 08 */	lfs f0, 8(r4)
/* 80034FB8 00031EF8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80034FBC 00031EFC  B0 A3 00 10 */	sth r5, 0x10(r3)
/* 80034FC0 00031F00  98 C3 00 12 */	stb r6, 0x12(r3)
/* 80034FC4 00031F04  90 E3 00 0C */	stw r7, 0xc(r3)
/* 80034FC8 00031F08  4E 80 00 20 */	blr 

.global dSv_info_c_NS_init
dSv_info_c_NS_init:
/* 80034FCC 00031F0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80034FD0 00031F10  7C 08 02 A6 */	mflr r0
/* 80034FD4 00031F14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80034FD8 00031F18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80034FDC 00031F1C  7C 7F 1B 78 */	mr r31, r3
/* 80034FE0 00031F20  48 00 00 3D */	bl dSv_save_c_NS_init
/* 80034FE4 00031F24  38 7F 09 58 */	addi r3, r31, 0x958
/* 80034FE8 00031F28  4B FF FA 7D */	bl dSv_memory_c_NS_init
/* 80034FEC 00031F2C  38 7F 09 78 */	addi r3, r31, 0x978
/* 80034FF0 00031F30  38 80 FF FF */	li r4, -1
/* 80034FF4 00031F34  4B FF FB 21 */	bl dSv_danBit_c_NS_init
/* 80034FF8 00031F38  7F E3 FB 78 */	mr r3, r31
/* 80034FFC 00031F3C  48 00 01 51 */	bl dSv_info_c_NS_initZone
/* 80035000 00031F40  38 7F 0D D8 */	addi r3, r31, 0xdd8
/* 80035004 00031F44  4B FF F9 51 */	bl dSv_event_c_NS_init
/* 80035008 00031F48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003500C 00031F4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80035010 00031F50  7C 08 03 A6 */	mtlr r0
/* 80035014 00031F54  38 21 00 10 */	addi r1, r1, 0x10
/* 80035018 00031F58  4E 80 00 20 */	blr 

.global dSv_save_c_NS_init
dSv_save_c_NS_init:
/* 8003501C 00031F5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80035020 00031F60  7C 08 02 A6 */	mflr r0
/* 80035024 00031F64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80035028 00031F68  39 61 00 20 */	addi r11, r1, 0x20
/* 8003502C 00031F6C  48 32 D1 B1 */	bl _savegpr_29
/* 80035030 00031F70  7C 7D 1B 78 */	mr r29, r3
/* 80035034 00031F74  4B FF F6 71 */	bl dSv_player_c_NS_init
/* 80035038 00031F78  3B C0 00 00 */	li r30, 0
/* 8003503C 00031F7C  3B E0 00 00 */	li r31, 0
lbl_80035040:
/* 80035040 00031F80  38 7F 01 F0 */	addi r3, r31, 0x1f0
/* 80035044 00031F84  7C 7D 1A 14 */	add r3, r29, r3
/* 80035048 00031F88  4B FF FA 1D */	bl dSv_memory_c_NS_init
/* 8003504C 00031F8C  3B DE 00 01 */	addi r30, r30, 1
/* 80035050 00031F90  2C 1E 00 20 */	cmpwi r30, 0x20
/* 80035054 00031F94  3B FF 00 20 */	addi r31, r31, 0x20
/* 80035058 00031F98  41 80 FF E8 */	blt lbl_80035040
/* 8003505C 00031F9C  3B C0 00 00 */	li r30, 0
/* 80035060 00031FA0  3B E0 00 00 */	li r31, 0
lbl_80035064:
/* 80035064 00031FA4  38 7F 05 F0 */	addi r3, r31, 0x5f0
/* 80035068 00031FA8  7C 7D 1A 14 */	add r3, r29, r3
/* 8003506C 00031FAC  4B FF FA 19 */	bl dSv_memory2_c_NS_init
/* 80035070 00031FB0  3B DE 00 01 */	addi r30, r30, 1
/* 80035074 00031FB4  2C 1E 00 40 */	cmpwi r30, 0x40
/* 80035078 00031FB8  3B FF 00 08 */	addi r31, r31, 8
/* 8003507C 00031FBC  41 80 FF E8 */	blt lbl_80035064
/* 80035080 00031FC0  38 7D 07 F0 */	addi r3, r29, 0x7f0
/* 80035084 00031FC4  4B FF F8 D1 */	bl dSv_event_c_NS_init
/* 80035088 00031FC8  38 7D 09 40 */	addi r3, r29, 0x940
/* 8003508C 00031FCC  4B FF F9 91 */	bl dSv_MiniGame_c_NS_init
/* 80035090 00031FD0  39 61 00 20 */	addi r11, r1, 0x20
/* 80035094 00031FD4  48 32 D1 95 */	bl _restgpr_29
/* 80035098 00031FD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003509C 00031FDC  7C 08 03 A6 */	mtlr r0
/* 800350A0 00031FE0  38 21 00 20 */	addi r1, r1, 0x20
/* 800350A4 00031FE4  4E 80 00 20 */	blr 

.global dSv_save_c_NS_getSave2
dSv_save_c_NS_getSave2:
/* 800350A8 00031FE8  7C 60 1B 78 */	mr r0, r3
/* 800350AC 00031FEC  54 83 18 38 */	slwi r3, r4, 3
/* 800350B0 00031FF0  38 63 05 F0 */	addi r3, r3, 0x5f0
/* 800350B4 00031FF4  7C 60 1A 14 */	add r3, r0, r3
/* 800350B8 00031FF8  4E 80 00 20 */	blr 

.global dSv_info_c_NS_getSave
dSv_info_c_NS_getSave:
/* 800350BC 00031FFC  54 84 28 34 */	slwi r4, r4, 5
/* 800350C0 00032000  38 84 01 F0 */	addi r4, r4, 0x1f0
/* 800350C4 00032004  7C 83 22 14 */	add r4, r3, r4
/* 800350C8 00032008  38 A3 09 54 */	addi r5, r3, 0x954
/* 800350CC 0003200C  38 84 FF FC */	addi r4, r4, -4
/* 800350D0 00032010  38 00 00 04 */	li r0, 4
/* 800350D4 00032014  7C 09 03 A6 */	mtctr r0
lbl_800350D8:
/* 800350D8 00032018  80 64 00 04 */	lwz r3, 4(r4)
/* 800350DC 0003201C  84 04 00 08 */	lwzu r0, 8(r4)
/* 800350E0 00032020  90 65 00 04 */	stw r3, 4(r5)
/* 800350E4 00032024  94 05 00 08 */	stwu r0, 8(r5)
/* 800350E8 00032028  42 00 FF F0 */	bdnz lbl_800350D8
/* 800350EC 0003202C  4E 80 00 20 */	blr 

.global dSv_info_c_NS_putSave
dSv_info_c_NS_putSave:
/* 800350F0 00032030  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800350F4 00032034  38 E1 00 04 */	addi r7, r1, 4
/* 800350F8 00032038  38 C3 09 54 */	addi r6, r3, 0x954
/* 800350FC 0003203C  38 00 00 04 */	li r0, 4
/* 80035100 00032040  7C 09 03 A6 */	mtctr r0
lbl_80035104:
/* 80035104 00032044  80 A6 00 04 */	lwz r5, 4(r6)
/* 80035108 00032048  84 06 00 08 */	lwzu r0, 8(r6)
/* 8003510C 0003204C  90 A7 00 04 */	stw r5, 4(r7)
/* 80035110 00032050  94 07 00 08 */	stwu r0, 8(r7)
/* 80035114 00032054  42 00 FF F0 */	bdnz lbl_80035104
/* 80035118 00032058  54 80 28 34 */	slwi r0, r4, 5
/* 8003511C 0003205C  7C 63 02 14 */	add r3, r3, r0
/* 80035120 00032060  38 A3 01 EC */	addi r5, r3, 0x1ec
/* 80035124 00032064  38 81 00 04 */	addi r4, r1, 4
/* 80035128 00032068  38 00 00 04 */	li r0, 4
/* 8003512C 0003206C  7C 09 03 A6 */	mtctr r0
lbl_80035130:
/* 80035130 00032070  80 64 00 04 */	lwz r3, 4(r4)
/* 80035134 00032074  84 04 00 08 */	lwzu r0, 8(r4)
/* 80035138 00032078  90 65 00 04 */	stw r3, 4(r5)
/* 8003513C 0003207C  94 05 00 08 */	stwu r0, 8(r5)
/* 80035140 00032080  42 00 FF F0 */	bdnz lbl_80035130
/* 80035144 00032084  38 21 00 30 */	addi r1, r1, 0x30
/* 80035148 00032088  4E 80 00 20 */	blr 

.global dSv_info_c_NS_initZone
dSv_info_c_NS_initZone:
/* 8003514C 0003208C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80035150 00032090  7C 08 02 A6 */	mflr r0
/* 80035154 00032094  90 01 00 24 */	stw r0, 0x24(r1)
/* 80035158 00032098  39 61 00 20 */	addi r11, r1, 0x20
/* 8003515C 0003209C  48 32 D0 81 */	bl _savegpr_29
/* 80035160 000320A0  7C 7D 1B 78 */	mr r29, r3
/* 80035164 000320A4  3B C0 00 00 */	li r30, 0
/* 80035168 000320A8  3B E0 00 00 */	li r31, 0
lbl_8003516C:
/* 8003516C 000320AC  38 7F 09 B4 */	addi r3, r31, 0x9b4
/* 80035170 000320B0  7C 7D 1A 14 */	add r3, r29, r3
/* 80035174 000320B4  38 80 FF FF */	li r4, -1
/* 80035178 000320B8  4B FF FD CD */	bl dSv_zone_c_NS_init
/* 8003517C 000320BC  3B DE 00 01 */	addi r30, r30, 1
/* 80035180 000320C0  2C 1E 00 20 */	cmpwi r30, 0x20
/* 80035184 000320C4  3B FF 00 20 */	addi r31, r31, 0x20
/* 80035188 000320C8  41 80 FF E4 */	blt lbl_8003516C
/* 8003518C 000320CC  39 61 00 20 */	addi r11, r1, 0x20
/* 80035190 000320D0  48 32 D0 99 */	bl _restgpr_29
/* 80035194 000320D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80035198 000320D8  7C 08 03 A6 */	mtlr r0
/* 8003519C 000320DC  38 21 00 20 */	addi r1, r1, 0x20
/* 800351A0 000320E0  4E 80 00 20 */	blr 

.global dSv_info_c_NS_createZone
dSv_info_c_NS_createZone:
/* 800351A4 000320E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800351A8 000320E8  7C 08 02 A6 */	mflr r0
/* 800351AC 000320EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800351B0 000320F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800351B4 000320F4  38 63 09 B4 */	addi r3, r3, 0x9b4
/* 800351B8 000320F8  3B E0 00 00 */	li r31, 0
/* 800351BC 000320FC  38 00 00 20 */	li r0, 0x20
/* 800351C0 00032100  7C 09 03 A6 */	mtctr r0
lbl_800351C4:
/* 800351C4 00032104  88 03 00 00 */	lbz r0, 0(r3)
/* 800351C8 00032108  7C 00 07 75 */	extsb. r0, r0
/* 800351CC 0003210C  40 80 00 10 */	bge lbl_800351DC
/* 800351D0 00032110  4B FF FD 75 */	bl dSv_zone_c_NS_init
/* 800351D4 00032114  7F E3 FB 78 */	mr r3, r31
/* 800351D8 00032118  48 00 00 14 */	b lbl_800351EC
lbl_800351DC:
/* 800351DC 0003211C  38 63 00 20 */	addi r3, r3, 0x20
/* 800351E0 00032120  3B FF 00 01 */	addi r31, r31, 1
/* 800351E4 00032124  42 00 FF E0 */	bdnz lbl_800351C4
/* 800351E8 00032128  38 60 FF FF */	li r3, -1
lbl_800351EC:
/* 800351EC 0003212C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800351F0 00032130  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800351F4 00032134  7C 08 03 A6 */	mtlr r0
/* 800351F8 00032138  38 21 00 10 */	addi r1, r1, 0x10
/* 800351FC 0003213C  4E 80 00 20 */	blr 

.global dSv_info_c_NS_onSwitch
dSv_info_c_NS_onSwitch:
/* 80035200 00032140  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80035204 00032144  7C 08 02 A6 */	mflr r0
/* 80035208 00032148  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003520C 0003214C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80035210 00032150  93 C1 00 08 */	stw r30, 8(r1)
/* 80035214 00032154  7C 7E 1B 78 */	mr r30, r3
/* 80035218 00032158  7C 9F 23 78 */	mr r31, r4
/* 8003521C 0003215C  2C 1F FF FF */	cmpwi r31, -1
/* 80035220 00032160  41 82 00 78 */	beq lbl_80035298
/* 80035224 00032164  2C 1F 00 FF */	cmpwi r31, 0xff
/* 80035228 00032168  40 82 00 08 */	bne lbl_80035230
/* 8003522C 0003216C  48 00 00 6C */	b lbl_80035298
lbl_80035230:
/* 80035230 00032170  2C 1F 00 80 */	cmpwi r31, 0x80
/* 80035234 00032174  40 80 00 10 */	bge lbl_80035244
/* 80035238 00032178  38 7E 09 58 */	addi r3, r30, 0x958
/* 8003523C 0003217C  4B FF F5 D5 */	bl dSv_memBit_c_NS_onSwitch
/* 80035240 00032180  48 00 00 58 */	b lbl_80035298
lbl_80035244:
/* 80035244 00032184  2C 1F 00 C0 */	cmpwi r31, 0xc0
/* 80035248 00032188  40 80 00 14 */	bge lbl_8003525C
/* 8003524C 0003218C  38 7E 09 78 */	addi r3, r30, 0x978
/* 80035250 00032190  38 9F FF 80 */	addi r4, r31, -128
/* 80035254 00032194  4B FF F9 45 */	bl dSv_danBit_c_NS_onSwitch
/* 80035258 00032198  48 00 00 40 */	b lbl_80035298
lbl_8003525C:
/* 8003525C 0003219C  7C A3 2B 78 */	mr r3, r5
/* 80035260 000321A0  4B FF 87 51 */	bl dStage_roomControl_c_NS_getZoneNo
/* 80035264 000321A4  2C 1F 00 E0 */	cmpwi r31, 0xe0
/* 80035268 000321A8  40 80 00 1C */	bge lbl_80035284
/* 8003526C 000321AC  54 63 28 34 */	slwi r3, r3, 5
/* 80035270 000321B0  38 63 09 B6 */	addi r3, r3, 0x9b6
/* 80035274 000321B4  7C 7E 1A 14 */	add r3, r30, r3
/* 80035278 000321B8  38 9F FF 40 */	addi r4, r31, -192
/* 8003527C 000321BC  4B FF FA 89 */	bl dSv_zoneBit_c_NS_onSwitch
/* 80035280 000321C0  48 00 00 18 */	b lbl_80035298
lbl_80035284:
/* 80035284 000321C4  54 63 28 34 */	slwi r3, r3, 5
/* 80035288 000321C8  38 63 09 B6 */	addi r3, r3, 0x9b6
/* 8003528C 000321CC  7C 7E 1A 14 */	add r3, r30, r3
/* 80035290 000321D0  38 9F FF 20 */	addi r4, r31, -224
/* 80035294 000321D4  4B FF FB 19 */	bl dSv_zoneBit_c_NS_onOneSwitch
lbl_80035298:
/* 80035298 000321D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003529C 000321DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800352A0 000321E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800352A4 000321E4  7C 08 03 A6 */	mtlr r0
/* 800352A8 000321E8  38 21 00 10 */	addi r1, r1, 0x10
/* 800352AC 000321EC  4E 80 00 20 */	blr 

.global dSv_info_c_NS_offSwitch
dSv_info_c_NS_offSwitch:
/* 800352B0 000321F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800352B4 000321F4  7C 08 02 A6 */	mflr r0
/* 800352B8 000321F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800352BC 000321FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800352C0 00032200  93 C1 00 08 */	stw r30, 8(r1)
/* 800352C4 00032204  7C 7E 1B 78 */	mr r30, r3
/* 800352C8 00032208  7C 9F 23 78 */	mr r31, r4
/* 800352CC 0003220C  2C 1F FF FF */	cmpwi r31, -1
/* 800352D0 00032210  41 82 00 78 */	beq lbl_80035348
/* 800352D4 00032214  2C 1F 00 FF */	cmpwi r31, 0xff
/* 800352D8 00032218  40 82 00 08 */	bne lbl_800352E0
/* 800352DC 0003221C  48 00 00 6C */	b lbl_80035348
lbl_800352E0:
/* 800352E0 00032220  2C 1F 00 80 */	cmpwi r31, 0x80
/* 800352E4 00032224  40 80 00 10 */	bge lbl_800352F4
/* 800352E8 00032228  38 7E 09 58 */	addi r3, r30, 0x958
/* 800352EC 0003222C  4B FF F5 4D */	bl dSv_memBit_c_NS_offSwitch
/* 800352F0 00032230  48 00 00 58 */	b lbl_80035348
lbl_800352F4:
/* 800352F4 00032234  2C 1F 00 C0 */	cmpwi r31, 0xc0
/* 800352F8 00032238  40 80 00 14 */	bge lbl_8003530C
/* 800352FC 0003223C  38 7E 09 78 */	addi r3, r30, 0x978
/* 80035300 00032240  38 9F FF 80 */	addi r4, r31, -128
/* 80035304 00032244  4B FF F8 BD */	bl dSv_danBit_c_NS_offSwitch
/* 80035308 00032248  48 00 00 40 */	b lbl_80035348
lbl_8003530C:
/* 8003530C 0003224C  7C A3 2B 78 */	mr r3, r5
/* 80035310 00032250  4B FF 86 A1 */	bl dStage_roomControl_c_NS_getZoneNo
/* 80035314 00032254  2C 1F 00 E0 */	cmpwi r31, 0xe0
/* 80035318 00032258  40 80 00 1C */	bge lbl_80035334
/* 8003531C 0003225C  54 63 28 34 */	slwi r3, r3, 5
/* 80035320 00032260  38 63 09 B6 */	addi r3, r3, 0x9b6
/* 80035324 00032264  7C 7E 1A 14 */	add r3, r30, r3
/* 80035328 00032268  38 9F FF 40 */	addi r4, r31, -192
/* 8003532C 0003226C  4B FF FA 01 */	bl dSv_zoneBit_c_NS_offSwitch
/* 80035330 00032270  48 00 00 18 */	b lbl_80035348
lbl_80035334:
/* 80035334 00032274  54 63 28 34 */	slwi r3, r3, 5
/* 80035338 00032278  38 63 09 B6 */	addi r3, r3, 0x9b6
/* 8003533C 0003227C  7C 7E 1A 14 */	add r3, r30, r3
/* 80035340 00032280  38 9F FF 20 */	addi r4, r31, -224
/* 80035344 00032284  4B FF FA 85 */	bl dSv_zoneBit_c_NS_offOneSwitch
lbl_80035348:
/* 80035348 00032288  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003534C 0003228C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80035350 00032290  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80035354 00032294  7C 08 03 A6 */	mtlr r0
/* 80035358 00032298  38 21 00 10 */	addi r1, r1, 0x10
/* 8003535C 0003229C  4E 80 00 20 */	blr 

.global dSv_info_c_NS_isSwitch
dSv_info_c_NS_isSwitch:
/* 80035360 000322A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80035364 000322A4  7C 08 02 A6 */	mflr r0
/* 80035368 000322A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003536C 000322AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80035370 000322B0  93 C1 00 08 */	stw r30, 8(r1)
/* 80035374 000322B4  7C 7E 1B 78 */	mr r30, r3
/* 80035378 000322B8  7C 9F 23 78 */	mr r31, r4
/* 8003537C 000322BC  2C 1F FF FF */	cmpwi r31, -1
/* 80035380 000322C0  41 82 00 0C */	beq lbl_8003538C
/* 80035384 000322C4  2C 1F 00 FF */	cmpwi r31, 0xff
/* 80035388 000322C8  40 82 00 0C */	bne lbl_80035394
lbl_8003538C:
/* 8003538C 000322CC  38 60 00 00 */	li r3, 0
/* 80035390 000322D0  48 00 00 84 */	b lbl_80035414
lbl_80035394:
/* 80035394 000322D4  2C 1F 00 80 */	cmpwi r31, 0x80
/* 80035398 000322D8  40 80 00 10 */	bge lbl_800353A8
/* 8003539C 000322DC  38 7E 09 58 */	addi r3, r30, 0x958
/* 800353A0 000322E0  4B FF F4 C1 */	bl dSv_memBit_c_NS_isSwitch
/* 800353A4 000322E4  48 00 00 70 */	b lbl_80035414
lbl_800353A8:
/* 800353A8 000322E8  2C 1F 00 C0 */	cmpwi r31, 0xc0
/* 800353AC 000322EC  40 80 00 14 */	bge lbl_800353C0
/* 800353B0 000322F0  38 7E 09 78 */	addi r3, r30, 0x978
/* 800353B4 000322F4  38 9F FF 80 */	addi r4, r31, -128
/* 800353B8 000322F8  4B FF F8 31 */	bl dSv_danBit_c_NS_isSwitch
/* 800353BC 000322FC  48 00 00 58 */	b lbl_80035414
lbl_800353C0:
/* 800353C0 00032300  7C A3 2B 78 */	mr r3, r5
/* 800353C4 00032304  4B FF 85 ED */	bl dStage_roomControl_c_NS_getZoneNo
/* 800353C8 00032308  2C 03 00 00 */	cmpwi r3, 0
/* 800353CC 0003230C  41 80 00 0C */	blt lbl_800353D8
/* 800353D0 00032310  2C 03 00 20 */	cmpwi r3, 0x20
/* 800353D4 00032314  41 80 00 0C */	blt lbl_800353E0
lbl_800353D8:
/* 800353D8 00032318  38 60 00 00 */	li r3, 0
/* 800353DC 0003231C  48 00 00 38 */	b lbl_80035414
lbl_800353E0:
/* 800353E0 00032320  2C 1F 00 E0 */	cmpwi r31, 0xe0
/* 800353E4 00032324  40 80 00 1C */	bge lbl_80035400
/* 800353E8 00032328  54 63 28 34 */	slwi r3, r3, 5
/* 800353EC 0003232C  38 63 09 B6 */	addi r3, r3, 0x9b6
/* 800353F0 00032330  7C 7E 1A 14 */	add r3, r30, r3
/* 800353F4 00032334  38 9F FF 40 */	addi r4, r31, -192
/* 800353F8 00032338  4B FF F9 59 */	bl dSv_zoneBit_c_NS_isSwitch
/* 800353FC 0003233C  48 00 00 18 */	b lbl_80035414
lbl_80035400:
/* 80035400 00032340  54 63 28 34 */	slwi r3, r3, 5
/* 80035404 00032344  38 63 09 B6 */	addi r3, r3, 0x9b6
/* 80035408 00032348  7C 7E 1A 14 */	add r3, r30, r3
/* 8003540C 0003234C  38 9F FF 20 */	addi r4, r31, -224
/* 80035410 00032350  4B FF F9 D1 */	bl dSv_zoneBit_c_NS_isOneSwitch
lbl_80035414:
/* 80035414 00032354  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80035418 00032358  83 C1 00 08 */	lwz r30, 8(r1)
/* 8003541C 0003235C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80035420 00032360  7C 08 03 A6 */	mtlr r0
/* 80035424 00032364  38 21 00 10 */	addi r1, r1, 0x10
/* 80035428 00032368  4E 80 00 20 */	blr 
/* 8003542C 0003236C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80035430 00032370  7C 08 02 A6 */	mflr r0
/* 80035434 00032374  90 01 00 14 */	stw r0, 0x14(r1)
/* 80035438 00032378  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003543C 0003237C  93 C1 00 08 */	stw r30, 8(r1)
/* 80035440 00032380  7C 7E 1B 78 */	mr r30, r3
/* 80035444 00032384  7C 9F 23 78 */	mr r31, r4
/* 80035448 00032388  2C 1F FF FF */	cmpwi r31, -1
/* 8003544C 0003238C  41 82 00 0C */	beq lbl_80035458
/* 80035450 00032390  2C 1F 00 FF */	cmpwi r31, 0xff
/* 80035454 00032394  40 82 00 0C */	bne lbl_80035460
lbl_80035458:
/* 80035458 00032398  38 60 00 00 */	li r3, 0
/* 8003545C 0003239C  48 00 00 6C */	b lbl_800354C8
lbl_80035460:
/* 80035460 000323A0  2C 1F 00 80 */	cmpwi r31, 0x80
/* 80035464 000323A4  40 80 00 10 */	bge lbl_80035474
/* 80035468 000323A8  38 7E 09 58 */	addi r3, r30, 0x958
/* 8003546C 000323AC  4B FF F4 21 */	bl dSv_memBit_c_NS_revSwitch
/* 80035470 000323B0  48 00 00 58 */	b lbl_800354C8
lbl_80035474:
/* 80035474 000323B4  2C 1F 00 C0 */	cmpwi r31, 0xc0
/* 80035478 000323B8  40 80 00 14 */	bge lbl_8003548C
/* 8003547C 000323BC  38 7E 09 78 */	addi r3, r30, 0x978
/* 80035480 000323C0  38 9F FF 80 */	addi r4, r31, -128
/* 80035484 000323C4  4B FF F7 91 */	bl dSv_danBit_c_NS_revSwitch
/* 80035488 000323C8  48 00 00 40 */	b lbl_800354C8
lbl_8003548C:
/* 8003548C 000323CC  7C A3 2B 78 */	mr r3, r5
/* 80035490 000323D0  4B FF 85 21 */	bl dStage_roomControl_c_NS_getZoneNo
/* 80035494 000323D4  2C 1F 00 E0 */	cmpwi r31, 0xe0
/* 80035498 000323D8  40 80 00 1C */	bge lbl_800354B4
/* 8003549C 000323DC  54 63 28 34 */	slwi r3, r3, 5
/* 800354A0 000323E0  38 63 09 B6 */	addi r3, r3, 0x9b6
/* 800354A4 000323E4  7C 7E 1A 14 */	add r3, r30, r3
/* 800354A8 000323E8  38 9F FF 40 */	addi r4, r31, -192
/* 800354AC 000323EC  4B FF F8 CD */	bl dSv_zoneBit_c_NS_revSwitch
/* 800354B0 000323F0  48 00 00 18 */	b lbl_800354C8
lbl_800354B4:
/* 800354B4 000323F4  54 63 28 34 */	slwi r3, r3, 5
/* 800354B8 000323F8  38 63 09 B6 */	addi r3, r3, 0x9b6
/* 800354BC 000323FC  7C 7E 1A 14 */	add r3, r30, r3
/* 800354C0 00032400  38 9F FF 20 */	addi r4, r31, -224
/* 800354C4 00032404  4B FF F9 39 */	bl dSv_zoneBit_c_NS_revOneSwitch
lbl_800354C8:
/* 800354C8 00032408  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800354CC 0003240C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800354D0 00032410  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800354D4 00032414  7C 08 03 A6 */	mtlr r0
/* 800354D8 00032418  38 21 00 10 */	addi r1, r1, 0x10
/* 800354DC 0003241C  4E 80 00 20 */	blr 

.global dSv_info_c_NS_onItem
dSv_info_c_NS_onItem:
/* 800354E0 00032420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800354E4 00032424  7C 08 02 A6 */	mflr r0
/* 800354E8 00032428  90 01 00 14 */	stw r0, 0x14(r1)
/* 800354EC 0003242C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800354F0 00032430  93 C1 00 08 */	stw r30, 8(r1)
/* 800354F4 00032434  7C 7E 1B 78 */	mr r30, r3
/* 800354F8 00032438  7C 9F 23 78 */	mr r31, r4
/* 800354FC 0003243C  2C 1F FF FF */	cmpwi r31, -1
/* 80035500 00032440  41 82 00 78 */	beq lbl_80035578
/* 80035504 00032444  2C 1F 00 FF */	cmpwi r31, 0xff
/* 80035508 00032448  40 82 00 08 */	bne lbl_80035510
/* 8003550C 0003244C  48 00 00 6C */	b lbl_80035578
lbl_80035510:
/* 80035510 00032450  2C 1F 00 80 */	cmpwi r31, 0x80
/* 80035514 00032454  40 80 00 10 */	bge lbl_80035524
/* 80035518 00032458  38 7E 09 78 */	addi r3, r30, 0x978
/* 8003551C 0003245C  4B FF F7 31 */	bl dSv_danBit_c_NS_onItem
/* 80035520 00032460  48 00 00 58 */	b lbl_80035578
lbl_80035524:
/* 80035524 00032464  2C 1F 00 A0 */	cmpwi r31, 0xa0
/* 80035528 00032468  40 80 00 14 */	bge lbl_8003553C
/* 8003552C 0003246C  38 7E 09 58 */	addi r3, r30, 0x958
/* 80035530 00032470  38 9F FF 80 */	addi r4, r31, -128
/* 80035534 00032474  4B FF F3 91 */	bl dSv_memBit_c_NS_onItem
/* 80035538 00032478  48 00 00 40 */	b lbl_80035578
lbl_8003553C:
/* 8003553C 0003247C  7C A3 2B 78 */	mr r3, r5
/* 80035540 00032480  4B FF 84 71 */	bl dStage_roomControl_c_NS_getZoneNo
/* 80035544 00032484  2C 1F 00 C0 */	cmpwi r31, 0xc0
/* 80035548 00032488  40 80 00 1C */	bge lbl_80035564
/* 8003554C 0003248C  54 63 28 34 */	slwi r3, r3, 5
/* 80035550 00032490  38 63 09 B6 */	addi r3, r3, 0x9b6
/* 80035554 00032494  7C 7E 1A 14 */	add r3, r30, r3
/* 80035558 00032498  38 9F FF 60 */	addi r4, r31, -160
/* 8003555C 0003249C  4B FF F8 C9 */	bl dSv_zoneBit_c_NS_onItem
/* 80035560 000324A0  48 00 00 18 */	b lbl_80035578
lbl_80035564:
/* 80035564 000324A4  54 63 28 34 */	slwi r3, r3, 5
/* 80035568 000324A8  38 63 09 B6 */	addi r3, r3, 0x9b6
/* 8003556C 000324AC  7C 7E 1A 14 */	add r3, r30, r3
/* 80035570 000324B0  38 9F FF 40 */	addi r4, r31, -192
/* 80035574 000324B4  4B FF F9 09 */	bl dSv_zoneBit_c_NS_onOneItem
lbl_80035578:
/* 80035578 000324B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003557C 000324BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80035580 000324C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80035584 000324C4  7C 08 03 A6 */	mtlr r0
/* 80035588 000324C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8003558C 000324CC  4E 80 00 20 */	blr 

.global dSv_info_c_NS_isItem
dSv_info_c_NS_isItem:
/* 80035590 000324D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80035594 000324D4  7C 08 02 A6 */	mflr r0
/* 80035598 000324D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003559C 000324DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800355A0 000324E0  93 C1 00 08 */	stw r30, 8(r1)
/* 800355A4 000324E4  7C 7E 1B 78 */	mr r30, r3
/* 800355A8 000324E8  7C 9F 23 78 */	mr r31, r4
/* 800355AC 000324EC  2C 1F FF FF */	cmpwi r31, -1
/* 800355B0 000324F0  41 82 00 0C */	beq lbl_800355BC
/* 800355B4 000324F4  2C 1F 00 FF */	cmpwi r31, 0xff
/* 800355B8 000324F8  40 82 00 0C */	bne lbl_800355C4
lbl_800355BC:
/* 800355BC 000324FC  38 60 00 00 */	li r3, 0
/* 800355C0 00032500  48 00 00 6C */	b lbl_8003562C
lbl_800355C4:
/* 800355C4 00032504  2C 1F 00 80 */	cmpwi r31, 0x80
/* 800355C8 00032508  40 80 00 10 */	bge lbl_800355D8
/* 800355CC 0003250C  38 7E 09 78 */	addi r3, r30, 0x978
/* 800355D0 00032510  4B FF F6 A5 */	bl dSv_danBit_c_NS_isItem
/* 800355D4 00032514  48 00 00 58 */	b lbl_8003562C
lbl_800355D8:
/* 800355D8 00032518  2C 1F 00 A0 */	cmpwi r31, 0xa0
/* 800355DC 0003251C  40 80 00 14 */	bge lbl_800355F0
/* 800355E0 00032520  38 7E 09 58 */	addi r3, r30, 0x958
/* 800355E4 00032524  38 9F FF 80 */	addi r4, r31, -128
/* 800355E8 00032528  4B FF F3 05 */	bl dSv_memBit_c_NS_isItem
/* 800355EC 0003252C  48 00 00 40 */	b lbl_8003562C
lbl_800355F0:
/* 800355F0 00032530  7C A3 2B 78 */	mr r3, r5
/* 800355F4 00032534  4B FF 83 BD */	bl dStage_roomControl_c_NS_getZoneNo
/* 800355F8 00032538  2C 1F 00 C0 */	cmpwi r31, 0xc0
/* 800355FC 0003253C  40 80 00 1C */	bge lbl_80035618
/* 80035600 00032540  54 63 28 34 */	slwi r3, r3, 5
/* 80035604 00032544  38 63 09 B6 */	addi r3, r3, 0x9b6
/* 80035608 00032548  7C 7E 1A 14 */	add r3, r30, r3
/* 8003560C 0003254C  38 9F FF 60 */	addi r4, r31, -160
/* 80035610 00032550  4B FF F8 41 */	bl dSv_zoneBit_c_NS_isItem
/* 80035614 00032554  48 00 00 18 */	b lbl_8003562C
lbl_80035618:
/* 80035618 00032558  54 63 28 34 */	slwi r3, r3, 5
/* 8003561C 0003255C  38 63 09 B6 */	addi r3, r3, 0x9b6
/* 80035620 00032560  7C 7E 1A 14 */	add r3, r30, r3
/* 80035624 00032564  38 9F FF 40 */	addi r4, r31, -192
/* 80035628 00032568  4B FF F8 71 */	bl dSv_zoneBit_c_NS_isOneItem
lbl_8003562C:
/* 8003562C 0003256C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80035630 00032570  83 C1 00 08 */	lwz r30, 8(r1)
/* 80035634 00032574  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80035638 00032578  7C 08 03 A6 */	mtlr r0
/* 8003563C 0003257C  38 21 00 10 */	addi r1, r1, 0x10
/* 80035640 00032580  4E 80 00 20 */	blr 

.global dSv_info_c_NS_onActor
dSv_info_c_NS_onActor:
/* 80035644 00032584  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80035648 00032588  7C 08 02 A6 */	mflr r0
/* 8003564C 0003258C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80035650 00032590  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80035654 00032594  93 C1 00 08 */	stw r30, 8(r1)
/* 80035658 00032598  7C 7E 1B 78 */	mr r30, r3
/* 8003565C 0003259C  7C 9F 23 78 */	mr r31, r4
/* 80035660 000325A0  2C 1F FF FF */	cmpwi r31, -1
/* 80035664 000325A4  41 82 00 38 */	beq lbl_8003569C
/* 80035668 000325A8  3C 1F 00 00 */	addis r0, r31, 0
/* 8003566C 000325AC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80035670 000325B0  41 82 00 2C */	beq lbl_8003569C
/* 80035674 000325B4  2C 05 FF FF */	cmpwi r5, -1
/* 80035678 000325B8  40 82 00 08 */	bne lbl_80035680
/* 8003567C 000325BC  48 00 00 20 */	b lbl_8003569C
lbl_80035680:
/* 80035680 000325C0  7C A3 2B 78 */	mr r3, r5
/* 80035684 000325C4  4B FF 83 2D */	bl dStage_roomControl_c_NS_getZoneNo
/* 80035688 000325C8  54 63 28 34 */	slwi r3, r3, 5
/* 8003568C 000325CC  38 63 09 C4 */	addi r3, r3, 0x9c4
/* 80035690 000325D0  7C 7E 1A 14 */	add r3, r30, r3
/* 80035694 000325D4  7F E4 FB 78 */	mr r4, r31
/* 80035698 000325D8  4B FF F8 3D */	bl dSv_zoneActor_c_NS_on
lbl_8003569C:
/* 8003569C 000325DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800356A0 000325E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800356A4 000325E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800356A8 000325E8  7C 08 03 A6 */	mtlr r0
/* 800356AC 000325EC  38 21 00 10 */	addi r1, r1, 0x10
/* 800356B0 000325F0  4E 80 00 20 */	blr 
/* 800356B4 000325F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800356B8 000325F8  7C 08 02 A6 */	mflr r0
/* 800356BC 000325FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800356C0 00032600  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800356C4 00032604  93 C1 00 08 */	stw r30, 8(r1)
/* 800356C8 00032608  7C 7E 1B 78 */	mr r30, r3
/* 800356CC 0003260C  7C 9F 23 78 */	mr r31, r4
/* 800356D0 00032610  2C 1F FF FF */	cmpwi r31, -1
/* 800356D4 00032614  41 82 00 38 */	beq lbl_8003570C
/* 800356D8 00032618  3C 1F 00 00 */	addis r0, r31, 0
/* 800356DC 0003261C  28 00 FF FF */	cmplwi r0, 0xffff
/* 800356E0 00032620  41 82 00 2C */	beq lbl_8003570C
/* 800356E4 00032624  2C 05 FF FF */	cmpwi r5, -1
/* 800356E8 00032628  40 82 00 08 */	bne lbl_800356F0
/* 800356EC 0003262C  48 00 00 20 */	b lbl_8003570C
lbl_800356F0:
/* 800356F0 00032630  7C A3 2B 78 */	mr r3, r5
/* 800356F4 00032634  4B FF 82 BD */	bl dStage_roomControl_c_NS_getZoneNo
/* 800356F8 00032638  54 63 28 34 */	slwi r3, r3, 5
/* 800356FC 0003263C  38 63 09 C4 */	addi r3, r3, 0x9c4
/* 80035700 00032640  7C 7E 1A 14 */	add r3, r30, r3
/* 80035704 00032644  7F E4 FB 78 */	mr r4, r31
/* 80035708 00032648  4B FF F7 F1 */	bl dSv_zoneActor_c_NS_off
lbl_8003570C:
/* 8003570C 0003264C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80035710 00032650  83 C1 00 08 */	lwz r30, 8(r1)
/* 80035714 00032654  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80035718 00032658  7C 08 03 A6 */	mtlr r0
/* 8003571C 0003265C  38 21 00 10 */	addi r1, r1, 0x10
/* 80035720 00032660  4E 80 00 20 */	blr 

.global dSv_info_c_NS_isActor
dSv_info_c_NS_isActor:
/* 80035724 00032664  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80035728 00032668  7C 08 02 A6 */	mflr r0
/* 8003572C 0003266C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80035730 00032670  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80035734 00032674  93 C1 00 08 */	stw r30, 8(r1)
/* 80035738 00032678  7C 7E 1B 78 */	mr r30, r3
/* 8003573C 0003267C  7C 9F 23 78 */	mr r31, r4
/* 80035740 00032680  2C 1F FF FF */	cmpwi r31, -1
/* 80035744 00032684  41 82 00 18 */	beq lbl_8003575C
/* 80035748 00032688  3C 1F 00 00 */	addis r0, r31, 0
/* 8003574C 0003268C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80035750 00032690  41 82 00 0C */	beq lbl_8003575C
/* 80035754 00032694  2C 05 FF FF */	cmpwi r5, -1
/* 80035758 00032698  40 82 00 0C */	bne lbl_80035764
lbl_8003575C:
/* 8003575C 0003269C  38 60 00 00 */	li r3, 0
/* 80035760 000326A0  48 00 00 20 */	b lbl_80035780
lbl_80035764:
/* 80035764 000326A4  7C A3 2B 78 */	mr r3, r5
/* 80035768 000326A8  4B FF 82 49 */	bl dStage_roomControl_c_NS_getZoneNo
/* 8003576C 000326AC  54 63 28 34 */	slwi r3, r3, 5
/* 80035770 000326B0  38 63 09 C4 */	addi r3, r3, 0x9c4
/* 80035774 000326B4  7C 7E 1A 14 */	add r3, r30, r3
/* 80035778 000326B8  7F E4 FB 78 */	mr r4, r31
/* 8003577C 000326BC  4B FF F7 A1 */	bl dSv_zoneActor_c_NS_is
lbl_80035780:
/* 80035780 000326C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80035784 000326C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80035788 000326C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003578C 000326CC  7C 08 03 A6 */	mtlr r0
/* 80035790 000326D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80035794 000326D4  4E 80 00 20 */	blr 

.global dSv_info_c_NS_memory_to_card
dSv_info_c_NS_memory_to_card:
/* 80035798 000326D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8003579C 000326DC  7C 08 02 A6 */	mflr r0
/* 800357A0 000326E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 800357A4 000326E4  39 61 00 30 */	addi r11, r1, 0x30
/* 800357A8 000326E8  48 32 CA 19 */	bl func_803621C0
/* 800357AC 000326EC  7C 9C 23 78 */	mr r28, r4
/* 800357B0 000326F0  7C B8 2B 78 */	mr r24, r5
/* 800357B4 000326F4  3A C0 00 00 */	li r22, 0
/* 800357B8 000326F8  3B C0 00 00 */	li r30, 0
/* 800357BC 000326FC  3B E0 00 00 */	li r31, 0
/* 800357C0 00032700  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 800357C4 00032704  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 800357C8 00032708  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 800357CC 0003270C  7F A3 EB 78 */	mr r3, r29
/* 800357D0 00032710  3C 80 80 3A */	lis r4, lbl_803A7288@ha
/* 800357D4 00032714  38 84 72 88 */	addi r4, r4, lbl_803A7288@l
/* 800357D8 00032718  A0 84 01 C4 */	lhz r4, 0x1c4(r4)
/* 800357DC 0003271C  4B FF F1 E1 */	bl dSv_event_c_NS_isEventBit
/* 800357E0 00032720  2C 03 00 00 */	cmpwi r3, 0
/* 800357E4 00032724  40 82 00 50 */	bne lbl_80035834
/* 800357E8 00032728  7F A3 EB 78 */	mr r3, r29
/* 800357EC 0003272C  3C 80 80 3A */	lis r4, lbl_803A7288@ha
/* 800357F0 00032730  3B 24 72 88 */	addi r25, r4, lbl_803A7288@l
/* 800357F4 00032734  A0 99 01 C0 */	lhz r4, 0x1c0(r25)
/* 800357F8 00032738  4B FF F1 C5 */	bl dSv_event_c_NS_isEventBit
/* 800357FC 0003273C  7C 7B 1B 78 */	mr r27, r3
/* 80035800 00032740  7F A3 EB 78 */	mr r3, r29
/* 80035804 00032744  3C 80 80 3A */	lis r4, lbl_803A7288@ha
/* 80035808 00032748  3A C4 72 88 */	addi r22, r4, lbl_803A7288@l
/* 8003580C 0003274C  A0 96 01 C2 */	lhz r4, 0x1c2(r22)
/* 80035810 00032750  4B FF F1 AD */	bl dSv_event_c_NS_isEventBit
/* 80035814 00032754  7C 77 1B 78 */	mr r23, r3
/* 80035818 00032758  7F A3 EB 78 */	mr r3, r29
/* 8003581C 0003275C  A0 99 01 C0 */	lhz r4, 0x1c0(r25)
/* 80035820 00032760  4B FF F1 85 */	bl dSv_event_c_NS_offEventBit
/* 80035824 00032764  7F A3 EB 78 */	mr r3, r29
/* 80035828 00032768  A0 96 01 C2 */	lhz r4, 0x1c2(r22)
/* 8003582C 0003276C  4B FF F1 79 */	bl dSv_event_c_NS_offEventBit
/* 80035830 00032770  3A C0 00 01 */	li r22, 1
lbl_80035834:
/* 80035834 00032774  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80035838 00032778  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 8003583C 0003277C  38 63 00 CC */	addi r3, r3, 0xcc
/* 80035840 00032780  38 80 00 48 */	li r4, 0x48
/* 80035844 00032784  4B FF E6 85 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 80035848 00032788  2C 03 00 00 */	cmpwi r3, 0
/* 8003584C 0003278C  41 82 00 5C */	beq lbl_800358A8
/* 80035850 00032790  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80035854 00032794  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 80035858 00032798  3B 23 00 9C */	addi r25, r3, 0x9c
/* 8003585C 0003279C  7F 23 CB 78 */	mr r3, r25
/* 80035860 000327A0  38 80 00 01 */	li r4, 1
/* 80035864 000327A4  38 A0 00 01 */	li r5, 1
/* 80035868 000327A8  4B FF D7 C9 */	bl getItem__17dSv_player_item_cCFib
/* 8003586C 000327AC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80035870 000327B0  28 00 00 FF */	cmplwi r0, 0xff
/* 80035874 000327B4  40 82 00 34 */	bne lbl_800358A8
/* 80035878 000327B8  7F 23 CB 78 */	mr r3, r25
/* 8003587C 000327BC  38 80 00 01 */	li r4, 1
/* 80035880 000327C0  38 A0 00 48 */	li r5, 0x48
/* 80035884 000327C4  4B FF D7 35 */	bl setItem__17dSv_player_item_cFiUc
/* 80035888 000327C8  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 8003588C 000327CC  38 83 61 C0 */	addi r4, r3, lbl_804061C0@l
/* 80035890 000327D0  A3 E4 00 08 */	lhz r31, 8(r4)
/* 80035894 000327D4  3C 60 80 43 */	lis r3, lbl_80430188@ha
/* 80035898 000327D8  38 63 01 88 */	addi r3, r3, lbl_80430188@l
/* 8003589C 000327DC  A0 03 00 B6 */	lhz r0, 0xb6(r3)
/* 800358A0 000327E0  B0 04 00 08 */	sth r0, 8(r4)
/* 800358A4 000327E4  3B C0 00 01 */	li r30, 1
lbl_800358A8:
/* 800358A8 000327E8  1C 18 0A 94 */	mulli r0, r24, 0xa94
/* 800358AC 000327EC  7F 9C 02 14 */	add r28, r28, r0
/* 800358B0 000327F0  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 800358B4 000327F4  3B 03 61 C0 */	addi r24, r3, lbl_804061C0@l
/* 800358B8 000327F8  83 38 0F 28 */	lwz r25, 0xf28(r24)
/* 800358BC 000327FC  83 58 0F 2C */	lwz r26, 0xf2c(r24)
/* 800358C0 00032800  48 30 CE 3D */	bl OSGetTime
/* 800358C4 00032804  7C BA 20 10 */	subfc r5, r26, r4
/* 800358C8 00032808  7C 19 19 10 */	subfe r0, r25, r3
/* 800358CC 0003280C  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 800358D0 00032810  38 83 61 C0 */	addi r4, r3, lbl_804061C0@l
/* 800358D4 00032814  80 64 0F 30 */	lwz r3, 0xf30(r4)
/* 800358D8 00032818  80 84 0F 34 */	lwz r4, 0xf34(r4)
/* 800358DC 0003281C  7F 25 20 14 */	addc r25, r5, r4
/* 800358E0 00032820  7F 40 19 14 */	adde r26, r0, r3
/* 800358E4 00032824  3C A0 80 00 */	lis r5, 0x800000F8@ha
/* 800358E8 00032828  80 05 00 F8 */	lwz r0, 0x800000F8@l(r5)
/* 800358EC 0003282C  54 06 F0 BE */	srwi r6, r0, 2
/* 800358F0 00032830  38 A0 00 00 */	li r5, 0
/* 800358F4 00032834  48 32 CA 31 */	bl func_80362324
/* 800358F8 00032838  3C A0 00 37 */	lis r5, 0x0036EE44@ha
/* 800358FC 0003283C  38 C5 EE 44 */	addi r6, r5, 0x0036EE44@l
/* 80035900 00032840  38 00 00 00 */	li r0, 0
/* 80035904 00032844  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 80035908 00032848  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8003590C 0003284C  7C 06 20 10 */	subfc r0, r6, r4
/* 80035910 00032850  7C 63 29 10 */	subfe r3, r3, r5
/* 80035914 00032854  7C 65 29 10 */	subfe r3, r5, r5
/* 80035918 00032858  7C 63 00 D1 */	neg. r3, r3
/* 8003591C 0003285C  41 82 00 0C */	beq lbl_80035928
/* 80035920 00032860  93 38 01 AC */	stw r25, 0x1ac(r24)
/* 80035924 00032864  93 58 01 A8 */	stw r26, 0x1a8(r24)
lbl_80035928:
/* 80035928 00032868  48 30 CD D5 */	bl OSGetTime
/* 8003592C 0003286C  90 98 00 2C */	stw r4, 0x2c(r24)
/* 80035930 00032870  90 78 00 28 */	stw r3, 0x28(r24)
/* 80035934 00032874  7F 83 E3 78 */	mr r3, r28
/* 80035938 00032878  7F 04 C3 78 */	mr r4, r24
/* 8003593C 0003287C  38 A0 09 58 */	li r5, 0x958
/* 80035940 00032880  4B FC DC 01 */	bl func_80003540
/* 80035944 00032884  3C 60 80 38 */	lis r3, lbl_80379234@ha
/* 80035948 00032888  38 63 92 34 */	addi r3, r3, lbl_80379234@l
/* 8003594C 0003288C  38 63 00 29 */	addi r3, r3, 0x29
/* 80035950 00032890  38 80 09 58 */	li r4, 0x958
/* 80035954 00032894  4C C6 31 82 */	crclr 6
/* 80035958 00032898  48 33 0F 25 */	bl func_8036687C
/* 8003595C 0003289C  56 C0 06 3E */	clrlwi r0, r22, 0x18
/* 80035960 000328A0  28 00 00 01 */	cmplwi r0, 1
/* 80035964 000328A4  40 82 00 3C */	bne lbl_800359A0
/* 80035968 000328A8  2C 1B 00 00 */	cmpwi r27, 0
/* 8003596C 000328AC  41 82 00 18 */	beq lbl_80035984
/* 80035970 000328B0  7F A3 EB 78 */	mr r3, r29
/* 80035974 000328B4  3C 80 80 3A */	lis r4, lbl_803A7288@ha
/* 80035978 000328B8  38 84 72 88 */	addi r4, r4, lbl_803A7288@l
/* 8003597C 000328BC  A0 84 01 C0 */	lhz r4, 0x1c0(r4)
/* 80035980 000328C0  4B FF F0 0D */	bl dSv_event_c_NS_onEventBit
lbl_80035984:
/* 80035984 000328C4  2C 17 00 00 */	cmpwi r23, 0
/* 80035988 000328C8  41 82 00 18 */	beq lbl_800359A0
/* 8003598C 000328CC  7F A3 EB 78 */	mr r3, r29
/* 80035990 000328D0  3C 80 80 3A */	lis r4, lbl_803A7288@ha
/* 80035994 000328D4  38 84 72 88 */	addi r4, r4, lbl_803A7288@l
/* 80035998 000328D8  A0 84 01 C2 */	lhz r4, 0x1c2(r4)
/* 8003599C 000328DC  4B FF EF F1 */	bl dSv_event_c_NS_onEventBit
lbl_800359A0:
/* 800359A0 000328E0  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 800359A4 000328E4  28 00 00 01 */	cmplwi r0, 1
/* 800359A8 000328E8  40 82 00 28 */	bne lbl_800359D0
/* 800359AC 000328EC  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 800359B0 000328F0  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 800359B4 000328F4  38 63 00 9C */	addi r3, r3, 0x9c
/* 800359B8 000328F8  38 80 00 01 */	li r4, 1
/* 800359BC 000328FC  38 A0 00 FF */	li r5, 0xff
/* 800359C0 00032900  4B FF D5 F9 */	bl setItem__17dSv_player_item_cFiUc
/* 800359C4 00032904  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 800359C8 00032908  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 800359CC 0003290C  B3 E3 00 08 */	sth r31, 8(r3)
lbl_800359D0:
/* 800359D0 00032910  3C 60 80 38 */	lis r3, lbl_80379234@ha
/* 800359D4 00032914  38 63 92 34 */	addi r3, r3, lbl_80379234@l
/* 800359D8 00032918  38 63 00 38 */	addi r3, r3, 0x38
/* 800359DC 0003291C  38 80 09 58 */	li r4, 0x958
/* 800359E0 00032920  4C C6 31 82 */	crclr 6
/* 800359E4 00032924  48 33 0E 99 */	bl func_8036687C
/* 800359E8 00032928  38 60 00 00 */	li r3, 0
/* 800359EC 0003292C  39 61 00 30 */	addi r11, r1, 0x30
/* 800359F0 00032930  48 32 C8 1D */	bl func_8036220C
/* 800359F4 00032934  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800359F8 00032938  7C 08 03 A6 */	mtlr r0
/* 800359FC 0003293C  38 21 00 30 */	addi r1, r1, 0x30
/* 80035A00 00032940  4E 80 00 20 */	blr 

.global dSv_info_c_NS_card_to_memory
dSv_info_c_NS_card_to_memory:
/* 80035A04 00032944  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80035A08 00032948  7C 08 02 A6 */	mflr r0
/* 80035A0C 0003294C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80035A10 00032950  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80035A14 00032954  93 C1 00 08 */	stw r30, 8(r1)
/* 80035A18 00032958  1C 05 0A 94 */	mulli r0, r5, 0xa94
/* 80035A1C 0003295C  7C 84 02 14 */	add r4, r4, r0
/* 80035A20 00032960  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80035A24 00032964  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 80035A28 00032968  38 A0 09 58 */	li r5, 0x958
/* 80035A2C 0003296C  4B FC DB 15 */	bl func_80003540
/* 80035A30 00032970  48 30 AB 61 */	bl OSGetSoundMode
/* 80035A34 00032974  28 03 00 00 */	cmplwi r3, 0
/* 80035A38 00032978  40 82 00 28 */	bne lbl_80035A60
/* 80035A3C 0003297C  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80035A40 00032980  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 80035A44 00032984  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80035A48 00032988  38 80 00 00 */	li r4, 0
/* 80035A4C 0003298C  4B FF EC 41 */	bl dSv_player_config_c_NS_setSound
/* 80035A50 00032990  80 6D 8D E8 */	lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 80035A54 00032994  38 80 00 00 */	li r4, 0
/* 80035A58 00032998  48 29 7E 31 */	bl Z2AudioMgr_NS_setOutputMode
/* 80035A5C 0003299C  48 00 00 4C */	b lbl_80035AA8
lbl_80035A60:
/* 80035A60 000329A0  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80035A64 000329A4  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 80035A68 000329A8  3B E3 01 E0 */	addi r31, r3, 0x1e0
/* 80035A6C 000329AC  7F E3 FB 78 */	mr r3, r31
/* 80035A70 000329B0  4B FF EC 15 */	bl dSv_player_config_c_NS_getSound
/* 80035A74 000329B4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80035A78 000329B8  28 00 00 02 */	cmplwi r0, 2
/* 80035A7C 000329BC  40 82 00 14 */	bne lbl_80035A90
/* 80035A80 000329C0  80 6D 8D E8 */	lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 80035A84 000329C4  38 80 00 02 */	li r4, 2
/* 80035A88 000329C8  48 29 7E 01 */	bl Z2AudioMgr_NS_setOutputMode
/* 80035A8C 000329CC  48 00 00 1C */	b lbl_80035AA8
lbl_80035A90:
/* 80035A90 000329D0  7F E3 FB 78 */	mr r3, r31
/* 80035A94 000329D4  38 80 00 01 */	li r4, 1
/* 80035A98 000329D8  4B FF EB F5 */	bl dSv_player_config_c_NS_setSound
/* 80035A9C 000329DC  80 6D 8D E8 */	lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 80035AA0 000329E0  38 80 00 01 */	li r4, 1
/* 80035AA4 000329E4  48 29 7D E5 */	bl Z2AudioMgr_NS_setOutputMode
lbl_80035AA8:
/* 80035AA8 000329E8  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80035AAC 000329EC  3B E3 61 C0 */	addi r31, r3, lbl_804061C0@l
/* 80035AB0 000329F0  A0 1F 00 02 */	lhz r0, 2(r31)
/* 80035AB4 000329F4  28 00 00 0C */	cmplwi r0, 0xc
/* 80035AB8 000329F8  40 80 00 0C */	bge lbl_80035AC4
/* 80035ABC 000329FC  38 00 00 0C */	li r0, 0xc
/* 80035AC0 00032A00  B0 1F 00 02 */	sth r0, 2(r31)
lbl_80035AC4:
/* 80035AC4 00032A04  38 60 00 06 */	li r3, 6
/* 80035AC8 00032A08  38 80 00 00 */	li r4, 0
/* 80035ACC 00032A0C  4B FF 95 75 */	bl dComIfGs_setKeyNum
/* 80035AD0 00032A10  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80035AD4 00032A14  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 80035AD8 00032A18  3B C3 00 9C */	addi r30, r3, 0x9c
/* 80035ADC 00032A1C  7F C3 F3 78 */	mr r3, r30
/* 80035AE0 00032A20  38 80 00 09 */	li r4, 9
/* 80035AE4 00032A24  38 A0 00 01 */	li r5, 1
/* 80035AE8 00032A28  4B FF D5 49 */	bl getItem__17dSv_player_item_cCFib
/* 80035AEC 00032A2C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80035AF0 00032A30  28 00 00 47 */	cmplwi r0, 0x47
/* 80035AF4 00032A34  40 82 00 24 */	bne lbl_80035B18
/* 80035AF8 00032A38  7F C3 F3 78 */	mr r3, r30
/* 80035AFC 00032A3C  38 80 00 0A */	li r4, 0xa
/* 80035B00 00032A40  38 A0 00 47 */	li r5, 0x47
/* 80035B04 00032A44  4B FF D4 B5 */	bl setItem__17dSv_player_item_cFiUc
/* 80035B08 00032A48  7F C3 F3 78 */	mr r3, r30
/* 80035B0C 00032A4C  38 80 00 09 */	li r4, 9
/* 80035B10 00032A50  38 A0 00 FF */	li r5, 0xff
/* 80035B14 00032A54  4B FF D4 A5 */	bl setItem__17dSv_player_item_cFiUc
lbl_80035B18:
/* 80035B18 00032A58  7F C3 F3 78 */	mr r3, r30
/* 80035B1C 00032A5C  38 80 00 09 */	li r4, 9
/* 80035B20 00032A60  38 A0 00 01 */	li r5, 1
/* 80035B24 00032A64  4B FF D5 0D */	bl getItem__17dSv_player_item_cCFib
/* 80035B28 00032A68  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80035B2C 00032A6C  28 00 00 44 */	cmplwi r0, 0x44
/* 80035B30 00032A70  40 82 00 30 */	bne lbl_80035B60
/* 80035B34 00032A74  7F C3 F3 78 */	mr r3, r30
/* 80035B38 00032A78  38 80 00 0A */	li r4, 0xa
/* 80035B3C 00032A7C  38 A0 00 01 */	li r5, 1
/* 80035B40 00032A80  4B FF D4 F1 */	bl getItem__17dSv_player_item_cCFib
/* 80035B44 00032A84  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80035B48 00032A88  28 00 00 47 */	cmplwi r0, 0x47
/* 80035B4C 00032A8C  40 82 00 14 */	bne lbl_80035B60
/* 80035B50 00032A90  7F C3 F3 78 */	mr r3, r30
/* 80035B54 00032A94  38 80 00 09 */	li r4, 9
/* 80035B58 00032A98  38 A0 00 FF */	li r5, 0xff
/* 80035B5C 00032A9C  4B FF D4 5D */	bl setItem__17dSv_player_item_cFiUc
lbl_80035B60:
/* 80035B60 00032AA0  7F C3 F3 78 */	mr r3, r30
/* 80035B64 00032AA4  4B FF D7 95 */	bl setLineUpItem__17dSv_player_item_cFv
/* 80035B68 00032AA8  38 7F 01 E0 */	addi r3, r31, 0x1e0
/* 80035B6C 00032AAC  4B FF EB 29 */	bl dSv_player_config_c_NS_getVibration
/* 80035B70 00032AB0  7C 64 1B 78 */	mr r4, r3
/* 80035B74 00032AB4  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80035B78 00032AB8  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 80035B7C 00032ABC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80035B80 00032AC0  4B FF 58 29 */	bl dComIfG_play_c_NS_setNowVibration
/* 80035B84 00032AC4  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80035B88 00032AC8  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 80035B8C 00032ACC  38 83 00 58 */	addi r4, r3, 0x58
/* 80035B90 00032AD0  3C 60 80 43 */	lis r3, lbl_80430188@ha
/* 80035B94 00032AD4  38 63 01 88 */	addi r3, r3, lbl_80430188@l
/* 80035B98 00032AD8  48 1E 86 F9 */	bl dMeter2Info_c_NS_setSaveStageName
/* 80035B9C 00032ADC  3C 60 80 38 */	lis r3, lbl_80379234@ha
/* 80035BA0 00032AE0  38 63 92 34 */	addi r3, r3, lbl_80379234@l
/* 80035BA4 00032AE4  38 63 00 46 */	addi r3, r3, 0x46
/* 80035BA8 00032AE8  38 80 09 58 */	li r4, 0x958
/* 80035BAC 00032AEC  4C C6 31 82 */	crclr 6
/* 80035BB0 00032AF0  48 33 0C CD */	bl func_8036687C
/* 80035BB4 00032AF4  38 60 00 00 */	li r3, 0
/* 80035BB8 00032AF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80035BBC 00032AFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80035BC0 00032B00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80035BC4 00032B04  7C 08 03 A6 */	mtlr r0
/* 80035BC8 00032B08  38 21 00 10 */	addi r1, r1, 0x10
/* 80035BCC 00032B0C  4E 80 00 20 */	blr 

.global dSv_info_c_NS_initdata_to_card
dSv_info_c_NS_initdata_to_card:
/* 80035BD0 00032B10  94 21 F6 90 */	stwu r1, -0x970(r1)
/* 80035BD4 00032B14  7C 08 02 A6 */	mflr r0
/* 80035BD8 00032B18  90 01 09 74 */	stw r0, 0x974(r1)
/* 80035BDC 00032B1C  93 E1 09 6C */	stw r31, 0x96c(r1)
/* 80035BE0 00032B20  1C 05 0A 94 */	mulli r0, r5, 0xa94
/* 80035BE4 00032B24  7F E4 02 14 */	add r31, r4, r0
/* 80035BE8 00032B28  38 61 01 F8 */	addi r3, r1, 0x1f8
.global dSv_memory_c
/* 80035BEC 00032B2C  3C 80 80 03 */	lis r4, dSv_memory_c@ha
.global dSv_memory_c
/* 80035BF0 00032B30  38 84 0D B0 */	addi r4, r4, dSv_memory_c@l
/* 80035BF4 00032B34  38 A0 00 00 */	li r5, 0
/* 80035BF8 00032B38  38 C0 00 20 */	li r6, 0x20
/* 80035BFC 00032B3C  38 E0 00 20 */	li r7, 0x20
/* 80035C00 00032B40  48 32 C1 61 */	bl func_80361D60
/* 80035C04 00032B44  38 61 05 F8 */	addi r3, r1, 0x5f8
.global dSv_memory2_c
/* 80035C08 00032B48  3C 80 80 03 */	lis r4, dSv_memory2_c@ha
.global dSv_memory2_c
/* 80035C0C 00032B4C  38 84 0D 80 */	addi r4, r4, dSv_memory2_c@l
/* 80035C10 00032B50  38 A0 00 00 */	li r5, 0
/* 80035C14 00032B54  38 C0 00 08 */	li r6, 8
/* 80035C18 00032B58  38 E0 00 40 */	li r7, 0x40
/* 80035C1C 00032B5C  48 32 C1 45 */	bl func_80361D60
/* 80035C20 00032B60  38 61 00 08 */	addi r3, r1, 8
/* 80035C24 00032B64  4B FF F3 F9 */	bl dSv_save_c_NS_init
/* 80035C28 00032B68  38 61 01 BC */	addi r3, r1, 0x1bc
/* 80035C2C 00032B6C  3C 80 80 38 */	lis r4, lbl_80379234@ha
/* 80035C30 00032B70  38 84 92 34 */	addi r4, r4, lbl_80379234@l
/* 80035C34 00032B74  48 33 2E F9 */	bl strcpy
/* 80035C38 00032B78  38 61 01 CD */	addi r3, r1, 0x1cd
/* 80035C3C 00032B7C  3C 80 80 38 */	lis r4, lbl_80379234@ha
/* 80035C40 00032B80  38 84 92 34 */	addi r4, r4, lbl_80379234@l
/* 80035C44 00032B84  48 33 2E E9 */	bl strcpy
/* 80035C48 00032B88  7F E3 FB 78 */	mr r3, r31
/* 80035C4C 00032B8C  38 81 00 08 */	addi r4, r1, 8
/* 80035C50 00032B90  38 A0 09 58 */	li r5, 0x958
/* 80035C54 00032B94  4B FC D8 ED */	bl func_80003540
/* 80035C58 00032B98  3C 60 80 38 */	lis r3, lbl_80379234@ha
/* 80035C5C 00032B9C  38 63 92 34 */	addi r3, r3, lbl_80379234@l
/* 80035C60 00032BA0  38 63 00 54 */	addi r3, r3, 0x54
/* 80035C64 00032BA4  38 80 09 58 */	li r4, 0x958
/* 80035C68 00032BA8  4C C6 31 82 */	crclr 6
/* 80035C6C 00032BAC  48 33 0C 11 */	bl func_8036687C
/* 80035C70 00032BB0  38 60 00 00 */	li r3, 0
/* 80035C74 00032BB4  83 E1 09 6C */	lwz r31, 0x96c(r1)
/* 80035C78 00032BB8  80 01 09 74 */	lwz r0, 0x974(r1)
/* 80035C7C 00032BBC  7C 08 03 A6 */	mtlr r0
/* 80035C80 00032BC0  38 21 09 70 */	addi r1, r1, 0x970
/* 80035C84 00032BC4  4E 80 00 20 */	blr 

