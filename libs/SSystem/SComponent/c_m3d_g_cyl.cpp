/* c_m3d_g_cyl.cpp autogenerated by split.py v0.3 at 2021-01-01 14:45:46.600671 */

#include "SComponent/c_m3d_g_cyl.h"
#include "SComponent/c_m3d.h"

// __ct__8cM3dGCylFPC4cXyzff
cM3dGCyl::cM3dGCyl(const cXyz* pCenter, float pRadius, float pHeight) {
    this->SetC(*pCenter);
    this->SetR(pRadius);
    this->SetH(pHeight);
}

// Set__8cM3dGCylFRC9cM3dGCylS
void cM3dGCyl::Set(const cM3dGCylS& other) {
    this->SetC(cXyz(other.mCenter));
    this->SetR(other.mRadius);
    this->SetH(other.mHeight);
}

// Set__8cM3dGCylFRC4cXyzff
void cM3dGCyl::Set(const cXyz& pCenter, float pRadius, float pHeight) {
    this->SetC(pCenter);
    this->SetR(pRadius);
    this->SetH(pHeight);
}

// SetC__8cM3dGCylFRC4cXyz
void cM3dGCyl::SetC(const cXyz& pCenter) {
    mCenter = pCenter;
}

// SetH__8cM3dGCylFf
void cM3dGCyl::SetH(float pHeight) {
    mHeight = pHeight;
}

// SetR__8cM3dGCylFf
void cM3dGCyl::SetR(float pRadius) {
    mRadius = pRadius;
}

// cross__8cM3dGCylCFPC8cM3dGSphP4cXyz
bool cM3dGCyl::cross(const cM3dGSph* other, cXyz* out) const {
    float f;
    return cM3d_Cross_CylSph(this, other, out, &f);
}

// cross__8cM3dGCylCFPC8cM3dGCylP4cXyz
bool cM3dGCyl::cross(const cM3dGCyl* other, cXyz* out) const {
    return cM3d_Cross_CylCyl(this, other, out);
}

// calcMinMax__8cM3dGCylFP4cXyzP4cXyz
void cM3dGCyl::calcMinMax(cXyz* min, cXyz* max) {
    min->x = mCenter.x - mRadius;
    min->y = mCenter.y;
    min->z = mCenter.z - mRadius;
    max->x = mCenter.x + mRadius;
    max->y = mCenter.y + mHeight;
    max->z = mCenter.z + mRadius;
}
