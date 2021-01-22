/* d_bg_s_poly_pass_chk.cpp autogenerated by split.py v0.3 at 2021-01-22 10:32:31.099373 */

#include "d/d_bg/d_bg_s/d_bg_s_poly_pass_chk.h"
#include "global.h"

dBgS_PolyPassChk::dBgS_PolyPassChk()
    : mObject(false), mCamera(false), mLink(false), mArrow(false), mBomb(false), mBoomerang(false),
      mRope(false), mUnderwaterRoof(false), mHorse(false), mStatue(false), mIronBall(false) {}

dBgS_PolyPassChk::~dBgS_PolyPassChk() {}

void dBgS_PolyPassChk::SetPassChkInfo(dBgS_PolyPassChk& chk) {
    mObject = chk.mObject;
    mCamera = chk.mCamera;
    mLink = chk.mLink;
    mArrow = chk.mArrow;
    mBomb = chk.mBomb;
    mBoomerang = chk.mBoomerang;
    mRope = chk.mRope;
    mUnderwaterRoof = chk.mUnderwaterRoof;
    mHorse = chk.mHorse;
    mStatue = chk.mStatue;
    mIronBall = chk.mIronBall;
}

void dBgS_PolyPassChk::SetObj() {
    mObject = true;
}

void dBgS_PolyPassChk::ClrObj() {
    mObject = false;
}

void dBgS_PolyPassChk::SetCam() {
    mCamera = true;
}

void dBgS_PolyPassChk::ClrCam() {
    mCamera = false;
}

void dBgS_PolyPassChk::SetLink() {
    mLink = true;
}

void dBgS_PolyPassChk::ClrLink() {
    mLink = false;
}

void dBgS_PolyPassChk::SetArrow() {
    mArrow = true;
}

void dBgS_PolyPassChk::SetBomb() {
    mBomb = true;
}

void dBgS_PolyPassChk::ClrBomb() {
    mBomb = false;
}

void dBgS_PolyPassChk::SetBoomerang() {
    mBoomerang = true;
}

void dBgS_PolyPassChk::SetRope() {
    mRope = true;
}

void dBgS_PolyPassChk::SetUnderwaterRoof() {
    mUnderwaterRoof = true;
}

void dBgS_PolyPassChk::SetHorse() {
    mHorse = true;
}

bool dBgS_PolyPassChk::ChkNoHorse() {
    if (mObject || mCamera || mLink || mArrow || mBomb || mBoomerang || mRope || mUnderwaterRoof) {
        return true;
    }
    return !mHorse;
}

void dBgS_PolyPassChk::SetStatue() {
    mStatue = true;
}

void dBgS_PolyPassChk::ClrStatue() {
    mStatue = false;
}

void dBgS_PolyPassChk::SetIronBall() {
    mIronBall = true;
}

void dBgS_PolyPassChk::ClrIronBall() {
    mIronBall = false;
}

extern "C" {
// __dt__16cBgS_PolyPassChkFv
// cBgS_PolyPassChk::~cBgS_PolyPassChk(void)
asm void func_80078FAC(void) {
    nofralloc
#include "d/d_bg/d_bg_s/polypass/asm/func_80078FAC.s"
}
};
