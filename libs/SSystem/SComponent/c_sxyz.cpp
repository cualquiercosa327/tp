/* c_sxyz.cpp autogenerated by split.py v0.3 at 2021-01-01 15:36:38.121811 */

#include "SComponent/c_sxyz.h"

extern "C" {
void __ct__5csXyzFsss(void);
void csXyz_NS_dtor(void);
void func_80361C24(void);
}

extern u8 lbl_804550A0;
extern u8 lbl_80430DA8;
extern u8 lbl_80451164;

// __ct__5csXyzFsss
csXyz::csXyz(s16 pX, s16 pY, s16 pZ) {
    mX = pX;
    mY = pY;
    mZ = pZ;
}

// __pl__5csXyzFR5csXyz
csXyz csXyz::operator+(csXyz& other) {
    return csXyz(mX + other.mX, mY + other.mY, mZ + other.mZ);
}

// __apl__5csXyzFR5csXyz
void csXyz::operator+=(csXyz& other) {
    mX += other.mX;
    mY += other.mY;
    mZ += other.mZ;
}

// __mi__5csXyzFR5csXyz
csXyz csXyz::operator-(csXyz& other) {
    return csXyz(mX - other.mX, mY - other.mY, mZ - other.mZ);
}

// __ml__5csXyzFf
csXyz csXyz::operator*(f32 pFactor) {
    return csXyz(mX * pFactor, mY * pFactor, mZ * pFactor);
}

extern "C" {

// __sinit_c_sxyz_cpp
//
asm void __sinit_c_sxyz_cpp(void) {
    nofralloc
#include "SComponent/c_sxyz/asm/func_8026758C.s"
}
};
