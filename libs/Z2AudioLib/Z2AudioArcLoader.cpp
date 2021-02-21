/* Z2AudioArcLoader.cpp autogenerated by split.py v0.3 at 2021-01-05 01:13:20.339487 */

#include "Z2AudioLib/Z2AudioArcLoader/Z2AudioArcLoader.h"
#include "JSystem/JAudio2/JAUSectionHeap.h"
#include "JSystem/JKernel/JKRHeap/JKRHeap.h"
#include "Z2AudioLib/Z2FxLineMgr/Z2FxLineMgr.h"
#include "global.h"

extern "C" {
void __dl__FPv(void);
void mount__10JKRArchiveFPvP7JKRHeapQ210JKRArchive15EMountDirection(void);
}

extern u8 lbl_803C9CD0;
extern u8 lbl_80450B40;
extern JKRHeap* sCurrentHeap__7JKRHeap;
extern u8 lbl_80450CC0;
extern u8 lbl_803C9A78;

extern "C" {
// __ct__16Z2AudioArcLoaderFP10JAUSection
// Z2AudioArcLoader::Z2AudioArcLoader(JAUSection*)
asm Z2AudioArcLoader::Z2AudioArcLoader(JAUSection*) {
    nofralloc
#include "Z2AudioLib/Z2AudioArcLoader/asm/func_802A9A34.s"
}

// readCommandMore__16Z2AudioArcLoaderFUl
// Z2AudioArcLoader::readCommandMore(unsigned long)
asm void Z2AudioArcLoader::readCommandMore(u32) {
    nofralloc
#include "Z2AudioLib/Z2AudioArcLoader/asm/func_802A9A70.s"
}

// readBFCA__16Z2AudioArcLoaderFPCv
// Z2AudioArcLoader::readBFCA(const void*)
asm void Z2AudioArcLoader::readBFCA(const void*) {
    nofralloc
#include "Z2AudioLib/Z2AudioArcLoader/asm/func_802A9AC8.s"
}

// readBSTN__16Z2AudioArcLoaderFPCvUl
// Z2AudioArcLoader::readBSTN(const void*, unsigned long)
asm void Z2AudioArcLoader::readBSTN(const void*, u32) {
    nofralloc
#include "Z2AudioLib/Z2AudioArcLoader/asm/func_802A9B54.s"
}

// __dt__16Z2AudioArcLoaderFv
// Z2AudioArcLoader::~Z2AudioArcLoader(void)
asm Z2AudioArcLoader::~Z2AudioArcLoader() {
    nofralloc
#include "Z2AudioLib/Z2AudioArcLoader/asm/func_802A9B58.s"
}
};
