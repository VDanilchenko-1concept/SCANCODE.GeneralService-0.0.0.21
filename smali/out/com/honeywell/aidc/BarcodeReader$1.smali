.class Lcom/honeywell/aidc/BarcodeReader$1;
.super Lcom/honeywell/IExecutor$Stub;
.source "BarcodeReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/honeywell/aidc/BarcodeReader;->addListener(Ljava/lang/Object;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/honeywell/aidc/BarcodeReader;

.field final synthetic val$listener:Ljava/lang/Object;

.field final synthetic val$listenerClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/honeywell/aidc/BarcodeReader;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 4

    .line 2423
    iput-object p1, p0, Lcom/honeywell/aidc/BarcodeReader$1;->this$0:Lcom/honeywell/aidc/BarcodeReader;

    iput-object p2, p0, Lcom/honeywell/aidc/BarcodeReader$1;->val$listenerClass:Ljava/lang/Class;

    iput-object p3, p0, Lcom/honeywell/aidc/BarcodeReader$1;->val$listener:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/honeywell/IExecutor$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/honeywell/Message;)Lcom/honeywell/Message;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2433
    iget-object v0, p0, Lcom/honeywell/aidc/BarcodeReader$1;->this$0:Lcom/honeywell/aidc/BarcodeReader;

    invoke-static {v0, p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->getEvent(Ljava/lang/Object;Lcom/honeywell/Message;)Ljava/util/EventObject;

    move-result-object p1

    .line 2434
    instance-of v0, p1, Lcom/honeywell/aidc/BarcodeReadEvent;

    if-eqz v0, :cond_1e

    const-class v0, Lcom/honeywell/aidc/BarcodeReader$BarcodeListener;

    iget-object v1, p0, Lcom/honeywell/aidc/BarcodeReader$1;->val$listenerClass:Ljava/lang/Class;

    .line 2435
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2436
    iget-object v0, p0, Lcom/honeywell/aidc/BarcodeReader$1;->val$listener:Ljava/lang/Object;

    check-cast v0, Lcom/honeywell/aidc/BarcodeReader$BarcodeListener;

    check-cast p1, Lcom/honeywell/aidc/BarcodeReadEvent;

    .line 2437
    invoke-interface {v0, p1}, Lcom/honeywell/aidc/BarcodeReader$BarcodeListener;->onBarcodeEvent(Lcom/honeywell/aidc/BarcodeReadEvent;)V

    goto :goto_4d

    .line 2438
    :cond_1e
    instance-of v0, p1, Lcom/honeywell/aidc/BarcodeFailureEvent;

    if-eqz v0, :cond_36

    const-class v0, Lcom/honeywell/aidc/BarcodeReader$BarcodeListener;

    iget-object v1, p0, Lcom/honeywell/aidc/BarcodeReader$1;->val$listenerClass:Ljava/lang/Class;

    .line 2439
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2440
    iget-object v0, p0, Lcom/honeywell/aidc/BarcodeReader$1;->val$listener:Ljava/lang/Object;

    check-cast v0, Lcom/honeywell/aidc/BarcodeReader$BarcodeListener;

    check-cast p1, Lcom/honeywell/aidc/BarcodeFailureEvent;

    .line 2441
    invoke-interface {v0, p1}, Lcom/honeywell/aidc/BarcodeReader$BarcodeListener;->onFailureEvent(Lcom/honeywell/aidc/BarcodeFailureEvent;)V

    goto :goto_4d

    .line 2442
    :cond_36
    instance-of v0, p1, Lcom/honeywell/aidc/TriggerStateChangeEvent;

    if-eqz v0, :cond_4d

    const-class v0, Lcom/honeywell/aidc/BarcodeReader$TriggerListener;

    iget-object v1, p0, Lcom/honeywell/aidc/BarcodeReader$1;->val$listenerClass:Ljava/lang/Class;

    .line 2443
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 2444
    iget-object v0, p0, Lcom/honeywell/aidc/BarcodeReader$1;->val$listener:Ljava/lang/Object;

    check-cast v0, Lcom/honeywell/aidc/BarcodeReader$TriggerListener;

    check-cast p1, Lcom/honeywell/aidc/TriggerStateChangeEvent;

    .line 2445
    invoke-interface {v0, p1}, Lcom/honeywell/aidc/BarcodeReader$TriggerListener;->onTriggerEvent(Lcom/honeywell/aidc/TriggerStateChangeEvent;)V

    :cond_4d
    :goto_4d
    const/4 p1, 0x0

    return-object p1
.end method

.method public executeAsync(Lcom/honeywell/Message;Lcom/honeywell/IExecutor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2428
    invoke-virtual {p0, p1}, Lcom/honeywell/aidc/BarcodeReader$1;->execute(Lcom/honeywell/Message;)Lcom/honeywell/Message;

    return-void
.end method
