/* 8002490C 0002184C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80024910 00021850  7C 08 02 A6 */ mflr r0
/* 80024914 00021854  90 01 00 14 */ stw r0, 0x14(r1)
/* 80024918 00021858  1C A3 00 0A */ mulli r5, r3, 0xa
/* 8002491C 0002185C  3C 60 80 3A */ lis r3, lbl_803A696C@ha
/* 80024920 00021860  38 03 69 6C */ addi r0, r3, lbl_803A696C@l
/* 80024924 00021864  7C 60 2A 14 */ add r3, r0, r5
/* 80024928 00021868  38 A0 00 09 */ li r5, 9
/* 8002492C 0002186C  48 34 41 BD */ bl func_80368AE8
/* 80024930 00021870  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80024934 00021874  7C 08 03 A6 */ mtlr r0
/* 80024938 00021878  38 21 00 10 */ addi r1, r1, 0x10
/* 8002493C 0002187C  4E 80 00 20 */ blr
