/* 8002F19C 0002C0DC  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 8002F1A0 0002C0E0  7C 08 02 A6 */ mflr r0
/* 8002F1A4 0002C0E4  90 01 00 44 */ stw r0, 0x44(r1)
/* 8002F1A8 0002C0E8  39 61 00 40 */ addi r11, r1, 0x40
/* 8002F1AC 0002C0EC  48 33 30 25 */ bl _savegpr_26
/* 8002F1B0 0002C0F0  7C 7A 1B 78 */ mr r26, r3
/* 8002F1B4 0002C0F4  7C 9B 23 78 */ mr r27, r4
/* 8002F1B8 0002C0F8  7C BC 2B 78 */ mr r28, r5
/* 8002F1BC 0002C0FC  7C DD 33 78 */ mr r29, r6
/* 8002F1C0 0002C100  7C FE 3B 78 */ mr r30, r7
/* 8002F1C4 0002C104  7D 1F 43 78 */ mr r31, r8
/* 8002F1C8 0002C108  C0 04 00 00 */ lfs f0, 0(r4)
/* 8002F1CC 0002C10C  D0 01 00 14 */ stfs f0, 0x14(r1)
/* 8002F1D0 0002C110  C0 04 00 04 */ lfs f0, 4(r4)
/* 8002F1D4 0002C114  D0 01 00 18 */ stfs f0, 0x18(r1)
/* 8002F1D8 0002C118  C0 04 00 08 */ lfs f0, 8(r4)
/* 8002F1DC 0002C11C  D0 01 00 1C */ stfs f0, 0x1c(r1)
/* 8002F1E0 0002C120  38 60 00 00 */ li r3, 0
/* 8002F1E4 0002C124  7F 44 D3 78 */ mr r4, r26
/* 8002F1E8 0002C128  38 A1 00 14 */ addi r5, r1, 0x14
/* 8002F1EC 0002C12C  7F 86 E3 78 */ mr r6, r28
/* 8002F1F0 0002C130  7F A7 EB 78 */ mr r7, r29
/* 8002F1F4 0002C134  7F C8 F3 78 */ mr r8, r30
/* 8002F1F8 0002C138  7F E9 FB 78 */ mr r9, r31
/* 8002F1FC 0002C13C  4B FF FE E5 */ bl dComIfGs_setWarpItemData
/* 8002F200 0002C140  C0 1B 00 00 */ lfs f0, 0(r27)
/* 8002F204 0002C144  D0 01 00 08 */ stfs f0, 8(r1)
/* 8002F208 0002C148  C0 1B 00 04 */ lfs f0, 4(r27)
/* 8002F20C 0002C14C  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 8002F210 0002C150  C0 1B 00 08 */ lfs f0, 8(r27)
/* 8002F214 0002C154  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 8002F218 0002C158  7F 43 D3 78 */ mr r3, r26
/* 8002F21C 0002C15C  38 81 00 08 */ addi r4, r1, 8
/* 8002F220 0002C160  7F 85 E3 78 */ mr r5, r28
/* 8002F224 0002C164  7F A6 EB 78 */ mr r6, r29
/* 8002F228 0002C168  7F C7 F3 78 */ mr r7, r30
/* 8002F22C 0002C16C  7F E8 FB 78 */ mr r8, r31
/* 8002F230 0002C170  48 00 00 1D */ bl dComIfGs_setLastWarpMarkItemData__FPCc4cXyzsScUcUc
/* 8002F234 0002C174  39 61 00 40 */ addi r11, r1, 0x40
/* 8002F238 0002C178  48 33 2F E5 */ bl _restgpr_26
/* 8002F23C 0002C17C  80 01 00 44 */ lwz r0, 0x44(r1)
/* 8002F240 0002C180  7C 08 03 A6 */ mtlr r0
/* 8002F244 0002C184  38 21 00 40 */ addi r1, r1, 0x40
/* 8002F248 0002C188  4E 80 00 20 */ blr
