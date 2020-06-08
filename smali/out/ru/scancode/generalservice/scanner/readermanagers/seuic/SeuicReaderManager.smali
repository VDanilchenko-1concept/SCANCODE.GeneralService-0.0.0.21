.class public Lru/scancode/generalservice/scanner/readermanagers/seuic/SeuicReaderManager;
.super Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;
.source "SeuicReaderManager.java"


# instance fields
.field private final DEFAULT_BARCODE_KEY:Ljava/lang/String;

.field private final DEFAULT_BROADCAST_ACTION_STRING:Ljava/lang/String;

.field private final READER_BARCODE_KEY_EXTRA:Ljava/lang/String;

.field private final READER_BROADCAST_EXTRA:Ljava/lang/String;

.field private final READER_ENABLED_EXTRA:Ljava/lang/String;

.field private final READER_ENABLE_ACTION:Ljava/lang/String;

.field private final READER_END_CHAR_ENTER:Ljava/lang/String;

.field private final READER_END_CHAR_EXTRA:Ljava/lang/String;

.field private final READER_END_CHAR_NONE:Ljava/lang/String;

.field private final READER_END_CHAR_SPACE:Ljava/lang/String;

.field private final READER_END_CHAR_TAB:Ljava/lang/String;

.field private final READER_SEND_METHOD_BROADCAST:Ljava/lang/String;

.field private final READER_SEND_METHOD_CLIPBOARD:Ljava/lang/String;

.field private final READER_SEND_METHOD_EMUKEY:Ljava/lang/String;

.field private final READER_SEND_METHOD_EXTRA:Ljava/lang/String;

.field private final READER_SEND_METHOD_FOCUS:Ljava/lang/String;

.field private final READER_SETTINGS_ACTION:Ljava/lang/String;

.field private catchBarcode:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 11

    .line 45
    invoke-direct {p0, p1}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;-><init>(Landroid/content/Context;)V

    const-string v0, "com.android.server.scannerservice.broadcast"

    .line 20
    iput-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/seuic/SeuicReaderManager;->DEFAULT_BROADCAST_ACTION_STRING:Ljava/lang/String;

    const-string v0, "scannerdata"

    .line 21
    iput-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/seuic/SeuicReaderManager;->DEFAULT_BARCODE_KEY:Ljava/lang/String;

    const-string v0, "com.android.scanner.service_settings"

    .line 23
    iput-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/seuic/SeuicReaderManager;->READER_SETTINGS_ACTION:Ljava/lang/String;

    const-string v1, "com.android.scanner.ENABLED"

    .line 24
    iput-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/seuic/SeuicReaderManager;->READER_ENABLE_ACTION:Ljava/lang/String;

    const-string v1, "action_barcode_broadcast"

    .line 26
    iput-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/seuic/SeuicReaderManager;->READER_BROADCAST_EXTRA:Ljava/lang/String;

    const-string v2, "key_barcode_broadcast"

    .line 27
    iput-object v2, p0, Lru/scancode/generalservice/scanner/readermanagers/seuic/SeuicReaderManager;->READER_BARCODE_KEY_EXTRA:Ljava/lang/String;

    const-string v3, "barcode_send_mode"

    .line 28
    iput-object v3, p0, Lru/scancode/generalservice/scanner/readermanagers/seuic/SeuicReaderManager;->READER_SEND_METHOD_EXTRA:Ljava/lang/String;

    const-string v4, "endchar"

    .line 29
    iput-object v4, p0, Lru/scancode/generalservice/scanner/readermanagers/seuic/SeuicReaderManager;->READER_END_CHAR_EXTRA:Ljava/lang/String;

    const-string v5, "enabled"

    .line 30
    iput-object v5, p0, Lru/scancode/generalservice/scanner/readermanagers/seuic/SeuicReaderManager;->READER_ENABLED_EXTRA:Ljava/lang/String;

    const-string v5, "ENTER"

    .line 32
    iput-object v5, p0, Lru/scancode/generalservice/scanner/readermanagers/seuic/SeuicReaderManager;->READER_END_CHAR_ENTER:Ljava/lang/String;

    const-string v5, "TAB"

    .line 33
    iput-object v5, p0, Lru/scancode/generalservice/scanner/readermanagers/seuic/SeuicReaderManager;->READER_END_CHAR_TAB:Ljava/lang/String;

    const-string v5, "SPACE"

    .line 34
    iput-object v5, p0, Lru/scancode/generalservice/scanner/readermanagers/seuic/SeuicReaderManager;->READER_END_CHAR_SPACE:Ljava/lang/String;

    const-string v5, "NONE"

    .line 35
    iput-object v5, p0, Lru/scancode/generalservice/scanner/readermanagers/seuic/SeuicReaderManager;->READER_END_CHAR_NONE:Ljava/lang/String;

    const-string v6, "BROADCAST"

    .line 37
    iput-object v6, p0, Lru/scancode/generalservice/scanner/readermanagers/seuic/SeuicReaderManager;->READER_SEND_METHOD_BROADCAST:Ljava/lang/String;

    const-string v7, "FOCUS"

    .line 38
    iput-object v7, p0, Lru/scancode/generalservice/scanner/readermanagers/seuic/SeuicReaderManager;->READER_SEND_METHOD_FOCUS:Ljava/lang/String;

    const-string v7, "EMUKEY"

    .line 39
    iput-object v7, p0, Lru/scancode/generalservice/scanner/readermanagers/seuic/SeuicReaderManager;->READER_SEND_METHOD_EMUKEY:Ljava/lang/String;

    const-string v7, "CLIPBOARD"

    .line 40
    iput-object v7, p0, Lru/scancode/generalservice/scanner/readermanagers/seuic/SeuicReaderManager;->READER_SEND_METHOD_CLIPBOARD:Ljava/lang/String;

    .line 47
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v7

    const-string v8, "SeuicReaderManager"

    invoke-virtual {v7, v8}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/String;)V

    .line 49
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "com.cipherlab.barcodebaseapi.PASS_DATA_2_APP"

    .line 50
    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Decoder_Data"

    .line 51
    invoke-virtual {v7, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {v7, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {v7, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-direct {p0, v0, v7}, Lru/scancode/generalservice/scanner/readermanagers/seuic/SeuicReaderManager;->setReaderBroadCastSets(Ljava/lang/String;Ljava/util/Map;)V

    .line 57
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.cipherlab.barcodebaseapi.SERVICE_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.cipherlab.barcodebaseapi.SOFTTRIGGER_DATA"

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    new-instance v1, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabCatchBarcode;

    invoke-direct {v1}, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabCatchBarcode;-><init>()V

    iput-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/seuic/SeuicReaderManager;->catchBarcode:Landroid/content/BroadcastReceiver;

    .line 65
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-wide/16 v0, 0x1f4

    .line 67
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    return-void
.end method

.method private setEnabled(Z)V
    .registers 4

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.scanner.ENABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "enabled"

    .line 90
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    iget-object p1, p0, Lru/scancode/generalservice/scanner/readermanagers/seuic/SeuicReaderManager;->ctx:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setReaderBroadCastSets(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 73
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_d

    .line 75
    :cond_29
    iget-object p1, p0, Lru/scancode/generalservice/scanner/readermanagers/seuic/SeuicReaderManager;->ctx:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public release()V
    .registers 4

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "action_barcode_broadcast"

    const-string v2, "com.android.server.scannerservice.broadcast"

    .line 97
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key_barcode_broadcast"

    const-string v2, "scannerdata"

    .line 98
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "barcode_send_mode"

    const-string v2, "FOCUS"

    .line 99
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "endchar"

    const-string v2, "ENTER"

    .line 100
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.android.scanner.service_settings"

    .line 102
    invoke-direct {p0, v1, v0}, Lru/scancode/generalservice/scanner/readermanagers/seuic/SeuicReaderManager;->setReaderBroadCastSets(Ljava/lang/String;Ljava/util/Map;)V

    .line 103
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/seuic/SeuicReaderManager;->catchBarcode:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_31

    .line 104
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/seuic/SeuicReaderManager;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/seuic/SeuicReaderManager;->catchBarcode:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_31
    return-void
.end method

.method public restoreScannerSettings()V
    .registers 1

    return-void
.end method

.method public setServiceScannerSettings()V
    .registers 1

    return-void
.end method

.method public turnOff()V
    .registers 2

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, v0}, Lru/scancode/generalservice/scanner/readermanagers/seuic/SeuicReaderManager;->setEnabled(Z)V

    return-void
.end method

.method public turnOn()V
    .registers 2

    const/4 v0, 0x1

    .line 80
    invoke-direct {p0, v0}, Lru/scancode/generalservice/scanner/readermanagers/seuic/SeuicReaderManager;->setEnabled(Z)V

    return-void
.end method
