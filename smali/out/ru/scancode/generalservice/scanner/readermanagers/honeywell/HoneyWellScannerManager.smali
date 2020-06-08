.class public Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;
.super Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;
.source "HoneyWellScannerManager.java"

# interfaces
.implements Lcom/honeywell/aidc/BarcodeReader$BarcodeListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final HONEYWELL_ALL_CONFIG:Ljava/lang/String; = "honeywell_all_config"


# instance fields
.field private barcodeReader:Lcom/honeywell/aidc/BarcodeReader;

.field private manager:Lcom/honeywell/aidc/AidcManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 44
    invoke-direct {p0, p1}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;-><init>(Landroid/content/Context;)V

    .line 46
    iget-object p1, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->ctx:Landroid/content/Context;

    new-instance v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/-$$Lambda$HoneyWellScannerManager$4MeFAuNBlTC7la_0pOg4i4qxIBs;

    invoke-direct {v0, p0}, Lru/scancode/generalservice/scanner/readermanagers/honeywell/-$$Lambda$HoneyWellScannerManager$4MeFAuNBlTC7la_0pOg4i4qxIBs;-><init>(Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;)V

    invoke-static {p1, v0}, Lcom/honeywell/aidc/AidcManager;->create(Landroid/content/Context;Lcom/honeywell/aidc/AidcManager$CreatedCallback;)V

    return-void
.end method

.method private m51a(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, "DEC_CODE128_ENABLED"

    .line 211
    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->barcodeReader:Lcom/honeywell/aidc/BarcodeReader;

    .line 213
    sget-object v2, Lru/scancode/generalservice/scanner/readermanagers/honeywell/C0016c;->f99b:[[Ljava/lang/String;

    array-length v2, v2

    const-string v3, "j"

    .line 215
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_48

    .line 217
    :try_start_11
    invoke-virtual {v1, v0}, Lcom/honeywell/aidc/BarcodeReader;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v3
    :try_end_15
    .catch Lcom/honeywell/aidc/UnsupportedPropertyException; {:try_start_11 .. :try_end_15} :catch_3b

    const-string v6, "DEC_C128_ISBT_ENABLED"

    if-eqz v3, :cond_25

    .line 218
    :try_start_19
    invoke-virtual {v1, v6}, Lcom/honeywell/aidc/BarcodeReader;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 219
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/C0016c;->f98a:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object p1, v0, v1

    return-object p1

    .line 221
    :cond_25
    invoke-virtual {v1, v0}, Lcom/honeywell/aidc/BarcodeReader;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 222
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/C0016c;->f98a:[Ljava/lang/String;

    aget-object p1, v0, v5

    return-object p1

    .line 224
    :cond_30
    invoke-virtual {v1, v6}, Lcom/honeywell/aidc/BarcodeReader;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 225
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/C0016c;->f98a:[Ljava/lang/String;

    aget-object p1, v0, v4
    :try_end_3a
    .catch Lcom/honeywell/aidc/UnsupportedPropertyException; {:try_start_19 .. :try_end_3a} :catch_3b

    return-object p1

    :catch_3b
    move-exception v0

    .line 228
    invoke-virtual {v0}, Lcom/honeywell/aidc/UnsupportedPropertyException;->printStackTrace()V

    .line 229
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v1

    const-string v3, "Error in decode barcode ID->Type"

    invoke-virtual {v1, p0, v3, v0}, Lru/scancode/generalservice/utils/App;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_48
    const/4 v0, 0x0

    :goto_49
    if-ge v0, v2, :cond_61

    .line 234
    sget-object v1, Lru/scancode/generalservice/scanner/readermanagers/honeywell/C0016c;->f99b:[[Ljava/lang/String;

    aget-object v1, v1, v0

    aget-object v1, v1, v4

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 235
    sget-object p1, Lru/scancode/generalservice/scanner/readermanagers/honeywell/C0016c;->f99b:[[Ljava/lang/String;

    aget-object p1, p1, v0

    aget-object p1, p1, v5

    return-object p1

    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    :cond_61
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public synthetic lambda$new$0$HoneyWellScannerManager(Lcom/honeywell/aidc/AidcManager;)V
    .registers 4

    .line 48
    iput-object p1, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->manager:Lcom/honeywell/aidc/AidcManager;

    .line 51
    :try_start_2
    invoke-virtual {p1}, Lcom/honeywell/aidc/AidcManager;->createBarcodeReader()Lcom/honeywell/aidc/BarcodeReader;

    move-result-object p1

    iput-object p1, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->barcodeReader:Lcom/honeywell/aidc/BarcodeReader;
    :try_end_8
    .catch Lcom/honeywell/aidc/InvalidScannerNameException; {:try_start_2 .. :try_end_8} :catch_9

    goto :goto_13

    :catch_9
    move-exception p1

    .line 54
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "\u0421\u043e\u0437\u0434\u0430\u043d\u0438\u0435 \u043c\u0435\u043d\u0435\u0434\u0436\u0435\u0440\u0430 \u0441\u043a\u0430\u043d\u0435\u0440\u0430"

    invoke-virtual {v0, p0, v1, p1}, Lru/scancode/generalservice/utils/App;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 57
    :goto_13
    iget-object p1, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->barcodeReader:Lcom/honeywell/aidc/BarcodeReader;

    invoke-virtual {p1, p0}, Lcom/honeywell/aidc/BarcodeReader;->addBarcodeListener(Lcom/honeywell/aidc/BarcodeReader$BarcodeListener;)V

    return-void
.end method

.method public onBarcodeEvent(Lcom/honeywell/aidc/BarcodeReadEvent;)V
    .registers 5

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Barcode data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/honeywell/aidc/BarcodeReadEvent;->getBarcodeData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Character Set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/honeywell/aidc/BarcodeReadEvent;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Code type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/honeywell/aidc/BarcodeReadEvent;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->m51a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    new-instance v0, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;

    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->ctx:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/honeywell/aidc/BarcodeReadEvent;->getBarcodeData()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1}, Lcom/honeywell/aidc/BarcodeReadEvent;->getBarcodeData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;->setLenght(I)Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;

    move-result-object v0

    .line 197
    invoke-virtual {p1}, Lcom/honeywell/aidc/BarcodeReadEvent;->getCodeId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->m51a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;->setType(Ljava/lang/String;)Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;

    move-result-object p1

    .line 198
    invoke-virtual {p1}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;->send()V

    return-void
.end method

.method public onFailureEvent(Lcom/honeywell/aidc/BarcodeFailureEvent;)V
    .registers 3

    .line 203
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    invoke-virtual {p1}, Lcom/honeywell/aidc/BarcodeFailureEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .registers 2

    .line 97
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->barcodeReader:Lcom/honeywell/aidc/BarcodeReader;

    if-eqz v0, :cond_14

    .line 98
    invoke-virtual {v0}, Lcom/honeywell/aidc/BarcodeReader;->release()V

    .line 99
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->barcodeReader:Lcom/honeywell/aidc/BarcodeReader;

    invoke-virtual {v0, p0}, Lcom/honeywell/aidc/BarcodeReader;->removeBarcodeListener(Lcom/honeywell/aidc/BarcodeReader$BarcodeListener;)V

    .line 100
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->barcodeReader:Lcom/honeywell/aidc/BarcodeReader;

    invoke-virtual {v0}, Lcom/honeywell/aidc/BarcodeReader;->close()V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->barcodeReader:Lcom/honeywell/aidc/BarcodeReader;

    .line 104
    :cond_14
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->manager:Lcom/honeywell/aidc/AidcManager;

    if-eqz v0, :cond_1b

    .line 105
    invoke-virtual {v0}, Lcom/honeywell/aidc/AidcManager;->close()V

    :cond_1b
    return-void
.end method

.method public restoreScannerSettings()V
    .registers 8

    .line 126
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "restoreScannerSettings()"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->sp:Landroid/content/SharedPreferences;

    const-string v1, "honeywell_all_config"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 132
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 134
    new-instance v2, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager$1;

    invoke-direct {v2, p0}, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager$1;-><init>(Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;)V

    invoke-virtual {v2}, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 136
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 139
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 142
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "%-35s %s"

    .line 141
    invoke-static {v3, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_34

    .line 147
    :cond_63
    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->barcodeReader:Lcom/honeywell/aidc/BarcodeReader;

    invoke-virtual {v1, v0}, Lcom/honeywell/aidc/BarcodeReader;->setProperties(Ljava/util/Map;)V

    :cond_68
    return-void
.end method

.method public saveScannerSettings()V
    .registers 4

    .line 112
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "saveScannerSettings()"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->barcodeReader:Lcom/honeywell/aidc/BarcodeReader;

    invoke-virtual {v0}, Lcom/honeywell/aidc/BarcodeReader;->getAllProperties()Ljava/util/Map;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "honeywell_all_config"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setServiceScannerSettings()V
    .registers 6

    const-string v0, ""

    .line 154
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v1

    const-string v2, "setServiceScannerSettings()"

    invoke-virtual {v1, p0, v2}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    :try_start_b
    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->barcodeReader:Lcom/honeywell/aidc/BarcodeReader;

    const-string v2, "DPR_SCAN_TO_INTENT"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/honeywell/aidc/BarcodeReader;->setProperty(Ljava/lang/String;Z)V

    .line 159
    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->barcodeReader:Lcom/honeywell/aidc/BarcodeReader;

    const-string v2, "DPR_LAUNCH_BROWSER"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/honeywell/aidc/BarcodeReader;->setProperty(Ljava/lang/String;Z)V

    .line 161
    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->barcodeReader:Lcom/honeywell/aidc/BarcodeReader;

    const-string v2, "DEC_EAN13_CHECK_DIGIT_TRANSMIT"

    invoke-virtual {v1, v2, v3}, Lcom/honeywell/aidc/BarcodeReader;->setProperty(Ljava/lang/String;Z)V

    .line 162
    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->barcodeReader:Lcom/honeywell/aidc/BarcodeReader;

    const-string v2, "DEC_EAN8_CHECK_DIGIT_TRANSMIT"

    invoke-virtual {v1, v2, v3}, Lcom/honeywell/aidc/BarcodeReader;->setProperty(Ljava/lang/String;Z)V

    .line 164
    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->barcodeReader:Lcom/honeywell/aidc/BarcodeReader;

    const-string v2, "DPR_PREFIX"

    invoke-virtual {v1, v2, v0}, Lcom/honeywell/aidc/BarcodeReader;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->barcodeReader:Lcom/honeywell/aidc/BarcodeReader;

    const-string v2, "DPR_SUFFIX"

    invoke-virtual {v1, v2, v0}, Lcom/honeywell/aidc/BarcodeReader;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->barcodeReader:Lcom/honeywell/aidc/BarcodeReader;

    const-string v1, "NTF_VIBRATE_ENABLED"

    invoke-virtual {v0, v1, v3}, Lcom/honeywell/aidc/BarcodeReader;->setProperty(Ljava/lang/String;Z)V

    .line 168
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->barcodeReader:Lcom/honeywell/aidc/BarcodeReader;

    const-string v1, "NTF_GOOD_READ_ENABLED"

    invoke-virtual {v0, v1, v3}, Lcom/honeywell/aidc/BarcodeReader;->setProperty(Ljava/lang/String;Z)V

    .line 169
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->barcodeReader:Lcom/honeywell/aidc/BarcodeReader;

    const-string v1, "NTF_BAD_READ_ENABLED"

    invoke-virtual {v0, v1, v4}, Lcom/honeywell/aidc/BarcodeReader;->setProperty(Ljava/lang/String;Z)V

    .line 171
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->barcodeReader:Lcom/honeywell/aidc/BarcodeReader;

    const-string v1, "DEC_WINDOW_MODE"

    invoke-virtual {v0, v1, v3}, Lcom/honeywell/aidc/BarcodeReader;->setProperty(Ljava/lang/String;Z)V

    .line 173
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->barcodeReader:Lcom/honeywell/aidc/BarcodeReader;

    const-string v1, "DEC_UPCA_CHECK_DIGIT_TRANSMIT"

    invoke-virtual {v0, v1, v3}, Lcom/honeywell/aidc/BarcodeReader;->setProperty(Ljava/lang/String;Z)V
    :try_end_5a
    .catch Lcom/honeywell/aidc/UnsupportedPropertyException; {:try_start_b .. :try_end_5a} :catch_5b

    goto :goto_65

    :catch_5b
    move-exception v0

    .line 176
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v1

    const-string v2, "\u041e\u0448\u0438\u0431\u043a\u0430 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u0441\u043a\u0430\u043d\u0435\u0440\u0430"

    invoke-virtual {v1, p0, v2, v0}, Lru/scancode/generalservice/utils/App;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_65
    return-void
.end method

.method public turnOff()V
    .registers 3

    .line 85
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "turnOff()"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->barcodeReader:Lcom/honeywell/aidc/BarcodeReader;

    if-eqz v0, :cond_13

    .line 88
    invoke-virtual {v0}, Lcom/honeywell/aidc/BarcodeReader;->release()V

    .line 90
    invoke-virtual {p0}, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->restoreScannerSettings()V

    :cond_13
    return-void
.end method

.method public turnOn()V
    .registers 4

    .line 63
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "turnOn()"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->barcodeReader:Lcom/honeywell/aidc/BarcodeReader;

    if-eqz v0, :cond_22

    .line 68
    :try_start_d
    invoke-virtual {v0}, Lcom/honeywell/aidc/BarcodeReader;->claim()V

    .line 70
    invoke-virtual {p0}, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->saveScannerSettings()V

    .line 72
    invoke-virtual {p0}, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellScannerManager;->setServiceScannerSettings()V
    :try_end_16
    .catch Lcom/honeywell/aidc/ScannerUnavailableException; {:try_start_d .. :try_end_16} :catch_17

    goto :goto_2b

    :catch_17
    move-exception v0

    .line 75
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v1

    const-string v2, "Claim Barcode Reader error"

    invoke-virtual {v1, p0, v2, v0}, Lru/scancode/generalservice/utils/App;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2b

    .line 79
    :cond_22
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "!!! barcodeReader is null !!!"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2b
    return-void
.end method
