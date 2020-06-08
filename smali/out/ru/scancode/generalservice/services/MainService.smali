.class public Lru/scancode/generalservice/services/MainService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "MainService.java"


# static fields
.field private static final EDA:Ljava/lang/String; = "EDA"

.field private static final EPC_EXTRA:Ljava/lang/String; = "epc"

.field private static final NSL_MT65W:Ljava/lang/String; = "NLS-MT65W"

.field private static final PASSWD:Ljava/lang/String; = "00000000"

.field static final RFID_ALL_TAG_ACTION:Ljava/lang/String; = "rfid_read_all_action"

.field public static final RFID_TAG_ACTION:Ljava/lang/String; = "rfid_tag_action"

.field public static final RFID_WRITE_ERROR_EXTRA:Ljava/lang/String; = "RFID_WRITE_ERROR_EXTRA"

.field private static final RSSI_EXTRA:Ljava/lang/String; = "rssi"

.field private static final SD60:Ljava/lang/String; = "SD60"

.field private static final USERDATA_EXTRA:Ljava/lang/String; = "userdata"

.field private static mainServiceInstance:Lru/scancode/generalservice/services/MainService;


# instance fields
.field getLicenceReceiver:Lru/scancode/generalservice/broadcastreceivers/BaseReceiver;

.field getPingReceiver:Lru/scancode/generalservice/broadcastreceivers/BaseReceiver;

.field getSerialReceiver:Lru/scancode/generalservice/broadcastreceivers/BaseReceiver;

.field handler:Landroid/os/Handler;

.field private replyPackage:Ljava/lang/String;

.field private rfidCallback:Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;

.field rfidManager:Lru/scancode/generalservice/rfid/IRfidManager;

.field scannerManager:Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;

.field public sendKeyEvent:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 148
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    .line 114
    new-instance v0, Lru/scancode/generalservice/services/MainService$1;

    invoke-direct {v0, p0}, Lru/scancode/generalservice/services/MainService$1;-><init>(Lru/scancode/generalservice/services/MainService;)V

    iput-object v0, p0, Lru/scancode/generalservice/services/MainService;->rfidCallback:Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;

    .line 149
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "Constructor"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lru/scancode/generalservice/services/MainService;Lru/scancode/generalservice/utils/RfidTag;)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lru/scancode/generalservice/services/MainService;->sendFullRFID(Lru/scancode/generalservice/utils/RfidTag;)V

    return-void
.end method

.method static synthetic access$100(Lru/scancode/generalservice/services/MainService;Ljava/util/List;)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lru/scancode/generalservice/services/MainService;->sendFullRFID(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lru/scancode/generalservice/services/MainService;Lru/scancode/generalservice/utils/RfidTag;)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lru/scancode/generalservice/services/MainService;->sendRFID(Lru/scancode/generalservice/utils/RfidTag;)V

    return-void
.end method

.method static synthetic access$300(Lru/scancode/generalservice/services/MainService;)Ljava/lang/String;
    .registers 1

    .line 54
    iget-object p0, p0, Lru/scancode/generalservice/services/MainService;->replyPackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lru/scancode/generalservice/services/MainService;Ljava/lang/String;)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lru/scancode/generalservice/services/MainService;->sendWriteRFIDResult(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lru/scancode/generalservice/services/MainService;
    .registers 1

    .line 317
    sget-object v0, Lru/scancode/generalservice/services/MainService;->mainServiceInstance:Lru/scancode/generalservice/services/MainService;

    return-object v0
.end method

.method private getModel()Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;
    .registers 7

    .line 198
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 200
    invoke-virtual {p0}, Lru/scancode/generalservice/services/MainService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f030000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 202
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v2, :cond_1f

    aget-object v5, v1, v4

    .line 203
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 204
    sget-object v0, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;->CIPHER_LAB:Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    return-object v0

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_1f
    const-string v1, "EDA"

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 209
    sget-object v0, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;->HONEY_WELL:Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    return-object v0

    .line 212
    :cond_2a
    invoke-virtual {p0}, Lru/scancode/generalservice/services/MainService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 214
    array-length v2, v1

    :goto_36
    if-ge v3, v2, :cond_46

    aget-object v4, v1, v3

    .line 215
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 216
    sget-object v0, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;->SPEED_DATA:Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    return-object v0

    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_46
    const-string v1, "NLS-MT65W"

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 221
    sget-object v0, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;->NEWLAND:Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    return-object v0

    :cond_51
    const-string v1, "PDT-90F"

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8d

    const-string v1, "AUTOID Q7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    goto :goto_8d

    .line 228
    :cond_62
    invoke-virtual {p0}, Lru/scancode/generalservice/services/MainService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->equalsAnyIgnoreCase(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 229
    sget-object v0, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;->GLOBAL_POS:Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    return-object v0

    .line 231
    :cond_76
    invoke-virtual {p0}, Lru/scancode/generalservice/services/MainService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->equalsAnyIgnoreCase(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 232
    sget-object v0, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;->ANDROID_EMULATOR:Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    return-object v0

    .line 235
    :cond_8a
    sget-object v0, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;->STUB_SCANNER:Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    return-object v0

    .line 225
    :cond_8d
    :goto_8d
    sget-object v0, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;->SEUIC:Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    return-object v0
.end method

.method private sendFullRFID(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/scancode/generalservice/utils/RfidTag;",
            ">;)V"
        }
    .end annotation

    .line 522
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "\u041e\u0442\u043f\u0440\u0430\u0432\u043a\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0443 \u043c\u0435\u0442\u043a\u0438 \u0441\u043e \u0432\u0441\u0435\u043c\u0438 \u043f\u043e\u043b\u044f\u043c\u0438"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 525
    iget-object v1, p0, Lru/scancode/generalservice/services/MainService;->replyPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v1

    const-string v2, "\u041c\u0430\u0441\u0441\u043e\u0432\u0430\u044f \u043e\u0442\u043f\u0440\u0430\u0432\u043a\u0430..."

    invoke-virtual {v1, p0, v2}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "rfid_read_all_action"

    .line 527
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    invoke-static {p1}, Lru/scancode/generalservice/utils/RfidTag;->getXMLTable(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "userdata"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    invoke-virtual {p0, v0}, Lru/scancode/generalservice/services/MainService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendFullRFID(Lru/scancode/generalservice/utils/RfidTag;)V
    .registers 5

    .line 508
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "\u041e\u0442\u043f\u0440\u0430\u0432\u043a\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0443 \u043c\u0435\u0442\u043a\u0438 \u0441\u043e \u0432\u0441\u0435\u043c\u0438 \u043f\u043e\u043b\u044f\u043c\u0438"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 511
    iget-object v1, p0, Lru/scancode/generalservice/services/MainService;->replyPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "rfid_tag_action"

    .line 513
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    invoke-static {p1}, Lru/scancode/generalservice/utils/RfidTag;->getXMLTable(Lru/scancode/generalservice/utils/RfidTag;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "userdata"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    invoke-virtual {p1}, Lru/scancode/generalservice/utils/RfidTag;->getEpc()Ljava/lang/String;

    move-result-object p1

    const-string v1, "epc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    invoke-virtual {p0, v0}, Lru/scancode/generalservice/services/MainService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendRFID(Lru/scancode/generalservice/utils/RfidTag;)V
    .registers 5

    .line 489
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "rfid_tag_action"

    .line 491
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    iget-object v1, p0, Lru/scancode/generalservice/services/MainService;->replyPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    invoke-virtual {p1}, Lru/scancode/generalservice/utils/RfidTag;->getEpc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "epc"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    invoke-virtual {p1}, Lru/scancode/generalservice/utils/RfidTag;->getRssi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rssi"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    invoke-virtual {p0, v0}, Lru/scancode/generalservice/services/MainService;->sendBroadcast(Landroid/content/Intent;)V

    .line 498
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lru/scancode/generalservice/utils/RfidTag;->getEpc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/String;)V

    return-void
.end method

.method private sendWriteRFIDResult(Ljava/lang/String;)V
    .registers 4

    .line 590
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "rfid_write_action"

    .line 591
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    iget-object v1, p0, Lru/scancode/generalservice/services/MainService;->replyPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_16

    const-string v1, "RFID_WRITE_ERROR_EXTRA"

    .line 595
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    :cond_16
    invoke-virtual {p0, v0}, Lru/scancode/generalservice/services/MainService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setTimeout()V
    .registers 6

    .line 461
    iget-object v0, p0, Lru/scancode/generalservice/services/MainService;->handler:Landroid/os/Handler;

    new-instance v1, Lru/scancode/generalservice/services/-$$Lambda$MainService$F7fm27pkxbue2jTAvYJtTCI8D18;

    invoke-direct {v1, p0}, Lru/scancode/generalservice/services/-$$Lambda$MainService$F7fm27pkxbue2jTAvYJtTCI8D18;-><init>(Lru/scancode/generalservice/services/MainService;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    .line 464
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 461
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public commonReadUserData(Ljava/lang/String;)V
    .registers 5

    .line 539
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commonReadUserData, EPC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "all"

    goto :goto_18

    :cond_17
    move-object v2, p1

    :goto_18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lru/scancode/generalservice/services/MainService;->rfidManager:Lru/scancode/generalservice/rfid/IRfidManager;

    if-eqz v0, :cond_2b

    .line 544
    iget-object v1, p0, Lru/scancode/generalservice/services/MainService;->rfidCallback:Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;

    invoke-interface {v0, p1, v1}, Lru/scancode/generalservice/rfid/IRfidManager;->read(Ljava/lang/String;Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;)V

    :cond_2b
    return-void
.end method

.method public getScanManager()Lru/scancode/generalservice/scanner/IScannerManager;
    .registers 2

    .line 337
    iget-object v0, p0, Lru/scancode/generalservice/services/MainService;->scannerManager:Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;

    return-object v0
.end method

.method public getScannerManager()Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;
    .registers 2

    .line 321
    iget-object v0, p0, Lru/scancode/generalservice/services/MainService;->scannerManager:Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;

    return-object v0
.end method

.method public getScannerSettings()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lru/scancode/generalservice/services/MainService;->scannerManager:Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;

    invoke-virtual {v0}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;->getScannerSettings()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$setTimeout$0$MainService()V
    .registers 3

    .line 462
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "\u0421\u0435\u0440\u0432\u0438\u0441 IUHF \u0431\u044b\u043b \u043e\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d \u043f\u043e timeout\'\u0443 5 \u043c\u0438\u043d\u0443\u0442"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0}, Lru/scancode/generalservice/services/MainService;->stopRFIDScan()V

    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    return-void
.end method

.method public onCreate()V
    .registers 3

    .line 154
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onCreate()V

    .line 155
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "onCreate"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 651
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    .line 652
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "onDestroy"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lru/scancode/generalservice/services/MainService;->getSerialReceiver:Lru/scancode/generalservice/broadcastreceivers/BaseReceiver;

    invoke-virtual {p0, v0}, Lru/scancode/generalservice/services/MainService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 655
    iget-object v0, p0, Lru/scancode/generalservice/services/MainService;->getLicenceReceiver:Lru/scancode/generalservice/broadcastreceivers/BaseReceiver;

    invoke-virtual {p0, v0}, Lru/scancode/generalservice/services/MainService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 656
    iget-object v0, p0, Lru/scancode/generalservice/services/MainService;->getPingReceiver:Lru/scancode/generalservice/broadcastreceivers/BaseReceiver;

    invoke-virtual {p0, v0}, Lru/scancode/generalservice/services/MainService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 658
    iget-object v0, p0, Lru/scancode/generalservice/services/MainService;->scannerManager:Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;

    invoke-virtual {v0}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;->release()V

    .line 664
    invoke-virtual {p0}, Lru/scancode/generalservice/services/MainService;->turnOffRFIDScanner()V

    return-void
.end method

.method public onInterrupt()V
    .registers 3

    .line 688
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "onInterrupt"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected onKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 670
    iget-boolean v0, p0, Lru/scancode/generalservice/services/MainService;->sendKeyEvent:Z

    if-eqz v0, :cond_21

    .line 671
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "keyboard"

    .line 672
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_key_event"

    .line 673
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 675
    invoke-virtual {p0, v0}, Lru/scancode/generalservice/services/MainService;->sendBroadcast(Landroid/content/Intent;)V

    .line 677
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_21
    const/4 p1, 0x0

    return p1
.end method

.method protected onServiceConnected()V
    .registers 4

    .line 166
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    .line 167
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "onServiceConnected"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    sput-object p0, Lru/scancode/generalservice/services/MainService;->mainServiceInstance:Lru/scancode/generalservice/services/MainService;

    .line 171
    invoke-virtual {p0}, Lru/scancode/generalservice/services/MainService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lru/scancode/generalservice/services/MainService;->getModel()Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    move-result-object v1

    invoke-static {v0, v1}, Lru/scancode/generalservice/scanner/ScannerManagerFactory;->create(Landroid/content/Context;Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;)Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;

    move-result-object v0

    iput-object v0, p0, Lru/scancode/generalservice/services/MainService;->scannerManager:Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;

    .line 174
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "ask_serial"

    .line 175
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    new-instance v1, Lru/scancode/generalservice/broadcastreceivers/GetSerialNumberReceiver;

    invoke-direct {v1}, Lru/scancode/generalservice/broadcastreceivers/GetSerialNumberReceiver;-><init>()V

    iput-object v1, p0, Lru/scancode/generalservice/services/MainService;->getSerialReceiver:Lru/scancode/generalservice/broadcastreceivers/BaseReceiver;

    .line 179
    invoke-virtual {p0, v1, v0}, Lru/scancode/generalservice/services/MainService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    new-instance v0, Lru/scancode/generalservice/broadcastreceivers/GetLicReceiver;

    invoke-direct {v0}, Lru/scancode/generalservice/broadcastreceivers/GetLicReceiver;-><init>()V

    iput-object v0, p0, Lru/scancode/generalservice/services/MainService;->getLicenceReceiver:Lru/scancode/generalservice/broadcastreceivers/BaseReceiver;

    .line 184
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "get_license"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lru/scancode/generalservice/services/MainService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    new-instance v0, Lru/scancode/generalservice/broadcastreceivers/PingReceiver;

    invoke-direct {v0}, Lru/scancode/generalservice/broadcastreceivers/PingReceiver;-><init>()V

    iput-object v0, p0, Lru/scancode/generalservice/services/MainService;->getPingReceiver:Lru/scancode/generalservice/broadcastreceivers/BaseReceiver;

    .line 188
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "ping"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lru/scancode/generalservice/services/MainService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SD60"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0, v0}, Lru/scancode/generalservice/services/MainService;->turnOnRFIDScanner(Ljava/lang/String;)V

    :cond_60
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6

    .line 160
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "onStartCommand"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-super {p0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 5

    .line 643
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnbind, intent action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    goto :goto_1b

    :cond_19
    const-string v2, ""

    :goto_1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 644
    sput-object v0, Lru/scancode/generalservice/services/MainService;->mainServiceInstance:Lru/scancode/generalservice/services/MainService;

    .line 646
    invoke-super {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public prinfScanConfig()V
    .registers 2

    .line 341
    iget-object v0, p0, Lru/scancode/generalservice/services/MainService;->scannerManager:Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;

    invoke-virtual {v0}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;->printScannerConfig()V

    return-void
.end method

.method public restoreScannerSettings()V
    .registers 2

    .line 692
    iget-object v0, p0, Lru/scancode/generalservice/services/MainService;->scannerManager:Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;

    invoke-virtual {v0}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;->restoreScannerSettings()V

    return-void
.end method

.method public setReply(Ljava/lang/String;)V
    .registers 5

    .line 422
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReply, \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d \u043e\u0431\u0440\u0430\u0442\u043d\u044b\u0439 \u0430\u0434\u0440\u0435\u0441, \u0438\u043c\u044f \u043f\u0430\u043a\u0435\u0442\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    iput-object p1, p0, Lru/scancode/generalservice/services/MainService;->replyPackage:Ljava/lang/String;

    return-void
.end method

.method public startRFIDScan()V
    .registers 3

    .line 429
    iget-object v0, p0, Lru/scancode/generalservice/services/MainService;->handler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 431
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lru/scancode/generalservice/services/MainService;->handler:Landroid/os/Handler;

    .line 432
    invoke-direct {p0}, Lru/scancode/generalservice/services/MainService;->setTimeout()V

    goto :goto_16

    :cond_f
    const/4 v1, 0x0

    .line 435
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 436
    invoke-direct {p0}, Lru/scancode/generalservice/services/MainService;->setTimeout()V

    .line 439
    :goto_16
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "startRFIDScan"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lru/scancode/generalservice/services/MainService;->rfidManager:Lru/scancode/generalservice/rfid/IRfidManager;

    if-eqz v0, :cond_28

    .line 442
    iget-object v1, p0, Lru/scancode/generalservice/services/MainService;->rfidCallback:Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;

    invoke-interface {v0, v1}, Lru/scancode/generalservice/rfid/IRfidManager;->startScan(Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;)V

    :cond_28
    return-void
.end method

.method public stopRFIDScan()V
    .registers 3

    .line 470
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "stopRFIDScan"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lru/scancode/generalservice/services/MainService;->rfidManager:Lru/scancode/generalservice/rfid/IRfidManager;

    if-eqz v0, :cond_10

    .line 473
    invoke-interface {v0}, Lru/scancode/generalservice/rfid/IRfidManager;->stopScan()V

    :cond_10
    return-void
.end method

.method public turnOffRFIDScanner()V
    .registers 3

    .line 400
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "Close RFID scanner"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lru/scancode/generalservice/services/MainService;->rfidManager:Lru/scancode/generalservice/rfid/IRfidManager;

    if-eqz v0, :cond_10

    .line 402
    invoke-interface {v0}, Lru/scancode/generalservice/rfid/IRfidManager;->closeDevice()V

    :cond_10
    return-void
.end method

.method public turnOffScanner()V
    .registers 2

    .line 329
    iget-object v0, p0, Lru/scancode/generalservice/services/MainService;->scannerManager:Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;

    invoke-virtual {v0}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;->turnOff()V

    return-void
.end method

.method public turnOnRFIDScanner(Ljava/lang/String;)V
    .registers 4

    .line 351
    iput-object p1, p0, Lru/scancode/generalservice/services/MainService;->replyPackage:Ljava/lang/String;

    .line 353
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p1

    const-string v0, "Open RFID scanner"

    invoke-virtual {p1, p0, v0}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p0, p1}, Lru/scancode/generalservice/rfid/RfidManagerFactory;->getRfidManager(Landroid/content/Context;Ljava/lang/String;)Lru/scancode/generalservice/rfid/IRfidManager;

    move-result-object p1

    iput-object p1, p0, Lru/scancode/generalservice/services/MainService;->rfidManager:Lru/scancode/generalservice/rfid/IRfidManager;

    .line 355
    iget-object v0, p0, Lru/scancode/generalservice/services/MainService;->rfidCallback:Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;

    const/16 v1, 0x1388

    invoke-interface {p1, v0, v1}, Lru/scancode/generalservice/rfid/IRfidManager;->openDevice(Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;I)V

    return-void
.end method

.method public turnOnScanner()V
    .registers 2

    .line 325
    iget-object v0, p0, Lru/scancode/generalservice/services/MainService;->scannerManager:Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;

    invoke-virtual {v0}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;->turnOn()V

    return-void
.end method

.method public writeRFIDTag(Ljava/lang/String;IILjava/lang/String;I)V
    .registers 13

    .line 612
    iget-object v0, p0, Lru/scancode/generalservice/services/MainService;->rfidManager:Lru/scancode/generalservice/rfid/IRfidManager;

    if-eqz v0, :cond_e

    .line 613
    iget-object v6, p0, Lru/scancode/generalservice/services/MainService;->rfidCallback:Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lru/scancode/generalservice/rfid/IRfidManager;->write(Ljava/lang/String;IILjava/lang/String;ILru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;)V

    :cond_e
    return-void
.end method
