.class public final enum Lcom/uhf/api/cls/Reader$Reader_Type;
.super Ljava/lang/Enum;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reader_Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uhf/api/cls/Reader$Reader_Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ARM7_16ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

.field private static final synthetic ENUM$VALUES:[Lcom/uhf/api/cls/Reader$Reader_Type;

.field public static final enum M56_ARM7_FOUR_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

.field public static final enum M6E_ARM7_FOUR_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

.field public static final enum MODULE_ARM7_FOUR_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

.field public static final enum MODULE_ARM7_TWO_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

.field public static final enum MODULE_FOUR_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

.field public static final enum MODULE_ONE_ANT:Lcom/uhf/api/cls/Reader$Reader_Type;

.field public static final enum MODULE_THREE_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

.field public static final enum MODULE_TWO_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

.field public static final enum PR9000:Lcom/uhf/api/cls/Reader$Reader_Type;

.field public static final enum R902_M1S:Lcom/uhf/api/cls/Reader$Reader_Type;

.field public static final enum R902_M2S:Lcom/uhf/api/cls/Reader$Reader_Type;

.field public static final enum SL_COMMN_READER:Lcom/uhf/api/cls/Reader$Reader_Type;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 281
    new-instance v0, Lcom/uhf/api/cls/Reader$Reader_Type;

    const/4 v1, 0x0

    const-string v2, "MODULE_TWO_ANTS"

    invoke-direct {v0, v2, v1, v1}, Lcom/uhf/api/cls/Reader$Reader_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Reader_Type;->MODULE_TWO_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

    .line 282
    new-instance v0, Lcom/uhf/api/cls/Reader$Reader_Type;

    const/4 v2, 0x1

    const-string v3, "MODULE_FOUR_ANTS"

    invoke-direct {v0, v3, v2, v2}, Lcom/uhf/api/cls/Reader$Reader_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Reader_Type;->MODULE_FOUR_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

    .line 283
    new-instance v0, Lcom/uhf/api/cls/Reader$Reader_Type;

    const/4 v3, 0x2

    const/4 v4, 0x3

    const-string v5, "MODULE_THREE_ANTS"

    invoke-direct {v0, v5, v3, v4}, Lcom/uhf/api/cls/Reader$Reader_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Reader_Type;->MODULE_THREE_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

    .line 284
    new-instance v0, Lcom/uhf/api/cls/Reader$Reader_Type;

    const/4 v5, 0x4

    const-string v6, "MODULE_ONE_ANT"

    invoke-direct {v0, v6, v4, v5}, Lcom/uhf/api/cls/Reader$Reader_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Reader_Type;->MODULE_ONE_ANT:Lcom/uhf/api/cls/Reader$Reader_Type;

    .line 285
    new-instance v0, Lcom/uhf/api/cls/Reader$Reader_Type;

    const/4 v6, 0x5

    const-string v7, "PR9000"

    invoke-direct {v0, v7, v5, v6}, Lcom/uhf/api/cls/Reader$Reader_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Reader_Type;->PR9000:Lcom/uhf/api/cls/Reader$Reader_Type;

    .line 286
    new-instance v0, Lcom/uhf/api/cls/Reader$Reader_Type;

    const/4 v7, 0x6

    const-string v8, "MODULE_ARM7_TWO_ANTS"

    invoke-direct {v0, v8, v6, v7}, Lcom/uhf/api/cls/Reader$Reader_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Reader_Type;->MODULE_ARM7_TWO_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

    .line 287
    new-instance v0, Lcom/uhf/api/cls/Reader$Reader_Type;

    const/4 v8, 0x7

    const-string v9, "MODULE_ARM7_FOUR_ANTS"

    invoke-direct {v0, v9, v7, v8}, Lcom/uhf/api/cls/Reader$Reader_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Reader_Type;->MODULE_ARM7_FOUR_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

    .line 288
    new-instance v0, Lcom/uhf/api/cls/Reader$Reader_Type;

    const/16 v9, 0x8

    const-string v10, "M6E_ARM7_FOUR_ANTS"

    invoke-direct {v0, v10, v8, v9}, Lcom/uhf/api/cls/Reader$Reader_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Reader_Type;->M6E_ARM7_FOUR_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

    .line 289
    new-instance v0, Lcom/uhf/api/cls/Reader$Reader_Type;

    const/16 v10, 0x9

    const-string v11, "M56_ARM7_FOUR_ANTS"

    invoke-direct {v0, v11, v9, v10}, Lcom/uhf/api/cls/Reader$Reader_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Reader_Type;->M56_ARM7_FOUR_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

    .line 290
    new-instance v0, Lcom/uhf/api/cls/Reader$Reader_Type;

    const/16 v11, 0xa

    const-string v12, "R902_M1S"

    invoke-direct {v0, v12, v10, v11}, Lcom/uhf/api/cls/Reader$Reader_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Reader_Type;->R902_M1S:Lcom/uhf/api/cls/Reader$Reader_Type;

    .line 291
    new-instance v0, Lcom/uhf/api/cls/Reader$Reader_Type;

    const/16 v12, 0xb

    const-string v13, "R902_M2S"

    invoke-direct {v0, v13, v11, v12}, Lcom/uhf/api/cls/Reader$Reader_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Reader_Type;->R902_M2S:Lcom/uhf/api/cls/Reader$Reader_Type;

    .line 292
    new-instance v0, Lcom/uhf/api/cls/Reader$Reader_Type;

    const/16 v13, 0xc

    const-string v14, "ARM7_16ANTS"

    invoke-direct {v0, v14, v12, v13}, Lcom/uhf/api/cls/Reader$Reader_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Reader_Type;->ARM7_16ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

    .line 293
    new-instance v0, Lcom/uhf/api/cls/Reader$Reader_Type;

    const/16 v14, 0xd

    const-string v15, "SL_COMMN_READER"

    invoke-direct {v0, v15, v13, v14}, Lcom/uhf/api/cls/Reader$Reader_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Reader_Type;->SL_COMMN_READER:Lcom/uhf/api/cls/Reader$Reader_Type;

    new-array v14, v14, [Lcom/uhf/api/cls/Reader$Reader_Type;

    .line 279
    sget-object v15, Lcom/uhf/api/cls/Reader$Reader_Type;->MODULE_TWO_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

    aput-object v15, v14, v1

    sget-object v1, Lcom/uhf/api/cls/Reader$Reader_Type;->MODULE_FOUR_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

    aput-object v1, v14, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Reader_Type;->MODULE_THREE_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

    aput-object v1, v14, v3

    sget-object v1, Lcom/uhf/api/cls/Reader$Reader_Type;->MODULE_ONE_ANT:Lcom/uhf/api/cls/Reader$Reader_Type;

    aput-object v1, v14, v4

    sget-object v1, Lcom/uhf/api/cls/Reader$Reader_Type;->PR9000:Lcom/uhf/api/cls/Reader$Reader_Type;

    aput-object v1, v14, v5

    sget-object v1, Lcom/uhf/api/cls/Reader$Reader_Type;->MODULE_ARM7_TWO_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

    aput-object v1, v14, v6

    sget-object v1, Lcom/uhf/api/cls/Reader$Reader_Type;->MODULE_ARM7_FOUR_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

    aput-object v1, v14, v7

    sget-object v1, Lcom/uhf/api/cls/Reader$Reader_Type;->M6E_ARM7_FOUR_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

    aput-object v1, v14, v8

    sget-object v1, Lcom/uhf/api/cls/Reader$Reader_Type;->M56_ARM7_FOUR_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

    aput-object v1, v14, v9

    sget-object v1, Lcom/uhf/api/cls/Reader$Reader_Type;->R902_M1S:Lcom/uhf/api/cls/Reader$Reader_Type;

    aput-object v1, v14, v10

    sget-object v1, Lcom/uhf/api/cls/Reader$Reader_Type;->R902_M2S:Lcom/uhf/api/cls/Reader$Reader_Type;

    aput-object v1, v14, v11

    sget-object v1, Lcom/uhf/api/cls/Reader$Reader_Type;->ARM7_16ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

    aput-object v1, v14, v12

    aput-object v0, v14, v13

    sput-object v14, Lcom/uhf/api/cls/Reader$Reader_Type;->ENUM$VALUES:[Lcom/uhf/api/cls/Reader$Reader_Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 296
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 295
    iput p1, p0, Lcom/uhf/api/cls/Reader$Reader_Type;->value:I

    .line 297
    iput p3, p0, Lcom/uhf/api/cls/Reader$Reader_Type;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/uhf/api/cls/Reader$Reader_Type;
    .registers 1

    packed-switch p0, :pswitch_data_2c

    const/4 p0, 0x0

    return-object p0

    .line 326
    :pswitch_5
    sget-object p0, Lcom/uhf/api/cls/Reader$Reader_Type;->SL_COMMN_READER:Lcom/uhf/api/cls/Reader$Reader_Type;

    return-object p0

    .line 324
    :pswitch_8
    sget-object p0, Lcom/uhf/api/cls/Reader$Reader_Type;->ARM7_16ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

    return-object p0

    .line 322
    :pswitch_b
    sget-object p0, Lcom/uhf/api/cls/Reader$Reader_Type;->R902_M2S:Lcom/uhf/api/cls/Reader$Reader_Type;

    return-object p0

    .line 320
    :pswitch_e
    sget-object p0, Lcom/uhf/api/cls/Reader$Reader_Type;->R902_M1S:Lcom/uhf/api/cls/Reader$Reader_Type;

    return-object p0

    .line 318
    :pswitch_11
    sget-object p0, Lcom/uhf/api/cls/Reader$Reader_Type;->M56_ARM7_FOUR_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

    return-object p0

    .line 316
    :pswitch_14
    sget-object p0, Lcom/uhf/api/cls/Reader$Reader_Type;->M6E_ARM7_FOUR_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

    return-object p0

    .line 314
    :pswitch_17
    sget-object p0, Lcom/uhf/api/cls/Reader$Reader_Type;->MODULE_ARM7_FOUR_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

    return-object p0

    .line 312
    :pswitch_1a
    sget-object p0, Lcom/uhf/api/cls/Reader$Reader_Type;->MODULE_ARM7_TWO_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

    return-object p0

    .line 310
    :pswitch_1d
    sget-object p0, Lcom/uhf/api/cls/Reader$Reader_Type;->PR9000:Lcom/uhf/api/cls/Reader$Reader_Type;

    return-object p0

    .line 308
    :pswitch_20
    sget-object p0, Lcom/uhf/api/cls/Reader$Reader_Type;->MODULE_ONE_ANT:Lcom/uhf/api/cls/Reader$Reader_Type;

    return-object p0

    .line 306
    :pswitch_23
    sget-object p0, Lcom/uhf/api/cls/Reader$Reader_Type;->MODULE_THREE_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

    return-object p0

    .line 304
    :pswitch_26
    sget-object p0, Lcom/uhf/api/cls/Reader$Reader_Type;->MODULE_FOUR_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

    return-object p0

    .line 302
    :pswitch_29
    sget-object p0, Lcom/uhf/api/cls/Reader$Reader_Type;->MODULE_TWO_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

    return-object p0

    :pswitch_data_2c
    .packed-switch 0x0
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

.method public static valueOf(Ljava/lang/String;)Lcom/uhf/api/cls/Reader$Reader_Type;
    .registers 2

    .line 1
    const-class v0, Lcom/uhf/api/cls/Reader$Reader_Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uhf/api/cls/Reader$Reader_Type;

    return-object p0
.end method

.method public static values()[Lcom/uhf/api/cls/Reader$Reader_Type;
    .registers 4

    .line 1
    sget-object v0, Lcom/uhf/api/cls/Reader$Reader_Type;->ENUM$VALUES:[Lcom/uhf/api/cls/Reader$Reader_Type;

    array-length v1, v0

    new-array v2, v1, [Lcom/uhf/api/cls/Reader$Reader_Type;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public value()I
    .registers 2

    .line 332
    iget v0, p0, Lcom/uhf/api/cls/Reader$Reader_Type;->value:I

    return v0
.end method
