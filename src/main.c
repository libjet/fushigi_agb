#include "global.h"
#include "gba/defines.h"
#include "gba/io_reg.h"
#include "gba/macro.h"
#include "main.h"

void AgbMain(void) {
	s32 i;
	REG_WAITCNT = WAITCNT_AGB | WAITCNT_PREFETCH_ENABLE | WAITCNT_PHI_OUT_NONE | WAITCNT_WS2_S_8 | WAITCNT_WS2_N_4 | WAITCNT_WS1_S_4 | WAITCNT_WS1_N_4 | WAITCNT_WS0_S_1 | WAITCNT_WS0_N_3 | WAITCNT_SRAM_4;
	DmaFill32(3, 0, EWRAM_START, 0x40000);
	DmaFill32(3, 0, IWRAM_START, 0x7E00);
	DmaCopy32(3, IntrMain, gIntrMainBuffer, 0x200);
	INTR_VECTOR = gIntrMainBuffer;
	DmaFill32(3, 0xA0, g3000210, 0x400);
	REG_BG2CNT = 1;
	REG_DISPCNT = 0x403;
	REG_IE = 0x2001;
	REG_DISPSTAT = 8;
	REG_IME = 1;
	for (i = 0; i < 0x9600; i++) {
		*(u16 *)(VRAM + (i * 2)) = unkdata_80000[i] & 0x7FFF;
	}
	for (;;) {
		sub_80003B4();
	}
}

void sub_80002B8(void) {
	INTR_CHECK = 1;
}

void IntrDummy(void) {
}

void sub_80002C8(void) {
	s32 r0 = REG_KEYINPUT ^ 0x3ff;
	g3000004 = r0 & ~g3000000;
	g3000000 = r0;
}

void sub_80002F8 (void) {
	u8 i;
	for (i = 93; i; i--) {
		g3000210[i].y = g3000210[i - 1].y;
		g3000210[i].x = g3000210[i - 1].x;
	}
	if (g3000000 & DPAD_UP)
		g3000210[0].y -= 4;
	if (g3000000 & DPAD_DOWN)
		g3000210[0].y += 4;
	if (g3000000 & DPAD_LEFT)
		g3000210[0].x -= 4;
	if (g3000000 & DPAD_RIGHT)
		g3000210[0].x += 4;
}

void sub_80003B4(void) {
	asm("movs r2, #0");
	asm("svc 5");
}

const IntrFunc gIntrTable[] =
{
	sub_80002B8, 
	IntrDummy, 
	IntrDummy, 
	IntrDummy, 
	IntrDummy, 
	IntrDummy, 
	IntrDummy, 
	IntrDummy, 
	IntrDummy, 
	IntrDummy, 
	IntrDummy, 
	IntrDummy, 
	IntrDummy
};
