#ifndef F_F_OP_CAMERA_H_
#define F_F_OP_CAMERA_H_

#include "f/f_op/f_op_camera_mng.h"
s32 fopCam_Draw(camera_class* param_1);
void fopCam_Execute(camera_class* pCamera);
int fopCam_IsDelete(camera_class* pCamera);
#endif