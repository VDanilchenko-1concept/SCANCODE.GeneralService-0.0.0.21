.class public final enum Lcom/cipherlab/barcode/decoder/DecodeErrorType;
.super Ljava/lang/Enum;
.source "DecodeErrorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/barcode/decoder/DecodeErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/DecodeErrorType;

.field public static final enum ERROR_Codabar_Verify_Check_Digit:Lcom/cipherlab/barcode/decoder/DecodeErrorType;

.field public static final enum ERROR_None:Lcom/cipherlab/barcode/decoder/DecodeErrorType;

.field public static final enum ERROR_Other:Lcom/cipherlab/barcode/decoder/DecodeErrorType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 4
    new-instance v0, Lcom/cipherlab/barcode/decoder/DecodeErrorType;

    const/4 v1, 0x0

    const-string v2, "ERROR_None"

    invoke-direct {v0, v2, v1, v1}, Lcom/cipherlab/barcode/decoder/DecodeErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/DecodeErrorType;->ERROR_None:Lcom/cipherlab/barcode/decoder/DecodeErrorType;

    .line 5
    new-instance v0, Lcom/cipherlab/barcode/decoder/DecodeErrorType;

    const/4 v2, 0x1

    const-string v3, "ERROR_Codabar_Verify_Check_Digit"

    invoke-direct {v0, v3, v2, v2}, Lcom/cipherlab/barcode/decoder/DecodeErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/DecodeErrorType;->ERROR_Codabar_Verify_Check_Digit:Lcom/cipherlab/barcode/decoder/DecodeErrorType;

    .line 6
    new-instance v0, Lcom/cipherlab/barcode/decoder/DecodeErrorType;

    const/4 v3, 0x2

    const-string v4, "ERROR_Other"

    const/4 v5, -0x1

    invoke-direct {v0, v4, v3, v5}, Lcom/cipherlab/barcode/decoder/DecodeErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/DecodeErrorType;->ERROR_Other:Lcom/cipherlab/barcode/decoder/DecodeErrorType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/cipherlab/barcode/decoder/DecodeErrorType;

    .line 3
    sget-object v5, Lcom/cipherlab/barcode/decoder/DecodeErrorType;->ERROR_None:Lcom/cipherlab/barcode/decoder/DecodeErrorType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/cipherlab/barcode/decoder/DecodeErrorType;->ERROR_Codabar_Verify_Check_Digit:Lcom/cipherlab/barcode/decoder/DecodeErrorType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/cipherlab/barcode/decoder/DecodeErrorType;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/DecodeErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/cipherlab/barcode/decoder/DecodeErrorType;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/cipherlab/barcode/decoder/DecodeErrorType;
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_9

    .line 22
    sget-object p0, Lcom/cipherlab/barcode/decoder/DecodeErrorType;->ERROR_None:Lcom/cipherlab/barcode/decoder/DecodeErrorType;

    return-object p0

    .line 24
    :cond_9
    sget-object p0, Lcom/cipherlab/barcode/decoder/DecodeErrorType;->ERROR_Codabar_Verify_Check_Digit:Lcom/cipherlab/barcode/decoder/DecodeErrorType;

    return-object p0

    .line 26
    :cond_c
    sget-object p0, Lcom/cipherlab/barcode/decoder/DecodeErrorType;->ERROR_Other:Lcom/cipherlab/barcode/decoder/DecodeErrorType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/barcode/decoder/DecodeErrorType;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/barcode/decoder/DecodeErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/barcode/decoder/DecodeErrorType;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/barcode/decoder/DecodeErrorType;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/barcode/decoder/DecodeErrorType;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/DecodeErrorType;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/barcode/decoder/DecodeErrorType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 15
    iget v0, p0, Lcom/cipherlab/barcode/decoder/DecodeErrorType;->value:I

    return v0
.end method

.method public value()I
    .registers 2

    .line 31
    iget v0, p0, Lcom/cipherlab/barcode/decoder/DecodeErrorType;->value:I

    return v0
.end method
