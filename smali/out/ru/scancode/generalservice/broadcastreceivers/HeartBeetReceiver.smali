.class public Lru/scancode/generalservice/broadcastreceivers/HeartBeetReceiver;
.super Lru/scancode/generalservice/broadcastreceivers/BaseReceiver;
.source "HeartBeetReceiver.java"


# static fields
.field public static final ACTION_PING:Ljava/lang/String; = "ping"

.field private static final ACTION_PONG:Ljava/lang/String; = "pong"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lru/scancode/generalservice/broadcastreceivers/BaseReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    const-string v1, "ping"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 19
    invoke-static {}, Lru/scancode/generalservice/services/MainService;->getInstance()Lru/scancode/generalservice/services/MainService;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 20
    invoke-virtual {v0}, Lru/scancode/generalservice/services/MainService;->getScanManager()Lru/scancode/generalservice/scanner/IScannerManager;

    move-result-object v0

    if-eqz v0, :cond_36

    const-string v0, "extra_reply"

    const-string v1, ""

    if-eqz p2, :cond_28

    .line 21
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    :cond_28
    new-instance p2, Landroid/content/Intent;

    const-string v2, "pong"

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_36
    return-void
.end method
