.class Lcom/cipherlab/barcode/ReaderManagerAPI$1;
.super Landroid/content/BroadcastReceiver;
.source "ReaderManagerAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cipherlab/barcode/ReaderManagerAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 149
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 154
    sget-object p1, Lcom/cipherlab/barcode/ReaderManagerAPI;->mReaderCallback:Lcom/cipherlab/barcodebase/ReaderCallback;

    if-eqz p1, :cond_20

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sw.reader.barcodebaseapi.CALLBACK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    const-string p1, "Decoder_Data"

    .line 156
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 159
    :try_start_16
    sget-object p2, Lcom/cipherlab/barcode/ReaderManagerAPI;->mReaderCallback:Lcom/cipherlab/barcodebase/ReaderCallback;

    invoke-interface {p2, p1}, Lcom/cipherlab/barcodebase/ReaderCallback;->onDecodeComplete(Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception p1

    .line 162
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_20
    :goto_20
    return-void
.end method
