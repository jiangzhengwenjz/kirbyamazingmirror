#include "global.h"
#include "data.h"
#include "functions.h"
#include "main.h"
#include "multi_08019F28.h"
#include "multi_08030C94.h"
#include "multi_boot_util.h"
#include "multi_sio.h"

void sub_0803149C(void);
s32 sub_0803169C(struct Multi_08030C94 *);
s32 sub_08031764(struct Multi_08030C94 *);
s32 sub_08031860(struct Multi_08030C94 *);
s32 sub_080319F0(struct Multi_08030C94 *);

#define SIO_MULTI_CNT ((volatile struct SioMultiCnt *)REG_ADDR_SIOCNT)

void sub_08030C94(u8 r7, struct Unk_020382A0_sub *r6)
{
    struct Multi_08030C94 *r4;

    CpuFill32(0, gMultiSioRecv, sizeof(gMultiSioRecv));
    CpuFill32(0, &gMultiSioSend, sizeof(gMultiSioSend));
    CpuFill16(0, &gUnk_020382A0, sizeof(gUnk_020382A0));
    gUnk_020382A0.unk04 = 0; // ?
    MultiSioStart();
    gUnk_020382A0.task = TaskCreate(sub_0803149C, sizeof(struct Multi_08030C94), 1, 0, NULL);
    TaskGetStructPtr(gUnk_020382A0.task, r4);
    CpuFill16(0, r4, sizeof(*r4));
    r4->func = sub_0803169C;
    r4->unk1C = r7;
    if (r6)
        CpuCopy16(r6, &r4->unk4, sizeof(struct Unk_020382A0_sub));
}

u32 sub_08030D4C(s32 sp)
{
    struct Unk_020382D0 *ip = &gUnk_020382D0;
    s32 sb = gUnk_020382D0.unk0 - 5;
    u16 r3;
    
    for (r3 = 0; r3 < gUnk_0203AD30; ++r3)
    {
        for (ip->unk2A8[r3] = (ip->unk2A4[r3] - 1) & 0xF;
             ip->unk2A8[r3] != ip->unk2A4[r3];
             ip->unk2A8[r3] = (ip->unk2A8[r3] - 1) & 0xF)
        {
            if (sb == ip->unkA0[r3][ip->unk2A8[r3]].unk0)
                break;
        }
        if (ip->unk2A8[r3] == ip->unk2A4[r3])
        {
            gUnk_020382D0.unk4 |= 0x8000;
            gUnk_02038580 = 5;
            return 0;
        }
        ip->unk2A0[r3] = (ip->unk2A4[r3] - ip->unk2A8[r3]) & 0xF;
    }
    gUnk_020382D0.unk4 |= 2;
    if (sp)
        gUnk_020382D0.unk4 |= 8;
    return 1;
}

void sub_08030E44(void)
{
    struct Unk_020382D0 *r7 = &gUnk_020382D0;
    u16 i, r5;
    struct Unk_020382D0_sub *r4;
    struct MultiSioData_0_0 *r6;

    if (r7->unk4 & 1 && !(r7->unk4 & 4))
    {
        r4 = &r7->unk20[r7->unk2AC];
        r5 = 0;
        if (r7->unk4 & 8)
        {
            r5 = gRngVal;
            for (i = 0; i < 4; ++i)
                r5 += gKirbys[i].base.base.x + gKirbys[i].base.base.y;
        }
        r4->unk0 = r7->unk0;
        r4->unk4 = (gInput & 0x3FF) | ((r5 << 10) & 0xC00);
        r6 = &gMultiSioSend.pat0;
        r6->unk0 = 0x20;
        r6->unk1 = gUnk_020382D0.unk6;
        r6->unk10 = r4->unk0;
        for (r5 = 0; r5 < 6; ++r5)
            r6->hword[r5] = 0;
        r5 = r7->unk2AC;
        r4 = &r7->unk20[r5];
        r6->hword[0] |= r4->unk4;
        r5 = (r5 - 1) & 0xF;
        r4 = &r7->unk20[r5];
        r6->hword[0] |= r4->unk4 << 12;
        r6->hword[1] |= r4->unk4 >> 4;
        r5 = (r5 - 1) & 0xF;
        r4 = &r7->unk20[r5];
        r6->hword[1] |= r4->unk4 << 8;
        r6->hword[2] |= r4->unk4 >> 8;
        r5 = (r5 - 1) & 0xF;
        r4 = &r7->unk20[r5];
        r6->hword[2] |= r4->unk4 << 4;
        r5 = (r5 - 1) & 0xF;
        r4 = &r7->unk20[r5];
        r6->hword[3] |= r4->unk4;
        r5 = (r5 - 1) & 0xF;
        r4 = &r7->unk20[r5];
        r6->hword[3] |= r4->unk4 << 12;
        r6->hword[4] |= r4->unk4 >> 4;
        r5 = (r5 - 1) & 0xF;
        r4 = &r7->unk20[r5];
        r6->hword[4] |= r4->unk4 << 8;
        r6->hword[5] |= r4->unk4 >> 8;
        r5 = (r5 - 1) & 0xF;
        r4 = &r7->unk20[r5];
        r6->hword[5] |= r4->unk4 << 4;
        r7->unk2AC = (r7->unk2AC + 1) & 0xF;
    }
}

u32 sub_08030FE0(void)
{
    u16 sb;
    struct Unk_020382D0 *r8 = &gUnk_020382D0;
    struct Unk_020382D0_sub *r6;
    s8 sp00;
    u32 sl;
    u32 r4;
    u32 r1;
    u32 r7;

    if (r8->unk4 & 1)
    {
        for (sb = 0; sb < gUnk_0203AD30; ++sb)
        {
            if (SIO_MULTI_CNT->id == sb)
            {
                struct Unk_020382D0_sub *r5 = &r8->unk20[(r8->unk2AC - 1) & 0xF];

                r4 = r8->unk2A4[sb];
                r1 = (r4 - 1) & 0xF;
                r6 = &r8->unkA0[sb][r1];
                if (r6->unk0 != r5->unk0)
                {
                    r6 = &r8->unkA0[sb][r4];
                    r6->unk0 = r5->unk0;
                    r6->unk4 = r5->unk4;
#ifdef NONMATCHING
                    r8->unk2A4[sb] = (r8->unk2A4[sb] + 1) & 0xF;
#else
                    {
                        register u32 r1 asm("r1");

                        ++r8->unk2A4[sb];
                        r1 = 0xF;
                        r8->unk2A4[sb] &= r1;
                    }
#endif
                }
            }
            else
            {
                struct MultiSioData_0_0 *r5 = &gMultiSioRecv[sb].pat0;
                u32 r1 = (r8->unk2A4[sb] - 1) & 0xF;

                sp00 = r5->unk10 - r8->unkA0[sb][r1].unk0;
                r7 = (r8->unk2A4[sb] + sp00 - 1) & 0xF;
                r6 = &r8->unkA0[sb][r7];
                r6->unk0 = r5->unk10;
                r6->unk4 = r5->hword[0];
                // r7 = (r7 - 1) & 0xF;
                --r7;
                r4 = 0xF;
                r7 &= r4;
                r6 = &r8->unkA0[sb][r7];
                r6->unk0 = r5->unk10 - 1;
                r6->unk4 = r5->hword[0] >> 12;
                r6->unk4 |= r5->hword[1] << 4;
                r7 = (r7 - 1) & r4;
                r6 = &r8->unkA0[sb][r7];
                r6->unk0 = r5->unk10 - 2;
                r6->unk4 = r5->hword[1] >> 8;
                r6->unk4 |= r5->hword[2] << 8;
                r7 = (r7 - 1) & r4;
                r6 = &r8->unkA0[sb][r7];
                r6->unk0 = r5->unk10 - 3;
                r6->unk4 = r5->hword[2] >> 4;
                r7 = (r7 - 1) & r4;
                r6 = &r8->unkA0[sb][r7];
                r6->unk0 = r5->unk10 - 4;
                r6->unk4 = r5->hword[3];
                r7 = (r7 - 1) & r4;
                r6 = &r8->unkA0[sb][r7];
                r6->unk0 = r5->unk10 - 5;
                r6->unk4 = r5->hword[3] >> 12;
                r6->unk4 |= r5->hword[4] << 4;
                r7 = (r7 - 1) & r4;
                r6 = &r8->unkA0[sb][r7];
                r6->unk0 = r5->unk10 - 6;
                r6->unk4 = r5->hword[4] >> 8;
                r6->unk4 |= r5->hword[5] << 8;
                r7 = (r7 - 1) & r4;
                r6 = &r8->unkA0[sb][r7];
                r6->unk0 = r5->unk10 - 7;
                r6->unk4 = r5->hword[5] >> 4;
                if (sp00 > 0)
                    r8->unk2A4[sb] = (r8->unk2A4[sb] + sp00) & r4;
#ifndef NONMATCHING
                asm("":"=r"(r4));
#endif
                for (r7 = (r8->unk2A8[sb] - 1) & 0xF; r7 != r8->unk2A4[sb]; r7 = (r7 - 1) & 0xF)
                {
                    r6 = &r8->unkA0[sb][r7];
                    r6->unk0 = 0xFFFF;
                    r6->unk4 = 0xFFFF;
                }
#ifndef NONMATCHING
                asm("":"=r"(r4));
#endif
                if (r8->unk4 & 2)
                {
                    if (r5->unk0 != 0x20)
                    {
                        r8->unk4 |= 0x8000;
                        gUnk_02038580 = 3;
                        return 0;
                    }
                    if (r8->unk6 != r5->unk1)
                    {
                        r8->unk4 |= 0x8000;
                        gUnk_02038580 = 4;
                        return 0;
                    }
                    if (r8->unkA0[sb][r8->unk2A8[sb]].unk4 == 0xFFFF)
                    {
                        r8->unk4 |= 0x8000;
                        gUnk_02038580 = 6;
                        return 0;
                    }
                }
            }
        }
        if (r8->unk4 & 2)
        {
            bool32 sl;

            r8->unk4 &= ~4;
            sl = FALSE;
            for (sb = 0; sb < gUnk_0203AD30; ++sb)
            {
                if (SIO_MULTI_CNT->id != sb)
                {
                    u8 r0;
                    s8 r1 = (r8->unkA0[sb][(r8->unk2A4[sb] - 1) & 0xF].unk0 - r8->unkA0[sb][r8->unk2A8[sb]].unk0);

                    r0 = r8->unk2A0[sb];
                    r1 = (s8)r0 - r1;
                    r0 = r1 + 1;
                    if (r0 <= 2) continue;
                    if (r1 > 1)
                    {
                        sl = TRUE;
                        break;
                    }
                }
            }
            if (sl)
            {
                r8->unk4 |= 4;
                ++r8->unk2AD;
            }
            else
            {
                if (r8->unk2AD < 0)
                    ++r8->unk2AD;
                else
                    r8->unk2AD = 0;
            }
        }
        if (!(r8->unk4 & 4))
        {
            if (r8->unk4 & 2)
            {
                u32 sp04;

                sp04 = 0xFFFF;
                sl = 0;
                for (sb = 0; sb < gUnk_0203AD30; ++sb)
                {
                    u16 r3;

                    r3 = r8->unk8[0][sb];
                    r7 = r8->unk2A8[sb];
                    r6 = &r8->unkA0[sb][r7];
                    r8->unk8[0][sb] = r6->unk4 & 0x3FF;
                    r8->unk8[1][sb] = r8->unk8[0][sb] & ~r3;
                    r8->unk8[2][sb] = r3 & ~r8->unk8[0][sb];
                    sp04 &= r6->unk4 & 0xC00;
                    sl |= r6->unk4 & 0xC00;
                    r8->unk2A8[sb] = (r8->unk2A8[sb] + 1) & 0xF;
                }
                if (r8->unk4 & 8 && sp04 != sl)
                {
                    r8->unk4 |= 0x8000;
                    gUnk_02038580 = 8;
                    return 0;
                }
            }
            else
                goto _08031478;
        }
        if (r8->unk4 & 2)
        {
            if (r8->unk2AD > 0x10)
            {
                r8->unk4 |= 0x8000;
                gUnk_02038580 = 7;
                return 0;
            }
            if (r8->unk2A4[sb] == ((r8->unk2A8[sb] - 1) & 0xF))
            {
                r8->unk4 |= 0x8000;
                gUnk_02038580 = 5;
                return 0;
            }
        }
    _08031478:
        if (!(r8->unk4 & 4))
            ++r8->unk0;
    }
    return 1;
}

void sub_0803149C(void)
{
    u16 i, *p;
    struct Multi_08030C94 *r0, *r4 = TaskGetStructPtr(gCurTask, r0);
    struct Unk_020382A0 *r5 = &gUnk_020382A0;

    if (!r4->unkC)
    {
        if (gMultiSioStatusFlags & MULTI_SIO_HARD_ERROR)
        {
            r5->unk04 = -2;
            r5->unk06 &= ~3;
            r5->unk06 &= ~4;
            r4->unkC = 1;
            return;
        }
        else if (gMultiSioStatusFlags & MULTI_SIO_ID_OVER_ERROR)
        {
            r5->unk04 = -3;
            r5->unk06 &= ~4;
            r4->unkC = 1;
            return;
        }
        else if (!(gMultiSioStatusFlags
            & (MULTI_SIO_CONNECTED_ID0 | MULTI_SIO_CONNECTED_ID1
                | MULTI_SIO_CONNECTED_ID2 | MULTI_SIO_CONNECTED_ID3)))
        {
            if (r4->unk18 > 8)
            {
                r5->unk04 = -1;
                r5->unk06 &= ~3;
                r5->unk06 &= ~4;
                r4->unkC = 1;
                return;
            }
            else
                ++r4->unk18;
        }
        else
            r4->unk18 = 0;
        for (i = 0; i < 4; ++i)
        {
            p = r4->unk10;
            if ((MULTI_SIO_CONNECTED_ID(i) & gMultiSioStatusFlags)
                && !(MULTI_SIO_RECV_ID(i) & gMultiSioStatusFlags))
            {
                u16 *d = &p[i];

                if (*d > 10)
                {
                    r5->unk04 = -4;
                    r5->unk06 &= ~4;
                    r4->unkC = 1;
                    return;
                }
                else
                    ++*d;
            }
            else
            {
                u16 *d = &p[i];

                *d = 0;
            }
        }
        r5->unk04 = r4->func(r4);
        r5->unk06 &= ~4;
    }
}

s16 sub_080315B8(struct Multi_08030C94 *r8)
{
    struct Unk_020382A0 *r0 = &gUnk_020382A0;
    struct MultiSioData_0_2 *r1, *r5 = &gMultiSioSend.pat2;
    s16 ret = 0;
    u16 i;

    r0->unk28 = 0;
    r0->unk29 = 0;
    for (i = 0; i < 4; ++i)
    {
        if (SIO_MULTI_CNT->id == i)
        {
            r0->unk28 = i + 1;
            ++r0->unk29;
            r5->unkC |= 1 << i;
        }
        else if (MULTI_SIO_CONNECTED_ID(i) & gMultiSioStatusFlags)
        {
            r0->unk28 = i + 1;
            r1 = &gMultiSioRecv[i].pat2;
            if (r1->unk0 == 2)
            {
                if (r8->unk1C != r1->unk1)
                    ret = -5;
                else
                {
                    switch (r1->unkE)
                    {
                    case 0x20:
                    case 0x40:
                    case 0x41:
                        ++r0->unk29;
                        r5->unkC |= 1 << i;
                    }
                }
            }
        }
        else if (!(MULTI_SIO_RECV_ID(i) & gMultiSioStatusFlags))
            ((vu16 *)REG_ADDR_SIOMULTI0)[i];

    }
    return ret;
}

s32 sub_0803169C(struct Multi_08030C94 *r4)
{
    struct Unk_020382A0 *r6 = &gUnk_020382A0;
    struct MultiSioData_0_2 *r1 = &gMultiSioSend.pat2;

    r1->unk0 = 2;
    r1->unk1 = r4->unk1C;
    r1->unk2 = 0x123;
    r1->unkE = 0;
    r1->unkC = 0;
    CpuCopy16(&r4->unk4, &r1->unk4, sizeof(struct Unk_020382A0_sub));
    r6->unk06 &= ~3;
    if (SIO_MULTI_CNT->id == 0
        && gMultiSioStatusFlags & MULTI_SIO_PARENT
        && MULTI_SIO_RECV_ID(SIO_MULTI_CNT->id) & gMultiSioStatusFlags)
    {
        r6->unk06 |= 1;
        r4->func = sub_08031764;
    }
    else if (SIO_MULTI_CNT->id != 0
        && !(gMultiSioStatusFlags & MULTI_SIO_PARENT)
        && MULTI_SIO_RECV_ID(SIO_MULTI_CNT->id) & gMultiSioStatusFlags)
    {
        r6->unk06 |= 2;
        r4->func = sub_080319F0;
    }
    return 0;
}

s32 sub_08031764(struct Multi_08030C94 *r7)
{
    struct Unk_020382A0 *r5 = &gUnk_020382A0;
    struct MultiSioData_0_2 *r1, *r6 = &gMultiSioSend.pat2;
    struct Unk_020382A0_sub *p;
    s32 result;
    u16 i;

    r6->unk0 = 2;
    r6->unk1 = r7->unk1C;
    r6->unk2 = 0x123;
    r6->unkE = 0x20;
    r6->unkC = 1;
    if (SIO_MULTI_CNT->id != 0
        || !(gMultiSioStatusFlags & MULTI_SIO_PARENT)
        || !(MULTI_SIO_RECV_ID(SIO_MULTI_CNT->id) & gMultiSioStatusFlags))
    {
        r5->unk06 &= ~3;
        r7->func = sub_0803169C;
        return -1;
    }
    else if ((result = sub_080315B8(r7)))
    {
        return result;
    }
    else if (r5->unk28 == r5->unk29 && r5->unk28 > 1)
    {
        if (r5->unk06 & 4)
        {
            for (i = 0; i < 4; ++i)
            {
                p = gUnk_020382A0.unk08;
                if (SIO_MULTI_CNT->id == i)
                {
                    CpuCopy16(&r6->unk4, p+i, sizeof(struct Unk_020382A0_sub));
                }
                else
                {
                    r1 = &gMultiSioRecv[i].pat2;
                    CpuCopy16(&r1->unk4, p+i, sizeof(struct Unk_020382A0_sub));
                }
            }
            r7->func = sub_08031860;
        }
        return 1;
    }
    return 0;
}
