.class public final enum Lcom/cipherlab/barcode/decoder/AddonsType;
.super Ljava/lang/Enum;
.source "AddonsType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/barcode/decoder/AddonsType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AutoDiscriminate:Lcom/cipherlab/barcode/decoder/AddonsType;

.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/AddonsType;

.field public static final enum IgnoresAddons:Lcom/cipherlab/barcode/decoder/AddonsType;

.field public static final enum NotSupport:Lcom/cipherlab/barcode/decoder/AddonsType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 7
    new-instance v0, Lcom/cipherlab/barcode/decoder/AddonsType;

    const/4 v1, 0x0

    const-string v2, "IgnoresAddons"

    invoke-direct {v0, v2, v1, v1}, Lcom/cipherlab/barcode/decoder/AddonsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/AddonsType;->IgnoresAddons:Lcom/cipherlab/barcode/decoder/AddonsType;

    new-instance v0, Lcom/cipherlab/barcode/decoder/AddonsType;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "AutoDiscriminate"

    invoke-direct {v0, v4, v2, v3}, Lcom/cipherlab/barcode/decoder/AddonsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/AddonsType;->AutoDiscriminate:Lcom/cipherlab/barcode/decoder/AddonsType;

    new-instance v0, Lcom/cipherlab/barcode/decoder/AddonsType;

    const/4 v4, 0x3

    const-string v5, "NotSupport"

    invoke-direct {v0, v5, v3, v4}, Lcom/cipherlab/barcode/decoder/AddonsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/AddonsType;->NotSupport:Lcom/cipherlab/barcode/decoder/AddonsType;

    new-array v4, v4, [Lcom/cipherlab/barcode/decoder/AddonsType;

    .line 3
    sget-object v5, Lcom/cipherlab/barcode/decoder/AddonsType;->IgnoresAddons:Lcom/cipherlab/barcode/decoder/AddonsType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/cipherlab/barcode/decoder/AddonsType;->AutoDiscriminate:Lcom/cipherlab/barcode/decoder/AddonsType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/cipherlab/barcode/decoder/AddonsType;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/AddonsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/cipherlab/barcode/decoder/AddonsType;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/cipherlab/barcode/decoder/AddonsType;
    .registers 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_9

    .line 27
    sget-object p0, Lcom/cipherlab/barcode/decoder/AddonsType;->IgnoresAddons:Lcom/cipherlab/barcode/decoder/AddonsType;

    return-object p0

    .line 24
    :cond_9
    sget-object p0, Lcom/cipherlab/barcode/decoder/AddonsType;->NotSupport:Lcom/cipherlab/barcode/decoder/AddonsType;

    return-object p0

    .line 22
    :cond_c
    sget-object p0, Lcom/cipherlab/barcode/decoder/AddonsType;->AutoDiscriminate:Lcom/cipherlab/barcode/decoder/AddonsType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/barcode/decoder/AddonsType;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/barcode/decoder/AddonsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/barcode/decoder/AddonsType;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/barcode/decoder/AddonsType;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/barcode/decoder/AddonsType;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/AddonsType;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/barcode/decoder/AddonsType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 16
    iget v0, p0, Lcom/cipherlab/barcode/decoder/AddonsType;->value:I

    return v0
.end method

.method public value()I
    .registers 2

    .line 32
    iget v0, p0, Lcom/cipherlab/barcode/decoder/AddonsType;->value:I

    return v0
.end method
