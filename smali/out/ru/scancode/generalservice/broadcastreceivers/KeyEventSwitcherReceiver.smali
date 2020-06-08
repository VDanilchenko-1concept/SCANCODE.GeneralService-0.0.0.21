.class public Lru/scancode/generalservice/broadcastreceivers/KeyEventSwitcherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KeyEventSwitcherReceiver.java"


# static fields
.field private static final EXTRA_ENABLED:Ljava/lang/String; = "set_enable"

.field public static final KEY_EVENT_ACTION:Ljava/lang/String; = "keyboard"

.field public static final KEY_EVENT_EXTRA:Ljava/lang/String; = "extra_key_event"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2b

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "keyboard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    const-string p1, "set_enable"

    .line 28
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 30
    invoke-static {}, Lru/scancode/generalservice/services/MainService;->getInstance()Lru/scancode/generalservice/services/MainService;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 32
    invoke-static {}, Lru/scancode/generalservice/services/MainService;->getInstance()Lru/scancode/generalservice/services/MainService;

    move-result-object v0

    const/4 v1, 0x0

    .line 33
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lru/scancode/generalservice/services/MainService;->sendKeyEvent:Z

    :cond_2b
    return-void
.end method
