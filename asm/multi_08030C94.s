	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080321DC
sub_080321DC: @ 0x080321DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	movs r7, #0
	ldr r2, _08032208 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803220C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08032214
	.align 2, 0
_08032208: .4byte gCurTask
_0803220C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08032214:
	mov ip, r0
	movs r6, #0
	ldr r1, _080322AC @ =gUnk_0203AD30
	mov r8, r1
	mov sl, r8
	ldrb r2, [r1]
	cmp r6, r2
	bhs _08032266
	ldr r0, _080322B0 @ =gUnk_020382D8
	mov sb, r0
_08032228:
	lsls r4, r6, #1
	mov r3, ip
	adds r3, #0x22
	adds r3, r3, r4
	ldrh r5, [r3]
	mov r1, sb
	adds r0, r4, r1
	ldrh r1, [r0]
	strh r1, [r3]
	mov r2, ip
	adds r2, #0x2a
	adds r2, r2, r4
	adds r0, r5, #0
	eors r0, r1
	ands r0, r1
	strh r0, [r2]
	mov r1, ip
	adds r1, #0x32
	adds r1, r1, r4
	ldrh r0, [r3]
	bics r5, r0
	strh r5, [r1]
	ldrh r0, [r2]
	orrs r7, r0
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r2, r8
	ldrb r2, [r2]
	cmp r6, r2
	blo _08032228
_08032266:
	movs r0, #0x40
	ands r0, r7
	cmp r0, #0
	beq _0803227A
	mov r1, ip
	ldrh r0, [r1, #0x18]
	cmp r0, #0
	beq _0803227A
	subs r0, #1
	strh r0, [r1, #0x18]
_0803227A:
	movs r0, #0x80
	ands r0, r7
	cmp r0, #0
	beq _08032294
	mov r2, sl
	ldrb r0, [r2]
	subs r0, #1
	mov r2, ip
	ldrh r1, [r2, #0x18]
	cmp r0, r1
	ble _08032294
	adds r0, r1, #1
	strh r0, [r2, #0x18]
_08032294:
	mov r1, ip
	ldrh r0, [r1, #0x16]
	cmp r0, #0x3c
	bls _080322B4
	movs r0, #1
	ands r7, r0
	cmp r7, #0
	beq _080322BA
	movs r2, #1
	str r2, [sp]
	b _080322BA
	.align 2, 0
_080322AC: .4byte gUnk_0203AD30
_080322B0: .4byte gUnk_020382D8
_080322B4:
	adds r0, #1
	mov r1, ip
	strh r0, [r1, #0x16]
_080322BA:
	mov r2, ip
	ldrh r0, [r2, #0x18]
	strb r0, [r2, #0x12]
	ldr r0, [sp]
	cmp r0, #0
	beq _080322CE
	ldr r2, _080322E0 @ =gCurTask
	ldr r1, [r2]
	ldr r0, _080322E4 @ =sub_08032C50
	str r0, [r1, #8]
_080322CE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080322E0: .4byte gCurTask
_080322E4: .4byte sub_08032C50

	thumb_func_start sub_080322E8
sub_080322E8: @ 0x080322E8
	push {r4, lr}
	ldr r0, _08032304 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032308
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08032310
	.align 2, 0
_08032304: .4byte gCurTask
_08032308:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08032310:
	ldrh r0, [r2, #0x16]
	adds r1, r0, #1
	strh r1, [r2, #0x16]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bls _0803233A
	ldr r4, _08032340 @ =gMultiSioSend
	bl sub_08031CC8
	movs r1, #0
	movs r0, #3
	strb r0, [r4]
	movs r0, #2
	strb r0, [r4, #1]
	strb r1, [r4, #2]
	strb r1, [r4, #3]
	ldr r0, _08032344 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032348 @ =sub_0803234C
	str r0, [r1, #8]
_0803233A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08032340: .4byte gMultiSioSend
_08032344: .4byte gCurTask
_08032348: .4byte sub_0803234C

	thumb_func_start sub_0803234C
sub_0803234C: @ 0x0803234C
	push {r4, r5, lr}
	ldr r0, _08032368 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803236C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08032374
	.align 2, 0
_08032368: .4byte gCurTask
_0803236C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08032374:
	adds r5, r0, #0
	ldr r4, _080323B8 @ =gUnk_0203AD48
	ldrh r0, [r4]
	movs r1, #0
	cmp r0, #2
	bhi _08032382
	adds r1, r0, #0
_08032382:
	movs r0, #1
	bl sub_0800A91C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080323A4
	movs r0, #1
	bl sub_0800AC00
	ldrh r0, [r4]
	movs r1, #0
	cmp r0, #2
	bhi _0803239E
	adds r1, r0, #0
_0803239E:
	movs r0, #1
	bl sub_0800ACD4
_080323A4:
	ldr r0, _080323BC @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldrh r1, [r5, #0x18]
	cmp r0, r1
	bne _080323C0
	movs r0, #0x20
	b _080323C2
	.align 2, 0
_080323B8: .4byte gUnk_0203AD48
_080323BC: .4byte 0x04000128
_080323C0:
	movs r0, #8
_080323C2:
	strh r0, [r5, #0x16]
	ldr r0, _080323D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080323D8 @ =sub_080323DC
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080323D4: .4byte gCurTask
_080323D8: .4byte sub_080323DC

	thumb_func_start sub_080323DC
sub_080323DC: @ 0x080323DC
	push {r4, lr}
	ldr r2, _080323FC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _08032400
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08032408
	.align 2, 0
_080323FC: .4byte gCurTask
_08032400:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08032408:
	ldrh r0, [r2, #0x16]
	subs r0, #1
	strh r0, [r2, #0x16]
	lsls r0, r0, #0x10
	ldr r1, _0803242C @ =0xFFFF0000
	cmp r0, r1
	bne _0803243E
	ldr r0, _08032430 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldrh r2, [r2, #0x18]
	cmp r0, r2
	bne _08032438
	ldr r1, [r4]
	ldr r0, _08032434 @ =sub_08032448
	b _0803243C
	.align 2, 0
_0803242C: .4byte 0xFFFF0000
_08032430: .4byte 0x04000128
_08032434: .4byte sub_08032448
_08032438:
	ldr r1, [r4]
	ldr r0, _08032444 @ =sub_0803264C
_0803243C:
	str r0, [r1, #8]
_0803243E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08032444: .4byte sub_0803264C

	thumb_func_start sub_08032448
sub_08032448: @ 0x08032448
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _08032468 @ =gMultiSioSend
	ldr r0, _0803246C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032470
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08032478
	.align 2, 0
_08032468: .4byte gMultiSioSend
_0803246C: .4byte gCurTask
_08032470:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08032478:
	movs r4, #0
	movs r0, #0
	strh r0, [r1, #0x1a]
	strh r0, [r1, #0x1c]
	strh r0, [r1, #0x1e]
	str r0, [r1, #0x50]
	mov r1, sp
	strh r0, [r1]
	ldr r2, _080324B0 @ =0x0100000A
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #3
	strb r0, [r5]
	movs r0, #2
	strb r0, [r5, #1]
	strb r4, [r5, #2]
	strb r4, [r5, #3]
	ldr r0, _080324B4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080324B8 @ =sub_080324BC
	str r0, [r1, #8]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080324B0: .4byte 0x0100000A
_080324B4: .4byte gCurTask
_080324B8: .4byte sub_080324BC

	thumb_func_start sub_080324BC
sub_080324BC: @ 0x080324BC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080324E4 @ =gMultiSioSend
	mov r8, r0
	ldr r2, _080324E8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080324EC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080324F4
	.align 2, 0
_080324E4: .4byte gMultiSioSend
_080324E8: .4byte gCurTask
_080324EC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080324F4:
	adds r4, r0, #0
	mov r1, r8
	ldrb r0, [r1, #2]
	cmp r0, #0
	bne _08032502
	movs r0, #1
	strb r0, [r1, #2]
_08032502:
	movs r3, #0
	ldr r0, _080325D0 @ =gUnk_0203AD30
	adds r5, r0, #0
	ldrb r6, [r5]
	cmp r3, r6
	bhs _08032556
	ldr r0, _080325D4 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r3, r0
	beq _08032528
	ldr r1, _080325D8 @ =gMultiSioRecv
	mov r6, r8
	ldrb r0, [r6, #2]
	adds r0, #1
	ldrb r1, [r1, #2]
	cmp r0, r1
	bne _08032556
_08032528:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrb r0, [r5]
	cmp r3, r0
	bhs _08032556
	ldr r0, _080325D4 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r3, r0
	beq _08032528
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, _080325D8 @ =gMultiSioRecv
	adds r0, r0, r1
	mov r6, r8
	ldrb r1, [r6, #2]
	adds r1, #1
	ldrb r0, [r0, #2]
	cmp r1, r0
	beq _08032528
_08032556:
	ldrb r5, [r5]
	cmp r3, r5
	bne _080325E0
	movs r5, #0
	ldrh r3, [r4, #0x1c]
	ldr r6, _080325DC @ =gUnk_082D91FC
	ldrh r2, [r4, #0x1a]
	lsls r0, r2, #3
	adds r1, r6, #4
	adds r0, r0, r1
	ldr r0, [r0]
	mov ip, r3
	adds r7, r2, #0
	cmp r3, r0
	bhs _080325A4
	mov sb, r6
	adds r6, r1, #0
_08032578:
	lsls r0, r2, #3
	add r0, sb
	ldr r0, [r0]
	adds r1, r3, r5
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r0, [r4, #0x50]
	adds r0, r0, r1
	str r0, [r4, #0x50]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xf
	bhi _080325A4
	mov r3, ip
	adds r0, r3, r5
	adds r2, r7, #0
	lsls r1, r2, #3
	adds r1, r1, r6
	ldr r1, [r1]
	cmp r0, r1
	blo _08032578
_080325A4:
	movs r5, #0
	strh r5, [r4, #0x1e]
	mov r1, r8
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldrh r0, [r4, #0x1c]
	adds r0, #0x10
	strh r0, [r4, #0x1c]
	ldrh r2, [r4, #0x1c]
	ldr r1, _080325DC @ =gUnk_082D91FC
	ldrh r3, [r4, #0x1a]
	lsls r0, r3, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r2, r0
	blo _08032604
	adds r0, r3, #1
	strh r0, [r4, #0x1a]
	strh r5, [r4, #0x1c]
	b _08032604
	.align 2, 0
_080325D0: .4byte gUnk_0203AD30
_080325D4: .4byte 0x04000128
_080325D8: .4byte gMultiSioRecv
_080325DC: .4byte gUnk_082D91FC
_080325E0:
	ldrh r0, [r4, #0x1e]
	adds r1, r0, #1
	strh r1, [r4, #0x1e]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bls _08032604
	ldr r0, [r2]
	bl TaskDestroy
	ldr r1, _08032600 @ =gUnk_02038580
	movs r0, #0
	str r0, [r1]
	bl sub_08032E98
	b _08032632
	.align 2, 0
_08032600: .4byte gUnk_02038580
_08032604:
	ldr r1, _08032640 @ =gUnk_082D91FC
	ldrh r0, [r4, #0x1a]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r4, #0x1c]
	ldr r0, [r0]
	adds r0, r0, r1
	mov r1, r8
	adds r1, #4
	movs r2, #8
	bl CpuSet
	bl sub_0800ABFC
	ldrh r1, [r4, #0x1a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	blo _08032632
	ldr r0, _08032644 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032648 @ =sub_08032CA8
	str r0, [r1, #8]
_08032632:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032640: .4byte gUnk_082D91FC
_08032644: .4byte gCurTask
_08032648: .4byte sub_08032CA8

	thumb_func_start sub_0803264C
sub_0803264C: @ 0x0803264C
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _0803266C @ =gMultiSioSend
	ldr r0, _08032670 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032674
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _0803267C
	.align 2, 0
_0803266C: .4byte gMultiSioSend
_08032670: .4byte gCurTask
_08032674:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_0803267C:
	movs r4, #0
	movs r0, #0
	strh r0, [r1, #0x1a]
	strh r0, [r1, #0x1c]
	strh r0, [r1, #0x1e]
	str r0, [r1, #0x50]
	mov r1, sp
	strh r0, [r1]
	ldr r2, _080326B4 @ =0x0100000A
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #3
	strb r0, [r5]
	movs r0, #2
	strb r0, [r5, #1]
	movs r0, #1
	strb r0, [r5, #2]
	strb r4, [r5, #3]
	ldr r0, _080326B8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080326BC @ =sub_080326C0
	str r0, [r1, #8]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080326B4: .4byte 0x0100000A
_080326B8: .4byte gCurTask
_080326BC: .4byte sub_080326C0

	thumb_func_start sub_080326C0
sub_080326C0: @ 0x080326C0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080326E4 @ =gMultiSioSend
	mov r8, r0
	ldr r2, _080326E8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080326EC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080326F4
	.align 2, 0
_080326E4: .4byte gMultiSioSend
_080326E8: .4byte gCurTask
_080326EC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080326F4:
	adds r4, r0, #0
	ldrh r0, [r4, #0x18]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08032728 @ =gMultiSioRecv
	adds r1, r1, r0
	mov ip, r1
	ldrb r5, [r1, #2]
	cmp r5, #0
	bne _08032730
	ldrh r0, [r4, #0x1e]
	adds r1, r0, #1
	strh r1, [r4, #0x1e]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x40
	bls _08032802
	ldr r0, [r2]
	bl TaskDestroy
	ldr r0, _0803272C @ =gUnk_02038580
	str r5, [r0]
	bl sub_08032E98
	b _08032802
	.align 2, 0
_08032728: .4byte gMultiSioRecv
_0803272C: .4byte gUnk_02038580
_08032730:
	mov r1, r8
	ldrb r1, [r1, #2]
	cmp r5, r1
	beq _0803275C
	ldrh r0, [r4, #0x1e]
	adds r1, r0, #1
	strh r1, [r4, #0x1e]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bls _08032802
	ldr r0, [r2]
	bl TaskDestroy
	ldr r1, _08032758 @ =gUnk_02038580
	movs r0, #0
	str r0, [r1]
	bl sub_08032E98
	b _08032802
	.align 2, 0
_08032758: .4byte gUnk_02038580
_0803275C:
	movs r0, #0
	strh r0, [r4, #0x1e]
	ldr r7, _0803280C @ =gUnk_082D91FC
	ldrh r0, [r4, #0x1a]
	lsls r1, r0, #3
	adds r6, r7, #4
	adds r0, r1, r6
	ldrh r3, [r4, #0x1c]
	ldr r0, [r0]
	subs r2, r0, r3
	cmp r2, #0x10
	bls _08032776
	movs r2, #0x10
_08032776:
	mov r0, ip
	adds r0, #4
	adds r1, r1, r7
	ldr r1, [r1]
	adds r1, r1, r3
	lsls r2, r2, #0xa
	lsrs r2, r2, #0xb
	bl CpuSet
	movs r5, #0
	ldrh r3, [r4, #0x1c]
	ldrh r2, [r4, #0x1a]
	lsls r0, r2, #3
	adds r0, r0, r6
	ldr r0, [r0]
	cmp r3, r0
	bhs _080327C4
_08032798:
	lsls r0, r2, #3
	adds r0, r0, r7
	ldr r0, [r0]
	adds r1, r3, r5
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r0, [r4, #0x50]
	adds r0, r0, r1
	str r0, [r4, #0x50]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xf
	bhi _080327C4
	ldrh r3, [r4, #0x1c]
	adds r0, r3, r5
	ldrh r2, [r4, #0x1a]
	lsls r1, r2, #3
	adds r1, r1, r6
	ldr r1, [r1]
	cmp r0, r1
	blo _08032798
_080327C4:
	mov r1, r8
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldrh r0, [r4, #0x1c]
	adds r0, #0x10
	strh r0, [r4, #0x1c]
	ldrh r2, [r4, #0x1c]
	ldr r1, _0803280C @ =gUnk_082D91FC
	ldrh r3, [r4, #0x1a]
	lsls r0, r3, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r2, r0
	blo _080327EC
	adds r0, r3, #1
	strh r0, [r4, #0x1a]
	movs r0, #0
	strh r0, [r4, #0x1c]
_080327EC:
	bl sub_0800ABFC
	ldrh r1, [r4, #0x1a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	blo _08032802
	ldr r0, _08032810 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032814 @ =sub_08032CA8
	str r0, [r1, #8]
_08032802:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803280C: .4byte gUnk_082D91FC
_08032810: .4byte gCurTask
_08032814: .4byte sub_08032CA8

	thumb_func_start sub_08032818
sub_08032818: @ 0x08032818
	push {lr}
	sub sp, #8
	ldr r0, _08032838 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803283C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r3, r0, r1
	b _08032844
	.align 2, 0
_08032838: .4byte gCurTask
_0803283C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
_08032844:
	movs r0, #0
	strh r0, [r3, #0x20]
	ldr r2, _08032874 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08032878 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0803287C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	str r0, [sp]
	mov r1, sp
	ldr r0, [r3, #0x50]
	strh r0, [r1, #4]
	movs r0, #1
	bl sub_08030C94
	ldr r0, _08032880 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032884 @ =sub_08032888
	str r0, [r1, #8]
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_08032874: .4byte gRngVal
_08032878: .4byte 0x00196225
_0803287C: .4byte 0x3C6EF35F
_08032880: .4byte gCurTask
_08032884: .4byte sub_08032888

	thumb_func_start sub_08032888
sub_08032888: @ 0x08032888
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _080328AC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080328B0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080328B8
	.align 2, 0
_080328AC: .4byte gCurTask
_080328B0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080328B8:
	ldrh r0, [r4, #0x1e]
	subs r0, #1
	movs r1, #0
	mov r8, r1
	strh r0, [r4, #0x1e]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080328D0 @ =0x0000FFFF
	cmp r0, r5
	bne _080328D4
	ldr r0, [r2]
	b _0803296C
	.align 2, 0
_080328D0: .4byte 0x0000FFFF
_080328D4:
	bl sub_08031C64
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bne _08032984
	ldr r6, _08032944 @ =gUnk_0203AD30
	ldr r0, _08032948 @ =gUnk_020382A0
	mov sb, r0
	mov r1, sb
	adds r1, #0x28
	ldrb r0, [r6]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08032968
	bl sub_08031C3C
	adds r7, r5, #0
	movs r5, #0
	movs r3, #0
	ldrb r1, [r6]
	cmp r8, r1
	bhs _0803292A
	adds r4, #0x40
	mov r8, r6
	mov r6, sb
	adds r6, #8
_0803290A:
	lsls r2, r3, #2
	adds r2, r4, r2
	lsls r1, r3, #3
	adds r1, r1, r6
	ldr r0, [r1]
	str r0, [r2]
	ldrh r0, [r1, #4]
	ands r7, r0
	orrs r5, r0
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r0, r8
	ldrb r0, [r0]
	cmp r3, r0
	blo _0803290A
_0803292A:
	cmp r7, r5
	beq _08032954
	ldr r0, _0803294C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r1, _08032950 @ =gUnk_02038580
	movs r0, #0
	str r0, [r1]
	bl sub_08032E98
	b _080329BC
	.align 2, 0
_08032944: .4byte gUnk_0203AD30
_08032948: .4byte gUnk_020382A0
_0803294C: .4byte gCurTask
_08032950: .4byte gUnk_02038580
_08032954:
	ldr r0, _08032960 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032964 @ =sub_08032CE8
	str r0, [r1, #8]
	b _080329BC
	.align 2, 0
_08032960: .4byte gCurTask
_08032964: .4byte sub_08032CE8
_08032968:
	ldr r0, _0803297C @ =gCurTask
	ldr r0, [r0]
_0803296C:
	bl TaskDestroy
	ldr r0, _08032980 @ =gUnk_02038580
	mov r1, r8
	str r1, [r0]
	bl sub_08032E98
	b _080329BC
	.align 2, 0
_0803297C: .4byte gCurTask
_08032980: .4byte gUnk_02038580
_08032984:
	cmp r0, #1
	bne _0803299C
	ldrh r0, [r4, #0x20]
	adds r1, r0, #1
	strh r1, [r4, #0x20]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bls _080329BC
	bl sub_08031C54
	b _080329BC
_0803299C:
	cmp r0, #0
	bge _080329B8
	bl sub_08031C3C
	ldr r0, _080329B0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080329B4 @ =sub_08032818
	str r0, [r1, #8]
	b _080329BC
	.align 2, 0
_080329B0: .4byte gCurTask
_080329B4: .4byte sub_08032818
_080329B8:
	mov r0, r8
	strh r0, [r4, #0x20]
_080329BC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080329C8
sub_080329C8: @ 0x080329C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	ldr r0, _080329E8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080329EC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080329F4
	.align 2, 0
_080329E8: .4byte gCurTask
_080329EC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080329F4:
	adds r5, r0, #0
	movs r0, #0
	strh r0, [r5, #0x16]
	movs r4, #0
	add r6, sp, #0xc
	add r7, sp, #0x1c
_08032A00:
	lsls r0, r4, #1
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	lsls r2, r4, #2
	adds r2, r6, r2
	lsls r3, r4, #3
	adds r3, r7, r3
	adds r0, r4, #0
	bl sub_08002C98
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _08032A00
	ldr r2, _08032A68 @ =gRngVal
	ldrh r1, [r5, #0x18]
	lsls r1, r1, #2
	adds r0, r5, #0
	adds r0, #0x40
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	movs r0, #1
	bl sub_08031C70
	bl sub_08031CD4
	ldr r1, _08032A6C @ =gUnk_0203AD24
	ldrh r0, [r5, #0x18]
	strb r0, [r1]
	ldr r1, _08032A70 @ =gUnk_0203AD10
	movs r0, #2
	str r0, [r1]
	ldr r0, _08032A74 @ =gUnk_0203AD30
	ldrb r0, [r0]
	str r6, [sp]
	movs r1, #0
	add r2, sp, #4
	adds r3, r7, #0
	bl sub_080332BC
	ldr r0, _08032A78 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032A7C @ =sub_08032A80
	str r0, [r1, #8]
	add sp, #0x3c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032A68: .4byte gRngVal
_08032A6C: .4byte gUnk_0203AD24
_08032A70: .4byte gUnk_0203AD10
_08032A74: .4byte gUnk_0203AD30
_08032A78: .4byte gCurTask
_08032A7C: .4byte sub_08032A80

	thumb_func_start sub_08032A80
sub_08032A80: @ 0x08032A80
	push {r4, lr}
	ldr r0, _08032A9C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032AA0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r3, r0, r1
	b _08032AA8
	.align 2, 0
_08032A9C: .4byte gCurTask
_08032AA0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
_08032AA8:
	ldrh r0, [r3, #0x14]
	adds r0, #1
	strh r0, [r3, #0x14]
	ldr r4, _08032AEC @ =gUnk_03002440
	ldr r2, [r4]
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	str r2, [r4]
	ldrh r0, [r3, #0x16]
	adds r1, r0, #1
	strh r1, [r3, #0x16]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bls _08032B00
	movs r0, #0
	strh r0, [r3, #0x16]
	ldr r0, _08032AF0 @ =0xFFFFFBFF
	ands r2, r0
	str r2, [r4]
	movs r0, #1
	bl sub_08030D4C
	cmp r0, #0
	bne _08032AF8
	ldr r0, _08032AF4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl sub_08032E98
	b _08032B00
	.align 2, 0
_08032AEC: .4byte gUnk_03002440
_08032AF0: .4byte 0xFFFFFBFF
_08032AF4: .4byte gCurTask
_08032AF8:
	ldr r0, _08032B08 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08032B00:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08032B08: .4byte gCurTask

	thumb_func_start sub_08032B0C
sub_08032B0C: @ 0x08032B0C
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _08032B38 @ =sub_08031D24
	ldr r2, _08032B3C @ =0x0000FFFE
	movs r1, #0
	str r1, [sp]
	movs r1, #0x5c
	movs r3, #4
	bl TaskCreate
	adds r5, r0, #0
	ldrh r1, [r5, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032B40
	ldrh r0, [r5, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08032B48
	.align 2, 0
_08032B38: .4byte sub_08031D24
_08032B3C: .4byte 0x0000FFFE
_08032B40:
	ldrh r1, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08032B48:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r2, _08032B78 @ =0x0100002E
	adds r0, r1, #0
	adds r1, r4, #0
	bl CpuSet
	mov r0, sp
	adds r0, #6
	ldr r2, _08032B7C @ =0x0000FFFF
	adds r1, r2, #0
	strh r1, [r0]
	adds r1, r4, #4
	ldr r2, _08032B80 @ =0x01000004
	bl CpuSet
	str r5, [r4]
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08032B78: .4byte 0x0100002E
_08032B7C: .4byte 0x0000FFFF
_08032B80: .4byte 0x01000004

	thumb_func_start sub_08032B84
sub_08032B84: @ 0x08032B84
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0xe]
	subs r0, #7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08032B98
	movs r0, #0
	b _08032BA0
_08032B98:
	ldr r0, [r1]
	bl TaskDestroy
	movs r0, #1
_08032BA0:
	pop {r1}
	bx r1

	thumb_func_start sub_08032BA4
sub_08032BA4: @ 0x08032BA4
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0xe]
	cmp r0, #1
	bne _08032BB6
	ldrh r1, [r2, #0xc]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #0xc]
_08032BB6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08032BBC
sub_08032BBC: @ 0x08032BBC
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0xe]
	cmp r0, #1
	bhi _08032BCE
	ldrh r1, [r2, #0xc]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2, #0xc]
_08032BCE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08032BD4
sub_08032BD4: @ 0x08032BD4
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0xe]
	cmp r0, #5
	bne _08032BE6
	ldrh r1, [r2, #0xc]
	movs r0, #4
	orrs r0, r1
	strh r0, [r2, #0xc]
_08032BE6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08032BEC
sub_08032BEC: @ 0x08032BEC
	push {r4, lr}
	ldr r0, _08032C08 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032C0C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08032C14
	.align 2, 0
_08032C08: .4byte gCurTask
_08032C0C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08032C14:
	bl sub_08158934
	movs r0, #8
	strh r0, [r4, #0x16]
	movs r0, #0x3c
	strh r0, [r4, #0x1e]
	movs r0, #2
	strh r0, [r4, #0xe]
	ldr r0, _08032C34 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032C38 @ =sub_08032D3C
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08032C34: .4byte gCurTask
_08032C38: .4byte sub_08032D3C

	thumb_func_start sub_08032C3C
sub_08032C3C: @ 0x08032C3C
	ldr r0, _08032C48 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032C4C @ =sub_08032D90
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_08032C48: .4byte gCurTask
_08032C4C: .4byte sub_08032D90

	thumb_func_start sub_08032C50
sub_08032C50: @ 0x08032C50
	push {r4, lr}
	ldr r2, _08032C70 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _08032C74
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r3, r0, r1
	b _08032C7C
	.align 2, 0
_08032C70: .4byte gCurTask
_08032C74:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
_08032C7C:
	movs r0, #0
	strh r0, [r3, #0x16]
	ldr r2, _08032C9C @ =gUnk_020382D0
	ldrh r1, [r2, #4]
	ldr r0, _08032CA0 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #4]
	movs r0, #4
	strh r0, [r3, #0xe]
	ldr r1, [r4]
	ldr r0, _08032CA4 @ =sub_080322E8
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08032C9C: .4byte gUnk_020382D0
_08032CA0: .4byte 0x0000FFFD
_08032CA4: .4byte sub_080322E8

	thumb_func_start sub_08032CA8
sub_08032CA8: @ 0x08032CA8
	push {lr}
	ldr r2, _08032CC4 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032CC8
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08032CD0
	.align 2, 0
_08032CC4: .4byte gCurTask
_08032CC8:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08032CD0:
	movs r0, #8
	strh r0, [r1, #0x16]
	movs r0, #0x3c
	strh r0, [r1, #0x1e]
	ldr r1, [r2]
	ldr r0, _08032CE4 @ =sub_08032E08
	str r0, [r1, #8]
	pop {r0}
	bx r0
	.align 2, 0
_08032CE4: .4byte sub_08032E08

	thumb_func_start sub_08032CE8
sub_08032CE8: @ 0x08032CE8
	push {r4, lr}
	ldr r2, _08032D08 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _08032D0C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08032D14
	.align 2, 0
_08032D08: .4byte gCurTask
_08032D0C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08032D14:
	movs r0, #5
	strh r0, [r2, #0xe]
	ldrh r1, [r2, #0xc]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08032D2C
	movs r0, #6
	strh r0, [r2, #0xe]
	ldr r1, [r4]
	ldr r0, _08032D34 @ =sub_080329C8
	str r0, [r1, #8]
_08032D2C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08032D34: .4byte sub_080329C8

	thumb_func_start nullsub_118
nullsub_118: @ 0x08032D38
	bx lr
	.align 2, 0

	thumb_func_start sub_08032D3C
sub_08032D3C: @ 0x08032D3C
	push {lr}
	ldr r0, _08032D58 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032D5C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08032D64
	.align 2, 0
_08032D58: .4byte gCurTask
_08032D5C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08032D64:
	ldrh r0, [r1, #0x16]
	subs r0, #1
	strh r0, [r1, #0x16]
	lsls r0, r0, #0x10
	ldr r1, _08032D84 @ =0xFFFF0000
	cmp r0, r1
	bne _08032D7E
	bl sub_0815898C
	ldr r0, _08032D88 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032D8C @ =sub_08031FAC
	str r0, [r1, #8]
_08032D7E:
	pop {r0}
	bx r0
	.align 2, 0
_08032D84: .4byte 0xFFFF0000
_08032D88: .4byte gCurTask
_08032D8C: .4byte sub_08031FAC

	thumb_func_start sub_08032D90
sub_08032D90: @ 0x08032D90
	ldr r0, _08032D9C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032DA0 @ =sub_08032164
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_08032D9C: .4byte gCurTask
_08032DA0: .4byte sub_08032164

	thumb_func_start sub_08032DA4
sub_08032DA4: @ 0x08032DA4
	push {lr}
	ldr r0, _08032DC0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032DC4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08032DCC
	.align 2, 0
_08032DC0: .4byte gCurTask
_08032DC4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08032DCC:
	ldrh r0, [r2, #0x14]
	adds r0, #1
	strh r0, [r2, #0x14]
	ldrh r0, [r2, #0x16]
	adds r1, r0, #1
	strh r1, [r2, #0x16]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bls _08032DFA
	movs r0, #0
	strh r0, [r2, #0x16]
	bl sub_08030D4C
	cmp r0, #0
	bne _08032DF2
	bl sub_08032E98
	b _08032DFA
_08032DF2:
	ldr r0, _08032E00 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032E04 @ =sub_08032E50
	str r0, [r1, #8]
_08032DFA:
	pop {r0}
	bx r0
	.align 2, 0
_08032E00: .4byte gCurTask
_08032E04: .4byte sub_08032E50

	thumb_func_start sub_08032E08
sub_08032E08: @ 0x08032E08
	push {lr}
	ldr r2, _08032E24 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032E28
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08032E30
	.align 2, 0
_08032E24: .4byte gCurTask
_08032E28:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08032E30:
	ldrh r0, [r1, #0x16]
	subs r0, #1
	strh r0, [r1, #0x16]
	lsls r0, r0, #0x10
	ldr r1, _08032E48 @ =0xFFFF0000
	cmp r0, r1
	bne _08032E44
	ldr r1, [r2]
	ldr r0, _08032E4C @ =sub_08032818
	str r0, [r1, #8]
_08032E44:
	pop {r0}
	bx r0
	.align 2, 0
_08032E48: .4byte 0xFFFF0000
_08032E4C: .4byte sub_08032818

	thumb_func_start sub_08032E50
sub_08032E50: @ 0x08032E50
	push {r4, lr}
	ldr r2, _08032E70 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _08032E74
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08032E7C
	.align 2, 0
_08032E70: .4byte gCurTask
_08032E74:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08032E7C:
	movs r1, #0
	strb r1, [r2, #0x12]
	movs r0, #3
	strh r0, [r2, #0xe]
	strh r1, [r2, #0x16]
	ldr r1, [r4]
	ldr r0, _08032E94 @ =sub_080321DC
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08032E94: .4byte sub_080321DC

	thumb_func_start sub_08032E98
sub_08032E98: @ 0x08032E98
	push {r4, r5, lr}
	sub sp, #8
	ldr r1, _08032EFC @ =0x0000FFFF
	movs r0, #0
	bl sub_08152FB0
	ldr r1, _08032F00 @ =gUnk_03003A04
	ldr r0, _08032F04 @ =gUnk_03003790
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08032F08 @ =gUnk_030068B0
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08032F0C @ =gUnk_03006078
	ldr r0, _08032F10 @ =gUnk_030039A4
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_08157168
	ldr r1, _08032F14 @ =gUnk_03002488
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08032F18 @ =gUnk_03002540
	ldr r0, _08032F1C @ =0x06010000
	str r0, [r1]
	bl EwramInitHeap
	ldr r0, _08032F20 @ =sub_080331E0
	movs r1, #0
	str r1, [sp]
	movs r1, #0x48
	movs r2, #1
	movs r3, #0xc
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032F24
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08032F2C
	.align 2, 0
_08032EFC: .4byte 0x0000FFFF
_08032F00: .4byte gUnk_03003A04
_08032F04: .4byte gUnk_03003790
_08032F08: .4byte gUnk_030068B0
_08032F0C: .4byte gUnk_03006078
_08032F10: .4byte gUnk_030039A4
_08032F14: .4byte gUnk_03002488
_08032F18: .4byte gUnk_03002540
_08032F1C: .4byte 0x06010000
_08032F20: .4byte sub_080331E0
_08032F24:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08032F2C:
	ldr r0, _08032FD8 @ =sub_08033008
	str r0, [r2, #0x40]
	adds r0, r2, #0
	adds r0, #0x44
	movs r4, #0
	strh r4, [r0]
	ldr r0, _08032FDC @ =gUnk_02038580
	ldr r1, [r0]
	adds r0, r2, #0
	adds r0, #0x46
	strh r1, [r0]
	bl sub_08031CC8
	bl sub_081589E8
	str r4, [sp, #4]
	ldr r1, _08032FE0 @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	ldr r0, _08032FE4 @ =gMultiSioSend
	str r0, [r1, #4]
	ldr r0, _08032FE8 @ =0x85000005
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08032F6E
_08032F66:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08032F66
_08032F6E:
	movs r0, #0
	str r0, [sp, #4]
	ldr r1, _08032FE0 @ =0x040000D4
	add r2, sp, #4
	str r2, [r1]
	ldr r0, _08032FEC @ =gMultiSioRecv
	str r0, [r1, #4]
	ldr r0, _08032FF0 @ =0x85000014
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	ldr r3, _08032FF4 @ =gMultiSioStatusFlags
	ldr r5, _08032FF8 @ =gUnk_03002558
	cmp r0, #0
	bge _08032F98
_08032F90:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08032F90
_08032F98:
	movs r4, #0
	str r4, [r3]
	strb r4, [r5]
	movs r0, #0
	bl MultiSioInit
	bl sub_08031BFC
	bl m4aMPlayAllStop
	ldr r0, _08032FFC @ =0x04000208
	strh r4, [r0]
	movs r2, #0
	ldr r4, _08033000 @ =gIntrTable
	ldr r3, _08033004 @ =gIntrTableTemplate
_08032FB6:
	lsls r0, r2, #2
	adds r1, r0, r4
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xe
	bls _08032FB6
	ldr r1, _08032FFC @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08032FD8: .4byte sub_08033008
_08032FDC: .4byte gUnk_02038580
_08032FE0: .4byte 0x040000D4
_08032FE4: .4byte gMultiSioSend
_08032FE8: .4byte 0x85000005
_08032FEC: .4byte gMultiSioRecv
_08032FF0: .4byte 0x85000014
_08032FF4: .4byte gMultiSioStatusFlags
_08032FF8: .4byte gUnk_03002558
_08032FFC: .4byte 0x04000208
_08033000: .4byte gIntrTable
_08033004: .4byte gIntrTableTemplate
