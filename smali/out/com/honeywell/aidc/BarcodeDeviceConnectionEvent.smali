.class public final Lcom/honeywell/aidc/BarcodeDeviceConnectionEvent;
.super Ljava/util/EventObject;
.source "BarcodeDeviceConnectionEvent.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mBarcodeDevice:Lcom/honeywell/aidc/BarcodeReaderInfo;

.field private mStatus:I


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/honeywell/aidc/BarcodeReaderInfo;I)V
    .registers 4

    .line 32
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 33
    iput-object p2, p0, Lcom/honeywell/aidc/BarcodeDeviceConnectionEvent;->mBarcodeDevice:Lcom/honeywell/aidc/BarcodeReaderInfo;

    .line 34
    iput p3, p0, Lcom/honeywell/aidc/BarcodeDeviceConnectionEvent;->mStatus:I

    return-void
.end method


# virtual methods
.method public getBarcodeReaderInfo()Lcom/honeywell/aidc/BarcodeReaderInfo;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/honeywell/aidc/BarcodeDeviceConnectionEvent;->mBarcodeDevice:Lcom/honeywell/aidc/BarcodeReaderInfo;

    return-object v0
.end method

.method public getConnectionStatus()I
    .registers 2

    .line 54
    iget v0, p0, Lcom/honeywell/aidc/BarcodeDeviceConnectionEvent;->mStatus:I

    return v0
.end method
