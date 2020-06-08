.class Lcom/cipherlab/rfidapi/RfidManagerAPI$RfidReadyRunnable;
.super Ljava/lang/Object;
.source "RfidManagerAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cipherlab/rfidapi/RfidManagerAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RfidReadyRunnable"
.end annotation


# instance fields
.field private isRunning:Z

.field final synthetic this$0:Lcom/cipherlab/rfidapi/RfidManagerAPI;


# direct methods
.method private constructor <init>(Lcom/cipherlab/rfidapi/RfidManagerAPI;)V
    .registers 2

    .line 1273
    iput-object p1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI$RfidReadyRunnable;->this$0:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 1275
    iput-boolean p1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI$RfidReadyRunnable;->isRunning:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/cipherlab/rfidapi/RfidManagerAPI;Lcom/cipherlab/rfidapi/RfidManagerAPI$RfidReadyRunnable;)V
    .registers 3

    .line 1273
    invoke-direct {p0, p1}, Lcom/cipherlab/rfidapi/RfidManagerAPI$RfidReadyRunnable;-><init>(Lcom/cipherlab/rfidapi/RfidManagerAPI;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1280
    :goto_0
    iget-boolean v0, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI$RfidReadyRunnable;->isRunning:Z

    if-nez v0, :cond_5

    return-void

    .line 1282
    :cond_5
    iget-object v0, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI$RfidReadyRunnable;->this$0:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    iget-object v0, v0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mRfidReadySemaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 1285
    :try_start_a
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI$RfidReadyRunnable;->this$0:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    iget-object v1, v1, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mRfidReadySemaphore:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_11} :catch_15
    .catchall {:try_start_a .. :try_end_11} :catchall_12

    goto :goto_19

    :catchall_12
    move-exception v1

    goto/16 :goto_b5

    :catch_15
    move-exception v1

    .line 1288
    :try_start_16
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1291
    :goto_19
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI$RfidReadyRunnable;->this$0:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    iget-object v1, v1, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    if-eqz v1, :cond_b2

    .line 1293
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI$RfidReadyRunnable;->this$0:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v1}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->GetServiceVersion()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :cond_28
    :goto_28
    if-eqz v2, :cond_2c

    goto/16 :goto_b2

    :cond_2c
    const-string v5, "RFID_Service"

    .line 1301
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[RfidReadyRunnable] sServiceVer.compareTo = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "1.0.10"

    invoke-virtual {v1, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "1.0.10"

    .line 1303
    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5
    :try_end_4b
    .catchall {:try_start_16 .. :try_end_4b} :catchall_12

    if-gez v5, :cond_4f

    const/4 v2, 0x1

    goto :goto_5c

    .line 1310
    :cond_4f
    :try_start_4f
    iget-object v5, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI$RfidReadyRunnable;->this$0:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    iget-object v5, v5, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v5}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->DetectRfidReady()Z

    move-result v2
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_57} :catch_58
    .catchall {:try_start_4f .. :try_end_57} :catchall_12

    goto :goto_5c

    :catch_58
    move-exception v5

    .line 1312
    :try_start_59
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_5c
    if-eqz v2, :cond_a0

    const-string v5, "RFID_Service"

    const-string v6, "[RfidReadyRunnable] Broadcast Intent_RFIDSERVICE_CONNECTED"

    .line 1318
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "RFID_Service"

    .line 1319
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[RfidReadyRunnable] Package Name = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->access$0()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.cipherlab.rfidservice.SERVICE_CONNECTED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x4

    .line 1322
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v6, "PackageName"

    .line 1323
    invoke-static {}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->access$0()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1324
    invoke-static {}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->access$0()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_9f
    .catchall {:try_start_59 .. :try_end_9f} :catchall_12

    goto :goto_aa

    :cond_a0
    const-wide/16 v5, 0x1f4

    .line 1329
    :try_start_a2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a5
    .catch Ljava/lang/InterruptedException; {:try_start_a2 .. :try_end_a5} :catch_a6
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_12

    goto :goto_aa

    :catch_a6
    move-exception v5

    .line 1332
    :try_start_a7
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_aa
    add-int/2addr v4, v3

    const/16 v5, 0xa

    if-ne v4, v5, :cond_28

    const/4 v2, 0x1

    goto/16 :goto_28

    .line 1282
    :cond_b2
    :goto_b2
    monitor-exit v0

    goto/16 :goto_0

    :goto_b5
    monitor-exit v0
    :try_end_b6
    .catchall {:try_start_a7 .. :try_end_b6} :catchall_12

    goto :goto_b8

    :goto_b7
    throw v1

    :goto_b8
    goto :goto_b7
.end method

.method public stopThread()V
    .registers 3

    const-string v0, "RFID_Service"

    const-string v1, "[RfidReadyRunnable] Somebody stop Continuous thread!!"

    .line 1348
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1349
    iput-boolean v0, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI$RfidReadyRunnable;->isRunning:Z

    return-void
.end method
