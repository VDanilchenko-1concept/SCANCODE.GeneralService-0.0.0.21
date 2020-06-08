.class public final enum Lcom/cipherlab/barcode/decoder/DecoderType;
.super Ljava/lang/Enum;
.source "DecoderType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/barcode/decoder/DecoderType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DC_READER_BC:Lcom/cipherlab/barcode/decoder/DecoderType;

.field public static final enum DC_READER_RFID:Lcom/cipherlab/barcode/decoder/DecoderType;

.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/DecoderType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 4
    new-instance v0, Lcom/cipherlab/barcode/decoder/DecoderType;

    const/4 v1, 0x0

    const-string v2, "DC_READER_BC"

    invoke-direct {v0, v2, v1}, Lcom/cipherlab/barcode/decoder/DecoderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/DecoderType;->DC_READER_BC:Lcom/cipherlab/barcode/decoder/DecoderType;

    new-instance v0, Lcom/cipherlab/barcode/decoder/DecoderType;

    const/4 v2, 0x1

    const-string v3, "DC_READER_RFID"

    invoke-direct {v0, v3, v2}, Lcom/cipherlab/barcode/decoder/DecoderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/DecoderType;->DC_READER_RFID:Lcom/cipherlab/barcode/decoder/DecoderType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/cipherlab/barcode/decoder/DecoderType;

    .line 3
    sget-object v4, Lcom/cipherlab/barcode/decoder/DecoderType;->DC_READER_BC:Lcom/cipherlab/barcode/decoder/DecoderType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/cipherlab/barcode/decoder/DecoderType;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/DecoderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/barcode/decoder/DecoderType;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/barcode/decoder/DecoderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/barcode/decoder/DecoderType;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/barcode/decoder/DecoderType;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/barcode/decoder/DecoderType;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/DecoderType;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/barcode/decoder/DecoderType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
