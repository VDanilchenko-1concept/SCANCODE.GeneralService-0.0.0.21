.class Lcom/cipherlab/barcode/ReaderManagerAPI$2;
.super Ljava/lang/Object;
.source "ReaderManagerAPI.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cipherlab/barcode/ReaderManagerAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cipherlab/barcode/ReaderManagerAPI;


# direct methods
.method constructor <init>(Lcom/cipherlab/barcode/ReaderManagerAPI;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/cipherlab/barcode/ReaderManagerAPI$2;->this$0:Lcom/cipherlab/barcode/ReaderManagerAPI;

    .line 1610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 1620
    iget-object p1, p0, Lcom/cipherlab/barcode/ReaderManagerAPI$2;->this$0:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-static {p2}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    move-result-object p2

    iput-object p2, p1, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    .line 1622
    iget-object p1, p0, Lcom/cipherlab/barcode/ReaderManagerAPI$2;->this$0:Lcom/cipherlab/barcode/ReaderManagerAPI;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/cipherlab/barcode/ReaderManagerAPI;->bindServiceFlag:Z

    .line 1630
    iget-object p1, p0, Lcom/cipherlab/barcode/ReaderManagerAPI$2;->this$0:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->Intent_ReaderService_Connected()V

    const-string p1, "ReaderManager"

    const-string p2, "onServiceConnected()"

    .line 1632
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
