.class public Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellIntentScannerManager;
.super Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;
.source "HoneyWellIntentScannerManager.java"


# static fields
.field private static final ACTION_BARCODE_DATA:Ljava/lang/String; = "com.honeywell.sample.action.BARCODE_DATA"

.field private static final ACTION_CLAIM_SCANNER:Ljava/lang/String; = "com.honeywell.aidc.action.ACTION_CLAIM_SCANNER"

.field private static final ACTION_RELEASE_SCANNER:Ljava/lang/String; = "com.honeywell.aidc.action.ACTION_RELEASE_SCANNER"

.field private static final DCS_SCANNER_IMAGER:Ljava/lang/String; = "dcs.scanner.imager"

.field private static final DEFAULT:Ljava/lang/String; = "DEFAULT"

.field private static final DPR_DATA_INTENT:Ljava/lang/String; = "DPR_DATA_INTENT"

.field private static final DPR_DATA_INTENT_ACTION:Ljava/lang/String; = "DPR_DATA_INTENT_ACTION"

.field private static final EXTRA_PROFILE:Ljava/lang/String; = "com.honeywell.aidc.extra.EXTRA_PROFILE"

.field private static final EXTRA_PROPERTIES:Ljava/lang/String; = "com.honeywell.aidc.extra.EXTRA_PROPERTIES"

.field private static final EXTRA_SCANNER:Ljava/lang/String; = "com.honeywell.aidc.extra.EXTRA_SCANNER"

.field private static final packageName:Ljava/lang/String; = "com.intermec.datacollectionservice"


# instance fields
.field private barcodeDataReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 78
    invoke-direct {p0, p1}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance p1, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellIntentScannerManager$1;

    invoke-direct {p1, p0}, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellIntentScannerManager$1;-><init>(Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellIntentScannerManager;)V

    iput-object p1, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellIntentScannerManager;->barcodeDataReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellIntentScannerManager;)Landroid/content/Context;
    .registers 1

    .line 19
    iget-object p0, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellIntentScannerManager;->ctx:Landroid/content/Context;

    return-object p0
.end method

.method private claimScanner()V
    .registers 6

    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DPR_DATA_INTENT"

    const/4 v2, 0x1

    .line 98
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "DPR_DATA_INTENT_ACTION"

    const-string v2, "com.honeywell.sample.action.BARCODE_DATA"

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellIntentScannerManager;->ctx:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.honeywell.aidc.action.ACTION_CLAIM_SCANNER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.intermec.datacollectionservice"

    .line 102
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.honeywell.aidc.extra.EXTRA_SCANNER"

    const-string v4, "dcs.scanner.imager"

    .line 103
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.honeywell.aidc.extra.EXTRA_PROFILE"

    const-string v4, "DEFAULT"

    .line 104
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.honeywell.aidc.extra.EXTRA_PROPERTIES"

    .line 105
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 101
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public turnOff()V
    .registers 4

    .line 90
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "turnOff()"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellIntentScannerManager;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellIntentScannerManager;->barcodeDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 92
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellIntentScannerManager;->ctx:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.honeywell.aidc.action.ACTION_RELEASE_SCANNER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.intermec.datacollectionservice"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public turnOn()V
    .registers 5

    .line 83
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "turnOn()"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellIntentScannerManager;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellIntentScannerManager;->barcodeDataReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.honeywell.sample.action.BARCODE_DATA"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    invoke-direct {p0}, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellIntentScannerManager;->claimScanner()V

    return-void
.end method
