.class Lcom/cipherlab/rfidapi/RfidManagerAPI$1;
.super Ljava/lang/Object;
.source "RfidManagerAPI.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cipherlab/rfidapi/RfidManagerAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cipherlab/rfidapi/RfidManagerAPI;


# direct methods
.method constructor <init>(Lcom/cipherlab/rfidapi/RfidManagerAPI;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI$1;->this$0:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    .line 1243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 1253
    iget-object p1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI$1;->this$0:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-static {p2}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    move-result-object p2

    iput-object p2, p1, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    .line 1255
    iget-object p1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI$1;->this$0:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/cipherlab/rfidapi/RfidManagerAPI;->bindServiceFlag:Z

    .line 1260
    iget-object p1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI$1;->this$0:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {p1}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->Intent_RfidService_Connected()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
