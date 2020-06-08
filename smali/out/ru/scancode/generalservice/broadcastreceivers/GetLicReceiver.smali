.class public Lru/scancode/generalservice/broadcastreceivers/GetLicReceiver;
.super Lru/scancode/generalservice/broadcastreceivers/BaseReceiver;
.source "GetLicReceiver.java"


# static fields
.field private static final EXTRA_REPLY_TO:Ljava/lang/String; = "extra_reply"

.field private static final EXTRA_SILENT_MODE:Ljava/lang/String; = "extra_silent_mode"

.field private static final WRITERLCN:Ljava/lang/String; = "ru.scancode.ag.writerlcn"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lru/scancode/generalservice/broadcastreceivers/BaseReceiver;-><init>()V

    return-void
.end method

.method private isLicFileExist(Landroid/content/Context;)Z
    .registers 4

    .line 53
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "l.lcn"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    return p1
.end method

.method private requestLicence(Landroid/content/Context;)V
    .registers 5

    .line 60
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "Send broadcast to WriteLic for licence file creator"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "ACTION_SILENT_INVOKE"

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ru.scancode.ag.writerlcn"

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "extra_silent_mode"

    const/4 v2, 0x1

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_reply"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 35
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get broadcast intent with action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "get_license"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    const-string v0, "extra_reply"

    .line 39
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 41
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lic file is exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lru/scancode/generalservice/broadcastreceivers/GetLicReceiver;->isLicFileExist(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, p1}, Lru/scancode/generalservice/broadcastreceivers/GetLicReceiver;->isLicFileExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 45
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lru/scancode/generalservice/broadcastreceivers/GetLicReceiver;->sendLicence(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_63

    .line 47
    :cond_60
    invoke-direct {p0, p1}, Lru/scancode/generalservice/broadcastreceivers/GetLicReceiver;->requestLicence(Landroid/content/Context;)V

    :cond_63
    :goto_63
    return-void
.end method
