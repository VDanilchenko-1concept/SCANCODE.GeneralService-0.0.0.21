.class public Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabCatchBarcode;
.super Landroid/content/BroadcastReceiver;
.source "CipherLabCatchBarcode.java"


# static fields
.field private static final CONNECT_ACTION:Ljava/lang/String; = "scanner_connect_action"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.cipherlab.barcodebaseapi.SERVICE_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 33
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "scanner_connect_action"

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 42
    :cond_26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10e

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.cipherlab.barcodebaseapi.PASS_DATA_2_APP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.cipherlab.barcodebaseapi.SOFTTRIGGER_DATA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10e

    :cond_44
    const-string v0, "Decoder_Data"

    .line 45
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 50
    invoke-static {}, Lru/scancode/generalservice/services/MainService;->getInstance()Lru/scancode/generalservice/services/MainService;

    move-result-object v0

    if-nez v0, :cond_58

    .line 52
    new-instance p2, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;

    const-string v0, "service offline"

    invoke-direct {p2, p1, v0}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 56
    :cond_58
    invoke-virtual {v0}, Lru/scancode/generalservice/services/MainService;->getScannerSettings()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;

    if-eqz v1, :cond_106

    .line 58
    invoke-virtual {v0}, Lru/scancode/generalservice/services/MainService;->getScannerSettings()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;

    .line 60
    iget-char v1, v0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->useDelim:C

    .line 66
    iget-object v2, v0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->showCodeLen:Lcom/cipherlab/barcode/decoder/Enable_State;

    sget-object v3, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_72

    const/4 v2, 0x1

    goto :goto_73

    :cond_72
    const/4 v2, 0x0

    :goto_73
    or-int/2addr v2, v4

    .line 67
    iget-object v0, v0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->showCodeType:Lcom/cipherlab/barcode/decoder/Enable_State;

    sget-object v3, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/4 v6, 0x2

    if-ne v0, v3, :cond_7d

    const/4 v0, 0x2

    goto :goto_7e

    :cond_7d
    const/4 v0, 0x0

    :goto_7e
    or-int/2addr v0, v2

    new-array v2, v4, [Ljava/lang/String;

    if-eqz v1, :cond_a3

    .line 76
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, p0, v7}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a3
    const-string v3, ""

    const-string v7, "0"

    if-eqz v0, :cond_ed

    if-eq v0, v5, :cond_e9

    if-eq v0, v6, :cond_e4

    const/4 p2, 0x3

    if-eq v0, p2, :cond_b1

    goto :goto_e2

    .line 94
    :cond_b1
    array-length v0, v2

    if-ne v0, p2, :cond_bb

    .line 96
    aget-object v3, v2, v4

    .line 97
    aget-object p2, v2, v5

    .line 98
    aget-object v7, v2, v6

    goto :goto_ed

    .line 102
    :cond_bb
    array-length v0, v2

    if-le v0, p2, :cond_e2

    .line 104
    aget-object v3, v2, v4

    .line 106
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    .line 108
    :goto_c6
    array-length v4, v2

    sub-int/2addr v4, v5

    if-ge v0, v4, :cond_d9

    .line 110
    aget-object v4, v2, v0

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    array-length v4, v2

    sub-int/2addr v4, v6

    if-eq v0, v4, :cond_d6

    .line 115
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_d6
    add-int/lit8 v0, v0, 0x1

    goto :goto_c6

    .line 119
    :cond_d9
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 121
    array-length v0, v2

    sub-int/2addr v0, v5

    aget-object v7, v2, v0

    goto :goto_ed

    :cond_e2
    :goto_e2
    move-object p2, v3

    goto :goto_ed

    .line 89
    :cond_e4
    aget-object v3, v2, v4

    .line 90
    aget-object p2, v2, v5

    goto :goto_ed

    .line 85
    :cond_e9
    aget-object p2, v2, v4

    .line 86
    aget-object v7, v2, v5

    .line 127
    :cond_ed
    :goto_ed
    new-instance v0, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;

    invoke-direct {v0, p1, p2}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0, v3}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;->setType(Ljava/lang/String;)Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;

    move-result-object p1

    .line 129
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;->setLenght(I)Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;->send()V

    goto :goto_10e

    .line 135
    :cond_106
    new-instance v0, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;

    invoke-direct {v0, p1, p2}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;->send()V

    :cond_10e
    :goto_10e
    return-void
.end method
