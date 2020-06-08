.class public Lcom/cipherlab/barcodebase/ReaderDataStruct;
.super Ljava/lang/Object;
.source "ReaderDataStruct.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private codeDataArray:[B

.field private codeDataStr:Ljava/lang/String;

.field private codeType:Lcom/cipherlab/barcode/decoder/BcDecodeType;

.field private codeTypeStr:Ljava/lang/String;

.field private iDataLen:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/cipherlab/barcode/decoder/BcDecodeType;->Unknown:Lcom/cipherlab/barcode/decoder/BcDecodeType;

    iput-object v0, p0, Lcom/cipherlab/barcodebase/ReaderDataStruct;->codeType:Lcom/cipherlab/barcode/decoder/BcDecodeType;

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcom/cipherlab/barcodebase/ReaderDataStruct;->codeTypeStr:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/cipherlab/barcodebase/ReaderDataStruct;->codeDataStr:Ljava/lang/String;

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/cipherlab/barcodebase/ReaderDataStruct;->iDataLen:I

    return-void
.end method


# virtual methods
.method public Clear()V
    .registers 2

    .line 44
    sget-object v0, Lcom/cipherlab/barcode/decoder/BcDecodeType;->Unknown:Lcom/cipherlab/barcode/decoder/BcDecodeType;

    iput-object v0, p0, Lcom/cipherlab/barcodebase/ReaderDataStruct;->codeType:Lcom/cipherlab/barcode/decoder/BcDecodeType;

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lcom/cipherlab/barcodebase/ReaderDataStruct;->codeTypeStr:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/cipherlab/barcodebase/ReaderDataStruct;->codeDataStr:Ljava/lang/String;

    return-void
.end method

.method public GetCodeDataLen()I
    .registers 2

    .line 50
    iget v0, p0, Lcom/cipherlab/barcodebase/ReaderDataStruct;->iDataLen:I

    return v0
.end method

.method public GetCodeDataStr()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/cipherlab/barcodebase/ReaderDataStruct;->codeDataStr:Ljava/lang/String;

    return-object v0
.end method

.method public GetCodeType()Lcom/cipherlab/barcode/decoder/BcDecodeType;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/cipherlab/barcodebase/ReaderDataStruct;->codeType:Lcom/cipherlab/barcode/decoder/BcDecodeType;

    return-object v0
.end method

.method public GetCodeTypeStr()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/cipherlab/barcodebase/ReaderDataStruct;->codeTypeStr:Ljava/lang/String;

    return-object v0
.end method

.method public SetCodeDataLen(I)V
    .registers 2

    .line 54
    iput p1, p0, Lcom/cipherlab/barcodebase/ReaderDataStruct;->iDataLen:I

    return-void
.end method

.method public SetCodeDataStr(Ljava/lang/String;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/cipherlab/barcodebase/ReaderDataStruct;->codeDataStr:Ljava/lang/String;

    return-void
.end method

.method public SetCodeType(Lcom/cipherlab/barcode/decoder/BcDecodeType;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/cipherlab/barcodebase/ReaderDataStruct;->codeType:Lcom/cipherlab/barcode/decoder/BcDecodeType;

    return-void
.end method

.method public SetCodeTypeStr(Ljava/lang/String;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/cipherlab/barcodebase/ReaderDataStruct;->codeTypeStr:Ljava/lang/String;

    return-void
.end method

.method public getCodeDataArray()[B
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/cipherlab/barcodebase/ReaderDataStruct;->codeDataArray:[B

    return-object v0
.end method

.method public setCodeDataArray([B)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/cipherlab/barcodebase/ReaderDataStruct;->codeDataArray:[B

    return-void
.end method
