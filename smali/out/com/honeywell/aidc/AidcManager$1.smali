.class Lcom/honeywell/aidc/AidcManager$1;
.super Lcom/honeywell/IExecutor$Stub;
.source "AidcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/honeywell/aidc/AidcManager;->addListener(Ljava/lang/Object;Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/honeywell/aidc/AidcManager;

.field final synthetic val$listener:Ljava/lang/Object;

.field final synthetic val$listenerClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/honeywell/aidc/AidcManager;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 4

    .line 171
    iput-object p1, p0, Lcom/honeywell/aidc/AidcManager$1;->this$0:Lcom/honeywell/aidc/AidcManager;

    iput-object p2, p0, Lcom/honeywell/aidc/AidcManager$1;->val$listenerClass:Ljava/lang/Class;

    iput-object p3, p0, Lcom/honeywell/aidc/AidcManager$1;->val$listener:Ljava/lang/Object;

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

    .line 181
    iget-object v0, p0, Lcom/honeywell/aidc/AidcManager$1;->this$0:Lcom/honeywell/aidc/AidcManager;

    invoke-static {v0, p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->getEvent(Ljava/lang/Object;Lcom/honeywell/Message;)Ljava/util/EventObject;

    move-result-object p1

    .line 182
    instance-of v0, p1, Lcom/honeywell/aidc/BarcodeDeviceConnectionEvent;

    if-eqz v0, :cond_1d

    const-class v0, Lcom/honeywell/aidc/AidcManager$BarcodeDeviceListener;

    iget-object v1, p0, Lcom/honeywell/aidc/AidcManager$1;->val$listenerClass:Ljava/lang/Class;

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 184
    iget-object v0, p0, Lcom/honeywell/aidc/AidcManager$1;->val$listener:Ljava/lang/Object;

    check-cast v0, Lcom/honeywell/aidc/AidcManager$BarcodeDeviceListener;

    check-cast p1, Lcom/honeywell/aidc/BarcodeDeviceConnectionEvent;

    .line 185
    invoke-interface {v0, p1}, Lcom/honeywell/aidc/AidcManager$BarcodeDeviceListener;->onBarcodeDeviceConnectionEvent(Lcom/honeywell/aidc/BarcodeDeviceConnectionEvent;)V

    :cond_1d
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

    .line 176
    invoke-virtual {p0, p1}, Lcom/honeywell/aidc/AidcManager$1;->execute(Lcom/honeywell/Message;)Lcom/honeywell/Message;

    return-void
.end method
