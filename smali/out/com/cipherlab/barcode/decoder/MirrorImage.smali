.class public final enum Lcom/cipherlab/barcode/decoder/MirrorImage;
.super Ljava/lang/Enum;
.source "MirrorImage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/barcode/decoder/MirrorImage;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Always:Lcom/cipherlab/barcode/decoder/MirrorImage;

.field public static final enum Auto:Lcom/cipherlab/barcode/decoder/MirrorImage;

.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/MirrorImage;

.field public static final enum Never:Lcom/cipherlab/barcode/decoder/MirrorImage;

.field public static final enum NotSupport:Lcom/cipherlab/barcode/decoder/MirrorImage;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 4
    new-instance v0, Lcom/cipherlab/barcode/decoder/MirrorImage;

    const/4 v1, 0x0

    const-string v2, "Never"

    invoke-direct {v0, v2, v1}, Lcom/cipherlab/barcode/decoder/MirrorImage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/MirrorImage;->Never:Lcom/cipherlab/barcode/decoder/MirrorImage;

    .line 5
    new-instance v0, Lcom/cipherlab/barcode/decoder/MirrorImage;

    const/4 v2, 0x1

    const-string v3, "Always"

    invoke-direct {v0, v3, v2}, Lcom/cipherlab/barcode/decoder/MirrorImage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/MirrorImage;->Always:Lcom/cipherlab/barcode/decoder/MirrorImage;

    .line 6
    new-instance v0, Lcom/cipherlab/barcode/decoder/MirrorImage;

    const/4 v3, 0x2

    const-string v4, "Auto"

    invoke-direct {v0, v4, v3}, Lcom/cipherlab/barcode/decoder/MirrorImage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/MirrorImage;->Auto:Lcom/cipherlab/barcode/decoder/MirrorImage;

    .line 7
    new-instance v0, Lcom/cipherlab/barcode/decoder/MirrorImage;

    const/4 v4, 0x3

    const-string v5, "NotSupport"

    invoke-direct {v0, v5, v4}, Lcom/cipherlab/barcode/decoder/MirrorImage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/MirrorImage;->NotSupport:Lcom/cipherlab/barcode/decoder/MirrorImage;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/cipherlab/barcode/decoder/MirrorImage;

    .line 3
    sget-object v6, Lcom/cipherlab/barcode/decoder/MirrorImage;->Never:Lcom/cipherlab/barcode/decoder/MirrorImage;

    aput-object v6, v5, v1

    sget-object v1, Lcom/cipherlab/barcode/decoder/MirrorImage;->Always:Lcom/cipherlab/barcode/decoder/MirrorImage;

    aput-object v1, v5, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/MirrorImage;->Auto:Lcom/cipherlab/barcode/decoder/MirrorImage;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/cipherlab/barcode/decoder/MirrorImage;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/MirrorImage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/barcode/decoder/MirrorImage;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/barcode/decoder/MirrorImage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/barcode/decoder/MirrorImage;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/barcode/decoder/MirrorImage;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/barcode/decoder/MirrorImage;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/MirrorImage;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/barcode/decoder/MirrorImage;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
