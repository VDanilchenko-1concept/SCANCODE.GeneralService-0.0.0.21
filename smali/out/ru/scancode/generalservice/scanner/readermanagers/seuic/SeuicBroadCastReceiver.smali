.class public Lru/scancode/generalservice/scanner/readermanagers/seuic/SeuicBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SeuicBroadCastReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.cipherlab.barcodebaseapi.PASS_DATA_2_APP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.cipherlab.barcodebaseapi.SOFTTRIGGER_DATA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    :cond_1e
    const-string v0, "Decoder_Data"

    .line 20
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 25
    invoke-static {}, Lru/scancode/generalservice/services/MainService;->getInstance()Lru/scancode/generalservice/services/MainService;

    move-result-object v0

    if-nez v0, :cond_32

    .line 27
    new-instance p2, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;

    const-string v0, "service offline"

    invoke-direct {p2, p1, v0}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 31
    :cond_32
    new-instance v0, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;

    invoke-direct {v0, p1, p2}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;->send()V

    :cond_3a
    return-void
.end method
