/* 800244E8 00021428  3C 60 80 3F */ lis r3, lbl_803F6094@ha
/* 800244EC 0002142C  38 63 60 94 */ addi r3, r3, lbl_803F6094@l
/* 800244F0 00021430  1C 04 04 04 */ mulli r0, r4, 0x404
/* 800244F4 00021434  7C 63 02 14 */ add r3, r3, r0
/* 800244F8 00021438  88 63 03 F4 */ lbz r3, 0x3f4(r3)
/* 800244FC 0002143C  54 60 07 39 */ rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80024500 00021440  41 82 00 0C */ beq lbl_8002450C
/* 80024504 00021444  38 60 00 00 */ li r3, 0
/* 80024508 00021448  4E 80 00 20 */ blr
lbl_8002450C:
/* 8002450C 0002144C  54 63 06 F6 */ rlwinm r3, r3, 0, 0x1b, 0x1b
/* 80024510 00021450  30 03 FF FF */ addic r0, r3, -1
/* 80024514 00021454  7C 60 19 10 */ subfe r3, r0, r3
/* 80024518 00021458  4E 80 00 20 */ blr
