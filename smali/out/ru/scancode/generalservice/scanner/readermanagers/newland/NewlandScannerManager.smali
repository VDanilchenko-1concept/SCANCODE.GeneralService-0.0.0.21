.class public Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;
.super Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;
.source "NewlandScannerManager.java"


# static fields
.field private static final NEWLAND_ALL_CONFIG:Ljava/lang/String; = "newland_all_config"


# instance fields
.field private readerManager:Lcom/nlscan/android/scan/ScanManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-static {}, Lcom/nlscan/android/scan/ScanManager;->getInstance()Lcom/nlscan/android/scan/ScanManager;

    move-result-object p1

    iput-object p1, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    .line 35
    invoke-virtual {p0}, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->saveScannerSettings()V

    return-void
.end method

.method private pringAllSettings(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 192
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 195
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "%-40s %s"

    .line 194
    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    :cond_37
    return-void
.end method


# virtual methods
.method public restoreScannerSettings()V
    .registers 6

    .line 106
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "restoreScannerSettings()"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->sp:Landroid/content/SharedPreferences;

    const-string v1, "newland_all_config"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_190

    .line 112
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 114
    new-instance v2, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager$1;

    invoke-direct {v2, p0}, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager$1;-><init>(Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;)V

    invoke-virtual {v2}, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 116
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 118
    invoke-direct {p0, v0}, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->pringAllSettings(Ljava/util/Map;)V

    .line 120
    sget-object v1, Lcom/nlscan/android/scan/ScanSettings$Global;->SCAN_ENCODE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 121
    iget-object v2, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/nlscan/android/scan/ScanManager;->setScanEncode(I)Z

    .line 123
    sget-object v1, Lcom/nlscan/android/scan/ScanSettings$Global;->AUTO_NEW_LINE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 124
    iget-object v2, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/nlscan/android/scan/ScanManager;->setAutoNewLineEnable(Z)Z

    .line 126
    sget-object v1, Lcom/nlscan/android/scan/ScanSettings$Global;->SCAN_PROMPT_VIBRATOR:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 127
    iget-object v2, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/nlscan/android/scan/ScanManager;->setScanPromptVibrateEnable(Z)Z

    .line 129
    sget-object v1, Lcom/nlscan/android/scan/ScanSettings$Global;->SUFFIX_ENABLE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 130
    iget-object v2, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/nlscan/android/scan/ScanManager;->setSuffixEnable(Z)Z

    .line 132
    sget-object v1, Lcom/nlscan/android/scan/ScanSettings$Global;->SUFFIX:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    iget-object v2, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    invoke-virtual {v2, v1}, Lcom/nlscan/android/scan/ScanManager;->setSuffix(Ljava/lang/String;)Z

    .line 135
    sget-object v1, Lcom/nlscan/android/scan/ScanSettings$Global;->PREFIX_ENABLE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 136
    iget-object v2, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/nlscan/android/scan/ScanManager;->setPrefixEnable(Z)Z

    .line 138
    sget-object v1, Lcom/nlscan/android/scan/ScanSettings$Global;->PREFIX:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 139
    iget-object v2, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    invoke-virtual {v2, v1}, Lcom/nlscan/android/scan/ScanManager;->setPrefix(Ljava/lang/String;)Z

    .line 141
    sget-object v1, Lcom/nlscan/android/scan/ScanSettings$Global;->TRIGGER_MODE_MAIN:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 142
    iget-object v2, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    sget-object v3, Lcom/nlscan/android/scan/ScanSettings$Global;->TRIGGER_MODE_MAIN:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/nlscan/android/scan/ScanManager;->setTriggerEnable(Ljava/lang/String;Z)Z

    .line 144
    sget-object v1, Lcom/nlscan/android/scan/ScanSettings$Global;->TRIGGER_MODE_LEFT:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 145
    iget-object v2, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    sget-object v3, Lcom/nlscan/android/scan/ScanSettings$Global;->TRIGGER_MODE_LEFT:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/nlscan/android/scan/ScanManager;->setTriggerEnable(Ljava/lang/String;Z)Z

    .line 147
    sget-object v1, Lcom/nlscan/android/scan/ScanSettings$Global;->TRIGGER_MODE_RIGHT:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 148
    iget-object v2, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    sget-object v3, Lcom/nlscan/android/scan/ScanSettings$Global;->TRIGGER_MODE_RIGHT:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/nlscan/android/scan/ScanManager;->setTriggerEnable(Ljava/lang/String;Z)Z

    .line 150
    sget-object v1, Lcom/nlscan/android/scan/ScanSettings$Global;->TRIGGER_MODE_BACK:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    iget-object v2, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    sget-object v3, Lcom/nlscan/android/scan/ScanSettings$Global;->TRIGGER_MODE_BACK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/nlscan/android/scan/ScanManager;->setTriggerEnable(Ljava/lang/String;Z)Z

    .line 153
    sget-object v1, Lcom/nlscan/android/scan/ScanSettings$Global;->SCAN_MODE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 154
    iget-object v2, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/nlscan/android/scan/ScanManager;->setScanMode(I)Z

    .line 156
    sget-object v1, Lcom/nlscan/android/scan/ScanSettings$Global;->OUT_PUT_MODE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 157
    iget-object v2, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/nlscan/android/scan/ScanManager;->setOutpuMode(I)Z

    .line 159
    sget-object v1, Lcom/nlscan/android/scan/ScanSettings$Global;->EMULATE_OUTPUT_INTERVAL_TIME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 160
    iget-object v2, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/nlscan/android/scan/ScanManager;->setEmulateOutputIntervalTime(J)Z

    .line 162
    sget-object v1, Lcom/nlscan/android/scan/ScanSettings$Global;->JS_CODE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 163
    iget-object v2, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    invoke-virtual {v2, v1}, Lcom/nlscan/android/scan/ScanManager;->setJScode(Ljava/lang/String;)Z

    .line 165
    sget-object v1, Lcom/nlscan/android/scan/ScanSettings$Global;->JS_CODE_ENABLE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 166
    iget-object v2, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/nlscan/android/scan/ScanManager;->setJScodeEnable(Z)Z

    .line 168
    sget-object v1, Lcom/nlscan/android/scan/ScanSettings$Global;->SCAN_REPEAT_TIMEOUT:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 169
    iget-object v2, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/nlscan/android/scan/ScanManager;->setNonRepeatTimeOunt(J)Z

    .line 171
    sget-object v1, Lcom/nlscan/android/scan/ScanSettings$Global;->OUT_PUT_RECOVERABLE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 172
    iget-object v2, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/nlscan/android/scan/ScanManager;->setOutputRecoverable(Z)Z

    .line 174
    sget-object v1, Lcom/nlscan/android/scan/ScanSettings$Global;->SCAN_INTERVAL_TIME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 175
    iget-object v2, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/nlscan/android/scan/ScanManager;->setScanIntervalTime(J)Z

    .line 177
    sget-object v1, Lcom/nlscan/android/scan/ScanSettings$Global;->SCAN_PROMPT_LED:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 178
    iget-object v2, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/nlscan/android/scan/ScanManager;->setScanPromptLEDEnable(Z)Z

    .line 180
    sget-object v1, Lcom/nlscan/android/scan/ScanSettings$Global;->SCAN_TIME_OUT:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/nlscan/android/scan/ScanManager;->setScanTimeout(J)Z

    :cond_190
    return-void
.end method

.method public saveScannerSettings()V
    .registers 4

    .line 89
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "saveScannerSettings()"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    invoke-virtual {v0}, Lcom/nlscan/android/scan/ScanManager;->getScanSettings()Ljava/util/Map;

    move-result-object v0

    .line 93
    invoke-direct {p0, v0}, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->pringAllSettings(Ljava/util/Map;)V

    .line 95
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "newland_all_config"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setServiceScannerSettings()V
    .registers 5

    .line 55
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "setServiceScannerSettings()"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    sget v1, Lcom/nlscan/android/scan/ScanSettings$Global;->VALUE_OUT_PUT_MODE_BROADCAST:I

    invoke-virtual {v0, v1}, Lcom/nlscan/android/scan/ScanManager;->setOutpuMode(I)Z

    .line 61
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    sget v1, Lcom/nlscan/android/scan/ScanSettings$Global;->VALUE_SCAN_MODE_DOWN_UP:I

    invoke-virtual {v0, v1}, Lcom/nlscan/android/scan/ScanManager;->setScanMode(I)Z

    .line 64
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    sget-object v1, Lcom/nlscan/android/scan/ScanSettings$Global;->TRIGGER_MODE_MAIN:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nlscan/android/scan/ScanManager;->setTriggerEnable(Ljava/lang/String;Z)Z

    .line 65
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    sget-object v1, Lcom/nlscan/android/scan/ScanSettings$Global;->TRIGGER_MODE_LEFT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nlscan/android/scan/ScanManager;->setTriggerEnable(Ljava/lang/String;Z)Z

    .line 66
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    sget-object v1, Lcom/nlscan/android/scan/ScanSettings$Global;->TRIGGER_MODE_RIGHT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nlscan/android/scan/ScanManager;->setTriggerEnable(Ljava/lang/String;Z)Z

    .line 67
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    sget-object v1, Lcom/nlscan/android/scan/ScanSettings$Global;->TRIGGER_MODE_BACK:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nlscan/android/scan/ScanManager;->setTriggerEnable(Ljava/lang/String;Z)Z

    .line 70
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nlscan/android/scan/ScanManager;->setPrefixEnable(Z)Z

    .line 71
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    invoke-virtual {v0, v1}, Lcom/nlscan/android/scan/ScanManager;->setSuffixEnable(Z)Z

    .line 72
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/nlscan/android/scan/ScanManager;->setPrefix(Ljava/lang/String;)Z

    .line 73
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    invoke-virtual {v0, v3}, Lcom/nlscan/android/scan/ScanManager;->setSuffix(Ljava/lang/String;)Z

    .line 76
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    invoke-virtual {v0}, Lcom/nlscan/android/scan/ScanManager;->disableBeep()Z

    .line 77
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    invoke-virtual {v0, v1}, Lcom/nlscan/android/scan/ScanManager;->setScanPromptVibrateEnable(Z)Z

    .line 80
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    invoke-virtual {v0, v2}, Lcom/nlscan/android/scan/ScanManager;->setScanEncode(I)Z

    .line 83
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    invoke-virtual {v0, v1}, Lcom/nlscan/android/scan/ScanManager;->setAutoNewLineEnable(Z)Z

    return-void
.end method

.method public turnOff()V
    .registers 3

    .line 47
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "turnOff()"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nlscan/android/scan/ScanManager;->setScanEnable(Z)Z

    .line 49
    invoke-virtual {p0}, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->restoreScannerSettings()V

    return-void
.end method

.method public turnOn()V
    .registers 3

    .line 40
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "turnOn()"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->readerManager:Lcom/nlscan/android/scan/ScanManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nlscan/android/scan/ScanManager;->setScanEnable(Z)Z

    .line 42
    invoke-virtual {p0}, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;->setServiceScannerSettings()V

    return-void
.end method
