.class public Lcom/scandecode/ScanDecode;
.super Ljava/lang/Object;
.source "ScanDecode.java"

# interfaces
.implements Lcom/scandecode/inf/ScanInterface;


# static fields
.field private static final RECE_DATA_ACTION:Ljava/lang/String; = "com.se4500.onDecodeComplete"

.field private static final SERVICE_6603:Ljava/lang/String; = "com.geomobile.oemscanservice"

.field private static final SERVICE_ELSE:Ljava/lang/String; = "com.geomobile.BarcodeService"

.field private static final START_SCAN_ACTION:Ljava/lang/String; = "com.geomobile.se4500barcode"

.field private static final STOP_SCAN:Ljava/lang/String; = "com.geomobile.se4500barcodestop"


# instance fields
.field private TAG:Ljava/lang/String;

.field private isFlag:Z

.field private listener:Lcom/scandecode/inf/ScanInterface$OnScanListener;

.field private myContext:Landroid/content/Context;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private scanmode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "scandecode"

    .line 35
    iput-object v0, p0, Lcom/scandecode/ScanDecode;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/scandecode/ScanDecode;->isFlag:Z

    const-string v0, ""

    .line 38
    iput-object v0, p0, Lcom/scandecode/ScanDecode;->scanmode:Ljava/lang/String;

    .line 187
    new-instance v0, Lcom/scandecode/ScanDecode$1;

    invoke-direct {v0, p0}, Lcom/scandecode/ScanDecode$1;-><init>(Lcom/scandecode/ScanDecode;)V

    iput-object v0, p0, Lcom/scandecode/ScanDecode;->receiver:Landroid/content/BroadcastReceiver;

    .line 41
    iput-object p1, p0, Lcom/scandecode/ScanDecode;->myContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/scandecode/ScanDecode;)Lcom/scandecode/inf/ScanInterface$OnScanListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/scandecode/ScanDecode;->listener:Lcom/scandecode/inf/ScanInterface$OnScanListener;

    return-object p0
.end method

.method private sendBroadcasts(Ljava/lang/String;)V
    .registers 3

    .line 182
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 183
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    iget-object p1, p0, Lcom/scandecode/ScanDecode;->myContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private startScanService(Ljava/lang/String;)V
    .registers 3

    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 52
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    iget-object p1, p0, Lcom/scandecode/ScanDecode;->myContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private stopScanService(Ljava/lang/String;)V
    .registers 3

    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 63
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    iget-object p1, p0, Lcom/scandecode/ScanDecode;->myContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public getBarCode(Lcom/scandecode/inf/ScanInterface$OnScanListener;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/scandecode/ScanDecode;->listener:Lcom/scandecode/inf/ScanInterface$OnScanListener;

    return-void
.end method

.method public initService(Ljava/lang/String;)V
    .registers 7

    const-string v0, "persisy.sys.scankeydisable"

    .line 89
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "one"

    const-string v0, "persist.sys.scanmode"

    .line 91
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "ScanDecode: "

    const-string v3, "two"

    if-eqz v1, :cond_33

    .line 92
    iput-object p1, p0, Lcom/scandecode/ScanDecode;->scanmode:Ljava/lang/String;

    .line 93
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Lcom/scandecode/ScanDecode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/scandecode/ScanDecode;->scanmode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    .line 95
    :cond_33
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "three"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 96
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iput-object v4, p0, Lcom/scandecode/ScanDecode;->scanmode:Ljava/lang/String;

    .line 98
    iget-object p1, p0, Lcom/scandecode/ScanDecode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/scandecode/ScanDecode;->scanmode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    .line 99
    :cond_5b
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 100
    iput-object v3, p0, Lcom/scandecode/ScanDecode;->scanmode:Ljava/lang/String;

    .line 101
    iget-object p1, p0, Lcom/scandecode/ScanDecode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/scandecode/ScanDecode;->scanmode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_7d
    :goto_7d
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.se4500.onDecodeComplete"

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/scandecode/ScanDecode;->myContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/scandecode/ScanDecode;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .registers 4

    .line 157
    iget-object v0, p0, Lcom/scandecode/ScanDecode;->myContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/scandecode/ScanDecode;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 167
    iget-object v0, p0, Lcom/scandecode/ScanDecode;->scanmode:Ljava/lang/String;

    const-string v1, "one"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "persist.sys.scanmode"

    if-eqz v0, :cond_17

    .line 168
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 169
    :cond_17
    iget-object v0, p0, Lcom/scandecode/ScanDecode;->scanmode:Ljava/lang/String;

    const-string v1, "two"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 170
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 171
    :cond_25
    iget-object v0, p0, Lcom/scandecode/ScanDecode;->scanmode:Ljava/lang/String;

    const-string v1, "three"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 172
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    :cond_33
    const-string v0, ""

    .line 174
    iput-object v0, p0, Lcom/scandecode/ScanDecode;->scanmode:Ljava/lang/String;

    :goto_37
    const-string v0, "persisy.sys.scankeydisable"

    const-string v1, "false"

    .line 177
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public starScan()V
    .registers 4

    const-string v0, "com.geomobile.se4500barcodestop"

    .line 112
    invoke-direct {p0, v0}, Lcom/scandecode/ScanDecode;->sendBroadcasts(Ljava/lang/String;)V

    const-string v0, "persist.sys.scanstopimme"

    const-string v1, "true"

    .line 113
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/scandecode/ScanDecode;->TAG:Ljava/lang/String;

    const-string v2, "stop"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x14

    .line 115
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 116
    iget-object v1, p0, Lcom/scandecode/ScanDecode;->TAG:Ljava/lang/String;

    const-string v2, "start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "false"

    .line 117
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.geomobile.se4500barcode"

    .line 118
    invoke-direct {p0, v0}, Lcom/scandecode/ScanDecode;->sendBroadcasts(Ljava/lang/String;)V

    return-void
.end method

.method public stopScan()V
    .registers 5

    const-string v0, "persist.sys.scanheadtype"

    .line 123
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "6603"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "com.geomobile.se4500barcodestop"

    .line 124
    invoke-direct {p0, v0}, Lcom/scandecode/ScanDecode;->sendBroadcasts(Ljava/lang/String;)V

    const-string v0, "persist.sys.scanstopimme"

    const-string v1, "true"

    .line 125
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    :cond_1b
    :try_start_1b
    const-string v0, "persist.sys.startscan"

    const-string v1, "false"

    .line 128
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/driver/scan"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const-string v0, "trigoff"

    .line 131
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 133
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_44
    return-void
.end method
