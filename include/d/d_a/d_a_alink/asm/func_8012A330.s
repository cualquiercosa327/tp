/* 8012A330 00127270  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8012A334 00127274  7C 08 02 A6 */ mflr r0
/* 8012A338 00127278  90 01 00 14 */ stw r0, 0x14(r1)
/* 8012A33C 0012727C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8012A340 00127280  7C 7F 1B 78 */ mr r31, r3
/* 8012A344 00127284  A8 03 31 00 */ lha r0, 0x3100(r3)
/* 8012A348 00127288  2C 00 00 00 */ cmpwi r0, 0
/* 8012A34C 0012728C  41 82 00 B8 */ beq lbl_8012A404
/* 8012A350 00127290  A0 1F 2F E8 */ lhz r0, 0x2fe8(r31)
/* 8012A354 00127294  28 00 00 10 */ cmplwi r0, 0x10
/* 8012A358 00127298  41 82 00 AC */ beq lbl_8012A404
/* 8012A35C 0012729C  28 00 00 32 */ cmplwi r0, 0x32
/* 8012A360 001272A0  41 82 00 A4 */ beq lbl_8012A404
/* 8012A364 001272A4  28 00 01 34 */ cmplwi r0, 0x134
/* 8012A368 001272A8  41 82 00 9C */ beq lbl_8012A404
/* 8012A36C 001272AC  28 00 00 F4 */ cmplwi r0, 0xf4
/* 8012A370 001272B0  41 82 00 94 */ beq lbl_8012A404
/* 8012A374 001272B4  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 8012A378 001272B8  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 8012A37C 001272BC  41 82 00 10 */ beq lbl_8012A38C
/* 8012A380 001272C0  38 80 00 01 */ li r4, 1
/* 8012A384 001272C4  48 00 35 3D */ bl daAlink_c_NS_procWolfDashReverseInit
/* 8012A388 001272C8  48 00 00 80 */ b lbl_8012A408
lbl_8012A38C:
/* 8012A38C 001272CC  80 1F 19 9C */ lwz r0, 0x199c(r31)
/* 8012A390 001272D0  54 00 06 B5 */ rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8012A394 001272D4  41 82 00 44 */ beq lbl_8012A3D8
/* 8012A398 001272D8  A8 7F 04 E6 */ lha r3, 0x4e6(r31)
/* 8012A39C 001272DC  A8 9F 31 02 */ lha r4, 0x3102(r31)
/* 8012A3A0 001272E0  48 14 6A 85 */ bl cLib_distanceAngleS__Fss
/* 8012A3A4 001272E4  2C 03 40 00 */ cmpwi r3, 0x4000
/* 8012A3A8 001272E8  41 80 00 24 */ blt lbl_8012A3CC
/* 8012A3AC 001272EC  7F E3 FB 78 */ mr r3, r31
/* 8012A3B0 001272F0  38 80 00 00 */ li r4, 0
/* 8012A3B4 001272F4  4B F9 79 39 */ bl daAlink_c_NS_setFrontRollCrashShock
/* 8012A3B8 001272F8  7F E3 FB 78 */ mr r3, r31
/* 8012A3BC 001272FC  38 80 00 00 */ li r4, 0
/* 8012A3C0 00127300  38 A0 00 01 */ li r5, 1
/* 8012A3C4 00127304  4B FA EB 79 */ bl daAlink_c_NS_procDamageInit
/* 8012A3C8 00127308  48 00 00 40 */ b lbl_8012A408
lbl_8012A3CC:
/* 8012A3CC 0012730C  7F E3 FB 78 */ mr r3, r31
/* 8012A3D0 00127310  4B F9 AD 91 */ bl daAlink_c_NS_procFrontRollSuccessInit
/* 8012A3D4 00127314  48 00 00 34 */ b lbl_8012A408
lbl_8012A3D8:
/* 8012A3D8 00127318  38 80 00 00 */ li r4, 0
/* 8012A3DC 0012731C  4B F9 79 11 */ bl daAlink_c_NS_setFrontRollCrashShock
/* 8012A3E0 00127320  7F E3 FB 78 */ mr r3, r31
/* 8012A3E4 00127324  38 80 FF FA */ li r4, -6
/* 8012A3E8 00127328  38 A0 00 01 */ li r5, 1
/* 8012A3EC 0012732C  38 C0 00 00 */ li r6, 0
/* 8012A3F0 00127330  38 E0 00 00 */ li r7, 0
/* 8012A3F4 00127334  39 00 00 00 */ li r8, 0
/* 8012A3F8 00127338  39 20 00 00 */ li r9, 0
/* 8012A3FC 0012733C  4B FA F2 E1 */ bl daAlink_c_NS_procCoLargeDamageInit
/* 8012A400 00127340  48 00 00 08 */ b lbl_8012A408
lbl_8012A404:
/* 8012A404 00127344  38 60 00 00 */ li r3, 0
lbl_8012A408:
/* 8012A408 00127348  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8012A40C 0012734C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8012A410 00127350  7C 08 03 A6 */ mtlr r0
/* 8012A414 00127354  38 21 00 10 */ addi r1, r1, 0x10
/* 8012A418 00127358  4E 80 00 20 */ blr
