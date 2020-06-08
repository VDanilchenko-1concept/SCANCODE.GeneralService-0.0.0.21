.class final Lcom/speedata/libuhf/UHFManager$1;
.super Ljava/util/TimerTask;
.source "UHFManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/speedata/libuhf/UHFManager;->createTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 108
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    const-string v1, "sys/class/power_supply/battery/batt_vol"

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-static {v0}, Lcom/speedata/libuhf/UHFManager;->access$000(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_f} :catch_4d

    int-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    .line 111
    :try_start_19
    invoke-static {}, Lcom/speedata/libuhf/UHFManager;->access$100()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/speedata/libuhf/utils/SharedXmlUtil;->getInstance(Landroid/content/Context;)Lcom/speedata/libuhf/utils/SharedXmlUtil;

    move-result-object v2

    const-string v3, "AntennaPower"

    const/16 v4, 0x1e

    invoke-virtual {v2, v3, v4}, Lcom/speedata/libuhf/utils/SharedXmlUtil;->read(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "zzc:"

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "battVolt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " antennaPower\uff1a"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u4e00\u76f4\u68c0\u6d4b\uff1a"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_4c} :catch_4d

    goto :goto_51

    :catch_4d
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_51
    return-void
.end method
