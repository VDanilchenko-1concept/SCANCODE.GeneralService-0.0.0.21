.class public final enum Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;
.super Ljava/lang/Enum;
.source "InterCharacterGapSize.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

.field public static final enum Large:Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

.field public static final enum Normal:Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

.field public static final enum NotSupport:Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 4
    new-instance v0, Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

    const/4 v1, 0x0

    const-string v2, "Normal"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v1, v3}, Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;->Normal:Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

    .line 5
    new-instance v0, Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

    const/4 v2, 0x1

    const-string v3, "Large"

    const/16 v4, 0xa

    invoke-direct {v0, v3, v2, v4}, Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;->Large:Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

    .line 6
    new-instance v0, Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

    const/4 v3, 0x2

    const-string v4, "NotSupport"

    invoke-direct {v0, v4, v3, v1}, Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;->NotSupport:Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

    .line 3
    sget-object v5, Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;->Normal:Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

    aput-object v5, v4, v1

    sget-object v1, Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;->Large:Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;
    .registers 2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_d

    const/16 v0, 0xa

    if-eq p0, v0, :cond_a

    .line 25
    sget-object p0, Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;->NotSupport:Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

    return-object p0

    .line 23
    :cond_a
    sget-object p0, Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;->Large:Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

    return-object p0

    .line 21
    :cond_d
    sget-object p0, Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;->Normal:Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 15
    iget v0, p0, Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;->value:I

    return v0
.end method

.method public value()I
    .registers 2

    .line 30
    iget v0, p0, Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;->value:I

    return v0
.end method
