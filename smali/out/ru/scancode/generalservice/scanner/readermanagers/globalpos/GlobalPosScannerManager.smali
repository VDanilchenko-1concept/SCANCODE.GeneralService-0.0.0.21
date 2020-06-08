.class public Lru/scancode/generalservice/scanner/readermanagers/globalpos/GlobalPosScannerManager;
.super Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;
.source "GlobalPosScannerManager.java"


# static fields
.field private static final ACTION_SCAN_DISABLE:Ljava/lang/String; = "com.android.scanservice.scan.off"

.field private static final ACTION_SCAN_ENABLE:Ljava/lang/String; = "com.android.scanservice.scan.on"

.field private static final DISABLE_SOUND:Ljava/lang/String; = "com.android.scanservice.sound.off"

.field private static final DISABLE_VIBRATION:Ljava/lang/String; = "com.android.scanservice.vibration.off"

.field private static final ENABLE_EXTRA:Ljava/lang/String; = "enable"

.field private static final END_CHARACTER:Ljava/lang/String; = "com.android.scanservice.end_charather"

.field private static final END_CHAR_EXTRA:Ljava/lang/String; = "end_char"

.field private static final FOREGROUND_OUTPUT_EXTRA:Ljava/lang/String; = "Scan_output_foreground"

.field private static final FOREGROUNT_OUTPUT:Ljava/lang/String; = "com.android.scanservice.output.foreground"

.field private static final KEYUP_MODE:Ljava/lang/String; = "com.android.scanservice.key.up.mode"

.field private static final SCANNER_SLEEP_TIME:Ljava/lang/String; = "com.android.scanservice.sleep.time"

.field private static final SCANNER_SLEEP_TIME_EXTRA:Ljava/lang/String; = "sleep_time"

.field private static final SCANNING_TIMEOUT:Ljava/lang/String; = "com.android.scanservice.timeout"

.field private static final SCANNING_TIMEOUT_EXTRA:Ljava/lang/String; = "time_out"

.field private static final SCAN_BUTTON_ENABLED:Ljava/lang/String; = "com.android.scanservice.scan.button.enabled"

.field private static final SCAN_BUTTON_EXTRA:Ljava/lang/String; = "Scan_button_enabled"

.field private static final TURNOFF_CONTINUOUS:Ljava/lang/String; = "com.android.scanservice.continuous.off"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setServiceScannerSettings()V
    .registers 5

    .line 96
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "setServiceScannerSettings()"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.scanservice.continuous.off"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/globalpos/GlobalPosScannerManager;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.scanservice.scan.button.enabled"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "Scan_button_enabled"

    const/4 v2, 0x1

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/globalpos/GlobalPosScannerManager;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.scanservice.key.up.mode"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "enable"

    .line 106
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    iget-object v2, p0, Lru/scancode/generalservice/scanner/readermanagers/globalpos/GlobalPosScannerManager;->ctx:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.scanservice.end_charather"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "end_char"

    const-string v3, ""

    .line 110
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v2, p0, Lru/scancode/generalservice/scanner/readermanagers/globalpos/GlobalPosScannerManager;->ctx:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.scanservice.timeout"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "time_out"

    const-string v3, "50"

    .line 114
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget-object v2, p0, Lru/scancode/generalservice/scanner/readermanagers/globalpos/GlobalPosScannerManager;->ctx:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.scanservice.sleep.time"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "sleep_time"

    const-string v3, "120"

    .line 118
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    iget-object v2, p0, Lru/scancode/generalservice/scanner/readermanagers/globalpos/GlobalPosScannerManager;->ctx:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.scanservice.output.foreground"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "Scan_output_foreground"

    .line 122
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/globalpos/GlobalPosScannerManager;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.scanservice.sound.off"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/globalpos/GlobalPosScannerManager;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.scanservice.vibration.off"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/globalpos/GlobalPosScannerManager;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public turnOff()V
    .registers 3

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.scanservice.scan.off"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/globalpos/GlobalPosScannerManager;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 90
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "turnOff()"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public turnOn()V
    .registers 3

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.scanservice.scan.on"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/globalpos/GlobalPosScannerManager;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 79
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "turnOn()"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lru/scancode/generalservice/scanner/readermanagers/globalpos/GlobalPosScannerManager;->setServiceScannerSettings()V

    return-void
.end method
