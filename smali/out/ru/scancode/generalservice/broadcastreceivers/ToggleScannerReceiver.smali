.class public Lru/scancode/generalservice/broadcastreceivers/ToggleScannerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ToggleScannerReceiver.java"


# static fields
.field public static final BARCODE_READER:Ljava/lang/String; = "barcode_reader"

.field private static final EXTRA_ENABLED:Ljava/lang/String; = "set_enable"

.field private static final EXTRA_RESTORE:Ljava/lang/String; = "extra_restore"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "barcode_reader"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 34
    invoke-static {}, Lru/scancode/generalservice/services/MainService;->getInstance()Lru/scancode/generalservice/services/MainService;

    move-result-object p1

    if-nez p1, :cond_22

    .line 36
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p1

    const-string p2, "service offline"

    invoke-virtual {p1, p2}, Lru/scancode/generalservice/utils/App;->sendError(Ljava/lang/String;)V

    return-void

    :cond_22
    const-string v0, "set_enable"

    .line 41
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_39

    .line 43
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_35

    .line 44
    invoke-virtual {p1}, Lru/scancode/generalservice/services/MainService;->turnOnScanner()V

    goto :goto_4e

    .line 46
    :cond_35
    invoke-virtual {p1}, Lru/scancode/generalservice/services/MainService;->turnOffScanner()V

    goto :goto_4e

    :cond_39
    const-string p1, "extra_restore"

    .line 49
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 51
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 52
    invoke-static {}, Lru/scancode/generalservice/services/MainService;->getInstance()Lru/scancode/generalservice/services/MainService;

    move-result-object p1

    invoke-virtual {p1}, Lru/scancode/generalservice/services/MainService;->restoreScannerSettings()V

    :cond_4e
    :goto_4e
    return-void
.end method
