/* 8001E904 0001B844  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8001E908 0001B848  7C 08 02 A6 */ mflr r0
/* 8001E90C 0001B84C  90 01 00 14 */ stw r0, 0x14(r1)
/* 8001E910 0001B850  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8001E914 0001B854  7C 7F 1B 78 */ mr r31, r3
/* 8001E918 0001B858  80 63 00 24 */ lwz r3, 0x24(r3)
/* 8001E91C 0001B85C  48 00 2D D1 */ bl fpcLy_SetCurrentLayer
/* 8001E920 0001B860  48 00 2D D5 */ bl fpcLy_CurrentLayer
/* 8001E924 0001B864  A8 9F 00 10 */ lha r4, 0x10(r31)
/* 8001E928 0001B868  38 A0 00 00 */ li r5, 0
/* 8001E92C 0001B86C  38 C0 00 00 */ li r6, 0
/* 8001E930 0001B870  38 E0 00 00 */ li r7, 0
/* 8001E934 0001B874  48 00 54 61 */ bl fpcSCtRq_Request
/* 8001E938 0001B878  90 7F 00 14 */ stw r3, 0x14(r31)
/* 8001E93C 0001B87C  38 60 00 02 */ li r3, 2
/* 8001E940 0001B880  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8001E944 0001B884  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8001E948 0001B888  7C 08 03 A6 */ mtlr r0
/* 8001E94C 0001B88C  38 21 00 10 */ addi r1, r1, 0x10
/* 8001E950 0001B890  4E 80 00 20 */ blr
