/* c_angle.cpp autogenerated by split.py v0.3 at 2020-12-31 13:27:46.813506 */

#include "SComponent/c_angle.h"
#include "global.h"

extern "C" {

float cAngle_NS_Adjust(float, float, float);
}

// __ct__7cSAngleFRC7cSAngle
cSAngle::cSAngle(const cSAngle& angle) {
    this->Val(angle);
}

// __ct__7cSAngleFs
cSAngle::cSAngle(s16 angle) {
    this->Val(angle);
}

// __ct__7cSAngleFs __ct__7cSAngleFf __ct__7cSAngleFRC7cSAngle

// __ct__7cSAngleFf
cSAngle::cSAngle(float angle) {
    this->Val(angle);
}

// Val__7cSAngleFRC7cSAngle
void cSAngle::Val(const cSAngle& other) {
    this->angle = other.angle;
}

// Val__7cSAngleFs
void cSAngle::Val(s16 val) {
    this->angle = val;
}

// Val__7cSAngleFf
void cSAngle::Val(float f) {
    this->angle = lbl_80455208 * f;
}

// Degree__7cSAngleCFv
#ifdef NON_MATCHING
float cSAngle::Degree(void) const {
    // matches, but adds a double constant for the s16 -> float conversion
    return lbl_8045520C * this->angle;
}
#else
asm float cSAngle::Degree(void) const {
    nofralloc
#include "SComponent/c_angle/asm/func_80271030.s"
}
#endif

// Radian__7cSAngleCFv
#ifdef NON_MATCHING
float cSAngle::Radian(void) const {
    // matches, but adds a double constant for the s16 -> float conversion
    return lbl_80455218 * this->angle;
}
#else
asm float cSAngle::Radian(void) const {
    nofralloc
#include "SComponent/c_angle/asm/func_80271064.s"
}
#endif

// Norm__7cSAngleCFv
// cSAngle::Norm(void) const
asm float cSAngle::Norm(void) const {
    nofralloc
#include "SComponent/c_angle/asm/func_80271098.s"
}

// Abs__7cSAngleCFv
s16 cSAngle::Abs(void) const {
    return this->angle >= 0 ? this->angle : -this->angle;
}

// Inv__7cSAngleCFv
s16 cSAngle::Inv(void) const {
    return this->angle - 0x8000;
}

// Sin__7cSAngleCFv
float cSAngle::Sin(void) const {
    return func_8036C590(this->Radian());
}

// Cos__7cSAngleCFv
float cSAngle::Cos(void) const {
    return func_8036C028(this->Radian());
}

// __mi__7cSAngleCFv
cSAngle cSAngle::operator-(void) const {
    return cSAngle((s16) - this->angle);
}

// __pl__7cSAngleCFRC7cSAngle
cSAngle cSAngle::operator+(const cSAngle& other) const {
    return cSAngle((s16)(this->angle + other.angle));
}

// __mi__7cSAngleCFRC7cSAngle
cSAngle cSAngle::operator-(const cSAngle& other) const {
    return cSAngle((s16)(this->angle - other.angle));
}

// __apl__7cSAngleFRC7cSAngle
void cSAngle::operator+=(const cSAngle& other) {
    this->angle += other.angle;
}

// __ami__7cSAngleFRC7cSAngle
void cSAngle::operator-=(const cSAngle& other) {
    this->angle -= other.angle;
}

// __pl__7cSAngleCFs
cSAngle cSAngle::operator+(short other) const {
    return cSAngle((s16)(this->angle + other));
}

// __mi__7cSAngleCFs
cSAngle cSAngle::operator-(short other) const {
    return cSAngle((s16)(this->angle - other));
}

// __apl__7cSAngleFs
void cSAngle::operator+=(short other) {
    this->angle += other;
}

// __ml__7cSAngleCFf
#ifdef NON_MATCHING
cSAngle cSAngle::operator*(float f1) const {
    return cSAngle((s16)(this->angle * f1));
}
#else
asm cSAngle cSAngle::operator*(float) const {
    nofralloc
#include "SComponent/c_angle/asm/func_80271264.s"
}
#endif

// __amu__7cSAngleFf
#ifdef NON_MATCHING
void cSAngle::operator*=(float f1) {
    this->angle *= f1;
}
#else
asm void cSAngle::operator*=(float) {
    nofralloc
#include "SComponent/c_angle/asm/func_802712B4.s"
}
#endif

// __pl__FsRC7cSAngle
cSAngle operator+(short other, const cSAngle& angle) {
    return cSAngle((s16)(other + angle.Get()));
}

// __mi__FsRC7cSAngle
cSAngle operator-(short other, const cSAngle& angle) {
    return cSAngle((s16)(other - angle.Get()));
}

// __ct__7cDegreeFf
cDegree::cDegree(float f) {
    this->Val(f);
}

// Formal__7cDegreeFv
cDegree& cDegree::Formal(void) {
    this->degree = cAngle_NS_Adjust(this->degree, lbl_80455220, lbl_80455224);
    return *this;
}

// Val__7cDegreeFf
void cDegree::Val(float f) {
    this->degree = f;
    this->Formal();
}

// Radian__7cDegreeCFv
float cDegree::Radian(void) const {
    return lbl_80455228 * this->degree;
}

// Sin__7cDegreeCFv
float cDegree::Sin(void) const {
    return func_8036C590(this->Radian());
}

// Cos__7cDegreeCFv
float cDegree::Cos(void) const {
    return func_8036C028(this->Radian());
}

// Tan__7cDegreeCFv
float cDegree::Tan(void) const {
    return func_8036C668(this->Radian());
}

// __ct__7cSPolarFRC4cXyz
cSPolar::cSPolar(const cXyz& xyz) {
    this->Val(xyz);
}

// Formal__7cSPolarFv
cSPolar& cSPolar::Formal(void) {
    if (this->radial < /* 0.0 */ lbl_8045522C) {
        this->radial = -this->radial;
        cSAngle tmp((s16)-0x8000);
        this->angle1.Val(tmp - this->angle1);
        this->angle2.Val(this->angle2.Inv());
    }
    if (this->angle1.Get() < 0 && this->angle1.Get() != -0x8000) {
        this->angle1.Val(-this->angle1);
        this->angle2.Val(this->angle2.Inv());
    }
    return *this;
}

// Val__7cSPolarFfss
void cSPolar::Val(float f, short s1, short s2) {
    this->radial = f;
    this->angle1 = cSAngle(s1);
    this->angle2 = cSAngle(s2);
    this->Formal();
}

// Val__7cSPolarFRC4cXyz
// cSPolar::Val(const cXyz&)
asm void cSPolar::Val(const cXyz&){nofralloc
#include "SComponent/c_angle/asm/func_802715BC.s"
}

// Xyz__7cSPolarCFv
cXyz cSPolar::Xyz(void) const {
    float ang1Cos;
    float ang2Cos;
    float ang1Sin = this->radial * (float)func_8036C590(this->angle1.Radian());
    ang2Cos = (float)func_8036C028(this->angle2.Radian());
    ang1Cos = this->radial * (float)func_8036C028(this->angle1.Radian());
    float ang2Sin = func_8036C590(this->angle2.Radian());
    return cXyz(ang1Sin * ang2Sin, ang1Cos, ang1Sin * ang2Cos);
}

// Globe__7cSPolarCFP7cSGlobe
void cSPolar::Globe(cSGlobe* globe) const {
    globe->Val(this->radial, 0x4000 - this->angle1.Get(), this->angle2.Get());
}

// __ct__7cSGlobeFRC7cSGlobe
cSGlobe::cSGlobe(const cSGlobe& other) {
    this->Val(other);
}

// __ct__7cSGlobeFfss
cSGlobe::cSGlobe(float f, short s1, short s2) {
    this->Val(f, s1, s2);
}

// __ct__7cSGlobeFfRC7cSAngleRC7cSAngle
cSGlobe::cSGlobe(float f, const cSAngle& a1, const cSAngle& a2) {
    this->Val(f, a1, a2);
}

// __ct__7cSGlobeFRC4cXyz
cSGlobe::cSGlobe(const cXyz& xyz) {
    this->Val(xyz);
}

// Formal__7cSGlobeFv
// cSGlobe::Formal(void)
asm cSGlobe& cSGlobe::Formal(void) {
    nofralloc
#include "SComponent/c_angle/asm/func_802718B0.s"
}

// Val__7cSGlobeFRC7cSGlobe
void cSGlobe::Val(const cSGlobe& other) {
    this->radius = other.radius;
    this->azimuth = other.azimuth;
    this->inclination = other.inclination;
    this->Formal();
}

// Val__7cSGlobeFfss
void cSGlobe::Val(float f, short s1, short s2) {
    this->radius = f;
    this->azimuth = cSAngle(s1);
    this->inclination = cSAngle(s2);
    this->Formal();
}

// Val__7cSGlobeFfRC7cSAngleRC7cSAngle
void cSGlobe::Val(float f, const cSAngle& a1, const cSAngle& a2) {
    this->radius = f;
    this->azimuth = cSAngle(a1.Get());
    this->inclination = cSAngle(a2.Get());
    this->Formal();
}

// Val__7cSGlobeFRC4cXyz
void cSGlobe::Val(const cXyz& xyz) {
    cSPolar csp(xyz);
    csp.Globe(this);
    this->Formal();
}

// Xyz__7cSGlobeCFv
cXyz cSGlobe::Xyz(void) const {
    cSPolar csp;
    this->Polar(&csp);
    return csp.Xyz();
}

// Polar__7cSGlobeCFP7cSPolar
// cSGlobe::Polar(cSPolar*) const
void cSGlobe::Polar(cSPolar* csp) const {
    csp->Val(this->radius, 0x4000 - this->azimuth.Get(), this->inclination.Get());
}

// Norm__7cSGlobeCFv
cXyz cSGlobe::Norm(void) const {
    cSGlobe glob(/* 1.0 */ lbl_8045523C, this->azimuth, this->inclination);
    return glob.Xyz();
}

// Invert__7cSGlobeFv
cSGlobe& cSGlobe::Invert(void) {
    this->radius = -this->radius;
    return this->Formal();
}

extern "C" {

// Adjust<f>__6cAngleFfff
float cAngle_NS_Adjust(float f1, float f2, float f3) {
    while (f1 >= f3) {
        f1 -= f3 - f2;
    }
    while (f1 < f2) {
        f1 += f3 - f2;
    }
    return f1;
}

// __sinit_c_angle_cpp
//
asm void func_80271BD4(void) {
    nofralloc
#include "SComponent/c_angle/asm/func_80271BD4.s"
}
};
