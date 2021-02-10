/* d_kankyo.cpp autogenerated by split.py v0.3 at 2021-01-01 22:51:09.344700 */

#include "d/d_kankyo/d_kankyo.h"
#include "Z2AudioLib/Z2SeMgr/Z2SeMgr.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "global.h"
#include "m_Do/m_Do_audio/m_Do_audio.h"
#include "m_Do/m_Do_graphic/m_Do_graphic.h"
#include "os/OS.h"
#include "msl_c/math.h"
#include "msl_c/string.h"

extern "C" {
int abs(int);
int func_8036608C(const void*, const void*, u32);
int strcmp(const char*, const char*);
void __dl__FPv(void);
void __mi__4cXyzCFRC3Vec(void);
void __ml__4cXyzCFf(void);
void __nw__FUl(void);
void __pl__4cXyzCFRC3Vec(void);
void BOSS_LIGHT_NS_dtor(void);
void BOSS_LIGHT(void);
void cBgS_NS_GroundCross(void);
void cLib_addCalc__FPfffff(void);
void cM3d_VectorProduct2d__Fffffff(void);
void cXyz_NS_dtor(void);
void daPy_py_c_NS_checkNowWolfEyeUp(void);
void dBgS_CamGndChk_Wtr_NS_dtor(void);
void dBgS_CamGndChk_Wtr(void);
void dBgS_NS_GetPolyAtt0(void);
void dBgS_NS_GetPolyAtt1(void);
void dCam_getBody(void);
void dComIfG_getStageRes(void);
void dComIfG_play_c_NS_getLayerNo_common(void);
void dComIfG_play_c_NS_getLayerNo(int);
void dComIfGp_world_dark_get(void);
void dComIfGs_PolyDamageOff_Set(void);
void dComIfGs_sense_type_change_Get(void);
void dKankyo_DayProc(void);
void dKy_actor_addcol_set(void);
void dKy_bgparts_activelight_cut(void);
void dKy_bgparts_activelight_set(void);
void dKy_BossLight_set(void);
void dKy_camera_water_in_status_check(void);
void dKy_darkworld_check(void);
void dKy_efplight_cut(void);
void dKy_efplight_set(void);
void dKy_fog_startendz_set(void);
void dKy_get_dayofweek(void);
void dKy_getdaytime_hour(void);
void dKy_getdaytime_minute(void);
void dKy_Indoor_check(void);
void dKy_light_influence_pos(void);
void dKy_Outdoor_check(void);
void dKy_plight_set(void);
void dKy_set_vrboxkumocol_ratio(void);
void dKy_set_vrboxsoracol_ratio(void);
void dKy_setLight_init(void);
void dKy_setLight_nowroom_actor(void);
void dKy_setLight_nowroom(void);
void dKy_shadow_mode_check(void);
void dKy_shadow_mode_reset(void);
void dKy_shadow_mode_set(void);
void dKy_Sound_init(void);
void dKy_SunMoon_Light_Check(void);
void dKy_tevstr_init(void);
void dKy_twilight_camelight_set(void);
void dKy_vrbox_addcol_set(void);
void dKy_WaterIn_Light_set(void);
void dKyd_BloomInf_tbl_getp(void);
void dKyd_darkworld_tbl_getp(void);
void dKyd_dmenvr_getp(void);
void dKyd_dmpalet_getp(void);
void dKyd_dmpselect_getp(void);
void dKyd_dmvrbox_getp(void);
void dKyd_light_size_tbl_getp(void);
void dKyd_light_tw_size_tbl_getp(void);
void dKyd_maple_col_getp(void);
void dKyd_schejule_boss_getp(void);
void dKyd_schejule_getp(void);
void dKyd_xfog_table_set(void);
void dKyr_get_vectle_calc(void);
void dKyw_get_wind_vec(void);
void dKyw_rain_set(void);
void dKyw_wether_proc(void);
void dKyw_wind_set(void);
void dMsgObject_c_NS_getActor(void);
void dPa_control_c_NS_set(void);
void dRes_control_c_NS_getRes(void);
void dScnKy_env_light_c_NS_getDarkDaytime(void);
void dStage_roomControl_c_NS_getStatusRoomDt(void);
void dStage_roomControl_c_NS_GetTimePass(void);
void DUNGEON_LIGHT_NS_dtor(void);
void DUNGEON_LIGHT(void);
void func_80361C24(void);
void func_80361D60(void);
void __cvt_fp2unsigned(void);
void GB_MAPLE_COL_CHANGE(void);
void GFSetFog(void);
void GXInitLightAttn(void);
void GXInitLightColor(void);
void GXInitLightDir(void);
void GXInitLightDistAttn(void);
void GXInitLightSpot(void);
void GXInitLightPos(void);
void GXLoadLightObjImm(void);
void GXSetChanAmbColor(void);
void GXSetFog(void);
void GXSetFogRangeAdj(void);
void GxXFog_set(void);
void isDarkClearLV__21dSv_player_status_b_cCFi(void);
void isDungeonItem__12dSv_memBit_cCFi(void);
void isEventBit__11dSv_event_cCFUs(void);
void isSwitch__10dSv_info_cCFii(void);
void isSwitch__12dSv_memBit_cCFi(void);
void J3DFrameCtrl_NS_init(void);
void J3DLightInfo_NS___as(void);
void J3DModelData_NS_simpleCalcMaterial(void);
void J3DTexMtxInfo_NS_setEffectMtx(void);
void JPABaseEmitter_NS_deleteAllParticle(void);
void JUTNameTab_NS_getName(void);
void LIGHT_INFLUENCE_NS_dtor(void);
void LIGHT_INFLUENCE(void);
void mDoExt_adjustSolidHeap(void);
void mDoExt_baseAnm_NS_play(void);
void mDoExt_btkAnm_NS_entry(void);
void mDoExt_btkAnm_NS_init(void);
void mDoExt_createSolidHeapFromGameToCurrent_X1_(void);
void mDoExt_destroySolidHeap(void);
void mDoExt_J3DModel__create(void);
void mDoExt_modelUpdateDL(void);
void mDoExt_restoreCurrentHeap(void);
void mDoGph_gInf_c_NS_bloom_c_NS_create(void);
void mDoLib_project(void);
void mDoMtx_inverseTranspose(void);
void mDoMtx_lookAt(void);
void offEventBit__11dSv_event_cFUs(void);
void SetPos__11cBgS_GndChkFPC4cXyz(void);
void WIND_INF_ENTITY_NS_dtor(void);
void WIND_INF_ENTITY(void);
void Z2EnvSeMgr_NS_dtor(void);
void Z2EnvSeMgr_NS_resetScene(void);
void Z2EnvSeMgr(void);
void Z2SceneMgr_NS_load2ndDynamicWave(void);
void* memset(void* dest, int ch, u32 count);
}

extern "C" {
// dKy_WolfPowerup_AmbCol__FP11_GXColorS10
// dKy_WolfPowerup_AmbCol(_GXColorS10*)
asm void dKy_WolfPowerup_AmbCol(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019C388.s"
}

// dKy_sense_pat_get__Fv
// dKy_sense_pat_get(void)
asm void dKy_sense_pat_get(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019C3A4.s"
}

// dKy_WolfPowerup_BgAmbCol__FP11_GXColorS10
// dKy_WolfPowerup_BgAmbCol(_GXColorS10*)
asm void dKy_WolfPowerup_BgAmbCol(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019CB0C.s"
}

// dKy_WolfPowerup_FogNearFar__FPfPf
// dKy_WolfPowerup_FogNearFar(float*, float*)
asm void dKy_WolfPowerup_FogNearFar(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019CCDC.s"
}

// dKy_pos2_get_angle__FP4cXyzP4cXyzPsPs
// dKy_pos2_get_angle(cXyz*, cXyz*, short*, short*)
asm void dKy_pos2_get_angle(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019CE5C.s"
}

// dKy_twi_wolflight_set__Fi
// dKy_twi_wolflight_set(int)
asm void dKy_twi_wolflight_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019CFE4.s"
}

// dKy_lightdir_set__FffP3Vec
// dKy_lightdir_set(float, float, Vec*)
asm void dKy_lightdir_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019D1A0.s"
}

// dKy_GXInitLightSpot__FP12J3DLightInfofUc
// dKy_GXInitLightSpot(J3DLightInfo*, float, unsigned char)
asm void dKy_GXInitLightSpot(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019D2C4.s"
}

// dKy_GXInitLightDistAttn__FP12J3DLightInfoffUc
// dKy_GXInitLightDistAttn(J3DLightInfo*, float, float, unsigned char)
asm void dKy_GXInitLightDistAttn(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019D44C.s"
}

// u8_data_ratio_set__FUcUcf
// u8_data_ratio_set(unsigned char, unsigned char, float)
asm void u8_data_ratio_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019D520.s"
}

// s16_data_ratio_set__Fssf
// s16_data_ratio_set(short, short, float)
asm void s16_data_ratio_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019D56C.s"
}

// kankyo_color_ratio_calc_common__Fsf
// kankyo_color_ratio_calc_common(short, float)
asm void kankyo_color_ratio_calc_common(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019D5BC.s"
}

// kankyo_color_ratio_calc__FP8_GXColor11_GXColorS10f
// kankyo_color_ratio_calc(_GXColor*, _GXColorS10, float)
asm void kankyo_color_ratio_calc(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019D61C.s"
}

// kankyo_color_ratio_set__FUcUcfUcUcfsf
// kankyo_color_ratio_set(unsigned char, unsigned char, float, unsigned char, unsigned char, float,
// short, float)
asm void kankyo_color_ratio_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019D68C.s"
}

// fl_data_ratio_set__Ffff
// fl_data_ratio_set(float, float, float)
asm void fl_data_ratio_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019D790.s"
}

// float_kankyo_color_ratio_set__Fffffffff
// float_kankyo_color_ratio_set(float, float, float, float, float, float, float, float)
asm void float_kankyo_color_ratio_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019D7A0.s"
}

// get_parcent__Ffff
// get_parcent(float, float, float)
asm void get_parcent(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019D878.s"
}

// dKy_get_parcent__Ffff
// dKy_get_parcent(float, float, float)
asm void dKy_get_parcent(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019D8AC.s"
}

// dKy_FiveSenses_fullthrottle_dark_static1__Fv
// dKy_FiveSenses_fullthrottle_dark_static1(void)
asm void dKy_FiveSenses_fullthrottle_dark_static1(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019D8CC.s"
}
};
// dKy_FiveSenses_fullthrottle_dark__Fv
// dKy_FiveSenses_fullthrottle_dark(void)
asm void dKy_FiveSenses_fullthrottle_dark(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019DD4C.s"
}
extern "C" {
// dKy_light_influence_id__F4cXyzi
// dKy_light_influence_id(cXyz, int)
asm void dKy_light_influence_id(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019DD6C.s"
}

// dKy_eflight_influence_id__F4cXyzi
// dKy_eflight_influence_id(cXyz, int)
asm void dKy_eflight_influence_id(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019E13C.s"
}

// dKy_light_influence_col__Fi
// dKy_light_influence_col(int)
asm void dKy_light_influence_col(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019E404.s"
}

// dKy_light_influence_col__FP8_GXColorf
// dKy_light_influence_col(_GXColor*, float)
asm void dKy_light_influence_col_X1_(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019E430.s"
}

// dKy_light_influence_power__Fi
// dKy_light_influence_power(int)
asm void dKy_light_influence_power(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019E520.s"
}

// dKy_light_influence_yuragi__Fi
// dKy_light_influence_yuragi(int)
asm void dKy_light_influence_yuragi(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019E548.s"
}

// dKy_light_influence_distance__F4cXyzi
// dKy_light_influence_distance(cXyz, int)
asm void dKy_light_influence_distance(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019E570.s"
}

// plight_init__Fv
// plight_init(void)
asm void plight_init(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019E694.s"
}

// darkmist_init__Fv
// darkmist_init(void)
asm void darkmist_init(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019E708.s"
}

// plight_set__Fv
// plight_set(void)
asm void plight_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019E734.s"
}

// bgparts_activelight_init__Fv
// bgparts_activelight_init(void)
asm void bgparts_activelight_init(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019E854.s"
}

// dungeonlight_init__Fv
// dungeonlight_init(void)
asm void dungeonlight_init(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019E874.s"
}

// undwater_init__Fv
// undwater_init(void)
asm void undwater_init(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019EAA0.s"
}

// dKy_light_size_get__FPCc
// dKy_light_size_get(const char*)
asm void dKy_light_size_get(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019EBD0.s"
}

// envcolor_init__Fv
// envcolor_init(void)
asm void envcolor_init(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019EC98.s"
}

// dKy_clear_game_init__Fv
// dKy_clear_game_init(void)
asm void dKy_clear_game_init(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019F264.s"
}

// __ct__18dScnKy_env_light_cFv
// dScnKy_env_light_c::dScnKy_env_light_c(void)
asm void dScnKy_env_light_c(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019F2E8.s"
}

// __ct__19GB_MAPLE_COL_CHANGEFv
// GB_MAPLE_COL_CHANGE::GB_MAPLE_COL_CHANGE(void)
asm void GB_MAPLE_COL_CHANGE(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019F400.s"
}

// __dt__10BOSS_LIGHTFv
// BOSS_LIGHT::~BOSS_LIGHT(void)
asm void BOSS_LIGHT_NS_dtor(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019F438.s"
}

// __ct__10BOSS_LIGHTFv
// BOSS_LIGHT::BOSS_LIGHT(void)
asm void BOSS_LIGHT(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019F474.s"
}

// __dt__13DUNGEON_LIGHTFv
// DUNGEON_LIGHT::~DUNGEON_LIGHT(void)
asm void DUNGEON_LIGHT_NS_dtor(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019F478.s"
}

// __ct__13DUNGEON_LIGHTFv
// DUNGEON_LIGHT::DUNGEON_LIGHT(void)
asm void DUNGEON_LIGHT(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019F4B4.s"
}

// __dt__15WIND_INF_ENTITYFv
// WIND_INF_ENTITY::~WIND_INF_ENTITY(void)
asm void WIND_INF_ENTITY_NS_dtor(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019F4B8.s"
}

// __ct__15WIND_INF_ENTITYFv
// WIND_INF_ENTITY::WIND_INF_ENTITY(void)
asm void WIND_INF_ENTITY(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019F4F4.s"
}

// __ct__15LIGHT_INFLUENCEFv
// LIGHT_INFLUENCE::LIGHT_INFLUENCE(void)
asm void LIGHT_INFLUENCE(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019F4F8.s"
}

// setDaytime__18dScnKy_env_light_cFv
// dScnKy_env_light_c::setDaytime(void)
asm void dScnKy_env_light_c_NS_setDaytime(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019F4FC.s"
}

// GetTimePass__20dStage_roomControl_cFv
// dStage_roomControl_c::GetTimePass(void)
asm void dStage_roomControl_c_NS_GetTimePass(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019F780.s"
}

// setSunpos__18dScnKy_env_light_cFv
// dScnKy_env_light_c::setSunpos(void)
asm void dScnKy_env_light_c_NS_setSunpos(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019F788.s"
}

// getDaytime__18dScnKy_env_light_cFv
// dScnKy_env_light_c::getDaytime(void)
asm void dScnKy_env_light_c_NS_getDaytime(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019FA08.s"
}

// dKy_getdaytime_hour__Fv
// dKy_getdaytime_hour(void)
asm void dKy_getdaytime_hour(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019FA10.s"
}

// dKy_getdaytime_minute__Fv
// dKy_getdaytime_minute(void)
asm void dKy_getdaytime_minute(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019FA3C.s"
}

// dKy_daynight_check__Fv
// dKy_daynight_check(void)
asm int dKy_daynight_check(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019FAB8.s"
}

// dKy_getDarktime_hour__Fv
// dKy_getDarktime_hour(void)
asm void func_8019FAF4(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019FAF4.s"
}

// dKy_getDarktime_minute__Fv
// dKy_getDarktime_minute(void)
asm void func_8019FB30(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019FB30.s"
}

// dKy_getDarktime_week__Fv
// dKy_getDarktime_week(void)
asm void func_8019FBBC(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019FBBC.s"
}

// getDarkDaytime__18dScnKy_env_light_cFv
// dScnKy_env_light_c::getDarkDaytime(void)
asm void dScnKy_env_light_c_NS_getDarkDaytime(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019FBCC.s"
}

// setLight_palno_get__18dScnKy_env_light_cFPUcPUcPUcPUcPUcPUcPUcPUcPfPiPiPfPUc
// dScnKy_env_light_c::setLight_palno_get(unsigned char*, unsigned char*, unsigned char*, unsigned
// char*, unsigned char*, unsigned char*, unsigned char*, unsigned char*, float*, int*, int*,
// float*, unsigned char*)
asm void dScnKy_env_light_c_NS_setLight_palno_get(void) {
    nofralloc
#include "d/d_kankyo/asm/func_8019FBD4.s"
}

// dKy_calc_color_set__FP11_GXColorS10P15color_RGB_classP15color_RGB_classP15color_RGB_classP15color_RGB_classff11_GXColorS10f
// dKy_calc_color_set(_GXColorS10*, color_RGB_class*, color_RGB_class*, color_RGB_class*,
// color_RGB_class*, float, float, _GXColorS10, float)
asm void dKy_calc_color_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A0340.s"
}

// setLight__18dScnKy_env_light_cFv
// dScnKy_env_light_c::setLight(void)
asm void dScnKy_env_light_c_NS_setLight(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A040C.s"
}

// setLight_bg__18dScnKy_env_light_cFP12dKy_tevstr_cP11_GXColorS10P11_GXColorS10PfPf
// dScnKy_env_light_c::setLight_bg(dKy_tevstr_c*, _GXColorS10*, _GXColorS10*, float*, float*)
asm void dScnKy_env_light_c_NS_setLight_bg(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A133C.s"
}

// setLight_actor__18dScnKy_env_light_cFP12dKy_tevstr_cP11_GXColorS10PfPf
// dScnKy_env_light_c::setLight_actor(dKy_tevstr_c*, _GXColorS10*, float*, float*)
asm void dScnKy_env_light_c_NS_setLight_actor(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A16C0.s"
}

// settingTevStruct_colget_actor__18dScnKy_env_light_cFP4cXyzP12dKy_tevstr_cP11_GXColorS10P11_GXColorS10PfPf
// dScnKy_env_light_c::settingTevStruct_colget_actor(cXyz*, dKy_tevstr_c*, _GXColorS10*,
// _GXColorS10*, float*, float*)
asm void dScnKy_env_light_c_NS_settingTevStruct_colget_actor(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A1D64.s"
}

// settingTevStruct_colget_player__18dScnKy_env_light_cFP12dKy_tevstr_c
// dScnKy_env_light_c::settingTevStruct_colget_player(dKy_tevstr_c*)
asm void dScnKy_env_light_c_NS_settingTevStruct_colget_player(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A1F58.s"
}

// cLib_addCalcU8__FPUcUcss
// cLib_addCalcU8(unsigned char*, unsigned char, short, short)
asm void cLib_addCalcU8(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A2090.s"
}

// settingTevStruct_plightcol_plus__18dScnKy_env_light_cFP4cXyzP12dKy_tevstr_c11_GXColorS1011_GXColorS10Uc
// dScnKy_env_light_c::settingTevStruct_plightcol_plus(cXyz*, dKy_tevstr_c*, _GXColorS10,
// _GXColorS10, unsigned char)
asm void dScnKy_env_light_c_NS_settingTevStruct_plightcol_plus(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A2128.s"
}

// settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
// dScnKy_env_light_c::settingTevStruct(int, cXyz*, dKy_tevstr_c*)
asm void dScnKy_env_light_c_NS_settingTevStruct(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A37C4.s"
}

// setLightTevColorType__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
// dScnKy_env_light_c::setLightTevColorType(J3DModelData*, dKy_tevstr_c*)
asm void func_801A441C(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A441C.s"
}

// setLightTevColorType_MAJI_sub__FP11J3DMaterialP12dKy_tevstr_ci
// setLightTevColorType_MAJI_sub(J3DMaterial*, dKy_tevstr_c*, int)
asm void setLightTevColorType_MAJI_sub(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A4420.s"
}

// setLight__13J3DColorBlockFUlP11J3DLightObj
// J3DColorBlock::setLight(unsigned long, J3DLightObj*)
asm void func_801A4C08(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A4C08.s"
}

// setAmbColor__13J3DColorBlockFUlPC10J3DGXColor
// J3DColorBlock::setAmbColor(unsigned long, const J3DGXColor*)
asm void func_801A4C0C(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A4C0C.s"
}

// dKy_cloudshadow_scroll__FP12J3DModelDataP12dKy_tevstr_ci
// dKy_cloudshadow_scroll(J3DModelData*, dKy_tevstr_c*, int)
asm void dKy_cloudshadow_scroll(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A4C10.s"
}

// setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
// dScnKy_env_light_c::setLightTevColorType_MAJI(J3DModelData*, dKy_tevstr_c*)
asm void dScnKy_env_light_c_NS_setLightTevColorType_MAJI(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A4DA0.s"
}

// CalcTevColor__18dScnKy_env_light_cFv
// dScnKy_env_light_c::CalcTevColor(void)
asm void dScnKy_env_light_c_NS_CalcTevColor(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A4E90.s"
}

// Sndpos__18dScnKy_env_light_cFv
// dScnKy_env_light_c::Sndpos(void)
asm void dScnKy_env_light_c_NS_Sndpos(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A4F24.s"
}

// Eflight_flush_proc__18dScnKy_env_light_cFv
// dScnKy_env_light_c::Eflight_flush_proc(void)
asm void dScnKy_env_light_c_NS_Eflight_flush_proc(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A4F64.s"
}

// SetBaseLight__18dScnKy_env_light_cFv
// dScnKy_env_light_c::SetBaseLight(void)
asm void dScnKy_env_light_c_NS_SetBaseLight(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A516C.s"
}

// exeKankyo__18dScnKy_env_light_cFv
// dScnKy_env_light_c::exeKankyo(void)
asm void dScnKy_env_light_c_NS_exeKankyo(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A5288.s"
}

// drawKankyo__18dScnKy_env_light_cFv
// dScnKy_env_light_c::drawKankyo(void)
asm void dScnKy_env_light_c_NS_drawKankyo(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A56DC.s"
}

// dKy_undwater_filter_draw__Fv
// dKy_undwater_filter_draw(void)
asm void dKy_undwater_filter_draw(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A572C.s"
}

// dKy_Draw__FP17sub_kankyo__class
// dKy_Draw(sub_kankyo__class*)
asm void func_801A5B6C(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A5B6C.s"
}

// dKy_Execute__FP17sub_kankyo__class
// dKy_Execute(sub_kankyo__class*)
asm void func_801A5B98(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A5B98.s"
}

// dKy_IsDelete__FP17sub_kankyo__class
// dKy_IsDelete(sub_kankyo__class*)
asm void func_801A5BCC(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A5BCC.s"
}

// dKy_Delete__FP17sub_kankyo__class
// dKy_Delete(sub_kankyo__class*)
asm void func_801A5BD4(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A5BD4.s"
}

// dKy_Create__FPv
// dKy_Create(void*)
asm void func_801A5C1C(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A5C1C.s"
}

// dKy_setLight_init__Fv
// dKy_setLight_init(void)
asm void dKy_setLight_init(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A5E54.s"
}

// dKy_setLight__Fv
// dKy_setLight(void)
asm void dKy_setLight(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A60BC.s"
}

// dKy_GlobalLight_set__Fv
// dKy_GlobalLight_set(void)
asm void dKy_GlobalLight_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A60E0.s"
}

// dKy_lightswitch_check__FP30stage_pure_lightvec_info_classc
// dKy_lightswitch_check(stage_pure_lightvec_info_class*, char)
asm void dKy_lightswitch_check(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A61F4.s"
}

// dKy_setLight_nowroom_common__Fcf
// dKy_setLight_nowroom_common(char, float)
asm void dKy_setLight_nowroom_common(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A6278.s"
}

// dKy_setLight_nowroom__Fc
// dKy_setLight_nowroom(char)
asm void dKy_setLight_nowroom(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A6C20.s"
}

// dKy_setLight_nowroom_grass__Fcf
// dKy_setLight_nowroom_grass(char, float)
asm void dKy_setLight_nowroom_grass(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A6C58.s"
}

// dKy_move_room_ratio__FP12dKy_tevstr_cPSc
// dKy_move_room_ratio(dKy_tevstr_c*, char*)
asm void dKy_move_room_ratio(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A6D4C.s"
}

// dKy_setLight_nowroom_actor__FP12dKy_tevstr_c
// dKy_setLight_nowroom_actor(dKy_tevstr_c*)
asm void dKy_setLight_nowroom_actor(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A6E9C.s"
}

// dKy_setLight_again__Fv
// dKy_setLight_again(void)
asm void dKy_setLight_again(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A75C0.s"
}

// dKy_Global_amb_set__FP12dKy_tevstr_c
// dKy_Global_amb_set(dKy_tevstr_c*)
asm void dKy_Global_amb_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A75E0.s"
}

// dKy_light_influence_pos__Fi
// dKy_light_influence_pos(int)
asm void dKy_light_influence_pos(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A76D8.s"
}

// dKy_plight_near_pos__Fv
// dKy_plight_near_pos(void)
asm void dKy_plight_near_pos(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A7714.s"
}

// dKy_mock_light_every_set__FP15LIGHT_INFLUENCE
// dKy_mock_light_every_set(LIGHT_INFLUENCE*)
asm void func_801A7738(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A7738.s"
}

// dKy_plight_set__FP15LIGHT_INFLUENCE
// dKy_plight_set(LIGHT_INFLUENCE*)
asm void dKy_plight_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A7790.s"
}

// dKy_dalkmist_inf_set__FP18DALKMIST_INFLUENCE
// dKy_dalkmist_inf_set(DALKMIST_INFLUENCE*)
asm void func_801A7814(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A7814.s"
}

// dKy_dalkmist_inf_cut__FP18DALKMIST_INFLUENCE
// dKy_dalkmist_inf_cut(DALKMIST_INFLUENCE*)
asm void func_801A7868(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A7868.s"
}

// dKy_plight_priority_set__FP15LIGHT_INFLUENCE
// dKy_plight_priority_set(LIGHT_INFLUENCE*)
asm void func_801A789C(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A789C.s"
}

// dKy_plight_cut__FP15LIGHT_INFLUENCE
// dKy_plight_cut(LIGHT_INFLUENCE*)
asm void dKy_plight_cut(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A792C.s"
}

// dKy_efplight_set__FP15LIGHT_INFLUENCE
// dKy_efplight_set(LIGHT_INFLUENCE*)
asm void dKy_efplight_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A797C.s"
}

// dKy_efplight_cut__FP15LIGHT_INFLUENCE
// dKy_efplight_cut(LIGHT_INFLUENCE*)
asm void dKy_efplight_cut(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A7A00.s"
}

// dKy_bgparts_activelight_set__FP15LIGHT_INFLUENCEi
// dKy_bgparts_activelight_set(LIGHT_INFLUENCE*, int)
asm void dKy_bgparts_activelight_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A7A40.s"
}

// dKy_bgparts_activelight_cut__Fi
// dKy_bgparts_activelight_cut(int)
asm void dKy_bgparts_activelight_cut(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A7AAC.s"
}

// dKy_actor_addcol_amb_set__Fsssf
// dKy_actor_addcol_amb_set(short, short, short, float)
asm void dKy_actor_addcol_amb_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A7AC8.s"
}

// dKy_bg_addcol_amb_set__Fsssf
// dKy_bg_addcol_amb_set(short, short, short, float)
asm void dKy_bg_addcol_amb_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A7B68.s"
}

// dKy_bg1_addcol_amb_set__Fsssf
// dKy_bg1_addcol_amb_set(short, short, short, float)
asm void dKy_bg1_addcol_amb_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A7C08.s"
}

// dKy_bg2_addcol_amb_set__Fsssf
// dKy_bg2_addcol_amb_set(short, short, short, float)
asm void dKy_bg2_addcol_amb_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A7CA8.s"
}

// dKy_bg3_addcol_amb_set__Fsssf
// dKy_bg3_addcol_amb_set(short, short, short, float)
asm void dKy_bg3_addcol_amb_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A7D48.s"
}

// dKy_addcol_fog_set__Fsssf
// dKy_addcol_fog_set(short, short, short, float)
asm void dKy_addcol_fog_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A7DE8.s"
}

// dKy_actor_addcol_set__Fsssf
// dKy_actor_addcol_set(short, short, short, float)
asm void dKy_actor_addcol_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A7E88.s"
}

// dKy_vrbox_addcol_sky0_set__Fsssf
// dKy_vrbox_addcol_sky0_set(short, short, short, float)
asm void dKy_vrbox_addcol_sky0_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A7F20.s"
}

// dKy_vrbox_addcol_kasumi_set__Fsssf
// dKy_vrbox_addcol_kasumi_set(short, short, short, float)
asm void dKy_vrbox_addcol_kasumi_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A7FC0.s"
}

// dKy_vrbox_addcol_set__Fsssf
// dKy_vrbox_addcol_set(short, short, short, float)
asm void dKy_vrbox_addcol_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A8060.s"
}

// dKy_fog_startendz_set__Ffff
// dKy_fog_startendz_set(float, float, float)
asm void dKy_fog_startendz_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A80D0.s"
}

// dKy_Itemgetcol_chg_on__Fv
// dKy_Itemgetcol_chg_on(void)
asm void dKy_Itemgetcol_chg_on(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A8168.s"
}

// dKy_Sound_init__Fv
// dKy_Sound_init(void)
asm void dKy_Sound_init(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A8190.s"
}

// dKy_Sound_set__F4cXyziUii
// dKy_Sound_set(cXyz, int, unsigned int, int)
asm void dKy_Sound_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A81C0.s"
}

// dKy_Sound_get__Fv
// dKy_Sound_get(void)
asm void dKy_Sound_get(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A8474.s"
}

// dKy_SordFlush_set__F4cXyzi
// dKy_SordFlush_set(cXyz, int)
asm void dKy_SordFlush_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A8484.s"
}

// GxFogSet_Sub__FP8_GXColor
// GxFogSet_Sub(_GXColor*)
asm void GxFogSet_Sub(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A8538.s"
}

// GxFog_set__Fv
// GxFog_set(void)
asm void GxFog_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A85E8.s"
}

// dKy_GxFog_set__Fv
// dKy_GxFog_set(void)
asm void dKy_GxFog_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A862C.s"
}

// dKy_GxFog_tevstr_set__FP12dKy_tevstr_c
// dKy_GxFog_tevstr_set(dKy_tevstr_c*)
asm void dKy_GxFog_tevstr_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A8650.s"
}

// dKy_GfFog_tevstr_set__FP12dKy_tevstr_c
// dKy_GfFog_tevstr_set(dKy_tevstr_c*)
asm void func_801A86F8(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A86F8.s"
}

// GxXFog_set__Fv
// GxXFog_set(void)
asm void GxXFog_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A87A0.s"
}

// dKy_change_colpat__FUc
// dKy_change_colpat(unsigned char)
asm void func_801A87E4(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A87E4.s"
}

// dKy_custom_colset__FUcUcf
// dKy_custom_colset(unsigned char, unsigned char, float)
asm void func_801A880C(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A880C.s"
}

// dKy_setLight_mine__FP12dKy_tevstr_c
// dKy_setLight_mine(dKy_tevstr_c*)
asm void func_801A8854(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A8854.s"
}

// dKy_tevstr_init__FP12dKy_tevstr_cScUc
// dKy_tevstr_init(dKy_tevstr_c*, char, unsigned char)
asm void dKy_tevstr_init(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A88EC.s"
}

// dKy_rain_check__Fv
// dKy_rain_check(void)
asm void dKy_rain_check(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A8A34.s"
}

// dKy_set_allcol_ratio__Ff
// dKy_set_allcol_ratio(float)
asm void func_801A8A44(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A8A44.s"
}

// dKy_set_actcol_ratio__Ff
// dKy_set_actcol_ratio(float)
asm void dKy_set_actcol_ratio(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A8A54.s"
}

// dKy_set_bgcol_ratio__Ff
// dKy_set_bgcol_ratio(float)
asm void dKy_set_bgcol_ratio(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A8A64.s"
}

// dKy_set_fogcol_ratio__Ff
// dKy_set_fogcol_ratio(float)
asm void dKy_set_fogcol_ratio(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A8A74.s"
}

// dKy_set_vrboxcol_ratio__Ff
// dKy_set_vrboxcol_ratio(float)
asm void dKy_set_vrboxcol_ratio(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A8A84.s"
}

// dKy_set_vrboxsoracol_ratio__Ff
// dKy_set_vrboxsoracol_ratio(float)
asm void dKy_set_vrboxsoracol_ratio(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A8AB8.s"
}

// dKy_set_vrboxkumocol_ratio__Ff
// dKy_set_vrboxkumocol_ratio(float)
asm void dKy_set_vrboxkumocol_ratio(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A8AC8.s"
}

// dKy_itudemo_se__Fv
// dKy_itudemo_se(void)
asm void dKy_itudemo_se(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A8AD8.s"
}

// dKy_get_dayofweek__Fv
// dKy_get_dayofweek(void)
asm void dKy_get_dayofweek(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A8B38.s"
}

// dKy_set_nexttime__Ff
// dKy_set_nexttime(float)
asm void dKy_set_nexttime(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A8B58.s"
}

// dKy_instant_timechg__Ff
// dKy_instant_timechg(float)
asm void dKy_instant_timechg(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A8B68.s"
}

// dKy_instant_rainchg__Fv
// dKy_instant_rainchg(void)
asm void dKy_instant_rainchg(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A8BC8.s"
}

// NewAmbColGet__FP11_GXColorS10
// NewAmbColGet(_GXColorS10*)
asm void NewAmbColGet(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A8C04.s"
}

// dKy_ParticleColor_get_base__FP4cXyzP12dKy_tevstr_cP8_GXColorP8_GXColorP8_GXColorP8_GXColorf
// dKy_ParticleColor_get_base(cXyz*, dKy_tevstr_c*, _GXColor*, _GXColor*, _GXColor*, _GXColor*,
// float)
asm void dKy_ParticleColor_get_base(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A8E20.s"
}

// dKy_ParticleColor_get_actor__FP4cXyzP12dKy_tevstr_cP8_GXColorP8_GXColorP8_GXColorP8_GXColorf
// dKy_ParticleColor_get_actor(cXyz*, dKy_tevstr_c*, _GXColor*, _GXColor*, _GXColor*, _GXColor*,
// float)
asm void dKy_ParticleColor_get_actor(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A9BE4.s"
}

// dKy_ParticleColor_get_bg__FP4cXyzP12dKy_tevstr_cP8_GXColorP8_GXColorP8_GXColorP8_GXColorf
// dKy_ParticleColor_get_bg(cXyz*, dKy_tevstr_c*, _GXColor*, _GXColor*, _GXColor*, _GXColor*, float)
asm void dKy_ParticleColor_get_bg(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A9CBC.s"
}

// dKy_BossLight_set__FP4cXyzP8_GXColorfUc
// dKy_BossLight_set(cXyz*, _GXColor*, float, unsigned char)
asm void dKy_BossLight_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801A9D60.s"
}

// dKy_BossSpotLight_set__FP4cXyzfffP8_GXColorfUcUc
// dKy_BossSpotLight_set(cXyz*, float, float, float, _GXColor*, float, unsigned char, unsigned char)
asm void func_801AA664(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801AA664.s"
}

// dKy_WolfEyeLight_set__FP4cXyzfffP8_GXColorfUcUc
// dKy_WolfEyeLight_set(cXyz*, float, float, float, _GXColor*, float, unsigned char, unsigned char)
asm void dKy_WolfEyeLight_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801AAC5C.s"
}

// dKy_twilight_camelight_set__Fv
// dKy_twilight_camelight_set(void)
asm void dKy_twilight_camelight_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801AAD50.s"
}

// dKy_WaterIn_Light_set__Fv
// dKy_WaterIn_Light_set(void)
asm void dKy_WaterIn_Light_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801AB01C.s"
}

// dKy_camera_water_in_status_set__FUc
// dKy_camera_water_in_status_set(unsigned char)
asm void dKy_camera_water_in_status_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801AB270.s"
}

// dKy_camera_water_in_status_check__Fv
// dKy_camera_water_in_status_check(void)
asm void dKy_camera_water_in_status_check(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801AB280.s"
}

// dKy_pol_efftype_get__FPC13cBgS_PolyInfo
// dKy_pol_efftype_get(const cBgS_PolyInfo*)
asm void dKy_pol_efftype_get(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801AB290.s"
}

// dKy_pol_efftype2_get__FPC13cBgS_PolyInfo
// dKy_pol_efftype2_get(const cBgS_PolyInfo*)
asm void dKy_pol_efftype2_get(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801AB3A8.s"
}

// dKy_pol_sound_get__FPC13cBgS_PolyInfo
// dKy_pol_sound_get(const cBgS_PolyInfo*)
asm void dKy_pol_sound_get(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801AB4C0.s"
}

// dKy_pol_argument_get__FPC13cBgS_PolyInfo
// dKy_pol_argument_get(const cBgS_PolyInfo*)
asm void dKy_pol_argument_get(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801AB59C.s"
}

// dKy_pol_eff_prim_get__FPC13cBgS_PolyInfoP8_GXColor
// dKy_pol_eff_prim_get(const cBgS_PolyInfo*, _GXColor*)
asm void dKy_pol_eff_prim_get(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801AB668.s"
}

// dKy_pol_eff_env_get__FPC13cBgS_PolyInfoP8_GXColor
// dKy_pol_eff_env_get(const cBgS_PolyInfo*, _GXColor*)
asm void dKy_pol_eff_env_get(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801AB7D0.s"
}

// dKy_pol_eff2_prim_get__FPC13cBgS_PolyInfoP8_GXColor
// dKy_pol_eff2_prim_get(const cBgS_PolyInfo*, _GXColor*)
asm void dKy_pol_eff2_prim_get(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801AB93C.s"
}

// dKy_pol_eff2_env_get__FPC13cBgS_PolyInfoP8_GXColor
// dKy_pol_eff2_env_get(const cBgS_PolyInfo*, _GXColor*)
asm void dKy_pol_eff2_env_get(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801ABAA4.s"
}

// dKy_pol_eff_alpha_get__FPC13cBgS_PolyInfo
// dKy_pol_eff_alpha_get(const cBgS_PolyInfo*)
asm void dKy_pol_eff_alpha_get(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801ABC10.s"
}

// dKy_pol_eff_ratio_get__FPC13cBgS_PolyInfo
// dKy_pol_eff_ratio_get(const cBgS_PolyInfo*)
asm void dKy_pol_eff_ratio_get(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801ABD4C.s"
}

// dKy_pol_eff2_alpha_get__FPC13cBgS_PolyInfo
// dKy_pol_eff2_alpha_get(const cBgS_PolyInfo*)
asm void dKy_pol_eff2_alpha_get(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801ABEA8.s"
}

// dKy_pol_eff2_ratio_get__FPC13cBgS_PolyInfo
// dKy_pol_eff2_ratio_get(const cBgS_PolyInfo*)
asm void dKy_pol_eff2_ratio_get(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801ABFE4.s"
}

// dKy_TeachWind_existence_chk__Fv
// dKy_TeachWind_existence_chk(void)
asm void dKy_TeachWind_existence_chk(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801AC140.s"
}

// dKy_SunMoon_Light_Check__Fv
// dKy_SunMoon_Light_Check(void)
asm void dKy_SunMoon_Light_Check(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801AC168.s"
}

// dKy_Outdoor_check__Fv
// dKy_Outdoor_check(void)
asm void dKy_Outdoor_check(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801AC228.s"
}

// dKy_Indoor_check__Fv
// dKy_Indoor_check(void)
asm void dKy_Indoor_check(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801AC28C.s"
}

// dKy_withwarp_capture_check__Fv
// dKy_withwarp_capture_check(void)
asm void dKy_withwarp_capture_check(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801AC2E0.s"
}

// dKy_depth_dist_set__FPv
// dKy_depth_dist_set(void*)
asm void dKy_depth_dist_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801AC2E8.s"
}

// dKy_darkworld_check__Fv
// dKy_darkworld_check(void)
asm void dKy_darkworld_check(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801AC57C.s"
}

// dKy_F_SP121Check__FPCciPUci
// dKy_F_SP121Check(const char*, int, unsigned char*, int)
asm void dKy_F_SP121Check(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801AC5BC.s"
}

// dKy_darkworld_stage_check__FPCci
// dKy_darkworld_stage_check(const char*, int)
asm void dKy_darkworld_stage_check(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801AC70C.s"
}

// dKy_darkworld_spot_check__FPCci
// dKy_darkworld_spot_check(const char*, int)
asm void dKy_darkworld_spot_check(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801AC7E0.s"
}

// dKy_darkworld_Area_set__FPCci
// dKy_darkworld_Area_set(const char*, int)
asm void dKy_darkworld_Area_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801AC870.s"
}

// dKy_murky_set__FP11J3DMaterial
// dKy_murky_set(J3DMaterial*)
asm void dKy_murky_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801AC918.s"
}

// dKy_shadow_mode_set__FUc
// dKy_shadow_mode_set(unsigned char)
asm void dKy_shadow_mode_set(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801ACCDC.s"
}

// dKy_shadow_mode_reset__FUc
// dKy_shadow_mode_reset(unsigned char)
asm void dKy_shadow_mode_reset(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801ACCF4.s"
}

// dKy_shadow_mode_check__FUc
// dKy_shadow_mode_check(unsigned char)
asm void dKy_shadow_mode_check(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801ACD0C.s"
}

// dKy_bg_MAxx_proc__FPv
// dKy_bg_MAxx_proc(void*)
asm void func_801ACD24(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801ACD24.s"
}

// __dt__18dScnKy_env_light_cFv
// dScnKy_env_light_c::~dScnKy_env_light_c(void)
asm void dScnKy_env_light_c_NS_dtor(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801ADBBC.s"
}

// __sinit_d_kankyo_cpp
asm void func_801ADCA4(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801ADCA4.s"
}

// dKankyo_DayProc__Fv
// dKankyo_DayProc(void)
asm void dKankyo_DayProc(void) {
    nofralloc
#include "d/d_kankyo/asm/func_801ADD00.s"
}
};
