#ifndef J2DGRAPH_J2DPANE_H
#define J2DGRAPH_J2DPANE_H

#include "JSystem/J2DGraph/J2DAnimation.h"
#include "JSystem/J2DGraph/J2DGrafContext.h"
#include "JSystem/J2DGraph/J2DScreen.h"
#include "JSystem/JKernel/JKRArchive/JKRArchive.h"
#include "JSystem/JSupport/JSUList/JSUList.h"
#include "JSystem/JSupport/JSURandomInputStream/JSURandomInputStream.h"
#include "JSystem/JUtility/JUTResFont.h"
#include "JSystem/JUtility/JUTResource.h"
#include "JSystem/JUtility/JUTTexture.h"
#include "JSystem/geometry.h"
#include "global.h"
#include "gx/GX.h"
#include "mtx_vec.h"

// additional symbols needed for J2DPane.cpp
// autogenerated by split.py v0.3 at 2021-01-19 06:47:42.730250
extern "C" {
void J2DDataManage_NS_get_X1_(void);
void J2DGrafContext_NS_scissor(void);
void J2DGrafContext_NS_setScissor(void);
void J2DOrthoGraph_NS_scissorBounds(void);
void J2DCast_F32_to_S16__7J2DPaneFfUc(void);
void animationPane__7J2DPaneFPC15J2DAnmTransform(void);
void changeUseTrans__7J2DPaneFP7J2DPane(void);
void clearAnmTransform__7J2DPaneFv(void);
void clip__7J2DPaneFRCQ29JGeometry8TBox2(void);
void draw__7J2DPaneFffPC14J2DGrafContextbb(void);
void __dt__7J2DPaneFv(void);
void getFirstChildPane__7J2DPaneFv(void);
void getNextChildPane__7J2DPaneFv(void);
void getPointer__7J2DPaneFP20JSURandomInputStreamUlP10JKRArchive(void);
void J2DPane_NS_initialize(void);
void J2DPane_NS_initialize_X1_(void);
void initiate__7J2DPaneFv(void);
void insertChild__7J2DPaneFP7J2DPaneP7J2DPane(void);
void isUsed__7J2DPaneFPC7ResTIMG(void);
void isUsed__7J2DPaneFPC7ResFONT(void);
void makePaneExStream__7J2DPaneFP7J2DPaneP20JSURandomInputStream(void);
void makePaneStream__7J2DPaneFP7J2DPaneP20JSURandomInputStream(void);
void J2DPane_NS_place(void);
void resize__7J2DPaneFff(void);
void rotate__7J2DPaneFf(void);
void search__7J2DPaneFUx(void);
void searchUserInfo__7J2DPaneFUx(void);
void setAnimation__7J2DPaneFP10J2DAnmBase(void);
void setAnimation__7J2DPaneFP15J2DAnmTransform(void);
void setCullBack__7J2DPaneF11_GXCullMode(void);
void setInfluencedAlpha__7J2DPaneFbb(void);
void setVisibileAnimation__7J2DPaneFP20J2DAnmVisibilityFull(void);
void setVtxColorAnimation__7J2DPaneFP14J2DAnmVtxColor(void);
void updateTransform__7J2DPaneFPC15J2DAnmTransform(void);
void J2DPane_X1_(void);
void J2DPane_X2_(void);
void __ct__7J2DPaneFP7J2DPaneP20JSURandomInputStreamUc(void);
void JSURandomInputStream_NS_align(void);
void JSURandomInputStream_NS_peek(void);
void* JUTResReference_NS_getResource(JSURandomInputStream* stream, u32 arg2, JKRArchive* archive);
void move__7J2DPaneFff(void);
void add__7J2DPaneFff(void);
void makeMatrix__7J2DPaneFffff(void);
void func_802F8080(void);
void func_802F83C8(void);
void func_802F83CC(void);
void func_802F83D0(void);
void func_802F83FC(void);
void func_802F8428(void);
void func_802F8464(void);
void func_802F8474(void);
void func_802F8478(void);
void func_802F847C(void);
}

// additional symbols needed for J2DPane.cpp
// autogenerated by split.py v0.3 at 2021-01-19 06:47:41.745863
extern u8 lbl_803CC9B8;
extern u8 lbl_803CCFB0;
extern u8 lbl_803CCFD0;
extern f32 lbl_804561F0;
extern f32 lbl_804561F4;
extern u8 lbl_804561F8;
extern u8 lbl_80456200;
extern f32 lbl_80456208;  // 0.5f
extern u8 lbl_8045620C;
extern u8 lbl_80456210;
extern u8 lbl_80456214;
extern u8 lbl_80456218;

using namespace JGeometry;
extern TBox2<f32> lbl_804349B0;

class J2DPane {
public:
    J2DPane();
    J2DPane(J2DPane* other, JSURandomInputStream* stream, u8 arg3);
    virtual ~J2DPane();

    /* 0x0c */ virtual void getTypeID();
    /* 0x10 */ virtual void move(f32 x, f32 y);
    /* 0x14 */ virtual void add(f32 x, f32 y);
    /* 0x18 */ virtual void resize(f32 x, f32 y);
    /* 0x1c */ virtual void setCullBack(bool cull);
    /* 0x20 */ virtual void setCullBack(GXCullMode cmode);
    /* 0x24 */ virtual void setAlpha();
    /* 0x28 */ virtual bool setConnectParent(bool connected);
    /* 0x2c */ virtual void calcMtx();
    /* 0x30 */ virtual void update();
    /* 0x34 */ virtual void drawSelf(f32 arg1, f32 arg2);
    /* 0x38 */ virtual void drawSelf(f32 arg1, f32 arg2, Mtx* mtx);
    /* 0x3c */ virtual const J2DPane* search(u64 tag);
    /* 0x40 */ virtual const J2DPane* searchUserInfo(u64 tag);
    /* 0x44 */ virtual void makeMatrix();
    /* 0x48 */ virtual void makeMatrix(f32 a, f32 b, f32 c, f32 d);
    /* 0x4c */ virtual bool isUsed(const ResTIMG* timg);
    /* 0x50 */ virtual bool isUsed(const ResFONT* font);
    /* 0x54 */ virtual void clearAnmTransform();
    /* 0x58 */ virtual void rewriteAlpha();
    /* 0x5c */ virtual void setAnimation(J2DAnmBase* anm);
    /* 0x60 */ virtual void setAnimation(J2DAnmTransform* anm);
    /* 0x64 */ virtual void setAnimation(J2DAnmColor* anm);
    /* 0x68 */ virtual void setAnimation(J2DAnmTexPattern* anm);
    /* 0x6c */ virtual void setAnimation(J2DAnmTextureSRTKey* anm);
    /* 0x70 */ virtual void setAnimation(J2DAnmTevRegKey* anm);
    /* 0x74 */ virtual void setAnimation(J2DAnmVisibilityFull* anm);
    /* 0x78 */ virtual void setAnimation(J2DAnmVtxColor* anm);
    /* 0x7c */ virtual const J2DAnmTransform* animationTransform(const J2DAnmTransform* transform);
    /* 0x80 */ virtual void setVisibileAnimation(J2DAnmVisibilityFull* visibility);
    /* 0x84 */ virtual void setAnimationVF(J2DAnmVisibilityFull* visibility);
    /* 0x88 */ virtual void setVtxColorAnimation(J2DAnmVtxColor* vtx_color);
    /* 0x8c */ virtual void setAnimationVC(J2DAnmVtxColor* vtx_color);
    /* 0x90 */ virtual const J2DAnmTransform* animationPane(const J2DAnmTransform* transform);

    // inlines
    f32 getHeight() const { return mBounds.getHeight(); }
    f32 getWidth() const { return mBounds.getWidth(); }
    JSUTree<J2DPane>* getFirstChild() { return mPaneTree.getFirstChild(); }
    const JSUTree<J2DPane>* getPaneTree() { return &mPaneTree; }

    // member functions
    void initiate();
    void initialize(u64 tag, const TBox2<f32>& dim);
    void makePaneStream(J2DPane* other, JSURandomInputStream* stream);
    void changeUseTrans(J2DPane* other);
    bool appendChild(J2DPane* child);
    bool insertChild(J2DPane* before, J2DPane* child);
    void draw(f32 a1, f32 a2, const J2DGrafContext* ctx, bool a4, bool a5);
    void place(const TBox2<f32>& dim);
    TBox2<f32>& getBounds();
    void rotate(f32 offsetX, f32 offsetY, J2DRotateAxis axis, f32 angle);
    void rotate(f32 angle);
    void clip(const TBox2<f32>& bounds);
    void setBasePosition(J2DBasePosition position);
    void setInfluencedAlpha(bool arg1, bool arg2);
    void getGlbVtx(u8 arg1) const;
    const J2DPane* getFirstChildPane();
    const J2DPane* getNextChildPane();
    const J2DPane* getParentPane();
    void makePaneExStream(J2DPane* other, JSURandomInputStream* stream);
    static s16 J2DCast_F32_to_S16(f32 value, u8 arg2);
    void* getPointer(JSURandomInputStream* stream, u32 size, JKRArchive* archive);
    void animationTransform();
    void updateTransform(const J2DAnmTransform* transform);

private:
    /* 0x004 */ u16 _4;
    /* 0x006 */ u8 _6[2];
    /* 0x008 */ int id;
    /* 0x00c */ u8 _c[4];
    /* 0x010 */ u64 mInfoTag;
    /* 0x018 */ u64 mUserInfoTag;
    /* 0x020 */ TBox2<f32> mBounds;
    /* 0x030 */ TBox2<f32> mGlobalBounds;
    /* 0x040 */ TBox2<f32> mClipRect;
    /* 0x050 */ Mtx mPositionMtx;
    /* 0x080 */ Mtx mGlobalMtx;
    /* 0x0b0 */ bool mVisible;
    /* 0x0b1 */ u8 mCullMode;
    /* 0x0b2 */ u8 mAlpha;
    /* 0x0b3 */ u8 mColorAlpha;
    /* 0x0b4 */ bool mIsInfluencedAlpha;
    /* 0x0b5 */ bool mConnected;
    /* 0x0b6 */ char mRotAxis;
    /* 0x0b7 */ u8 mBasePosition;
    /* 0x0b8 */ f32 mRotateX;
    /* 0x0bc */ f32 mRotateY;
    /* 0x0c0 */ f32 mRotateZ;
    /* 0x0c4 */ f32 mRotateOffsetX;
    /* 0x0c8 */ f32 mRotateOffsetY;
    /* 0x0cc */ f32 mScaleX;
    /* 0x0d0 */ f32 mScaleY;
    /* 0x0d4 */ f32 mTranslateX;
    /* 0x0d8 */ f32 mTranslateY;
    /* 0x0dc */ JSUTree<J2DPane> mPaneTree;
    /* 0x0f8 */ const J2DAnmTransform* mTransform;
    /* 0x0fc */ u32 _fc;
};
#endif  // J2DGRAPH_J2DPANE_H
