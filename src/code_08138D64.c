#include "data.h"
#include "code_08138D64.h"
#include "functions.h"
#include "main.h"
#include "bg.h"
#include "random.h"
#include "malloc_vram.h"
#include "multi_boot_util.h"
#include "constants/languages.h"

struct Unk_08385CD4 {
    u16 animId;
    u16 variant;
    u16 numTiles;
}; /* size = 0x8 */

void sub_08139218(struct Task *);
void sub_0813A908(struct Unk_08138D64 *);
void sub_0813A9DC(struct Unk_08138D64 *);
void sub_0813AA4C(struct Unk_08138D64 *);
void sub_0813AB40(struct Unk_08138D64 *);
void sub_0813ACA0(struct Unk_08138D64 *);
void sub_0813AD2C(struct Unk_08138D64 *);
bool32 sub_0813AF5C(struct Unk_08385CD4 *, s8);
void sub_0813BDDC(struct Unk_08138D64 *);
void sub_08141E74(void);
void sub_08141EC0(struct Unk_08138D64 *);
void sub_081432B8(struct Unk_08138D64 *);
bool32 sub_08143498(s8);

const u16 gUnk_08385BF8[] = {
    0x14, 0x14,
    0x3C, 0x14,
     0xF,  0xF,
    0x1E,  0xF,
     0xF, 0x14,
    0x14, 0x1E,
    0x1E, 0x32,
};

const u16 gUnk_08385C14[NUM_LANGUAGES][0x10] = {
    [LANGUAGE_JAPANESE] = { 0xF0, 0x10F, 0x110, 0x111, 0x112, 0x113, 0x114, 0x133, 0x134, 0x135, 0x136, 0x137, 0x138, 0x143, 0x144, 0x29E },
    [LANGUAGE_ENGLISH]  = { 0xEC,  0xF7,  0xF8,  0xF9,  0xFA,  0xFB,  0xFC, 0x11B, 0x11C, 0x11D, 0x11E, 0x11F, 0x120, 0x13B, 0x13C, 0x2A1 },
    [LANGUAGE_GERMAN]   = { 0xEB,  0xF1,  0xF2,  0xF3,  0xF4,  0xF5,  0xF6, 0x115, 0x116, 0x117, 0x118, 0x119, 0x11A, 0x139, 0x13A, 0x2A4 },
    [LANGUAGE_FRENCH]   = { 0xEE, 0x103, 0x104, 0x105, 0x106, 0x107, 0x108, 0x127, 0x128, 0x129, 0x12A, 0x12B, 0x12C, 0x13F, 0x140, 0x2A7 },
    [LANGUAGE_SPANISH]  = { 0xED,  0xFD,  0xFE,  0xFF, 0x100, 0x101, 0x102, 0x121, 0x122, 0x123, 0x124, 0x125, 0x126, 0x13D, 0x13E, 0x2AA },
    [LANGUAGE_ITALIAN]  = { 0xEF, 0x109, 0x10A, 0x10B, 0x10C, 0x10D, 0x10E, 0x12D, 0x12E, 0x12F, 0x130, 0x131, 0x132, 0x141, 0x142, 0x2AD },
};

const struct Unk_08385CD4 gUnk_08385CD4[NUM_LANGUAGES][42] = {
    [LANGUAGE_JAPANESE] = {
        { 0x34F,  0x3, 0x39 },
        { 0x34F,  0x4, 0x39 },
        { 0x34F,  0x5, 0x39 },
        { 0x34F,  0x6, 0x39 },
        { 0x34F,  0x7, 0x39 },
        { 0x34F,  0x8, 0x39 },
        { 0x34F,  0x0, 0x4E },
        { 0x34F,  0x1, 0x4E },
        { 0x34F,  0x2, 0x4E },
        { 0x355,  0xD,  0x6 },
        { 0x355,  0xE,  0x9 },
        { 0x355,  0xF,  0xC },
        { 0x355, 0x10,  0xF },
        { 0x355, 0x11, 0x12 },
        { 0x355, 0x12, 0x15 },
        { 0x355, 0x13, 0x18 },
        { 0x355, 0x14, 0x1B },
        { 0x355, 0x15, 0x1E },
        { 0x355, 0x16, 0x21 },
        { 0x356,  0x0, 0x42 },
        { 0x356,  0x1, 0x42 },
        { 0x356,  0x2, 0x42 },
        { 0x356,  0x3, 0x42 },
        { 0x356,  0x4, 0x54 },
        { 0x356,  0x5, 0xC0 },
        { 0x356,  0x6, 0xC0 },
        { 0x356,  0x7, 0x38 },
        { 0x364,  0x2, 0x10 },
        { 0x364,  0x3, 0x10 },
        { 0x364,  0x4, 0x10 },
        { 0x364,  0x5, 0x10 },
        { 0x364,  0x6, 0x28 },
        { 0x364,  0x0, 0x40 },
        { 0x364,  0x1, 0x40 },
        { 0x364,  0x7, 0x39 },
        { 0x364,  0x8, 0x39 },
        { 0x364,  0x9, 0x39 },
        { 0x364,  0xA, 0x39 },
        { 0x356,  0x8, 0x42 },
        { 0x356,  0x9, 0x42 },
        { 0x356,  0xA, 0x42 },
        { 0x356,  0xB, 0x42 },
    },
    [LANGUAGE_ENGLISH]  = {
        { 0x350,  0x3, 0x39 },
        { 0x350,  0x4, 0x39 },
        { 0x350,  0x5, 0x39 },
        { 0x350,  0x6, 0x39 },
        { 0x350,  0x7, 0x39 },
        { 0x350,  0x8, 0x39 },
        { 0x350,  0x0, 0x4E },
        { 0x350,  0x1, 0x4E },
        { 0x350,  0x2, 0x4E },
        { 0x355,  0xD,  0x6 },
        { 0x355,  0xE,  0x9 },
        { 0x355,  0xF,  0xC },
        { 0x355, 0x10,  0xF },
        { 0x355, 0x11, 0x12 },
        { 0x355, 0x12, 0x15 },
        { 0x355, 0x13, 0x18 },
        { 0x355, 0x14, 0x1B },
        { 0x355, 0x15, 0x1E },
        { 0x355, 0x16, 0x21 },
        { 0x357,  0x0, 0x42 },
        { 0x357,  0x1, 0x42 },
        { 0x357,  0x2, 0x42 },
        { 0x357,  0x3, 0x42 },
        { 0x357,  0x4, 0x54 },
        { 0x357,  0x5, 0xC0 },
        { 0x357,  0x6, 0xC0 },
        { 0x357,  0x7, 0x34 },
        { 0x360,  0x2, 0x10 },
        { 0x360,  0x3, 0x10 },
        { 0x360,  0x4, 0x10 },
        { 0x360,  0x5, 0x10 },
        { 0x360,  0x6, 0x28 },
        { 0x360,  0x0, 0x40 },
        { 0x360,  0x1, 0x40 },
        { 0x360,  0x7, 0x39 },
        { 0x360,  0x8, 0x39 },
        { 0x360,  0x9, 0x39 },
        { 0x360,  0xA, 0x39 },
        { 0x357,  0x8, 0x42 },
        { 0x357,  0x9, 0x42 },
        { 0x357,  0xA, 0x42 },
        { 0x357,  0xB, 0x42 },
    },
    [LANGUAGE_GERMAN]   = {
        { 0x351,  0x3, 0x39 },
        { 0x351,  0x4, 0x39 },
        { 0x351,  0x5, 0x39 },
        { 0x351,  0x6, 0x39 },
        { 0x351,  0x7, 0x39 },
        { 0x351,  0x8, 0x39 },
        { 0x351,  0x0, 0x4E },
        { 0x351,  0x1, 0x4E },
        { 0x351,  0x2, 0x4E },
        { 0x355,  0xD,  0x6 },
        { 0x355,  0xE,  0x9 },
        { 0x355,  0xF,  0xC },
        { 0x355, 0x10,  0xF },
        { 0x355, 0x11, 0x12 },
        { 0x355, 0x12, 0x15 },
        { 0x355, 0x13, 0x18 },
        { 0x355, 0x14, 0x1B },
        { 0x355, 0x15, 0x1E },
        { 0x355, 0x16, 0x21 },
        { 0x358,  0x0, 0x42 },
        { 0x358,  0x1, 0x42 },
        { 0x358,  0x2, 0x42 },
        { 0x358,  0x3, 0x42 },
        { 0x358,  0x4, 0x54 },
        { 0x358,  0x5, 0xC0 },
        { 0x358,  0x6, 0xC0 },
        { 0x358,  0x7, 0x38 },
        { 0x35F,  0x2, 0x10 },
        { 0x35F,  0x3, 0x10 },
        { 0x35F,  0x4, 0x10 },
        { 0x35F,  0x5, 0x10 },
        { 0x35F,  0x6, 0x28 },
        { 0x35F,  0x0, 0x40 },
        { 0x35F,  0x1, 0x40 },
        { 0x35F,  0x7, 0x39 },
        { 0x35F,  0x8, 0x39 },
        { 0x35F,  0x9, 0x39 },
        { 0x35F,  0xA, 0x39 },
        { 0x358,  0x8, 0x42 },
        { 0x358,  0x9, 0x42 },
        { 0x358,  0xA, 0x42 },
        { 0x358,  0xB, 0x42 },
    },
    [LANGUAGE_FRENCH]   = {
        { 0x352,  0x3, 0x39 },
        { 0x352,  0x4, 0x39 },
        { 0x352,  0x5, 0x39 },
        { 0x352,  0x6, 0x39 },
        { 0x352,  0x7, 0x39 },
        { 0x352,  0x8, 0x39 },
        { 0x352,  0x0, 0x4E },
        { 0x352,  0x1, 0x4E },
        { 0x352,  0x2, 0x4E },
        { 0x355,  0xD,  0x6 },
        { 0x355,  0xE,  0x9 },
        { 0x355,  0xF,  0xC },
        { 0x355, 0x10,  0xF },
        { 0x355, 0x11, 0x12 },
        { 0x355, 0x12, 0x15 },
        { 0x355, 0x13, 0x18 },
        { 0x355, 0x14, 0x1B },
        { 0x355, 0x15, 0x1E },
        { 0x355, 0x16, 0x21 },
        { 0x359,  0x0, 0x42 },
        { 0x359,  0x1, 0x42 },
        { 0x359,  0x2, 0x42 },
        { 0x359,  0x3, 0x42 },
        { 0x359,  0x4, 0x54 },
        { 0x359,  0x5, 0xC0 },
        { 0x359,  0x6, 0xC0 },
        { 0x359,  0x7, 0x38 },
        { 0x362,  0x2, 0x10 },
        { 0x362,  0x3, 0x10 },
        { 0x362,  0x4, 0x10 },
        { 0x362,  0x5, 0x10 },
        { 0x362,  0x6, 0x28 },
        { 0x362,  0x0, 0x40 },
        { 0x362,  0x1, 0x40 },
        { 0x362,  0x7, 0x39 },
        { 0x362,  0x8, 0x39 },
        { 0x362,  0x9, 0x39 },
        { 0x362,  0xA, 0x39 },
        { 0x359,  0x8, 0x42 },
        { 0x359,  0x9, 0x42 },
        { 0x359,  0xA, 0x42 },
        { 0x359,  0xB, 0x42 },
    },
    [LANGUAGE_SPANISH]  = {
        { 0x353,  0x3, 0x39 },
        { 0x353,  0x4, 0x39 },
        { 0x353,  0x5, 0x39 },
        { 0x353,  0x6, 0x39 },
        { 0x353,  0x7, 0x39 },
        { 0x353,  0x8, 0x39 },
        { 0x353,  0x0, 0x4E },
        { 0x353,  0x1, 0x4E },
        { 0x353,  0x2, 0x4E },
        { 0x355,  0xD,  0x6 },
        { 0x355,  0xE,  0x9 },
        { 0x355,  0xF,  0xC },
        { 0x355, 0x10,  0xF },
        { 0x355, 0x11, 0x12 },
        { 0x355, 0x12, 0x15 },
        { 0x355, 0x13, 0x18 },
        { 0x355, 0x14, 0x1B },
        { 0x355, 0x15, 0x1E },
        { 0x355, 0x16, 0x21 },
        { 0x35A,  0x0, 0x42 },
        { 0x35A,  0x1, 0x42 },
        { 0x35A,  0x2, 0x42 },
        { 0x35A,  0x3, 0x42 },
        { 0x35A,  0x4, 0x54 },
        { 0x35A,  0x5, 0xC0 },
        { 0x35A,  0x6, 0xC0 },
        { 0x35A,  0x7, 0x34 },
        { 0x361,  0x2, 0x10 },
        { 0x361,  0x3, 0x10 },
        { 0x361,  0x4, 0x10 },
        { 0x361,  0x5, 0x10 },
        { 0x361,  0x6, 0x28 },
        { 0x361,  0x0, 0x40 },
        { 0x361,  0x1, 0x40 },
        { 0x361,  0x7, 0x39 },
        { 0x361,  0x8, 0x39 },
        { 0x361,  0x9, 0x39 },
        { 0x361,  0xA, 0x39 },
        { 0x35A,  0x8, 0x42 },
        { 0x35A,  0x9, 0x42 },
        { 0x35A,  0xA, 0x42 },
        { 0x35A,  0xB, 0x42 },
    },
    [LANGUAGE_ITALIAN]  = {
        { 0x354,  0x3, 0x39 },
        { 0x354,  0x4, 0x39 },
        { 0x354,  0x5, 0x39 },
        { 0x354,  0x6, 0x39 },
        { 0x354,  0x7, 0x39 },
        { 0x354,  0x8, 0x39 },
        { 0x354,  0x0, 0x4E },
        { 0x354,  0x1, 0x4E },
        { 0x354,  0x2, 0x4E },
        { 0x355,  0xD,  0x6 },
        { 0x355,  0xE,  0x9 },
        { 0x355,  0xF,  0xC },
        { 0x355, 0x10,  0xF },
        { 0x355, 0x11, 0x12 },
        { 0x355, 0x12, 0x15 },
        { 0x355, 0x13, 0x18 },
        { 0x355, 0x14, 0x1B },
        { 0x355, 0x15, 0x1E },
        { 0x355, 0x16, 0x21 },
        { 0x35B,  0x0, 0x42 },
        { 0x35B,  0x1, 0x42 },
        { 0x35B,  0x2, 0x42 },
        { 0x35B,  0x3, 0x42 },
        { 0x35B,  0x4, 0x54 },
        { 0x35B,  0x5, 0xC0 },
        { 0x35B,  0x6, 0xC0 },
        { 0x35B,  0x7, 0x34 },
        { 0x363,  0x2, 0x10 },
        { 0x363,  0x3, 0x10 },
        { 0x363,  0x4, 0x10 },
        { 0x363,  0x5, 0x10 },
        { 0x363,  0x6, 0x28 },
        { 0x363,  0x0, 0x40 },
        { 0x363,  0x1, 0x40 },
        { 0x363,  0x7, 0x39 },
        { 0x363,  0x8, 0x39 },
        { 0x363,  0x9, 0x39 },
        { 0x363,  0xA, 0x39 },
        { 0x35B,  0x8, 0x42 },
        { 0x35B,  0x9, 0x42 },
        { 0x35B,  0xA, 0x42 },
        { 0x35B,  0xB, 0x42 },
    },
};

const struct Unk_08385CD4 gUnk_083864B4[] = {
    { 0x355, 0x3, 0x1 },
    { 0x355, 0x4, 0x1 },
    { 0x355, 0x5, 0x1 },
    { 0x355, 0x6, 0x1 },
    { 0x355, 0x7, 0x1 },
    { 0x355, 0x8, 0x1 },
    { 0x355, 0x9, 0x1 },
    { 0x355, 0xA, 0x1 },
    { 0x355, 0xB, 0x1 },
    { 0x355, 0xC, 0x1 },
};

const u16 gUnk_08386504[] = {
    0x10, 0x28, 0x40,
};

const u16 gUnk_0838650A[] = {
    0x10, 0x25, 0x3A, 0x4F,
};

const u8 gUnk_08386512[] = {
    0x13, 0x15, 0x17, 0x19,
};

const u32 gUnk_08386518[3] = {
    0, 1, 2,
};

const struct Unk_08385CD4 gUnk_08386524[5] = {
    { 0x355,  0x0, 0x0 },
    { 0x355,  0xD, 0x6 },
    { 0x355, 0x17, 0x0 },
    { 0x355, 0x18, 0x0 },
    { 0x355, 0x19, 0x0 },
};

const u8 gUnk_0838654C[5] = {
    3, 4, 5, 6, 7,
};

const u8 gUnk_08386551[3] = {
    0x10, 0x15, 0x1A,
};

const u16 gUnk_08386554[3] = {
    0x1B, 0x23, 0x2B,
};

const u16 gUnk_0838655A[3] = {
    0x23, 0x2B, 0x33,
};

const u16 gUnk_08386560[3] = {
    0x27, 0x2F, 0x37,
};

const struct Unk_08385CD4 gUnk_08386568[3] = {
    { 0x35C, 0x0, 0x0 },
    { 0x35C, 0x1, 0x0 },
    { 0x35C, 0x2, 0x0 },
};

const u8 gUnk_08386580[3] = {
    3, 4, 6,
};

const u8 gUnk_08386583[4] = {
    0x10, 0x12, 0x14, 0x16,
};

const u16 gUnk_08386588[4] = {
    0x1B, 0x23, 0x2B, 0x33,
};

const u16 gUnk_08386590[3][2] = {
    { 0x355,  0xD },
    { 0x355, 0x17 },
    { 0x355, 0x18 },
};

extern const u16 gUnk_08932F8C[];

void sub_08138D64(u8 a1) {
    u8 i;
    u32 bgCnt[3];
    struct Task *t;
    struct Unk_08138D64 *tmp, *var;

    gVramHeapMaxTileSlots = 0x400;
    gVramHeapStartAddr = 0x6010000;
    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_0;
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0x10;
    memcpy(bgCnt, gUnk_08386518, sizeof(gUnk_08386518));
    for (i = 0; i < 3; ++i)
        gBgCntRegs[i] = bgCnt[i] | ((0x1F - i) << 8) | (i << 2);
    for (i = 0; i < 4; ++i) {
        gBgScrollRegs[i][0] = 0;
        gBgScrollRegs[i][1] = 0;
    }
    for (i = 0; i < 10; ++i)
        gKeysContinuedRepeatIntervals[i] = 6;
    m4aSongNumStartOrChange(2);
    t = TaskCreate(sub_08141E74, sizeof(struct Unk_08138D64), 0x1000, TASK_USE_IWRAM, sub_08139218);
    tmp = TaskGetStructPtr(t);
    var = tmp;
    CpuFill16(0, var, sizeof(struct Unk_08138D64));
    var->unkBDC = sub_0813BDDC;
    var->unkB = 0;
    var->unkA = 0;
    var->unk0 = 8;
    var->unk1 = 8;
    var->unk9CA = var->unk9CB = a1;
    var->unk3A4 = var->unk3A5 = 1;
    var->unkBE3 = 0xF;
    var->unkBE6 = (Rand32() % 0x100) + 0x12C;
    var->unkA = var->unkB = gUnk_0203AD48 > 2 ? 0 : gUnk_0203AD48;
    for (i = 0; i < 3; ++i) {
        var->unk7[i] = gUnk_0203ACB0[i];
        if (var->unk7[i] == 100)
            var->unk4[i] = 1;
        else
            var->unk4[i] = 0;
    }
    var->unk9CC = sub_08141EC0;
}

void sub_08138F68(void) {
    u8 i;
    u32 bgCnt[3];
    struct Task *t;
    struct Unk_08138D64 *tmp, *var;

    gVramHeapMaxTileSlots = 0x400;
    gVramHeapStartAddr = 0x6010000;
    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_0;
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0x10;
    memcpy(bgCnt, gUnk_08386518, sizeof(gUnk_08386518));
    for (i = 0; i < 3; ++i)
        gBgCntRegs[i] = bgCnt[i] | ((0x1F - i) << 8) | (i << 2);
    for (i = 0; i < 4; ++i) {
        gBgScrollRegs[i][0] = 0;
        gBgScrollRegs[i][1] = 0;
    }
    m4aSongNumStartOrChange(2);
    for (i = 0; i < 10; ++i)
        gKeysContinuedRepeatIntervals[i] = 6;
    t = TaskCreate(sub_08141E74, sizeof(struct Unk_08138D64), 0x1000, TASK_USE_IWRAM, sub_08139218);
    tmp = TaskGetStructPtr(t);
    var = tmp;
    CpuFill16(0, var, sizeof(struct Unk_08138D64));
    var->unkBDC = sub_0813BDDC;
    var->unkB = 0;
    var->unkA = 0;
    var->unk0 = 0xA;
    var->unk1 = 0xA;
    var->unk3A4 = var->unk3A5 = 2;
    var->unkBE3 = 0xA;
    var->unkBE6 = (Rand32() % 0x100) + 0x12C;
    var->unkA = var->unkB = gUnk_0203AD48 > 2 ? 0 : gUnk_0203AD48;
    for (i = 0; i < 3; ++i) {
        var->unk7[i] = gUnk_0203ACB0[i];
        if (var->unk7[i] == 100)
            var->unk4[i] = 1;
        else
            var->unk4[i] = 0;
    }
    var->unk9CC = sub_08141EC0;
}

s8 sub_0813914C(u8 a1 __attribute__((unused))) {
    s8 r6 = 0x27 * sub_08019CDC() / 0x54;
    u16 r5 = 0, i;

    for (i = 0; i < 0x110; ++i) {
        if (sub_08002A5C(gUnk_08932F8C[i]))
            ++r5;
    }
    r6 += 0x25 * r5 / 0x110;
    r5 = 0;
    for (i = 1; i < 0x10; ++i) {
        if (*sub_08002888(2, i, 0))
            ++r5;
    }
    r6 += r5;
    r6 += sub_08019D5C();
    if (gUnk_0203AD2C >= 9999)
        ++r6;
    return r6;
}

void sub_08139218(struct Task *t) {
    u8 i;
    struct Unk_08138D64 *var = TaskGetStructPtr(t);

    if (var->unk28C.tilesVram) {
        VramFree(var->unk28C.tilesVram);
        var->unk28C.tilesVram = 0;
    }
    if (var->unkC.tilesVram) {
        VramFree(var->unkC.tilesVram);
        var->unkC.tilesVram = 0;
    }
    sub_0813A908(var);
    sub_0813AA4C(var);
    sub_0813A9DC(var);
    sub_0813AB40(var);
    sub_0813ACA0(var);
    sub_0813AD2C(var);
    for (i = 0; i < 0xA; ++i)
        gKeysContinuedRepeatIntervals[i] = 8;
}

void sub_081392A0(struct Unk_08138D64 *a1) {
    struct Sprite *sprite;

    sprite = &a1->unkC;
    SpriteInitNoPointer2(sprite, VramMalloc(gUnk_08385CD4[gLanguage][0].numTiles), 0x780,
        gUnk_08385CD4[gLanguage][0].animId, gUnk_08385CD4[gLanguage][0].variant,
        0, 0xFF, 0x10, 0, -0x9C, 0, 0);
    sprite = &a1->unk28C;
    SpriteInitNoPointer2(&a1->unk28C, VramMalloc(0x10), 0x280, 0x355, 2, 0, 0xFF, 0x10, 1, -0x20, 0x10, 0);
}

void sub_08139368(struct Unk_08138D64 *a1) {
    u8 i;
    struct Sprite *sprite;
    u8 sp00[3];
    u8 sp04[3];
    u8 sp08[3];
    u32 sp0C[3];
    union {
        struct Unk_08385CD4 pat1[5];
        struct {
            u8 unk0[3];
            u16 unk4[3];
        } pat2;
        u16 pat3[3];
    } sp18;
    u8 sp40[5];
    struct Unk_08385CD4 sp48;

    for (i = 0; i < 3; ++i) {
        if (a1->unkA == i) {
            sp00[i] = 2;
            sp04[i] = 2;
            sp08[i] = i + 4;
            sp0C[i] = 0;
        } else {
            sp00[i] = 3;
            sp04[i] = 3;
            sp08[i] = 7;
            sp0C[i] = 0x40000;
        }
    }
    memcpy(sp18.pat1, gUnk_08386524, sizeof(gUnk_08386524));
    memcpy(sp40, gUnk_0838654C, sizeof(gUnk_0838654C));
    for (i = 0; i < 5; ++i) {
        sprite = &a1->unk2B4;
        SpriteInitNoPointer2(sprite, 0, 0x3FC0, sp18.pat1[i].animId, sp18.pat1[i].variant,
            0, 0xFF, 0x10, sp40[i], -0x40, -0x40, 0);
    }
    memcpy(sp18.pat2.unk0, gUnk_08386551, sizeof(gUnk_08386551));
    memcpy(sp18.pat2.unk4, gUnk_08386554, sizeof(gUnk_08386554));
    for (i = 0; i < 3; ++i) {
        sprite = &a1->unk34[i];
        SpriteInitNoPointer2(sprite, VramMalloc(gUnk_08385CD4[gLanguage][i+6].numTiles), sp18.pat2.unk0[i] * 0x40, gUnk_08385CD4[gLanguage][i+6].animId,
            gUnk_08385CD4[gLanguage][i+6].variant, 0, 0xFF, 0x10, sp00[i], 0xF0, sp18.pat2.unk4[i], sp0C[i]);
    }
    memcpy(sp18.pat3, gUnk_0838655A, sizeof(gUnk_0838655A));
    for (i = 0; i < 3; ++i) {
        if (a1->unk7[i] <= 0) {
            sprite = &a1->unk124[i][2];
            SpriteInitNoPointer2(sprite, VramMalloc(gUnk_083864B4[0].numTiles), (5 * i + 0xF) * 0x40, gUnk_083864B4[0].animId, gUnk_083864B4[0].variant,
                0, 0xFF, 0x10, sp04[i], 0x1A8, sp18.pat3[i], sp0C[i]);
            continue;
        }
        if (a1->unk7[i] == 100) {
            sprite = &a1->unk124[i][0];
            SpriteInitNoPointer2(sprite, VramMalloc(gUnk_083864B4[1].numTiles), (5 * i + 0xF) * 0x40, gUnk_083864B4[1].animId, gUnk_083864B4[1].variant,
                0, 0xFF, 0x10, sp04[i], 0x198, sp18.pat3[i], sp0C[i]);
        }
        if (a1->unk7[i] >= 10) {
            u8 tens = a1->unk7[i] / 10 % 10;

            sprite = &a1->unk124[i][1];
            SpriteInitNoPointer2(sprite, VramMalloc(gUnk_083864B4[tens].numTiles), (5 * i + 0xF) * 0x40, gUnk_083864B4[tens].animId, gUnk_083864B4[tens].variant,
                0, 0xFF, 0x10, sp04[i], 0x1A0, sp18.pat3[tens], sp0C[i]);
        }
        {
            u8 ones = a1->unk7[i] % 10;

            sprite = &a1->unk124[i][2];
            SpriteInitNoPointer2(sprite, VramMalloc(gUnk_083864B4[ones].numTiles), (5 * i + 0xF) * 0x40, gUnk_083864B4[ones].animId, gUnk_083864B4[ones].variant,
                0, 0xFF, 0x10, sp04[i], 0x1A8, sp18.pat3[ones], sp0C[i]);
        }
    }
    memcpy(sp18.pat3, gUnk_08386560, sizeof(gUnk_08386560));
    for (i = 0; i < 3; ++i) {
        if (sub_08143498(a1->unk7[i])) {
            sub_0813AF5C(&sp48, a1->unk7[i]);
            sprite = &a1->unkAC[i];
            SpriteInitNoPointer2(sprite, VramMalloc(sp48.numTiles), (5 * i + 0xF) * 0x40, sp48.animId, sp48.variant, 0,
                0xFF, 0x10, sp08[i], 0x143, sp18.pat3[i], 0x40000);
        }
    }
}

void sub_081397FC(struct Unk_08138D64 *a1) {
    struct Sprite *sprite;
    u8 i;
    u8 sp00[4];
    u32 sp04[4];
    union {
        struct Unk_08385CD4 pat1[3];
        struct {
            u8 unk0[4];
            u16 unk4[4];
        } pat2;
    } sp14;
    u8 sp2C[3];

    for (i = 0; i < 4; ++i) {
        if (a1->unk3A4 == i) {
            sp00[i] = 2;
            sp04[i] = 0;
        } else {
            sp00[i] = 3;
            sp04[i] = 0x40000;
        }
    }
    memcpy(sp14.pat1, gUnk_08386568, sizeof(gUnk_08386568));
    memcpy(sp2C, gUnk_08386580, sizeof(gUnk_08386580));
    for (i = 0; i < 3; ++i) {
        sprite = &a1->unk2B4;
        SpriteInitNoPointer2(sprite, VramMalloc(sp14.pat1[i].numTiles), 0x3FC0, sp14.pat1[i].animId, sp14.pat1[i].variant,
            0, 0xFF, 0x10, sp2C[i], -0x40, -0x40, 0);
    }
    memcpy(sp14.pat2.unk0, gUnk_08386583, sizeof(gUnk_08386583));
    memcpy(sp14.pat2.unk4, gUnk_08386588, sizeof(gUnk_08386588));
    for (i = 0; i < 4; ++i) {
        sprite = &a1->unk2DC[i];
        SpriteInitNoPointer2(sprite, VramMalloc(gUnk_08385CD4[gLanguage][i+0x13].numTiles), sp14.pat2.unk0[i] * 0x40, gUnk_08385CD4[gLanguage][i+0x13].animId,
            gUnk_08385CD4[gLanguage][i+0x13].variant, 0, 0xFF, 0x10, sp00[i], 0xF0, sp14.pat2.unk4[i], sp04[i]);
    }
    sprite = &a1->unk37C;
    SpriteInitNoPointer2(sprite, VramMalloc(gUnk_08385CD4[gLanguage][0x17].numTiles), 0x200, gUnk_08385CD4[gLanguage][0x17].animId,
        gUnk_08385CD4[gLanguage][0x17].variant, 0, 0xFF, 0x10, 5, 0x80, -0x40, 0);
}

void sub_08139A3C(struct Unk_08138D64 *a1) {
    u8 i;
    u8 r6;
    struct Sprite *sprite;

    r6 = a1->unkA;
    sprite = &a1->unk2B4;
    SpriteInitNoPointer2(sprite, VramMalloc(0), 0x3FC0, 0x35C, 3, 0, 0xFF, 0x10, 6, -0x40, -0x40, 0);
    SpriteInitNoPointer2(sprite, VramMalloc(0), 0x3FC0, 0x355, 1, 0, 0xFF, 0x10, 3, -0x40, -0x40, 0);
    sprite = &a1->unk3A8;
    SpriteInitNoPointer2(sprite, VramMalloc(gUnk_08385CD4[gLanguage][0x18].numTiles), 0x200, gUnk_08385CD4[gLanguage][0x18].animId,
        gUnk_08385CD4[gLanguage][0x18].variant, 0, 0xFF, 0x10, 5, 0x78, 0x5C, 0);
    sprite = &a1->unk3D0;
    SpriteInitNoPointer2(sprite, VramMalloc(gUnk_08385CD4[gLanguage][0x1A].numTiles), 0x1C0, gUnk_08385CD4[gLanguage][0x1A].animId,
        gUnk_08385CD4[gLanguage][0x1A].variant, 0, 0xFF, 0x10, 7, 0x74, 0x56, 0);
    {
        union {
            struct Unk_08385CD4 pat1[3];
            u16 pat2[3][2];
        } sp00 = {
            .pat1 = {
                { gUnk_08385CD4[gLanguage][6].animId, gUnk_08385CD4[gLanguage][6].variant, gUnk_08385CD4[gLanguage][6].numTiles },
                { gUnk_08385CD4[gLanguage][7].animId, gUnk_08385CD4[gLanguage][7].variant, gUnk_08385CD4[gLanguage][7].numTiles },
                { gUnk_08385CD4[gLanguage][8].animId, gUnk_08385CD4[gLanguage][8].variant, gUnk_08385CD4[gLanguage][8].numTiles },
            },
        };
        struct Unk_08385CD4 sp30;

        sprite = a1->unk34 + r6;
        SpriteInitNoPointer2(sprite, VramMalloc(sp00.pat1[r6].numTiles), 0x540, sp00.pat1[r6].animId, sp00.pat1[r6].variant, 0, 0xFF, 0x10, 2, 0xF0, 0x1B, 0);
        a1->unk124[r6][2].palId = 2;
        a1->unk124[r6][1].palId = 2;
        a1->unk124[r6][0].palId = 2;
        if (a1->unk7[r6] == 100) {
            sprite = &a1->unk124[r6][0];
            SpriteInitNoPointer2(sprite, VramMalloc(gUnk_083864B4[1].numTiles), 0x500, gUnk_083864B4[1].animId, gUnk_083864B4[1].variant,
                0, 0xFF, 0x10, 2, 0x198, 0x23, 0);
        }
        if (a1->unk7[r6] >= 10) {
            u8 tens = a1->unk7[r6] / 10 % 10;
    
            sprite = &a1->unk124[r6][1];
            SpriteInitNoPointer2(sprite, VramMalloc(gUnk_083864B4[tens].numTiles), 0x500, gUnk_083864B4[tens].animId, gUnk_083864B4[tens].variant,
                0, 0xFF, 0x10, 2, 0x1A0, 0x23, 0);
        }
        {
            u8 ones = a1->unk7[r6] % 10;
    
            sprite = &a1->unk124[r6][2];
            SpriteInitNoPointer2(sprite, VramMalloc(gUnk_083864B4[ones].numTiles), 0x500, gUnk_083864B4[ones].animId, gUnk_083864B4[ones].variant,
                0, 0xFF, 0x10, 2, 0x1A8, 0x23, 0);
        }
        memcpy(sp00.pat2, gUnk_08386590, sizeof(gUnk_08386590));
        sprite = &a1->unk2B4;
        SpriteInitNoPointer2(sprite, 0, 0x3FC0, sp00.pat2[r6][0], sp00.pat2[r6][1], 0, 0xFF, 0x10, 4, -0x40, -0x40, 0);
        if (sub_08143498(a1->unk7[r6])) {
            sub_0813AF5C(&sp30, a1->unk7[r6]);
            sprite = &a1->unkAC[r6];
            SpriteInitNoPointer2(sprite, VramMalloc(sp30.numTiles), 0x500, sp30.animId, sp30.variant, 0, 0xFF, 0x10, 4, 0x143, 0x27, 0x40000);
        }
        for (i = 0; i < 3; ++i) {
            sprite = &a1->unk3F8[i];
            SpriteInitNoPointer2(sprite, VramMalloc(0x90), 0x140, 0x35D, 0, 0, 0xFF, 0x10, 8, 0, 0, 0);
        }
    }
}

void sub_08139F58(struct Unk_08138D64 *a1) {
    struct Sprite *sprite;

    sprite = &a1->unk478;
    SpriteInitNoPointer2(sprite, VramMalloc(0x54), 0x640, 0x35E, 0, 0, 0xFF, 0x10, 2, 0x78, 0x3C, 0);
    sprite->unk8 |= 0x80000;
    sprite = &a1->unk4A0;
    SpriteInitNoPointer2(sprite, VramMalloc(0x10), 0x600, 0x35E, 3, 0, 0xFF, 0x10, 3, 0x78, 0x3C, 0);
    sprite->unk8 |= 0x80000;
    sprite = &a1->unk4C8;
    SpriteInitNoPointer2(sprite, VramMalloc(0x32), 0x640, 0x35E, 1, 0, 0xFF, 0x10, 2, -0x40, -0x40, 0);
    sprite->unk8 |= 0x80000;
    sprite = &a1->unk4F0;
    SpriteInitNoPointer2(sprite, VramMalloc(8), 0x600, 0x35E, 4, 0, 0xFF, 0x10, 3, -0x40, -0x40, 0);
    sprite->unk8 |= 0x80000;
    sprite = &a1->unk518;
    SpriteInitNoPointer2(sprite, VramMalloc(0x28), 0x640, 0x35E, 2, 0, 0xFF, 0x10, 2, -0x40, -0x40, 0);
    sprite->unk8 |= 0x80000;
    sprite = &a1->unk540;
    SpriteInitNoPointer2(sprite, VramMalloc(8), 0x600, 0x35E, 5, 0, 0xFF, 0x10, 3, -0x40, -0x40, 0);
    sprite->unk8 |= 0x80000;
}

void sub_0813A110(struct Unk_08138D64 *a1) {
    struct Sprite *sprite;
    u8 i, j;
    u32 vram[2];

    sprite = &a1->unk568;
    SpriteInitNoPointer2(sprite, VramMalloc(0x12), 0x7C0, 0x35E, 6, 0, 0xFF, 0x10, 2, 0x82, 0x12, 0);
    sprite->unk8 |= 0x80000;
    sprite = &a1->unk590;
    SpriteInitNoPointer2(sprite, VramMalloc(0x38), 0x7C0, 0x35E, 7, 0, 0xFF, 0x10, 2, 0x7A, 0x30, 0x40000);
    sprite->unk8 |= 0x80000;
    sprite = &a1->unk5B8;
    SpriteInitNoPointer2(sprite, VramMalloc(0x93), 0x7C0, 0x35E, 8, 0, 0xFF, 0x10, 2, -0x40, -0x40, 0x40000);
    sprite->unk8 |= 0x80000;
    sprite = &a1->unk5E0;
    SpriteInitNoPointer2(sprite, VramMalloc(0xF0), 0x7C0, 0x35E, 9, 0, 0xFF, 0x10, 2, -0x40, -0x40, 0x40000);
    sprite->unk8 |= 0x80000;
    for (i = 0; i < 4; ++i) {
        sprite = &a1->unk630[i];
        SpriteInitNoPointer2(sprite, VramMalloc(gUnk_08385CD4[gLanguage][i + 0x1B].numTiles), 0x3C0,
            gUnk_08385CD4[gLanguage][i + 0x1B].animId, gUnk_08385CD4[gLanguage][i + 0x1B].variant, 0, 0xFF, 0x10, 4, a1->unk4C8.x, a1->unk4C8.y + 0x10, 0);
        sprite->unk8 |= 0x80000;
    }
    sprite = &a1->unk608;
    SpriteInitNoPointer2(sprite, VramMalloc(gUnk_08385CD4[gLanguage][0x1F].numTiles), 0x3C0,
        gUnk_08385CD4[gLanguage][0x1F].animId, gUnk_08385CD4[gLanguage][0x1F].variant, 0, 0xFF, 0x10, 4, 0xC4, 0x30, 0);
    sprite->unk8 |= 0x80000;
    vram[0] = VramMalloc(gUnk_08385CD4[gLanguage][0x20].numTiles);
    vram[1] = VramMalloc(gUnk_08385CD4[gLanguage][0x21].numTiles);
    for (j = 0; j < 3; ++j) {
        for (i = 0; i < 2; ++i) {
            sprite = &a1->unk6D0[j][i];
            SpriteInitNoPointer2(sprite, vram[i], 0x3C0, gUnk_08385CD4[gLanguage][i + 0x20].animId, gUnk_08385CD4[gLanguage][i + 0x20].variant,
                0, 0xFF, 0x10, 4, i * 0x40 + 0xAD, 0x5E, j | 0x20 | 0x40000);
            sprite->unk8 |= 0x80000;
        }
    }
}

void sub_0813A464(struct Unk_08138D64 *a1) {
    struct Sprite *sprite;
#ifdef NONMATCHING
    u32 r0;
#else
    register u32 r0 asm("r0");
#endif
    s8 r4;
    u8 i, j;
    s8 var;
    u8 sp00[4];
    u8 sp04[4];
    u32 sp08[4];
    u8 sp28[3];
    s16 sp2C;

    sp00[0] = 2;
    sp04[0] = 2;
    sp08[0] = 0;
    for (i = 1; i < 4; ++i) {
        sp00[i] = 3;
        sp04[i] = 3;
        sp08[i] = 0x40000;
    }
    sprite = &a1->unk2B4;
    SpriteInitNoPointer2(sprite, VramMalloc(0), 0x3FC0, 0x35E, 0xA, 0, 0xFF, 0x10, 3, -0x40, -0x40, 0);
    for (i = 0; i < 4; ++i) {
        sprite = &a1->unk2DC[i];
        SpriteInitNoPointer2(sprite, VramMalloc(gUnk_08385CD4[gLanguage][i + 0x22].numTiles), 0x500,
            gUnk_08385CD4[gLanguage][i + 0x22].animId, gUnk_08385CD4[gLanguage][i + 0x22].variant, 0, 0xFF, 0x10, sp00[i], 0x58, 0x15 * i + 0x1B, sp08[i]);
    }
    sp2C = 0xC8;
    for (i = 0; i < 4; ++i) {
        var = a1->unk9C4[i];
        if (var < 0) {
            sp28[0] = sp28[1] = sp28[2] = 0;
        } else {
            sp28[0] = var / 100;
            r4 = var - 100 * sp28[0];
            sp28[1] = r4 / 10;
            r0 = (u8)(r4 - 10 * sp28[1]);
            sp28[2] = r0;
        }
        for (j = 0; j < 3; ++j) {
            sprite = &a1->unk7E4[i][j];
            SpriteInitNoPointer2(sprite, VramMalloc(gUnk_083864B4[sp28[j]].numTiles), 0x4C0,
                gUnk_083864B4[sp28[j]].animId, gUnk_083864B4[sp28[j]].variant, 0, 0xFF, 0x10, sp04[i], 8 * j + sp2C, 0x15 * i + 0x22, sp08[i]);
        }
    }
}

#ifdef UBFIX
void sub_0813A6D0(struct Unk_08138D64 *a1) {
    struct Sprite *sprite;
    u8 i;
    u8 sp1C = a1->unk4[a1->unkA];
    // doesn't match with a union
    union {
        struct Unk_08385CD4 pat1[3];
        struct {
            u8 unk0[4];
            u8 unk4[4];
            u32 unk8[4];
        } pat2;
    } sp00;
    u8 sp18[3];

    memcpy(sp00.pat1, gUnk_08386568, sizeof(gUnk_08386568));
    memcpy(sp18, gUnk_08386580, sizeof(gUnk_08386580));
    for (i = 0; i < 3; ++i) {
        sprite = &a1->unk2B4;
        SpriteInitNoPointer2(sprite, VramMalloc(sp00.pat1[i].numTiles), 0x3FC0, sp00.pat1[i].animId, sp00.pat1[i].variant, 0, 0xFF, 0x10, sp18[i], -0x40, -0x40, 0);
    }
    memcpy(sp00.pat2.unk0, gUnk_08386583, sizeof(gUnk_08386583));
    for (i = 0; i < 4; ++i) {
        if (a1->unk9CA == i) {
            sp00.pat2.unk4[i] = 2;
            sp00.pat2.unk8[i] = 0;
        } else {
            sp00.pat2.unk4[i] = 3;
            sp00.pat2.unk8[i] = 0x40000;
        }
    }
    for (i = 0; i < 4; ++i) {
        sprite = &a1->unk2DC[i];
        SpriteInitNoPointer2(sprite, VramMalloc(gUnk_08385CD4[gLanguage][i + 0x26].numTiles), sp00.pat2.unk0[i] * 0x40,
            gUnk_08385CD4[gLanguage][i + 0x26].animId, gUnk_08385CD4[gLanguage][i + 0x26].variant, 0, 0xFF, 0x10, sp00.pat2.unk4[i],
            0xF0, !sp1C ? 8 * i + 0x2B : 8 * i + 0x1B, sp00.pat2.unk8[i]);
    }
    sprite = &a1->unk37C;
    SpriteInitNoPointer2(sprite, VramMalloc(gUnk_08385CD4[gLanguage][0x17].numTiles), 0x200, gUnk_08385CD4[gLanguage][0x17].animId,
        gUnk_08385CD4[gLanguage][0x17].variant, 0, 0xFF, 0x10, 5, 0x80, -0x40, 0);
}
#else
void sub_0813A6D0(struct Unk_08138D64 *a1) {
    struct Sprite *sprite;
    u8 i;
    u8 sp1C = a1->unk4[a1->unkA];
    struct Unk_08385CD4 sp00_struct[0];
    u8 sp00[4];
    u8 sp04[4];
    u32 sp08[4];
    u8 sp18[3];

    memcpy(sp00_struct, gUnk_08386568, sizeof(gUnk_08386568));
    memcpy(sp18, gUnk_08386580, sizeof(gUnk_08386580));
    for (i = 0; i < 3; ++i) {
        sprite = &a1->unk2B4;
        SpriteInitNoPointer2(sprite, VramMalloc(sp00_struct[i].numTiles), 0x3FC0, sp00_struct[i].animId, sp00_struct[i].variant, 0, 0xFF, 0x10, sp18[i], -0x40, -0x40, 0);
    }
    memcpy(sp00, gUnk_08386583, sizeof(gUnk_08386583));
    for (i = 0; i < 4; ++i) {
        if (a1->unk9CA == i) {
            sp04[i] = 2;
            sp08[i] = 0;
        } else {
            sp04[i] = 3;
            sp08[i] = 0x40000;
        }
    }
    for (i = 0; i < 4; ++i) {
        sprite = &a1->unk2DC[i];
        SpriteInitNoPointer2(sprite, VramMalloc(gUnk_08385CD4[gLanguage][i + 0x26].numTiles), sp00[i] * 0x40,
            gUnk_08385CD4[gLanguage][i + 0x26].animId, gUnk_08385CD4[gLanguage][i + 0x26].variant, 0, 0xFF, 0x10, sp04[i],
            0xF0, !sp1C ? 8 * i + 0x2B : 8 * i + 0x1B, sp08[i]);
    }
    sprite = &a1->unk37C;
    SpriteInitNoPointer2(sprite, VramMalloc(gUnk_08385CD4[gLanguage][0x17].numTiles), 0x200, gUnk_08385CD4[gLanguage][0x17].animId,
        gUnk_08385CD4[gLanguage][0x17].variant, 0, 0xFF, 0x10, 5, 0x80, -0x40, 0);
}
#endif

void sub_0813A908(struct Unk_08138D64 *a1) {
    u8 i;

    for (i = 0; i < 3; ++i) {
        if (a1->unk34[i].tilesVram) {
            VramFree(a1->unk34[i].tilesVram);
            a1->unk34[i].tilesVram = 0;
        }
        if (sub_08143498(a1->unk7[i])
            && a1->unkAC[i].tilesVram) {
            VramFree(a1->unkAC[i].tilesVram);
            a1->unkAC[i].tilesVram = 0;
        }
        if (a1->unk7[i] == 100
            && a1->unk124[i][0].tilesVram) {
            VramFree(a1->unk124[i][0].tilesVram);
            a1->unk124[i][0].tilesVram = 0;
        }
        if (a1->unk7[i] >= 10
            && a1->unk124[i][1].tilesVram) {
            VramFree(a1->unk124[i][1].tilesVram);
            a1->unk124[i][1].tilesVram = 0;
        }
        if (a1->unk124[i][2].tilesVram) {
            VramFree(a1->unk124[i][2].tilesVram);
            a1->unk124[i][2].tilesVram = 0;
        }
    }
}

void sub_0813A9DC(struct Unk_08138D64 *a1) {
    if (a1->unk2DC[0].tilesVram) {
        VramFree(a1->unk2DC[0].tilesVram);
        a1->unk2DC[0].tilesVram = 0;
    }
    if (a1->unk2DC[1].tilesVram) {
        VramFree(a1->unk2DC[1].tilesVram);
        a1->unk2DC[1].tilesVram = 0;
    }
    if (a1->unk2DC[2].tilesVram) {
        VramFree(a1->unk2DC[2].tilesVram);
        a1->unk2DC[2].tilesVram = 0;
    }
    if (a1->unk2DC[3].tilesVram) {
        VramFree(a1->unk2DC[3].tilesVram);
        a1->unk2DC[3].tilesVram = 0;
    }
    if (a1->unk37C.tilesVram) {
        VramFree(a1->unk37C.tilesVram);
        a1->unk37C.tilesVram = 0;
    }
}

void sub_0813AA4C(struct Unk_08138D64 *a1) {
    u8 var = a1->unkA, i;

    if (a1->unk3A8.tilesVram) {
        VramFree(a1->unk3A8.tilesVram);
        a1->unk3A8.tilesVram = 0;
    }
    if (a1->unk3D0.tilesVram) {
        VramFree(a1->unk3D0.tilesVram);
        a1->unk3D0.tilesVram = 0;
    }
    if (a1->unk34[var].tilesVram) {
        VramFree(a1->unk34[var].tilesVram);
        a1->unk34[var].tilesVram = 0;
    }
    if (a1->unkAC[var].tilesVram) {
        VramFree(a1->unkAC[var].tilesVram);
        a1->unkAC[var].tilesVram = 0;
    }
    if (a1->unk472 == 100 && a1->unk124[var][0].tilesVram) {
        VramFree(a1->unk124[var][0].tilesVram);
        a1->unk124[var][0].tilesVram = 0;
    }
    if (a1->unk472 >= 10 && a1->unk124[var][1].tilesVram) {
        VramFree(a1->unk124[var][1].tilesVram);
        a1->unk124[var][1].tilesVram = 0;
    }
    if (a1->unk124[var][2].tilesVram) {
        VramFree(a1->unk124[var][2].tilesVram);
        a1->unk124[var][2].tilesVram = 0;
    }
    for (i = 0; i < 3; ++i) {
        if (a1->unk3F8[i].tilesVram) {
            VramFree(a1->unk3F8[i].tilesVram);
            a1->unk3F8[i].tilesVram = 0;
        }
    }
}

void sub_0813AB40(struct Unk_08138D64 *a1) {
    if (a1->unk478.tilesVram) {
        VramFree(a1->unk478.tilesVram);
        a1->unk478.tilesVram = 0;
    }
    if (a1->unk4A0.tilesVram) {
        VramFree(a1->unk4A0.tilesVram);
        a1->unk4A0.tilesVram = 0;
    }
    if (a1->unk4C8.tilesVram) {
        VramFree(a1->unk4C8.tilesVram);
        a1->unk4C8.tilesVram = 0;
    }
    if (a1->unk4F0.tilesVram) {
        VramFree(a1->unk4F0.tilesVram);
        a1->unk4F0.tilesVram = 0;
    }
    if (a1->unk518.tilesVram) {
        VramFree(a1->unk518.tilesVram);
        a1->unk518.tilesVram = 0;
    }
    if (a1->unk540.tilesVram) {
        VramFree(a1->unk540.tilesVram);
        a1->unk540.tilesVram = 0;
    }
    if (a1->unk568.tilesVram) {
        VramFree(a1->unk568.tilesVram);
        a1->unk568.tilesVram = 0;
    }
    if (a1->unk590.tilesVram) {
        VramFree(a1->unk590.tilesVram);
        a1->unk590.tilesVram = 0;
    }
    if (a1->unk5B8.tilesVram) {
        VramFree(a1->unk5B8.tilesVram);
        a1->unk5B8.tilesVram = 0;
    }
    if (a1->unk5E0.tilesVram) {
        VramFree(a1->unk5E0.tilesVram);
        a1->unk5E0.tilesVram = 0;
    }
    if (a1->unk608.tilesVram) {
        VramFree(a1->unk608.tilesVram);
        a1->unk608.tilesVram = 0;
    }
    if (a1->unk6D0[0][0].tilesVram) {
        VramFree(a1->unk6D0[0][0].tilesVram);
        a1->unk6D0[0][0].tilesVram = 0;
    }
    if (a1->unk6D0[0][1].tilesVram) {
        VramFree(a1->unk6D0[0][1].tilesVram);
        a1->unk6D0[0][1].tilesVram = 0;
    }
    if (a1->unk630[0].tilesVram) {
        VramFree(a1->unk630[0].tilesVram);
        a1->unk630[0].tilesVram = 0;
    }
    if (a1->unk630[1].tilesVram) {
        VramFree(a1->unk630[1].tilesVram);
        a1->unk630[1].tilesVram = 0;
    }
    if (a1->unk630[2].tilesVram) {
        VramFree(a1->unk630[2].tilesVram);
        a1->unk630[2].tilesVram = 0;
    }
    if (a1->unk630[3].tilesVram) {
        VramFree(a1->unk630[3].tilesVram);
        a1->unk630[3].tilesVram = 0;
    }
}

void sub_0813ACA0(struct Unk_08138D64 *a1) {
    u8 i;

    for (i = 0; i < 4; ++i) {
        if (a1->unk2DC[i].tilesVram) {
            VramFree(a1->unk2DC[i].tilesVram);
            a1->unk2DC[i].tilesVram = 0;
        }
        if (a1->unk7E4[i][0].tilesVram) {
            VramFree(a1->unk7E4[i][0].tilesVram);
            a1->unk7E4[i][0].tilesVram = 0;
        }
        if (a1->unk7E4[i][1].tilesVram) {
            VramFree(a1->unk7E4[i][1].tilesVram);
            a1->unk7E4[i][1].tilesVram = 0;
        }
        if (a1->unk7E4[i][2].tilesVram) {
            VramFree(a1->unk7E4[i][2].tilesVram);
            a1->unk7E4[i][2].tilesVram = 0;
        }
    }
}

void sub_0813AD2C(struct Unk_08138D64 *a1) {
    if (a1->unk2DC[0].tilesVram) {
        VramFree(a1->unk2DC[0].tilesVram);
        a1->unk2DC[0].tilesVram = 0;
    }
    if (a1->unk2DC[1].tilesVram) {
        VramFree(a1->unk2DC[1].tilesVram);
        a1->unk2DC[1].tilesVram = 0;
    }
    if (a1->unk2DC[2].tilesVram) {
        VramFree(a1->unk2DC[2].tilesVram);
        a1->unk2DC[2].tilesVram = 0;
    }
    if (a1->unk2DC[3].tilesVram) {
        VramFree(a1->unk2DC[3].tilesVram);
        a1->unk2DC[3].tilesVram = 0;
    }
    if (a1->unk37C.tilesVram) {
        VramFree(a1->unk37C.tilesVram);
        a1->unk37C.tilesVram = 0;
    }
}

void sub_0813AD9C(struct Unk_08138D64 *a1) {
    u8 i;

    sub_0815604C(&a1->unkC);
    sub_0815604C(&a1->unk28C);
    for (i = 0; i < 3; ++i) {
        sub_0815604C(&a1->unk34[i]);
        if (sub_08143498(a1->unk7[i]))
            sub_0815604C(&a1->unkAC[i]);
        if (a1->unk7[i] == 100)
            sub_0815604C(&a1->unk124[i][0]);
        if (a1->unk7[i] >= 10)
            sub_0815604C(&a1->unk124[i][1]);
        sub_0815604C(&a1->unk124[i][2]);
    }
}

void sub_0813AE30(struct Unk_08138D64 *a1) {
    u8 var = a1->unkA;

    sub_0815604C(&a1->unkC);
    sub_0815604C(&a1->unk28C);
    sub_0815604C(&a1->unk34[var]);
    if (sub_08143498(a1->unk7[var]))
        sub_0815604C(&a1->unkAC[var]);
    if (a1->unk7[var] == 100)
        sub_0815604C(&a1->unk124[var][0]);
    if (a1->unk7[var] >= 10)
        sub_0815604C(&a1->unk124[var][1]);
    sub_0815604C(&a1->unk124[var][2]);
}

void sub_0813AEC8(struct Unk_08138D64 *a1) {
    u8 i;

    sub_0815604C(&a1->unkC);
    sub_0815604C(&a1->unk28C);
    for (i = 0; i < a1->unk7D0; ++i) {
        sub_0815604C(&a1->unk2DC[i]);
        if (a1->unk9C4[i] == 100)
            sub_0815604C(&a1->unk7E4[i][0]);
        if (a1->unk9C4[i] >= 10)
            sub_0815604C(&a1->unk7E4[i][1]);
        sub_0815604C(&a1->unk7E4[i][2]);
    }
}

bool32 sub_0813AF5C(struct Unk_08385CD4 *a1, s8 a2) {
    if (a2 < 0xA)
        return FALSE;
    if (a2 < 0x14) {
        a1->animId = gUnk_08385CD4[gLanguage][9].animId;
        a1->variant = gUnk_08385CD4[gLanguage][9].variant;
        a1->numTiles = gUnk_08385CD4[gLanguage][9].numTiles;
    } else if (a2 < 0x1E) {
        a1->animId = gUnk_08385CD4[gLanguage][0xA].animId;
        a1->variant = gUnk_08385CD4[gLanguage][0xA].variant;
        a1->numTiles = gUnk_08385CD4[gLanguage][0xA].numTiles;
    } else if (a2 < 0x28) {
        a1->animId = gUnk_08385CD4[gLanguage][0xB].animId;
        a1->variant = gUnk_08385CD4[gLanguage][0xB].variant;
        a1->numTiles = gUnk_08385CD4[gLanguage][0xB].numTiles;
    } else if (a2 < 0x32) {
        a1->animId = gUnk_08385CD4[gLanguage][0xC].animId;
        a1->variant = gUnk_08385CD4[gLanguage][0xC].variant;
        a1->numTiles = gUnk_08385CD4[gLanguage][0xC].numTiles;
    } else if (a2 < 0x3C) {
        a1->animId = gUnk_08385CD4[gLanguage][0xD].animId;
        a1->variant = gUnk_08385CD4[gLanguage][0xD].variant;
        a1->numTiles = gUnk_08385CD4[gLanguage][0xD].numTiles;
    } else if (a2 < 0x46) {
        a1->animId = gUnk_08385CD4[gLanguage][0xE].animId;
        a1->variant = gUnk_08385CD4[gLanguage][0xE].variant;
        a1->numTiles = gUnk_08385CD4[gLanguage][0xE].numTiles;
    } else if (a2 < 0x50) {
        a1->animId = gUnk_08385CD4[gLanguage][0xF].animId;
        a1->variant = gUnk_08385CD4[gLanguage][0xF].variant;
        a1->numTiles = gUnk_08385CD4[gLanguage][0xF].numTiles;
    } else if (a2 < 0x5A) {
        a1->animId = gUnk_08385CD4[gLanguage][0x10].animId;
        a1->variant = gUnk_08385CD4[gLanguage][0x10].variant;
        a1->numTiles = gUnk_08385CD4[gLanguage][0x10].numTiles;
    } else if (a2 < 0x64) {
        a1->animId = gUnk_08385CD4[gLanguage][0x11].animId;
        a1->variant = gUnk_08385CD4[gLanguage][0x11].variant;
        a1->numTiles = gUnk_08385CD4[gLanguage][0x11].numTiles;
    } else if (a2 == 0x64) {
        a1->animId = gUnk_08385CD4[gLanguage][0x12].animId;
        a1->variant = gUnk_08385CD4[gLanguage][0x12].variant;
        a1->numTiles = gUnk_08385CD4[gLanguage][0x12].numTiles;
    }
    return TRUE;
}

void sub_0813B26C(struct Unk_08138D64 *a1) {
    u8 unkA = a1->unkA;
    u8 unkB = a1->unkB;
    bool32 r1, r1_2;
    struct Sprite *sprite;

    sprite = &a1->unk34[unkA];
    sprite->palId = 2;
    sub_08155128(sprite);
    if (a1->unk7[unkA] < 10)
        r1 = FALSE;
    else
        r1 = TRUE;
    if (r1) {
        sprite = &a1->unkAC[unkA];
        sprite->palId = unkA + 4;
        sub_08155128(sprite);
    }
    if (a1->unk7[unkA] == 100) {
        sprite = &a1->unk124[unkA][0];
        sprite->palId = 2;
        sub_08155128(sprite);
    }
    if (a1->unk7[unkA] >= 10) {
        sprite = &a1->unk124[unkA][1];
        sprite->palId = 2;
        sub_08155128(sprite);
    }
    sprite = &a1->unk124[unkA][2];
    sprite->palId = 2;
    sub_08155128(sprite);
    sprite = &a1->unk34[unkB];
    sprite->palId = 3;
    sub_08155128(sprite);
    if (a1->unk7[unkB] < 10)
        r1_2 = FALSE;
    else
        r1_2 = TRUE;
    if (r1_2) {
        sprite = &a1->unkAC[unkB];
        sprite->palId = 7;
        sub_08155128(sprite);
    }
    if (a1->unk7[unkB] == 100) {
        sprite = &a1->unk124[unkB][0];
        sprite->palId = 3;
        sub_08155128(sprite);
    }
    if (a1->unk7[unkB] >= 10) {
        sprite = &a1->unk124[unkB][1];
        sprite->palId = 3;
        sub_08155128(sprite);
    }
    sprite = &a1->unk124[unkB][2];
    sprite->palId = 3;
    sub_08155128(sprite);
}

void sub_0813B3C8(struct Unk_08138D64 *a1) {
    u8 a = a1->unk9C8[0];
    u8 b = a1->unk9C8[1];
    struct Sprite *sprite;

    sprite = &a1->unk2DC[a];
    sprite->palId = 2;
    sub_08155128(sprite);
    sprite = &a1->unk7E4[a][0];
    sprite->palId = 2;
    sub_08155128(sprite);
    sprite = &a1->unk7E4[a][1];
    sprite->palId = 2;
    sub_08155128(sprite);
    sprite = &a1->unk7E4[a][2];
    sprite->palId = 2;
    sub_08155128(sprite);
    sprite = &a1->unk2DC[b];
    sprite->palId = 3;
    sub_08155128(sprite);
    sprite = &a1->unk7E4[b][0];
    sprite->palId = 3;
    sub_08155128(sprite);
    sprite = &a1->unk7E4[b][1];
    sprite->palId = 3;
    sub_08155128(sprite);
    sprite = &a1->unk7E4[b][2];
    sprite->palId = 3;
    sub_08155128(sprite);
}

u8 sub_0813B484(void) {
    if (gPressedKeys & A_BUTTON || gPressedKeys & START_BUTTON)
        return 1;
    else if (gPressedKeys & B_BUTTON)
        return 2;
    else if (gRepeatedKeys & DPAD_UP)
        return 3;
    else if (gRepeatedKeys & DPAD_DOWN)
        return 4;
    else if (gRepeatedKeys & DPAD_LEFT)
        return 5;
    else if (gRepeatedKeys & DPAD_RIGHT)
        return 6;
    else
        return 0;   
}

bool32 sub_0813B4F0(struct Unk_08138D64 *a1) {
    if (gPrevInput == gInput) {
        if (++a1->unkBF0 >= 0x1C20) {
            a1->unkBF0 = 0;
            a1->unk9CC = sub_081432B8;
            return TRUE;
        }
    } else {
        a1->unkBF0 = 0;
    }
    return FALSE;
}

bool32 sub_0813B548(struct Unk_08138D64 *a1, u8 a2) {
    if (!a1->unk7D5) {
        if (a1->unkBE8->unk11 != a1->unk7D0) {
            a1->unk7D5 = 1;
            a1->unk7D6 = 0;
            a1->unk7D4 = a1->unkBE8->unk11;
        } else {
            a1->unk7D6 = 0;
        }
    } else {
        if (a1->unkBE8->unk11 != a1->unk7D4 && a1->unk7D4 > a1->unkBE8->unk11) {
            a1->unk7D5 = 0;
            a1->unk7D6 = 0;
        } else if (++a1->unk7D6 >= a2 && gMultiBootStruct.unk02 != 1) {
            a1->unk7D0 = a1->unkBE8->unk11;
            a1->unk7D1 = a1->unkBE8->unk10;
            return TRUE;
        }
    }
    return FALSE;
}
