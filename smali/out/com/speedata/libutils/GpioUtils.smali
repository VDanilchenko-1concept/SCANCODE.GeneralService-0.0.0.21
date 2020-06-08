.class public Lcom/speedata/libutils/GpioUtils;
.super Ljava/lang/Object;
.source "GpioUtils.java"


# static fields
.field public static MAIN:Ljava/lang/String; = "sys/class/misc/mtgpio/pin"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetAllGPIO(Ljava/lang/String;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/speedata/bean/Gpio;",
            ">;"
        }
    .end annotation

    .line 33
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_10

    :catch_b
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    .line 37
    :goto_10
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    :goto_15
    :try_start_15
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 41
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1e} :catch_1f

    goto :goto_15

    :catch_1f
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_23
    const/4 v0, 0x0

    .line 46
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 48
    :goto_2d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a5

    .line 49
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "-"

    const-string v8, ""

    .line 51
    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    .line 54
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x3

    .line 55
    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    .line 56
    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x5

    .line 57
    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x6

    .line 58
    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x7

    .line 59
    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const/16 v13, 0x8

    .line 60
    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 61
    new-instance v12, Lcom/speedata/bean/Gpio;

    invoke-direct {v12}, Lcom/speedata/bean/Gpio;-><init>()V

    .line 62
    invoke-virtual {v12, v3}, Lcom/speedata/bean/Gpio;->setNum(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v12, v4}, Lcom/speedata/bean/Gpio;->setMode(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v12, v6}, Lcom/speedata/bean/Gpio;->setSel(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v12, v7}, Lcom/speedata/bean/Gpio;->setDin(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v12, v8}, Lcom/speedata/bean/Gpio;->setDout(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v12, v9}, Lcom/speedata/bean/Gpio;->setEn(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v12, v10}, Lcom/speedata/bean/Gpio;->setDir(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v12, v11}, Lcom/speedata/bean/Gpio;->setIes(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v12, v5}, Lcom/speedata/bean/Gpio;->setSmt(Ljava/lang/String;)V

    .line 71
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_a5
    return-object v1
.end method

.method public static getMAIN()Ljava/lang/String;
    .registers 2

    .line 77
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SD55"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "/sys/bus/platform/drivers/mediatek-pinctrl/10005000.pinctrl/mt_gpio"

    .line 78
    sput-object v0, Lcom/speedata/libutils/GpioUtils;->MAIN:Ljava/lang/String;

    goto :goto_13

    :cond_f
    const-string v0, "sys/class/misc/mtgpio/pin"

    .line 80
    sput-object v0, Lcom/speedata/libutils/GpioUtils;->MAIN:Ljava/lang/String;

    .line 82
    :goto_13
    sget-object v0, Lcom/speedata/libutils/GpioUtils;->MAIN:Ljava/lang/String;

    return-object v0
.end method
