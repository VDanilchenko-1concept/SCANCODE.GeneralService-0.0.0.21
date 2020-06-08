.class public abstract Lru/scancode/generalservice/broadcastreceivers/BaseReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseReceiver.java"


# static fields
.field static final ACTION_SILENT_INVOKE:Ljava/lang/String; = "ACTION_SILENT_INVOKE"

.field static final EXTRA_LICENCE:Ljava/lang/String; = "extra_license"

.field static final EXTRA_REPLY:Ljava/lang/String; = "extra_reply"

.field public static final GET_LICENCE:Ljava/lang/String; = "get_license"

.field public static final LICFILENAME:Ljava/lang/String; = "l.lcn"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method sendLicence(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .line 37
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "l.lcn"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v2, v1

    new-array v1, v2, [B

    .line 43
    :try_start_12
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 44
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 45
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_1e

    goto :goto_28

    :catch_1e
    move-exception v0

    .line 48
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v2

    const-string v3, "Error while read lic file"

    invoke-virtual {v2, p0, v3, v0}, Lru/scancode/generalservice/utils/App;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 51
    :goto_28
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "get_license"

    .line 52
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "extra_license"

    .line 54
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
