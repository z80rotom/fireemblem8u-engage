#include "global.h"

#include "proc.h"
#include "bmio.h"
#include "bmitem.h"
#include "bmunit.h"

const char *gUnknown_08591AA4[][2] =
{
    {"a ", "A "},
    {"an ", "An "},
};

const char *sub_800A048(s8 *a, s8 b)
{
    switch (a[0])
    {
    case 'A':
    case 'E':
    case 'I':
    case 'O':
    case 'U':
    case 'a':
    case 'e':
    case 'i':
    case 'o':
    case 'u':
        return gUnknown_08591AA4[1][b];
    default:
        return gUnknown_08591AA4[0][b];
    }
}

void PrependArticleToString(char *a, const char *b, s8 c)
{
    const char *r6;
    u8 r5;
    s16 i;

    if (b == NULL)
        r6 = sub_800A048(a, c);
    else
        r6 = b;
    r5 = strlen(r6);
    for (i = strlen(a); i >= 0; i--)
        a[i + r5] = a[i];
    for (i = 0; i < r5; i++)
        a[i] = r6[i];
}

void SomethingRelatedToText(s8 *a)
{
    s16 r3 = 0;
    u8 r1;

    while (a[r3] != 0)
    {
        r1 = a[r3];
        if (r1 == 0x10)
            r3 += 2;
        if (r1 == 0x80)
            r3 += 1;
        r3++;
    }

    r3--;
    while (r3 >= 0)
    {
        r1 = a[r3];
        if (r1 != 0x1F)
            return;
        r1 = a[r3 - 1];
        if (r1 != 0x80)
            a[r3] = 0;
        r3--;
    }
}

char *GetStringFromIndex(int index)
{
    if (index == gUnknown_0202B6AC)
        return gUnknown_0202A6AC.buffer0202A6AC;
    CallARM_DecompText(gMsgStringTable[index], gUnknown_0202A6AC.buffer0202A6AC);
    SomethingRelatedToText(gUnknown_0202A6AC.buffer0202A6AC);
    gUnknown_0202B6AC = index;
    return gUnknown_0202A6AC.buffer0202A6AC;
}

char *GetStringFromIndexInBuffer(int index, char *buffer)
{
    CallARM_DecompText(gMsgStringTable[index], buffer);
    SomethingRelatedToText(buffer);
    return buffer;
}

char *sub_800A2A4(void)
{
    u8 *r5 = gUnknown_0202A6AC.buffer0202AC01;
    u8 *r4 = gUnknown_0202A6AC.buffer0202B156;

    CopyString(r5, gUnknown_0202A6AC.buffer0202A6AC);
    while (*r5 != 0)
    {
        if (*r5 < 32)
        {
            *r4++ = *r5++;
        }
        else if (*r5 != 0x80)
        {
            *r4++ = *r5++;
        }
        else
        {
            int r1;

            r5++;
            switch (*r5)
            {
            case 0x12:
                r1 = 0;
                break;
            case 0x13:
                r1 = 1;
                break;
            case 0x14:
                r1 = 2;
                break;
            case 0x15:
                r1 = 3;
                break;
            case 0x20:
                CopyString(r4, GetTacticianName());
                goto label;
            case 0x22:
                CopyString(r4, GetItemName(gActionData.item));
                goto label;
            default:
                *r4++ = 0x80;
                *r4++ = *r5++;
                continue;
            }
            CopyString(r4, GetStringFromIndex(GetCharacterData(gRAMChapterData.unk1C[r1])->nameTextId));
        label:
            while (*r4 != 0)
                r4++;
            r5++;
        }
    }
    *r4 = 0;
    return gUnknown_0202A6AC.buffer0202B156;
}

char *FilterSomeTextFromStandardBuffer(void)
{
    u8 *r5 = gUnknown_0202A6AC.buffer0202B4AC;
    u8 *r4 = gUnknown_0202A6AC.buffer0202B5AC;
    u8 r1;
    u32 r0;

    CopyString(r5, gUnknown_0202A6AC.buffer0202A6AC);

    while ((r0 = *r5))
    {
        r1 = r0;
        while (0) ;
        if (r1 < 32)
        {
            *r4 = r0;
            ++r5;
            ++r4;
        }
        else if (r1 != 0x80)
        {
            *r4 = r0;
            ++r5;
            ++r4;
        }
        else
        {
            r5++;
            if (*r5 != 0x20)
            {
                *r4++ = r1;
                *r4++ = *r5++;
            }
            else
            {
                CopyString(r4, GetTacticianName());
                while (*r4 != 0)
                    r4++;
                r5++;
            }
        }
    }
    *r4 = 0;
    return gUnknown_0202A6AC.buffer0202B5AC;
}
