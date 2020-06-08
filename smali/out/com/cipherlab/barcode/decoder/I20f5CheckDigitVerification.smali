.class public final enum Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;
.super Ljava/lang/Enum;
.source "I20f5CheckDigitVerification.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Disable:Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

.field public static final enum Enable:Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

.field public static final enum French_CIP_HR:Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

.field public static final enum Modulo_10:Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

.field public static final enum NotSupport:Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

.field public static final enum OPCC:Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

.field public static final enum USS:Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 4
    new-instance v0, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    const/4 v1, 0x0

    const-string v2, "Disable"

    invoke-direct {v0, v2, v1}, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;->Disable:Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    .line 5
    new-instance v0, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    const/4 v2, 0x1

    const-string v3, "USS"

    invoke-direct {v0, v3, v2}, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;->USS:Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    .line 6
    new-instance v0, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    const/4 v3, 0x2

    const-string v4, "OPCC"

    invoke-direct {v0, v4, v3}, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;->OPCC:Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    .line 7
    new-instance v0, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    const/4 v4, 0x3

    const-string v5, "Modulo_10"

    invoke-direct {v0, v5, v4}, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;->Modulo_10:Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    .line 8
    new-instance v0, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    const/4 v5, 0x4

    const-string v6, "French_CIP_HR"

    invoke-direct {v0, v6, v5}, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;->French_CIP_HR:Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    .line 9
    new-instance v0, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    const/4 v6, 0x5

    const-string v7, "Enable"

    invoke-direct {v0, v7, v6}, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;->Enable:Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    .line 10
    new-instance v0, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    const/4 v7, 0x6

    const-string v8, "NotSupport"

    invoke-direct {v0, v8, v7}, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;->NotSupport:Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    .line 3
    sget-object v9, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;->Disable:Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    aput-object v9, v8, v1

    sget-object v1, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;->USS:Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    aput-object v1, v8, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;->OPCC:Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    aput-object v1, v8, v3

    sget-object v1, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;->Modulo_10:Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    aput-object v1, v8, v4

    sget-object v1, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;->French_CIP_HR:Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    aput-object v1, v8, v5

    sget-object v1, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;->Enable:Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
