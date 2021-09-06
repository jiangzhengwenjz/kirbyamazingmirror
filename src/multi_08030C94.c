#include "global.h"
#include "data.h"
#include "functions.h"
#include "main.h"
#include "multi_08019F28.h"
#include "multi_08030C94.h"
#include "multi_boot_util.h"
#include "multi_sio.h"

void sub_0803149C(void);
u32 sub_0803169C(struct Multi_08030C94 *);

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
    struct MultiSioData *r6;

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
        r6 = &gMultiSioSend;
        r6->unk0 = 0x20;
        r6->unk1 = gUnk_020382D0.unk6;
        r6->unk10 = r4->unk0;
        for (r5 = 0; r5 < 6; ++r5)
            r6->unk2.hword[r5] = 0;
        r5 = r7->unk2AC;
        r4 = &r7->unk20[r5];
        r6->unk2.hword[0] |= r4->unk4;
        r5 = (r5 - 1) & 0xF;
        r4 = &r7->unk20[r5];
        r6->unk2.hword[0] |= r4->unk4 << 12;
        r6->unk2.hword[1] |= r4->unk4 >> 4;
        r5 = (r5 - 1) & 0xF;
        r4 = &r7->unk20[r5];
        r6->unk2.hword[1] |= r4->unk4 << 8;
        r6->unk2.hword[2] |= r4->unk4 >> 8;
        r5 = (r5 - 1) & 0xF;
        r4 = &r7->unk20[r5];
        r6->unk2.hword[2] |= r4->unk4 << 4;
        r5 = (r5 - 1) & 0xF;
        r4 = &r7->unk20[r5];
        r6->unk2.hword[3] |= r4->unk4;
        r5 = (r5 - 1) & 0xF;
        r4 = &r7->unk20[r5];
        r6->unk2.hword[3] |= r4->unk4 << 12;
        r6->unk2.hword[4] |= r4->unk4 >> 4;
        r5 = (r5 - 1) & 0xF;
        r4 = &r7->unk20[r5];
        r6->unk2.hword[4] |= r4->unk4 << 8;
        r6->unk2.hword[5] |= r4->unk4 >> 8;
        r5 = (r5 - 1) & 0xF;
        r4 = &r7->unk20[r5];
        r6->unk2.hword[5] |= r4->unk4 << 4;
        r7->unk2AC = (r7->unk2AC + 1) & 0xF;
    }
}
