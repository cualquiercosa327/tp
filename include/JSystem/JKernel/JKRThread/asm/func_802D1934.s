/* 802D1934 002CE874  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D1938 002CE878  7C 08 02 A6 */	mflr r0
/* 802D193C 002CE87C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D1940 002CE880  81 83 00 00 */	lwz r12, 0(r3)
/* 802D1944 002CE884  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802D1948 002CE888  7D 89 03 A6 */	mtctr r12
/* 802D194C 002CE88C  4E 80 04 21 */	bctrl 
/* 802D1950 002CE890  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D1954 002CE894  7C 08 03 A6 */	mtlr r0
/* 802D1958 002CE898  38 21 00 10 */	addi r1, r1, 0x10
/* 802D195C 002CE89C  4E 80 00 20 */	blr 