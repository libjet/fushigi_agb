#include "global.h"
#include "gba/io_reg.h"
#include "gba/macro.h"

extern u16 gUnk_3000004;
extern u16 gUnk_3000000;

void sub_80002C8 (void);

void sub_80002C8(void) {
    s32 r0 = REG_KEYINPUT ^ 0x3ff;
    gUnk_3000004 = r0 & ~gUnk_3000000;
    gUnk_3000000 = r0;
}
