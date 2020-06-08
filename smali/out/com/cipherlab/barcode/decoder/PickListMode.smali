.class public final enum Lcom/cipherlab/barcode/decoder/PickListMode;
.super Ljava/lang/Enum;
.source "PickListMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/barcode/decoder/PickListMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Disable:Lcom/cipherlab/barcode/decoder/PickListMode;

.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/PickListMode;

.field public static final enum Hardware:Lcom/cipherlab/barcode/decoder/PickListMode;

.field public static final enum NotSupport:Lcom/cipherlab/barcode/decoder/PickListMode;

.field public static final enum Software:Lcom/cipherlab/barcode/decoder/PickListMode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 4
    new-instance v0, Lcom/cipherlab/barcode/decoder/PickListMode;

    const/4 v1, 0x0

    const-string v2, "Disable"

    invoke-direct {v0, v2, v1, v1}, Lcom/cipherlab/barcode/decoder/PickListMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/PickListMode;->Disable:Lcom/cipherlab/barcode/decoder/PickListMode;

    .line 5
    new-instance v0, Lcom/cipherlab/barcode/decoder/PickListMode;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "Hardware"

    invoke-direct {v0, v4, v2, v3}, Lcom/cipherlab/barcode/decoder/PickListMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/PickListMode;->Hardware:Lcom/cipherlab/barcode/decoder/PickListMode;

    .line 6
    new-instance v0, Lcom/cipherlab/barcode/decoder/PickListMode;

    const/4 v4, 0x4

    const-string v5, "Software"

    invoke-direct {v0, v5, v3, v4}, Lcom/cipherlab/barcode/decoder/PickListMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/PickListMode;->Software:Lcom/cipherlab/barcode/decoder/PickListMode;

    .line 7
    new-instance v0, Lcom/cipherlab/barcode/decoder/PickListMode;

    const/4 v5, 0x3

    const-string v6, "NotSupport"

    const/16 v7, 0x63

    invoke-direct {v0, v6, v5, v7}, Lcom/cipherlab/barcode/decoder/PickListMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/PickListMode;->NotSupport:Lcom/cipherlab/barcode/decoder/PickListMode;

    new-array v4, v4, [Lcom/cipherlab/barcode/decoder/PickListMode;

    .line 3
    sget-object v6, Lcom/cipherlab/barcode/decoder/PickListMode;->Disable:Lcom/cipherlab/barcode/decoder/PickListMode;

    aput-object v6, v4, v1

    sget-object v1, Lcom/cipherlab/barcode/decoder/PickListMode;->Hardware:Lcom/cipherlab/barcode/decoder/PickListMode;

    aput-object v1, v4, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/PickListMode;->Software:Lcom/cipherlab/barcode/decoder/PickListMode;

    aput-object v1, v4, v3

    aput-object v0, v4, v5

    sput-object v4, Lcom/cipherlab/barcode/decoder/PickListMode;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/PickListMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/cipherlab/barcode/decoder/PickListMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/cipherlab/barcode/decoder/PickListMode;
    .registers 2

    if-eqz p0, :cond_11

    const/4 v0, 0x2

    if-eq p0, v0, :cond_e

    const/4 v0, 0x4

    if-eq p0, v0, :cond_b

    .line 28
    sget-object p0, Lcom/cipherlab/barcode/decoder/PickListMode;->NotSupport:Lcom/cipherlab/barcode/decoder/PickListMode;

    return-object p0

    .line 26
    :cond_b
    sget-object p0, Lcom/cipherlab/barcode/decoder/PickListMode;->Software:Lcom/cipherlab/barcode/decoder/PickListMode;

    return-object p0

    .line 24
    :cond_e
    sget-object p0, Lcom/cipherlab/barcode/decoder/PickListMode;->Hardware:Lcom/cipherlab/barcode/decoder/PickListMode;

    return-object p0

    .line 22
    :cond_11
    sget-object p0, Lcom/cipherlab/barcode/decoder/PickListMode;->Disable:Lcom/cipherlab/barcode/decoder/PickListMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/barcode/decoder/PickListMode;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/barcode/decoder/PickListMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/barcode/decoder/PickListMode;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/barcode/decoder/PickListMode;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/barcode/decoder/PickListMode;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/PickListMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/barcode/decoder/PickListMode;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 16
    iget v0, p0, Lcom/cipherlab/barcode/decoder/PickListMode;->value:I

    return v0
.end method

.method public value()I
    .registers 2

    .line 33
    iget v0, p0, Lcom/cipherlab/barcode/decoder/PickListMode;->value:I

    return v0
.end method
