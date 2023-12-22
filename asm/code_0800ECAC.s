	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	thumb_func_start sub_080168BC
sub_080168BC: @ 0x080168BC
	push {r4, r5, lr}
	mov ip, r0
	adds r0, #0xe8
	ldrh r0, [r0]
	cmp r0, #0x20
	beq _080168DC
	cmp r0, #0x20
	bgt _080168D2
	cmp r0, #0x10
	beq _080168DC
	b _080168FE
_080168D2:
	cmp r0, #0x40
	beq _080168E6
	cmp r0, #0x80
	beq _080168E6
	b _080168FE
_080168DC:
	movs r1, #0
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r0, #0x52
	b _080168EE
_080168E6:
	movs r1, #0
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r0, #0x50
_080168EE:
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bgt _080168F8
	movs r1, #1
_080168F8:
	mov r0, ip
	adds r0, #0xea
	strh r1, [r0]
_080168FE:
	ldr r5, _0801693C @ =gRngVal
	ldr r0, [r5]
	ldr r4, _08016940 @ =0x00196225
	adds r2, r0, #0
	muls r2, r4, r2
	ldr r3, _08016944 @ =0x3C6EF35F
	adds r2, r2, r3
	lsrs r0, r2, #0x10
	movs r1, #1
	ands r0, r1
	adds r0, #2
	mov r1, ip
	adds r1, #0xec
	strh r0, [r1]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, #4
	mov r1, ip
	adds r1, #0xee
	strh r0, [r1]
	ldr r0, _08016948 @ =sub_0801694C
	mov r1, ip
	str r0, [r1, #0xc]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801693C: .4byte gRngVal
_08016940: .4byte 0x00196225
_08016944: .4byte 0x3C6EF35F
_08016948: .4byte sub_0801694C

	thumb_func_start sub_0801694C
sub_0801694C: @ 0x0801694C
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	ldr r2, [r0, #0x40]
	ldr r0, [r2, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801696A
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08016974
_0801696A:
	ldr r0, _08016970 @ =sub_0801519C
	b _08016BBC
	.align 2, 0
_08016970: .4byte sub_0801519C
_08016974:
	ldr r5, _08016988 @ =0x00000103
	adds r0, r2, r5
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _080169B4
	cmp r0, #0xa
	bgt _0801698C
	cmp r0, #8
	beq _08016990
	b _080169F0
	.align 2, 0
_08016988: .4byte 0x00000103
_0801698C:
	cmp r0, #0x16
	bne _080169F0
_08016990:
	mov r1, ip
	ldr r0, [r1, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	bne _080169F0
	mov r0, ip
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x14
	bne _080169A8
	b _08016C1C
_080169A8:
	ldr r0, _080169B0 @ =sub_08019094
	str r0, [r1, #0xc]
	b _08016C1C
	.align 2, 0
_080169B0: .4byte sub_08019094
_080169B4:
	adds r0, r2, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #0x75
	bgt _080169C6
	cmp r0, #0x70
	blt _080169C6
	movs r1, #1
_080169C6:
	cmp r1, #0
	beq _080169F0
	mov r0, ip
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x16
	bne _080169D6
	b _08016C1C
_080169D6:
	mov r1, ip
	adds r1, #0xde
	ldr r0, _080169E8 @ =0x0000FFFF
	strh r0, [r1]
	adds r1, #2
	movs r0, #0
	strh r0, [r1]
	ldr r0, _080169EC @ =sub_08017B0C
	b _08016C04
	.align 2, 0
_080169E8: .4byte 0x0000FFFF
_080169EC: .4byte sub_08017B0C
_080169F0:
	ldr r2, _08016A68 @ =gUnk_02021580
	ldr r1, _08016A6C @ =gUnk_0203AD30
	ldrb r0, [r2]
	movs r4, #0
	ldrb r1, [r1]
	cmp r0, r1
	bhs _08016A54
	adds r1, r0, #0
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r1, r0, r1
	ldr r0, _08016A70 @ =gKirbys
	adds r3, r1, r0
	ldr r2, _08016A74 @ =gCurLevelInfo
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	movs r5, #0xbf
	lsls r5, r5, #3
	adds r0, r0, r5
	mov r2, ip
	ldr r1, [r2, #0x14]
	adds r2, r1, r5
	ldrh r0, [r0]
	ldrh r5, [r2]
	cmp r0, r5
	beq _08016A54
	ldr r0, [r3, #0xc]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	bne _08016A54
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08016A78 @ =gRoomProps
	adds r0, r0, r1
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r4, r0, #0x1f
_08016A54:
	cmp r4, #0
	beq _08016A80
	mov r0, ip
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #2
	bne _08016A64
	b _08016C1C
_08016A64:
	ldr r0, _08016A7C @ =sub_0801870C
	b _08016BBC
	.align 2, 0
_08016A68: .4byte gUnk_02021580
_08016A6C: .4byte gUnk_0203AD30
_08016A70: .4byte gKirbys
_08016A74: .4byte gCurLevelInfo
_08016A78: .4byte gRoomProps
_08016A7C: .4byte sub_0801870C
_08016A80:
	mov r0, ip
	adds r0, #0xe8
	ldrh r1, [r0]
	adds r7, r0, #0
	cmp r1, #0x20
	beq _08016AA0
	cmp r1, #0x20
	bgt _08016A96
	cmp r1, #0x10
	beq _08016AA0
	b _08016C1C
_08016A96:
	cmp r1, #0x40
	beq _08016B50
	cmp r1, #0x80
	beq _08016B50
	b _08016C1C
_08016AA0:
	ldrh r5, [r7]
	mov r0, ip
	adds r0, #0x9e
	ldrh r3, [r0]
	mov r1, ip
	adds r1, #0xea
	ldrh r2, [r1]
	adds r4, r0, #0
	adds r6, r1, #0
	cmp r2, #0
	beq _08016ABA
	movs r0, #0x80
	b _08016ABC
_08016ABA:
	movs r0, #0x40
_08016ABC:
	orrs r3, r0
	adds r0, r3, #0
	orrs r0, r5
	strh r0, [r4]
	mov r3, ip
	adds r3, #0xee
	ldrh r0, [r3]
	subs r0, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08016AD6
	b _08016C1C
_08016AD6:
	ldr r2, _08016B20 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08016B24 @ =0x00196225
	muls r0, r1, r0
	ldr r5, _08016B28 @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, #4
	strh r0, [r3]
	ldrh r1, [r7]
	cmp r1, #0x20
	bne _08016AFE
	mov r0, ip
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	beq _08016BBA
_08016AFE:
	cmp r1, #0x10
	bne _08016B0C
	mov r0, ip
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	beq _08016BBA
_08016B0C:
	ldrh r0, [r6]
	cmp r0, #0
	beq _08016B2C
	mov r0, ip
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	bne _08016B36
	b _08016C1C
	.align 2, 0
_08016B20: .4byte gRngVal
_08016B24: .4byte 0x00196225
_08016B28: .4byte 0x3C6EF35F
_08016B2C:
	mov r0, ip
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0
	beq _08016C1C
_08016B36:
	mov r0, ip
	adds r0, #0xec
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08016B4C @ =0xFFFF0000
	cmp r1, r0
	beq _08016C02
	b _08016C14
	.align 2, 0
_08016B4C: .4byte 0xFFFF0000
_08016B50:
	ldrh r5, [r7]
	mov r0, ip
	adds r0, #0x9e
	ldrh r3, [r0]
	mov r1, ip
	adds r1, #0xea
	ldrh r2, [r1]
	adds r4, r0, #0
	adds r6, r1, #0
	cmp r2, #0
	beq _08016B6A
	movs r0, #0x20
	b _08016B6C
_08016B6A:
	movs r0, #0x10
_08016B6C:
	orrs r3, r0
	adds r0, r3, #0
	orrs r0, r5
	strh r0, [r4]
	mov r3, ip
	adds r3, #0xee
	ldrh r0, [r3]
	subs r0, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08016C1C
	ldr r2, _08016BC4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08016BC8 @ =0x00196225
	muls r0, r1, r0
	ldr r5, _08016BCC @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, #4
	strh r0, [r3]
	ldrh r1, [r7]
	cmp r1, #0x40
	bne _08016BAC
	mov r0, ip
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0
	beq _08016BBA
_08016BAC:
	cmp r1, #0x80
	bne _08016BD4
	mov r0, ip
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	bne _08016BD4
_08016BBA:
	ldr r0, _08016BD0 @ =sub_08018A9C
_08016BBC:
	mov r1, ip
	str r0, [r1, #0xc]
	b _08016C1C
	.align 2, 0
_08016BC4: .4byte gRngVal
_08016BC8: .4byte 0x00196225
_08016BCC: .4byte 0x3C6EF35F
_08016BD0: .4byte sub_08018A9C
_08016BD4:
	ldrh r0, [r6]
	cmp r0, #0
	beq _08016BE6
	mov r0, ip
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	bne _08016BF0
	b _08016C1C
_08016BE6:
	mov r0, ip
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	beq _08016C1C
_08016BF0:
	mov r0, ip
	adds r0, #0xec
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08016C0C @ =0xFFFF0000
	cmp r1, r0
	bne _08016C14
_08016C02:
	ldr r0, _08016C10 @ =sub_0801519C
_08016C04:
	mov r2, ip
	str r0, [r2, #0xc]
	b _08016C1C
	.align 2, 0
_08016C0C: .4byte 0xFFFF0000
_08016C10: .4byte sub_0801519C
_08016C14:
	ldrh r0, [r6]
	movs r1, #1
	eors r0, r1
	strh r0, [r6]
_08016C1C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08016C24
sub_08016C24: @ 0x08016C24
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x9e
	strh r0, [r1]
	adds r1, #0x4a
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08016C48
	b _08016ED8
_08016C48:
	ldr r0, [r4, #0x10]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08016C54
	b _08016D78
_08016C54:
	ldr r0, [r4, #0x14]
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r3, [r0]
	movs r1, #0
	ldr r0, _08016C90 @ =gUnk_0203AD30
	ldrb r0, [r0]
	cmp r1, r0
	blo _08016C6A
	b _08016D78
_08016C6A:
	ldr r6, _08016C94 @ =gCurLevelInfo
	movs r5, #0xcd
	lsls r5, r5, #3
	adds r2, r0, #0
_08016C72:
	adds r0, r1, #0
	muls r0, r5, r0
	adds r0, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	cmp r3, r0
	beq _08016C98
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	blo _08016C72
	b _08016D78
	.align 2, 0
_08016C90: .4byte gUnk_0203AD30
_08016C94: .4byte gCurLevelInfo
_08016C98:
	ldrh r0, [r4, #0x3c]
	cmp r0, #0x10
	bls _08016D78
	ldr r2, [r4, #0x40]
	ldr r0, [r2, #0x40]
	asrs r0, r0, #0xc
	add r1, sp, #4
	strh r0, [r1]
	ldr r0, [r2, #0x44]
	asrs r0, r0, #0xc
	mov r2, sp
	adds r2, #6
	strh r0, [r2]
	mov r0, sp
	movs r2, #4
	bl memcpy
	mov r1, sp
	ldr r3, [r4, #0x14]
	adds r0, r3, #0
	adds r0, #0xbc
	ldrh r0, [r0]
	ldrh r1, [r1]
	lsrs r0, r0, #4
	cmp r1, r0
	bhs _08016D78
	mov r0, sp
	adds r1, r3, #0
	adds r1, #0xbe
	ldrh r1, [r1]
	ldrh r0, [r0, #2]
	lsrs r1, r1, #4
	cmp r0, r1
	bhs _08016D78
	mov r0, sp
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	adds r0, r3, #0
	bl sub_08002434
	ldr r1, _08016D68 @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08016D78
	ldr r0, [r4, #0x40]
	adds r0, #0x56
	ldrb r0, [r0]
	mov r1, sp
	ldrb r1, [r1]
	mov r2, sp
	ldrh r2, [r2, #2]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_080025AC
	adds r3, r0, #0
	ldr r5, _08016D6C @ =gUnk_08D6CD0C
	ldrh r1, [r3, #8]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r0, [r0]
	mov r8, r0
	adds r0, #0x47
	ldrb r0, [r0]
	movs r6, #0x83
	ands r6, r0
	cmp r6, #0
	bne _08016D78
	ldrb r2, [r3, #0xa]
	ldrb r3, [r3, #0xb]
	ldr r0, [r4, #0x14]
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r5, [r0]
	ldr r0, [r4, #0x40]
	bl sub_080551FC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08016D78
	adds r0, r5, #0
	adds r0, #0x46
	mov r1, r8
	adds r1, #0x46
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08016D70
	adds r1, r4, #0
	adds r1, #0xb0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _08016ED8
	.align 2, 0
_08016D68: .4byte gUnk_082D88B8
_08016D6C: .4byte gUnk_08D6CD0C
_08016D70:
	adds r0, r4, #0
	adds r0, #0xb0
	strh r6, [r0]
	b _08016ED8
_08016D78:
	adds r0, r4, #0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #1
	beq _08016DC0
	adds r1, r4, #0
	adds r1, #0x8a
	ldr r2, _08016DB8 @ =0xFFFFFF00
	adds r0, r2, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x12
	cmp r0, r1
	bls _08016DC0
	ldrb r0, [r4, #0x1a]
	ldrb r7, [r4, #0x1b]
	cmp r0, r7
	bne _08016DC0
	adds r0, r4, #0
	adds r0, #0x84
	ldrh r0, [r0]
	cmp r0, #0x3f
	bhi _08016DC0
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	cmp r0, #0x1f
	bhi _08016DC0
	ldr r0, _08016DBC @ =sub_0801519C
	b _08016ED6
	.align 2, 0
_08016DB8: .4byte 0xFFFFFF00
_08016DBC: .4byte sub_0801519C
_08016DC0:
	ldr r0, [r4, #0x40]
	ldr r1, [r0, #0x58]
	movs r2, #2
	ands r1, r2
	adds r6, r0, #0
	cmp r1, #0
	bne _08016DD8
	ldr r0, _08016DD4 @ =sub_0801639C
	b _08016ED6
	.align 2, 0
_08016DD4: .4byte sub_0801639C
_08016DD8:
	ldr r2, _08016E50 @ =gUnk_02021580
	ldr r1, _08016E54 @ =gUnk_0203AD30
	ldrb r0, [r2]
	movs r5, #0
	ldrb r1, [r1]
	cmp r0, r1
	bhs _08016E3E
	adds r1, r0, #0
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r1, r0, r1
	ldr r0, _08016E58 @ =gKirbys
	adds r3, r1, r0
	ldr r2, _08016E5C @ =gCurLevelInfo
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, [r4, #0x14]
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r2, r1, r7
	ldrh r0, [r0]
	ldrh r1, [r2]
	cmp r0, r1
	beq _08016E3E
	ldr r0, [r3, #0xc]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	bne _08016E3E
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08016E60 @ =gRoomProps
	adds r0, r0, r1
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r5, r0, #0x1f
_08016E3E:
	cmp r5, #0
	beq _08016E68
	adds r0, r4, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #2
	beq _08016ED8
	ldr r0, _08016E64 @ =sub_0801870C
	b _08016ED6
	.align 2, 0
_08016E50: .4byte gUnk_02021580
_08016E54: .4byte gUnk_0203AD30
_08016E58: .4byte gKirbys
_08016E5C: .4byte gCurLevelInfo
_08016E60: .4byte gRoomProps
_08016E64: .4byte sub_0801870C
_08016E68:
	adds r0, r4, #0
	adds r0, #0x9a
	ldrh r0, [r0]
	subs r0, #0x3d
	lsls r0, r0, #0x10
	ldr r1, _08016EA4 @ =0x03820000
	cmp r0, r1
	bls _08016EB8
	adds r0, r6, #0
	bl sub_080035F4
	cmp r0, #0
	beq _08016EB8
	ldr r0, _08016EA8 @ =sub_08018884
	str r0, [r4, #0xc]
	ldr r2, _08016EAC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08016EB0 @ =0x00196225
	muls r0, r1, r0
	ldr r7, _08016EB4 @ =0x3C6EF35F
	adds r0, r0, r7
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3c
	adds r1, r4, #0
	adds r1, #0xde
	strh r0, [r1]
	b _08016ED8
	.align 2, 0
_08016EA4: .4byte 0x03820000
_08016EA8: .4byte sub_08018884
_08016EAC: .4byte gRngVal
_08016EB0: .4byte 0x00196225
_08016EB4: .4byte 0x3C6EF35F
_08016EB8:
	ldr r1, _08016EE4 @ =gUnk_082DDE84
	ldr r0, [r4, #0x40]
	ldr r2, _08016EE8 @ =0x00000103
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08016ED8
	ldr r0, _08016EEC @ =sub_08018BAC
_08016ED6:
	str r0, [r4, #0xc]
_08016ED8:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016EE4: .4byte gUnk_082DDE84
_08016EE8: .4byte 0x00000103
_08016EEC: .4byte sub_08018BAC

	thumb_func_start sub_08016EF0
sub_08016EF0: @ 0x08016EF0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x40]
	ldr r1, _08016F0C @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _08016F14
	ldr r0, _08016F10 @ =sub_0801519C
	b _0801712A
	.align 2, 0
_08016F0C: .4byte 0x00000103
_08016F10: .4byte sub_0801519C
_08016F14:
	adds r0, r4, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x9e
	strh r0, [r1]
	adds r1, #0x4a
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08016F30
	b _0801712C
_08016F30:
	ldr r0, [r4, #0x10]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08016F3C
	b _08017060
_08016F3C:
	ldr r0, [r4, #0x14]
	movs r2, #0xbf
	lsls r2, r2, #3
	adds r0, r0, r2
	ldrh r3, [r0]
	movs r1, #0
	ldr r0, _08016F78 @ =gUnk_0203AD30
	ldrb r0, [r0]
	cmp r1, r0
	blo _08016F52
	b _08017060
_08016F52:
	ldr r6, _08016F7C @ =gCurLevelInfo
	movs r5, #0xcd
	lsls r5, r5, #3
	adds r2, r0, #0
_08016F5A:
	adds r0, r1, #0
	muls r0, r5, r0
	adds r0, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	cmp r3, r0
	beq _08016F80
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	blo _08016F5A
	b _08017060
	.align 2, 0
_08016F78: .4byte gUnk_0203AD30
_08016F7C: .4byte gCurLevelInfo
_08016F80:
	ldrh r0, [r4, #0x3c]
	cmp r0, #0x10
	bls _08017060
	ldr r2, [r4, #0x40]
	ldr r0, [r2, #0x40]
	asrs r0, r0, #0xc
	add r1, sp, #4
	strh r0, [r1]
	ldr r0, [r2, #0x44]
	asrs r0, r0, #0xc
	mov r2, sp
	adds r2, #6
	strh r0, [r2]
	mov r0, sp
	movs r2, #4
	bl memcpy
	mov r1, sp
	ldr r3, [r4, #0x14]
	adds r0, r3, #0
	adds r0, #0xbc
	ldrh r0, [r0]
	ldrh r1, [r1]
	lsrs r0, r0, #4
	cmp r1, r0
	bhs _08017060
	mov r0, sp
	adds r1, r3, #0
	adds r1, #0xbe
	ldrh r1, [r1]
	ldrh r0, [r0, #2]
	lsrs r1, r1, #4
	cmp r0, r1
	bhs _08017060
	mov r0, sp
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	adds r0, r3, #0
	bl sub_08002434
	ldr r1, _08017050 @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08017060
	ldr r0, [r4, #0x40]
	adds r0, #0x56
	ldrb r0, [r0]
	mov r1, sp
	ldrb r1, [r1]
	mov r2, sp
	ldrh r2, [r2, #2]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_080025AC
	adds r3, r0, #0
	ldr r5, _08017054 @ =gUnk_08D6CD0C
	ldrh r1, [r3, #8]
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r0, [r0]
	mov r8, r0
	adds r0, #0x47
	ldrb r0, [r0]
	movs r6, #0x83
	ands r6, r0
	cmp r6, #0
	bne _08017060
	ldrb r2, [r3, #0xa]
	ldrb r3, [r3, #0xb]
	ldr r0, [r4, #0x14]
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r5, [r0]
	ldr r0, [r4, #0x40]
	bl sub_080551FC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08017060
	adds r0, r5, #0
	adds r0, #0x46
	mov r1, r8
	adds r1, #0x46
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08017058
	adds r1, r4, #0
	adds r1, #0xb0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _0801712C
	.align 2, 0
_08017050: .4byte gUnk_082D88B8
_08017054: .4byte gUnk_08D6CD0C
_08017058:
	adds r0, r4, #0
	adds r0, #0xb0
	strh r6, [r0]
	b _0801712C
_08017060:
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801707C
	adds r0, r4, #0
	adds r0, #0x88
	ldrh r0, [r0]
	cmp r0, #0x1f
	bhi _0801707C
	ldr r0, _08017078 @ =sub_0801519C
	b _0801712A
	.align 2, 0
_08017078: .4byte sub_0801519C
_0801707C:
	ldr r2, _080170F4 @ =gUnk_02021580
	ldr r1, _080170F8 @ =gUnk_0203AD30
	ldrb r0, [r2]
	movs r5, #0
	ldrb r1, [r1]
	cmp r0, r1
	bhs _080170E2
	adds r1, r0, #0
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r1, r0, r1
	ldr r0, _080170FC @ =gKirbys
	adds r3, r1, r0
	ldr r2, _08017100 @ =gCurLevelInfo
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, [r4, #0x14]
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r2, r1, r6
	ldrh r0, [r0]
	ldrh r7, [r2]
	cmp r0, r7
	beq _080170E2
	ldr r0, [r3, #0xc]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	bne _080170E2
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08017104 @ =gRoomProps
	adds r0, r0, r1
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r5, r0, #0x1f
_080170E2:
	cmp r5, #0
	beq _0801710C
	adds r0, r4, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #2
	beq _0801712C
	ldr r0, _08017108 @ =sub_0801870C
	b _0801712A
	.align 2, 0
_080170F4: .4byte gUnk_02021580
_080170F8: .4byte gUnk_0203AD30
_080170FC: .4byte gKirbys
_08017100: .4byte gCurLevelInfo
_08017104: .4byte gRoomProps
_08017108: .4byte sub_0801870C
_0801710C:
	ldr r1, _08017138 @ =gUnk_082DDE84
	ldr r0, [r4, #0x40]
	ldr r2, _0801713C @ =0x00000103
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801712C
	ldr r0, _08017140 @ =sub_08018C38
_0801712A:
	str r0, [r4, #0xc]
_0801712C:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017138: .4byte gUnk_082DDE84
_0801713C: .4byte 0x00000103
_08017140: .4byte sub_08018C38

	thumb_func_start sub_08017144
sub_08017144: @ 0x08017144
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r2, #0
	adds r4, #0xdc
	ldrb r0, [r4]
	adds r1, r2, #0
	adds r1, #0xdd
	strb r0, [r1]
	movs r0, #0xb
	strb r0, [r4]
	ldr r0, [r2, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x10]
	ldr r3, [r2, #0x40]
	ldr r1, [r3, #8]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0
	beq _08017174
	ldr r0, _08017170 @ =sub_0801519C
	b _08017266
	.align 2, 0
_08017170: .4byte sub_0801519C
_08017174:
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _08017198
	ldrb r0, [r4]
	cmp r0, #0xd
	beq _08017268
	adds r1, r2, #0
	adds r1, #0xde
	ldr r0, _08017190 @ =0x0000FFFF
	strh r0, [r1]
	ldr r0, _08017194 @ =sub_0801737C
	b _08017266
	.align 2, 0
_08017190: .4byte 0x0000FFFF
_08017194: .4byte sub_0801737C
_08017198:
	ldr r1, _080171AC @ =0x00000103
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _080171D0
	cmp r0, #0xa
	bgt _080171B0
	cmp r0, #8
	beq _080171B4
	b _0801720C
	.align 2, 0
_080171AC: .4byte 0x00000103
_080171B0:
	cmp r0, #0x16
	bne _0801720C
_080171B4:
	ldr r0, [r2, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	bne _0801720C
	adds r0, r2, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x14
	beq _08017268
	ldr r0, _080171CC @ =sub_08019094
	b _08017266
	.align 2, 0
_080171CC: .4byte sub_08019094
_080171D0:
	adds r0, r3, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #0x75
	bgt _080171E2
	cmp r0, #0x70
	blt _080171E2
	movs r1, #1
_080171E2:
	cmp r1, #0
	beq _0801720C
	adds r0, r2, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x16
	beq _08017268
	adds r1, r2, #0
	adds r1, #0xde
	ldr r0, _08017204 @ =0x0000FFFF
	strh r0, [r1]
	adds r1, #2
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08017208 @ =sub_08017B0C
	b _08017266
	.align 2, 0
_08017204: .4byte 0x0000FFFF
_08017208: .4byte sub_08017B0C
_0801720C:
	ldr r0, [r2, #0x40]
	ldr r1, _08017224 @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _0801722C
	cmp r0, #0xe
	bgt _08017228
	cmp r0, #0xb
	beq _0801722C
	b _08017234
	.align 2, 0
_08017224: .4byte 0x00000103
_08017228:
	cmp r0, #0x17
	bne _08017234
_0801722C:
	ldr r0, _08017230 @ =sub_0801519C
	b _08017266
	.align 2, 0
_08017230: .4byte sub_0801519C
_08017234:
	adds r1, r2, #0
	adds r1, #0xde
	ldrh r3, [r1]
	ldr r0, _08017258 @ =0x0000FFFF
	cmp r3, r0
	beq _08017264
	adds r0, r2, #0
	adds r0, #0xea
	strh r3, [r0]
	subs r0, #0xe
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _08017268
	adds r1, #6
	ldr r0, _0801725C @ =sub_08018C80
	str r0, [r1]
	ldr r0, _08017260 @ =sub_08018F34
	b _08017266
	.align 2, 0
_08017258: .4byte 0x0000FFFF
_0801725C: .4byte sub_08018C80
_08017260: .4byte sub_08018F34
_08017264:
	ldr r0, _08017270 @ =sub_08018C98
_08017266:
	str r0, [r2, #0xc]
_08017268:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017270: .4byte sub_08018C98

	thumb_func_start sub_08017274
sub_08017274: @ 0x08017274
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #0xc
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r2, [r3, #0x40]
	ldr r0, [r2, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080172A4
	ldr r0, _080172A0 @ =sub_0801519C
	b _08017372
	.align 2, 0
_080172A0: .4byte sub_0801519C
_080172A4:
	ldr r1, _080172B8 @ =0x00000103
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _080172DC
	cmp r0, #0xa
	bgt _080172BC
	cmp r0, #8
	beq _080172C0
	b _08017318
	.align 2, 0
_080172B8: .4byte 0x00000103
_080172BC:
	cmp r0, #0x16
	bne _08017318
_080172C0:
	ldr r0, [r3, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	bne _08017318
	adds r0, r3, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x14
	beq _08017374
	ldr r0, _080172D8 @ =sub_08019094
	b _08017372
	.align 2, 0
_080172D8: .4byte sub_08019094
_080172DC:
	adds r0, r2, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #0x75
	bgt _080172EE
	cmp r0, #0x70
	blt _080172EE
	movs r1, #1
_080172EE:
	cmp r1, #0
	beq _08017318
	adds r0, r3, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x16
	beq _08017374
	adds r1, r3, #0
	adds r1, #0xde
	ldr r0, _08017310 @ =0x0000FFFF
	strh r0, [r1]
	adds r1, #2
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08017314 @ =sub_08017B0C
	b _08017372
	.align 2, 0
_08017310: .4byte 0x0000FFFF
_08017314: .4byte sub_08017B0C
_08017318:
	ldr r0, [r3, #0x40]
	ldr r1, _08017330 @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _08017338
	cmp r0, #0xe
	bgt _08017334
	cmp r0, #0xb
	beq _08017338
	b _08017340
	.align 2, 0
_08017330: .4byte 0x00000103
_08017334:
	cmp r0, #0x13
	bne _08017340
_08017338:
	ldr r0, _0801733C @ =sub_0801519C
	b _08017372
	.align 2, 0
_0801733C: .4byte sub_0801519C
_08017340:
	adds r1, r3, #0
	adds r1, #0xde
	ldrh r2, [r1]
	ldr r0, _08017364 @ =0x0000FFFF
	cmp r2, r0
	beq _08017370
	adds r0, r3, #0
	adds r0, #0xea
	strh r2, [r0]
	subs r0, #0xe
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _08017374
	adds r1, #6
	ldr r0, _08017368 @ =sub_08018D18
	str r0, [r1]
	ldr r0, _0801736C @ =sub_08018F34
	b _08017372
	.align 2, 0
_08017364: .4byte 0x0000FFFF
_08017368: .4byte sub_08018D18
_0801736C: .4byte sub_08018F34
_08017370:
	ldr r0, _08017378 @ =sub_08018D30
_08017372:
	str r0, [r3, #0xc]
_08017374:
	pop {r0}
	bx r0
	.align 2, 0
_08017378: .4byte sub_08018D30

	thumb_func_start sub_0801737C
sub_0801737C: @ 0x0801737C
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #0xd
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r2, [r3, #0x40]
	ldr r0, [r2, #8]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080173AC
	ldr r0, _080173A8 @ =sub_0801519C
	b _08017452
	.align 2, 0
_080173A8: .4byte sub_0801519C
_080173AC:
	ldr r1, _080173C0 @ =0x00000103
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _080173E4
	cmp r0, #0xa
	bgt _080173C4
	cmp r0, #8
	beq _080173C8
	b _08017420
	.align 2, 0
_080173C0: .4byte 0x00000103
_080173C4:
	cmp r0, #0x16
	bne _08017420
_080173C8:
	ldr r0, [r3, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	bne _08017420
	adds r0, r3, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x14
	beq _08017454
	ldr r0, _080173E0 @ =sub_08019094
	b _08017452
	.align 2, 0
_080173E0: .4byte sub_08019094
_080173E4:
	adds r0, r2, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #0x75
	bgt _080173F6
	cmp r0, #0x70
	blt _080173F6
	movs r1, #1
_080173F6:
	cmp r1, #0
	beq _08017420
	adds r0, r3, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x16
	beq _08017454
	adds r1, r3, #0
	adds r1, #0xde
	ldr r0, _08017418 @ =0x0000FFFF
	strh r0, [r1]
	adds r1, #2
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0801741C @ =sub_08017B0C
	b _08017452
	.align 2, 0
_08017418: .4byte 0x0000FFFF
_0801741C: .4byte sub_08017B0C
_08017420:
	adds r1, r3, #0
	adds r1, #0xde
	ldrh r2, [r1]
	ldr r0, _08017444 @ =0x0000FFFF
	cmp r2, r0
	beq _08017450
	adds r0, r3, #0
	adds r0, #0xea
	strh r2, [r0]
	subs r0, #0xe
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _08017454
	adds r1, #6
	ldr r0, _08017448 @ =sub_08018D70
	str r0, [r1]
	ldr r0, _0801744C @ =sub_08018F34
	b _08017452
	.align 2, 0
_08017444: .4byte 0x0000FFFF
_08017448: .4byte sub_08018D70
_0801744C: .4byte sub_08018F34
_08017450:
	ldr r0, _08017458 @ =sub_08018D88
_08017452:
	str r0, [r3, #0xc]
_08017454:
	pop {r0}
	bx r0
	.align 2, 0
_08017458: .4byte sub_08018D88

	thumb_func_start sub_0801745C
sub_0801745C: @ 0x0801745C
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #0xe
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r2, [r3, #0x40]
	ldr r0, [r2, #8]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801748C
	ldr r0, _08017488 @ =sub_0801519C
	b _0801753E
	.align 2, 0
_08017488: .4byte sub_0801519C
_0801748C:
	ldr r1, _080174A0 @ =0x00000103
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _080174C4
	cmp r0, #0xa
	bgt _080174A4
	cmp r0, #8
	beq _080174A8
	b _08017500
	.align 2, 0
_080174A0: .4byte 0x00000103
_080174A4:
	cmp r0, #0x16
	bne _08017500
_080174A8:
	ldr r0, [r3, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	bne _08017500
	adds r0, r3, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x14
	beq _08017540
	ldr r0, _080174C0 @ =sub_08019094
	b _0801753E
	.align 2, 0
_080174C0: .4byte sub_08019094
_080174C4:
	adds r0, r2, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #0x75
	bgt _080174D6
	cmp r0, #0x70
	blt _080174D6
	movs r1, #1
_080174D6:
	cmp r1, #0
	beq _08017500
	adds r0, r3, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x16
	beq _08017540
	adds r1, r3, #0
	adds r1, #0xde
	ldr r0, _080174F8 @ =0x0000FFFF
	strh r0, [r1]
	adds r1, #2
	movs r0, #0
	strh r0, [r1]
	ldr r0, _080174FC @ =sub_08017B0C
	b _0801753E
	.align 2, 0
_080174F8: .4byte 0x0000FFFF
_080174FC: .4byte sub_08017B0C
_08017500:
	adds r2, r3, #0
	adds r2, #0xde
	ldrh r1, [r2]
	ldr r0, _08017530 @ =0x0000FFFF
	cmp r1, r0
	beq _0801753C
	adds r0, r3, #0
	adds r0, #0xea
	strh r1, [r0]
	subs r0, #0xa
	ldrh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	subs r0, #0x10
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _08017540
	adds r1, r3, #0
	adds r1, #0xe4
	ldr r0, _08017534 @ =sub_08018DC8
	str r0, [r1]
	ldr r0, _08017538 @ =sub_08018F34
	b _0801753E
	.align 2, 0
_08017530: .4byte 0x0000FFFF
_08017534: .4byte sub_08018DC8
_08017538: .4byte sub_08018F34
_0801753C:
	ldr r0, _08017544 @ =sub_08018DE8
_0801753E:
	str r0, [r3, #0xc]
_08017540:
	pop {r0}
	bx r0
	.align 2, 0
_08017544: .4byte sub_08018DE8

	thumb_func_start sub_08017548
sub_08017548: @ 0x08017548
	push {r4, lr}
	adds r3, r0, #0
	movs r4, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xea
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _08017576
	ldr r0, [r3, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0
	beq _08017598
_08017576:
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08017598
	ldr r0, [r3, #0x40]
	ldr r0, [r0, #8]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08017594
	movs r4, #1
_08017594:
	cmp r4, #0
	beq _080175B8
_08017598:
	ldr r2, _080175C0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080175C4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080175C8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x7f
	ands r0, r1
	adds r0, #0x1e
	adds r1, r3, #0
	adds r1, #0xa0
	strh r0, [r1]
	ldr r0, _080175CC @ =sub_0801519C
	str r0, [r3, #0xc]
_080175B8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080175C0: .4byte gRngVal
_080175C4: .4byte 0x00196225
_080175C8: .4byte 0x3C6EF35F
_080175CC: .4byte sub_0801519C

	thumb_func_start sub_080175D0
sub_080175D0: @ 0x080175D0
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #0xf
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r2, [r3, #0x40]
	ldr r0, [r2, #8]
	movs r1, #0xa0
	ands r0, r1
	cmp r0, #0x80
	beq _08017604
	ldr r0, _08017600 @ =sub_0801519C
	b _0801767A
	.align 2, 0
_08017600: .4byte sub_0801519C
_08017604:
	ldr r1, _08017618 @ =0x00000103
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _0801763C
	cmp r0, #0xa
	bgt _0801761C
	cmp r0, #8
	beq _08017620
	b _08017678
	.align 2, 0
_08017618: .4byte 0x00000103
_0801761C:
	cmp r0, #0x16
	bne _08017678
_08017620:
	ldr r0, [r3, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	bne _08017678
	adds r0, r3, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x14
	beq _0801767C
	ldr r0, _08017638 @ =sub_08019094
	b _0801767A
	.align 2, 0
_08017638: .4byte sub_08019094
_0801763C:
	adds r0, r2, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #0x75
	bgt _0801764E
	cmp r0, #0x70
	blt _0801764E
	movs r1, #1
_0801764E:
	cmp r1, #0
	beq _08017678
	adds r0, r3, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x16
	beq _0801767C
	adds r1, r3, #0
	adds r1, #0xde
	ldr r0, _08017670 @ =0x0000FFFF
	strh r0, [r1]
	adds r1, #2
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08017674 @ =sub_08017B0C
	b _0801767A
	.align 2, 0
_08017670: .4byte 0x0000FFFF
_08017674: .4byte sub_08017B0C
_08017678:
	ldr r0, _08017680 @ =sub_08018E3C
_0801767A:
	str r0, [r3, #0xc]
_0801767C:
	pop {r0}
	bx r0
	.align 2, 0
_08017680: .4byte sub_08018E3C

	thumb_func_start sub_08017684
sub_08017684: @ 0x08017684
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r0, [r3, #0x40]
	ldr r2, _080176B8 @ =0x00000103
	adds r1, r0, r2
	ldrb r1, [r1]
	cmp r1, #0xa
	beq _080176DC
	cmp r1, #0xa
	bgt _080176BC
	cmp r1, #8
	beq _080176C0
	b _08017714
	.align 2, 0
_080176B8: .4byte 0x00000103
_080176BC:
	cmp r1, #0x16
	bne _08017714
_080176C0:
	ldr r0, [r3, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	bne _08017714
	adds r0, r3, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x14
	beq _08017748
	ldr r0, _080176D8 @ =sub_08019094
	b _08017746
	.align 2, 0
_080176D8: .4byte sub_08019094
_080176DC:
	adds r0, #0xd4
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #0x75
	bgt _080176EC
	cmp r0, #0x70
	blt _080176EC
	movs r1, #1
_080176EC:
	cmp r1, #0
	beq _08017714
	adds r0, r3, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x16
	beq _08017748
	adds r1, r3, #0
	adds r1, #0xde
	ldr r0, _0801770C @ =0x0000FFFF
	strh r0, [r1]
	adds r1, #2
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08017710 @ =sub_08017B0C
	b _08017746
	.align 2, 0
_0801770C: .4byte 0x0000FFFF
_08017710: .4byte sub_08017B0C
_08017714:
	adds r1, r3, #0
	adds r1, #0xde
	ldrh r2, [r1]
	ldr r0, _08017738 @ =0x0000FFFF
	cmp r2, r0
	beq _08017744
	adds r0, r3, #0
	adds r0, #0xea
	strh r2, [r0]
	subs r0, #0xe
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _08017748
	adds r1, #6
	ldr r0, _0801773C @ =sub_08018E7C
	str r0, [r1]
	ldr r0, _08017740 @ =sub_08018F34
	b _08017746
	.align 2, 0
_08017738: .4byte 0x0000FFFF
_0801773C: .4byte sub_08018E7C
_08017740: .4byte sub_08018F34
_08017744:
	ldr r0, _0801774C @ =sub_08018E94
_08017746:
	str r0, [r3, #0xc]
_08017748:
	pop {r0}
	bx r0
	.align 2, 0
_0801774C: .4byte sub_08018E94

	thumb_func_start sub_08017750
sub_08017750: @ 0x08017750
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #0x11
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r2, [r3, #0x40]
	ldr r0, [r2, #0x58]
	ands r0, r1
	cmp r0, #0
	bne _08017780
	ldr r0, _0801777C @ =sub_0801519C
	b _080177F6
	.align 2, 0
_0801777C: .4byte sub_0801519C
_08017780:
	ldr r1, _08017794 @ =0x00000103
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _080177B8
	cmp r0, #0xa
	bgt _08017798
	cmp r0, #8
	beq _0801779C
	b _080177F4
	.align 2, 0
_08017794: .4byte 0x00000103
_08017798:
	cmp r0, #0x16
	bne _080177F4
_0801779C:
	ldr r0, [r3, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	bne _080177F4
	adds r0, r3, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x14
	beq _080177F8
	ldr r0, _080177B4 @ =sub_08019094
	b _080177F6
	.align 2, 0
_080177B4: .4byte sub_08019094
_080177B8:
	adds r0, r2, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #0x75
	bgt _080177CA
	cmp r0, #0x70
	blt _080177CA
	movs r1, #1
_080177CA:
	cmp r1, #0
	beq _080177F4
	adds r0, r3, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x16
	beq _080177F8
	adds r1, r3, #0
	adds r1, #0xde
	ldr r0, _080177EC @ =0x0000FFFF
	strh r0, [r1]
	adds r1, #2
	movs r0, #0
	strh r0, [r1]
	ldr r0, _080177F0 @ =sub_08017B0C
	b _080177F6
	.align 2, 0
_080177EC: .4byte 0x0000FFFF
_080177F0: .4byte sub_08017B0C
_080177F4:
	ldr r0, _080177FC @ =sub_08018EF4
_080177F6:
	str r0, [r3, #0xc]
_080177F8:
	pop {r0}
	bx r0
	.align 2, 0
_080177FC: .4byte sub_08018EF4

	thumb_func_start sub_08017800
sub_08017800: @ 0x08017800
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
	movs r4, #0
	orrs r1, r0
	strh r1, [r2]
	adds r0, r3, #0
	adds r0, #0xde
	ldrh r0, [r0]
	cmp r0, #1
	bne _08017820
	movs r0, #0x20
	b _08017826
_08017820:
	cmp r0, #0
	bne _0801782A
	movs r0, #0x10
_08017826:
	orrs r1, r0
	strh r1, [r2]
_0801782A:
	adds r0, r3, #0
	adds r0, #0xe0
	ldrh r0, [r0]
	cmp r0, #2
	bne _0801783E
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x40
	b _0801784A
_0801783E:
	cmp r0, #3
	bne _0801784E
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x80
_0801784A:
	orrs r0, r1
	strh r0, [r2]
_0801784E:
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08017862
	ldr r0, _08017868 @ =sub_0801519C
	str r0, [r3, #0xc]
_08017862:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017868: .4byte sub_0801519C

	thumb_func_start sub_0801786C
sub_0801786C: @ 0x0801786C
	push {r4, lr}
	adds r2, r0, #0
	movs r4, #0
	adds r0, #0xde
	ldrh r1, [r0]
	cmp r1, #1
	bne _0801788E
	ldr r0, [r2, #0x40]
	ldr r0, [r0, #8]
	ands r0, r1
	cmp r0, #0
	bne _080178AC
	adds r3, r2, #0
	adds r3, #0x9e
	ldrh r1, [r3]
	movs r0, #0x20
	b _080178A6
_0801788E:
	cmp r1, #0
	bne _080178AC
	ldr r0, [r2, #0x40]
	ldr r0, [r0, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080178AC
	adds r3, r2, #0
	adds r3, #0x9e
	ldrh r1, [r3]
	movs r0, #0x10
_080178A6:
	orrs r0, r1
	strh r0, [r3]
	b _080178AE
_080178AC:
	movs r4, #1
_080178AE:
	adds r1, r2, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080178C0
	movs r4, #1
_080178C0:
	cmp r4, #0
	beq _080178D2
	adds r0, r2, #0
	adds r0, #0xe4
	ldr r0, [r0]
	cmp r0, #0
	bne _080178D0
	ldr r0, _080178D8 @ =sub_0801519C
_080178D0:
	str r0, [r2, #0xc]
_080178D2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080178D8: .4byte sub_0801519C

	thumb_func_start sub_080178DC
sub_080178DC: @ 0x080178DC
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r2, #0
	adds r4, #0xdc
	ldrb r0, [r4]
	adds r1, r2, #0
	adds r1, #0xdd
	strb r0, [r1]
	movs r0, #0x13
	strb r0, [r4]
	ldr r0, [r2, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x10]
	ldr r0, [r2, #0x40]
	ldr r1, _08017908 @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #9
	beq _08017910
	ldr r0, _0801790C @ =sub_0801519C
	b _08017942
	.align 2, 0
_08017908: .4byte 0x00000103
_0801790C: .4byte sub_0801519C
_08017910:
	adds r1, r2, #0
	adds r1, #0xde
	ldrh r3, [r1]
	ldr r0, _08017934 @ =0x0000FFFF
	cmp r3, r0
	beq _08017940
	adds r0, r2, #0
	adds r0, #0xea
	strh r3, [r0]
	ldrb r0, [r4]
	cmp r0, #0x12
	beq _08017944
	adds r1, #6
	ldr r0, _08017938 @ =sub_08018F64
	str r0, [r1]
	ldr r0, _0801793C @ =sub_08018F34
	b _08017942
	.align 2, 0
_08017934: .4byte 0x0000FFFF
_08017938: .4byte sub_08018F64
_0801793C: .4byte sub_08018F34
_08017940:
	ldr r0, _0801794C @ =sub_08018F7C
_08017942:
	str r0, [r2, #0xc]
_08017944:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801794C: .4byte sub_08018F7C

	thumb_func_start sub_08017950
sub_08017950: @ 0x08017950
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x1e]
	cmp r0, #1
	beq _08017966
	adds r2, r4, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
_08017966:
	adds r0, r4, #0
	adds r0, #0xde
	ldrh r0, [r0]
	cmp r0, #1
	bne _0801797C
	adds r2, r4, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	b _080179A6
_0801797C:
	cmp r0, #0
	bne _0801798C
	adds r2, r4, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	b _080179A6
_0801798C:
	adds r2, r4, #0
	adds r2, #0x9e
	ldrh r3, [r2]
	ldr r0, [r4, #0x40]
	ldr r0, [r0, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080179A2
	movs r0, #0x20
	b _080179A4
_080179A2:
	movs r0, #0x10
_080179A4:
	orrs r0, r3
_080179A6:
	strh r0, [r2]
	ldr r3, [r4, #0x40]
	ldr r1, _080179D8 @ =0x00000103
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #8
	bne _080179D0
	ldr r1, [r3, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080179D0
	adds r2, r4, #0
	adds r2, #0xe8
	ldrh r0, [r2]
	cmp r0, #0
	bne _08017A40
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	bne _080179E0
_080179D0:
	ldr r0, _080179DC @ =sub_0801519C
	str r0, [r4, #0xc]
	b _08017A44
	.align 2, 0
_080179D8: .4byte 0x00000103
_080179DC: .4byte sub_0801519C
_080179E0:
	ldr r0, [r3, #0x44]
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	ldr r5, [r4, #0x14]
	adds r0, r5, #0
	adds r0, #0xbe
	ldrh r0, [r0]
	lsrs r0, r0, #4
	cmp r1, r0
	bge _08017A44
	ldr r1, [r3, #0x40]
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_080024F0
	ldr r1, _08017A38 @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08017A44
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	ldr r0, [r0, #0x40]
	ldr r1, [r1, #0x40]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08017A2E
	rsbs r0, r0, #0
_08017A2E:
	cmp r0, #0xf
	bgt _08017A44
	ldr r0, _08017A3C @ =sub_080192BC
	str r0, [r4, #0xc]
	b _08017A44
	.align 2, 0
_08017A38: .4byte gUnk_082D88B8
_08017A3C: .4byte sub_080192BC
_08017A40:
	subs r0, #1
	strh r0, [r2]
_08017A44:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08017A4C
sub_08017A4C: @ 0x08017A4C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0xde
	ldrh r0, [r0]
	cmp r0, #1
	bne _08017A64
	adds r2, r4, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	b _08017A8E
_08017A64:
	cmp r0, #0
	bne _08017A74
	adds r2, r4, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	b _08017A8E
_08017A74:
	adds r2, r4, #0
	adds r2, #0x9e
	ldrh r3, [r2]
	ldr r0, [r4, #0x40]
	ldr r0, [r0, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08017A8A
	movs r0, #0x20
	b _08017A8C
_08017A8A:
	movs r0, #0x10
_08017A8C:
	orrs r0, r3
_08017A8E:
	strh r0, [r2]
	ldr r5, [r4, #0x40]
	ldr r0, [r5, #0x44]
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	ldr r3, [r4, #0x14]
	adds r0, r3, #0
	adds r0, #0xbe
	ldrh r0, [r0]
	lsrs r0, r0, #4
	cmp r1, r0
	bge _08017AF0
	ldr r1, [r5, #0x40]
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	lsrs r2, r2, #0x10
	adds r0, r3, #0
	bl sub_080024F0
	ldr r1, _08017AE8 @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08017AF0
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	ldr r0, [r0, #0x40]
	ldr r1, [r1, #0x40]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08017AE0
	rsbs r0, r0, #0
_08017AE0:
	cmp r0, #0xf
	bgt _08017AF0
	ldr r0, _08017AEC @ =sub_080192BC
	b _08017AFE
	.align 2, 0
_08017AE8: .4byte gUnk_082D88B8
_08017AEC: .4byte sub_080192BC
_08017AF0:
	ldr r0, [r4, #0x40]
	ldr r0, [r0, #8]
	movs r1, #0x60
	ands r0, r1
	cmp r0, #0x20
	beq _08017B00
	ldr r0, _08017B08 @ =sub_0801519C
_08017AFE:
	str r0, [r4, #0xc]
_08017B00:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017B08: .4byte sub_0801519C

	thumb_func_start sub_08017B0C
sub_08017B0C: @ 0x08017B0C
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r3, r2, #0
	adds r3, #0xdd
	strb r0, [r3]
	movs r0, #0x16
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x10]
	ldr r1, [r2, #0x40]
	ldr r3, _08017B38 @ =0x00000103
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _08017B40
	ldr r0, _08017B3C @ =sub_0801519C
	b _08017B9E
	.align 2, 0
_08017B38: .4byte 0x00000103
_08017B3C: .4byte sub_0801519C
_08017B40:
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #0x75
	bgt _08017B52
	cmp r0, #0x70
	blt _08017B52
	movs r1, #1
_08017B52:
	cmp r1, #0
	beq _08017B60
	ldr r0, _08017B5C @ =sub_08017C24
	b _08017B9E
	.align 2, 0
_08017B5C: .4byte sub_08017C24
_08017B60:
	adds r3, r2, #0
	adds r3, #0xde
	ldrh r1, [r3]
	ldr r0, _08017B90 @ =0x0000FFFF
	cmp r1, r0
	beq _08017B9C
	adds r0, r2, #0
	adds r0, #0xea
	strh r1, [r0]
	subs r0, #0xa
	ldrh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	subs r0, #0x10
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _08017BA0
	adds r1, r2, #0
	adds r1, #0xe4
	ldr r0, _08017B94 @ =sub_08019418
	str r0, [r1]
	ldr r0, _08017B98 @ =sub_08018F34
	b _08017B9E
	.align 2, 0
_08017B90: .4byte 0x0000FFFF
_08017B94: .4byte sub_08019418
_08017B98: .4byte sub_08018F34
_08017B9C:
	ldr r0, _08017BA4 @ =sub_08019438
_08017B9E:
	str r0, [r2, #0xc]
_08017BA0:
	pop {r0}
	bx r0
	.align 2, 0
_08017BA4: .4byte sub_08019438

	thumb_func_start sub_08017BA8
sub_08017BA8: @ 0x08017BA8
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r4, #0
	movs r5, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r0, [r2]
	movs r1, #2
	orrs r1, r0
	strh r1, [r2]
	ldr r0, [r3, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #0x75
	bgt _08017BCE
	cmp r0, #0x70
	blt _08017BCE
	movs r1, #1
_08017BCE:
	cmp r1, #0
	beq _08017BD4
	movs r5, #1
_08017BD4:
	adds r1, r3, #0
	adds r1, #0xea
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1e
	bls _08017BF0
	ldr r0, [r3, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0
	beq _08017C00
_08017BF0:
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08017C02
_08017C00:
	movs r4, #1
_08017C02:
	cmp r5, #0
	beq _08017C10
	ldr r0, _08017C0C @ =sub_0801948C
	b _08017C16
	.align 2, 0
_08017C0C: .4byte sub_0801948C
_08017C10:
	cmp r4, #0
	beq _08017C18
	ldr r0, _08017C20 @ =sub_0801519C
_08017C16:
	str r0, [r3, #0xc]
_08017C18:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017C20: .4byte sub_0801519C

	thumb_func_start sub_08017C24
sub_08017C24: @ 0x08017C24
	push {lr}
	mov ip, r0
	ldr r0, [r0, #0x40]
	ldr r1, _08017C38 @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _08017C40
	ldr r0, _08017C3C @ =sub_0801519C
	b _08017CB6
	.align 2, 0
_08017C38: .4byte 0x00000103
_08017C3C: .4byte sub_0801519C
_08017C40:
	mov r1, ip
	adds r1, #0xe8
	movs r2, #0
	movs r0, #5
	strh r0, [r1]
	mov r3, ip
	adds r3, #0xea
	strh r2, [r3]
	ldr r2, _08017C70 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08017C74 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08017C78 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	beq _08017C7C
	cmp r1, #1
	beq _08017C80
	b _08017C84
	.align 2, 0
_08017C70: .4byte gRngVal
_08017C74: .4byte 0x00196225
_08017C78: .4byte 0x3C6EF35F
_08017C7C:
	movs r0, #0x40
	b _08017C82
_08017C80:
	movs r0, #0x80
_08017C82:
	strh r0, [r3]
_08017C84:
	ldr r1, [r2]
	ldr r0, _08017CA0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08017CA4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	bhi _08017CA8
	ldrh r1, [r3]
	movs r0, #0x20
	b _08017CB0
	.align 2, 0
_08017CA0: .4byte 0x00196225
_08017CA4: .4byte 0x3C6EF35F
_08017CA8:
	cmp r1, #3
	bhi _08017CB4
	ldrh r1, [r3]
	movs r0, #0x10
_08017CB0:
	orrs r0, r1
	strh r0, [r3]
_08017CB4:
	ldr r0, _08017CC0 @ =sub_080194E0
_08017CB6:
	mov r1, ip
	str r0, [r1, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_08017CC0: .4byte sub_080194E0

	thumb_func_start sub_08017CC4
sub_08017CC4: @ 0x08017CC4
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r2, #0
	adds r4, #0xdc
	ldrb r0, [r4]
	adds r1, r2, #0
	adds r1, #0xdd
	strb r0, [r1]
	movs r0, #0x17
	strb r0, [r4]
	ldr r0, [r2, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x10]
	ldr r0, [r2, #0x40]
	ldr r1, _08017CF0 @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _08017CF8
	ldr r0, _08017CF4 @ =sub_0801519C
	b _08017D32
	.align 2, 0
_08017CF0: .4byte 0x00000103
_08017CF4: .4byte sub_0801519C
_08017CF8:
	adds r3, r2, #0
	adds r3, #0xde
	ldrh r1, [r3]
	ldr r0, _08017D24 @ =0x0000FFFF
	cmp r1, r0
	beq _08017D30
	adds r0, r2, #0
	adds r0, #0xea
	strh r1, [r0]
	subs r0, #0xa
	ldrh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldrb r0, [r4]
	cmp r0, #0x12
	beq _08017D34
	adds r1, r2, #0
	adds r1, #0xe4
	ldr r0, _08017D28 @ =sub_080195A4
	str r0, [r1]
	ldr r0, _08017D2C @ =sub_08018F34
	b _08017D32
	.align 2, 0
_08017D24: .4byte 0x0000FFFF
_08017D28: .4byte sub_080195A4
_08017D2C: .4byte sub_08018F34
_08017D30:
	ldr r0, _08017D3C @ =sub_080195C4
_08017D32:
	str r0, [r2, #0xc]
_08017D34:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017D3C: .4byte sub_080195C4

	thumb_func_start sub_08017D40
sub_08017D40: @ 0x08017D40
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r2, #0
	adds r5, #0xdc
	ldrb r0, [r5]
	adds r1, r2, #0
	adds r1, #0xdd
	strb r0, [r1]
	movs r0, #0x18
	strb r0, [r5]
	ldr r0, [r2, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x10]
	ldr r0, [r2, #0x40]
	ldr r1, _08017D6C @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0x13
	beq _08017D74
	ldr r0, _08017D70 @ =sub_0801519C
	b _08017DB6
	.align 2, 0
_08017D6C: .4byte 0x00000103
_08017D70: .4byte sub_0801519C
_08017D74:
	adds r3, r2, #0
	adds r3, #0xde
	ldrh r1, [r3]
	ldr r0, _08017DA8 @ =0x0000FFFF
	cmp r1, r0
	beq _08017DB4
	adds r0, r2, #0
	adds r0, #0xea
	strh r1, [r0]
	subs r0, #0xa
	ldrh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	adds r4, r2, #0
	adds r4, #0xe4
	ldr r0, [r4]
	adds r1, r2, #0
	adds r1, #0xee
	strh r0, [r1]
	ldrb r0, [r5]
	cmp r0, #0x12
	beq _08017DB8
	ldr r0, _08017DAC @ =sub_08019638
	str r0, [r4]
	ldr r0, _08017DB0 @ =sub_08018F34
	b _08017DB6
	.align 2, 0
_08017DA8: .4byte 0x0000FFFF
_08017DAC: .4byte sub_08019638
_08017DB0: .4byte sub_08018F34
_08017DB4:
	ldr r0, _08017DC0 @ =sub_08019664
_08017DB6:
	str r0, [r2, #0xc]
_08017DB8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017DC0: .4byte sub_08019664

	thumb_func_start sub_08017DC4
sub_08017DC4: @ 0x08017DC4
	push {lr}
	mov ip, r0
	adds r0, #0xe0
	ldrh r0, [r0]
	cmp r0, #2
	beq _08017DD6
	cmp r0, #3
	beq _08017DE0
	b _08017DEC
_08017DD6:
	mov r2, ip
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x40
	b _08017DE8
_08017DE0:
	mov r2, ip
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x80
_08017DE8:
	orrs r0, r1
	strh r0, [r2]
_08017DEC:
	mov r2, ip
	adds r2, #0xe8
	ldrh r0, [r2]
	cmp r0, #5
	bls _08017E02
	mov r3, ip
	adds r3, #0x9e
	ldrh r1, [r3]
	movs r0, #2
	orrs r0, r1
	strh r0, [r3]
_08017E02:
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08017E14
	ldr r0, _08017E18 @ =sub_0801519C
	mov r1, ip
	str r0, [r1, #0xc]
_08017E14:
	pop {r0}
	bx r0
	.align 2, 0
_08017E18: .4byte sub_0801519C

	thumb_func_start sub_08017E1C
sub_08017E1C: @ 0x08017E1C
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r2, #0
	adds r5, #0xdc
	ldrb r0, [r5]
	adds r1, r2, #0
	adds r1, #0xdd
	strb r0, [r1]
	movs r0, #0x19
	strb r0, [r5]
	ldr r0, [r2, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x10]
	ldr r0, [r2, #0x40]
	ldr r1, _08017E48 @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0x19
	beq _08017E50
	ldr r0, _08017E4C @ =sub_0801519C
	b _08017E92
	.align 2, 0
_08017E48: .4byte 0x00000103
_08017E4C: .4byte sub_0801519C
_08017E50:
	adds r3, r2, #0
	adds r3, #0xde
	ldrh r1, [r3]
	ldr r0, _08017E84 @ =0x0000FFFF
	cmp r1, r0
	beq _08017E90
	adds r0, r2, #0
	adds r0, #0xea
	strh r1, [r0]
	subs r0, #0xa
	ldrh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	adds r4, r2, #0
	adds r4, #0xe4
	ldr r0, [r4]
	adds r1, r2, #0
	adds r1, #0xee
	strh r0, [r1]
	ldrb r0, [r5]
	cmp r0, #0x12
	beq _08017E94
	ldr r0, _08017E88 @ =sub_080196A4
	str r0, [r4]
	ldr r0, _08017E8C @ =sub_08018F34
	b _08017E92
	.align 2, 0
_08017E84: .4byte 0x0000FFFF
_08017E88: .4byte sub_080196A4
_08017E8C: .4byte sub_08018F34
_08017E90:
	ldr r0, _08017E9C @ =sub_080196D0
_08017E92:
	str r0, [r2, #0xc]
_08017E94:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017E9C: .4byte sub_080196D0

	thumb_func_start sub_08017EA0
sub_08017EA0: @ 0x08017EA0
	push {lr}
	adds r3, r0, #0
	adds r0, #0xde
	ldrh r0, [r0]
	cmp r0, #1
	bne _08017EBC
	adds r0, r3, #0
	adds r0, #0x9e
	ldrh r2, [r0]
	movs r1, #0x20
	orrs r1, r2
	strh r1, [r0]
	adds r2, r0, #0
	b _08017ECC
_08017EBC:
	adds r2, r3, #0
	adds r2, #0x9e
	cmp r0, #0
	bne _08017ECC
	ldrh r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strh r0, [r2]
_08017ECC:
	adds r0, r3, #0
	adds r0, #0xe0
	ldrh r0, [r0]
	cmp r0, #2
	bne _08017EDC
	ldrh r1, [r2]
	movs r0, #0x40
	b _08017EE4
_08017EDC:
	cmp r0, #3
	bne _08017EE8
	ldrh r1, [r2]
	movs r0, #0x80
_08017EE4:
	orrs r0, r1
	strh r0, [r2]
_08017EE8:
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bls _08017F06
	ldr r0, _08017F0C @ =sub_08017F10
	str r0, [r3, #0xc]
_08017F06:
	pop {r0}
	bx r0
	.align 2, 0
_08017F0C: .4byte sub_08017F10

	thumb_func_start sub_08017F10
sub_08017F10: @ 0x08017F10
	push {lr}
	adds r3, r0, #0
	adds r0, #0xde
	ldrh r0, [r0]
	cmp r0, #1
	bne _08017F26
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x20
	b _08017F32
_08017F26:
	cmp r0, #0
	bne _08017F36
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x10
_08017F32:
	orrs r0, r1
	strh r0, [r2]
_08017F36:
	adds r0, r3, #0
	adds r0, #0xe0
	ldrh r0, [r0]
	cmp r0, #2
	bne _08017F4A
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x40
	b _08017F56
_08017F4A:
	cmp r0, #3
	bne _08017F5A
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x80
_08017F56:
	orrs r0, r1
	strh r0, [r2]
_08017F5A:
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r1, #4
	ldr r1, [r1]
	cmp r0, r1
	bls _08017F80
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08017F84 @ =sub_0801519C
	str r0, [r3, #0xc]
_08017F80:
	pop {r0}
	bx r0
	.align 2, 0
_08017F84: .4byte sub_0801519C

	thumb_func_start sub_08017F88
sub_08017F88: @ 0x08017F88
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0xde
	ldr r2, [r4, #0x40]
	ldr r1, [r2, #0x40]
	asrs r1, r1, #8
	ldrh r0, [r0]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0xe0
	ldr r2, [r2, #0x44]
	asrs r2, r2, #8
	ldrh r1, [r1]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08154FE8
	ldr r5, _08017FD0 @ =0x000003FF
	ands r5, r0
	adds r2, r4, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r5, r0
	bls _08017FD4
	movs r0, #0x20
	b _08017FD6
	.align 2, 0
_08017FD0: .4byte 0x000003FF
_08017FD4:
	movs r0, #0x10
_08017FD6:
	orrs r1, r0
	strh r1, [r2]
	ldr r1, _08017FF4 @ =0xFFFFFEFF
	adds r0, r5, r1
	lsls r0, r0, #0x10
	movs r1, #0xff
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08017FF8
	adds r2, r4, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x40
	b _08018000
	.align 2, 0
_08017FF4: .4byte 0xFFFFFEFF
_08017FF8:
	adds r2, r4, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x80
_08018000:
	orrs r0, r1
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bls _0801801A
	ldr r0, _08018020 @ =sub_08018024
	str r0, [r4, #0xc]
_0801801A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08018020: .4byte sub_08018024

	thumb_func_start sub_08018024
sub_08018024: @ 0x08018024
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x40]
	ldr r0, [r1, #0x40]
	lsls r0, r0, #8
	lsrs r4, r0, #0x10
	ldr r0, [r1, #0x44]
	lsls r0, r0, #8
	lsrs r5, r0, #0x10
	adds r7, r6, #0
	adds r7, #0xde
	ldrh r0, [r7]
	subs r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0xe0
	ldrh r1, [r1]
	subs r1, r1, r5
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08154FE8
	ldr r1, _08018068 @ =0x000003FF
	mov ip, r1
	ands r1, r0
	mov ip, r1
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r7]
	cmp r0, r1
	ble _0801806C
	subs r0, r4, r1
	b _0801806E
	.align 2, 0
_08018068: .4byte 0x000003FF
_0801806C:
	subs r0, r1, r4
_0801806E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r0, #0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0xe0
	ldrh r1, [r1]
	cmp r0, r1
	ble _08018086
	subs r0, r5, r1
	b _08018088
_08018086:
	subs r0, r1, r5
_08018088:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r0, #0
	lsls r1, r0, #0x10
	lsls r0, r3, #0x10
	cmp r1, r0
	bge _08018098
	adds r2, r3, #0
_08018098:
	adds r3, r2, #0
	movs r0, #0x80
	lsls r0, r0, #2
	cmp ip, r0
	bls _080180AC
	adds r0, r6, #0
	adds r0, #0x9e
	ldrh r2, [r0]
	movs r1, #0x20
	b _080180B4
_080180AC:
	adds r0, r6, #0
	adds r0, #0x9e
	ldrh r2, [r0]
	movs r1, #0x10
_080180B4:
	orrs r1, r2
	strh r1, [r0]
	adds r2, r0, #0
	ldr r0, _080180D0 @ =0xFFFFFEFF
	add r0, ip
	lsls r0, r0, #0x10
	movs r1, #0xff
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _080180D4
	ldrh r1, [r2]
	movs r0, #0x40
	b _080180D8
	.align 2, 0
_080180D0: .4byte 0xFFFFFEFF
_080180D4:
	ldrh r1, [r2]
	movs r0, #0x80
_080180D8:
	orrs r0, r1
	strh r0, [r2]
	adds r0, r6, #0
	adds r0, #0xe8
	ldrh r1, [r0]
	adds r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	movs r0, #0x96
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _080180F8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb
	bgt _08018104
_080180F8:
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0801810C @ =sub_0801519C
	str r0, [r6, #0xc]
_08018104:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801810C: .4byte sub_0801519C

	thumb_func_start sub_08018110
sub_08018110: @ 0x08018110
	push {r4, r5, r6, lr}
	mov ip, r0
	mov r1, ip
	adds r1, #0xdc
	ldrb r0, [r1]
	mov r3, ip
	adds r3, #0xdd
	movs r2, #0
	strb r0, [r3]
	movs r0, #0x1b
	strb r0, [r1]
	mov r1, ip
	ldr r0, [r1, #0x10]
	movs r1, #2
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #0x10]
	mov r0, ip
	adds r0, #0xe8
	strh r2, [r0]
	ldr r6, _0801817C @ =gRngVal
	ldr r0, [r6]
	ldr r4, _08018180 @ =0x00196225
	muls r0, r4, r0
	ldr r3, _08018184 @ =0x3C6EF35F
	adds r0, r0, r3
	adds r2, r0, #0
	muls r2, r4, r2
	adds r2, r2, r3
	lsrs r0, r2, #0x10
	movs r5, #0x1f
	ands r0, r5
	adds r0, #0x10
	lsls r1, r0, #8
	orrs r0, r1
	mov r1, ip
	adds r1, #0xea
	strh r0, [r1]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	str r0, [r6]
	lsrs r0, r0, #0x10
	ands r0, r5
	adds r0, #0x5a
	adds r1, #2
	strh r0, [r1]
	ldr r0, _08018188 @ =sub_0801818C
	mov r1, ip
	str r0, [r1, #0xc]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801817C: .4byte gRngVal
_08018180: .4byte 0x00196225
_08018184: .4byte 0x3C6EF35F
_08018188: .4byte sub_0801818C

	thumb_func_start sub_0801818C
sub_0801818C: @ 0x0801818C
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r0, [r0, #0x14]
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _080181A8 @ =0x00000397
	cmp r1, r0
	beq _080181B0
	ldr r0, _080181AC @ =sub_0801519C
	mov r2, ip
	str r0, [r2, #0xc]
	b _0801835E
	.align 2, 0
_080181A8: .4byte 0x00000397
_080181AC: .4byte sub_0801519C
_080181B0:
	mov r4, ip
	adds r4, #0xec
	ldrh r0, [r4]
	cmp r0, #0
	bne _080181F0
	mov r3, ip
	adds r3, #0x9e
	ldrh r1, [r3]
	movs r0, #2
	orrs r0, r1
	strh r0, [r3]
	ldr r2, _080181E4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080181E8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080181EC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x5a
	strh r0, [r4]
	adds r6, r3, #0
	b _080181F8
	.align 2, 0
_080181E4: .4byte gRngVal
_080181E8: .4byte 0x00196225
_080181EC: .4byte 0x3C6EF35F
_080181F0:
	subs r0, #1
	strh r0, [r4]
	mov r6, ip
	adds r6, #0x9e
_080181F8:
	mov r0, ip
	adds r0, #0xea
	ldrh r2, [r0]
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _080182A0
	mov r2, ip
	adds r2, #0xe8
	ldrh r1, [r2]
	ldr r0, _08018228 @ =0x0000FFCF
	ands r0, r1
	strh r0, [r2]
	movs r3, #0
	mov r1, ip
	ldr r0, [r1, #0x40]
	ldr r1, [r0, #0x40]
	ldr r0, _0801822C @ =0x00001FFF
	adds r4, r2, #0
	cmp r1, r0
	bgt _08018234
	movs r3, #0x10
	ldr r2, _08018230 @ =gRngVal
	b _08018276
	.align 2, 0
_08018228: .4byte 0x0000FFCF
_0801822C: .4byte 0x00001FFF
_08018230: .4byte gRngVal
_08018234:
	movs r0, #0xd0
	lsls r0, r0, #8
	cmp r1, r0
	ble _08018248
	movs r3, #0x20
	ldr r2, _08018244 @ =gRngVal
	b _08018276
	.align 2, 0
_08018244: .4byte gRngVal
_08018248:
	ldr r2, _08018264 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08018268 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0801826C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #7
	ands r1, r0
	cmp r1, #1
	bhi _08018270
	movs r3, #0x20
	b _08018276
	.align 2, 0
_08018264: .4byte gRngVal
_08018268: .4byte 0x00196225
_0801826C: .4byte 0x3C6EF35F
_08018270:
	cmp r1, #3
	bhi _08018276
	movs r3, #0x10
_08018276:
	ldrh r0, [r4]
	orrs r3, r0
	strh r3, [r4]
	ldr r1, [r2]
	ldr r0, _08018298 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0801829C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	ldrh r2, [r5]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x10
	orrs r2, r0
	strh r2, [r5]
	b _080182A8
	.align 2, 0
_08018298: .4byte 0x00196225
_0801829C: .4byte 0x3C6EF35F
_080182A0:
	subs r0, r2, #1
	strh r0, [r5]
	mov r4, ip
	adds r4, #0xe8
_080182A8:
	ldrh r1, [r5]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08018350
	ldrh r1, [r4]
	ldr r0, _080182D0 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r4]
	movs r3, #0
	mov r2, ip
	ldr r0, [r2, #0x40]
	ldr r2, [r0, #0x44]
	ldr r0, _080182D4 @ =0x000077FF
	cmp r2, r0
	bgt _080182DC
	movs r3, #0x80
	ldr r2, _080182D8 @ =gRngVal
	b _08018322
	.align 2, 0
_080182D0: .4byte 0x0000FF3F
_080182D4: .4byte 0x000077FF
_080182D8: .4byte gRngVal
_080182DC:
	movs r0, #0x98
	lsls r0, r0, #8
	cmp r2, r0
	ble _080182F0
	movs r3, #0x40
	ldr r2, _080182EC @ =gRngVal
	b _08018322
	.align 2, 0
_080182EC: .4byte gRngVal
_080182F0:
	ldr r2, _08018310 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08018314 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08018318 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #0x1f
	ands r1, r0
	cmp r1, #0
	beq _0801831C
	cmp r1, #1
	beq _08018320
	b _08018322
	.align 2, 0
_08018310: .4byte gRngVal
_08018314: .4byte 0x00196225
_08018318: .4byte 0x3C6EF35F
_0801831C:
	movs r3, #0x40
	b _08018322
_08018320:
	movs r3, #0x80
_08018322:
	ldrh r0, [r4]
	orrs r3, r0
	strh r3, [r4]
	ldr r1, [r2]
	ldr r0, _08018348 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0801834C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	ldrh r2, [r5]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, #8
	lsls r0, r0, #8
	orrs r2, r0
	strh r2, [r5]
	b _08018356
	.align 2, 0
_08018348: .4byte 0x00196225
_0801834C: .4byte 0x3C6EF35F
_08018350:
	ldr r2, _08018364 @ =0xFFFFFF00
	adds r0, r1, r2
	strh r0, [r5]
_08018356:
	ldrh r0, [r6]
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r6]
_0801835E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08018364: .4byte 0xFFFFFF00

	thumb_func_start sub_08018368
sub_08018368: @ 0x08018368
	movs r0, #0
	bx lr

	thumb_func_start sub_0801836C
sub_0801836C: @ 0x0801836C
	movs r1, #0
	str r1, [r0, #0x48]
	bx lr
	.align 2, 0

	thumb_func_start sub_08018374
sub_08018374: @ 0x08018374
	push {lr}
	movs r1, #0
	str r1, [r0, #0x48]
	bl sub_08010818
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start nullsub_103
nullsub_103: @ 0x08018384
	bx lr
	.align 2, 0

	thumb_func_start sub_08018388
sub_08018388: @ 0x08018388
	adds r0, #0xb8
	ldrh r1, [r0]
	adds r1, #1
	strh r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08018394
sub_08018394: @ 0x08018394
	ldr r1, [r0, #0x10]
	movs r2, #0xc
	orrs r1, r2
	str r1, [r0, #0x10]
	bx lr
	.align 2, 0

	thumb_func_start sub_080183A0
sub_080183A0: @ 0x080183A0
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0xb8
	ldrh r1, [r4]
	adds r1, #1
	strh r1, [r4]
	ldrh r2, [r4]
	adds r1, r0, #0
	adds r1, #0xb4
	ldr r3, [r1]
	lsls r1, r2, #1
	adds r1, r1, r3
	ldrh r1, [r1]
	adds r2, #1
	strh r2, [r4]
	ldr r2, [r0, #0x10]
	movs r3, #8
	orrs r2, r3
	str r2, [r0, #0x10]
	bl sub_08019734
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080183D0
sub_080183D0: @ 0x080183D0
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0xb8
	ldrh r1, [r4]
	adds r1, #1
	strh r1, [r4]
	ldrh r2, [r4]
	adds r1, r0, #0
	adds r1, #0xb4
	ldr r3, [r1]
	lsls r1, r2, #1
	adds r1, r1, r3
	ldrh r1, [r1]
	adds r2, #1
	strh r2, [r4]
	ldr r2, [r0, #0x10]
	movs r3, #8
	orrs r2, r3
	str r2, [r0, #0x10]
	bl sub_08019784
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08018400
sub_08018400: @ 0x08018400
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xb8
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldrh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xb4
	ldr r1, [r1]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x3e
	strb r1, [r0]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	bx lr

	thumb_func_start sub_08018428
sub_08018428: @ 0x08018428
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0xb8
	ldrh r1, [r4]
	adds r1, #1
	strh r1, [r4]
	ldrh r2, [r4]
	adds r1, r0, #0
	adds r1, #0xb4
	ldr r3, [r1]
	lsls r1, r2, #1
	adds r1, r1, r3
	ldrh r1, [r1]
	adds r2, #1
	strh r2, [r4]
	ldr r2, [r0, #0x10]
	movs r3, #8
	orrs r2, r3
	str r2, [r0, #0x10]
	bl sub_080197BC
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08018458
sub_08018458: @ 0x08018458
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0xb8
	ldrh r1, [r4]
	adds r1, #1
	strh r1, [r4]
	ldrh r2, [r4]
	adds r1, r0, #0
	adds r1, #0xb4
	ldr r3, [r1]
	lsls r1, r2, #1
	adds r1, r1, r3
	ldrh r1, [r1]
	adds r2, #1
	strh r2, [r4]
	ldr r2, [r0, #0x10]
	movs r3, #8
	orrs r2, r3
	str r2, [r0, #0x10]
	bl sub_0801984C
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08018488
sub_08018488: @ 0x08018488
	push {lr}
	adds r2, r0, #0
	adds r2, #0xb8
	ldrh r1, [r2]
	adds r1, #1
	strh r1, [r2]
	ldr r1, [r0, #0x10]
	movs r2, #8
	orrs r1, r2
	str r1, [r0, #0x10]
	bl sub_080199CC
	pop {r0}
	bx r0

	thumb_func_start sub_080184A4
sub_080184A4: @ 0x080184A4
	adds r3, r0, #0
	adds r3, #0xb8
	ldrh r1, [r3]
	adds r1, #1
	strh r1, [r3]
	ldrh r1, [r3]
	adds r0, #0xb4
	ldr r2, [r0]
	lsls r0, r1, #1
	adds r0, r0, r2
	adds r1, #1
	ldrh r0, [r0]
	adds r1, r1, r0
	strh r1, [r3]
	bx lr
	.align 2, 0

	thumb_func_start sub_080184C4
sub_080184C4: @ 0x080184C4
	adds r2, r0, #0
	adds r2, #0xb8
	ldrh r1, [r2]
	adds r1, #1
	strh r1, [r2]
	ldr r1, _080184D4 @ =sub_080184DC
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_080184D4: .4byte sub_080184DC

	thumb_func_start nullsub_104
nullsub_104: @ 0x080184D8
	bx lr
	.align 2, 0

	thumb_func_start sub_080184DC
sub_080184DC: @ 0x080184DC
	ldr r1, _080184E4 @ =sub_08013B98
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_080184E4: .4byte sub_08013B98

	thumb_func_start sub_080184E8
sub_080184E8: @ 0x080184E8
	ldr r1, [r0, #0x10]
	movs r2, #2
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #0x10]
	ldr r1, _080184FC @ =sub_0801858C
	str r1, [r0, #8]
	ldr r1, _08018500 @ =sub_08019BF0
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_080184FC: .4byte sub_0801858C
_08018500: .4byte sub_08019BF0

	thumb_func_start sub_08018504
sub_08018504: @ 0x08018504
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x14]
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _08018520 @ =0x00000397
	cmp r1, r0
	beq _0801851C
	ldr r0, _08018524 @ =sub_08013A60
	str r0, [r2, #4]
_0801851C:
	pop {r0}
	bx r0
	.align 2, 0
_08018520: .4byte 0x00000397
_08018524: .4byte sub_08013A60

	thumb_func_start nullsub_105
nullsub_105: @ 0x08018528
	bx lr
	.align 2, 0

	thumb_func_start sub_0801852C
sub_0801852C: @ 0x0801852C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x14]
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _08018548 @ =0x00000397
	cmp r1, r0
	bne _08018550
	ldr r0, _0801854C @ =sub_080185EC
	str r0, [r4, #8]
	b _08018580
	.align 2, 0
_08018548: .4byte 0x00000397
_0801854C: .4byte sub_080185EC
_08018550:
	ldr r0, _08018588 @ =gUnk_0203AD40
	ldr r2, [r0]
	movs r1, #3
	ands r2, r1
	ldr r0, [r4, #0x40]
	adds r0, #0x56
	ldrb r0, [r0]
	ands r1, r0
	cmp r2, r1
	bne _0801856A
	adds r0, r4, #0
	bl sub_08018610
_0801856A:
	ldr r0, [r4, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0801857A
	adds r0, r4, #0
	bl sub_080108B8
_0801857A:
	adds r0, r4, #0
	bl sub_0800FF60
_08018580:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08018588: .4byte gUnk_0203AD40

	thumb_func_start sub_0801858C
sub_0801858C: @ 0x0801858C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x14]
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _080185A8 @ =0x00000397
	cmp r1, r0
	bne _080185B0
	ldr r0, _080185AC @ =sub_080185EC
	str r0, [r4, #8]
	b _080185E0
	.align 2, 0
_080185A8: .4byte 0x00000397
_080185AC: .4byte sub_080185EC
_080185B0:
	ldr r0, _080185E8 @ =gUnk_0203AD40
	ldr r2, [r0]
	movs r1, #1
	ands r2, r1
	ldr r0, [r4, #0x40]
	adds r0, #0x56
	ldrb r0, [r0]
	ands r1, r0
	cmp r2, r1
	bne _080185CA
	adds r0, r4, #0
	bl sub_08018640
_080185CA:
	ldr r0, [r4, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080185DA
	adds r0, r4, #0
	bl sub_080108B8
_080185DA:
	adds r0, r4, #0
	bl sub_0800FF60
_080185E0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080185E8: .4byte gUnk_0203AD40

	thumb_func_start sub_080185EC
sub_080185EC: @ 0x080185EC
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x14]
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _08018608 @ =0x00000397
	cmp r1, r0
	beq _08018604
	ldr r0, _0801860C @ =sub_0801852C
	str r0, [r2, #8]
_08018604:
	pop {r0}
	bx r0
	.align 2, 0
_08018608: .4byte 0x00000397
_0801860C: .4byte sub_0801852C

	thumb_func_start sub_08018610
sub_08018610: @ 0x08018610
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x40]
	bl sub_0800EEBC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	ldrb r0, [r4, #0x1a]
	cmp r1, r0
	beq _0801862C
	ldrh r0, [r4, #0x3c]
	adds r0, #1
	strh r0, [r4, #0x3c]
_0801862C:
	strb r1, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_0800F044
	adds r0, r4, #0
	bl sub_08010294
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08018640
sub_08018640: @ 0x08018640
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	bl sub_0800F044
	ldr r0, [r4, #0x40]
	bl sub_0800EEBC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	ldrb r0, [r4, #0x1a]
	cmp r1, r0
	beq _08018662
	ldrh r0, [r4, #0x3c]
	adds r0, #1
	strh r0, [r4, #0x3c]
_08018662:
	strb r1, [r4, #0x1a]
	adds r3, r4, #0
	adds r3, #0x3f
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _08018670
	movs r5, #1
_08018670:
	cmp r5, #0
	beq _08018690
	ldr r0, [r4, #0x14]
	movs r1, #0xf4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r1, [r4, #0x1a]
	ldr r2, [r0, #0x14]
	movs r0, #0x34
	muls r0, r1, r0
	adds r0, r0, r2
	ldrb r1, [r4, #0x1b]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r3]
_08018690:
	adds r0, r4, #0
	bl sub_08010144
	adds r0, r4, #0
	bl sub_08010294
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080186A4
sub_080186A4: @ 0x080186A4
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x40]
	ldr r1, _080186C0 @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0x13
	bne _080186C4
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #1
	b _080186CC
	.align 2, 0
_080186C0: .4byte 0x00000103
_080186C4:
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
_080186CC:
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _080186D8 @ =sub_080152B0
	str r0, [r3, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_080186D8: .4byte sub_080152B0

	thumb_func_start sub_080186DC
sub_080186DC: @ 0x080186DC
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x10]
	subs r2, #0x3f
	ldrh r1, [r2]
	movs r0, #4
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08018708 @ =sub_0801519C
	str r0, [r3, #0xc]
	bx lr
	.align 2, 0
_08018708: .4byte sub_0801519C

	thumb_func_start sub_0801870C
sub_0801870C: @ 0x0801870C
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #2
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r2, _08018748 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0801874C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08018750 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r1, r3, #0
	adds r1, #0xde
	strh r0, [r1]
	ldr r0, _08018754 @ =sub_080156FC
	str r0, [r3, #0xc]
	bx lr
	.align 2, 0
_08018748: .4byte gRngVal
_0801874C: .4byte 0x00196225
_08018750: .4byte 0x3C6EF35F
_08018754: .4byte sub_080156FC

	thumb_func_start sub_08018758
sub_08018758: @ 0x08018758
	ldr r1, _08018760 @ =sub_0801519C
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08018760: .4byte sub_0801519C

	thumb_func_start sub_08018764
sub_08018764: @ 0x08018764
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #3
	strb r0, [r1]
	ldr r1, [r3, #0x40]
	ldr r2, _08018788 @ =0x00000103
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _08018790
	ldr r0, _0801878C @ =sub_08018BF4
	b _080187A6
	.align 2, 0
_08018788: .4byte 0x00000103
_0801878C: .4byte sub_08018BF4
_08018790:
	ldr r0, [r1, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080187A4
	ldr r0, _080187A0 @ =sub_08018B18
	b _080187A6
	.align 2, 0
_080187A0: .4byte sub_08018B18
_080187A4:
	ldr r0, _080187AC @ =sub_08015970
_080187A6:
	str r0, [r3, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_080187AC: .4byte sub_08015970

	thumb_func_start sub_080187B0
sub_080187B0: @ 0x080187B0
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #4
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x9a
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, _080187E0 @ =0x000001FF
	movs r3, #0x20
	cmp r1, r0
	bgt _080187CE
	movs r3, #0x10
_080187CE:
	adds r0, r2, #0
	adds r0, #0xea
	strh r3, [r0]
	subs r0, #0x4c
	strh r3, [r0]
	ldr r0, _080187E4 @ =sub_080187E8
	str r0, [r2, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_080187E0: .4byte 0x000001FF
_080187E4: .4byte sub_080187E8

	thumb_func_start sub_080187E8
sub_080187E8: @ 0x080187E8
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08018800
	ldr r0, _08018804 @ =sub_08018808
	str r0, [r2, #0xc]
_08018800:
	pop {r0}
	bx r0
	.align 2, 0
_08018804: .4byte sub_08018808

	thumb_func_start sub_08018808
sub_08018808: @ 0x08018808
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #4
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0xea
	ldrh r0, [r0]
	subs r1, #0x4a
	strh r0, [r1]
	ldr r0, _08018824 @ =sub_08018828
	str r0, [r2, #0xc]
	bx lr
	.align 2, 0
_08018824: .4byte sub_08018828

	thumb_func_start sub_08018828
sub_08018828: @ 0x08018828
	push {lr}
	adds r2, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0x9e
	strh r0, [r1]
	adds r1, #0x4a
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08018848
	ldr r0, _0801884C @ =sub_08015A4C
	str r0, [r2, #0xc]
_08018848:
	pop {r0}
	bx r0
	.align 2, 0
_0801884C: .4byte sub_08015A4C

	thumb_func_start sub_08018850
sub_08018850: @ 0x08018850
	adds r2, r0, #0
	adds r2, #0xe8
	movs r1, #0x5a
	strh r1, [r2]
	ldr r1, _08018860 @ =sub_08018864
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08018860: .4byte sub_08018864

	thumb_func_start sub_08018864
sub_08018864: @ 0x08018864
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801887C
	ldr r0, _08018880 @ =sub_08015A4C
	str r0, [r2, #0xc]
_0801887C:
	pop {r0}
	bx r0
	.align 2, 0
_08018880: .4byte sub_08015A4C

	thumb_func_start sub_08018884
sub_08018884: @ 0x08018884
	push {r4, lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	movs r2, #0xdd
	adds r2, r2, r3
	mov ip, r2
	movs r2, #0
	mov r4, ip
	strb r0, [r4]
	movs r0, #5
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x10]
	adds r0, r3, #0
	adds r0, #0xe8
	strh r2, [r0]
	ldr r0, _080188B8 @ =sub_080188BC
	str r0, [r3, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080188B8: .4byte sub_080188BC

	thumb_func_start sub_080188BC
sub_080188BC: @ 0x080188BC
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x9e
	movs r0, #0x80
	strh r0, [r1]
	movs r0, #0xde
	adds r0, r0, r3
	mov ip, r0
	adds r2, r3, #0
	adds r2, #0xe8
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	mov r2, ip
	ldrh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bhs _080188E8
	ldr r0, _080188EC @ =sub_0801519C
	str r0, [r3, #0xc]
_080188E8:
	pop {r0}
	bx r0
	.align 2, 0
_080188EC: .4byte sub_0801519C

	thumb_func_start sub_080188F0
sub_080188F0: @ 0x080188F0
	push {lr}
	adds r3, r0, #0
	adds r0, #0xe8
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #9
	bhi _08018924
	adds r1, r3, #0
	adds r1, #0x9e
	movs r0, #0x80
	strh r0, [r1]
	ldr r0, [r3, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	subs r0, #0x2d
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08018928
	ldr r0, _08018920 @ =sub_08018930
	b _08018926
	.align 2, 0
_08018920: .4byte sub_08018930
_08018924:
	ldr r0, _0801892C @ =sub_0801519C
_08018926:
	str r0, [r3, #0xc]
_08018928:
	pop {r0}
	bx r0
	.align 2, 0
_0801892C: .4byte sub_0801519C

	thumb_func_start sub_08018930
sub_08018930: @ 0x08018930
	adds r2, r0, #0
	adds r2, #0xec
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08018940 @ =sub_08018944
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08018940: .4byte sub_08018944

	thumb_func_start sub_08018944
sub_08018944: @ 0x08018944
	push {lr}
	adds r3, r0, #0
	ldr r2, _0801898C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08018990 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08018994 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x1e
	adds r1, r3, #0
	adds r1, #0xe8
	strh r0, [r1]
	subs r1, #0x4e
	ldr r2, _08018998 @ =0xFFFFFEFF
	adds r0, r2, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	movs r1, #0xff
	lsls r1, r1, #0x11
	movs r2, #0x80
	cmp r0, r1
	bhi _0801897C
	movs r2, #0x40
_0801897C:
	adds r0, r3, #0
	adds r0, #0xea
	strh r2, [r0]
	ldr r0, _0801899C @ =sub_0801602C
	str r0, [r3, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_0801898C: .4byte gRngVal
_08018990: .4byte 0x00196225
_08018994: .4byte 0x3C6EF35F
_08018998: .4byte 0xFFFFFEFF
_0801899C: .4byte sub_0801602C

	thumb_func_start sub_080189A0
sub_080189A0: @ 0x080189A0
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xe8
	movs r0, #4
	strh r0, [r1]
	ldr r2, _080189CC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080189D0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080189D4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	adds r1, r3, #0
	adds r1, #0xea
	strh r0, [r1]
	ldr r0, _080189D8 @ =sub_0801617C
	str r0, [r3, #0xc]
	bx lr
	.align 2, 0
_080189CC: .4byte gRngVal
_080189D0: .4byte 0x00196225
_080189D4: .4byte 0x3C6EF35F
_080189D8: .4byte sub_0801617C

	thumb_func_start sub_080189DC
sub_080189DC: @ 0x080189DC
	push {lr}
	adds r2, r0, #0
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0
	beq _080189FC
	adds r0, r2, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #4
	beq _08018A08
	ldr r0, _080189F8 @ =sub_08015970
	b _08018A06
	.align 2, 0
_080189F8: .4byte sub_08015970
_080189FC:
	adds r0, r2, #0
	adds r0, #0xe8
	movs r1, #8
	strh r1, [r0]
	ldr r0, _08018A0C @ =sub_08018A10
_08018A06:
	str r0, [r2, #0xc]
_08018A08:
	pop {r0}
	bx r0
	.align 2, 0
_08018A0C: .4byte sub_08018A10

	thumb_func_start sub_08018A10
sub_08018A10: @ 0x08018A10
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08018A34
	ldr r0, _08018A38 @ =sub_08018A3C
	str r0, [r3, #0xc]
_08018A34:
	pop {r0}
	bx r0
	.align 2, 0
_08018A38: .4byte sub_08018A3C

	thumb_func_start sub_08018A3C
sub_08018A3C: @ 0x08018A3C
	adds r2, r0, #0
	adds r2, #0xe8
	movs r1, #0x10
	strh r1, [r2]
	ldr r1, _08018A4C @ =sub_08018A50
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08018A4C: .4byte sub_08018A50

	thumb_func_start sub_08018A50
sub_08018A50: @ 0x08018A50
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08018A94
	ldr r0, [r3, #0x40]
	ldr r0, [r0, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08018A90
	adds r0, r3, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #3
	beq _08018A94
	ldr r0, _08018A8C @ =sub_08018764
	b _08018A92
	.align 2, 0
_08018A8C: .4byte sub_08018764
_08018A90:
	ldr r0, _08018A98 @ =sub_08018A9C
_08018A92:
	str r0, [r3, #0xc]
_08018A94:
	pop {r0}
	bx r0
	.align 2, 0
_08018A98: .4byte sub_08018A9C

	thumb_func_start sub_08018A9C
sub_08018A9C: @ 0x08018A9C
	ldr r3, _08018AC0 @ =gRngVal
	ldr r2, [r3]
	ldr r1, _08018AC4 @ =0x00196225
	muls r1, r2, r1
	ldr r2, _08018AC8 @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r1, r1, #0x10
	movs r2, #0xf
	ands r1, r2
	adds r1, #8
	adds r2, r0, #0
	adds r2, #0xec
	strh r1, [r2]
	ldr r1, _08018ACC @ =sub_08018AD0
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08018AC0: .4byte gRngVal
_08018AC4: .4byte 0x00196225
_08018AC8: .4byte 0x3C6EF35F
_08018ACC: .4byte sub_08018AD0

	thumb_func_start sub_08018AD0
sub_08018AD0: @ 0x08018AD0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08018B08 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08018B0C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08018B10 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0xa
	adds r1, r4, #0
	adds r1, #0xe8
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08014B9C
	adds r1, r4, #0
	adds r1, #0xea
	strh r0, [r1]
	ldr r0, _08018B14 @ =sub_08016428
	str r0, [r4, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08018B08: .4byte gRngVal
_08018B0C: .4byte 0x00196225
_08018B10: .4byte 0x3C6EF35F
_08018B14: .4byte sub_08016428

	thumb_func_start sub_08018B18
sub_08018B18: @ 0x08018B18
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #9
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x10]
	ldr r2, [r3, #0x40]
	ldr r0, [r2, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08018B4C
	ldr r0, _08018B48 @ =sub_0801639C
	b _08018B62
	.align 2, 0
_08018B48: .4byte sub_0801639C
_08018B4C:
	ldr r0, [r2, #8]
	movs r1, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _08018B60
	ldr r0, _08018B5C @ =sub_08018B6C
	b _08018B62
	.align 2, 0
_08018B5C: .4byte sub_08018B6C
_08018B60:
	ldr r0, _08018B68 @ =sub_08018BAC
_08018B62:
	str r0, [r3, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_08018B68: .4byte sub_08018BAC

	thumb_func_start sub_08018B6C
sub_08018B6C: @ 0x08018B6C
	adds r2, r0, #0
	adds r2, #0xe8
	movs r1, #5
	strh r1, [r2]
	ldr r1, _08018B7C @ =sub_08018B80
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08018B7C: .4byte sub_08018B80

	thumb_func_start sub_08018B80
sub_08018B80: @ 0x08018B80
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08018BA4
	ldr r0, _08018BA8 @ =sub_08018BAC
	str r0, [r3, #0xc]
_08018BA4:
	pop {r0}
	bx r0
	.align 2, 0
_08018BA8: .4byte sub_08018BAC

	thumb_func_start sub_08018BAC
sub_08018BAC: @ 0x08018BAC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08018BE4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08018BE8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08018BEC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, #8
	adds r1, r4, #0
	adds r1, #0xe8
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08014DA4
	adds r1, r4, #0
	adds r1, #0xea
	strh r0, [r1]
	ldr r0, _08018BF0 @ =sub_08016C24
	str r0, [r4, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08018BE4: .4byte gRngVal
_08018BE8: .4byte 0x00196225
_08018BEC: .4byte 0x3C6EF35F
_08018BF0: .4byte sub_08016C24

	thumb_func_start sub_08018BF4
sub_08018BF4: @ 0x08018BF4
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r3, r2, #0
	adds r3, #0xdd
	strb r0, [r3]
	movs r0, #0xa
	strb r0, [r1]
	ldr r0, [r2, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r0, [r2, #0x40]
	ldr r1, _08018C24 @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _08018C2C
	ldr r0, _08018C28 @ =sub_0801519C
	b _08018C2E
	.align 2, 0
_08018C24: .4byte 0x00000103
_08018C28: .4byte sub_0801519C
_08018C2C:
	ldr r0, _08018C34 @ =sub_08018C38
_08018C2E:
	str r0, [r2, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_08018C34: .4byte sub_08018C38

	thumb_func_start sub_08018C38
sub_08018C38: @ 0x08018C38
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08018C70 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08018C74 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08018C78 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, #8
	adds r1, r4, #0
	adds r1, #0xe8
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08014FA0
	adds r1, r4, #0
	adds r1, #0xea
	strh r0, [r1]
	ldr r0, _08018C7C @ =sub_08016EF0
	str r0, [r4, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08018C70: .4byte gRngVal
_08018C74: .4byte 0x00196225
_08018C78: .4byte 0x3C6EF35F
_08018C7C: .4byte sub_08016EF0

	thumb_func_start sub_08018C80
sub_08018C80: @ 0x08018C80
	adds r1, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r2, r1, #0
	adds r2, #0xde
	strh r0, [r2]
	ldr r0, _08018C94 @ =sub_08018C98
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_08018C94: .4byte sub_08018C98

	thumb_func_start sub_08018C98
sub_08018C98: @ 0x08018C98
	adds r2, r0, #0
	adds r2, #0xe8
	movs r1, #0x10
	strh r1, [r2]
	ldr r1, _08018CA8 @ =sub_08018CAC
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08018CA8: .4byte sub_08018CAC

	thumb_func_start sub_08018CAC
sub_08018CAC: @ 0x08018CAC
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r1, r0
	strh r1, [r2]
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08018CD4
	movs r0, #0x1e
	strh r0, [r1]
	ldr r0, _08018CD8 @ =sub_08018CDC
	str r0, [r3, #0xc]
_08018CD4:
	pop {r0}
	bx r0
	.align 2, 0
_08018CD8: .4byte sub_08018CDC

	thumb_func_start sub_08018CDC
sub_08018CDC: @ 0x08018CDC
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x81
	orrs r0, r1
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	cmp r0, #0
	bne _08018D10
	ldr r0, [r3, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	subs r0, #0xd
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08018D14
	ldr r0, _08018D0C @ =sub_0801519C
	str r0, [r3, #0xc]
	b _08018D14
	.align 2, 0
_08018D0C: .4byte sub_0801519C
_08018D10:
	subs r0, #1
	strh r0, [r1]
_08018D14:
	pop {r0}
	bx r0

	thumb_func_start sub_08018D18
sub_08018D18: @ 0x08018D18
	adds r1, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r2, r1, #0
	adds r2, #0xde
	strh r0, [r2]
	ldr r0, _08018D2C @ =sub_08018D30
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_08018D2C: .4byte sub_08018D30

	thumb_func_start sub_08018D30
sub_08018D30: @ 0x08018D30
	adds r2, r0, #0
	adds r2, #0xe8
	movs r1, #2
	strh r1, [r2]
	ldr r1, _08018D40 @ =sub_08018D44
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08018D40: .4byte sub_08018D44

	thumb_func_start sub_08018D44
sub_08018D44: @ 0x08018D44
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08018D68
	ldr r0, _08018D6C @ =sub_0801519C
	str r0, [r3, #0xc]
_08018D68:
	pop {r0}
	bx r0
	.align 2, 0
_08018D6C: .4byte sub_0801519C

	thumb_func_start sub_08018D70
sub_08018D70: @ 0x08018D70
	adds r1, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r2, r1, #0
	adds r2, #0xde
	strh r0, [r2]
	ldr r0, _08018D84 @ =sub_08018D88
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_08018D84: .4byte sub_08018D88

	thumb_func_start sub_08018D88
sub_08018D88: @ 0x08018D88
	adds r2, r0, #0
	adds r2, #0xe8
	movs r1, #2
	strh r1, [r2]
	ldr r1, _08018D98 @ =sub_08018D9C
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08018D98: .4byte sub_08018D9C

	thumb_func_start sub_08018D9C
sub_08018D9C: @ 0x08018D9C
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08018DC0
	ldr r0, _08018DC4 @ =sub_0801519C
	str r0, [r3, #0xc]
_08018DC0:
	pop {r0}
	bx r0
	.align 2, 0
_08018DC4: .4byte sub_0801519C

	thumb_func_start sub_08018DC8
sub_08018DC8: @ 0x08018DC8
	adds r2, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0xde
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0xec
	ldrh r1, [r0]
	subs r0, #0xc
	strh r1, [r0]
	ldr r0, _08018DE4 @ =sub_08018DE8
	str r0, [r2, #0xc]
	bx lr
	.align 2, 0
_08018DE4: .4byte sub_08018DE8

	thumb_func_start sub_08018DE8
sub_08018DE8: @ 0x08018DE8
	push {lr}
	adds r3, r0, #0
	adds r0, #0xe0
	ldrh r1, [r0]
	cmp r1, #0
	bne _08018E20
	ldr r2, _08018E14 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08018E18 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08018E1C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xff
	ands r0, r1
	adds r0, #0x3c
	adds r1, r3, #0
	adds r1, #0xe8
	strh r0, [r1]
	b _08018E26
	.align 2, 0
_08018E14: .4byte gRngVal
_08018E18: .4byte 0x00196225
_08018E1C: .4byte 0x3C6EF35F
_08018E20:
	adds r0, r3, #0
	adds r0, #0xe8
	strh r1, [r0]
_08018E26:
	adds r1, r3, #0
	adds r1, #0xea
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08018E38 @ =sub_08017548
	str r0, [r3, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_08018E38: .4byte sub_08017548

	thumb_func_start sub_08018E3C
sub_08018E3C: @ 0x08018E3C
	adds r2, r0, #0
	adds r2, #0xe8
	movs r1, #2
	strh r1, [r2]
	ldr r1, _08018E4C @ =sub_08018E50
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08018E4C: .4byte sub_08018E50

	thumb_func_start sub_08018E50
sub_08018E50: @ 0x08018E50
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08018E74
	ldr r0, _08018E78 @ =sub_0801519C
	str r0, [r3, #0xc]
_08018E74:
	pop {r0}
	bx r0
	.align 2, 0
_08018E78: .4byte sub_0801519C

	thumb_func_start sub_08018E7C
sub_08018E7C: @ 0x08018E7C
	adds r1, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r2, r1, #0
	adds r2, #0xde
	strh r0, [r2]
	ldr r0, _08018E90 @ =sub_08018E94
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_08018E90: .4byte sub_08018E94

	thumb_func_start sub_08018E94
sub_08018E94: @ 0x08018E94
	ldr r3, _08018EB8 @ =gRngVal
	ldr r2, [r3]
	ldr r1, _08018EBC @ =0x00196225
	muls r1, r2, r1
	ldr r2, _08018EC0 @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r1, r1, #0x10
	movs r2, #0x7f
	ands r1, r2
	adds r1, #5
	adds r2, r0, #0
	adds r2, #0xe8
	strh r1, [r2]
	ldr r1, _08018EC4 @ =sub_08018EC8
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08018EB8: .4byte gRngVal
_08018EBC: .4byte 0x00196225
_08018EC0: .4byte 0x3C6EF35F
_08018EC4: .4byte sub_08018EC8

	thumb_func_start sub_08018EC8
sub_08018EC8: @ 0x08018EC8
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08018EEC
	ldr r0, _08018EF0 @ =sub_0801519C
	str r0, [r3, #0xc]
_08018EEC:
	pop {r0}
	bx r0
	.align 2, 0
_08018EF0: .4byte sub_0801519C

	thumb_func_start sub_08018EF4
sub_08018EF4: @ 0x08018EF4
	adds r3, r0, #0
	ldr r2, _08018F24 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08018F28 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08018F2C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x10
	adds r1, r3, #0
	adds r1, #0xe8
	strh r0, [r1]
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08018F30 @ =sub_08017800
	str r0, [r3, #0xc]
	bx lr
	.align 2, 0
_08018F24: .4byte gRngVal
_08018F28: .4byte 0x00196225
_08018F2C: .4byte 0x3C6EF35F
_08018F30: .4byte sub_08017800

	thumb_func_start sub_08018F34
sub_08018F34: @ 0x08018F34
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #0x12
	strb r0, [r1]
	ldr r0, _08018F4C @ =sub_08018F50
	str r0, [r3, #0xc]
	bx lr
	.align 2, 0
_08018F4C: .4byte sub_08018F50

	thumb_func_start sub_08018F50
sub_08018F50: @ 0x08018F50
	adds r2, r0, #0
	adds r2, #0xe8
	movs r1, #0xb4
	strh r1, [r2]
	ldr r1, _08018F60 @ =sub_0801786C
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08018F60: .4byte sub_0801786C

	thumb_func_start sub_08018F64
sub_08018F64: @ 0x08018F64
	adds r1, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r2, r1, #0
	adds r2, #0xde
	strh r0, [r2]
	ldr r0, _08018F78 @ =sub_08018F7C
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_08018F78: .4byte sub_08018F7C

	thumb_func_start sub_08018F7C
sub_08018F7C: @ 0x08018F7C
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0x10
	strh r0, [r1]
	adds r3, r2, #0
	adds r3, #0x9e
	ldrh r1, [r3]
	movs r0, #2
	orrs r0, r1
	strh r0, [r3]
	ldr r0, _08018F98 @ =sub_08018F9C
	str r0, [r2, #0xc]
	bx lr
	.align 2, 0
_08018F98: .4byte sub_08018F9C

	thumb_func_start sub_08018F9C
sub_08018F9C: @ 0x08018F9C
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08018FB4
	ldr r0, _08018FB8 @ =sub_08018FBC
	str r0, [r2, #0xc]
_08018FB4:
	pop {r0}
	bx r0
	.align 2, 0
_08018FB8: .4byte sub_08018FBC

	thumb_func_start sub_08018FBC
sub_08018FBC: @ 0x08018FBC
	adds r2, r0, #0
	adds r2, #0xe8
	movs r1, #4
	strh r1, [r2]
	ldr r1, _08018FCC @ =sub_08018FD0
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08018FCC: .4byte sub_08018FD0

	thumb_func_start sub_08018FD0
sub_08018FD0: @ 0x08018FD0
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
	movs r4, #0
	orrs r1, r0
	strh r1, [r2]
	adds r0, r3, #0
	adds r0, #0xe0
	ldrh r0, [r0]
	cmp r0, #2
	bne _08018FF2
	movs r0, #0x40
	orrs r1, r0
	strh r1, [r2]
_08018FF2:
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019006
	ldr r0, _0801900C @ =sub_08019010
	str r0, [r3, #0xc]
_08019006:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801900C: .4byte sub_08019010

	thumb_func_start sub_08019010
sub_08019010: @ 0x08019010
	push {lr}
	adds r2, r0, #0
	adds r2, #0xe8
	movs r1, #4
	strh r1, [r2]
	ldr r1, _08019028 @ =sub_0801902C
	str r1, [r0, #0xc]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08019028: .4byte sub_0801902C

	thumb_func_start sub_0801902C
sub_0801902C: @ 0x0801902C
	push {lr}
	adds r3, r0, #0
	adds r0, #0xe0
	ldrh r0, [r0]
	cmp r0, #2
	bne _08019044
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r2]
_08019044:
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019058
	ldr r0, _0801905C @ =sub_08019060
	str r0, [r3, #0xc]
_08019058:
	pop {r0}
	bx r0
	.align 2, 0
_0801905C: .4byte sub_08019060

	thumb_func_start sub_08019060
sub_08019060: @ 0x08019060
	adds r2, r0, #0
	adds r2, #0xe8
	movs r1, #0x3c
	strh r1, [r2]
	ldr r1, _08019070 @ =sub_08019074
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08019070: .4byte sub_08019074

	thumb_func_start sub_08019074
sub_08019074: @ 0x08019074
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801908C
	ldr r0, _08019090 @ =sub_0801519C
	str r0, [r2, #0xc]
_0801908C:
	pop {r0}
	bx r0
	.align 2, 0
_08019090: .4byte sub_0801519C

	thumb_func_start sub_08019094
sub_08019094: @ 0x08019094
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #0x14
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r1, [r3, #0x40]
	ldr r2, _080190C0 @ =0x00000103
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #8
	beq _080190C8
	ldr r0, _080190C4 @ =sub_0801519C
	b _080190DE
	.align 2, 0
_080190C0: .4byte 0x00000103
_080190C4: .4byte sub_0801519C
_080190C8:
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	bne _080190DC
	ldr r0, _080190D8 @ =sub_08019138
	b _080190DE
	.align 2, 0
_080190D8: .4byte sub_08019138
_080190DC:
	ldr r0, _080190E4 @ =sub_080190E8
_080190DE:
	str r0, [r3, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_080190E4: .4byte sub_080190E8

	thumb_func_start sub_080190E8
sub_080190E8: @ 0x080190E8
	ldr r1, _080190F0 @ =sub_080190F4
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_080190F0: .4byte sub_080190F4

	thumb_func_start sub_080190F4
sub_080190F4: @ 0x080190F4
	adds r3, r0, #0
	adds r3, #0x9e
	ldrh r2, [r3]
	movs r1, #2
	orrs r1, r2
	strh r1, [r3]
	ldr r1, _08019108 @ =sub_0801910C
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08019108: .4byte sub_0801910C

	thumb_func_start sub_0801910C
sub_0801910C: @ 0x0801910C
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	cmp r0, #0
	bne _08019130
	ldr r0, [r2, #0x40]
	ldr r0, [r0, #8]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08019134
	ldr r0, _0801912C @ =sub_08019138
	str r0, [r2, #0xc]
	b _08019134
	.align 2, 0
_0801912C: .4byte sub_08019138
_08019130:
	subs r0, #1
	strh r0, [r1]
_08019134:
	pop {r0}
	bx r0

	thumb_func_start sub_08019138
sub_08019138: @ 0x08019138
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _08019168 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0801916C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08019170 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x3f
	ands r0, r1
	adds r0, #5
	adds r1, r3, #0
	adds r1, #0xe8
	strh r0, [r1]
	ldr r0, _08019174 @ =sub_08019178
	str r0, [r3, #0xc]
	bx lr
	.align 2, 0
_08019168: .4byte gRngVal
_0801916C: .4byte 0x00196225
_08019170: .4byte 0x3C6EF35F
_08019174: .4byte sub_08019178

	thumb_func_start sub_08019178
sub_08019178: @ 0x08019178
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019190
	ldr r0, _08019194 @ =sub_0801519C
	str r0, [r2, #0xc]
_08019190:
	pop {r0}
	bx r0
	.align 2, 0
_08019194: .4byte sub_0801519C

	thumb_func_start sub_08019198
sub_08019198: @ 0x08019198
	push {lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	adds r2, r3, #0
	adds r2, #0xdd
	strb r0, [r2]
	movs r0, #0x15
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r0, [r3, #0x40]
	ldr r1, _080191C8 @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #8
	beq _080191D0
	cmp r0, #0x16
	beq _080191D0
	ldr r0, _080191CC @ =sub_0801519C
	b _080191E6
	.align 2, 0
_080191C8: .4byte 0x00000103
_080191CC: .4byte sub_0801519C
_080191D0:
	ldr r0, [r3, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	bne _080191E4
	ldr r0, _080191E0 @ =sub_08019378
	b _080191E6
	.align 2, 0
_080191E0: .4byte sub_08019378
_080191E4:
	ldr r0, _080191EC @ =sub_080191F0
_080191E6:
	str r0, [r3, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_080191EC: .4byte sub_080191F0

	thumb_func_start sub_080191F0
sub_080191F0: @ 0x080191F0
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x40]
	ldr r3, _08019210 @ =0x00000103
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #8
	bne _08019218
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	bne _08019218
	ldr r0, _08019214 @ =sub_08019378
	b _0801923E
	.align 2, 0
_08019210: .4byte 0x00000103
_08019214: .4byte sub_08019378
_08019218:
	ldr r0, [r2, #0x40]
	ldr r1, [r0, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801922C
	ldr r0, _08019228 @ =sub_0801519C
	b _0801923E
	.align 2, 0
_08019228: .4byte sub_0801519C
_0801922C:
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	beq _0801923C
	ldr r0, _08019238 @ =sub_08017A4C
	b _0801923E
	.align 2, 0
_08019238: .4byte sub_08017A4C
_0801923C:
	ldr r0, _08019244 @ =sub_08019248
_0801923E:
	str r0, [r2, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_08019244: .4byte sub_08019248

	thumb_func_start sub_08019248
sub_08019248: @ 0x08019248
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x40]
	ldr r1, _08019260 @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #8
	beq _08019268
	cmp r0, #0x16
	beq _08019268
	ldr r0, _08019264 @ =sub_0801519C
	b _0801927E
	.align 2, 0
_08019260: .4byte 0x00000103
_08019264: .4byte sub_0801519C
_08019268:
	ldr r0, [r2, #0x40]
	ldr r0, [r0, #8]
	movs r1, #0x60
	ands r0, r1
	cmp r0, #0
	beq _0801927C
	ldr r0, _08019278 @ =sub_0801519C
	b _0801927E
	.align 2, 0
_08019278: .4byte sub_0801519C
_0801927C:
	ldr r0, _08019284 @ =sub_08019288
_0801927E:
	str r0, [r2, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_08019284: .4byte sub_08019288

	thumb_func_start sub_08019288
sub_08019288: @ 0x08019288
	ldr r3, _080192AC @ =gRngVal
	ldr r2, [r3]
	ldr r1, _080192B0 @ =0x00196225
	muls r1, r2, r1
	ldr r2, _080192B4 @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r1, r1, #0x10
	movs r2, #0xf
	ands r1, r2
	adds r1, #0xa
	adds r2, r0, #0
	adds r2, #0xe8
	strh r1, [r2]
	ldr r1, _080192B8 @ =sub_08017950
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_080192AC: .4byte gRngVal
_080192B0: .4byte 0x00196225
_080192B4: .4byte 0x3C6EF35F
_080192B8: .4byte sub_08017950

	thumb_func_start sub_080192BC
sub_080192BC: @ 0x080192BC
	adds r3, r0, #0
	adds r3, #0x9e
	ldrh r2, [r3]
	movs r1, #2
	orrs r1, r2
	strh r1, [r3]
	ldr r1, _080192D0 @ =sub_080192D4
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_080192D0: .4byte sub_080192D4

	thumb_func_start sub_080192D4
sub_080192D4: @ 0x080192D4
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x40]
	ldr r1, _080192EC @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #8
	beq _080192F4
	cmp r0, #0x16
	beq _080192F4
	ldr r0, _080192F0 @ =sub_0801519C
	b _0801931A
	.align 2, 0
_080192EC: .4byte 0x00000103
_080192F0: .4byte sub_0801519C
_080192F4:
	ldr r0, [r3, #0x40]
	ldr r1, [r0, #8]
	movs r2, #0x60
	ands r2, r1
	cmp r2, #0x20
	beq _08019308
	ldr r0, _08019304 @ =sub_0801519C
	b _0801931A
	.align 2, 0
_08019304: .4byte sub_0801519C
_08019308:
	ands r1, r2
	cmp r1, #0
	bne _0801931C
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0801931C
	ldr r0, _08019320 @ =sub_08019324
_0801931A:
	str r0, [r3, #0xc]
_0801931C:
	pop {r0}
	bx r0
	.align 2, 0
_08019320: .4byte sub_08019324

	thumb_func_start sub_08019324
sub_08019324: @ 0x08019324
	ldr r3, _08019348 @ =gRngVal
	ldr r2, [r3]
	ldr r1, _0801934C @ =0x00196225
	muls r1, r2, r1
	ldr r2, _08019350 @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r1, r1, #0x10
	movs r2, #0x3f
	ands r1, r2
	adds r1, #0xf
	adds r2, r0, #0
	adds r2, #0xe8
	strh r1, [r2]
	ldr r1, _08019354 @ =sub_08019358
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08019348: .4byte gRngVal
_0801934C: .4byte 0x00196225
_08019350: .4byte 0x3C6EF35F
_08019354: .4byte sub_08019358

	thumb_func_start sub_08019358
sub_08019358: @ 0x08019358
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019370
	ldr r0, _08019374 @ =sub_08019378
	str r0, [r2, #0xc]
_08019370:
	pop {r0}
	bx r0
	.align 2, 0
_08019374: .4byte sub_08019378

	thumb_func_start sub_08019378
sub_08019378: @ 0x08019378
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x40]
	ldr r2, _08019390 @ =0x00000103
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #8
	beq _08019398
	cmp r0, #0x16
	beq _08019398
	ldr r0, _08019394 @ =sub_0801519C
	b _080193AE
	.align 2, 0
_08019390: .4byte 0x00000103
_08019394: .4byte sub_0801519C
_08019398:
	ldr r0, [r1, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	beq _080193AC
	ldr r0, _080193A8 @ =sub_0801519C
	b _080193AE
	.align 2, 0
_080193A8: .4byte sub_0801519C
_080193AC:
	ldr r0, _080193B4 @ =sub_080193B8
_080193AE:
	str r0, [r1, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_080193B4: .4byte sub_080193B8

	thumb_func_start sub_080193B8
sub_080193B8: @ 0x080193B8
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _080193E8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080193EC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080193F0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x1e
	adds r1, r3, #0
	adds r1, #0xe8
	strh r0, [r1]
	ldr r0, _080193F4 @ =sub_080193F8
	str r0, [r3, #0xc]
	bx lr
	.align 2, 0
_080193E8: .4byte gRngVal
_080193EC: .4byte 0x00196225
_080193F0: .4byte 0x3C6EF35F
_080193F4: .4byte sub_080193F8

	thumb_func_start sub_080193F8
sub_080193F8: @ 0x080193F8
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019410
	ldr r0, _08019414 @ =sub_08019378
	str r0, [r2, #0xc]
_08019410:
	pop {r0}
	bx r0
	.align 2, 0
_08019414: .4byte sub_08019378

	thumb_func_start sub_08019418
sub_08019418: @ 0x08019418
	adds r2, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0xde
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0xec
	ldrh r1, [r0]
	subs r0, #0xc
	strh r1, [r0]
	ldr r0, _08019434 @ =sub_08019438
	str r0, [r2, #0xc]
	bx lr
	.align 2, 0
_08019434: .4byte sub_08019438

	thumb_func_start sub_08019438
sub_08019438: @ 0x08019438
	push {lr}
	adds r3, r0, #0
	adds r0, #0xe0
	ldrh r1, [r0]
	cmp r1, #0
	bne _08019470
	ldr r2, _08019464 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08019468 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0801946C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x1e
	adds r1, r3, #0
	adds r1, #0xe8
	strh r0, [r1]
	b _08019476
	.align 2, 0
_08019464: .4byte gRngVal
_08019468: .4byte 0x00196225
_0801946C: .4byte 0x3C6EF35F
_08019470:
	adds r0, r3, #0
	adds r0, #0xe8
	strh r1, [r0]
_08019476:
	adds r1, r3, #0
	adds r1, #0xea
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08019488 @ =sub_08017BA8
	str r0, [r3, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_08019488: .4byte sub_08017BA8

	thumb_func_start sub_0801948C
sub_0801948C: @ 0x0801948C
	ldr r3, _080194B0 @ =gRngVal
	ldr r2, [r3]
	ldr r1, _080194B4 @ =0x00196225
	muls r1, r2, r1
	ldr r2, _080194B8 @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r1, r1, #0x10
	movs r2, #0x1f
	ands r1, r2
	adds r1, #0x1e
	adds r2, r0, #0
	adds r2, #0xe8
	strh r1, [r2]
	ldr r1, _080194BC @ =sub_080194C0
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_080194B0: .4byte gRngVal
_080194B4: .4byte 0x00196225
_080194B8: .4byte 0x3C6EF35F
_080194BC: .4byte sub_080194C0

	thumb_func_start sub_080194C0
sub_080194C0: @ 0x080194C0
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080194D8
	ldr r0, _080194DC @ =sub_08017C24
	str r0, [r2, #0xc]
_080194D8:
	pop {r0}
	bx r0
	.align 2, 0
_080194DC: .4byte sub_08017C24

	thumb_func_start sub_080194E0
sub_080194E0: @ 0x080194E0
	push {lr}
	adds r2, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0x9e
	strh r0, [r1]
	adds r1, #0x4a
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019500
	ldr r0, _08019504 @ =sub_08019508
	str r0, [r2, #0xc]
_08019500:
	pop {r0}
	bx r0
	.align 2, 0
_08019504: .4byte sub_08019508

	thumb_func_start sub_08019508
sub_08019508: @ 0x08019508
	adds r2, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	movs r1, #2
	adds r3, r2, #0
	adds r3, #0x9e
	orrs r1, r0
	strh r1, [r3]
	ldr r0, _08019520 @ =sub_08019524
	str r0, [r2, #0xc]
	bx lr
	.align 2, 0
_08019520: .4byte sub_08019524

	thumb_func_start sub_08019524
sub_08019524: @ 0x08019524
	ldr r3, _08019548 @ =gRngVal
	ldr r2, [r3]
	ldr r1, _0801954C @ =0x00196225
	muls r1, r2, r1
	ldr r2, _08019550 @ =0x3C6EF35F
	adds r1, r1, r2
	str r1, [r3]
	lsrs r1, r1, #0x10
	movs r2, #0x3f
	ands r1, r2
	adds r1, #0x1e
	adds r2, r0, #0
	adds r2, #0xe8
	strh r1, [r2]
	ldr r1, _08019554 @ =sub_08019558
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_08019548: .4byte gRngVal
_0801954C: .4byte 0x00196225
_08019550: .4byte 0x3C6EF35F
_08019554: .4byte sub_08019558

	thumb_func_start sub_08019558
sub_08019558: @ 0x08019558
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801959A
	ldr r0, [r2, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #0x75
	bgt _0801957E
	cmp r0, #0x70
	blt _0801957E
	movs r1, #1
_0801957E:
	cmp r1, #0
	beq _0801958C
	ldr r0, _08019588 @ =sub_08019524
	b _08019598
	.align 2, 0
_08019588: .4byte sub_08019524
_0801958C:
	ldr r0, [r2, #0x10]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r0, _080195A0 @ =sub_0801519C
_08019598:
	str r0, [r2, #0xc]
_0801959A:
	pop {r0}
	bx r0
	.align 2, 0
_080195A0: .4byte sub_0801519C

	thumb_func_start sub_080195A4
sub_080195A4: @ 0x080195A4
	adds r2, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0xde
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0xec
	ldrh r1, [r0]
	subs r0, #0xc
	strh r1, [r0]
	ldr r0, _080195C0 @ =sub_080195C4
	str r0, [r2, #0xc]
	bx lr
	.align 2, 0
_080195C0: .4byte sub_080195C4

	thumb_func_start sub_080195C4
sub_080195C4: @ 0x080195C4
	push {lr}
	adds r2, r0, #0
	adds r0, #0xe0
	ldrh r0, [r0]
	cmp r0, #1
	beq _080195E8
	cmp r0, #1
	bgt _080195DA
	cmp r0, #0
	beq _080195E0
	b _080195F8
_080195DA:
	cmp r0, #2
	beq _080195F0
	b _080195F8
_080195E0:
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #4
	b _080195FE
_080195E8:
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0x1e
	b _080195FE
_080195F0:
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0x3c
	b _080195FE
_080195F8:
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0x78
_080195FE:
	strh r0, [r1]
	ldr r0, _08019608 @ =sub_0801960C
	str r0, [r2, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_08019608: .4byte sub_0801960C

	thumb_func_start sub_0801960C
sub_0801960C: @ 0x0801960C
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x9e
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xe8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019630
	ldr r0, _08019634 @ =sub_0801519C
	str r0, [r3, #0xc]
_08019630:
	pop {r0}
	bx r0
	.align 2, 0
_08019634: .4byte sub_0801519C

	thumb_func_start sub_08019638
sub_08019638: @ 0x08019638
	adds r2, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0xde
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0xec
	ldrh r1, [r0]
	subs r0, #0xc
	strh r1, [r0]
	adds r1, r2, #0
	adds r1, #0xe4
	adds r0, #0xe
	ldrh r0, [r0]
	str r0, [r1]
	ldr r0, _08019660 @ =sub_08019664
	str r0, [r2, #0xc]
	bx lr
	.align 2, 0
_08019660: .4byte sub_08019664

	thumb_func_start sub_08019664
sub_08019664: @ 0x08019664
	push {lr}
	adds r2, r0, #0
	adds r0, #0xe4
	ldr r0, [r0]
	cmp r0, #1
	beq _08019688
	cmp r0, #1
	blo _08019680
	cmp r0, #2
	beq _08019690
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0x96
	b _08019696
_08019680:
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0x1e
	b _08019696
_08019688:
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0x3c
	b _08019696
_08019690:
	adds r1, r2, #0
	adds r1, #0xe8
	movs r0, #0x64
_08019696:
	strh r0, [r1]
	ldr r0, _080196A0 @ =sub_08017DC4
	str r0, [r2, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_080196A0: .4byte sub_08017DC4

	thumb_func_start sub_080196A4
sub_080196A4: @ 0x080196A4
	adds r2, r0, #0
	adds r0, #0xea
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0xde
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0xec
	ldrh r1, [r0]
	subs r0, #0xc
	strh r1, [r0]
	adds r1, r2, #0
	adds r1, #0xe4
	adds r0, #0xe
	ldrh r0, [r0]
	str r0, [r1]
	ldr r0, _080196CC @ =sub_080196D0
	str r0, [r2, #0xc]
	bx lr
	.align 2, 0
_080196CC: .4byte sub_080196D0

	thumb_func_start sub_080196D0
sub_080196D0: @ 0x080196D0
	adds r2, r0, #0
	adds r2, #0xe8
	movs r1, #0
	strh r1, [r2]
	ldr r1, _080196E0 @ =sub_08017EA0
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_080196E0: .4byte sub_08017EA0

	thumb_func_start sub_080196E4
sub_080196E4: @ 0x080196E4
	push {r4, lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xdc
	ldrb r0, [r1]
	movs r2, #0xdd
	adds r2, r2, r3
	mov ip, r2
	movs r2, #0
	mov r4, ip
	strb r0, [r4]
	movs r0, #0x1a
	strb r0, [r1]
	ldr r0, [r3, #0x10]
	movs r1, #2
	orrs r0, r1
	str r0, [r3, #0x10]
	adds r0, r3, #0
	adds r0, #0xe8
	strh r2, [r0]
	ldr r0, [r3, #0x40]
	ldr r1, _0801971C @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0x19
	beq _08019724
	ldr r0, _08019720 @ =sub_0801519C
	b _08019726
	.align 2, 0
_0801971C: .4byte 0x00000103
_08019720: .4byte sub_0801519C
_08019724:
	ldr r0, _08019730 @ =sub_08017F88
_08019726:
	str r0, [r3, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019730: .4byte sub_08017F88

	thumb_func_start sub_08019734
sub_08019734: @ 0x08019734
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r1, #4
	subs r2, r2, r1
	lsls r2, r2, #2
	adds r1, r0, #0
	adds r1, #0xbc
	strh r2, [r1]
	ldr r1, _08019750 @ =sub_08019758
	str r1, [r0]
	ldr r1, _08019754 @ =sub_08013A60
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_08019750: .4byte sub_08019758
_08019754: .4byte sub_08013A60

	thumb_func_start sub_08019758
sub_08019758: @ 0x08019758
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xbc
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801977A
	ldr r0, [r2, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r0, _08019780 @ =sub_08013804
	str r0, [r2]
_0801977A:
	pop {r0}
	bx r0
	.align 2, 0
_08019780: .4byte sub_08013804

	thumb_func_start sub_08019784
sub_08019784: @ 0x08019784
	strb r1, [r0, #0x1b]
	ldr r1, _08019790 @ =sub_08013B00
	str r1, [r0, #4]
	ldr r1, _08019794 @ =sub_08019798
	str r1, [r0]
	bx lr
	.align 2, 0
_08019790: .4byte sub_08013B00
_08019794: .4byte sub_08019798

	thumb_func_start sub_08019798
sub_08019798: @ 0x08019798
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080197B2
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r2, #0x10]
	ldr r0, _080197B8 @ =sub_08013804
	str r0, [r2]
_080197B2:
	pop {r0}
	bx r0
	.align 2, 0
_080197B8: .4byte sub_08013804

	thumb_func_start sub_080197BC
sub_080197BC: @ 0x080197BC
	adds r2, r0, #0
	adds r2, #0xbc
	strh r1, [r2]
	ldr r1, _080197D0 @ =sub_080197DC
	str r1, [r0]
	ldr r1, _080197D4 @ =nullsub_104
	str r1, [r0, #4]
	ldr r1, _080197D8 @ =nullsub_105
	str r1, [r0, #8]
	bx lr
	.align 2, 0
_080197D0: .4byte sub_080197DC
_080197D4: .4byte nullsub_104
_080197D8: .4byte nullsub_105

	thumb_func_start sub_080197DC
sub_080197DC: @ 0x080197DC
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0xbe
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, _08019810 @ =sub_08019818
	str r0, [r2]
	adds r0, r2, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _0801980C
	adds r0, r2, #0
	adds r0, #0xbc
	ldrh r0, [r0]
	adds r1, #0x20
	strh r0, [r1]
	adds r1, #6
	movs r0, #0
	str r0, [r1]
	ldr r0, _08019814 @ =sub_08018F34
	str r0, [r2, #0xc]
_0801980C:
	pop {r0}
	bx r0
	.align 2, 0
_08019810: .4byte sub_08019818
_08019814: .4byte sub_08018F34

	thumb_func_start sub_08019818
sub_08019818: @ 0x08019818
	push {lr}
	adds r2, r0, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0x12
	bne _08019834
	adds r1, r2, #0
	adds r1, #0xbe
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019842
_08019834:
	ldr r0, [r2, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r0, _08019848 @ =sub_08013804
	str r0, [r2]
_08019842:
	pop {r0}
	bx r0
	.align 2, 0
_08019848: .4byte sub_08013804

	thumb_func_start sub_0801984C
sub_0801984C: @ 0x0801984C
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r1, #4
	subs r2, r2, r1
	lsls r2, r2, #2
	adds r1, r0, #0
	adds r1, #0xbc
	strh r2, [r1]
	ldr r1, _0801986C @ =sub_08019878
	str r1, [r0]
	ldr r1, _08019870 @ =nullsub_104
	str r1, [r0, #4]
	ldr r1, _08019874 @ =nullsub_105
	str r1, [r0, #8]
	bx lr
	.align 2, 0
_0801986C: .4byte sub_08019878
_08019870: .4byte nullsub_104
_08019874: .4byte nullsub_105

	thumb_func_start sub_08019878
sub_08019878: @ 0x08019878
	push {r4, lr}
	adds r2, r0, #0
	ldr r3, [r2, #0x40]
	ldr r1, [r3, #8]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08019890
	ldr r0, _0801988C @ =sub_080198C4
	b _080198B6
	.align 2, 0
_0801988C: .4byte sub_080198C4
_08019890:
	ldr r4, _080198AC @ =0x00000103
	adds r0, r3, r4
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _080198B4
	cmp r0, #0x17
	beq _080198B4
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _080198B4
	ldr r0, _080198B0 @ =sub_08019914
	b _080198B6
	.align 2, 0
_080198AC: .4byte 0x00000103
_080198B0: .4byte sub_08019914
_080198B4:
	ldr r0, _080198C0 @ =sub_0801995C
_080198B6:
	str r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080198C0: .4byte sub_0801995C

	thumb_func_start sub_080198C4
sub_080198C4: @ 0x080198C4
	adds r2, r0, #0
	adds r2, #0xbe
	movs r1, #0x96
	lsls r1, r1, #1
	strh r1, [r2]
	ldr r1, _080198D8 @ =sub_0801737C
	str r1, [r0, #0xc]
	ldr r1, _080198DC @ =sub_080198E0
	str r1, [r0]
	bx lr
	.align 2, 0
_080198D8: .4byte sub_0801737C
_080198DC: .4byte sub_080198E0

	thumb_func_start sub_080198E0
sub_080198E0: @ 0x080198E0
	push {lr}
	adds r2, r0, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0xd
	beq _080198F6
	ldr r0, [r2, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x26
	bne _08019906
_080198F6:
	adds r1, r2, #0
	adds r1, #0xbe
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801990A
_08019906:
	ldr r0, _08019910 @ =sub_0801995C
	str r0, [r2]
_0801990A:
	pop {r0}
	bx r0
	.align 2, 0
_08019910: .4byte sub_0801995C

	thumb_func_start sub_08019914
sub_08019914: @ 0x08019914
	adds r2, r0, #0
	adds r2, #0xbe
	movs r1, #0x96
	lsls r1, r1, #1
	strh r1, [r2]
	ldr r1, _08019928 @ =sub_0801519C
	str r1, [r0, #0xc]
	ldr r1, _0801992C @ =sub_08019930
	str r1, [r0]
	bx lr
	.align 2, 0
_08019928: .4byte sub_0801519C
_0801992C: .4byte sub_08019930

	thumb_func_start sub_08019930
sub_08019930: @ 0x08019930
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x40]
	ldr r0, [r0, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08019950
	adds r1, r2, #0
	adds r1, #0xbe
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019954
_08019950:
	ldr r0, _08019958 @ =sub_0801995C
	str r0, [r2]
_08019954:
	pop {r0}
	bx r0
	.align 2, 0
_08019958: .4byte sub_0801995C

	thumb_func_start sub_0801995C
sub_0801995C: @ 0x0801995C
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xbc
	ldrh r0, [r2]
	adds r0, #5
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r0, r3, #0
	adds r0, #0xbe
	strh r1, [r0]
	adds r1, r3, #0
	adds r1, #0xde
	ldr r0, _0801998C @ =0x0000FFFF
	strh r0, [r1]
	ldrh r1, [r2]
	adds r0, r3, #0
	adds r0, #0xe0
	strh r1, [r0]
	ldr r0, _08019990 @ =sub_0801745C
	str r0, [r3, #0xc]
	ldr r0, _08019994 @ =sub_08019998
	str r0, [r3]
	bx lr
	.align 2, 0
_0801998C: .4byte 0x0000FFFF
_08019990: .4byte sub_0801745C
_08019994: .4byte sub_08019998

	thumb_func_start sub_08019998
sub_08019998: @ 0x08019998
	push {lr}
	adds r2, r0, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0
	beq _080199B4
	adds r1, r2, #0
	adds r1, #0xbe
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080199C2
_080199B4:
	ldr r0, [r2, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r0, _080199C8 @ =sub_08013804
	str r0, [r2]
_080199C2:
	pop {r0}
	bx r0
	.align 2, 0
_080199C8: .4byte sub_08013804

	thumb_func_start sub_080199CC
sub_080199CC: @ 0x080199CC
	adds r2, r0, #0
	adds r2, #0xbc
	movs r1, #4
	strh r1, [r2]
	ldr r1, _080199E4 @ =sub_08013924
	str r1, [r0]
	ldr r1, _080199E8 @ =nullsub_104
	str r1, [r0, #4]
	ldr r1, _080199EC @ =nullsub_105
	str r1, [r0, #8]
	bx lr
	.align 2, 0
_080199E4: .4byte sub_08013924
_080199E8: .4byte nullsub_104
_080199EC: .4byte nullsub_105

	thumb_func_start sub_080199F0
sub_080199F0: @ 0x080199F0
	adds r2, r0, #0
	adds r2, #0xbe
	movs r1, #0x96
	lsls r1, r1, #1
	strh r1, [r2]
	ldr r1, _08019A04 @ =sub_0801737C
	str r1, [r0, #0xc]
	ldr r1, _08019A08 @ =sub_08019A0C
	str r1, [r0]
	bx lr
	.align 2, 0
_08019A04: .4byte sub_0801737C
_08019A08: .4byte sub_08019A0C

	thumb_func_start sub_08019A0C
sub_08019A0C: @ 0x08019A0C
	push {lr}
	adds r2, r0, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0xd
	beq _08019A22
	ldr r0, [r2, #0x40]
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x26
	bne _08019A32
_08019A22:
	adds r1, r2, #0
	adds r1, #0xbe
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019A36
_08019A32:
	ldr r0, _08019A3C @ =sub_08013924
	str r0, [r2]
_08019A36:
	pop {r0}
	bx r0
	.align 2, 0
_08019A3C: .4byte sub_08013924

	thumb_func_start sub_08019A40
sub_08019A40: @ 0x08019A40
	adds r2, r0, #0
	adds r2, #0xbe
	movs r1, #0x96
	lsls r1, r1, #1
	strh r1, [r2]
	ldr r1, _08019A54 @ =sub_0801519C
	str r1, [r0, #0xc]
	ldr r1, _08019A58 @ =sub_08019A5C
	str r1, [r0]
	bx lr
	.align 2, 0
_08019A54: .4byte sub_0801519C
_08019A58: .4byte sub_08019A5C

	thumb_func_start sub_08019A5C
sub_08019A5C: @ 0x08019A5C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x40]
	ldr r0, [r0, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08019A7C
	adds r1, r2, #0
	adds r1, #0xbe
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019A80
_08019A7C:
	ldr r0, _08019A84 @ =sub_08013924
	str r0, [r2]
_08019A80:
	pop {r0}
	bx r0
	.align 2, 0
_08019A84: .4byte sub_08013924

	thumb_func_start sub_08019A88
sub_08019A88: @ 0x08019A88
	adds r2, r0, #0
	adds r2, #0xbe
	movs r1, #0x96
	lsls r1, r1, #1
	strh r1, [r2]
	ldr r1, _08019A9C @ =sub_0801519C
	str r1, [r0, #0xc]
	ldr r1, _08019AA0 @ =sub_08019AA4
	str r1, [r0]
	bx lr
	.align 2, 0
_08019A9C: .4byte sub_0801519C
_08019AA0: .4byte sub_08019AA4

	thumb_func_start sub_08019AA4
sub_08019AA4: @ 0x08019AA4
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x40]
	ldr r0, [r0, #8]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08019AC4
	adds r1, r2, #0
	adds r1, #0xbe
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019AC8
_08019AC4:
	ldr r0, _08019ACC @ =sub_08013924
	str r0, [r2]
_08019AC8:
	pop {r0}
	bx r0
	.align 2, 0
_08019ACC: .4byte sub_08013924

	thumb_func_start sub_08019AD0
sub_08019AD0: @ 0x08019AD0
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0xbe
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r2]
	adds r2, #0x20
	ldr r0, _08019AEC @ =0x0000FFFF
	strh r0, [r2]
	ldr r0, _08019AF0 @ =sub_08017144
	str r0, [r1, #0xc]
	ldr r0, _08019AF4 @ =sub_08019AF8
	str r0, [r1]
	bx lr
	.align 2, 0
_08019AEC: .4byte 0x0000FFFF
_08019AF0: .4byte sub_08017144
_08019AF4: .4byte sub_08019AF8

	thumb_func_start sub_08019AF8
sub_08019AF8: @ 0x08019AF8
	push {lr}
	adds r2, r0, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #0xb
	bne _08019B14
	adds r1, r2, #0
	adds r1, #0xbe
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08019B22
_08019B14:
	ldr r0, [r2, #0x10]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x10]
	ldr r0, _08019B28 @ =sub_08013804
	str r0, [r2]
_08019B22:
	pop {r0}
	bx r0
	.align 2, 0
_08019B28: .4byte sub_08013804

	thumb_func_start nullsub_106
nullsub_106: @ 0x08019B2C
	bx lr
	.align 2, 0

	thumb_func_start sub_08019B30
sub_08019B30: @ 0x08019B30
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x10]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	bne _08019B78
	adds r4, r3, #0
	adds r4, #0xcc
	ldrh r0, [r4]
	cmp r0, #0
	beq _08019B4C
	subs r0, #1
	strh r0, [r4]
_08019B4C:
	ldr r1, [r3, #0x10]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _08019B78
	adds r2, r3, #0
	adds r2, #0x3f
	ldrb r0, [r3, #0x1a]
	ldrb r2, [r2]
	cmp r0, r2
	beq _08019B6E
	ldrb r0, [r3, #0x1b]
	cmp r0, #0xff
	beq _08019B6E
	ldrh r0, [r4]
	cmp r0, #0
	bne _08019B78
_08019B6E:
	movs r0, #1
	orrs r0, r1
	str r0, [r3, #0x10]
	ldr r0, _08019B80 @ =sub_0801852C
	str r0, [r3, #8]
_08019B78:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019B80: .4byte sub_0801852C

	thumb_func_start sub_08019B84
sub_08019B84: @ 0x08019B84
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x40]
	ldr r0, [r0, #8]
	movs r1, #0x60
	ands r0, r1
	cmp r0, #0
	beq _08019BB4
	ldr r2, _08019BA8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08019BAC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08019BB0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	b _08019BC6
	.align 2, 0
_08019BA8: .4byte gRngVal
_08019BAC: .4byte 0x00196225
_08019BB0: .4byte 0x3C6EF35F
_08019BB4:
	ldr r2, _08019BDC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08019BE0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08019BE4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x7f
_08019BC6:
	ands r0, r1
	adds r0, #0x1e
	adds r1, r3, #0
	adds r1, #0xcc
	strh r0, [r1]
	ldr r0, _08019BE8 @ =sub_0801852C
	str r0, [r3, #8]
	ldr r0, _08019BEC @ =sub_08013D0C
	str r0, [r3, #4]
	pop {r0}
	bx r0
	.align 2, 0
_08019BDC: .4byte gRngVal
_08019BE0: .4byte 0x00196225
_08019BE4: .4byte 0x3C6EF35F
_08019BE8: .4byte sub_0801852C
_08019BEC: .4byte sub_08013D0C

	thumb_func_start sub_08019BF0
sub_08019BF0: @ 0x08019BF0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080103BC
	cmp r0, #0
	bne _08019C08
	ldr r0, _08019C04 @ =sub_080184DC
	str r0, [r4, #4]
	b _08019C44
	.align 2, 0
_08019C04: .4byte sub_080184DC
_08019C08:
	ldr r0, [r4, #0x44]
	bl sub_0800EEBC
	strb r0, [r4, #0x1b]
	ldr r2, [r4, #0x44]
	ldr r0, [r2, #0x40]
	str r0, [r4, #0x7c]
	adds r1, r4, #0
	adds r1, #0x80
	ldr r0, [r2, #0x44]
	str r0, [r1]
	ldr r0, [r4, #0x14]
	movs r1, #0xf4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r1, [r4, #0x1a]
	ldr r2, [r0, #0x14]
	movs r0, #0x34
	muls r0, r1, r0
	adds r0, r0, r2
	ldrb r1, [r4, #0x1b]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x3f
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08010144
_08019C44:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08019C4C
sub_08019C4C: @ 0x08019C4C
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x40]
	ldr r0, [r0, #8]
	movs r1, #0x60
	ands r0, r1
	cmp r0, #0
	beq _08019C7C
	ldr r2, _08019C70 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08019C74 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08019C78 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	b _08019C8E
	.align 2, 0
_08019C70: .4byte gRngVal
_08019C74: .4byte 0x00196225
_08019C78: .4byte 0x3C6EF35F
_08019C7C:
	ldr r2, _08019CA4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08019CA8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08019CAC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x7f
_08019C8E:
	ands r0, r1
	adds r0, #0x1e
	adds r1, r3, #0
	adds r1, #0xcc
	strh r0, [r1]
	ldr r0, _08019CB0 @ =sub_0801852C
	str r0, [r3, #8]
	ldr r0, _08019CB4 @ =sub_08014B28
	str r0, [r3, #4]
	pop {r0}
	bx r0
	.align 2, 0
_08019CA4: .4byte gRngVal
_08019CA8: .4byte 0x00196225
_08019CAC: .4byte 0x3C6EF35F
_08019CB0: .4byte sub_0801852C
_08019CB4: .4byte sub_08014B28
