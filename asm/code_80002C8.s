.include "asm/macro.inc"
.syntax unified

	thumb_func_start sub_80002C8
sub_80002C8: @ 0x080002C8
	push {r4, lr}
	ldr r0, _080002E8 @ =0x04000130
	ldrh r0, [r0]
	ldr r2, _080002EC @ =0x000003FF
	adds r1, r2, #0
	eors r1, r0
	ldr r4, _080002F0 @ =0x03000004
	ldr r3, _080002F4 @ =0x03000000
	ldrh r2, [r3]
	adds r0, r1, #0
	bics r0, r2
	strh r0, [r4]
	strh r1, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080002E8: .4byte 0x04000130
_080002EC: .4byte 0x000003FF
_080002F0: .4byte 0x03000004
_080002F4: .4byte 0x03000000
