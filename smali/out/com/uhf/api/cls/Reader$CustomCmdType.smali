.class public final enum Lcom/uhf/api/cls/Reader$CustomCmdType;
.super Ljava/lang/Enum;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CustomCmdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uhf/api/cls/Reader$CustomCmdType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALIEN_Higgs2_FullLoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

.field public static final enum ALIEN_Higgs2_PartialLoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

.field public static final enum ALIEN_Higgs3_BlockPermaLock:Lcom/uhf/api/cls/Reader$CustomCmdType;

.field public static final enum ALIEN_Higgs3_BlockReadLock:Lcom/uhf/api/cls/Reader$CustomCmdType;

.field public static final enum ALIEN_Higgs3_FastLoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

.field public static final enum ALIEN_Higgs3_LoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

.field private static final synthetic ENUM$VALUES:[Lcom/uhf/api/cls/Reader$CustomCmdType;

.field public static final enum IMPINJ_M4_Qt:Lcom/uhf/api/cls/Reader$CustomCmdType;

.field public static final enum NXP_Calibrate:Lcom/uhf/api/cls/Reader$CustomCmdType;

.field public static final enum NXP_ChangeEAS:Lcom/uhf/api/cls/Reader$CustomCmdType;

.field public static final enum NXP_EASAlarm:Lcom/uhf/api/cls/Reader$CustomCmdType;

.field public static final enum NXP_ResetReadProtect:Lcom/uhf/api/cls/Reader$CustomCmdType;

.field public static final enum NXP_SetReadProtect:Lcom/uhf/api/cls/Reader$CustomCmdType;

.field public static final enum NXP_U8_InventoryMode:Lcom/uhf/api/cls/Reader$CustomCmdType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 456
    new-instance v0, Lcom/uhf/api/cls/Reader$CustomCmdType;

    const/4 v1, 0x0

    const-string v2, "NXP_SetReadProtect"

    invoke-direct {v0, v2, v1, v1}, Lcom/uhf/api/cls/Reader$CustomCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_SetReadProtect:Lcom/uhf/api/cls/Reader$CustomCmdType;

    .line 457
    new-instance v0, Lcom/uhf/api/cls/Reader$CustomCmdType;

    const/4 v2, 0x1

    const-string v3, "NXP_ResetReadProtect"

    invoke-direct {v0, v3, v2, v2}, Lcom/uhf/api/cls/Reader$CustomCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_ResetReadProtect:Lcom/uhf/api/cls/Reader$CustomCmdType;

    .line 458
    new-instance v0, Lcom/uhf/api/cls/Reader$CustomCmdType;

    const/4 v3, 0x2

    const-string v4, "NXP_ChangeEAS"

    invoke-direct {v0, v4, v3, v3}, Lcom/uhf/api/cls/Reader$CustomCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_ChangeEAS:Lcom/uhf/api/cls/Reader$CustomCmdType;

    .line 459
    new-instance v0, Lcom/uhf/api/cls/Reader$CustomCmdType;

    const/4 v4, 0x3

    const-string v5, "NXP_EASAlarm"

    invoke-direct {v0, v5, v4, v4}, Lcom/uhf/api/cls/Reader$CustomCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_EASAlarm:Lcom/uhf/api/cls/Reader$CustomCmdType;

    .line 460
    new-instance v0, Lcom/uhf/api/cls/Reader$CustomCmdType;

    const/4 v5, 0x4

    const-string v6, "NXP_Calibrate"

    invoke-direct {v0, v6, v5, v5}, Lcom/uhf/api/cls/Reader$CustomCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_Calibrate:Lcom/uhf/api/cls/Reader$CustomCmdType;

    .line 462
    new-instance v0, Lcom/uhf/api/cls/Reader$CustomCmdType;

    const/4 v6, 0x5

    const-string v7, "ALIEN_Higgs2_PartialLoadImage"

    invoke-direct {v0, v7, v6, v6}, Lcom/uhf/api/cls/Reader$CustomCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs2_PartialLoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

    .line 463
    new-instance v0, Lcom/uhf/api/cls/Reader$CustomCmdType;

    const/4 v7, 0x6

    const-string v8, "ALIEN_Higgs2_FullLoadImage"

    invoke-direct {v0, v8, v7, v7}, Lcom/uhf/api/cls/Reader$CustomCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs2_FullLoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

    .line 465
    new-instance v0, Lcom/uhf/api/cls/Reader$CustomCmdType;

    const/4 v8, 0x7

    const-string v9, "ALIEN_Higgs3_FastLoadImage"

    invoke-direct {v0, v9, v8, v8}, Lcom/uhf/api/cls/Reader$CustomCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs3_FastLoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

    .line 466
    new-instance v0, Lcom/uhf/api/cls/Reader$CustomCmdType;

    const/16 v9, 0x8

    const-string v10, "ALIEN_Higgs3_LoadImage"

    invoke-direct {v0, v10, v9, v9}, Lcom/uhf/api/cls/Reader$CustomCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs3_LoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

    .line 467
    new-instance v0, Lcom/uhf/api/cls/Reader$CustomCmdType;

    const/16 v10, 0x9

    const-string v11, "ALIEN_Higgs3_BlockReadLock"

    invoke-direct {v0, v11, v10, v10}, Lcom/uhf/api/cls/Reader$CustomCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs3_BlockReadLock:Lcom/uhf/api/cls/Reader$CustomCmdType;

    .line 468
    new-instance v0, Lcom/uhf/api/cls/Reader$CustomCmdType;

    const/16 v11, 0xa

    const-string v12, "ALIEN_Higgs3_BlockPermaLock"

    invoke-direct {v0, v12, v11, v11}, Lcom/uhf/api/cls/Reader$CustomCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs3_BlockPermaLock:Lcom/uhf/api/cls/Reader$CustomCmdType;

    .line 470
    new-instance v0, Lcom/uhf/api/cls/Reader$CustomCmdType;

    const/16 v12, 0xb

    const-string v13, "IMPINJ_M4_Qt"

    invoke-direct {v0, v13, v12, v12}, Lcom/uhf/api/cls/Reader$CustomCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$CustomCmdType;->IMPINJ_M4_Qt:Lcom/uhf/api/cls/Reader$CustomCmdType;

    .line 472
    new-instance v0, Lcom/uhf/api/cls/Reader$CustomCmdType;

    const/16 v13, 0xc

    const-string v14, "NXP_U8_InventoryMode"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v13, v15}, Lcom/uhf/api/cls/Reader$CustomCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_U8_InventoryMode:Lcom/uhf/api/cls/Reader$CustomCmdType;

    const/16 v14, 0xd

    new-array v14, v14, [Lcom/uhf/api/cls/Reader$CustomCmdType;

    .line 454
    sget-object v15, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_SetReadProtect:Lcom/uhf/api/cls/Reader$CustomCmdType;

    aput-object v15, v14, v1

    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_ResetReadProtect:Lcom/uhf/api/cls/Reader$CustomCmdType;

    aput-object v1, v14, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_ChangeEAS:Lcom/uhf/api/cls/Reader$CustomCmdType;

    aput-object v1, v14, v3

    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_EASAlarm:Lcom/uhf/api/cls/Reader$CustomCmdType;

    aput-object v1, v14, v4

    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_Calibrate:Lcom/uhf/api/cls/Reader$CustomCmdType;

    aput-object v1, v14, v5

    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs2_PartialLoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

    aput-object v1, v14, v6

    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs2_FullLoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

    aput-object v1, v14, v7

    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs3_FastLoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

    aput-object v1, v14, v8

    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs3_LoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

    aput-object v1, v14, v9

    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs3_BlockReadLock:Lcom/uhf/api/cls/Reader$CustomCmdType;

    aput-object v1, v14, v10

    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs3_BlockPermaLock:Lcom/uhf/api/cls/Reader$CustomCmdType;

    aput-object v1, v14, v11

    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->IMPINJ_M4_Qt:Lcom/uhf/api/cls/Reader$CustomCmdType;

    aput-object v1, v14, v12

    aput-object v0, v14, v13

    sput-object v14, Lcom/uhf/api/cls/Reader$CustomCmdType;->ENUM$VALUES:[Lcom/uhf/api/cls/Reader$CustomCmdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 474
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 473
    iput p1, p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->value:I

    .line 475
    iput p3, p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/uhf/api/cls/Reader$CustomCmdType;
    .registers 2

    const/16 v0, 0x14

    if-eq p0, v0, :cond_2d

    packed-switch p0, :pswitch_data_30

    const/4 p0, 0x0

    return-object p0

    .line 502
    :pswitch_9
    sget-object p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->IMPINJ_M4_Qt:Lcom/uhf/api/cls/Reader$CustomCmdType;

    return-object p0

    .line 500
    :pswitch_c
    sget-object p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs3_BlockPermaLock:Lcom/uhf/api/cls/Reader$CustomCmdType;

    return-object p0

    .line 498
    :pswitch_f
    sget-object p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs3_BlockReadLock:Lcom/uhf/api/cls/Reader$CustomCmdType;

    return-object p0

    .line 496
    :pswitch_12
    sget-object p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs3_LoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

    return-object p0

    .line 494
    :pswitch_15
    sget-object p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs3_FastLoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

    return-object p0

    .line 492
    :pswitch_18
    sget-object p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs2_FullLoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

    return-object p0

    .line 490
    :pswitch_1b
    sget-object p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs2_PartialLoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

    return-object p0

    .line 488
    :pswitch_1e
    sget-object p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_Calibrate:Lcom/uhf/api/cls/Reader$CustomCmdType;

    return-object p0

    .line 486
    :pswitch_21
    sget-object p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_EASAlarm:Lcom/uhf/api/cls/Reader$CustomCmdType;

    return-object p0

    .line 484
    :pswitch_24
    sget-object p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_ChangeEAS:Lcom/uhf/api/cls/Reader$CustomCmdType;

    return-object p0

    .line 482
    :pswitch_27
    sget-object p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_ResetReadProtect:Lcom/uhf/api/cls/Reader$CustomCmdType;

    return-object p0

    .line 480
    :pswitch_2a
    sget-object p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_SetReadProtect:Lcom/uhf/api/cls/Reader$CustomCmdType;

    return-object p0

    .line 504
    :cond_2d
    sget-object p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_U8_InventoryMode:Lcom/uhf/api/cls/Reader$CustomCmdType;

    return-object p0

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uhf/api/cls/Reader$CustomCmdType;
    .registers 2

    .line 1
    const-class v0, Lcom/uhf/api/cls/Reader$CustomCmdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uhf/api/cls/Reader$CustomCmdType;

    return-object p0
.end method

.method public static values()[Lcom/uhf/api/cls/Reader$CustomCmdType;
    .registers 4

    .line 1
    sget-object v0, Lcom/uhf/api/cls/Reader$CustomCmdType;->ENUM$VALUES:[Lcom/uhf/api/cls/Reader$CustomCmdType;

    array-length v1, v0

    new-array v2, v1, [Lcom/uhf/api/cls/Reader$CustomCmdType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public value()I
    .registers 2

    .line 510
    iget v0, p0, Lcom/uhf/api/cls/Reader$CustomCmdType;->value:I

    return v0
.end method
