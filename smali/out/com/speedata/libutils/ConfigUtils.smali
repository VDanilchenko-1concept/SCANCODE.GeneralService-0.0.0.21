.class public Lcom/speedata/libutils/ConfigUtils;
.super Ljava/lang/Object;
.source "ConfigUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isConfigFileExists()Z
    .registers 1

    .line 24
    invoke-static {}, Lcom/speedata/libutils/FileUtils;->fileExists()Z

    move-result v0

    return v0
.end method

.method public static readConfig(Landroid/content/Context;)Lcom/speedata/libutils/ReadBean;
    .registers 2

    .line 29
    invoke-static {}, Lcom/speedata/libutils/CommonUtils;->isExists()Z

    move-result v0

    if-nez v0, :cond_13

    .line 30
    invoke-static {p0}, Lcom/speedata/libutils/CommonUtils;->getFromAssets(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-class v0, Lcom/speedata/libutils/ReadBean;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/speedata/libutils/ReadBean;

    goto :goto_1f

    .line 32
    :cond_13
    invoke-static {}, Lcom/speedata/libutils/CommonUtils;->readTxtFile()Ljava/lang/String;

    move-result-object p0

    const-class v0, Lcom/speedata/libutils/ReadBean;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/speedata/libutils/ReadBean;

    :goto_1f
    return-object p0
.end method

.method public static writeConfig(Lcom/speedata/libutils/ReadBean;)Z
    .registers 1

    .line 44
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 45
    invoke-static {p0}, Lcom/speedata/libutils/CommonUtils;->writeTxtFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
