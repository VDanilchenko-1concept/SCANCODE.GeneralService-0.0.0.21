.class public Lru/scancode/generalservice/broadcastreceivers/PowerOnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerOnReceiver.java"


# static fields
.field private static final AUTOSTART_DISABLED:Ljava/lang/String; = "GeneralScanService autostart disabled"

.field private static final AUTOSTART_ENABLED:Ljava/lang/String; = "GeneralScanService autostart enabled"

.field private static final HIGHT_SDK:Ljava/lang/String; = "Android SDK 26+ service started..."

.field private static final LOW_SDK:Ljava/lang/String; = "Android SDK <26 service started..."


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 29
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "autostart"

    .line 31
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 33
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p1

    const-string v0, "GeneralScanService autostart enabled"

    invoke-virtual {p1, p0, v0}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_51

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    .line 37
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x19

    if-le p1, p2, :cond_3e

    .line 38
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p1

    const-string p2, "Android SDK 26+ service started..."

    invoke-virtual {p1, p0, p2}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_51

    .line 41
    :cond_3e
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p1

    const-string p2, "Android SDK <26 service started..."

    invoke-virtual {p1, p0, p2}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_51

    .line 47
    :cond_48
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p1

    const-string p2, "GeneralScanService autostart disabled"

    invoke-virtual {p1, p0, p2}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_51
    :goto_51
    return-void
.end method
