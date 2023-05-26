#include "global.h"
#include "data.h"
#include "functions.h"
#include "palette.h"

// TODO: merge bg_1.c, sub_08153184.s, bg_2.c into bg.c

void sub_08153060(struct Background *r4) {
    struct LevelInfo_1A0_Full *r6 = gUnk_03002E60[r4->unk1C].y;
    void *tilesetSrc;
    u32 paletteSize;
    u16 b;
    u16 *paletteSrc;

    r4->unk14 = r6->unk0.width;
    r4->unk16 = r6->unk0.height;
    tilesetSrc = r6->unk0.tileset;
    b = r6->unk0.unkC;
    if (!(r4->unk2E & 8)) {
        gUnk_03002EC0[gUnk_030039A4].unk0 = (uintptr_t)tilesetSrc;
        gUnk_03002EC0[gUnk_030039A4].unk4 = r4->unk4;
        gUnk_03002EC0[gUnk_030039A4].unk8 = b;
        gUnk_030039A4 = (gUnk_030039A4 + 1) & 0x3F;
        r4->unk2E ^= 8;
    }
    paletteSrc = r6->unk0.palette;
    paletteSize = r6->unk0.paletteSize;
    r4->unk2A = r6->unk0.paletteOffset;
    if (!(r4->unk2E & 0x10)) {
        if (gUnk_03002440 & 0x10000)
            sub_08158334(paletteSrc, r4->unk2A, paletteSize);
        else {
            DmaCopy16(3, paletteSrc, gBgPalette + r4->unk2A, paletteSize * sizeof(u16));
            gUnk_03002440 |= 1;
        }
        r4->unk2E ^= 0x10;
    }
    r4->unk10 = r6->unk0.tilemap;
    if (r4->unk2E & 0x40) { // Can we actually trigger this condition?
        r4->unk38 = r6->unk0.roomId;
        r4->unk3C = r6->unk20;
        r4->unk3E = r6->unk22;
    }
    gUnk_03002400[gUnk_03003790] = r4;
    gUnk_03003790 = (gUnk_03003790 + 1) & 0xF;
}
