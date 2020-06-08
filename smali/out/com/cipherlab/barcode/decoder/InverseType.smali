.class public final enum Lcom/cipherlab/barcode/decoder/InverseType;
.super Ljava/lang/Enum;
.source "InverseType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/barcode/decoder/InverseType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AutoDetect:Lcom/cipherlab/barcode/decoder/InverseType;

.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/InverseType;

.field public static final enum InverseOnly:Lcom/cipherlab/barcode/decoder/InverseType;

.field public static final enum NotSupport:Lcom/cipherlab/barcode/decoder/InverseType;

.field public static final enum RegularOnly:Lcom/cipherlab/barcode/decoder/InverseType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 4
    new-instance v0, Lcom/cipherlab/barcode/decoder/InverseType;

    const/4 v1, 0x0

    const-string v2, "RegularOnly"

    invoke-direct {v0, v2, v1}, Lcom/cipherlab/barcode/decoder/InverseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/InverseType;->RegularOnly:Lcom/cipherlab/barcode/decoder/InverseType;

    .line 5
    new-instance v0, Lcom/cipherlab/barcode/decoder/InverseType;

    const/4 v2, 0x1

    const-string v3, "InverseOnly"

    invoke-direct {v0, v3, v2}, Lcom/cipherlab/barcode/decoder/InverseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/InverseType;->InverseOnly:Lcom/cipherlab/barcode/decoder/InverseType;

    .line 6
    new-instance v0, Lcom/cipherlab/barcode/decoder/InverseType;

    const/4 v3, 0x2

    const-string v4, "AutoDetect"

    invoke-direct {v0, v4, v3}, Lcom/cipherlab/barcode/decoder/InverseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/InverseType;->AutoDetect:Lcom/cipherlab/barcode/decoder/InverseType;

    .line 7
    new-instance v0, Lcom/cipherlab/barcode/decoder/InverseType;

    const/4 v4, 0x3

    const-string v5, "NotSupport"

    invoke-direct {v0, v5, v4}, Lcom/cipherlab/barcode/decoder/InverseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/InverseType;->NotSupport:Lcom/cipherlab/barcode/decoder/InverseType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/cipherlab/barcode/decoder/InverseType;

    .line 3
    sget-object v6, Lcom/cipherlab/barcode/decoder/InverseType;->RegularOnly:Lcom/cipherlab/barcode/decoder/InverseType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/cipherlab/barcode/decoder/InverseType;->InverseOnly:Lcom/cipherlab/barcode/decoder/InverseType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/InverseType;->AutoDetect:Lcom/cipherlab/barcode/decoder/InverseType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/cipherlab/barcode/decoder/InverseType;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/InverseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/barcode/decoder/InverseType;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/barcode/decoder/InverseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/barcode/decoder/InverseType;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/barcode/decoder/InverseType;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/barcode/decoder/InverseType;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/InverseType;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/barcode/decoder/InverseType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
