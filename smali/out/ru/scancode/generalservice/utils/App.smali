.class public Lru/scancode/generalservice/utils/App;
.super Landroid/app/Application;
.source "App.java"


# static fields
.field private static final DIRNAME:Ljava/lang/String; = "gss_workspace"

.field private static final DIRPATH:Ljava/lang/String;

.field private static final FILENAME:Ljava/lang/String; = "gss_logs.txt"

.field private static final FILE_WRITER_ERROR:Ljava/lang/String; = "File Writer Error"

.field private static final INNERCLASS:Ljava/lang/String; = "InnerClass"

.field private static final LOGFILEMAXSIZE:I = 0x200000

.field private static final SPASE:Ljava/lang/String; = ": "

.field private static final TAG:Ljava/lang/String; = "gss.logs"

.field private static instance:Lru/scancode/generalservice/utils/App;


# instance fields
.field private dir:Ljava/io/File;

.field private file:Ljava/io/File;

.field private heartBeetReceiver:Lru/scancode/generalservice/broadcastreceivers/HeartBeetReceiver;

.field private printWriter:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "gss_workspace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lru/scancode/generalservice/utils/App;->DIRPATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private createFile()V
    .registers 5

    .line 108
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lru/scancode/generalservice/utils/App;->dir:Ljava/io/File;

    const-string v2, "gss_logs.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lru/scancode/generalservice/utils/App;->file:Ljava/io/File;

    .line 112
    :try_start_b
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lru/scancode/generalservice/utils/App;->file:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    iput-object v0, p0, Lru/scancode/generalservice/utils/App;->printWriter:Ljava/io/PrintWriter;

    .line 114
    invoke-direct {p0}, Lru/scancode/generalservice/utils/App;->scanMediaFiles()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1d} :catch_1e

    goto :goto_25

    :catch_1e
    const-string v0, "gss.logs"

    const-string v1, "File Writer Error"

    .line 117
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    return-void
.end method

.method private createLogDir()V
    .registers 3

    .line 90
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 92
    new-instance v0, Ljava/io/File;

    sget-object v1, Lru/scancode/generalservice/utils/App;->DIRPATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lru/scancode/generalservice/utils/App;->dir:Ljava/io/File;

    .line 94
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_27

    .line 96
    iget-object v0, p0, Lru/scancode/generalservice/utils/App;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 97
    invoke-direct {p0}, Lru/scancode/generalservice/utils/App;->createFile()V

    goto :goto_2a

    .line 100
    :cond_27
    invoke-direct {p0}, Lru/scancode/generalservice/utils/App;->createFile()V

    :cond_2a
    :goto_2a
    return-void
.end method

.method private static getClassName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_b

    .line 211
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const-string p0, "InnerClass"

    return-object p0
.end method

.method public static getInstance()Lru/scancode/generalservice/utils/App;
    .registers 1

    .line 57
    sget-object v0, Lru/scancode/generalservice/utils/App;->instance:Lru/scancode/generalservice/utils/App;

    return-object v0
.end method

.method private message(ILjava/lang/String;)V
    .registers 5

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "gss.logs"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private prepareIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 71
    new-instance p2, Landroid/content/Intent;

    const-string v0, "rfid_tag_action"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "RFID_WRITE_ERROR_EXTRA"

    .line 72
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p2
.end method

.method private scanMediaFiles()V
    .registers 5

    .line 123
    invoke-virtual {p0}, Lru/scancode/generalservice/utils/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lru/scancode/generalservice/utils/App;->file:Ljava/io/File;

    .line 124
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    .line 123
    invoke-static {v0, v1, v2, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 10

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lru/scancode/generalservice/utils/App;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    .line 162
    invoke-direct {p0, v1, v0}, Lru/scancode/generalservice/utils/App;->message(ILjava/lang/String;)V

    .line 166
    :try_start_26
    iget-object v0, p0, Lru/scancode/generalservice/utils/App;->file:Ljava/io/File;

    const/4 v1, 0x1

    if-eqz v0, :cond_58

    iget-object v0, p0, Lru/scancode/generalservice/utils/App;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_58

    .line 172
    :cond_34
    iget-object v0, p0, Lru/scancode/generalservice/utils/App;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x200000

    cmp-long v0, v2, v4

    if-lez v0, :cond_6c

    .line 174
    iget-object v0, p0, Lru/scancode/generalservice/utils/App;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 175
    invoke-direct {p0}, Lru/scancode/generalservice/utils/App;->createLogDir()V

    .line 176
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lru/scancode/generalservice/utils/App;->file:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    iput-object v0, p0, Lru/scancode/generalservice/utils/App;->printWriter:Ljava/io/PrintWriter;

    goto :goto_6c

    .line 168
    :cond_58
    :goto_58
    invoke-direct {p0}, Lru/scancode/generalservice/utils/App;->createLogDir()V

    .line 169
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lru/scancode/generalservice/utils/App;->file:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    iput-object v0, p0, Lru/scancode/generalservice/utils/App;->printWriter:Ljava/io/PrintWriter;

    .line 170
    invoke-direct {p0}, Lru/scancode/generalservice/utils/App;->scanMediaFiles()V

    .line 179
    :cond_6c
    :goto_6c
    iget-object v0, p0, Lru/scancode/generalservice/utils/App;->printWriter:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    invoke-direct {p0}, Lru/scancode/generalservice/utils/App;->scanMediaFiles()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_a6} :catch_a7
    .catch Ljava/lang/NullPointerException; {:try_start_26 .. :try_end_a6} :catch_a7

    goto :goto_b0

    .line 190
    :catch_a7
    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "gss.logs"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    const-string v0, "stub"

    .line 154
    invoke-virtual {p0, v0, p1, p2}, Lru/scancode/generalservice/utils/App;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public info(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lru/scancode/generalservice/utils/App;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    invoke-direct {p0, p2, p1}, Lru/scancode/generalservice/utils/App;->message(ILjava/lang/String;)V

    return-void
.end method

.method public info(Ljava/lang/String;)V
    .registers 3

    const-string v0, "stub"

    .line 143
    invoke-virtual {p0, v0, p1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate()V
    .registers 4

    .line 78
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 80
    sput-object p0, Lru/scancode/generalservice/utils/App;->instance:Lru/scancode/generalservice/utils/App;

    .line 82
    invoke-direct {p0}, Lru/scancode/generalservice/utils/App;->createLogDir()V

    .line 83
    new-instance v0, Lru/scancode/generalservice/broadcastreceivers/HeartBeetReceiver;

    invoke-direct {v0}, Lru/scancode/generalservice/broadcastreceivers/HeartBeetReceiver;-><init>()V

    iput-object v0, p0, Lru/scancode/generalservice/utils/App;->heartBeetReceiver:Lru/scancode/generalservice/broadcastreceivers/HeartBeetReceiver;

    .line 84
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "ping"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lru/scancode/generalservice/utils/App;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onTerminate()V
    .registers 2

    .line 130
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 131
    iget-object v0, p0, Lru/scancode/generalservice/utils/App;->heartBeetReceiver:Lru/scancode/generalservice/broadcastreceivers/HeartBeetReceiver;

    invoke-virtual {p0, v0}, Lru/scancode/generalservice/utils/App;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "onTerminate"

    .line 132
    invoke-virtual {p0, p0, v0}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public sendError(Ljava/lang/String;)V
    .registers 3

    .line 66
    invoke-virtual {p0, p0, p1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    .line 67
    invoke-direct {p0, p1, v0}, Lru/scancode/generalservice/utils/App;->prepareIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/scancode/generalservice/utils/App;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 61
    invoke-virtual {p0, p0, p1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0, p1, p2}, Lru/scancode/generalservice/utils/App;->prepareIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/scancode/generalservice/utils/App;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public toastInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .line 137
    invoke-virtual {p0}, Lru/scancode/generalservice/utils/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 138
    invoke-virtual {p0, p1, p2}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
