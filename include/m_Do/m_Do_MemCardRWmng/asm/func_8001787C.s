/* 8001787C 000147BC  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 80017880 000147C0  7C 08 02 A6 */ mflr r0
/* 80017884 000147C4  90 01 00 44 */ stw r0, 0x44(r1)
/* 80017888 000147C8  39 61 00 40 */ addi r11, r1, 0x40
/* 8001788C 000147CC  48 34 A9 4D */ bl _savegpr_28
/* 80017890 000147D0  7C 7F 1B 78 */ mr r31, r3
/* 80017894 000147D4  38 7F 24 00 */ addi r3, r31, 0x2400
/* 80017898 000147D8  38 80 00 20 */ li r4, 0x20
/* 8001789C 000147DC  3C A0 80 37 */ lis r5, lbl_80374408@ha
/* 800178A0 000147E0  38 A5 44 08 */ addi r5, r5, lbl_80374408@l
/* 800178A4 000147E4  4C C6 31 82 */ crclr 6
/* 800178A8 000147E8  48 34 ED 15 */ bl func_803665BC
/* 800178AC 000147EC  48 32 AE 51 */ bl OSGetTime
/* 800178B0 000147F0  38 A1 00 08 */ addi r5, r1, 8
/* 800178B4 000147F4  48 32 B0 C1 */ bl OSTicksToCalendarTime
/* 800178B8 000147F8  38 7F 24 20 */ addi r3, r31, 0x2420
/* 800178BC 000147FC  38 80 00 20 */ li r4, 0x20
/* 800178C0 00014800  3C A0 80 37 */ lis r5, lbl_80374408@ha
/* 800178C4 00014804  38 A5 44 08 */ addi r5, r5, lbl_80374408@l
/* 800178C8 00014808  38 A5 00 19 */ addi r5, r5, 0x19
/* 800178CC 0001480C  80 C1 00 18 */ lwz r6, 0x18(r1)
/* 800178D0 00014810  38 C6 00 01 */ addi r6, r6, 1
/* 800178D4 00014814  80 E1 00 14 */ lwz r7, 0x14(r1)
/* 800178D8 00014818  4C C6 31 82 */ crclr 6
/* 800178DC 0001481C  48 34 EC E1 */ bl func_803665BC
/* 800178E0 00014820  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800178E4 00014824  3B 83 61 C0 */ addi r28, r3, g_dComIfG_gameInfo@l
/* 800178E8 00014828  80 7C 5C F0 */ lwz r3, 0x5cf0(r28)
/* 800178EC 0001482C  3C 80 80 37 */ lis r4, lbl_80374408@ha
/* 800178F0 00014830  38 84 44 08 */ addi r4, r4, lbl_80374408@l
/* 800178F4 00014834  38 84 00 29 */ addi r4, r4, 0x29
/* 800178F8 00014838  81 83 00 00 */ lwz r12, 0(r3)
/* 800178FC 0001483C  81 8C 00 14 */ lwz r12, 0x14(r12)
/* 80017900 00014840  7D 89 03 A6 */ mtctr r12
/* 80017904 00014844  4E 80 04 21 */ bctrl
/* 80017908 00014848  7C 7D 1B 78 */ mr r29, r3
/* 8001790C 0001484C  80 7C 5C F0 */ lwz r3, 0x5cf0(r28)
/* 80017910 00014850  3C 80 80 37 */ lis r4, lbl_80374408@ha
/* 80017914 00014854  38 84 44 08 */ addi r4, r4, lbl_80374408@l
/* 80017918 00014858  38 84 00 3E */ addi r4, r4, 0x3e
/* 8001791C 0001485C  81 83 00 00 */ lwz r12, 0(r3)
/* 80017920 00014860  81 8C 00 14 */ lwz r12, 0x14(r12)
/* 80017924 00014864  7D 89 03 A6 */ mtctr r12
/* 80017928 00014868  4E 80 04 21 */ bctrl
/* 8001792C 0001486C  7C 7E 1B 78 */ mr r30, r3
/* 80017930 00014870  7F E3 FB 78 */ mr r3, r31
/* 80017934 00014874  80 1D 00 1C */ lwz r0, 0x1c(r29)
/* 80017938 00014878  7C 9D 02 14 */ add r4, r29, r0
/* 8001793C 0001487C  A0 1D 00 0A */ lhz r0, 0xa(r29)
/* 80017940 00014880  54 05 08 3C */ slwi r5, r0, 1
/* 80017944 00014884  38 A5 0C 00 */ addi r5, r5, 0xc00
/* 80017948 00014888  4B FE BB F9 */ bl memcpy
/* 8001794C 0001488C  38 7F 0E 00 */ addi r3, r31, 0xe00
/* 80017950 00014890  80 1E 00 1C */ lwz r0, 0x1c(r30)
/* 80017954 00014894  7C 9E 02 14 */ add r4, r30, r0
/* 80017958 00014898  38 A0 04 00 */ li r5, 0x400
/* 8001795C 0001489C  4B FE BB E5 */ bl memcpy
/* 80017960 000148A0  38 7F 12 00 */ addi r3, r31, 0x1200
/* 80017964 000148A4  80 1E 00 1C */ lwz r0, 0x1c(r30)
/* 80017968 000148A8  7C 9E 02 14 */ add r4, r30, r0
/* 8001796C 000148AC  38 A0 04 00 */ li r5, 0x400
/* 80017970 000148B0  4B FE BB D1 */ bl memcpy
/* 80017974 000148B4  38 7F 16 00 */ addi r3, r31, 0x1600
/* 80017978 000148B8  80 1E 00 1C */ lwz r0, 0x1c(r30)
/* 8001797C 000148BC  7C 9E 02 14 */ add r4, r30, r0
/* 80017980 000148C0  38 A0 04 00 */ li r5, 0x400
/* 80017984 000148C4  4B FE BB BD */ bl memcpy
/* 80017988 000148C8  38 7F 1A 00 */ addi r3, r31, 0x1a00
/* 8001798C 000148CC  80 1E 00 1C */ lwz r0, 0x1c(r30)
/* 80017990 000148D0  7C 9E 02 14 */ add r4, r30, r0
/* 80017994 000148D4  38 A0 04 00 */ li r5, 0x400
/* 80017998 000148D8  4B FE BB A9 */ bl memcpy
/* 8001799C 000148DC  38 7F 1E 00 */ addi r3, r31, 0x1e00
/* 800179A0 000148E0  80 1E 00 1C */ lwz r0, 0x1c(r30)
/* 800179A4 000148E4  7C 9E 02 14 */ add r4, r30, r0
/* 800179A8 000148E8  A0 1E 00 0A */ lhz r0, 0xa(r30)
/* 800179AC 000148EC  54 05 08 3C */ slwi r5, r0, 1
/* 800179B0 000148F0  38 A5 04 00 */ addi r5, r5, 0x400
/* 800179B4 000148F4  4B FE BB 8D */ bl memcpy
/* 800179B8 000148F8  80 7C 5C F0 */ lwz r3, 0x5cf0(r28)
/* 800179BC 000148FC  81 83 00 00 */ lwz r12, 0(r3)
/* 800179C0 00014900  81 8C 00 24 */ lwz r12, 0x24(r12)
/* 800179C4 00014904  7D 89 03 A6 */ mtctr r12
/* 800179C8 00014908  4E 80 04 21 */ bctrl
/* 800179CC 0001490C  39 61 00 40 */ addi r11, r1, 0x40
/* 800179D0 00014910  48 34 A8 55 */ bl _restgpr_28
/* 800179D4 00014914  80 01 00 44 */ lwz r0, 0x44(r1)
/* 800179D8 00014918  7C 08 03 A6 */ mtlr r0
/* 800179DC 0001491C  38 21 00 40 */ addi r1, r1, 0x40
/* 800179E0 00014920  4E 80 00 20 */ blr
