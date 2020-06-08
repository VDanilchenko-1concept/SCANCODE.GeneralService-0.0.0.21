.class public final enum Lcom/cipherlab/barcode/decoder/RedundancyLevel;
.super Ljava/lang/Enum;
.source "RedundancyLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/barcode/decoder/RedundancyLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/RedundancyLevel;

.field public static final enum Four:Lcom/cipherlab/barcode/decoder/RedundancyLevel;

.field public static final enum NotSupport:Lcom/cipherlab/barcode/decoder/RedundancyLevel;

.field public static final enum One:Lcom/cipherlab/barcode/decoder/RedundancyLevel;

.field public static final enum Three:Lcom/cipherlab/barcode/decoder/RedundancyLevel;

.field public static final enum Two:Lcom/cipherlab/barcode/decoder/RedundancyLevel;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 4
    new-instance v0, Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "One"

    invoke-direct {v0, v3, v2, v1}, Lcom/cipherlab/barcode/decoder/RedundancyLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/RedundancyLevel;->One:Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    .line 5
    new-instance v0, Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    const/4 v3, 0x2

    const-string v4, "Two"

    invoke-direct {v0, v4, v1, v3}, Lcom/cipherlab/barcode/decoder/RedundancyLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/RedundancyLevel;->Two:Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    .line 6
    new-instance v0, Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    const/4 v4, 0x3

    const-string v5, "Three"

    invoke-direct {v0, v5, v3, v4}, Lcom/cipherlab/barcode/decoder/RedundancyLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/RedundancyLevel;->Three:Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    .line 7
    new-instance v0, Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    const/4 v5, 0x4

    const-string v6, "Four"

    invoke-direct {v0, v6, v4, v5}, Lcom/cipherlab/barcode/decoder/RedundancyLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/RedundancyLevel;->Four:Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    .line 8
    new-instance v0, Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    const-string v6, "NotSupport"

    invoke-direct {v0, v6, v5, v2}, Lcom/cipherlab/barcode/decoder/RedundancyLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/RedundancyLevel;->NotSupport:Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    .line 3
    sget-object v7, Lcom/cipherlab/barcode/decoder/RedundancyLevel;->One:Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    aput-object v7, v6, v2

    sget-object v2, Lcom/cipherlab/barcode/decoder/RedundancyLevel;->Two:Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    aput-object v2, v6, v1

    sget-object v1, Lcom/cipherlab/barcode/decoder/RedundancyLevel;->Three:Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    aput-object v1, v6, v3

    sget-object v1, Lcom/cipherlab/barcode/decoder/RedundancyLevel;->Four:Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/cipherlab/barcode/decoder/RedundancyLevel;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/cipherlab/barcode/decoder/RedundancyLevel;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/cipherlab/barcode/decoder/RedundancyLevel;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-eq p0, v0, :cond_12

    const/4 v0, 0x4

    if-eq p0, v0, :cond_f

    .line 31
    sget-object p0, Lcom/cipherlab/barcode/decoder/RedundancyLevel;->NotSupport:Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    return-object p0

    .line 29
    :cond_f
    sget-object p0, Lcom/cipherlab/barcode/decoder/RedundancyLevel;->Four:Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    return-object p0

    .line 27
    :cond_12
    sget-object p0, Lcom/cipherlab/barcode/decoder/RedundancyLevel;->Three:Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    return-object p0

    .line 25
    :cond_15
    sget-object p0, Lcom/cipherlab/barcode/decoder/RedundancyLevel;->Two:Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    return-object p0

    .line 23
    :cond_18
    sget-object p0, Lcom/cipherlab/barcode/decoder/RedundancyLevel;->One:Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/barcode/decoder/RedundancyLevel;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/barcode/decoder/RedundancyLevel;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/barcode/decoder/RedundancyLevel;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 17
    iget v0, p0, Lcom/cipherlab/barcode/decoder/RedundancyLevel;->value:I

    return v0
.end method

.method public value()I
    .registers 2

    .line 36
    iget v0, p0, Lcom/cipherlab/barcode/decoder/RedundancyLevel;->value:I

    return v0
.end method
