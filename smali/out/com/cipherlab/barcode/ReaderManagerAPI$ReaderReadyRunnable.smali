.class Lcom/cipherlab/barcode/ReaderManagerAPI$ReaderReadyRunnable;
.super Ljava/lang/Object;
.source "ReaderManagerAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cipherlab/barcode/ReaderManagerAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReaderReadyRunnable"
.end annotation


# instance fields
.field private isRunning:Z

.field final synthetic this$0:Lcom/cipherlab/barcode/ReaderManagerAPI;


# direct methods
.method private constructor <init>(Lcom/cipherlab/barcode/ReaderManagerAPI;)V
    .registers 2

    .line 1645
    iput-object p1, p0, Lcom/cipherlab/barcode/ReaderManagerAPI$ReaderReadyRunnable;->this$0:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 1647
    iput-boolean p1, p0, Lcom/cipherlab/barcode/ReaderManagerAPI$ReaderReadyRunnable;->isRunning:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/cipherlab/barcode/ReaderManagerAPI;Lcom/cipherlab/barcode/ReaderManagerAPI$ReaderReadyRunnable;)V
    .registers 3

    .line 1645
    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI$ReaderReadyRunnable;-><init>(Lcom/cipherlab/barcode/ReaderManagerAPI;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1652
    :goto_0
    iget-boolean v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI$ReaderReadyRunnable;->isRunning:Z

    if-nez v0, :cond_5

    return-void

    .line 1654
    :cond_5
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI$ReaderReadyRunnable;->this$0:Lcom/cipherlab/barcode/ReaderManagerAPI;

    iget-object v0, v0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mReaderReadySemaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 1657
    :try_start_a
    iget-object v1, p0, Lcom/cipherlab/barcode/ReaderManagerAPI$ReaderReadyRunnable;->this$0:Lcom/cipherlab/barcode/ReaderManagerAPI;

    iget-object v1, v1, Lcom/cipherlab/barcode/ReaderManagerAPI;->mReaderReadySemaphore:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_11} :catch_15
    .catchall {:try_start_a .. :try_end_11} :catchall_12

    goto :goto_19

    :catchall_12
    move-exception v1

    goto/16 :goto_ad

    :catch_15
    move-exception v1

    .line 1660
    :try_start_16
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1663
    :goto_19
    iget-object v1, p0, Lcom/cipherlab/barcode/ReaderManagerAPI$ReaderReadyRunnable;->this$0:Lcom/cipherlab/barcode/ReaderManagerAPI;

    iget-object v1, v1, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    if-eqz v1, :cond_aa

    .line 1665
    iget-object v1, p0, Lcom/cipherlab/barcode/ReaderManagerAPI$ReaderReadyRunnable;->this$0:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetBarcodeServiceVer()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_26
    if-eqz v2, :cond_2a

    goto/16 :goto_aa

    :cond_2a
    const-string v3, "ReaderManager"

    .line 1672
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ReaderReadyRunnable] sServiceVer.compareTo = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "1.2.86"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "1.2.86"

    .line 1674
    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3
    :try_end_49
    .catchall {:try_start_16 .. :try_end_49} :catchall_12

    if-gez v3, :cond_4d

    const/4 v2, 0x1

    goto :goto_5a

    .line 1681
    :cond_4d
    :try_start_4d
    iget-object v3, p0, Lcom/cipherlab/barcode/ReaderManagerAPI$ReaderReadyRunnable;->this$0:Lcom/cipherlab/barcode/ReaderManagerAPI;

    iget-object v3, v3, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->DetectReaderReady()Z

    move-result v2
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_55} :catch_56
    .catchall {:try_start_4d .. :try_end_55} :catchall_12

    goto :goto_5a

    :catch_56
    move-exception v3

    .line 1683
    :try_start_57
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_5a
    if-eqz v2, :cond_9e

    const-string v3, "ReaderManager"

    const-string v4, "[ReaderReadyRunnable] Broadcast Intent_READERSERVICE_CONNECTED"

    .line 1689
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ReaderManager"

    .line 1690
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ReaderReadyRunnable] Package Name = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cipherlab/barcode/ReaderManagerAPI;->access$0()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.cipherlab.barcodebaseapi.SERVICE_CONNECTED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x4

    .line 1693
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "PackageName"

    .line 1694
    invoke-static {}, Lcom/cipherlab/barcode/ReaderManagerAPI;->access$0()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1695
    invoke-static {}, Lcom/cipherlab/barcode/ReaderManagerAPI;->access$0()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_9d
    .catchall {:try_start_57 .. :try_end_9d} :catchall_12

    goto :goto_26

    :cond_9e
    const-wide/16 v3, 0x1f4

    .line 1700
    :try_start_a0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a3
    .catch Ljava/lang/InterruptedException; {:try_start_a0 .. :try_end_a3} :catch_a4
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_12

    goto :goto_26

    :catch_a4
    move-exception v3

    .line 1703
    :try_start_a5
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_26

    .line 1654
    :cond_aa
    :goto_aa
    monitor-exit v0

    goto/16 :goto_0

    :goto_ad
    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_a5 .. :try_end_ae} :catchall_12

    goto :goto_b0

    :goto_af
    throw v1

    :goto_b0
    goto :goto_af
.end method

.method public stopThread()V
    .registers 3

    const-string v0, "ReaderManager"

    const-string v1, "[ReaderReadyRunnable] Somebody stop Continuous thread!!"

    .line 1714
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1715
    iput-boolean v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI$ReaderReadyRunnable;->isRunning:Z

    return-void
.end method
