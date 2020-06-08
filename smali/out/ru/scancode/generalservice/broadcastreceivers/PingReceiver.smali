.class public Lru/scancode/generalservice/broadcastreceivers/PingReceiver;
.super Lru/scancode/generalservice/broadcastreceivers/BaseReceiver;
.source "PingReceiver.java"


# static fields
.field private static final EXTRA_REPLY_TO:Ljava/lang/String; = "extra_reply"

.field public static final PING:Ljava/lang/String; = "ping"

.field private static final PONG:Ljava/lang/String; = "pong"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lru/scancode/generalservice/broadcastreceivers/BaseReceiver;-><init>()V

    return-void
.end method

.method private isMyServiceRunning(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "activity"

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const v0, 0x7fffffff

    .line 52
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 54
    const-class v1, Lru/scancode/generalservice/services/MainService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 p1, 0x1

    return p1

    :cond_33
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_59

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ping"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    const-string v0, "extra_reply"

    .line 30
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 32
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041f\u0440\u0438\u0448\u0451\u043b ping-\u043f\u0430\u043a\u0435\u0442 \u043e\u0442 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lru/scancode/generalservice/services/MainService;->getInstance()Lru/scancode/generalservice/services/MainService;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 36
    invoke-static {}, Lru/scancode/generalservice/services/MainService;->getInstance()Lru/scancode/generalservice/services/MainService;

    move-result-object v0

    invoke-virtual {v0}, Lru/scancode/generalservice/services/MainService;->getScannerManager()Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 38
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "pong"

    .line 39
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 43
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p1

    const-string p2, "\u0421\u0435\u0440\u0432\u0438\u0441 \u0437\u0430\u043f\u0443\u0449\u0435\u043d"

    invoke-virtual {p1, p2}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/String;)V

    :cond_59
    return-void
.end method
