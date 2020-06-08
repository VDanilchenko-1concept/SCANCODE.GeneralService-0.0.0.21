.class public final enum Lcom/cipherlab/barcode/decoder/ISBNFormat;
.super Ljava/lang/Enum;
.source "ISBNFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/barcode/decoder/ISBNFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/ISBNFormat;

.field public static final enum ISBN_10:Lcom/cipherlab/barcode/decoder/ISBNFormat;

.field public static final enum ISBN_13:Lcom/cipherlab/barcode/decoder/ISBNFormat;

.field public static final enum NotSupport:Lcom/cipherlab/barcode/decoder/ISBNFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 4
    new-instance v0, Lcom/cipherlab/barcode/decoder/ISBNFormat;

    const/4 v1, 0x0

    const-string v2, "ISBN_10"

    invoke-direct {v0, v2, v1}, Lcom/cipherlab/barcode/decoder/ISBNFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/ISBNFormat;->ISBN_10:Lcom/cipherlab/barcode/decoder/ISBNFormat;

    .line 5
    new-instance v0, Lcom/cipherlab/barcode/decoder/ISBNFormat;

    const/4 v2, 0x1

    const-string v3, "ISBN_13"

    invoke-direct {v0, v3, v2}, Lcom/cipherlab/barcode/decoder/ISBNFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/ISBNFormat;->ISBN_13:Lcom/cipherlab/barcode/decoder/ISBNFormat;

    .line 6
    new-instance v0, Lcom/cipherlab/barcode/decoder/ISBNFormat;

    const/4 v3, 0x2

    const-string v4, "NotSupport"

    invoke-direct {v0, v4, v3}, Lcom/cipherlab/barcode/decoder/ISBNFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/ISBNFormat;->NotSupport:Lcom/cipherlab/barcode/decoder/ISBNFormat;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/cipherlab/barcode/decoder/ISBNFormat;

    .line 3
    sget-object v5, Lcom/cipherlab/barcode/decoder/ISBNFormat;->ISBN_10:Lcom/cipherlab/barcode/decoder/ISBNFormat;

    aput-object v5, v4, v1

    sget-object v1, Lcom/cipherlab/barcode/decoder/ISBNFormat;->ISBN_13:Lcom/cipherlab/barcode/decoder/ISBNFormat;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/cipherlab/barcode/decoder/ISBNFormat;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/ISBNFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/barcode/decoder/ISBNFormat;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/barcode/decoder/ISBNFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/barcode/decoder/ISBNFormat;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/barcode/decoder/ISBNFormat;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/barcode/decoder/ISBNFormat;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/ISBNFormat;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/barcode/decoder/ISBNFormat;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
