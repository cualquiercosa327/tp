
#ifndef F_PC_LINE_TAG_H
#define F_PC_LINE_TAG_H

#include "global.h"
#include "SComponent/c_tag.h"

typedef struct line_tag {
    create_tag_class mBase;
    s32 mLineListID;
} line_tag;

BEGIN_C_DECLARATIONS

s32 fpcLnTg_Move(line_tag *pLineTag, s32 newLineListID);
void fpcLnTg_QueueTo(line_tag *pLineTag);
s32 fpcLnTg_ToQueue(line_tag *pLineTag, s32 lineListID);
void fpcLnTg_Init(line_tag *pLineTag, void *pData);

END_C_DECLARATIONS

#endif
