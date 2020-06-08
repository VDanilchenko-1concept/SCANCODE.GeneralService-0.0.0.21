.class public final Lcom/honeywell/aidc/AidcManager;
.super Ljava/lang/Object;
.source "AidcManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/honeywell/aidc/AidcManager$BarcodeDeviceListener;,
        Lcom/honeywell/aidc/AidcManager$CreatedCallback;
    }
.end annotation


# static fields
.field public static final BARCODE_DEVICE_CONNECTED:I = 0x1

.field public static final BARCODE_DEVICE_DISCONNECTED:I

.field private static sListenerCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/honeywell/IExecutor;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Lcom/honeywell/IExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/honeywell/aidc/AidcManager;->sListeners:Ljava/util/Map;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/honeywell/aidc/AidcManager;->sListenerCounts:Ljava/util/Map;

    .line 102
    sget-object v0, Lcom/honeywell/aidc/AidcManager;->sListeners:Ljava/util/Map;

    const-class v1, Lcom/honeywell/aidc/AidcManager$BarcodeDeviceListener;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/honeywell/aidc/AidcManager;->sListenerCounts:Ljava/util/Map;

    const-class v1, Lcom/honeywell/aidc/AidcManager$BarcodeDeviceListener;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/ServiceConnection;Lcom/honeywell/IExecutor;)V
    .registers 5

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Enter AidcManager constructor"

    .line 276
    invoke-static {v0}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    .line 277
    iput-object p1, p0, Lcom/honeywell/aidc/AidcManager;->mContext:Landroid/content/Context;

    .line 278
    iput-object p2, p0, Lcom/honeywell/aidc/AidcManager;->mConnection:Landroid/content/ServiceConnection;

    .line 279
    iput-object p3, p0, Lcom/honeywell/aidc/AidcManager;->mService:Lcom/honeywell/IExecutor;

    const-string p1, "Exit AidcManager constructor"

    .line 280
    invoke-static {p1}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private addListener(Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 166
    sget-object v0, Lcom/honeywell/aidc/AidcManager;->sListeners:Ljava/util/Map;

    monitor-enter v0

    .line 167
    :try_start_3
    sget-object v1, Lcom/honeywell/aidc/AidcManager;->sListeners:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 169
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/honeywell/IExecutor;

    if-nez v1, :cond_1f

    .line 171
    new-instance v2, Lcom/honeywell/aidc/AidcManager$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/honeywell/aidc/AidcManager$1;-><init>(Lcom/honeywell/aidc/AidcManager;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 190
    invoke-direct {p0, p2, p1, v2}, Lcom/honeywell/aidc/AidcManager;->incrementListeners(Ljava/lang/Class;Ljava/lang/Object;Lcom/honeywell/IExecutor;)V

    goto :goto_23

    .line 192
    :cond_1f
    invoke-direct {p0, p2, p1, v2}, Lcom/honeywell/aidc/AidcManager;->incrementListeners(Ljava/lang/Class;Ljava/lang/Object;Lcom/honeywell/IExecutor;)V

    move-object v2, v1

    .line 195
    :cond_23
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_39

    const-string p1, "internal.addListener"

    .line 197
    invoke-static {p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->build(Ljava/lang/String;)Lcom/honeywell/Message;

    move-result-object p1

    .line 198
    iget-object p2, p1, Lcom/honeywell/Message;->extras:Ljava/util/Map;

    const-string v0, "listener"

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-virtual {p0, p1}, Lcom/honeywell/aidc/AidcManager;->execute(Lcom/honeywell/Message;)Lcom/honeywell/Message;

    move-result-object p1

    .line 200
    invoke-static {p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkRuntimeError(Lcom/honeywell/Message;)V

    return-void

    :catchall_39
    move-exception p1

    .line 195
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public static create(Landroid/content/Context;Lcom/honeywell/aidc/AidcManager$CreatedCallback;)V
    .registers 6

    const-string v0, "Enter AidcManager.create()"

    .line 245
    invoke-static {v0}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    if-eqz p0, :cond_30

    if-eqz p1, :cond_30

    .line 251
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 252
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.honeywell.decode.DecodeService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.intermec.datacollectionservice"

    const-string v3, "com.intermec.datacollectionservice.DataCollectionService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/honeywell/aidc/AidcManager$2;

    invoke-direct {v1, p0, p1}, Lcom/honeywell/aidc/AidcManager$2;-><init>(Landroid/content/Context;Lcom/honeywell/aidc/AidcManager$CreatedCallback;)V

    const/4 p1, 0x1

    .line 252
    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const-string p0, "Exit AidcManager constructor"

    .line 272
    invoke-static {p0}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    return-void

    .line 248
    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The parameters cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private decrementListeners(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 502
    sget-object v0, Lcom/honeywell/aidc/AidcManager;->sListenerCounts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_30

    .line 504
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_28

    .line 506
    sget-object v1, Lcom/honeywell/aidc/AidcManager;->sListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_30

    .line 508
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    :cond_28
    sub-int/2addr v1, v2

    .line 512
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    :goto_30
    return-void
.end method

.method private incrementListeners(Ljava/lang/Class;Ljava/lang/Object;Lcom/honeywell/IExecutor;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Lcom/honeywell/IExecutor;",
            ")V"
        }
    .end annotation

    .line 486
    sget-object v0, Lcom/honeywell/aidc/AidcManager;->sListenerCounts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_34

    const/4 v1, 0x1

    if-eqz p3, :cond_22

    .line 489
    sget-object v2, Lcom/honeywell/aidc/AidcManager;->sListeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_34

    .line 491
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 495
    :cond_22
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 496
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    :goto_34
    return-void
.end method

.method private removeListener(Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 215
    sget-object v0, Lcom/honeywell/aidc/AidcManager;->sListeners:Ljava/util/Map;

    monitor-enter v0

    .line 216
    :try_start_3
    sget-object v1, Lcom/honeywell/aidc/AidcManager;->sListeners:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/honeywell/IExecutor;

    if-nez v1, :cond_15

    .line 218
    monitor-exit v0

    return-void

    .line 220
    :cond_15
    invoke-direct {p0, p2, p1}, Lcom/honeywell/aidc/AidcManager;->decrementListeners(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 221
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2e

    const-string p1, "internal.removeListener"

    .line 222
    invoke-static {p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->build(Ljava/lang/String;)Lcom/honeywell/Message;

    move-result-object p1

    .line 223
    iget-object p2, p1, Lcom/honeywell/Message;->extras:Ljava/util/Map;

    const-string v0, "listener"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-virtual {p0, p1}, Lcom/honeywell/aidc/AidcManager;->execute(Lcom/honeywell/Message;)Lcom/honeywell/Message;

    move-result-object p1

    .line 225
    invoke-static {p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkRuntimeError(Lcom/honeywell/Message;)V

    return-void

    :catchall_2e
    move-exception p1

    .line 221
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p1
.end method


# virtual methods
.method public addBarcodeDeviceListener(Lcom/honeywell/aidc/AidcManager$BarcodeDeviceListener;)V
    .registers 3

    .line 152
    const-class v0, Lcom/honeywell/aidc/AidcManager$BarcodeDeviceListener;

    invoke-direct {p0, p1, v0}, Lcom/honeywell/aidc/AidcManager;->addListener(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public close()V
    .registers 3

    const-string v0, "Enter AidcManager.close()"

    .line 397
    invoke-static {v0}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/honeywell/aidc/AidcManager;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_11

    .line 400
    iget-object v1, p0, Lcom/honeywell/aidc/AidcManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 401
    iput-object v0, p0, Lcom/honeywell/aidc/AidcManager;->mConnection:Landroid/content/ServiceConnection;

    :cond_11
    const-string v0, "Exit AidcManager.close()"

    .line 404
    invoke-static {v0}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public createBarcodeReader()Lcom/honeywell/aidc/BarcodeReader;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/honeywell/aidc/InvalidScannerNameException;
        }
    .end annotation

    .line 419
    invoke-virtual {p0}, Lcom/honeywell/aidc/AidcManager;->listConnectedBarcodeDevices()Ljava/util/List;

    move-result-object v0

    .line 421
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_3c

    .line 424
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/honeywell/aidc/BarcodeReaderInfo;

    invoke-virtual {v3}, Lcom/honeywell/aidc/BarcodeReaderInfo;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dcs.scanner.imager"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 426
    invoke-virtual {p0, v4}, Lcom/honeywell/aidc/AidcManager;->createBarcodeReader(Ljava/lang/String;)Lcom/honeywell/aidc/BarcodeReader;

    move-result-object v0

    return-object v0

    .line 428
    :cond_22
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/honeywell/aidc/BarcodeReaderInfo;

    invoke-virtual {v3}, Lcom/honeywell/aidc/BarcodeReaderInfo;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dcs.scanner.serial1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 430
    invoke-virtual {p0, v4}, Lcom/honeywell/aidc/AidcManager;->createBarcodeReader(Ljava/lang/String;)Lcom/honeywell/aidc/BarcodeReader;

    move-result-object v0

    return-object v0

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_3c
    const/4 v0, 0x0

    return-object v0
.end method

.method public createBarcodeReader(Ljava/lang/String;)Lcom/honeywell/aidc/BarcodeReader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/honeywell/aidc/InvalidScannerNameException;
        }
    .end annotation

    const-string v0, "scanner.connect"

    const-string v1, "scanner"

    .line 449
    invoke-static {v0, v1, p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/honeywell/Message;

    move-result-object p1

    .line 450
    invoke-virtual {p0, p1}, Lcom/honeywell/aidc/AidcManager;->execute(Lcom/honeywell/Message;)Lcom/honeywell/Message;

    move-result-object p1

    .line 451
    invoke-static {p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkRuntimeAndScannerExceptions(Lcom/honeywell/Message;)V

    .line 452
    iget-object p1, p1, Lcom/honeywell/Message;->extras:Ljava/util/Map;

    const-string v0, "session"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    invoke-static {p1}, Lcom/honeywell/IExecutor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/honeywell/IExecutor;

    move-result-object p1

    .line 453
    new-instance v0, Lcom/honeywell/aidc/BarcodeReader;

    invoke-direct {v0, p1}, Lcom/honeywell/aidc/BarcodeReader;-><init>(Lcom/honeywell/IExecutor;)V

    return-object v0
.end method

.method public execute(Lcom/honeywell/Message;)Lcom/honeywell/Message;
    .registers 4

    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/honeywell/aidc/AidcManager;->mService:Lcom/honeywell/IExecutor;

    invoke-interface {v0, p1}, Lcom/honeywell/IExecutor;->execute(Lcom/honeywell/Message;)Lcom/honeywell/Message;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    move-exception p1

    .line 460
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to execute request"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 285
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 286
    invoke-virtual {p0}, Lcom/honeywell/aidc/AidcManager;->close()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 465
    iget-object v0, p0, Lcom/honeywell/aidc/AidcManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public listBarcodeDevices()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/honeywell/aidc/BarcodeReaderInfo;",
            ">;"
        }
    .end annotation

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    const-string v1, "scanner.listScanners"

    .line 315
    invoke-static {v1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->build(Ljava/lang/String;)Lcom/honeywell/Message;

    move-result-object v1

    .line 316
    invoke-virtual {p0, v1}, Lcom/honeywell/aidc/AidcManager;->execute(Lcom/honeywell/Message;)Lcom/honeywell/Message;

    move-result-object v1
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_f} :catch_62

    .line 318
    :try_start_f
    invoke-static {v1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkRuntimeError(Lcom/honeywell/Message;)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_12} :catch_3b
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_12} :catch_62

    .line 332
    :try_start_12
    new-instance v2, Lorg/json/JSONObject;

    iget-object v1, v1, Lcom/honeywell/Message;->action:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    .line 333
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "scanners"

    .line 334
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 335
    :goto_26
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 336
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 337
    invoke-static {v3}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->buildBarcodeReaderInfo(Lorg/json/JSONObject;)Lcom/honeywell/aidc/BarcodeReaderInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_3a
    return-object v0

    :catch_3b
    move-exception v0

    .line 320
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Method not found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4f

    const-string v0, "This method is not supported for the installed DCS version."

    .line 321
    invoke-static {v0}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    return-object v2

    .line 323
    :cond_4f
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Action is null"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_61

    const-string v0, "Message action is null."

    .line 324
    invoke-static {v0}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    return-object v2

    .line 328
    :cond_61
    throw v0
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_62} :catch_62

    :catch_62
    move-exception v0

    .line 340
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occurred while communicating with the scanner service."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6c

    :goto_6b
    throw v1

    :goto_6c
    goto :goto_6b
.end method

.method public listConnectedBarcodeDevices()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/honeywell/aidc/BarcodeReaderInfo;",
            ">;"
        }
    .end annotation

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    const-string v1, "scanner.listConnectedScanners"

    .line 364
    invoke-static {v1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->build(Ljava/lang/String;)Lcom/honeywell/Message;

    move-result-object v1

    .line 365
    invoke-virtual {p0, v1}, Lcom/honeywell/aidc/AidcManager;->execute(Lcom/honeywell/Message;)Lcom/honeywell/Message;

    move-result-object v1
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_f} :catch_50

    .line 367
    :try_start_f
    invoke-static {v1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkRuntimeError(Lcom/honeywell/Message;)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_12} :catch_3b
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_12} :catch_50

    .line 377
    :try_start_12
    new-instance v2, Lorg/json/JSONObject;

    iget-object v1, v1, Lcom/honeywell/Message;->action:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    .line 378
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "scanners"

    .line 379
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 380
    :goto_26
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 381
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 382
    invoke-static {v3}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->buildBarcodeReaderInfo(Lorg/json/JSONObject;)Lcom/honeywell/aidc/BarcodeReaderInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_3a
    return-object v0

    :catch_3b
    move-exception v0

    .line 369
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Method not found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4f

    const-string v0, "This method is not supported for the installed DCS version."

    .line 370
    invoke-static {v0}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 373
    :cond_4f
    throw v0
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_50} :catch_50

    :catch_50
    move-exception v0

    .line 385
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occurred while communicating with the scanner service."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5a

    :goto_59
    throw v1

    :goto_5a
    goto :goto_59
.end method

.method public removeBarcodeDeviceListener(Lcom/honeywell/aidc/AidcManager$BarcodeDeviceListener;)V
    .registers 3

    .line 210
    const-class v0, Lcom/honeywell/aidc/AidcManager$BarcodeDeviceListener;

    invoke-direct {p0, p1, v0}, Lcom/honeywell/aidc/AidcManager;->removeListener(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
