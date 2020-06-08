.class public final enum Lcom/uhf/api/cls/Reader$Module_Type;
.super Ljava/lang/Enum;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Module_Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uhf/api/cls/Reader$Module_Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_M5E:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_M5E_C:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_M5E_PRC:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_M6E:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_M6E_MICRO:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_M6E_PRC:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_NONE:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_PR9000:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_R902_M1S:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_R902_M2S:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SLR1100:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SLR1200:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SLR1300:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SLR3000:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SLR3100:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SLR3200:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SLR5100:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SLR5200:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SLR5300:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SLR5800:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SLR5900:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SLR6000:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SLR6100:Lcom/uhf/api/cls/Reader$Module_Type;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 28
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/4 v1, 0x0

    const-string v2, "MODOULE_NONE"

    invoke-direct {v0, v2, v1, v1}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_NONE:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 29
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/4 v2, 0x1

    const-string v3, "MODOULE_R902_M1S"

    invoke-direct {v0, v3, v2, v2}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_R902_M1S:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 30
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/4 v3, 0x2

    const-string v4, "MODOULE_R902_M2S"

    invoke-direct {v0, v4, v3, v3}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_R902_M2S:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 31
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/4 v4, 0x3

    const-string v5, "MODOULE_M5E"

    invoke-direct {v0, v5, v4, v4}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M5E:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 32
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/4 v5, 0x4

    const-string v6, "MODOULE_M5E_C"

    invoke-direct {v0, v6, v5, v5}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M5E_C:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 33
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/4 v6, 0x5

    const-string v7, "MODOULE_M6E"

    invoke-direct {v0, v7, v6, v6}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M6E:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 34
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/4 v7, 0x6

    const-string v8, "MODOULE_PR9000"

    invoke-direct {v0, v8, v7, v7}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_PR9000:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 35
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/4 v8, 0x7

    const-string v9, "MODOULE_M5E_PRC"

    invoke-direct {v0, v9, v8, v8}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M5E_PRC:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 36
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v9, 0x8

    const-string v10, "MODOULE_M6E_PRC"

    invoke-direct {v0, v10, v9, v9}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M6E_PRC:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 37
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v10, 0x9

    const-string v11, "MODOULE_M6E_MICRO"

    invoke-direct {v0, v11, v10, v10}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M6E_MICRO:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 38
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v11, 0xa

    const-string v12, "MODOULE_SLR1100"

    invoke-direct {v0, v12, v11, v11}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR1100:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 39
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v12, 0xb

    const-string v13, "MODOULE_SLR1200"

    invoke-direct {v0, v13, v12, v12}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR1200:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 40
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v13, 0xc

    const-string v14, "MODOULE_SLR1300"

    invoke-direct {v0, v14, v13, v13}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR1300:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 41
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v14, 0xd

    const-string v15, "MODOULE_SLR3000"

    invoke-direct {v0, v15, v14, v14}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR3000:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 42
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v15, 0xe

    const-string v14, "MODOULE_SLR5100"

    invoke-direct {v0, v14, v15, v15}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR5100:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 43
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v14, 0xf

    const-string v15, "MODOULE_SLR5200"

    invoke-direct {v0, v15, v14, v14}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR5200:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 44
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v15, 0x10

    const-string v14, "MODOULE_SLR3100"

    invoke-direct {v0, v14, v15, v15}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR3100:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 45
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v14, 0x11

    const-string v15, "MODOULE_SLR3200"

    invoke-direct {v0, v15, v14, v14}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR3200:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 46
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v15, 0x12

    const-string v14, "MODOULE_SLR5300"

    invoke-direct {v0, v14, v15, v15}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR5300:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 47
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v14, 0x13

    const-string v15, "MODOULE_SLR5900"

    invoke-direct {v0, v15, v14, v14}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR5900:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 48
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v15, 0x14

    const-string v14, "MODOULE_SLR5800"

    invoke-direct {v0, v14, v15, v15}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR5800:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 49
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v14, 0x15

    const-string v15, "MODOULE_SLR6000"

    invoke-direct {v0, v15, v14, v14}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR6000:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 50
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const-string v15, "MODOULE_SLR6100"

    const/16 v14, 0x16

    const/16 v13, 0x16

    invoke-direct {v0, v15, v14, v13}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR6100:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v13, 0x17

    new-array v13, v13, [Lcom/uhf/api/cls/Reader$Module_Type;

    .line 26
    sget-object v14, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_NONE:Lcom/uhf/api/cls/Reader$Module_Type;

    aput-object v14, v13, v1

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_R902_M1S:Lcom/uhf/api/cls/Reader$Module_Type;

    aput-object v1, v13, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_R902_M2S:Lcom/uhf/api/cls/Reader$Module_Type;

    aput-object v1, v13, v3

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M5E:Lcom/uhf/api/cls/Reader$Module_Type;

    aput-object v1, v13, v4

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M5E_C:Lcom/uhf/api/cls/Reader$Module_Type;

    aput-object v1, v13, v5

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M6E:Lcom/uhf/api/cls/Reader$Module_Type;

    aput-object v1, v13, v6

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_PR9000:Lcom/uhf/api/cls/Reader$Module_Type;

    aput-object v1, v13, v7

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M5E_PRC:Lcom/uhf/api/cls/Reader$Module_Type;

    aput-object v1, v13, v8

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M6E_PRC:Lcom/uhf/api/cls/Reader$Module_Type;

    aput-object v1, v13, v9

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M6E_MICRO:Lcom/uhf/api/cls/Reader$Module_Type;

    aput-object v1, v13, v10

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR1100:Lcom/uhf/api/cls/Reader$Module_Type;

    aput-object v1, v13, v11

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR1200:Lcom/uhf/api/cls/Reader$Module_Type;

    aput-object v1, v13, v12

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR1300:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0xc

    aput-object v1, v13, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR3000:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0xd

    aput-object v1, v13, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR5100:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0xe

    aput-object v1, v13, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR5200:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0xf

    aput-object v1, v13, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR3100:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0x10

    aput-object v1, v13, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR3200:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0x11

    aput-object v1, v13, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR5300:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0x12

    aput-object v1, v13, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR5900:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0x13

    aput-object v1, v13, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR5800:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0x14

    aput-object v1, v13, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR6000:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0x15

    aput-object v1, v13, v2

    const/16 v1, 0x16

    aput-object v0, v13, v1

    sput-object v13, Lcom/uhf/api/cls/Reader$Module_Type;->ENUM$VALUES:[Lcom/uhf/api/cls/Reader$Module_Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/uhf/api/cls/Reader$Module_Type;->value:I

    .line 53
    iput p3, p0, Lcom/uhf/api/cls/Reader$Module_Type;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/uhf/api/cls/Reader$Module_Type;
    .registers 1

    packed-switch p0, :pswitch_data_4a

    const/4 p0, 0x0

    return-object p0

    .line 102
    :pswitch_5
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR6100:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 100
    :pswitch_8
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR6000:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 98
    :pswitch_b
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR5800:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 96
    :pswitch_e
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR5900:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 94
    :pswitch_11
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR5300:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 92
    :pswitch_14
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR3200:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 90
    :pswitch_17
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR3100:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 88
    :pswitch_1a
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR5200:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 86
    :pswitch_1d
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR5100:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 84
    :pswitch_20
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR3000:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 82
    :pswitch_23
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR1300:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 80
    :pswitch_26
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR1200:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 78
    :pswitch_29
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR1100:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 76
    :pswitch_2c
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M6E_MICRO:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 74
    :pswitch_2f
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M6E_PRC:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 72
    :pswitch_32
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M5E_PRC:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 70
    :pswitch_35
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_PR9000:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 68
    :pswitch_38
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M6E:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 66
    :pswitch_3b
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M5E_C:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 64
    :pswitch_3e
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M5E:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 62
    :pswitch_41
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_R902_M2S:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 60
    :pswitch_44
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_R902_M1S:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 58
    :pswitch_47
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_NONE:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uhf/api/cls/Reader$Module_Type;
    .registers 2

    .line 1
    const-class v0, Lcom/uhf/api/cls/Reader$Module_Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0
.end method

.method public static values()[Lcom/uhf/api/cls/Reader$Module_Type;
    .registers 4

    .line 1
    sget-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->ENUM$VALUES:[Lcom/uhf/api/cls/Reader$Module_Type;

    array-length v1, v0

    new-array v2, v1, [Lcom/uhf/api/cls/Reader$Module_Type;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public value()I
    .registers 2

    .line 108
    iget v0, p0, Lcom/uhf/api/cls/Reader$Module_Type;->value:I

    return v0
.end method
