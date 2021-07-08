.include "asm/macro.inc"
.syntax unified

	thumb_func_start sub_80002F8
sub_80002F8: @ 0x080002F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r4, #0x5d
	ldr r6, _080003A4 @ =0x03000210
	ldr r0, _080003A8 @ =0x03000000
	mov r8, r0
	adds r5, r6, #0
	ldr r3, _080003AC @ =0x000001FF
	adds r7, r3, #0
	ldr r0, _080003B0 @ =0xFFFFFE00
	mov ip, r0
_08000310:
	lsls r3, r4, #3
	adds r3, r3, r5
	subs r4, #1
	lsls r1, r4, #3
	adds r1, r1, r5
	ldrb r0, [r1]
	strb r0, [r3]
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x17
	ands r1, r7
	ldrh r2, [r3, #2]
	mov r0, ip
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #0
	bne _08000310
	mov r3, r8
	ldrh r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800034A
	ldrb r0, [r6]
	subs r0, #4
	strb r0, [r6]
_0800034A:
	mov r4, r8
	ldrh r3, [r4]
	movs r0, #0x80
	ands r0, r3
	adds r1, r3, #0
	cmp r0, #0
	beq _0800035E
	ldrb r0, [r6]
	adds r0, #4
	strb r0, [r6]
_0800035E:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800037C
	ldrh r2, [r6, #2]
	lsls r1, r2, #0x17
	lsrs r1, r1, #0x17
	subs r1, #4
	ldr r4, _080003AC @ =0x000001FF
	adds r0, r4, #0
	ands r1, r0
	ldr r0, _080003B0 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r6, #2]
_0800037C:
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _0800039A
	ldrh r2, [r6, #2]
	lsls r1, r2, #0x17
	lsrs r1, r1, #0x17
	adds r1, #4
	ldr r3, _080003AC @ =0x000001FF
	adds r0, r3, #0
	ands r1, r0
	ldr r0, _080003B0 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r6, #2]
_0800039A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080003A4: .4byte 0x03000210
_080003A8: .4byte 0x03000000
_080003AC: .4byte 0x000001FF
_080003B0: .4byte 0xFFFFFE00

	thumb_func_start sub_80003B4
sub_80003B4: @ 0x080003B4
	movs r2, #0
	svc #5
	bx lr
	.align 2, 0
_080003BC: .4byte 0x080002B9
_080003C0: .4byte 0x080002C5
_080003C4: .4byte 0x080002C5
_080003C8: .4byte 0x080002C5
_080003CC: .4byte 0x080002C5
_080003D0: .4byte 0x080002C5
_080003D4: .4byte 0x080002C5
_080003D8: .4byte 0x080002C5
_080003DC: .4byte 0x080002C5
_080003E0: .4byte 0x080002C5
_080003E4: .4byte 0x080002C5
_080003E8: .4byte 0x080002C5
_080003EC: .4byte 0x080002C5
