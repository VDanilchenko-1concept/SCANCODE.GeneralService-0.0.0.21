.class public final enum Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;
.super Ljava/lang/Enum;
.source "TransmitCodeIDType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AimCodeId:Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;

.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;

.field public static final enum None:Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;

.field public static final enum NotSupport:Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 4
    new-instance v0, Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;

    const/4 v1, 0x0

    const-string v2, "None"

    invoke-direct {v0, v2, v1}, Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;->None:Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;

    .line 5
    new-instance v0, Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;

    const/4 v2, 0x1

    const-string v3, "AimCodeId"

    invoke-direct {v0, v3, v2}, Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;->AimCodeId:Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;

    .line 6
    new-instance v0, Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;

    const/4 v3, 0x2

    const-string v4, "NotSupport"

    invoke-direct {v0, v4, v3}, Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;->NotSupport:Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;

    .line 3
    sget-object v5, Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;->None:Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;->AimCodeId:Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
