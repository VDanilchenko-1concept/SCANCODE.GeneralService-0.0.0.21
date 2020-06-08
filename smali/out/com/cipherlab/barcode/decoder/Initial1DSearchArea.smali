.class public final enum Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;
.super Ljava/lang/Enum;
.source "Initial1DSearchArea.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Center:Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;

.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;

.field public static final enum Full:Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;

.field public static final enum LowerHalf:Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;

.field public static final enum NotSupport:Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;

.field public static final enum SmartRaster:Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;

.field public static final enum UpperHalf:Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 4
    new-instance v0, Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;

    const/4 v1, 0x0

    const-string v2, "Center"

    invoke-direct {v0, v2, v1}, Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;->Center:Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;

    .line 5
    new-instance v0, Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;

    const/4 v2, 0x1

    const-string v3, "UpperHalf"

    invoke-direct {v0, v3, v2}, Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;->UpperHalf:Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;

    .line 6
    new-instance v0, Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;

    const/4 v3, 0x2

    const-string v4, "LowerHalf"

    invoke-direct {v0, v4, v3}, Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;->LowerHalf:Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;

    .line 7
    new-instance v0, Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;

    const/4 v4, 0x3

    const-string v5, "Full"

    invoke-direct {v0, v5, v4}, Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;->Full:Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;

    .line 8
    new-instance v0, Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;

    const/4 v5, 0x4

    const-string v6, "SmartRaster"

    invoke-direct {v0, v6, v5}, Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;->SmartRaster:Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;

    .line 9
    new-instance v0, Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;

    const/4 v6, 0x5

    const-string v7, "NotSupport"

    invoke-direct {v0, v7, v6}, Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;->NotSupport:Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;

    .line 3
    sget-object v8, Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;->Center:Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;

    aput-object v8, v7, v1

    sget-object v1, Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;->UpperHalf:Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;

    aput-object v1, v7, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;->LowerHalf:Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;

    aput-object v1, v7, v3

    sget-object v1, Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;->Full:Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;

    aput-object v1, v7, v4

    sget-object v1, Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;->SmartRaster:Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/barcode/decoder/Initial1DSearchArea;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
