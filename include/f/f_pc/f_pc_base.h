
#ifndef F_PC_BASE_H
#define F_PC_BASE_H

#include "global.h"
#include "SComponent/c_tag.h"
#include "f/f_pc/f_pc_method.h"
#include "f/f_pc/f_pc_profile.h"
#include "f/f_pc/f_pc_line_tag.h"
#include "f/f_pc/f_pc_layer_tag.h"
#include "f/f_pc/f_pc_delete_tag.h"
#include "f/f_pc/f_pc_priority.h"

struct create_request;

struct base_process_class {
    u32 mBsType;
    u32 mBsPcId;
    s16 mProcName;
    u8 mUnk0;
    u8 mUnk1;
    s8 mInitState;
    u8 mUnk2;
    s16 mBsTypeId;
    process_profile_definition *mpProf;
    create_request *mpCtRq;
    layer_management_tag_class mLyTg;
    line_tag mLnTg;
    delete_tag_class mDtTg;
    process_priority_class mPi;
    process_method_class *mpPcMtd;
    void *mpUserData;
    u32 mParameters;
    u32 mSubType;
};

extern "C" {

s32 fpcBs_Is_JustOfType(s32 pType1, s32 pType2);
s32 fpcBs_MakeOfType(s32 *pInt);
s32 fpcBs_MakeOfId(void);
s32 fpcBs_Execute(base_process_class *pProc);
void fpcBs_DeleteAppend(base_process_class *pProc);
s32 fpcBs_IsDelete(base_process_class* pProc);
s32 fpcBs_Delete(base_process_class* pProc);
base_process_class *fpcBs_Create(s16 pProcTypeID, u32 pProcID, void *pData);
s32 fpcBs_SubCreate(base_process_class *pProc);

}

#endif
