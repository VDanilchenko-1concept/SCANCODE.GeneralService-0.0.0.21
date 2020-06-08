.class public Lcom/uhf/api/cls/R2000_calibration;
.super Ljava/lang/Object;
.source "R2000_calibration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uhf/api/cls/R2000_calibration$ENGTest_DATA;,
        Lcom/uhf/api/cls/R2000_calibration$GrossGains_DATA;,
        Lcom/uhf/api/cls/R2000_calibration$MAC_DATA;,
        Lcom/uhf/api/cls/R2000_calibration$META_DATA;,
        Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;,
        Lcom/uhf/api/cls/R2000_calibration$Pabiascal_DATA;,
        Lcom/uhf/api/cls/R2000_calibration$R2000cmd;,
        Lcom/uhf/api/cls/R2000_calibration$Region;,
        Lcom/uhf/api/cls/R2000_calibration$SubCmd;,
        Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;,
        Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;,
        Lcom/uhf/api/cls/R2000_calibration$TestFre_DATA;,
        Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;
    }
.end annotation


# static fields
.field private static crcTable:[I


# instance fields
.field private final AA:B

.field private final HeaderC:B

.field final TAG_EMBEDED_DATA:S

.field final TAG_METADATA_ANTENNAID:S

.field final TAG_METADATA_FREQUENCY:S

.field final TAG_METADATA_NONE:S

.field final TAG_METADATA_PHASE:S

.field final TAG_METADATA_PROTOCOL:S

.field final TAG_METADATA_READCOUNT:S

.field final TAG_METADATA_RSSI:S

.field final TAG_METADATA_TIMESTAMP:S

.field private final bb:B

.field private cmdname:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x10

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/16 v2, 0x1021

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x2042

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x3063

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x4084

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x50a5

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x60c6

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x70e7

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x8108

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x9129

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0xa14a

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0xb16b

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0xc18c

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0xd1ad

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0xe1ce

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, 0xf1ef

    aput v2, v0, v1

    .line 109
    sput-object v0, Lcom/uhf/api/cls/R2000_calibration;->crcTable:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-short v0, p0, Lcom/uhf/api/cls/R2000_calibration;->TAG_METADATA_NONE:S

    const/4 v0, 0x1

    .line 15
    iput-short v0, p0, Lcom/uhf/api/cls/R2000_calibration;->TAG_METADATA_READCOUNT:S

    const/4 v0, 0x2

    .line 16
    iput-short v0, p0, Lcom/uhf/api/cls/R2000_calibration;->TAG_METADATA_RSSI:S

    const/4 v0, 0x4

    .line 17
    iput-short v0, p0, Lcom/uhf/api/cls/R2000_calibration;->TAG_METADATA_ANTENNAID:S

    const/16 v0, 0x8

    .line 18
    iput-short v0, p0, Lcom/uhf/api/cls/R2000_calibration;->TAG_METADATA_FREQUENCY:S

    const/16 v0, 0x10

    .line 19
    iput-short v0, p0, Lcom/uhf/api/cls/R2000_calibration;->TAG_METADATA_TIMESTAMP:S

    const/16 v0, 0x20

    .line 20
    iput-short v0, p0, Lcom/uhf/api/cls/R2000_calibration;->TAG_METADATA_PHASE:S

    const/16 v0, 0x40

    .line 21
    iput-short v0, p0, Lcom/uhf/api/cls/R2000_calibration;->TAG_METADATA_PROTOCOL:S

    const/16 v0, 0x80

    .line 22
    iput-short v0, p0, Lcom/uhf/api/cls/R2000_calibration;->TAG_EMBEDED_DATA:S

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/uhf/api/cls/R2000_calibration;->cmdname:[B

    const/4 v0, -0x1

    .line 104
    iput-byte v0, p0, Lcom/uhf/api/cls/R2000_calibration;->HeaderC:B

    const/16 v0, -0x56

    .line 105
    iput-byte v0, p0, Lcom/uhf/api/cls/R2000_calibration;->AA:B

    const/16 v0, -0x45

    .line 106
    iput-byte v0, p0, Lcom/uhf/api/cls/R2000_calibration;->bb:B

    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 10
    fill-array-data v0, :array_3c

    iput-object v0, p0, Lcom/uhf/api/cls/R2000_calibration;->cmdname:[B

    return-void

    nop

    :array_3c
    .array-data 1
        0x4dt
        0x6ft
        0x64t
        0x75t
        0x6ct
        0x65t
        0x74t
        0x65t
        0x63t
        0x68t
    .end array-data
.end method

.method public static ListBtobytes(Ljava/util/List;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 147
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Byte;

    .line 148
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [B

    .line 149
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 p0, 0x0

    :goto_10
    if-lt p0, v1, :cond_13

    return-object v2

    .line 151
    :cond_13
    aget-object v3, v0, p0

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v2, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_10
.end method

.method public static bytesToint([B)I
    .registers 3

    const/4 v0, 0x3

    .line 221
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x2

    .line 222
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x1

    .line 223
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x0

    .line 224
    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method public static bytesToint([BI)I
    .registers 4

    add-int/lit8 v0, p1, 0x3

    .line 229
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x2

    .line 230
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    .line 231
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 232
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x0

    or-int/2addr p0, v0

    return p0
.end method

.method public static bytesTolistbytes([B)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 194
    :goto_6
    array-length v2, p0

    if-lt v1, v2, :cond_a

    return-object v0

    .line 196
    :cond_a
    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public static bytesToshort([B)S
    .registers 3

    const/4 v0, 0x1

    .line 215
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    .line 216
    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/2addr p0, v1

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static calcCrc([BII)[B
    .registers 10

    const v0, 0xffff

    move v1, p1

    const v2, 0xffff

    :goto_7
    add-int v3, p1, p2

    const/4 v4, 0x0

    if-lt v1, v3, :cond_1f

    const/4 p0, 0x2

    new-array p0, p0, [B

    const p1, 0xff00

    and-int/2addr p1, v2

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    aput-byte p1, p0, v4

    and-int/lit16 p1, v2, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x1

    aput-byte p1, p0, p2

    return-object p0

    :cond_1f
    shl-int/lit8 v3, v2, 0x4

    .line 117
    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v3, v5

    .line 118
    sget-object v5, Lcom/uhf/api/cls/R2000_calibration;->crcTable:[I

    shr-int/lit8 v2, v2, 0xc

    aget v2, v5, v2

    xor-int/2addr v2, v3

    and-int/2addr v2, v0

    shl-int/lit8 v3, v2, 0x4

    .line 120
    aget-byte v6, p0, v1

    shr-int/lit8 v4, v6, 0x0

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    shr-int/lit8 v2, v2, 0xc

    .line 121
    aget v2, v5, v2

    xor-int/2addr v2, v3

    and-int/2addr v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public static calcCrc_short([B)S
    .registers 8

    const/4 v0, 0x0

    const v1, 0xffff

    const/4 v2, 0x0

    const v3, 0xffff

    .line 133
    :goto_8
    array-length v4, p0

    if-lt v2, v4, :cond_d

    int-to-short p0, v3

    return p0

    :cond_d
    shl-int/lit8 v4, v3, 0x4

    .line 134
    aget-byte v5, p0, v2

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    .line 135
    sget-object v5, Lcom/uhf/api/cls/R2000_calibration;->crcTable:[I

    shr-int/lit8 v3, v3, 0xc

    aget v3, v5, v3

    xor-int/2addr v3, v4

    and-int/2addr v3, v1

    shl-int/lit8 v4, v3, 0x4

    .line 137
    aget-byte v6, p0, v2

    shr-int/2addr v6, v0

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v4, v6

    shr-int/lit8 v3, v3, 0xc

    .line 138
    aget v3, v5, v3

    xor-int/2addr v3, v4

    and-int/2addr v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method

.method public static intTobytes(I)[B
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/high16 v1, -0x1000000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static intTolistbytes(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/high16 v1, -0x1000000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    .line 184
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    .line 185
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    .line 186
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 187
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static intsTolistints([I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 205
    :goto_6
    array-length v2, p0

    if-lt v1, v2, :cond_a

    return-object v0

    .line 207
    :cond_a
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public static shortTobytes(S)[B
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [B

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static shortTolistbytes(S)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    .line 176
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 177
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public GetSendCmd(B[B)[B
    .registers 7

    .line 887
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    .line 888
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 892
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    if-eqz p2, :cond_1e

    .line 890
    array-length v3, p2

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 892
    :cond_1e
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    :goto_21
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_31

    .line 896
    invoke-static {p2}, Lcom/uhf/api/cls/R2000_calibration;->bytesTolistbytes([B)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 898
    :cond_31
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 899
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 900
    invoke-static {v0}, Lcom/uhf/api/cls/R2000_calibration;->ListBtobytes(Ljava/util/List;)[B

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v2, 0x1

    sub-int/2addr p2, v2

    invoke-static {p1, v2, p2}, Lcom/uhf/api/cls/R2000_calibration;->calcCrc([BII)[B

    move-result-object p1

    .line 901
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v2

    aget-byte v2, p1, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 902
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    aget-byte p1, p1, v1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 904
    invoke-static {v0}, Lcom/uhf/api/cls/R2000_calibration;->ListBtobytes(Ljava/util/List;)[B

    move-result-object p1

    return-object p1
.end method

.method public GetSendCmd(Lcom/uhf/api/cls/R2000_calibration$R2000cmd;[B)[B
    .registers 8

    .line 908
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    .line 909
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xe

    if-eqz p2, :cond_1c

    .line 911
    array-length v2, p2

    add-int/2addr v2, v1

    int-to-byte v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 913
    :cond_1c
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_23
    const/16 v1, -0x56

    .line 914
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    iget-object v1, p0, Lcom/uhf/api/cls/R2000_calibration;->cmdname:[B

    invoke-static {v1}, Lcom/uhf/api/cls/R2000_calibration;->bytesTolistbytes([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 916
    invoke-static {p1}, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->access$2(Lcom/uhf/api/cls/R2000_calibration$R2000cmd;)I

    move-result p1

    int-to-short p1, p1

    invoke-static {p1}, Lcom/uhf/api/cls/R2000_calibration;->shortTobytes(S)[B

    move-result-object p1

    .line 917
    invoke-static {p1}, Lcom/uhf/api/cls/R2000_calibration;->bytesTolistbytes([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_4e

    .line 919
    invoke-static {p2}, Lcom/uhf/api/cls/R2000_calibration;->bytesTolistbytes([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4e
    const/4 v1, 0x0

    .line 921
    aget-byte v2, p1, v1

    const/4 v3, 0x1

    aget-byte p1, p1, v3

    add-int/2addr v2, p1

    if-eqz p2, :cond_62

    const/4 p1, 0x0

    .line 924
    :goto_58
    array-length v4, p2

    if-lt p1, v4, :cond_5c

    goto :goto_62

    .line 926
    :cond_5c
    aget-byte v4, p2, p1

    add-int/2addr v2, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_58

    :cond_62
    :goto_62
    and-int/lit16 p1, v2, 0xff

    int-to-byte p1, p1

    .line 929
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p1, -0x45

    .line 930
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 932
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 934
    invoke-static {v0}, Lcom/uhf/api/cls/R2000_calibration;->ListBtobytes(Ljava/util/List;)[B

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x3

    invoke-static {p1, v3, p2}, Lcom/uhf/api/cls/R2000_calibration;->calcCrc([BII)[B

    move-result-object p1

    .line 935
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v3

    aget-byte v2, p1, v3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 936
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    aget-byte p1, p1, v1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 938
    invoke-static {v0}, Lcom/uhf/api/cls/R2000_calibration;->ListBtobytes(Ljava/util/List;)[B

    move-result-object p1

    return-object p1
.end method
