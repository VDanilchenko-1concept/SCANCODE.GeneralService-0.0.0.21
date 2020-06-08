.class public Lcom/cipherlab/barcode/decoderparams/ReaderServiceMisc;
.super Ljava/lang/Object;
.source "ReaderServiceMisc.java"


# instance fields
.field public bForceStopService:Z

.field public bServiceActive:Z

.field public bcReaderType:Lcom/cipherlab/barcode/decoder/BcReaderType;

.field public iDebugLevel:I

.field public sVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderServiceMisc;->bServiceActive:Z

    .line 9
    sget-object v0, Lcom/cipherlab/barcode/decoder/BcReaderType;->None:Lcom/cipherlab/barcode/decoder/BcReaderType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderServiceMisc;->bcReaderType:Lcom/cipherlab/barcode/decoder/BcReaderType;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderServiceMisc;->bForceStopService:Z

    const/4 v0, 0x3

    .line 11
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderServiceMisc;->iDebugLevel:I

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderServiceMisc;->sVersion:Ljava/lang/String;

    return-void
.end method
