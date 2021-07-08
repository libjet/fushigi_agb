.include "asm/macro.inc"
.syntax unified

	thumb_func_start AgbMain
AgbMain: @ 0x080001D0
	push {r4, r5, lr}
	sub sp, #4
	ldr r1, _0800026C @ =0x04000204
	ldr r2, _08000270 @ =0x00004014
	adds r0, r2, #0
	strh r0, [r1]
	movs r2, #0
	str r2, [sp]
	ldr r0, _08000274 @ =0x040000D4
	mov r3, sp
	str r3, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x12
	str r1, [r0, #4]
	ldr r1, _08000278 @ =0x85010000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	str r3, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	str r1, [r0, #4]
	ldr r1, _0800027C @ =0x85001F80
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _08000280 @ =IntrMain
	str r1, [r0]
	ldr r2, _08000284 @ =0x03000010
	str r2, [r0, #4]
	ldr r1, _08000288 @ =0x84000080
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800028C @ =0x03007FFC
	str r2, [r1]
	movs r1, #0xa0
	str r1, [sp]
	str r3, [r0]
	ldr r1, _08000290 @ =0x03000210
	str r1, [r0, #4]
	ldr r1, _08000294 @ =0x85000100
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _08000298 @ =0x0400000C
	movs r2, #1
	strh r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r3, _0800029C @ =0x00000403
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _080002A0 @ =0x04000200
	ldr r3, _080002A4 @ =0x00002001
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _080002A8 @ =0x04000004
	movs r0, #8
	strh r0, [r1]
	ldr r0, _080002AC @ =0x04000208
	strh r2, [r0]
	ldr r5, _080002B0 @ =0x00007FFF
	ldr r4, _080002B4 @ =0x08080000
	movs r3, #0xc0
	lsls r3, r3, #0x13
	movs r2, #0x96
	lsls r2, r2, #8
_08000252:
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	strh r0, [r3]
	adds r4, #2
	adds r3, #2
	subs r2, #1
	cmp r2, #0
	bne _08000252
_08000264:
	bl sub_80003B4
	b _08000264
	.align 2, 0
_0800026C: .4byte 0x04000204
_08000270: .4byte 0x00004014
_08000274: .4byte 0x040000D4
_08000278: .4byte 0x85010000
_0800027C: .4byte 0x85001F80
_08000280: .4byte IntrMain
_08000284: .4byte 0x03000010
_08000288: .4byte 0x84000080
_0800028C: .4byte 0x03007FFC
_08000290: .4byte 0x03000210
_08000294: .4byte 0x85000100
_08000298: .4byte 0x0400000C
_0800029C: .4byte 0x00000403
_080002A0: .4byte 0x04000200
_080002A4: .4byte 0x00002001
_080002A8: .4byte 0x04000004
_080002AC: .4byte 0x04000208
_080002B0: .4byte 0x00007FFF
_080002B4: .4byte 0x08080000

	thumb_func_start sub_80002B8
sub_80002B8: @ 0x080002B8
	ldr r1, _080002C0 @ =0x03007FF8
	movs r0, #1
	strh r0, [r1]
	bx lr
	.align 2, 0
_080002C0: .4byte 0x03007FF8

	thumb_func_start IntrDummy
IntrDummy: @ 0x080002C4
	bx lr
	.align 2, 0
