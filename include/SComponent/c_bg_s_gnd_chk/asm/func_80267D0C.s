/* 80267D0C 00264C4C  C0 04 00 00 */ lfs f0, 0(r4)
/* 80267D10 00264C50  D0 03 00 24 */ stfs f0, 0x24(r3)
/* 80267D14 00264C54  C0 04 00 04 */ lfs f0, 4(r4)
/* 80267D18 00264C58  D0 03 00 28 */ stfs f0, 0x28(r3)
/* 80267D1C 00264C5C  C0 04 00 08 */ lfs f0, 8(r4)
/* 80267D20 00264C60  D0 03 00 2C */ stfs f0, 0x2c(r3)
/* 80267D24 00264C64  4E 80 00 20 */ blr
