/* c_m3d_g_pla.cpp autogenerated by split.py v0.3 at 2021-01-01 14:50:54.810233 */

#include "SComponent/c_m3d_g_pla.h"
#include "SComponent/c_m3d.h"

// __ct__8cM3dGPlaFPC4cXyzf
cM3dGPla::cM3dGPla(const cXyz* pNormal, float pD) : mNormal(*pNormal), mD(pD) {}

// crossInfLin__8cM3dGPlaCFRC4cXyzRC4cXyzR4cXyz
bool cM3dGPla::crossInfLin(const cXyz& pStart, const cXyz& pEnd, cXyz& out) const {
    float tmp1 = (mD + PSVECDotProduct(&mNormal, &pStart));
    float tmp2 = tmp1 - (mD + PSVECDotProduct(&mNormal, &pEnd));
    if ((float)fabsf(tmp2) < lbl_80451180) {
        out = pEnd;
        return false;
    } else {
        cM3d_InDivPos2(&pStart, &pEnd, (tmp1 / tmp2), &out);
        return true;
    }
}

// SetupNP0__8cM3dGPlaFRC3VecRC3Vec
void cM3dGPla::SetupNP0(const Vec& pNormal, const Vec& pPoint) {
    mNormal = pNormal;
    PSVECNormalize(&mNormal, &mNormal);
    mD = -PSVECDotProduct(&mNormal, &pPoint);
}

// SetupNP__8cM3dGPlaFRC3VecRC3Vec
void cM3dGPla::SetupNP(const Vec& pNormal, const Vec& pPoint) {
    mNormal = pNormal;
    mD = -PSVECDotProduct(&mNormal, &pPoint);
}

// getCrossY__8cM3dGPlaCFRC4cXyzPf
bool cM3dGPla::getCrossY(const cXyz& xyz, float* out) const {
    if ((float)fabsf(mNormal.y) < lbl_80451180) {
        return false;
    } else {
        *out = (-mNormal.x * xyz.x - mNormal.z * xyz.z - mD) / mNormal.y;
        return true;
    }
}

// getCrossYLessD__8cM3dGPlaCFRC3VecPf
bool cM3dGPla::getCrossYLessD(const Vec& xyz, float* out) const {
    if ((float)fabsf(mNormal.y) < lbl_80451180) {
        return false;
    } else {
        *out = (-mNormal.x * xyz.x - mNormal.z * xyz.z) / mNormal.y;
        return true;
    }
}

// Set__8cM3dGPlaFPC8cM3dGPla
void cM3dGPla::Set(const cM3dGPla* other) {
    *this = *other;
}
