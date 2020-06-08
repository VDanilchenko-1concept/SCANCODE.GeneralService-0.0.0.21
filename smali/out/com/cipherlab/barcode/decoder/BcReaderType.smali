.class public final enum Lcom/cipherlab/barcode/decoder/BcReaderType;
.super Ljava/lang/Enum;
.source "BcReaderType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/barcode/decoder/BcReaderType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CL_1D_SM1:Lcom/cipherlab/barcode/decoder/BcReaderType;

.field public static final enum CL_2D_SM2:Lcom/cipherlab/barcode/decoder/BcReaderType;

.field public static final enum CL_2D_SM2_SDC:Lcom/cipherlab/barcode/decoder/BcReaderType;

.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/BcReaderType;

.field public static final enum Intermec_2D_EX25:Lcom/cipherlab/barcode/decoder/BcReaderType;

.field public static final enum Moto_1D_SE1524:Lcom/cipherlab/barcode/decoder/BcReaderType;

.field public static final enum Moto_1D_SE955:Lcom/cipherlab/barcode/decoder/BcReaderType;

.field public static final enum Moto_1D_SE965:Lcom/cipherlab/barcode/decoder/BcReaderType;

.field public static final enum Moto_1D_SE965E:Lcom/cipherlab/barcode/decoder/BcReaderType;

.field public static final enum Moto_1D_SE965I:Lcom/cipherlab/barcode/decoder/BcReaderType;

.field public static final enum Moto_2D_4500:Lcom/cipherlab/barcode/decoder/BcReaderType;

.field public static final enum Moto_2D_PL4507:Lcom/cipherlab/barcode/decoder/BcReaderType;

.field public static final enum None:Lcom/cipherlab/barcode/decoder/BcReaderType;

.field public static final enum PL3307_SE4750:Lcom/cipherlab/barcode/decoder/BcReaderType;

.field public static final enum SE4750MR_2D:Lcom/cipherlab/barcode/decoder/BcReaderType;

.field public static final enum SE4750SR_2D:Lcom/cipherlab/barcode/decoder/BcReaderType;

.field public static final enum SE4850ER_2D:Lcom/cipherlab/barcode/decoder/BcReaderType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 5
    new-instance v0, Lcom/cipherlab/barcode/decoder/BcReaderType;

    const/4 v1, 0x0

    const-string v2, "None"

    .line 6
    invoke-direct {v0, v2, v1, v1}, Lcom/cipherlab/barcode/decoder/BcReaderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/BcReaderType;->None:Lcom/cipherlab/barcode/decoder/BcReaderType;

    new-instance v0, Lcom/cipherlab/barcode/decoder/BcReaderType;

    const/4 v2, 0x1

    const-string v3, "Moto_1D_SE955"

    invoke-direct {v0, v3, v2, v2}, Lcom/cipherlab/barcode/decoder/BcReaderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/BcReaderType;->Moto_1D_SE955:Lcom/cipherlab/barcode/decoder/BcReaderType;

    new-instance v0, Lcom/cipherlab/barcode/decoder/BcReaderType;

    const/4 v3, 0x2

    const/4 v4, 0x3

    const-string v5, "Moto_2D_4500"

    invoke-direct {v0, v5, v3, v4}, Lcom/cipherlab/barcode/decoder/BcReaderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/BcReaderType;->Moto_2D_4500:Lcom/cipherlab/barcode/decoder/BcReaderType;

    new-instance v0, Lcom/cipherlab/barcode/decoder/BcReaderType;

    const/4 v5, 0x4

    const-string v6, "Moto_1D_SE965"

    invoke-direct {v0, v6, v4, v5}, Lcom/cipherlab/barcode/decoder/BcReaderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/BcReaderType;->Moto_1D_SE965:Lcom/cipherlab/barcode/decoder/BcReaderType;

    new-instance v0, Lcom/cipherlab/barcode/decoder/BcReaderType;

    const/4 v6, 0x5

    const-string v7, "Moto_2D_PL4507"

    invoke-direct {v0, v7, v5, v6}, Lcom/cipherlab/barcode/decoder/BcReaderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/BcReaderType;->Moto_2D_PL4507:Lcom/cipherlab/barcode/decoder/BcReaderType;

    new-instance v0, Lcom/cipherlab/barcode/decoder/BcReaderType;

    const/4 v7, 0x7

    const-string v8, "Intermec_2D_EX25"

    invoke-direct {v0, v8, v6, v7}, Lcom/cipherlab/barcode/decoder/BcReaderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/BcReaderType;->Intermec_2D_EX25:Lcom/cipherlab/barcode/decoder/BcReaderType;

    new-instance v0, Lcom/cipherlab/barcode/decoder/BcReaderType;

    const/4 v8, 0x6

    const/16 v9, 0x8

    const-string v10, "Moto_1D_SE1524"

    invoke-direct {v0, v10, v8, v9}, Lcom/cipherlab/barcode/decoder/BcReaderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/BcReaderType;->Moto_1D_SE1524:Lcom/cipherlab/barcode/decoder/BcReaderType;

    .line 7
    new-instance v0, Lcom/cipherlab/barcode/decoder/BcReaderType;

    const/16 v10, 0x9

    const-string v11, "CL_1D_SM1"

    invoke-direct {v0, v11, v7, v10}, Lcom/cipherlab/barcode/decoder/BcReaderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/BcReaderType;->CL_1D_SM1:Lcom/cipherlab/barcode/decoder/BcReaderType;

    new-instance v0, Lcom/cipherlab/barcode/decoder/BcReaderType;

    const/16 v11, 0xa

    const-string v12, "SE4750SR_2D"

    invoke-direct {v0, v12, v9, v11}, Lcom/cipherlab/barcode/decoder/BcReaderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/BcReaderType;->SE4750SR_2D:Lcom/cipherlab/barcode/decoder/BcReaderType;

    new-instance v0, Lcom/cipherlab/barcode/decoder/BcReaderType;

    const/16 v12, 0xb

    const-string v13, "SE4750MR_2D"

    invoke-direct {v0, v13, v10, v12}, Lcom/cipherlab/barcode/decoder/BcReaderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/BcReaderType;->SE4750MR_2D:Lcom/cipherlab/barcode/decoder/BcReaderType;

    new-instance v0, Lcom/cipherlab/barcode/decoder/BcReaderType;

    const/16 v13, 0xc

    const-string v14, "Moto_1D_SE965I"

    invoke-direct {v0, v14, v11, v13}, Lcom/cipherlab/barcode/decoder/BcReaderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/BcReaderType;->Moto_1D_SE965I:Lcom/cipherlab/barcode/decoder/BcReaderType;

    new-instance v0, Lcom/cipherlab/barcode/decoder/BcReaderType;

    const/16 v14, 0xd

    const-string v15, "Moto_1D_SE965E"

    invoke-direct {v0, v15, v12, v14}, Lcom/cipherlab/barcode/decoder/BcReaderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/BcReaderType;->Moto_1D_SE965E:Lcom/cipherlab/barcode/decoder/BcReaderType;

    new-instance v0, Lcom/cipherlab/barcode/decoder/BcReaderType;

    const/16 v15, 0xe

    const-string v12, "CL_2D_SM2"

    invoke-direct {v0, v12, v13, v15}, Lcom/cipherlab/barcode/decoder/BcReaderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/BcReaderType;->CL_2D_SM2:Lcom/cipherlab/barcode/decoder/BcReaderType;

    new-instance v0, Lcom/cipherlab/barcode/decoder/BcReaderType;

    const/16 v12, 0xf

    const-string v13, "PL3307_SE4750"

    invoke-direct {v0, v13, v14, v12}, Lcom/cipherlab/barcode/decoder/BcReaderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/BcReaderType;->PL3307_SE4750:Lcom/cipherlab/barcode/decoder/BcReaderType;

    .line 8
    new-instance v0, Lcom/cipherlab/barcode/decoder/BcReaderType;

    const-string v13, "SE4850ER_2D"

    const/16 v14, 0x11

    invoke-direct {v0, v13, v15, v14}, Lcom/cipherlab/barcode/decoder/BcReaderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/BcReaderType;->SE4850ER_2D:Lcom/cipherlab/barcode/decoder/BcReaderType;

    new-instance v0, Lcom/cipherlab/barcode/decoder/BcReaderType;

    const-string v13, "CL_2D_SM2_SDC"

    const/16 v14, 0x12

    invoke-direct {v0, v13, v12, v14}, Lcom/cipherlab/barcode/decoder/BcReaderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/BcReaderType;->CL_2D_SM2_SDC:Lcom/cipherlab/barcode/decoder/BcReaderType;

    const/16 v13, 0x10

    new-array v13, v13, [Lcom/cipherlab/barcode/decoder/BcReaderType;

    .line 3
    sget-object v14, Lcom/cipherlab/barcode/decoder/BcReaderType;->None:Lcom/cipherlab/barcode/decoder/BcReaderType;

    aput-object v14, v13, v1

    sget-object v1, Lcom/cipherlab/barcode/decoder/BcReaderType;->Moto_1D_SE955:Lcom/cipherlab/barcode/decoder/BcReaderType;

    aput-object v1, v13, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/BcReaderType;->Moto_2D_4500:Lcom/cipherlab/barcode/decoder/BcReaderType;

    aput-object v1, v13, v3

    sget-object v1, Lcom/cipherlab/barcode/decoder/BcReaderType;->Moto_1D_SE965:Lcom/cipherlab/barcode/decoder/BcReaderType;

    aput-object v1, v13, v4

    sget-object v1, Lcom/cipherlab/barcode/decoder/BcReaderType;->Moto_2D_PL4507:Lcom/cipherlab/barcode/decoder/BcReaderType;

    aput-object v1, v13, v5

    sget-object v1, Lcom/cipherlab/barcode/decoder/BcReaderType;->Intermec_2D_EX25:Lcom/cipherlab/barcode/decoder/BcReaderType;

    aput-object v1, v13, v6

    sget-object v1, Lcom/cipherlab/barcode/decoder/BcReaderType;->Moto_1D_SE1524:Lcom/cipherlab/barcode/decoder/BcReaderType;

    aput-object v1, v13, v8

    sget-object v1, Lcom/cipherlab/barcode/decoder/BcReaderType;->CL_1D_SM1:Lcom/cipherlab/barcode/decoder/BcReaderType;

    aput-object v1, v13, v7

    sget-object v1, Lcom/cipherlab/barcode/decoder/BcReaderType;->SE4750SR_2D:Lcom/cipherlab/barcode/decoder/BcReaderType;

    aput-object v1, v13, v9

    sget-object v1, Lcom/cipherlab/barcode/decoder/BcReaderType;->SE4750MR_2D:Lcom/cipherlab/barcode/decoder/BcReaderType;

    aput-object v1, v13, v10

    sget-object v1, Lcom/cipherlab/barcode/decoder/BcReaderType;->Moto_1D_SE965I:Lcom/cipherlab/barcode/decoder/BcReaderType;

    aput-object v1, v13, v11

    sget-object v1, Lcom/cipherlab/barcode/decoder/BcReaderType;->Moto_1D_SE965E:Lcom/cipherlab/barcode/decoder/BcReaderType;

    const/16 v2, 0xb

    aput-object v1, v13, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/BcReaderType;->CL_2D_SM2:Lcom/cipherlab/barcode/decoder/BcReaderType;

    const/16 v2, 0xc

    aput-object v1, v13, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/BcReaderType;->PL3307_SE4750:Lcom/cipherlab/barcode/decoder/BcReaderType;

    const/16 v2, 0xd

    aput-object v1, v13, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/BcReaderType;->SE4850ER_2D:Lcom/cipherlab/barcode/decoder/BcReaderType;

    aput-object v1, v13, v15

    aput-object v0, v13, v12

    sput-object v13, Lcom/cipherlab/barcode/decoder/BcReaderType;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/BcReaderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/cipherlab/barcode/decoder/BcReaderType;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/cipherlab/barcode/decoder/BcReaderType;
    .registers 1

    packed-switch p0, :pswitch_data_34

    .line 53
    :pswitch_3
    sget-object p0, Lcom/cipherlab/barcode/decoder/BcReaderType;->None:Lcom/cipherlab/barcode/decoder/BcReaderType;

    return-object p0

    .line 51
    :pswitch_6
    sget-object p0, Lcom/cipherlab/barcode/decoder/BcReaderType;->CL_2D_SM2_SDC:Lcom/cipherlab/barcode/decoder/BcReaderType;

    return-object p0

    .line 49
    :pswitch_9
    sget-object p0, Lcom/cipherlab/barcode/decoder/BcReaderType;->SE4850ER_2D:Lcom/cipherlab/barcode/decoder/BcReaderType;

    return-object p0

    .line 47
    :pswitch_c
    sget-object p0, Lcom/cipherlab/barcode/decoder/BcReaderType;->PL3307_SE4750:Lcom/cipherlab/barcode/decoder/BcReaderType;

    return-object p0

    .line 45
    :pswitch_f
    sget-object p0, Lcom/cipherlab/barcode/decoder/BcReaderType;->CL_2D_SM2:Lcom/cipherlab/barcode/decoder/BcReaderType;

    return-object p0

    .line 43
    :pswitch_12
    sget-object p0, Lcom/cipherlab/barcode/decoder/BcReaderType;->Moto_1D_SE965E:Lcom/cipherlab/barcode/decoder/BcReaderType;

    return-object p0

    .line 41
    :pswitch_15
    sget-object p0, Lcom/cipherlab/barcode/decoder/BcReaderType;->Moto_1D_SE965I:Lcom/cipherlab/barcode/decoder/BcReaderType;

    return-object p0

    .line 39
    :pswitch_18
    sget-object p0, Lcom/cipherlab/barcode/decoder/BcReaderType;->SE4750MR_2D:Lcom/cipherlab/barcode/decoder/BcReaderType;

    return-object p0

    .line 37
    :pswitch_1b
    sget-object p0, Lcom/cipherlab/barcode/decoder/BcReaderType;->SE4750SR_2D:Lcom/cipherlab/barcode/decoder/BcReaderType;

    return-object p0

    .line 35
    :pswitch_1e
    sget-object p0, Lcom/cipherlab/barcode/decoder/BcReaderType;->CL_1D_SM1:Lcom/cipherlab/barcode/decoder/BcReaderType;

    return-object p0

    .line 33
    :pswitch_21
    sget-object p0, Lcom/cipherlab/barcode/decoder/BcReaderType;->Moto_1D_SE1524:Lcom/cipherlab/barcode/decoder/BcReaderType;

    return-object p0

    .line 31
    :pswitch_24
    sget-object p0, Lcom/cipherlab/barcode/decoder/BcReaderType;->Intermec_2D_EX25:Lcom/cipherlab/barcode/decoder/BcReaderType;

    return-object p0

    .line 29
    :pswitch_27
    sget-object p0, Lcom/cipherlab/barcode/decoder/BcReaderType;->Moto_2D_PL4507:Lcom/cipherlab/barcode/decoder/BcReaderType;

    return-object p0

    .line 27
    :pswitch_2a
    sget-object p0, Lcom/cipherlab/barcode/decoder/BcReaderType;->Moto_1D_SE965:Lcom/cipherlab/barcode/decoder/BcReaderType;

    return-object p0

    .line 25
    :pswitch_2d
    sget-object p0, Lcom/cipherlab/barcode/decoder/BcReaderType;->Moto_2D_4500:Lcom/cipherlab/barcode/decoder/BcReaderType;

    return-object p0

    .line 23
    :pswitch_30
    sget-object p0, Lcom/cipherlab/barcode/decoder/BcReaderType;->Moto_1D_SE955:Lcom/cipherlab/barcode/decoder/BcReaderType;

    return-object p0

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_30
        :pswitch_3
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_3
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_3
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/barcode/decoder/BcReaderType;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/barcode/decoder/BcReaderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/barcode/decoder/BcReaderType;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/barcode/decoder/BcReaderType;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/barcode/decoder/BcReaderType;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/BcReaderType;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/barcode/decoder/BcReaderType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 17
    iget v0, p0, Lcom/cipherlab/barcode/decoder/BcReaderType;->value:I

    return v0
.end method

.method public value()I
    .registers 2

    .line 58
    iget v0, p0, Lcom/cipherlab/barcode/decoder/BcReaderType;->value:I

    return v0
.end method
