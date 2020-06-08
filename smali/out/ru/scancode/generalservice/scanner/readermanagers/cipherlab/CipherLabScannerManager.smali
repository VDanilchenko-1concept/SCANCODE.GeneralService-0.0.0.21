.class public Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;
.super Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;
.source "CipherLabScannerManager.java"


# static fields
.field private static final CIPHERLAB_OUTPUT_CONFIG_SP:Ljava/lang/String; = "cipherlab_output_config"

.field private static final CIPHERLAB_USER_CONFIG_SP:Ljava/lang/String; = "cipherlab_user_config"


# instance fields
.field private catchBarcode:Landroid/content/BroadcastReceiver;

.field private readerManager:Lcom/cipherlab/barcode/ReaderManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 48
    invoke-direct {p0, p1}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p1, p0, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->ctx:Landroid/content/Context;

    .line 52
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Model: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.cipherlab.barcodebaseapi.SERVICE_CONNECTED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "com.cipherlab.barcodebaseapi.PASS_DATA_2_APP"

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.cipherlab.barcodebaseapi.SOFTTRIGGER_DATA"

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    new-instance v0, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabCatchBarcode;

    invoke-direct {v0}, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabCatchBarcode;-><init>()V

    iput-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->catchBarcode:Landroid/content/BroadcastReceiver;

    .line 60
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->catchBarcode:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    iget-object p1, p0, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->ctx:Landroid/content/Context;

    invoke-static {p1}, Lcom/cipherlab/barcode/ReaderManager;->InitInstance(Landroid/content/Context;)Lcom/cipherlab/barcode/ReaderManager;

    move-result-object p1

    iput-object p1, p0, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->readerManager:Lcom/cipherlab/barcode/ReaderManager;

    return-void
.end method

.method private restoreOutputScannerSettings()V
    .registers 4

    .line 199
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "restoreOutputScannerSettings"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->sp:Landroid/content/SharedPreferences;

    const-string v1, "cipherlab_output_config"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 205
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 207
    const-class v2, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;

    .line 209
    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->readerManager:Lcom/cipherlab/barcode/ReaderManager;

    invoke-virtual {v1, v0}, Lcom/cipherlab/barcode/ReaderManager;->Set_ReaderOutputConfiguration(Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;)Lcom/cipherlab/barcode/decoder/ClResult;

    :cond_2a
    return-void
.end method

.method private restoreUserSettings()V
    .registers 4

    .line 216
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "restoreUserSettings"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->sp:Landroid/content/SharedPreferences;

    const-string v1, "cipherlab_user_config"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 222
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 224
    const-class v2, Lcom/cipherlab/barcode/decoderparams/UserPreference;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoderparams/UserPreference;

    .line 226
    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->readerManager:Lcom/cipherlab/barcode/ReaderManager;

    invoke-virtual {v1, v0}, Lcom/cipherlab/barcode/ReaderManager;->Set_UserPreferences(Lcom/cipherlab/barcode/decoderparams/UserPreference;)Lcom/cipherlab/barcode/decoder/ClResult;

    :cond_2a
    return-void
.end method

.method private saveOutputSettings()V
    .registers 4

    .line 164
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "saveOutputScannerSettings"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;-><init>()V

    .line 168
    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->readerManager:Lcom/cipherlab/barcode/ReaderManager;

    invoke-virtual {v1, v0}, Lcom/cipherlab/barcode/ReaderManager;->Get_ReaderOutputConfiguration(Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;)Lcom/cipherlab/barcode/decoder/ClResult;

    .line 170
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "cipherlab_output_config"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private saveUserSettings()V
    .registers 4

    .line 178
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "saveUserSettings"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/UserPreference;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/UserPreference;-><init>()V

    .line 181
    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->readerManager:Lcom/cipherlab/barcode/ReaderManager;

    invoke-virtual {v1, v0}, Lcom/cipherlab/barcode/ReaderManager;->Get_UserPreferences(Lcom/cipherlab/barcode/decoderparams/UserPreference;)Lcom/cipherlab/barcode/decoder/ClResult;

    .line 183
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "cipherlab_user_config"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setServiceOutputSettings()V
    .registers 3

    .line 234
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "setServiceOutputSettings"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;-><init>()V

    .line 238
    sget-object v1, Lcom/cipherlab/barcode/decoder/OutputEnterChar;->None:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    iput-object v1, v0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->autoEnterChar:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    .line 239
    sget-object v1, Lcom/cipherlab/barcode/decoder/OutputEnterWay;->Disable:Lcom/cipherlab/barcode/decoder/OutputEnterWay;

    iput-object v1, v0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->autoEnterWay:Lcom/cipherlab/barcode/decoder/OutputEnterWay;

    .line 240
    sget-object v1, Lcom/cipherlab/barcode/decoder/KeyboardEmulationType;->None:Lcom/cipherlab/barcode/decoder/KeyboardEmulationType;

    iput-object v1, v0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->enableKeyboardEmulation:Lcom/cipherlab/barcode/decoder/KeyboardEmulationType;

    .line 241
    sget-object v1, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v1, v0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->showCodeLen:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 242
    sget-object v1, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v1, v0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->showCodeType:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/16 v1, 0x3b

    .line 243
    iput-char v1, v0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->useDelim:C

    .line 245
    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->readerManager:Lcom/cipherlab/barcode/ReaderManager;

    invoke-virtual {v1, v0}, Lcom/cipherlab/barcode/ReaderManager;->Set_ReaderOutputConfiguration(Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;)Lcom/cipherlab/barcode/decoder/ClResult;

    return-void
.end method

.method private setServiceUserSettings()V
    .registers 3

    .line 255
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "setServiceUserSettings"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/UserPreference;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/UserPreference;-><init>()V

    const/4 v1, 0x7

    .line 259
    iput v1, v0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->addonSecurityLevel:I

    const/16 v1, 0xbb8

    .line 260
    iput v1, v0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->laserOnTime:I

    .line 261
    sget-object v1, Lcom/cipherlab/barcode/decoder/InverseType;->AutoDetect:Lcom/cipherlab/barcode/decoder/InverseType;

    iput-object v1, v0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->negativeBarcodes:Lcom/cipherlab/barcode/decoder/InverseType;

    .line 262
    sget-object v1, Lcom/cipherlab/barcode/decoder/ScanAngleType;->Wide:Lcom/cipherlab/barcode/decoder/ScanAngleType;

    iput-object v1, v0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->scanAngle:Lcom/cipherlab/barcode/decoder/ScanAngleType;

    .line 263
    sget-object v1, Lcom/cipherlab/barcode/decoder/SecurityLevel;->Two:Lcom/cipherlab/barcode/decoder/SecurityLevel;

    iput-object v1, v0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->securityLevel:Lcom/cipherlab/barcode/decoder/SecurityLevel;

    .line 264
    sget-object v1, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v1, v0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->pickListMode:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/16 v1, 0x3e8

    .line 265
    iput v1, v0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->timeoutBetweenSameSymbol:I

    .line 266
    sget-object v1, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v1, v0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->displayMode:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 267
    sget-object v1, Lcom/cipherlab/barcode/decoder/RedundancyLevel;->Four:Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    iput-object v1, v0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->redundancyLevel:Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    .line 268
    sget-object v1, Lcom/cipherlab/barcode/decoder/TriggerType;->ContinuousMode:Lcom/cipherlab/barcode/decoder/TriggerType;

    iput-object v1, v0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->triggerMode:Lcom/cipherlab/barcode/decoder/TriggerType;

    .line 269
    sget-object v1, Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;->Normal:Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

    iput-object v1, v0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->interCharGapSize:Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

    .line 270
    sget-object v1, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v1, v0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->decodingAimingPattern:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 271
    sget-object v1, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v1, v0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->decodingIllumination:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 273
    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->readerManager:Lcom/cipherlab/barcode/ReaderManager;

    invoke-virtual {v1, v0}, Lcom/cipherlab/barcode/ReaderManager;->Set_UserPreferences(Lcom/cipherlab/barcode/decoderparams/UserPreference;)Lcom/cipherlab/barcode/decoder/ClResult;

    return-void
.end method


# virtual methods
.method public getScannerSettings()Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;
    .registers 3

    .line 139
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;-><init>()V

    .line 141
    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->readerManager:Lcom/cipherlab/barcode/ReaderManager;

    invoke-virtual {v1, v0}, Lcom/cipherlab/barcode/ReaderManager;->Get_ReaderOutputConfiguration(Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;)Lcom/cipherlab/barcode/decoder/ClResult;

    return-object v0
.end method

.method public bridge synthetic getScannerSettings()Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->getScannerSettings()Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$turnOn$0$CipherLabScannerManager()V
    .registers 3

    .line 75
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "Reader manager is null, wait for init..."

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    :goto_9
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->readerManager:Lcom/cipherlab/barcode/ReaderManager;

    if-nez v0, :cond_13

    const-wide/16 v0, 0x32

    .line 78
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_9

    .line 81
    :cond_13
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "Reader manager init completed"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->readerManager:Lcom/cipherlab/barcode/ReaderManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cipherlab/barcode/ReaderManager;->SetActive(Z)Lcom/cipherlab/barcode/decoder/ClResult;

    return-void
.end method

.method public printScannerConfig()V
    .registers 7

    .line 123
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;-><init>()V

    .line 125
    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->readerManager:Lcom/cipherlab/barcode/ReaderManager;

    invoke-virtual {v1, v0}, Lcom/cipherlab/barcode/ReaderManager;->Get_ReaderOutputConfiguration(Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;)Lcom/cipherlab/barcode/decoder/ClResult;

    .line 127
    iget-object v1, v0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->showCodeLen:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 128
    iget-object v2, v0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->showCodeType:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 129
    iget-char v0, v0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->useDelim:C

    .line 131
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reader Manager configs: Code lenght settings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Code type: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Delim: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p0, v0}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .registers 3

    .line 113
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->readerManager:Lcom/cipherlab/barcode/ReaderManager;

    if-eqz v0, :cond_7

    .line 114
    invoke-virtual {v0}, Lcom/cipherlab/barcode/ReaderManager;->Release()V

    .line 117
    :cond_7
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->catchBarcode:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public restoreScannerSettings()V
    .registers 1

    .line 192
    invoke-direct {p0}, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->restoreOutputScannerSettings()V

    .line 193
    invoke-direct {p0}, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->restoreUserSettings()V

    return-void
.end method

.method public saveScannerSettings()V
    .registers 1

    .line 150
    invoke-direct {p0}, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->saveOutputSettings()V

    .line 151
    invoke-direct {p0}, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->saveUserSettings()V

    return-void
.end method

.method public setServiceScannerSettings()V
    .registers 1

    .line 157
    invoke-direct {p0}, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->setServiceOutputSettings()V

    return-void
.end method

.method public turnOff()V
    .registers 4

    .line 99
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " turnOff()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->readerManager:Lcom/cipherlab/barcode/ReaderManager;

    if-nez v0, :cond_26

    .line 102
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/cipherlab/barcode/ReaderManager;->InitInstance(Landroid/content/Context;)Lcom/cipherlab/barcode/ReaderManager;

    move-result-object v0

    iput-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->readerManager:Lcom/cipherlab/barcode/ReaderManager;

    .line 105
    :cond_26
    invoke-virtual {p0}, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->restoreScannerSettings()V

    .line 107
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->readerManager:Lcom/cipherlab/barcode/ReaderManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cipherlab/barcode/ReaderManager;->SetActive(Z)Lcom/cipherlab/barcode/decoder/ClResult;

    return-void
.end method

.method public turnOn()V
    .registers 4

    .line 68
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " turnOn()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->readerManager:Lcom/cipherlab/barcode/ReaderManager;

    if-nez v0, :cond_34

    .line 71
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/cipherlab/barcode/ReaderManager;->InitInstance(Landroid/content/Context;)Lcom/cipherlab/barcode/ReaderManager;

    move-result-object v0

    iput-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->readerManager:Lcom/cipherlab/barcode/ReaderManager;

    .line 73
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/-$$Lambda$CipherLabScannerManager$OF6HliMt9QKsKDMsmrUwgDUcMOw;

    invoke-direct {v1, p0}, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/-$$Lambda$CipherLabScannerManager$OF6HliMt9QKsKDMsmrUwgDUcMOw;-><init>(Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 85
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_38

    :cond_34
    const/4 v1, 0x1

    .line 89
    invoke-virtual {v0, v1}, Lcom/cipherlab/barcode/ReaderManager;->SetActive(Z)Lcom/cipherlab/barcode/decoder/ClResult;

    .line 92
    :goto_38
    invoke-virtual {p0}, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->saveScannerSettings()V

    .line 94
    invoke-virtual {p0}, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;->setServiceScannerSettings()V

    return-void
.end method
