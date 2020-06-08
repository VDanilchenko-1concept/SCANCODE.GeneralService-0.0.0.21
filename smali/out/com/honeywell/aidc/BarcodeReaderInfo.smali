.class public final Lcom/honeywell/aidc/BarcodeReaderInfo;
.super Ljava/lang/Object;
.source "BarcodeReaderInfo.java"


# instance fields
.field private mControlLogicVersion:Ljava/lang/String;

.field private mFastDecoderVersion:Ljava/lang/String;

.field private mFrameHeight:I

.field private mFrameWidth:I

.field private mFriendlyName:Ljava/lang/String;

.field private mFullDecoderVersion:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mScanEngineFirmwareVersion:Ljava/lang/String;

.field private mScanEngineId:Ljava/lang/String;

.field private mScanEngineSerialNumber:Ljava/lang/String;

.field private mScanEngineVersionNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/honeywell/aidc/BarcodeReaderInfo;->mName:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/honeywell/aidc/BarcodeReaderInfo;->mFriendlyName:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/honeywell/aidc/BarcodeReaderInfo;->mScanEngineId:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/honeywell/aidc/BarcodeReaderInfo;->mFullDecoderVersion:Ljava/lang/String;

    .line 67
    iput-object p5, p0, Lcom/honeywell/aidc/BarcodeReaderInfo;->mFastDecoderVersion:Ljava/lang/String;

    .line 68
    iput-object p6, p0, Lcom/honeywell/aidc/BarcodeReaderInfo;->mControlLogicVersion:Ljava/lang/String;

    .line 69
    iput-object p7, p0, Lcom/honeywell/aidc/BarcodeReaderInfo;->mScanEngineVersionNumber:Ljava/lang/String;

    .line 70
    iput p8, p0, Lcom/honeywell/aidc/BarcodeReaderInfo;->mFrameHeight:I

    .line 71
    iput p9, p0, Lcom/honeywell/aidc/BarcodeReaderInfo;->mFrameWidth:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 23

    move-object v10, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p10

    move/from16 v9, p11

    .line 42
    invoke-direct/range {v0 .. v9}, Lcom/honeywell/aidc/BarcodeReaderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v0, p8

    .line 43
    iput-object v0, v10, Lcom/honeywell/aidc/BarcodeReaderInfo;->mScanEngineFirmwareVersion:Ljava/lang/String;

    move-object/from16 v0, p9

    .line 44
    iput-object v0, v10, Lcom/honeywell/aidc/BarcodeReaderInfo;->mScanEngineSerialNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getControlLogicVersion()Ljava/lang/String;
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/honeywell/aidc/BarcodeReaderInfo;->mControlLogicVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getFastDecodeVersion()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/honeywell/aidc/BarcodeReaderInfo;->mFastDecoderVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameHeight()I
    .registers 2

    .line 171
    iget v0, p0, Lcom/honeywell/aidc/BarcodeReaderInfo;->mFrameHeight:I

    return v0
.end method

.method public getFrameWidth()I
    .registers 2

    .line 180
    iget v0, p0, Lcom/honeywell/aidc/BarcodeReaderInfo;->mFrameWidth:I

    return v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/honeywell/aidc/BarcodeReaderInfo;->mFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getFullDecodeVersion()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/honeywell/aidc/BarcodeReaderInfo;->mFullDecoderVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/honeywell/aidc/BarcodeReaderInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getScannerFirmwareVersion()Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/honeywell/aidc/BarcodeReaderInfo;->mScanEngineFirmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getScannerId()Ljava/lang/String;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/honeywell/aidc/BarcodeReaderInfo;->mScanEngineId:Ljava/lang/String;

    return-object v0
.end method

.method public getScannerSerialNumber()Ljava/lang/String;
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/honeywell/aidc/BarcodeReaderInfo;->mScanEngineSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getScannerVersionNumber()Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/honeywell/aidc/BarcodeReaderInfo;->mScanEngineVersionNumber:Ljava/lang/String;

    return-object v0
.end method
