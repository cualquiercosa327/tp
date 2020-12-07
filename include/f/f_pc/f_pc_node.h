
#ifndef F_PC_NODE_H
#define F_PC_NODE_H

#include "f/f_pc/f_pc_base.h"
#include "f/f_pc/f_pc_method.h"
#include "f/f_pc/f_pc_layer.h"

struct nodedraw_method_class : public process_method_class {
    process_method_func mpNodedrawFunc;
};

struct process_node_class : public base_process_class {
    nodedraw_method_class *mpNodeMtd;
    layer_class mLayer;
    node_list_class mLayerNodeLists[16];
    s8 mUnk0;
};


extern "C" {

int fpcNd_DrawMethod(nodedraw_method_class *pNodeMethod, void* pData);
int fpcNd_Draw(process_node_class *pProcNode);
int fpcNd_Execute(process_node_class *pProcNode);
void* fpcNd_IsCreatingFromUnder(process_node_class* param_1);
int fpcNd_IsDeleteTiming(process_node_class* param_1);
int fpcNd_IsDelete(process_node_class* param_1);
int fpcNd_Delete(process_node_class* param_1);
int fpcNd_Create(process_node_class* tmp);

};

#endif
