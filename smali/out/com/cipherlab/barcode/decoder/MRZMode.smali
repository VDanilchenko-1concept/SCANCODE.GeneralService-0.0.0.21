.class public final enum Lcom/cipherlab/barcode/decoder/MRZMode;
.super Ljava/lang/Enum;
.source "MRZMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/barcode/decoder/MRZMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/MRZMode;

.field public static final enum ICAO_TravelDocuments:Lcom/cipherlab/barcode/decoder/MRZMode;

.field public static final enum NotSupport:Lcom/cipherlab/barcode/decoder/MRZMode;

.field public static final enum Passport:Lcom/cipherlab/barcode/decoder/MRZMode;

.field public static final enum TravelDocument_AutoDetect:Lcom/cipherlab/barcode/decoder/MRZMode;

.field public static final enum TravelDocument_V1_3Line:Lcom/cipherlab/barcode/decoder/MRZMode;

.field public static final enum TravelDocument_V2_2Line:Lcom/cipherlab/barcode/decoder/MRZMode;

.field public static final enum Visa_TypeA:Lcom/cipherlab/barcode/decoder/MRZMode;

.field public static final enum Visa_TypeB:Lcom/cipherlab/barcode/decoder/MRZMode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 4
    new-instance v0, Lcom/cipherlab/barcode/decoder/MRZMode;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const-string v3, "TravelDocument_V1_3Line"

    invoke-direct {v0, v3, v1, v2}, Lcom/cipherlab/barcode/decoder/MRZMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/MRZMode;->TravelDocument_V1_3Line:Lcom/cipherlab/barcode/decoder/MRZMode;

    .line 5
    new-instance v0, Lcom/cipherlab/barcode/decoder/MRZMode;

    const/16 v3, 0x8

    const/4 v4, 0x1

    const-string v5, "TravelDocument_V2_2Line"

    invoke-direct {v0, v5, v4, v3}, Lcom/cipherlab/barcode/decoder/MRZMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/MRZMode;->TravelDocument_V2_2Line:Lcom/cipherlab/barcode/decoder/MRZMode;

    .line 6
    new-instance v0, Lcom/cipherlab/barcode/decoder/MRZMode;

    const/4 v5, 0x2

    const-string v6, "TravelDocument_AutoDetect"

    const/16 v7, 0x14

    invoke-direct {v0, v6, v5, v7}, Lcom/cipherlab/barcode/decoder/MRZMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/MRZMode;->TravelDocument_AutoDetect:Lcom/cipherlab/barcode/decoder/MRZMode;

    .line 7
    new-instance v0, Lcom/cipherlab/barcode/decoder/MRZMode;

    const/4 v6, 0x4

    const-string v7, "Passport"

    invoke-direct {v0, v7, v2, v6}, Lcom/cipherlab/barcode/decoder/MRZMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/MRZMode;->Passport:Lcom/cipherlab/barcode/decoder/MRZMode;

    .line 8
    new-instance v0, Lcom/cipherlab/barcode/decoder/MRZMode;

    const-string v7, "Visa_TypeA"

    const/16 v8, 0x9

    invoke-direct {v0, v7, v6, v8}, Lcom/cipherlab/barcode/decoder/MRZMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/MRZMode;->Visa_TypeA:Lcom/cipherlab/barcode/decoder/MRZMode;

    .line 9
    new-instance v0, Lcom/cipherlab/barcode/decoder/MRZMode;

    const/4 v7, 0x5

    const-string v8, "Visa_TypeB"

    const/16 v9, 0xa

    invoke-direct {v0, v8, v7, v9}, Lcom/cipherlab/barcode/decoder/MRZMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/MRZMode;->Visa_TypeB:Lcom/cipherlab/barcode/decoder/MRZMode;

    .line 10
    new-instance v0, Lcom/cipherlab/barcode/decoder/MRZMode;

    const/4 v8, 0x6

    const-string v9, "ICAO_TravelDocuments"

    const/16 v10, 0xb

    invoke-direct {v0, v9, v8, v10}, Lcom/cipherlab/barcode/decoder/MRZMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/MRZMode;->ICAO_TravelDocuments:Lcom/cipherlab/barcode/decoder/MRZMode;

    .line 11
    new-instance v0, Lcom/cipherlab/barcode/decoder/MRZMode;

    const/4 v9, 0x7

    const-string v10, "NotSupport"

    const/16 v11, 0x64

    invoke-direct {v0, v10, v9, v11}, Lcom/cipherlab/barcode/decoder/MRZMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/MRZMode;->NotSupport:Lcom/cipherlab/barcode/decoder/MRZMode;

    new-array v3, v3, [Lcom/cipherlab/barcode/decoder/MRZMode;

    .line 3
    sget-object v10, Lcom/cipherlab/barcode/decoder/MRZMode;->TravelDocument_V1_3Line:Lcom/cipherlab/barcode/decoder/MRZMode;

    aput-object v10, v3, v1

    sget-object v1, Lcom/cipherlab/barcode/decoder/MRZMode;->TravelDocument_V2_2Line:Lcom/cipherlab/barcode/decoder/MRZMode;

    aput-object v1, v3, v4

    sget-object v1, Lcom/cipherlab/barcode/decoder/MRZMode;->TravelDocument_AutoDetect:Lcom/cipherlab/barcode/decoder/MRZMode;

    aput-object v1, v3, v5

    sget-object v1, Lcom/cipherlab/barcode/decoder/MRZMode;->Passport:Lcom/cipherlab/barcode/decoder/MRZMode;

    aput-object v1, v3, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/MRZMode;->Visa_TypeA:Lcom/cipherlab/barcode/decoder/MRZMode;

    aput-object v1, v3, v6

    sget-object v1, Lcom/cipherlab/barcode/decoder/MRZMode;->Visa_TypeB:Lcom/cipherlab/barcode/decoder/MRZMode;

    aput-object v1, v3, v7

    sget-object v1, Lcom/cipherlab/barcode/decoder/MRZMode;->ICAO_TravelDocuments:Lcom/cipherlab/barcode/decoder/MRZMode;

    aput-object v1, v3, v8

    aput-object v0, v3, v9

    sput-object v3, Lcom/cipherlab/barcode/decoder/MRZMode;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/MRZMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lcom/cipherlab/barcode/decoder/MRZMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/cipherlab/barcode/decoder/MRZMode;
    .registers 2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_22

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1c

    packed-switch p0, :pswitch_data_26

    .line 40
    sget-object p0, Lcom/cipherlab/barcode/decoder/MRZMode;->NotSupport:Lcom/cipherlab/barcode/decoder/MRZMode;

    return-object p0

    .line 38
    :pswitch_10
    sget-object p0, Lcom/cipherlab/barcode/decoder/MRZMode;->ICAO_TravelDocuments:Lcom/cipherlab/barcode/decoder/MRZMode;

    return-object p0

    .line 36
    :pswitch_13
    sget-object p0, Lcom/cipherlab/barcode/decoder/MRZMode;->Visa_TypeB:Lcom/cipherlab/barcode/decoder/MRZMode;

    return-object p0

    .line 34
    :pswitch_16
    sget-object p0, Lcom/cipherlab/barcode/decoder/MRZMode;->Visa_TypeA:Lcom/cipherlab/barcode/decoder/MRZMode;

    return-object p0

    .line 28
    :pswitch_19
    sget-object p0, Lcom/cipherlab/barcode/decoder/MRZMode;->TravelDocument_V2_2Line:Lcom/cipherlab/barcode/decoder/MRZMode;

    return-object p0

    .line 30
    :cond_1c
    sget-object p0, Lcom/cipherlab/barcode/decoder/MRZMode;->TravelDocument_AutoDetect:Lcom/cipherlab/barcode/decoder/MRZMode;

    return-object p0

    .line 32
    :cond_1f
    sget-object p0, Lcom/cipherlab/barcode/decoder/MRZMode;->Passport:Lcom/cipherlab/barcode/decoder/MRZMode;

    return-object p0

    .line 26
    :cond_22
    sget-object p0, Lcom/cipherlab/barcode/decoder/MRZMode;->TravelDocument_V1_3Line:Lcom/cipherlab/barcode/decoder/MRZMode;

    return-object p0

    nop

    :pswitch_data_26
    .packed-switch 0x8
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/barcode/decoder/MRZMode;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/barcode/decoder/MRZMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/barcode/decoder/MRZMode;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/barcode/decoder/MRZMode;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/barcode/decoder/MRZMode;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/MRZMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/barcode/decoder/MRZMode;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 20
    iget v0, p0, Lcom/cipherlab/barcode/decoder/MRZMode;->value:I

    return v0
.end method

.method public value()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/cipherlab/barcode/decoder/MRZMode;->value:I

    return v0
.end method
