/* 8026745C 0026439C  A8 A3 00 00 */ lha r5, 0(r3)
/* 80267460 002643A0  A8 04 00 00 */ lha r0, 0(r4)
/* 80267464 002643A4  7C 05 02 14 */ add r0, r5, r0
/* 80267468 002643A8  B0 03 00 00 */ sth r0, 0(r3)
/* 8026746C 002643AC  A8 A3 00 02 */ lha r5, 2(r3)
/* 80267470 002643B0  A8 04 00 02 */ lha r0, 2(r4)
/* 80267474 002643B4  7C 05 02 14 */ add r0, r5, r0
/* 80267478 002643B8  B0 03 00 02 */ sth r0, 2(r3)
/* 8026747C 002643BC  A8 A3 00 04 */ lha r5, 4(r3)
/* 80267480 002643C0  A8 04 00 04 */ lha r0, 4(r4)
/* 80267484 002643C4  7C 05 02 14 */ add r0, r5, r0
/* 80267488 002643C8  B0 03 00 04 */ sth r0, 4(r3)
/* 8026748C 002643CC  4E 80 00 20 */ blr