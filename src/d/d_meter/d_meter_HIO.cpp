/* d_meter_HIO.cpp autogenerated by split.py v0.3 at 2021-01-02 05:41:49.544754 */

#include "global.h"
#include "m_Do/m_Do_ext/m_Do_ext.h"

extern "C" {
void __dl__FPv(void);
void cXyz_NS_ctor(void);
void cXyz_NS_dtor(void);
void dMeter_fmapHIO_c_NS_MapBlinkAnime(void);
void free__7JKRHeapFPv(void);
void func_80361C24(void);
void func_80361CE8(void);
void func_80361D60(void);
void JUtility_NS_TColor(void);
}

// additional symbols needed for d_meter_HIO.cpp
// autogenerated by split.py v0.3 at 2021-01-02 05:41:49.509892
extern u8 lbl_80454730;
extern u8 lbl_80454724;
extern u8 lbl_8045471C;
extern u8 lbl_80454734;
extern u8 lbl_803BF190;
extern u8 lbl_803BF178;
extern u8 lbl_80454720;
extern u8 lbl_80454638;
extern u8 lbl_804546EC;
extern u8 lbl_80454718;
extern u8 lbl_8045460C;
extern u8 lbl_8042EBB0;
extern u8 lbl_804545F4;
extern u8 lbl_80454694;
extern u8 lbl_80454554;
extern u8 lbl_804545B0;
extern u8 lbl_804546FC;
extern u8 lbl_8045455C;
extern u8 lbl_80454508;
extern u8 lbl_8045451C;
extern u8 lbl_8045463C;
extern u8 lbl_804545F0;
extern u8 lbl_804546C0;
extern u8 lbl_80454574;
extern u8 lbl_804545FC;
extern u8 lbl_803BF10C;
extern u8 lbl_804545A0;
extern u8 lbl_804546A0;
extern u8 lbl_804546A4;
extern u8 lbl_8045472C;
extern u8 lbl_804545E4;
extern u8 lbl_804544E4;
extern u8 lbl_80454690;
extern u8 lbl_804545C8;
extern u8 lbl_80454578;
extern u8 lbl_8045461C;
extern u8 lbl_80454598;
extern u8 lbl_80454644;
extern u8 lbl_80454550;
extern u8 lbl_804545CC;
extern u8 lbl_80454548;
extern u8 lbl_803BF100;
extern u8 lbl_804546AC;
extern u8 lbl_804546C4;
extern u8 lbl_80454600;
extern u8 lbl_804546CC;
extern u8 lbl_80454528;
extern u8 lbl_80454704;
extern u8 lbl_80454634;
extern u8 lbl_804545BC;
extern u8 lbl_80454560;
extern u8 lbl_80454538;
extern u8 lbl_8045457C;
extern u8 lbl_8045466C;
extern u8 lbl_80454654;
extern u8 lbl_80454500;
extern u8 lbl_804546E4;
extern u8 lbl_804545AC;
extern u8 lbl_8045450C;
extern u8 lbl_80454588;
extern u8 lbl_804546B0;
extern u8 lbl_80454630;
extern u8 lbl_804545E8;
extern u8 lbl_80454684;
extern u8 lbl_80454590;
extern u8 lbl_80454648;
extern u8 lbl_80454514;
extern u8 lbl_803BF184;
extern u8 lbl_8045454C;
extern u8 lbl_804545F8;
extern u8 lbl_80454608;
extern u8 lbl_80454540;
extern u8 lbl_804544F4;
extern u8 lbl_804545D4;
extern u8 lbl_804546B4;
extern u8 lbl_8045473C;
extern u8 lbl_804545B4;
extern u8 lbl_80454534;
extern u8 lbl_803BF118;
extern u8 lbl_80454728;
extern u8 lbl_80454650;
extern u8 lbl_804545DC;
extern u8 lbl_80454584;
extern u8 lbl_80454580;
extern u8 lbl_80454570;
extern u8 lbl_8045465C;
extern u8 lbl_80454618;
extern u8 lbl_8045462C;
extern u8 lbl_80397E50;
extern u8 lbl_8045453C;
extern u8 lbl_804545C0;
extern u8 lbl_804545A4;
extern u8 lbl_803BF0E8;
extern u8 lbl_80454708;
extern u8 lbl_80454518;
extern u8 lbl_804545B8;
extern u8 lbl_803BF16C;
extern u8 lbl_803BF160;
extern u8 lbl_804546C8;
extern u8 lbl_803BF19C;
extern u8 lbl_80454640;
extern u8 lbl_8045452C;
extern u8 lbl_804545D0;
extern u8 lbl_80454740;
extern u8 lbl_80454738;
extern u8 lbl_80454628;
extern u8 lbl_80454620;
extern u8 lbl_803BF154;
extern u8 lbl_804546F0;
extern u8 lbl_80454524;
extern u8 lbl_804546D4;
extern u8 lbl_80454520;
extern u8 lbl_80454710;
extern u8 lbl_803BF148;
extern u8 lbl_80454660;
extern u8 lbl_80454670;
extern u8 lbl_80454680;
extern u8 lbl_80454714;
extern u8 lbl_80454658;
extern u8 lbl_8045458C;
extern u8 lbl_80454700;
extern u8 lbl_80454688;
extern u8 lbl_803BF0F4;
extern u8 lbl_804546A8;
extern u8 lbl_804546F4;
extern u8 lbl_804544F0;
extern u8 lbl_80454544;
extern u8 lbl_804546D0;
extern u8 lbl_804545D8;
extern u8 lbl_8045456C;
extern u8 lbl_803BF130;
extern u8 lbl_80454604;
extern u8 lbl_80454558;
extern u8 lbl_804546B8;
extern u8 lbl_80454614;
extern u8 lbl_804544E0;
extern u8 lbl_80454698;
extern u8 lbl_804546DC;
extern u8 lbl_804546BC;
extern u8 lbl_8045459C;
extern u8 lbl_80454510;
extern u8 lbl_804544E8;
extern u8 lbl_804544F8;
extern u8 lbl_80454594;
extern u8 lbl_804545A8;
extern u8 lbl_80454624;
extern u8 lbl_804546E8;
extern u8 lbl_80454504;
extern u8 lbl_80454610;
extern u8 lbl_803BF124;
extern u8 lbl_80454664;
extern u8 lbl_804544EC;
extern u8 lbl_803BF13C;
extern u8 lbl_804546D8;
extern u8 lbl_80454678;
extern u8 lbl_8045464C;
extern u8 lbl_80454674;
extern u8 lbl_804546E0;
extern u8 lbl_80454530;
extern u8 lbl_804545E0;
extern u8 lbl_8045467C;
extern u8 lbl_80454564;
extern u8 lbl_8045470C;
extern u8 lbl_804545EC;
extern u8 lbl_80454568;
extern u8 lbl_8045469C;
extern u8 lbl_804544FC;
extern u8 lbl_804545C4;
extern u8 lbl_8045468C;
extern u8 lbl_804546F8;
extern u8 lbl_80454668;

extern "C" {
// __ct__16dMeter_menuHIO_cFv
// dMeter_menuHIO_c::dMeter_menuHIO_c(void)
asm void dMeter_menuHIO_c(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_801FE330.s"
}

// __ct__23dMeter_drawCollectHIO_cFv
// dMeter_drawCollectHIO_c::dMeter_drawCollectHIO_c(void)
asm void dMeter_drawCollectHIO_c(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_801FE348.s"
}

// __ct__22dMeter_drawOptionHIO_cFv
// dMeter_drawOptionHIO_c::dMeter_drawOptionHIO_c(void)
asm void dMeter_drawOptionHIO_c(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_801FE4EC.s"
}

// __ct__22dMeter_drawLetterHIO_cFv
// dMeter_drawLetterHIO_c::dMeter_drawLetterHIO_c(void)
asm void dMeter_drawLetterHIO_c(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_801FE5CC.s"
}

// __ct__23dMeter_drawFishingHIO_cFv
// dMeter_drawFishingHIO_c::dMeter_drawFishingHIO_c(void)
asm void dMeter_drawFishingHIO_c(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_801FE730.s"
}

// __ct__22dMeter_drawInsectHIO_cFv
// dMeter_drawInsectHIO_c::dMeter_drawInsectHIO_c(void)
asm void dMeter_drawInsectHIO_c(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_801FE8DC.s"
}

// __ct__27dMeter_drawCalibrationHIO_cFv
// dMeter_drawCalibrationHIO_c::dMeter_drawCalibrationHIO_c(void)
asm void dMeter_drawCalibrationHIO_c(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_801FE954.s"
}

// __ct__21dMeter_drawSkillHIO_cFv
// dMeter_drawSkillHIO_c::dMeter_drawSkillHIO_c(void)
asm void dMeter_drawSkillHIO_c(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_801FE990.s"
}

// __ct__25dMeter_drawEmpButtonHIO_cFv
// dMeter_drawEmpButtonHIO_c::dMeter_drawEmpButtonHIO_c(void)
asm void dMeter_drawEmpButtonHIO_c(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_801FEAF0.s"
}

// __ct__24dMeter_drawMiniGameHIO_cFv
// dMeter_drawMiniGameHIO_c::dMeter_drawMiniGameHIO_c(void)
asm void dMeter_drawMiniGameHIO_c(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_801FEFF0.s"
}

// __ct__25dMeter_drawLightDropHIO_cFv
// dMeter_drawLightDropHIO_c::dMeter_drawLightDropHIO_c(void)
asm void dMeter_drawLightDropHIO_c(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_801FF31C.s"
}

// __ct__16dMeter_drawHIO_cFv
// dMeter_drawHIO_c::dMeter_drawHIO_c(void)
asm void dMeter_drawHIO_c(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_801FF5B8.s"
}

// __ct__16dMeter_ringHIO_cFv
// dMeter_ringHIO_c::dMeter_ringHIO_c(void)
asm void dMeter_ringHIO_c(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_802001AC.s"
}

// __ct__19dMeter_mapIconHIO_cFv
// dMeter_mapIconHIO_c::dMeter_mapIconHIO_c(void)
asm void dMeter_mapIconHIO_c(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_802004B4.s"
}

// __ct__16dMeter_fmapHIO_cFv
// dMeter_fmapHIO_c::dMeter_fmapHIO_c(void)
asm void dMeter_fmapHIO_c(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_802006C8.s"
}

// __dt__16dMeter_fmapHIO_cFv
// dMeter_fmapHIO_c::~dMeter_fmapHIO_c(void)
asm void dMeter_fmapHIO_c_NS_dtor(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_80200BCC.s"
}

// __ct__18dMeter_cursorHIO_cFv
// dMeter_cursorHIO_c::dMeter_cursorHIO_c(void)
asm void dMeter_cursorHIO_c(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_80200CD4.s"
}

// __dt__25dMeter_drawLightDropHIO_cFv
// dMeter_drawLightDropHIO_c::~dMeter_drawLightDropHIO_c(void)
asm void func_80200D58(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_80200D58.s"
}

// __dt__25dMeter_drawEmpButtonHIO_cFv
// dMeter_drawEmpButtonHIO_c::~dMeter_drawEmpButtonHIO_c(void)
asm void func_80200DA0(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_80200DA0.s"
}

// __dt__24dMeter_drawMiniGameHIO_cFv
// dMeter_drawMiniGameHIO_c::~dMeter_drawMiniGameHIO_c(void)
asm void func_80200DE8(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_80200DE8.s"
}

// __dt__21dMeter_drawSkillHIO_cFv
// dMeter_drawSkillHIO_c::~dMeter_drawSkillHIO_c(void)
asm void func_80200E30(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_80200E30.s"
}

// __dt__27dMeter_drawCalibrationHIO_cFv
// dMeter_drawCalibrationHIO_c::~dMeter_drawCalibrationHIO_c(void)
asm void func_80200E78(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_80200E78.s"
}

// __dt__22dMeter_drawInsectHIO_cFv
// dMeter_drawInsectHIO_c::~dMeter_drawInsectHIO_c(void)
asm void func_80200EC0(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_80200EC0.s"
}

// __dt__23dMeter_drawFishingHIO_cFv
// dMeter_drawFishingHIO_c::~dMeter_drawFishingHIO_c(void)
asm void func_80200F08(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_80200F08.s"
}

// __dt__22dMeter_drawLetterHIO_cFv
// dMeter_drawLetterHIO_c::~dMeter_drawLetterHIO_c(void)
asm void func_80200F50(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_80200F50.s"
}

// __dt__22dMeter_drawOptionHIO_cFv
// dMeter_drawOptionHIO_c::~dMeter_drawOptionHIO_c(void)
asm void func_80200F98(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_80200F98.s"
}

// __dt__23dMeter_drawCollectHIO_cFv
// dMeter_drawCollectHIO_c::~dMeter_drawCollectHIO_c(void)
asm void func_80200FE0(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_80200FE0.s"
}

// __dt__19dMeter_mapIconHIO_cFv
// dMeter_mapIconHIO_c::~dMeter_mapIconHIO_c(void)
asm void func_80201028(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_80201028.s"
}

// __ct__Q216dMeter_fmapHIO_c13MapBlinkAnimeFv
// dMeter_fmapHIO_c::MapBlinkAnime::dMeter_fmapHIO_c::MapBlinkAnime(void)
asm void dMeter_fmapHIO_c_NS_MapBlinkAnime(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_80201070.s"
}

// __dt__18dMeter_cursorHIO_cFv
// dMeter_cursorHIO_c::~dMeter_cursorHIO_c(void)
asm void dMeter_cursorHIO_c_NS_dtor(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_80201098.s"
}

// __dt__16dMeter_ringHIO_cFv
// dMeter_ringHIO_c::~dMeter_ringHIO_c(void)
asm void dMeter_ringHIO_c_NS_dtor(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_802010E0.s"
}

// __dt__16dMeter_drawHIO_cFv
// dMeter_drawHIO_c::~dMeter_drawHIO_c(void)
asm void dMeter_drawHIO_c_NS_dtor(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_80201128.s"
}

// __dt__16dMeter_menuHIO_cFv
// dMeter_menuHIO_c::~dMeter_menuHIO_c(void)
asm void dMeter_menuHIO_c_NS_dtor(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_8020123C.s"
}

// __sinit_d_meter_HIO_cpp
//
asm void func_80201284(void) {
    nofralloc
#include "d/d_meter/d_meter_HIO/asm/func_80201284.s"
}
};
