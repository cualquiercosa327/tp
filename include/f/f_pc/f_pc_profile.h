
#ifndef F_PC_PROFILE_H
#define F_PC_PROFILE_H

#include "global.h"
#include "f/f_pc/f_pc_method.h"

struct nodedraw_method_class;

typedef struct process_profile_definition {
    s32 mLayerID;
    u16 mListID;
    u16 mListPrio;
    s16 mProcName;
    s16 unkA; // probably padding
    struct process_method_class *mpPcMtd;
    s32 mSize;
    s32 mSizeOther;
    s32 mParameters;
} process_profile_definition;

BEGIN_C_DECLARATIONS

process_profile_definition * fpcPf_Get(s16 profileID);

END_C_DECLARATIONS

#endif
