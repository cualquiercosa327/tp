
#ifndef F_PC_LAYER_H
#define F_PC_LAYER_H

#include "SComponent/c_node.h"
#include "SComponent/c_tree.h"
#include "SComponent/c_tag.h"

struct process_method_tag_class;
typedef struct process_node_class process_node_class;

typedef struct layer_class {
    node_class mNode;
    u32 mLayerID;
    node_lists_tree_class mNodeListTree;
    process_node_class *mpPcNode;
    node_list_class mCancelList;
    struct {
        s16 mCreatingCount;
        s16 mDeletingCount;
    } counts;
} layer_class;

BEGIN_C_DECLARATIONS

void fpcLy_SetCurrentLayer(layer_class *pLayer);
layer_class * fpcLy_CurrentLayer(void);
layer_class * fpcLy_RootLayer(void);
layer_class * fpcLy_Layer(unsigned int id);
layer_class * fpcLy_Search(unsigned int id);
void fpcLy_Regist(layer_class *pLayer);

void fpcLy_CreatedMesg(layer_class *pLayer);
void fpcLy_CreatingMesg(layer_class *pLayer);
void fpcLy_DeletedMesg(layer_class *pLayer);
void fpcLy_DeletingMesg(layer_class *pLayer);
BOOL fpcLy_IsCreatingMesg(layer_class *pLayer);
BOOL fpcLy_IsDeletingMesg(layer_class *pLayer);

int fpcLy_IntoQueue(layer_class *pLayer, int treeListIdx, create_tag_class *pTag, int idx);
int fpcLy_ToQueue(layer_class *pLayer, int treeListIdx, create_tag_class *pTag);
int fpcLy_QueueTo(layer_class *pLayer, create_tag_class *pTag);

void fpcLy_Cancel(layer_class *pLayer);
BOOL fpcLy_CancelMethod(struct process_method_tag_class *pLayer);

void fpcLy_CancelQTo(struct process_method_tag_class *pMthd);
int fpcLy_ToCancelQ(layer_class *pLayer, struct process_method_tag_class *pMthd);

void fpcLy_Create(layer_class *pLayer, struct process_node_class *pPcNode, node_list_class *pLists, int listNum);

// int fpcLy_Delete(layer_class *pLayer);

END_C_DECLARATIONS

#endif
