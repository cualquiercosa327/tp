/* 800B607C 000B2FBC  94 21 FF 40 */ stwu r1, -0xc0(r1)
/* 800B6080 000B2FC0  7C 08 02 A6 */ mflr r0
/* 800B6084 000B2FC4  90 01 00 C4 */ stw r0, 0xc4(r1)
/* 800B6088 000B2FC8  DB E1 00 B0 */ stfd f31, 0xb0(r1)
/* 800B608C 000B2FCC  F3 E1 00 B8 */ psq_st f31, 184(r1), 0, 0
/* 800B6090 000B2FD0  DB C1 00 A0 */ stfd f30, 0xa0(r1)
/* 800B6094 000B2FD4  F3 C1 00 A8 */ psq_st f30, 168(r1), 0, 0
/* 800B6098 000B2FD8  DB A1 00 90 */ stfd f29, 0x90(r1)
/* 800B609C 000B2FDC  F3 A1 00 98 */ psq_st f29, 152(r1), 0, 0
/* 800B60A0 000B2FE0  DB 81 00 80 */ stfd f28, 0x80(r1)
/* 800B60A4 000B2FE4  F3 81 00 88 */ psq_st f28, 136(r1), 0, 0
/* 800B60A8 000B2FE8  DB 61 00 70 */ stfd f27, 0x70(r1)
/* 800B60AC 000B2FEC  F3 61 00 78 */ psq_st f27, 120(r1), 0, 0
/* 800B60B0 000B2FF0  DB 41 00 60 */ stfd f26, 0x60(r1)
/* 800B60B4 000B2FF4  F3 41 00 68 */ psq_st f26, 104(r1), 0, 0
/* 800B60B8 000B2FF8  39 61 00 60 */ addi r11, r1, 0x60
/* 800B60BC 000B2FFC  48 2A C1 15 */ bl _savegpr_26
/* 800B60C0 000B3000  7C 7A 1B 78 */ mr r26, r3
/* 800B60C4 000B3004  3C 80 80 39 */ lis r4, lbl_8038D658@ha
/* 800B60C8 000B3008  3B C4 D6 58 */ addi r30, r4, lbl_8038D658@l
/* 800B60CC 000B300C  48 02 CE BD */ bl daAlink_c_NS_checkMagneBootsFly
/* 800B60D0 000B3010  2C 03 00 00 */ cmpwi r3, 0
/* 800B60D4 000B3014  41 82 00 0C */ beq lbl_800B60E0
/* 800B60D8 000B3018  38 60 00 01 */ li r3, 1
/* 800B60DC 000B301C  48 00 08 A8 */ b lbl_800B6984
lbl_800B60E0:
/* 800B60E0 000B3020  88 1A 2F BD */ lbz r0, 0x2fbd(r26)
/* 800B60E4 000B3024  28 00 00 FF */ cmplwi r0, 0xff
/* 800B60E8 000B3028  41 82 00 14 */ beq lbl_800B60FC
/* 800B60EC 000B302C  7F 43 D3 78 */ mr r3, r26
/* 800B60F0 000B3030  48 06 20 81 */ bl daAlink_c_NS_checkFlyAtnWait
/* 800B60F4 000B3034  2C 03 00 00 */ cmpwi r3, 0
/* 800B60F8 000B3038  41 82 00 0C */ beq lbl_800B6104
lbl_800B60FC:
/* 800B60FC 000B303C  38 60 00 01 */ li r3, 1
/* 800B6100 000B3040  48 00 08 84 */ b lbl_800B6984
lbl_800B6104:
/* 800B6104 000B3044  A0 BA 2F E8 */ lhz r5, 0x2fe8(r26)
/* 800B6108 000B3048  28 05 01 25 */ cmplwi r5, 0x125
/* 800B610C 000B304C  41 82 00 0C */ beq lbl_800B6118
/* 800B6110 000B3050  28 05 01 26 */ cmplwi r5, 0x126
/* 800B6114 000B3054  40 82 00 18 */ bne lbl_800B612C
lbl_800B6118:
/* 800B6118 000B3058  A8 1A 30 12 */ lha r0, 0x3012(r26)
/* 800B611C 000B305C  2C 00 00 00 */ cmpwi r0, 0
/* 800B6120 000B3060  41 82 00 0C */ beq lbl_800B612C
/* 800B6124 000B3064  38 60 00 00 */ li r3, 0
/* 800B6128 000B3068  48 00 08 5C */ b lbl_800B6984
lbl_800B612C:
/* 800B612C 000B306C  80 9A 31 A0 */ lwz r4, 0x31a0(r26)
/* 800B6130 000B3070  3C 60 00 07 */ lis r3, 0x00070C12@ha
/* 800B6134 000B3074  38 03 0C 12 */ addi r0, r3, 0x00070C12@l
/* 800B6138 000B3078  7C 80 00 39 */ and. r0, r4, r0
/* 800B613C 000B307C  40 82 07 A0 */ bne lbl_800B68DC
/* 800B6140 000B3080  28 05 00 B0 */ cmplwi r5, 0xb0
/* 800B6144 000B3084  41 82 07 98 */ beq lbl_800B68DC
/* 800B6148 000B3088  28 05 01 4F */ cmplwi r5, 0x14f
/* 800B614C 000B308C  41 82 07 90 */ beq lbl_800B68DC
/* 800B6150 000B3090  38 00 00 00 */ li r0, 0
/* 800B6154 000B3094  88 7A 05 6A */ lbz r3, 0x56a(r26)
/* 800B6158 000B3098  28 03 00 00 */ cmplwi r3, 0
/* 800B615C 000B309C  41 82 00 10 */ beq lbl_800B616C
/* 800B6160 000B30A0  28 03 00 26 */ cmplwi r3, 0x26
/* 800B6164 000B30A4  40 80 00 08 */ bge lbl_800B616C
/* 800B6168 000B30A8  38 00 00 01 */ li r0, 1
lbl_800B616C:
/* 800B616C 000B30AC  54 00 06 3F */ clrlwi. r0, r0, 0x18
/* 800B6170 000B30B0  40 82 07 6C */ bne lbl_800B68DC
/* 800B6174 000B30B4  A0 1A 06 04 */ lhz r0, 0x604(r26)
/* 800B6178 000B30B8  2C 00 00 05 */ cmpwi r0, 5
/* 800B617C 000B30BC  41 82 07 60 */ beq lbl_800B68DC
/* 800B6180 000B30C0  80 7A 05 70 */ lwz r3, 0x570(r26)
/* 800B6184 000B30C4  54 60 04 E7 */ rlwinm. r0, r3, 0, 0x13, 0x13
/* 800B6188 000B30C8  40 82 07 54 */ bne lbl_800B68DC
/* 800B618C 000B30CC  80 1A 19 9C */ lwz r0, 0x199c(r26)
/* 800B6190 000B30D0  54 00 06 B5 */ rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800B6194 000B30D4  40 82 07 48 */ bne lbl_800B68DC
/* 800B6198 000B30D8  54 60 02 11 */ rlwinm. r0, r3, 0, 8, 8
/* 800B619C 000B30DC  41 82 00 1C */ beq lbl_800B61B8
/* 800B61A0 000B30E0  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800B61A4 000B30E4  D0 1A 04 FC */ stfs f0, 0x4fc(r26)
/* 800B61A8 000B30E8  7F 43 D3 78 */ mr r3, r26
/* 800B61AC 000B30EC  38 80 00 00 */ li r4, 0
/* 800B61B0 000B30F0  48 04 E1 49 */ bl daAlink_c_NS_procSwimWaitInit
/* 800B61B4 000B30F4  48 00 07 D0 */ b lbl_800B6984
lbl_800B61B8:
/* 800B61B8 000B30F8  C0 3A 1A 08 */ lfs f1, 0x1a08(r26)
/* 800B61BC 000B30FC  C0 1A 04 D4 */ lfs f0, 0x4d4(r26)
/* 800B61C0 000B3100  EF E1 00 28 */ fsubs f31, f1, f0
/* 800B61C4 000B3104  C0 0D 81 14 */ lfs f0, lbl_80450694-_SDA_BASE_(r13)
/* 800B61C8 000B3108  FC 1F 00 40 */ fcmpo cr0, f31, f0
/* 800B61CC 000B310C  40 80 07 B4 */ bge lbl_800B6980
/* 800B61D0 000B3110  38 60 00 00 */ li r3, 0
/* 800B61D4 000B3114  A0 1A 1F BC */ lhz r0, 0x1fbc(r26)
/* 800B61D8 000B3118  28 00 00 62 */ cmplwi r0, 0x62
/* 800B61DC 000B311C  41 82 00 10 */ beq lbl_800B61EC
/* 800B61E0 000B3120  54 00 04 3E */ clrlwi r0, r0, 0x10
/* 800B61E4 000B3124  28 00 02 A0 */ cmplwi r0, 0x2a0
/* 800B61E8 000B3128  40 82 00 08 */ bne lbl_800B61F0
lbl_800B61EC:
/* 800B61EC 000B312C  38 60 00 01 */ li r3, 1
lbl_800B61F0:
/* 800B61F0 000B3130  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B61F4 000B3134  41 82 00 14 */ beq lbl_800B6208
/* 800B61F8 000B3138  7F 43 D3 78 */ mr r3, r26
/* 800B61FC 000B313C  38 80 00 02 */ li r4, 2
/* 800B6200 000B3140  C0 22 92 BC */ lfs f1, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800B6204 000B3144  4B FF 75 21 */ bl daAlink_c_NS_resetUpperAnime
lbl_800B6208:
/* 800B6208 000B3148  C0 7A 35 C4 */ lfs f3, 0x35c4(r26)
/* 800B620C 000B314C  C0 5A 35 AC */ lfs f2, 0x35ac(r26)
/* 800B6210 000B3150  C0 3A 04 F8 */ lfs f1, 0x4f8(r26)
/* 800B6214 000B3154  C0 1A 35 94 */ lfs f0, 0x3594(r26)
/* 800B6218 000B3158  EC 01 00 2A */ fadds f0, f1, f0
/* 800B621C 000B315C  EC 02 00 2A */ fadds f0, f2, f0
/* 800B6220 000B3160  EF C3 00 2A */ fadds f30, f3, f0
/* 800B6224 000B3164  C0 7A 35 CC */ lfs f3, 0x35cc(r26)
/* 800B6228 000B3168  C0 5A 35 B4 */ lfs f2, 0x35b4(r26)
/* 800B622C 000B316C  C0 3A 05 00 */ lfs f1, 0x500(r26)
/* 800B6230 000B3170  C0 1A 35 9C */ lfs f0, 0x359c(r26)
/* 800B6234 000B3174  EC 01 00 2A */ fadds f0, f1, f0
/* 800B6238 000B3178  EC 02 00 2A */ fadds f0, f2, f0
/* 800B623C 000B317C  EF A3 00 2A */ fadds f29, f3, f0
/* 800B6240 000B3180  38 00 00 01 */ li r0, 1
/* 800B6244 000B3184  EC 3E 07 B2 */ fmuls f1, f30, f30
/* 800B6248 000B3188  EC 1D 07 72 */ fmuls f0, f29, f29
/* 800B624C 000B318C  EC 21 00 2A */ fadds f1, f1, f0
/* 800B6250 000B3190  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800B6254 000B3194  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800B6258 000B3198  40 81 00 0C */ ble lbl_800B6264
/* 800B625C 000B319C  FC 00 08 34 */ frsqrte f0, f1
/* 800B6260 000B31A0  EC 20 00 72 */ fmuls f1, f0, f1
lbl_800B6264:
/* 800B6264 000B31A4  FF 60 08 90 */ fmr f27, f1
/* 800B6268 000B31A8  C0 02 93 E4 */ lfs f0, lbl_80452DE4-_SDA2_BASE_(r2)
/* 800B626C 000B31AC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800B6270 000B31B0  40 80 00 50 */ bge lbl_800B62C0
/* 800B6274 000B31B4  C0 3A 04 D0 */ lfs f1, 0x4d0(r26)
/* 800B6278 000B31B8  C0 1A 35 40 */ lfs f0, 0x3540(r26)
/* 800B627C 000B31BC  EF C1 00 28 */ fsubs f30, f1, f0
/* 800B6280 000B31C0  C0 3A 04 D8 */ lfs f1, 0x4d8(r26)
/* 800B6284 000B31C4  C0 1A 35 48 */ lfs f0, 0x3548(r26)
/* 800B6288 000B31C8  EF A1 00 28 */ fsubs f29, f1, f0
/* 800B628C 000B31CC  EC 3E 07 B2 */ fmuls f1, f30, f30
/* 800B6290 000B31D0  EC 1D 07 72 */ fmuls f0, f29, f29
/* 800B6294 000B31D4  EC 21 00 2A */ fadds f1, f1, f0
/* 800B6298 000B31D8  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800B629C 000B31DC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800B62A0 000B31E0  40 81 00 0C */ ble lbl_800B62AC
/* 800B62A4 000B31E4  FC 00 08 34 */ frsqrte f0, f1
/* 800B62A8 000B31E8  EC 20 00 72 */ fmuls f1, f0, f1
lbl_800B62AC:
/* 800B62AC 000B31EC  FF 60 08 90 */ fmr f27, f1
/* 800B62B0 000B31F0  C0 02 93 E4 */ lfs f0, lbl_80452DE4-_SDA2_BASE_(r2)
/* 800B62B4 000B31F4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800B62B8 000B31F8  40 80 00 08 */ bge lbl_800B62C0
/* 800B62BC 000B31FC  38 00 00 00 */ li r0, 0
lbl_800B62C0:
/* 800B62C0 000B3200  2C 00 00 00 */ cmpwi r0, 0
/* 800B62C4 000B3204  41 82 05 D8 */ beq lbl_800B689C
/* 800B62C8 000B3208  FC 20 F0 90 */ fmr f1, f30
/* 800B62CC 000B320C  FC 40 E8 90 */ fmr f2, f29
/* 800B62D0 000B3210  48 1B 13 A5 */ bl cM_atan2s__Fff
/* 800B62D4 000B3214  7C 7C 1B 78 */ mr r28, r3
/* 800B62D8 000B3218  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800B62DC 000B321C  EC 00 D8 24 */ fdivs f0, f0, f27
/* 800B62E0 000B3220  EF DE 00 32 */ fmuls f30, f30, f0
/* 800B62E4 000B3224  EF 9D 00 32 */ fmuls f28, f29, f0
/* 800B62E8 000B3228  C0 3A 04 D4 */ lfs f1, 0x4d4(r26)
/* 800B62EC 000B322C  C0 1A 04 FC */ lfs f0, 0x4fc(r26)
/* 800B62F0 000B3230  EC 01 00 28 */ fsubs f0, f1, f0
/* 800B62F4 000B3234  D0 1A 04 D4 */ stfs f0, 0x4d4(r26)
/* 800B62F8 000B3238  C0 1A 37 A0 */ lfs f0, 0x37a0(r26)
/* 800B62FC 000B323C  C0 42 92 E0 */ lfs f2, lbl_80452CE0-_SDA2_BASE_(r2)
/* 800B6300 000B3240  EF A2 07 32 */ fmuls f29, f2, f28
/* 800B6304 000B3244  EC 60 E8 28 */ fsubs f3, f0, f29
/* 800B6308 000B3248  C0 22 93 50 */ lfs f1, lbl_80452D50-_SDA2_BASE_(r2)
/* 800B630C 000B324C  C0 1A 37 9C */ lfs f0, 0x379c(r26)
/* 800B6310 000B3250  EC 21 00 2A */ fadds f1, f1, f0
/* 800B6314 000B3254  C0 1A 37 98 */ lfs f0, 0x3798(r26)
/* 800B6318 000B3258  EF 62 07 B2 */ fmuls f27, f2, f30
/* 800B631C 000B325C  EC 00 D8 28 */ fsubs f0, f0, f27
/* 800B6320 000B3260  D0 01 00 14 */ stfs f0, 0x14(r1)
/* 800B6324 000B3264  D0 21 00 18 */ stfs f1, 0x18(r1)
/* 800B6328 000B3268  D0 61 00 1C */ stfs f3, 0x1c(r1)
/* 800B632C 000B326C  38 7A 1D 08 */ addi r3, r26, 0x1d08
/* 800B6330 000B3270  38 81 00 14 */ addi r4, r1, 0x14
/* 800B6334 000B3274  48 1B 19 F5 */ bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800B6338 000B3278  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 800B633C 000B327C  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 800B6340 000B3280  90 01 00 44 */ stw r0, 0x44(r1)
/* 800B6344 000B3284  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800B6348 000B3288  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800B634C 000B328C  3B A3 0F 38 */ addi r29, r3, 0xf38
/* 800B6350 000B3290  7F A3 EB 78 */ mr r3, r29
/* 800B6354 000B3294  38 9A 1D 08 */ addi r4, r26, 0x1d08
/* 800B6358 000B3298  4B FB E1 49 */ bl cBgS_NS_GroundCross
/* 800B635C 000B329C  C0 5A 04 D4 */ lfs f2, 0x4d4(r26)
/* 800B6360 000B32A0  C0 02 93 50 */ lfs f0, lbl_80452D50-_SDA2_BASE_(r2)
/* 800B6364 000B32A4  EC 02 00 28 */ fsubs f0, f2, f0
/* 800B6368 000B32A8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800B636C 000B32AC  40 81 00 1C */ ble lbl_800B6388
/* 800B6370 000B32B0  7F A3 EB 78 */ mr r3, r29
/* 800B6374 000B32B4  38 9A 1D 1C */ addi r4, r26, 0x1d1c
/* 800B6378 000B32B8  38 A1 00 34 */ addi r5, r1, 0x34
/* 800B637C 000B32BC  4B FB E3 C9 */ bl cBgS_NS_GetTriPla
/* 800B6380 000B32C0  7C 7F 1B 78 */ mr r31, r3
/* 800B6384 000B32C4  48 00 00 08 */ b lbl_800B638C
lbl_800B6388:
/* 800B6388 000B32C8  3B E0 00 00 */ li r31, 0
lbl_800B638C:
/* 800B638C 000B32CC  C0 7A 04 D8 */ lfs f3, 0x4d8(r26)
/* 800B6390 000B32D0  EC A3 E8 2A */ fadds f5, f3, f29
/* 800B6394 000B32D4  C0 3A 04 D4 */ lfs f1, 0x4d4(r26)
/* 800B6398 000B32D8  C0 02 93 3C */ lfs f0, lbl_80452D3C-_SDA2_BASE_(r2)
/* 800B639C 000B32DC  EC 81 00 28 */ fsubs f4, f1, f0
/* 800B63A0 000B32E0  C0 5A 04 D0 */ lfs f2, 0x4d0(r26)
/* 800B63A4 000B32E4  EC 02 D8 2A */ fadds f0, f2, f27
/* 800B63A8 000B32E8  D0 01 00 14 */ stfs f0, 0x14(r1)
/* 800B63AC 000B32EC  D0 81 00 18 */ stfs f4, 0x18(r1)
/* 800B63B0 000B32F0  D0 A1 00 1C */ stfs f5, 0x1c(r1)
/* 800B63B4 000B32F4  C0 22 93 50 */ lfs f1, lbl_80452D50-_SDA2_BASE_(r2)
/* 800B63B8 000B32F8  EC 01 07 32 */ fmuls f0, f1, f28
/* 800B63BC 000B32FC  EC 63 00 28 */ fsubs f3, f3, f0
/* 800B63C0 000B3300  EC 01 07 B2 */ fmuls f0, f1, f30
/* 800B63C4 000B3304  EC 02 00 28 */ fsubs f0, f2, f0
/* 800B63C8 000B3308  D0 01 00 08 */ stfs f0, 8(r1)
/* 800B63CC 000B330C  D0 81 00 0C */ stfs f4, 0xc(r1)
/* 800B63D0 000B3310  D0 61 00 10 */ stfs f3, 0x10(r1)
/* 800B63D4 000B3314  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 800B63D8 000B3318  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 800B63DC 000B331C  90 01 00 30 */ stw r0, 0x30(r1)
/* 800B63E0 000B3320  7F 43 D3 78 */ mr r3, r26
/* 800B63E4 000B3324  38 81 00 14 */ addi r4, r1, 0x14
/* 800B63E8 000B3328  38 A1 00 08 */ addi r5, r1, 8
/* 800B63EC 000B332C  4B FE BD AD */ bl daAlink_c_NS_commonLineCheck
/* 800B63F0 000B3330  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B63F4 000B3334  41 82 00 18 */ beq lbl_800B640C
/* 800B63F8 000B3338  7F A3 EB 78 */ mr r3, r29
/* 800B63FC 000B333C  38 9A 1B 5C */ addi r4, r26, 0x1b5c
/* 800B6400 000B3340  38 A1 00 20 */ addi r5, r1, 0x20
/* 800B6404 000B3344  4B FB E3 41 */ bl cBgS_NS_GetTriPla
/* 800B6408 000B3348  48 00 00 08 */ b lbl_800B6410
lbl_800B640C:
/* 800B640C 000B334C  38 60 00 00 */ li r3, 0
lbl_800B6410:
/* 800B6410 000B3350  7C 7B 1B 78 */ mr r27, r3
/* 800B6414 000B3354  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B6418 000B3358  41 82 00 64 */ beq lbl_800B647C
/* 800B641C 000B335C  C0 21 00 24 */ lfs f1, 0x24(r1)
/* 800B6420 000B3360  48 1B 1D F1 */ bl cBgW_CheckBWall
/* 800B6424 000B3364  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B6428 000B3368  40 82 00 54 */ bne lbl_800B647C
/* 800B642C 000B336C  C0 01 00 18 */ lfs f0, 0x18(r1)
/* 800B6430 000B3370  C0 22 93 00 */ lfs f1, lbl_80452D00-_SDA2_BASE_(r2)
/* 800B6434 000B3374  EC 00 08 28 */ fsubs f0, f0, f1
/* 800B6438 000B3378  D0 01 00 18 */ stfs f0, 0x18(r1)
/* 800B643C 000B337C  C0 01 00 0C */ lfs f0, 0xc(r1)
/* 800B6440 000B3380  EC 00 08 28 */ fsubs f0, f0, f1
/* 800B6444 000B3384  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 800B6448 000B3388  7F 43 D3 78 */ mr r3, r26
/* 800B644C 000B338C  38 81 00 14 */ addi r4, r1, 0x14
/* 800B6450 000B3390  38 A1 00 08 */ addi r5, r1, 8
/* 800B6454 000B3394  4B FE BD 45 */ bl daAlink_c_NS_commonLineCheck
/* 800B6458 000B3398  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B645C 000B339C  41 82 00 1C */ beq lbl_800B6478
/* 800B6460 000B33A0  7F A3 EB 78 */ mr r3, r29
/* 800B6464 000B33A4  38 9A 1B 5C */ addi r4, r26, 0x1b5c
/* 800B6468 000B33A8  38 A1 00 20 */ addi r5, r1, 0x20
/* 800B646C 000B33AC  4B FB E2 D9 */ bl cBgS_NS_GetTriPla
/* 800B6470 000B33B0  7C 7B 1B 78 */ mr r27, r3
/* 800B6474 000B33B4  48 00 00 08 */ b lbl_800B647C
lbl_800B6478:
/* 800B6478 000B33B8  3B 60 00 00 */ li r27, 0
lbl_800B647C:
/* 800B647C 000B33BC  C3 BA 33 98 */ lfs f29, 0x3398(r26)
/* 800B6480 000B33C0  80 7A 05 74 */ lwz r3, 0x574(r26)
/* 800B6484 000B33C4  54 60 01 8D */ rlwinm. r0, r3, 0, 6, 6
/* 800B6488 000B33C8  41 82 00 28 */ beq lbl_800B64B0
/* 800B648C 000B33CC  54 60 02 53 */ rlwinm. r0, r3, 0, 9, 9
/* 800B6490 000B33D0  41 82 00 10 */ beq lbl_800B64A0
/* 800B6494 000B33D4  38 7E 1A 50 */ addi r3, r30, 0x1a50
/* 800B6498 000B33D8  C3 43 00 44 */ lfs f26, 0x44(r3)
/* 800B649C 000B33DC  48 00 00 0C */ b lbl_800B64A8
lbl_800B64A0:
/* 800B64A0 000B33E0  38 7E 1A 50 */ addi r3, r30, 0x1a50
/* 800B64A4 000B33E4  C3 43 00 64 */ lfs f26, 0x64(r3)
lbl_800B64A8:
/* 800B64A8 000B33E8  C3 62 92 C0 */ lfs f27, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800B64AC 000B33EC  48 00 00 24 */ b lbl_800B64D0
lbl_800B64B0:
/* 800B64B0 000B33F0  A0 1A 1F BC */ lhz r0, 0x1fbc(r26)
/* 800B64B4 000B33F4  28 00 01 9C */ cmplwi r0, 0x19c
/* 800B64B8 000B33F8  40 82 00 0C */ bne lbl_800B64C4
/* 800B64BC 000B33FC  C3 42 92 C4 */ lfs f26, lbl_80452CC4-_SDA2_BASE_(r2)
/* 800B64C0 000B3400  48 00 00 0C */ b lbl_800B64CC
lbl_800B64C4:
/* 800B64C4 000B3404  38 7E 0A 10 */ addi r3, r30, 0xa10
/* 800B64C8 000B3408  C3 43 00 5C */ lfs f26, 0x5c(r3)
lbl_800B64CC:
/* 800B64CC 000B340C  C3 62 93 B4 */ lfs f27, lbl_80452DB4-_SDA2_BASE_(r2)
lbl_800B64D0:
/* 800B64D0 000B3410  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800B64D4 000B3414  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800B64D8 000B3418  A0 03 00 02 */ lhz r0, 2(r3)
/* 800B64DC 000B341C  28 00 00 00 */ cmplwi r0, 0
/* 800B64E0 000B3420  40 82 00 18 */ bne lbl_800B64F8
/* 800B64E4 000B3424  38 63 00 9C */ addi r3, r3, 0x9c
/* 800B64E8 000B3428  38 80 00 6C */ li r4, 0x6c
/* 800B64EC 000B342C  4B F7 D1 F5 */ bl checkBottle__17dSv_player_item_cFUc
/* 800B64F0 000B3430  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B64F4 000B3434  41 82 02 CC */ beq lbl_800B67C0
lbl_800B64F8:
/* 800B64F8 000B3438  88 1A 05 6A */ lbz r0, 0x56a(r26)
/* 800B64FC 000B343C  28 00 00 2B */ cmplwi r0, 0x2b
/* 800B6500 000B3440  41 82 02 C0 */ beq lbl_800B67C0
/* 800B6504 000B3444  48 00 A1 2D */ bl daAlink_c_NS_checkNotAutoJumpStage
/* 800B6508 000B3448  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B650C 000B344C  41 82 00 10 */ beq lbl_800B651C
/* 800B6510 000B3450  80 1A 05 74 */ lwz r0, 0x574(r26)
/* 800B6514 000B3454  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800B6518 000B3458  41 82 02 A8 */ beq lbl_800B67C0
lbl_800B651C:
/* 800B651C 000B345C  80 1A 31 78 */ lwz r0, 0x3178(r26)
/* 800B6520 000B3460  2C 00 00 03 */ cmpwi r0, 3
/* 800B6524 000B3464  41 82 01 34 */ beq lbl_800B6658
/* 800B6528 000B3468  80 1A 05 88 */ lwz r0, 0x588(r26)
/* 800B652C 000B346C  54 00 06 B5 */ rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800B6530 000B3470  40 82 01 28 */ bne lbl_800B6658
/* 800B6534 000B3474  FC 1D D0 40 */ fcmpo cr0, f29, f26
/* 800B6538 000B3478  4C 41 13 82 */ cror 2, 1, 2
/* 800B653C 000B347C  40 82 01 1C */ bne lbl_800B6658
/* 800B6540 000B3480  7F 43 D3 78 */ mr r3, r26
/* 800B6544 000B3484  81 9A 06 28 */ lwz r12, 0x628(r26)
/* 800B6548 000B3488  81 8C 02 80 */ lwz r12, 0x280(r12)
/* 800B654C 000B348C  7D 89 03 A6 */ mtctr r12
/* 800B6550 000B3490  4E 80 04 21 */ bctrl
/* 800B6554 000B3494  2C 03 00 00 */ cmpwi r3, 0
/* 800B6558 000B3498  41 82 00 10 */ beq lbl_800B6568
/* 800B655C 000B349C  A0 1A 1F BC */ lhz r0, 0x1fbc(r26)
/* 800B6560 000B34A0  28 00 01 9C */ cmplwi r0, 0x19c
/* 800B6564 000B34A4  40 82 00 F4 */ bne lbl_800B6658
lbl_800B6568:
/* 800B6568 000B34A8  C0 1A 33 A8 */ lfs f0, 0x33a8(r26)
/* 800B656C 000B34AC  C0 22 95 DC */ lfs f1, lbl_80452FDC-_SDA2_BASE_(r2)
/* 800B6570 000B34B0  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 800B6574 000B34B4  41 81 00 34 */ bgt lbl_800B65A8
/* 800B6578 000B34B8  A0 1A 1F BC */ lhz r0, 0x1fbc(r26)
/* 800B657C 000B34BC  28 00 01 9C */ cmplwi r0, 0x19c
/* 800B6580 000B34C0  40 82 00 10 */ bne lbl_800B6590
/* 800B6584 000B34C4  C0 1A 33 AC */ lfs f0, 0x33ac(r26)
/* 800B6588 000B34C8  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 800B658C 000B34CC  41 81 00 1C */ bgt lbl_800B65A8
lbl_800B6590:
/* 800B6590 000B34D0  A0 1A 2F E8 */ lhz r0, 0x2fe8(r26)
/* 800B6594 000B34D4  28 00 01 37 */ cmplwi r0, 0x137
/* 800B6598 000B34D8  41 82 00 10 */ beq lbl_800B65A8
/* 800B659C 000B34DC  80 1A 05 88 */ lwz r0, 0x588(r26)
/* 800B65A0 000B34E0  54 00 05 AD */ rlwinm. r0, r0, 0, 0x16, 0x16
/* 800B65A4 000B34E4  41 82 00 B4 */ beq lbl_800B6658
lbl_800B65A8:
/* 800B65A8 000B34E8  7F 83 E3 78 */ mr r3, r28
/* 800B65AC 000B34EC  A8 9A 04 E6 */ lha r4, 0x4e6(r26)
/* 800B65B0 000B34F0  48 1B A8 75 */ bl cLib_distanceAngleS__Fss
/* 800B65B4 000B34F4  2C 03 08 00 */ cmpwi r3, 0x800
/* 800B65B8 000B34F8  40 80 00 A0 */ bge lbl_800B6658
/* 800B65BC 000B34FC  57 60 06 3F */ clrlwi. r0, r27, 0x18
/* 800B65C0 000B3500  41 82 00 14 */ beq lbl_800B65D4
/* 800B65C4 000B3504  C0 1A 1B 78 */ lfs f0, 0x1b78(r26)
/* 800B65C8 000B3508  D0 1A 04 D0 */ stfs f0, 0x4d0(r26)
/* 800B65CC 000B350C  C0 1A 1B 80 */ lfs f0, 0x1b80(r26)
/* 800B65D0 000B3510  D0 1A 04 D8 */ stfs f0, 0x4d8(r26)
lbl_800B65D4:
/* 800B65D4 000B3514  80 1A 05 74 */ lwz r0, 0x574(r26)
/* 800B65D8 000B3518  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800B65DC 000B351C  41 82 00 24 */ beq lbl_800B6600
/* 800B65E0 000B3520  7F 43 D3 78 */ mr r3, r26
/* 800B65E4 000B3524  38 80 00 00 */ li r4, 0
/* 800B65E8 000B3528  48 07 83 E1 */ bl daAlink_c_NS_procWolfAutoJumpInit
/* 800B65EC 000B352C  3C 80 80 3A */ lis r4, lbl_803A37C0@ha
/* 800B65F0 000B3530  38 04 37 C0 */ addi r0, r4, lbl_803A37C0@l
/* 800B65F4 000B3534  90 01 00 30 */ stw r0, 0x30(r1)
/* 800B65F8 000B3538  90 01 00 44 */ stw r0, 0x44(r1)
/* 800B65FC 000B353C  48 00 03 88 */ b lbl_800B6984
lbl_800B6600:
/* 800B6600 000B3540  7F 43 D3 78 */ mr r3, r26
/* 800B6604 000B3544  48 02 D6 69 */ bl daAlink_c_NS_checkGrabAnime
/* 800B6608 000B3548  2C 03 00 00 */ cmpwi r3, 0
/* 800B660C 000B354C  40 82 00 2C */ bne lbl_800B6638
/* 800B6610 000B3550  80 1A 31 78 */ lwz r0, 0x3178(r26)
/* 800B6614 000B3554  2C 00 00 07 */ cmpwi r0, 7
/* 800B6618 000B3558  40 82 00 20 */ bne lbl_800B6638
/* 800B661C 000B355C  7F 43 D3 78 */ mr r3, r26
/* 800B6620 000B3560  48 01 00 BD */ bl daAlink_c_NS_procDiveJumpInit
/* 800B6624 000B3564  3C 80 80 3A */ lis r4, lbl_803A37C0@ha
/* 800B6628 000B3568  38 04 37 C0 */ addi r0, r4, lbl_803A37C0@l
/* 800B662C 000B356C  90 01 00 30 */ stw r0, 0x30(r1)
/* 800B6630 000B3570  90 01 00 44 */ stw r0, 0x44(r1)
/* 800B6634 000B3574  48 00 03 50 */ b lbl_800B6984
lbl_800B6638:
/* 800B6638 000B3578  7F 43 D3 78 */ mr r3, r26
/* 800B663C 000B357C  38 80 00 00 */ li r4, 0
/* 800B6640 000B3580  48 00 F8 29 */ bl daAlink_c_NS_procAutoJumpInit
/* 800B6644 000B3584  3C 80 80 3A */ lis r4, lbl_803A37C0@ha
/* 800B6648 000B3588  38 04 37 C0 */ addi r0, r4, lbl_803A37C0@l
/* 800B664C 000B358C  90 01 00 30 */ stw r0, 0x30(r1)
/* 800B6650 000B3590  90 01 00 44 */ stw r0, 0x44(r1)
/* 800B6654 000B3594  48 00 03 30 */ b lbl_800B6984
lbl_800B6658:
/* 800B6658 000B3598  80 1A 05 88 */ lwz r0, 0x588(r26)
/* 800B665C 000B359C  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800B6660 000B35A0  40 82 01 60 */ bne lbl_800B67C0
/* 800B6664 000B35A4  88 1A 05 6A */ lbz r0, 0x56a(r26)
/* 800B6668 000B35A8  28 00 00 2B */ cmplwi r0, 0x2b
/* 800B666C 000B35AC  41 82 01 54 */ beq lbl_800B67C0
/* 800B6670 000B35B0  57 60 06 3F */ clrlwi. r0, r27, 0x18
/* 800B6674 000B35B4  41 82 01 4C */ beq lbl_800B67C0
/* 800B6678 000B35B8  7F A3 EB 78 */ mr r3, r29
/* 800B667C 000B35BC  38 9A 1B 5C */ addi r4, r26, 0x1b5c
/* 800B6680 000B35C0  4B FB E7 81 */ bl dBgS_NS_GetWallCode
/* 800B6684 000B35C4  2C 03 00 02 */ cmpwi r3, 2
/* 800B6688 000B35C8  41 82 01 38 */ beq lbl_800B67C0
/* 800B668C 000B35CC  38 7E 0B 9C */ addi r3, r30, 0xb9c
/* 800B6690 000B35D0  C0 03 00 18 */ lfs f0, 0x18(r3)
/* 800B6694 000B35D4  FC 00 00 50 */ fneg f0, f0
/* 800B6698 000B35D8  FC 1F 00 40 */ fcmpo cr0, f31, f0
/* 800B669C 000B35DC  40 80 01 24 */ bge lbl_800B67C0
/* 800B66A0 000B35E0  C0 3A 04 D4 */ lfs f1, 0x4d4(r26)
/* 800B66A4 000B35E4  C0 1A 33 B4 */ lfs f0, 0x33b4(r26)
/* 800B66A8 000B35E8  EC 01 00 28 */ fsubs f0, f1, f0
/* 800B66AC 000B35EC  FC 00 D8 40 */ fcmpo cr0, f0, f27
/* 800B66B0 000B35F0  40 81 01 10 */ ble lbl_800B67C0
/* 800B66B4 000B35F4  C0 21 00 24 */ lfs f1, 0x24(r1)
/* 800B66B8 000B35F8  FC 00 0A 10 */ fabs f0, f1
/* 800B66BC 000B35FC  FC 40 00 18 */ frsp f2, f0
/* 800B66C0 000B3600  C0 02 92 A4 */ lfs f0, lbl_80452CA4-_SDA2_BASE_(r2)
/* 800B66C4 000B3604  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 800B66C8 000B3608  4C 40 13 82 */ cror 2, 0, 2
/* 800B66CC 000B360C  41 82 00 38 */ beq lbl_800B6704
/* 800B66D0 000B3610  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800B66D4 000B3614  40 80 00 EC */ bge lbl_800B67C0
/* 800B66D8 000B3618  57 E0 06 3F */ clrlwi. r0, r31, 0x18
/* 800B66DC 000B361C  41 82 00 E4 */ beq lbl_800B67C0
/* 800B66E0 000B3620  38 9A 1B 78 */ addi r4, r26, 0x1b78
/* 800B66E4 000B3624  7F 43 D3 78 */ mr r3, r26
/* 800B66E8 000B3628  38 A1 00 20 */ addi r5, r1, 0x20
/* 800B66EC 000B362C  38 C1 00 34 */ addi r6, r1, 0x34
/* 800B66F0 000B3630  7C 87 23 78 */ mr r7, r4
/* 800B66F4 000B3634  39 00 00 00 */ li r8, 0
/* 800B66F8 000B3638  4B FF 9B 05 */ bl daAlink_c_NS_getWallEdgePos
/* 800B66FC 000B363C  2C 03 00 00 */ cmpwi r3, 0
/* 800B6700 000B3640  41 82 00 C0 */ beq lbl_800B67C0
lbl_800B6704:
/* 800B6704 000B3644  C0 1A 1B 78 */ lfs f0, 0x1b78(r26)
/* 800B6708 000B3648  D0 1A 04 D0 */ stfs f0, 0x4d0(r26)
/* 800B670C 000B364C  C0 1A 1B 80 */ lfs f0, 0x1b80(r26)
/* 800B6710 000B3650  D0 1A 04 D8 */ stfs f0, 0x4d8(r26)
/* 800B6714 000B3654  80 1A 05 74 */ lwz r0, 0x574(r26)
/* 800B6718 000B3658  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800B671C 000B365C  40 82 00 4C */ bne lbl_800B6768
/* 800B6720 000B3660  7F 43 D3 78 */ mr r3, r26
/* 800B6724 000B3664  38 9A 1B 5C */ addi r4, r26, 0x1b5c
/* 800B6728 000B3668  48 04 79 31 */ bl daAlink_c_NS_checkClimbCode
/* 800B672C 000B366C  2C 03 00 00 */ cmpwi r3, 0
/* 800B6730 000B3670  41 82 00 38 */ beq lbl_800B6768
/* 800B6734 000B3674  38 7A 1E 1C */ addi r3, r26, 0x1e1c
/* 800B6738 000B3678  38 9A 1B 5C */ addi r4, r26, 0x1b5c
/* 800B673C 000B367C  48 1B 1A 0D */ bl SetPolyInfo__13cBgS_PolyInfoFRC13cBgS_PolyInfo
/* 800B6740 000B3680  38 61 00 20 */ addi r3, r1, 0x20
/* 800B6744 000B3684  48 1B 09 E5 */ bl cXyz_NS_atan2sX_Z
/* 800B6748 000B3688  7C 64 1B 78 */ mr r4, r3
/* 800B674C 000B368C  7F 43 D3 78 */ mr r3, r26
/* 800B6750 000B3690  48 04 90 C9 */ bl daAlink_c_NS_procClimbDownStartInit
/* 800B6754 000B3694  3C 80 80 3A */ lis r4, lbl_803A37C0@ha
/* 800B6758 000B3698  38 04 37 C0 */ addi r0, r4, lbl_803A37C0@l
/* 800B675C 000B369C  90 01 00 30 */ stw r0, 0x30(r1)
/* 800B6760 000B36A0  90 01 00 44 */ stw r0, 0x44(r1)
/* 800B6764 000B36A4  48 00 02 20 */ b lbl_800B6984
lbl_800B6768:
/* 800B6768 000B36A8  80 1A 05 74 */ lwz r0, 0x574(r26)
/* 800B676C 000B36AC  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800B6770 000B36B0  41 82 00 18 */ beq lbl_800B6788
/* 800B6774 000B36B4  7F 43 D3 78 */ mr r3, r26
/* 800B6778 000B36B8  38 81 00 20 */ addi r4, r1, 0x20
/* 800B677C 000B36BC  48 07 F5 5D */ bl daAlink_c_NS_procWolfHangFallStartInit
/* 800B6780 000B36C0  2C 03 00 00 */ cmpwi r3, 0
/* 800B6784 000B36C4  40 82 00 24 */ bne lbl_800B67A8
lbl_800B6788:
/* 800B6788 000B36C8  80 1A 05 74 */ lwz r0, 0x574(r26)
/* 800B678C 000B36CC  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800B6790 000B36D0  40 82 00 30 */ bne lbl_800B67C0
/* 800B6794 000B36D4  7F 43 D3 78 */ mr r3, r26
/* 800B6798 000B36D8  38 81 00 20 */ addi r4, r1, 0x20
/* 800B679C 000B36DC  48 04 47 31 */ bl daAlink_c_NS_procHangFallStartInit
/* 800B67A0 000B36E0  2C 03 00 00 */ cmpwi r3, 0
/* 800B67A4 000B36E4  41 82 00 1C */ beq lbl_800B67C0
lbl_800B67A8:
/* 800B67A8 000B36E8  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 800B67AC 000B36EC  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 800B67B0 000B36F0  90 01 00 30 */ stw r0, 0x30(r1)
/* 800B67B4 000B36F4  90 01 00 44 */ stw r0, 0x44(r1)
/* 800B67B8 000B36F8  38 60 00 01 */ li r3, 1
/* 800B67BC 000B36FC  48 00 01 C8 */ b lbl_800B6984
lbl_800B67C0:
/* 800B67C0 000B3700  A0 1A 2F E8 */ lhz r0, 0x2fe8(r26)
/* 800B67C4 000B3704  28 00 00 0E */ cmplwi r0, 0xe
/* 800B67C8 000B3708  40 82 00 0C */ bne lbl_800B67D4
/* 800B67CC 000B370C  C3 A2 92 C0 */ lfs f29, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800B67D0 000B3710  48 00 00 0C */ b lbl_800B67DC
lbl_800B67D4:
/* 800B67D4 000B3714  38 7E 0A 10 */ addi r3, r30, 0xa10
/* 800B67D8 000B3718  C3 A3 00 70 */ lfs f29, 0x70(r3)
lbl_800B67DC:
/* 800B67DC 000B371C  57 60 06 3F */ clrlwi. r0, r27, 0x18
/* 800B67E0 000B3720  41 82 00 10 */ beq lbl_800B67F0
/* 800B67E4 000B3724  C0 21 00 20 */ lfs f1, 0x20(r1)
/* 800B67E8 000B3728  C0 41 00 28 */ lfs f2, 0x28(r1)
/* 800B67EC 000B372C  48 00 00 0C */ b lbl_800B67F8
lbl_800B67F0:
/* 800B67F0 000B3730  FC 20 F0 90 */ fmr f1, f30
/* 800B67F4 000B3734  FC 40 E0 90 */ fmr f2, f28
lbl_800B67F8:
/* 800B67F8 000B3738  C0 7A 04 D0 */ lfs f3, 0x4d0(r26)
/* 800B67FC 000B373C  C0 1A 34 28 */ lfs f0, 0x3428(r26)
/* 800B6800 000B3740  EC 00 00 72 */ fmuls f0, f0, f1
/* 800B6804 000B3744  EC 03 00 2A */ fadds f0, f3, f0
/* 800B6808 000B3748  D0 1A 04 D0 */ stfs f0, 0x4d0(r26)
/* 800B680C 000B374C  C0 7A 04 D8 */ lfs f3, 0x4d8(r26)
/* 800B6810 000B3750  C0 1A 34 28 */ lfs f0, 0x3428(r26)
/* 800B6814 000B3754  EC 00 00 B2 */ fmuls f0, f0, f2
/* 800B6818 000B3758  EC 03 00 2A */ fadds f0, f3, f0
/* 800B681C 000B375C  D0 1A 04 D8 */ stfs f0, 0x4d8(r26)
/* 800B6820 000B3760  80 1A 05 74 */ lwz r0, 0x574(r26)
/* 800B6824 000B3764  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800B6828 000B3768  41 82 00 60 */ beq lbl_800B6888
/* 800B682C 000B376C  48 1B 0E 49 */ bl cM_atan2s__Fff
/* 800B6830 000B3770  A8 9A 04 E6 */ lha r4, 0x4e6(r26)
/* 800B6834 000B3774  48 1B A5 F1 */ bl cLib_distanceAngleS__Fss
/* 800B6838 000B3778  2C 03 40 00 */ cmpwi r3, 0x4000
/* 800B683C 000B377C  41 80 00 4C */ blt lbl_800B6888
/* 800B6840 000B3780  A8 1A 04 E6 */ lha r0, 0x4e6(r26)
/* 800B6844 000B3784  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 800B6848 000B3788  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 800B684C 000B378C  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 800B6850 000B3790  7C 03 04 2E */ lfsx f0, r3, r0
/* 800B6854 000B3794  C0 3A 04 D0 */ lfs f1, 0x4d0(r26)
/* 800B6858 000B3798  C0 42 94 80 */ lfs f2, lbl_80452E80-_SDA2_BASE_(r2)
/* 800B685C 000B379C  EC 02 00 32 */ fmuls f0, f2, f0
/* 800B6860 000B37A0  EC 01 00 28 */ fsubs f0, f1, f0
/* 800B6864 000B37A4  D0 1A 04 D0 */ stfs f0, 0x4d0(r26)
/* 800B6868 000B37A8  A8 1A 04 E6 */ lha r0, 0x4e6(r26)
/* 800B686C 000B37AC  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 800B6870 000B37B0  7C 63 02 14 */ add r3, r3, r0
/* 800B6874 000B37B4  C0 03 00 04 */ lfs f0, 4(r3)
/* 800B6878 000B37B8  C0 3A 04 D8 */ lfs f1, 0x4d8(r26)
/* 800B687C 000B37BC  EC 02 00 32 */ fmuls f0, f2, f0
/* 800B6880 000B37C0  EC 01 00 28 */ fsubs f0, f1, f0
/* 800B6884 000B37C4  D0 1A 04 D8 */ stfs f0, 0x4d8(r26)
lbl_800B6888:
/* 800B6888 000B37C8  3C 60 80 3A */ lis r3, lbl_803A37C0@ha
/* 800B688C 000B37CC  38 03 37 C0 */ addi r0, r3, lbl_803A37C0@l
/* 800B6890 000B37D0  90 01 00 30 */ stw r0, 0x30(r1)
/* 800B6894 000B37D4  90 01 00 44 */ stw r0, 0x44(r1)
/* 800B6898 000B37D8  48 00 00 0C */ b lbl_800B68A4
lbl_800B689C:
/* 800B689C 000B37DC  38 7E 0A 10 */ addi r3, r30, 0xa10
/* 800B68A0 000B37E0  C3 A3 00 70 */ lfs f29, 0x70(r3)
lbl_800B68A4:
/* 800B68A4 000B37E4  80 1A 05 74 */ lwz r0, 0x574(r26)
/* 800B68A8 000B37E8  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800B68AC 000B37EC  41 82 00 1C */ beq lbl_800B68C8
/* 800B68B0 000B37F0  7F 43 D3 78 */ mr r3, r26
/* 800B68B4 000B37F4  38 80 00 01 */ li r4, 1
/* 800B68B8 000B37F8  38 BE 1A 50 */ addi r5, r30, 0x1a50
/* 800B68BC 000B37FC  C0 25 00 54 */ lfs f1, 0x54(r5)
/* 800B68C0 000B3800  48 07 85 11 */ bl daAlink_c_NS_procWolfFallInit
/* 800B68C4 000B3804  48 00 00 C0 */ b lbl_800B6984
lbl_800B68C8:
/* 800B68C8 000B3808  7F 43 D3 78 */ mr r3, r26
/* 800B68CC 000B380C  38 80 00 01 */ li r4, 1
/* 800B68D0 000B3810  FC 20 E8 90 */ fmr f1, f29
/* 800B68D4 000B3814  48 01 01 75 */ bl daAlink_c_NS_procFallInit
/* 800B68D8 000B3818  48 00 00 AC */ b lbl_800B6984
lbl_800B68DC:
/* 800B68DC 000B381C  7F 43 D3 78 */ mr r3, r26
/* 800B68E0 000B3820  48 02 D6 41 */ bl daAlink_c_NS_checkGrabRooster
/* 800B68E4 000B3824  2C 03 00 00 */ cmpwi r3, 0
/* 800B68E8 000B3828  41 82 00 30 */ beq lbl_800B6918
/* 800B68EC 000B382C  C0 3A 35 B0 */ lfs f1, 0x35b0(r26)
/* 800B68F0 000B3830  C0 02 93 30 */ lfs f0, lbl_80452D30-_SDA2_BASE_(r2)
/* 800B68F4 000B3834  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800B68F8 000B3838  40 81 00 20 */ ble lbl_800B6918
/* 800B68FC 000B383C  80 1A 19 9C */ lwz r0, 0x199c(r26)
/* 800B6900 000B3840  54 00 06 F2 */ rlwinm r0, r0, 0, 0x1b, 0x19
/* 800B6904 000B3844  90 1A 19 9C */ stw r0, 0x199c(r26)
/* 800B6908 000B3848  7F 43 D3 78 */ mr r3, r26
/* 800B690C 000B384C  38 80 00 01 */ li r4, 1
/* 800B6910 000B3850  48 00 F5 59 */ bl daAlink_c_NS_procAutoJumpInit
/* 800B6914 000B3854  48 00 00 70 */ b lbl_800B6984
lbl_800B6918:
/* 800B6918 000B3858  80 1A 05 88 */ lwz r0, 0x588(r26)
/* 800B691C 000B385C  54 00 05 EF */ rlwinm. r0, r0, 0, 0x17, 0x17
/* 800B6920 000B3860  41 82 00 28 */ beq lbl_800B6948
/* 800B6924 000B3864  80 1A 19 9C */ lwz r0, 0x199c(r26)
/* 800B6928 000B3868  54 00 06 B5 */ rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800B692C 000B386C  41 82 00 1C */ beq lbl_800B6948
/* 800B6930 000B3870  80 1A 05 74 */ lwz r0, 0x574(r26)
/* 800B6934 000B3874  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800B6938 000B3878  40 82 00 10 */ bne lbl_800B6948
/* 800B693C 000B387C  7F 43 D3 78 */ mr r3, r26
/* 800B6940 000B3880  48 00 FF 11 */ bl daAlink_c_NS_procRollJumpInit
/* 800B6944 000B3884  48 00 00 40 */ b lbl_800B6984
lbl_800B6948:
/* 800B6948 000B3888  80 7A 05 70 */ lwz r3, 0x570(r26)
/* 800B694C 000B388C  54 60 04 E7 */ rlwinm. r0, r3, 0, 0x13, 0x13
/* 800B6950 000B3890  41 82 00 30 */ beq lbl_800B6980
/* 800B6954 000B3894  54 60 04 A5 */ rlwinm. r0, r3, 0, 0x12, 0x12
/* 800B6958 000B3898  40 82 00 28 */ bne lbl_800B6980
/* 800B695C 000B389C  7F 43 D3 78 */ mr r3, r26
/* 800B6960 000B38A0  48 02 C4 65 */ bl daAlink_c_NS_cancelMagneBootsOn
/* 800B6964 000B38A4  2C 03 00 00 */ cmpwi r3, 0
/* 800B6968 000B38A8  41 82 00 18 */ beq lbl_800B6980
/* 800B696C 000B38AC  7F 43 D3 78 */ mr r3, r26
/* 800B6970 000B38B0  38 80 00 01 */ li r4, 1
/* 800B6974 000B38B4  C0 22 93 3C */ lfs f1, lbl_80452D3C-_SDA2_BASE_(r2)
/* 800B6978 000B38B8  48 01 00 D1 */ bl daAlink_c_NS_procFallInit
/* 800B697C 000B38BC  48 00 00 08 */ b lbl_800B6984
lbl_800B6980:
/* 800B6980 000B38C0  38 60 00 00 */ li r3, 0
lbl_800B6984:
/* 800B6984 000B38C4  E3 E1 00 B8 */ psq_l f31, 184(r1), 0, 0
/* 800B6988 000B38C8  CB E1 00 B0 */ lfd f31, 0xb0(r1)
/* 800B698C 000B38CC  E3 C1 00 A8 */ psq_l f30, 168(r1), 0, 0
/* 800B6990 000B38D0  CB C1 00 A0 */ lfd f30, 0xa0(r1)
/* 800B6994 000B38D4  E3 A1 00 98 */ psq_l f29, 152(r1), 0, 0
/* 800B6998 000B38D8  CB A1 00 90 */ lfd f29, 0x90(r1)
/* 800B699C 000B38DC  E3 81 00 88 */ psq_l f28, 136(r1), 0, 0
/* 800B69A0 000B38E0  CB 81 00 80 */ lfd f28, 0x80(r1)
/* 800B69A4 000B38E4  E3 61 00 78 */ psq_l f27, 120(r1), 0, 0
/* 800B69A8 000B38E8  CB 61 00 70 */ lfd f27, 0x70(r1)
/* 800B69AC 000B38EC  E3 41 00 68 */ psq_l f26, 104(r1), 0, 0
/* 800B69B0 000B38F0  CB 41 00 60 */ lfd f26, 0x60(r1)
/* 800B69B4 000B38F4  39 61 00 60 */ addi r11, r1, 0x60
/* 800B69B8 000B38F8  48 2A B8 65 */ bl _restgpr_26
/* 800B69BC 000B38FC  80 01 00 C4 */ lwz r0, 0xc4(r1)
/* 800B69C0 000B3900  7C 08 03 A6 */ mtlr r0
/* 800B69C4 000B3904  38 21 00 C0 */ addi r1, r1, 0xc0
/* 800B69C8 000B3908  4E 80 00 20 */ blr
