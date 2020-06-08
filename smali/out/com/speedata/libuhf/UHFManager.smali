.class public Lcom/speedata/libuhf/UHFManager;
.super Ljava/lang/Object;
.source "UHFManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/speedata/libuhf/UHFManager$BatteryReceiver;
    }
.end annotation


# static fields
.field private static final FACTORY_3992:Ljava/lang/String; = "as3992"

.field private static final FACTORY_FEILIXIN:Ljava/lang/String; = "feilixin"

.field private static final FACTORY_R2000:Ljava/lang/String; = "r2k"

.field private static final FACTORY_XINLIAN:Ljava/lang/String; = "xinlian"

.field private static volatile TemperatureLevel:I

.field private static batteryReceiver:Lcom/speedata/libuhf/UHFManager$BatteryReceiver;

.field private static factory:Ljava/lang/String;

.field private static fd:I

.field private static feilixin_cmd:[B

.field private static iuhfService:Lcom/speedata/libuhf/IUHFService;

.field private static mContext:Landroid/content/Context;

.field private static mRead:Lcom/speedata/libuhf/utils/ReadBean;

.field private static myTimerTask:Ljava/util/TimerTask;

.field private static onSpdBanMsgListener:Lcom/speedata/libuhf/interfaces/OnSpdBanMsgListener;

.field private static pw:Landroid/serialport/DeviceControlSpd;

.field private static r2000_cmd:[B

.field private static volatile stipulationLevel:I

.field private static timer:Ljava/util/Timer;

.field private static xinlian_cmd:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 51
    fill-array-data v0, :array_26

    sput-object v0, Lcom/speedata/libuhf/UHFManager;->feilixin_cmd:[B

    const/16 v0, 0xe

    new-array v0, v0, [B

    .line 55
    fill-array-data v0, :array_2e

    sput-object v0, Lcom/speedata/libuhf/UHFManager;->r2000_cmd:[B

    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 60
    fill-array-data v0, :array_3a

    sput-object v0, Lcom/speedata/libuhf/UHFManager;->xinlian_cmd:[B

    const/16 v0, 0xf

    .line 73
    sput v0, Lcom/speedata/libuhf/UHFManager;->stipulationLevel:I

    const/16 v0, 0x37

    .line 74
    sput v0, Lcom/speedata/libuhf/UHFManager;->TemperatureLevel:I

    const/4 v0, 0x0

    .line 230
    sput-object v0, Lcom/speedata/libuhf/UHFManager;->onSpdBanMsgListener:Lcom/speedata/libuhf/interfaces/OnSpdBanMsgListener;

    return-void

    :array_26
    .array-data 1
        -0x45t
        0x0t
        0x3t
        0x0t
        0x1t
        0x2t
        0x6t
        0x7et
    .end array-data

    :array_2e
    .array-data 1
        0x7et
        0x0t
        0xet
        -0x40t
        0x6t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x2ct
        0x7et
    .end array-data

    nop

    :array_3a
    .array-data 1
        -0x1t
        0x0t
        0x3t
        0x1dt
        0xct
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 1

    .line 46
    invoke-static {p0}, Lcom/speedata/libuhf/UHFManager;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .registers 1

    .line 46
    sget-object v0, Lcom/speedata/libuhf/UHFManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()I
    .registers 1

    .line 46
    sget v0, Lcom/speedata/libuhf/UHFManager;->TemperatureLevel:I

    return v0
.end method

.method static synthetic access$300()V
    .registers 0

    .line 46
    invoke-static {}, Lcom/speedata/libuhf/UHFManager;->stopUseUHF()V

    return-void
.end method

.method static synthetic access$400()I
    .registers 1

    .line 46
    sget v0, Lcom/speedata/libuhf/UHFManager;->stipulationLevel:I

    return v0
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .registers 8

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 521
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_27

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    .line 522
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 523
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1d

    .line 524
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 526
    :cond_1d
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 528
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static callBack(Ljava/lang/String;)V
    .registers 2

    .line 241
    sget-object v0, Lcom/speedata/libuhf/UHFManager;->onSpdBanMsgListener:Lcom/speedata/libuhf/interfaces/OnSpdBanMsgListener;

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/speedata/libuhf/UHFManager;->getOnBanMsgListener()Lcom/speedata/libuhf/interfaces/OnSpdBanMsgListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 242
    invoke-static {}, Lcom/speedata/libuhf/UHFManager;->getOnBanMsgListener()Lcom/speedata/libuhf/interfaces/OnSpdBanMsgListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/speedata/libuhf/interfaces/OnSpdBanMsgListener;->getBanMsg(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public static closeUHFService()V
    .registers 1

    const/4 v0, 0x0

    .line 163
    sput-object v0, Lcom/speedata/libuhf/UHFManager;->iuhfService:Lcom/speedata/libuhf/IUHFService;

    .line 164
    invoke-static {}, Lcom/speedata/libuhf/UHFManager;->stopTimer()V

    .line 165
    sget-object v0, Lcom/speedata/libuhf/UHFManager;->myTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_d

    .line 166
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 168
    :cond_d
    invoke-static {}, Lcom/speedata/libuhf/UHFManager;->unregisterReceiver()V

    return-void
.end method

.method private static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 4

    .line 533
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    :goto_f
    :try_start_f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 539
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_18} :catch_24
    .catchall {:try_start_f .. :try_end_18} :catchall_22

    goto :goto_f

    .line 547
    :cond_19
    :try_start_19
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_2b

    :catch_1d
    move-exception p0

    .line 549
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2b

    :catchall_22
    move-exception v0

    goto :goto_30

    :catch_24
    move-exception v0

    .line 544
    :try_start_25
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    .line 547
    :try_start_28
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_1d

    .line 552
    :goto_2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 547
    :goto_30
    :try_start_30
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception p0

    .line 549
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 551
    :goto_38
    goto :goto_3a

    :goto_39
    throw v0

    :goto_3a
    goto :goto_39
.end method

.method private static createTempTimer()V
    .registers 7

    .line 124
    sget-object v0, Lcom/speedata/libuhf/UHFManager;->timer:Ljava/util/Timer;

    if-nez v0, :cond_22

    .line 125
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/speedata/libuhf/UHFManager;->timer:Ljava/util/Timer;

    .line 126
    sget-object v0, Lcom/speedata/libuhf/UHFManager;->myTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_12

    .line 127
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 129
    :cond_12
    new-instance v2, Lcom/speedata/libuhf/UHFManager$2;

    invoke-direct {v2}, Lcom/speedata/libuhf/UHFManager$2;-><init>()V

    sput-object v2, Lcom/speedata/libuhf/UHFManager;->myTimerTask:Ljava/util/TimerTask;

    .line 148
    sget-object v1, Lcom/speedata/libuhf/UHFManager;->timer:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_22
    return-void
.end method

.method private static createTimer()V
    .registers 7

    .line 98
    sget-object v0, Lcom/speedata/libuhf/UHFManager;->timer:Ljava/util/Timer;

    if-nez v0, :cond_22

    .line 99
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/speedata/libuhf/UHFManager;->timer:Ljava/util/Timer;

    .line 100
    sget-object v0, Lcom/speedata/libuhf/UHFManager;->myTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_12

    .line 101
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 103
    :cond_12
    new-instance v2, Lcom/speedata/libuhf/UHFManager$1;

    invoke-direct {v2}, Lcom/speedata/libuhf/UHFManager$1;-><init>()V

    sput-object v2, Lcom/speedata/libuhf/UHFManager;->myTimerTask:Ljava/util/TimerTask;

    .line 119
    sget-object v1, Lcom/speedata/libuhf/UHFManager;->timer:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_22
    return-void
.end method

.method private static getModel()Ljava/lang/String;
    .registers 8

    .line 376
    new-instance v0, Landroid/serialport/SerialPortSpd;

    invoke-direct {v0}, Landroid/serialport/SerialPortSpd;-><init>()V

    const-string v1, "ro.product.model"

    .line 378
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SD60RT"

    .line 379
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "/dev/ttyMT0"

    const v4, 0x1c200

    if-nez v2, :cond_9b

    const-string v2, "MST-II-YN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9b

    const-string v2, "SD60"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9b

    const-string v2, "SC60"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9b

    const-string v2, "DXD60RT"

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9b

    const-string v2, "C6000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_41

    goto :goto_9b

    :cond_41
    const-string v2, "SD55"

    .line 386
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v5, "/dev/ttyMT2"

    if-nez v2, :cond_81

    const-string v2, "R66"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_54

    goto :goto_81

    :cond_54
    const-string v2, "SD100"

    .line 400
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    :try_start_5c
    const-string v1, "/dev/ttyHSL2"

    .line 402
    invoke-virtual {v0, v1, v4}, Landroid/serialport/SerialPortSpd;->OpenSerial(Ljava/lang/String;I)V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_61} :catch_62

    goto :goto_a3

    :catch_62
    move-exception v1

    .line 404
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a3

    :cond_67
    const-string v2, "SD100T"

    .line 406
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 408
    :try_start_6f
    invoke-virtual {v0, v3, v4}, Landroid/serialport/SerialPortSpd;->OpenSerial(Ljava/lang/String;I)V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_a3

    :catch_73
    move-exception v1

    .line 410
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a3

    .line 414
    :cond_78
    :try_start_78
    invoke-virtual {v0, v5, v4}, Landroid/serialport/SerialPortSpd;->OpenSerial(Ljava/lang/String;I)V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_a3

    :catch_7c
    move-exception v1

    .line 416
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a3

    .line 387
    :cond_81
    :goto_81
    invoke-static {}, Lcom/speedata/libuhf/utils/ConfigUtils;->getApiVersion()I

    move-result v1

    const/16 v2, 0x17

    if-le v1, v2, :cond_92

    .line 389
    :try_start_89
    invoke-virtual {v0, v3, v4}, Landroid/serialport/SerialPortSpd;->OpenSerial(Ljava/lang/String;I)V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_a3

    :catch_8d
    move-exception v1

    .line 391
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a3

    .line 395
    :cond_92
    :try_start_92
    invoke-virtual {v0, v5, v4}, Landroid/serialport/SerialPortSpd;->OpenSerial(Ljava/lang/String;I)V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_96

    goto :goto_a3

    :catch_96
    move-exception v1

    .line 397
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a3

    .line 382
    :cond_9b
    :goto_9b
    :try_start_9b
    invoke-virtual {v0, v3, v4}, Landroid/serialport/SerialPortSpd;->OpenSerial(Ljava/lang/String;I)V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_9f

    goto :goto_a3

    :catch_9f
    move-exception v1

    .line 384
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 420
    :goto_a3
    invoke-virtual {v0}, Landroid/serialport/SerialPortSpd;->getFd()I

    move-result v1

    sput v1, Lcom/speedata/libuhf/UHFManager;->fd:I

    const/16 v2, 0x400

    new-array v3, v2, [B

    .line 424
    invoke-virtual {v0, v1}, Landroid/serialport/SerialPortSpd;->clearPortBuf(I)V

    .line 425
    sget v1, Lcom/speedata/libuhf/UHFManager;->fd:I

    sget-object v4, Lcom/speedata/libuhf/UHFManager;->r2000_cmd:[B

    invoke-virtual {v0, v1, v4}, Landroid/serialport/SerialPortSpd;->WriteSerialByte(I[B)I

    const-wide/16 v4, 0x64

    .line 427
    :try_start_b9
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_bc
    .catch Ljava/lang/InterruptedException; {:try_start_b9 .. :try_end_bc} :catch_bd

    goto :goto_c1

    :catch_bd
    move-exception v1

    .line 429
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 432
    :goto_c1
    :try_start_c1
    sget v1, Lcom/speedata/libuhf/UHFManager;->fd:I

    invoke-virtual {v0, v1, v2}, Landroid/serialport/SerialPortSpd;->ReadSerial(II)[B

    move-result-object v3
    :try_end_c7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c1 .. :try_end_c7} :catch_c8

    goto :goto_cc

    :catch_c8
    move-exception v1

    .line 434
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_cc
    if-eqz v3, :cond_d3

    .line 437
    invoke-static {v3}, Lcom/speedata/libuhf/UHFManager;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_d5

    :cond_d3
    const-string v1, ""

    .line 439
    :goto_d5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5224\u65ad\u662f\u4e0d\u662fR2000: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "ZM"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "7E002A240349006D00700069006E006A00530065007200690061006C004E0075006D003000310006A97E"

    .line 440
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v7, "r2k"

    if-eqz v2, :cond_fe

    .line 441
    sget v1, Lcom/speedata/libuhf/UHFManager;->fd:I

    invoke-virtual {v0, v1}, Landroid/serialport/SerialPortSpd;->CloseSerial(I)V

    .line 442
    invoke-static {}, Lcom/speedata/libuhf/UHFManager;->powerOff()V

    return-object v7

    :cond_fe
    const-string v2, "7E0028220342004C0046005F00320030003100380030003300310033005F0030003000310004027E"

    .line 444
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 445
    sget v1, Lcom/speedata/libuhf/UHFManager;->fd:I

    invoke-virtual {v0, v1}, Landroid/serialport/SerialPortSpd;->CloseSerial(I)V

    .line 446
    invoke-static {}, Lcom/speedata/libuhf/UHFManager;->powerOff()V

    return-object v7

    .line 451
    :cond_10f
    sget v1, Lcom/speedata/libuhf/UHFManager;->fd:I

    invoke-virtual {v0, v1}, Landroid/serialport/SerialPortSpd;->clearPortBuf(I)V

    .line 452
    sget v1, Lcom/speedata/libuhf/UHFManager;->fd:I

    sget-object v2, Lcom/speedata/libuhf/UHFManager;->xinlian_cmd:[B

    invoke-virtual {v0, v1, v2}, Landroid/serialport/SerialPortSpd;->WriteSerialByte(I[B)I

    .line 454
    :try_start_11b
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11e
    .catch Ljava/lang/InterruptedException; {:try_start_11b .. :try_end_11e} :catch_11f

    goto :goto_123

    :catch_11f
    move-exception v1

    .line 456
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 459
    :goto_123
    :try_start_123
    sget v1, Lcom/speedata/libuhf/UHFManager;->fd:I

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/serialport/SerialPortSpd;->ReadSerial(II)[B

    move-result-object v3
    :try_end_12b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_123 .. :try_end_12b} :catch_12c

    goto :goto_130

    :catch_12c
    move-exception v1

    .line 461
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_130
    if-eqz v3, :cond_156

    .line 465
    array-length v1, v3

    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5224\u65ad\u662f\u4e0d\u662f\u65d7\u8054-\u82af\u8054 length: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_156

    .line 468
    sget v1, Lcom/speedata/libuhf/UHFManager;->fd:I

    invoke-virtual {v0, v1}, Landroid/serialport/SerialPortSpd;->CloseSerial(I)V

    .line 469
    invoke-static {}, Lcom/speedata/libuhf/UHFManager;->powerOff()V

    const-string v0, "xinlian"

    return-object v0

    .line 475
    :cond_156
    sget v1, Lcom/speedata/libuhf/UHFManager;->fd:I

    invoke-virtual {v0, v1}, Landroid/serialport/SerialPortSpd;->clearPortBuf(I)V

    .line 476
    sget v1, Lcom/speedata/libuhf/UHFManager;->fd:I

    sget-object v2, Lcom/speedata/libuhf/UHFManager;->feilixin_cmd:[B

    invoke-virtual {v0, v1, v2}, Landroid/serialport/SerialPortSpd;->WriteSerialByte(I[B)I

    .line 478
    :try_start_162
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_165
    .catch Ljava/lang/InterruptedException; {:try_start_162 .. :try_end_165} :catch_166

    goto :goto_16a

    :catch_166
    move-exception v1

    .line 480
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 483
    :goto_16a
    :try_start_16a
    sget v1, Lcom/speedata/libuhf/UHFManager;->fd:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/serialport/SerialPortSpd;->ReadSerial(II)[B

    move-result-object v3
    :try_end_172
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_16a .. :try_end_172} :catch_173

    goto :goto_177

    :catch_173
    move-exception v1

    .line 485
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_177
    if-eqz v3, :cond_1a4

    .line 488
    invoke-static {v3}, Lcom/speedata/libuhf/UHFManager;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5224\u65ad\u662f\u4e0d\u662f\u65d7\u8054-\u98de\u5229\u4fe1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "BB0103000A025261794D6174726978B17E"

    .line 490
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a4

    .line 491
    sget v1, Lcom/speedata/libuhf/UHFManager;->fd:I

    invoke-virtual {v0, v1}, Landroid/serialport/SerialPortSpd;->CloseSerial(I)V

    .line 492
    invoke-static {}, Lcom/speedata/libuhf/UHFManager;->powerOff()V

    const-string v0, "feilixin"

    return-object v0

    .line 498
    :cond_1a4
    sget v1, Lcom/speedata/libuhf/UHFManager;->fd:I

    invoke-virtual {v0, v1}, Landroid/serialport/SerialPortSpd;->CloseSerial(I)V

    .line 499
    invoke-static {}, Lcom/speedata/libuhf/UHFManager;->powerOff()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getOnBanMsgListener()Lcom/speedata/libuhf/interfaces/OnSpdBanMsgListener;
    .registers 1

    .line 237
    sget-object v0, Lcom/speedata/libuhf/UHFManager;->onSpdBanMsgListener:Lcom/speedata/libuhf/interfaces/OnSpdBanMsgListener;

    return-object v0
.end method

.method public static getUHFService(Landroid/content/Context;)Lcom/speedata/libuhf/IUHFService;
    .registers 3

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/speedata/libuhf/UHFManager;->mContext:Landroid/content/Context;

    .line 82
    invoke-static {}, Lcom/speedata/libuhf/UHFManager;->createTempTimer()V

    .line 84
    new-instance p0, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/speedata/libuhf/UHFManager$BatteryReceiver;

    invoke-direct {v0}, Lcom/speedata/libuhf/UHFManager$BatteryReceiver;-><init>()V

    sput-object v0, Lcom/speedata/libuhf/UHFManager;->batteryReceiver:Lcom/speedata/libuhf/UHFManager$BatteryReceiver;

    .line 88
    sget-object v1, Lcom/speedata/libuhf/UHFManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    sget-object p0, Lcom/speedata/libuhf/UHFManager;->iuhfService:Lcom/speedata/libuhf/IUHFService;

    if-nez p0, :cond_28

    .line 90
    invoke-static {}, Lcom/speedata/libuhf/UHFManager;->judgeModel()Z

    move-result p0

    if-nez p0, :cond_28

    const/4 p0, 0x0

    return-object p0

    .line 94
    :cond_28
    sget-object p0, Lcom/speedata/libuhf/UHFManager;->iuhfService:Lcom/speedata/libuhf/IUHFService;

    return-object p0
.end method

.method private static judgeModel()Z
    .registers 7

    .line 249
    invoke-static {}, Lcom/speedata/libuhf/utils/ConfigUtils;->isConfigFileExists()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {}, Lcom/speedata/libuhf/utils/CommonUtils;->subDeviceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "55"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 250
    sget-object v0, Lcom/speedata/libuhf/UHFManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/speedata/libuhf/utils/ConfigUtils;->readConfig(Landroid/content/Context;)Lcom/speedata/libuhf/utils/ReadBean;

    move-result-object v0

    sput-object v0, Lcom/speedata/libuhf/UHFManager;->mRead:Lcom/speedata/libuhf/utils/ReadBean;

    .line 251
    invoke-virtual {v0}, Lcom/speedata/libuhf/utils/ReadBean;->getUhf()Lcom/speedata/libuhf/utils/ReadBean$UhfBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedata/libuhf/utils/ReadBean$UhfBean;->getModule()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/speedata/libuhf/UHFManager;->factory:Ljava/lang/String;

    .line 252
    sget-object v0, Lcom/speedata/libuhf/UHFManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/speedata/libuhf/utils/SharedXmlUtil;->getInstance(Landroid/content/Context;)Lcom/speedata/libuhf/utils/SharedXmlUtil;

    move-result-object v0

    sget-object v1, Lcom/speedata/libuhf/UHFManager;->factory:Ljava/lang/String;

    const-string v2, "model"

    invoke-virtual {v0, v2, v1}, Lcom/speedata/libuhf/utils/SharedXmlUtil;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 255
    :cond_32
    invoke-static {}, Lcom/speedata/libuhf/UHFManager;->noXmlJudgeModule()V

    .line 259
    :goto_35
    sget-object v0, Lcom/speedata/libuhf/UHFManager;->factory:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x7aa69879

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v3, :cond_63

    const v3, -0x422704a

    if-eq v2, v3, :cond_59

    const v3, 0x1b26b

    if-eq v2, v3, :cond_4f

    goto :goto_6c

    :cond_4f
    const-string v2, "r2k"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const/4 v1, 0x2

    goto :goto_6c

    :cond_59
    const-string v2, "feilixin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const/4 v1, 0x0

    goto :goto_6c

    :cond_63
    const-string v2, "xinlian"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const/4 v1, 0x1

    :cond_6c
    :goto_6c
    if-eqz v1, :cond_87

    if-eq v1, v6, :cond_7d

    if-eq v1, v4, :cond_73

    goto :goto_91

    .line 267
    :cond_73
    new-instance v0, Lcom/speedata/libuhf/FLX;

    sget-object v1, Lcom/speedata/libuhf/UHFManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v5}, Lcom/speedata/libuhf/FLX;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/speedata/libuhf/UHFManager;->iuhfService:Lcom/speedata/libuhf/IUHFService;

    goto :goto_90

    .line 264
    :cond_7d
    new-instance v0, Lcom/speedata/libuhf/XinLianQilian;

    sget-object v1, Lcom/speedata/libuhf/UHFManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/speedata/libuhf/XinLianQilian;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/speedata/libuhf/UHFManager;->iuhfService:Lcom/speedata/libuhf/IUHFService;

    goto :goto_90

    .line 261
    :cond_87
    new-instance v0, Lcom/speedata/libuhf/FLX;

    sget-object v1, Lcom/speedata/libuhf/UHFManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v6}, Lcom/speedata/libuhf/FLX;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/speedata/libuhf/UHFManager;->iuhfService:Lcom/speedata/libuhf/IUHFService;

    :goto_90
    const/4 v5, 0x1

    :goto_91
    return v5
.end method

.method private static noXmlJudgeModule()V
    .registers 8

    .line 297
    sget-object v0, Lcom/speedata/libuhf/UHFManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/speedata/libuhf/utils/SharedXmlUtil;->getInstance(Landroid/content/Context;)Lcom/speedata/libuhf/utils/SharedXmlUtil;

    move-result-object v0

    const-string v1, "model"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/speedata/libuhf/utils/SharedXmlUtil;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/speedata/libuhf/UHFManager;->factory:Ljava/lang/String;

    .line 298
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1ee

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ZM"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "4.4.2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3c

    .line 301
    sget-object v0, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    new-array v4, v4, [I

    const/16 v5, 0x40

    aput v5, v4, v3

    invoke-static {v0, v4}, Lcom/speedata/libuhf/UHFManager;->powerOn(Landroid/serialport/DeviceControlSpd$PowerType;[I)V

    goto/16 :goto_1c8

    :cond_3c
    const-string v0, "ro.product.model"

    .line 304
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Build.MODEL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SD60RT"

    .line 306
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1bd

    const-string v5, "MST-II-YN"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1bd

    const-string v5, "SD60"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1bd

    const-string v5, "SD55L"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1bd

    const-string v5, "SC60"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1bd

    const-string v5, "DXD60RT"

    .line 307
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1bd

    const-string v5, "C6000"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_90

    goto/16 :goto_1bd

    :cond_90
    const-string v5, "SD55"

    .line 311
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_19d

    const-string v5, "R66"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a2

    goto/16 :goto_19d

    :cond_a2
    const-string v5, "KT80"

    .line 317
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_191

    const-string v5, "W6"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_191

    const-string v5, "N80"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_191

    const-string v5, "Biowolf LE"

    .line 318
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_191

    const-string v5, "FC-PK80"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_191

    const-string v5, "FC-K80"

    .line 319
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_191

    const-string v5, "T80"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_191

    const-string v5, "80"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e4

    goto/16 :goto_191

    :cond_e4
    const-string v6, "55"

    .line 321
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x3

    if-nez v6, :cond_154

    const-string v6, "W2H"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f6

    goto :goto_154

    :cond_f6
    const-string v5, "SD100"

    .line 331
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_133

    .line 333
    :try_start_fe
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    const-string v3, "/sys/class/switch/app_switch/app_state"

    invoke-direct {v0, v3}, Landroid/serialport/DeviceControlSpd;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/speedata/libuhf/UHFManager;->pw:Landroid/serialport/DeviceControlSpd;

    const-string v3, "uhf_open"

    .line 334
    invoke-virtual {v0, v3}, Landroid/serialport/DeviceControlSpd;->gtPower(Ljava/lang/String;)V

    .line 335
    sget-object v0, Lcom/speedata/libuhf/UHFManager;->pw:Landroid/serialport/DeviceControlSpd;

    const-string v3, "open"

    invoke-virtual {v0, v3}, Landroid/serialport/DeviceControlSpd;->gtPower(Ljava/lang/String;)V
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_113} :catch_115

    goto/16 :goto_1c8

    :catch_115
    move-exception v0

    .line 337
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SD100 powerOn-Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c8

    :cond_133
    const-string v5, "SD100T"

    .line 340
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_147

    .line 341
    sget-object v0, Landroid/serialport/DeviceControlSpd$PowerType;->NEW_MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    new-array v3, v7, [I

    fill-array-data v3, :array_1f0

    invoke-static {v0, v3}, Lcom/speedata/libuhf/UHFManager;->powerOn(Landroid/serialport/DeviceControlSpd$PowerType;[I)V

    goto/16 :goto_1c8

    .line 344
    :cond_147
    sget-object v0, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    new-array v4, v4, [I

    const/16 v5, 0x5e

    aput v5, v4, v3

    invoke-static {v0, v4}, Lcom/speedata/libuhf/UHFManager;->powerOn(Landroid/serialport/DeviceControlSpd$PowerType;[I)V

    goto/16 :goto_1c8

    .line 322
    :cond_154
    :goto_154
    invoke-static {}, Lcom/speedata/libuhf/UHFManager;->readEm55()Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_169

    .line 324
    sget-object v0, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN_AND_EXPAND:Landroid/serialport/DeviceControlSpd$PowerType;

    new-array v3, v7, [I

    fill-array-data v3, :array_1fa

    invoke-static {v0, v3}, Lcom/speedata/libuhf/UHFManager;->powerOn(Landroid/serialport/DeviceControlSpd$PowerType;[I)V

    goto :goto_1c8

    :cond_169
    const-string v5, "48"

    .line 325
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_186

    const-string v5, "81"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17a

    goto :goto_186

    .line 328
    :cond_17a
    sget-object v0, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    new-array v4, v4, [I

    const/16 v5, 0x58

    aput v5, v4, v3

    invoke-static {v0, v4}, Lcom/speedata/libuhf/UHFManager;->powerOn(Landroid/serialport/DeviceControlSpd$PowerType;[I)V

    goto :goto_1c8

    .line 326
    :cond_186
    :goto_186
    sget-object v0, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN_AND_EXPAND:Landroid/serialport/DeviceControlSpd$PowerType;

    new-array v3, v7, [I

    fill-array-data v3, :array_204

    invoke-static {v0, v3}, Lcom/speedata/libuhf/UHFManager;->powerOn(Landroid/serialport/DeviceControlSpd$PowerType;[I)V

    goto :goto_1c8

    .line 320
    :cond_191
    :goto_191
    sget-object v0, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    new-array v4, v4, [I

    const/16 v5, 0x77

    aput v5, v4, v3

    invoke-static {v0, v4}, Lcom/speedata/libuhf/UHFManager;->powerOn(Landroid/serialport/DeviceControlSpd$PowerType;[I)V

    goto :goto_1c8

    .line 312
    :cond_19d
    :goto_19d
    invoke-static {}, Lcom/speedata/libuhf/utils/ConfigUtils;->getApiVersion()I

    move-result v0

    const/16 v5, 0x17

    if-le v0, v5, :cond_1b1

    .line 313
    sget-object v0, Landroid/serialport/DeviceControlSpd$PowerType;->NEW_MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    new-array v4, v4, [I

    const/16 v5, 0xc

    aput v5, v4, v3

    invoke-static {v0, v4}, Lcom/speedata/libuhf/UHFManager;->powerOn(Landroid/serialport/DeviceControlSpd$PowerType;[I)V

    goto :goto_1c8

    .line 315
    :cond_1b1
    sget-object v0, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    new-array v4, v4, [I

    const/16 v5, 0x80

    aput v5, v4, v3

    invoke-static {v0, v4}, Lcom/speedata/libuhf/UHFManager;->powerOn(Landroid/serialport/DeviceControlSpd$PowerType;[I)V

    goto :goto_1c8

    .line 309
    :cond_1bd
    :goto_1bd
    sget-object v0, Landroid/serialport/DeviceControlSpd$PowerType;->EXPAND:Landroid/serialport/DeviceControlSpd$PowerType;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_20e

    invoke-static {v0, v3}, Lcom/speedata/libuhf/UHFManager;->powerOn(Landroid/serialport/DeviceControlSpd$PowerType;[I)V

    :goto_1c8
    const-wide/16 v3, 0x7d0

    .line 349
    :try_start_1ca
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1cd
    .catch Ljava/lang/InterruptedException; {:try_start_1ca .. :try_end_1cd} :catch_1ce

    goto :goto_1d2

    :catch_1ce
    move-exception v0

    .line 351
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 354
    :goto_1d2
    invoke-static {}, Lcom/speedata/libuhf/UHFManager;->getModel()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/speedata/libuhf/UHFManager;->factory:Ljava/lang/String;

    .line 355
    sget-object v0, Lcom/speedata/libuhf/UHFManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/speedata/libuhf/utils/SharedXmlUtil;->getInstance(Landroid/content/Context;)Lcom/speedata/libuhf/utils/SharedXmlUtil;

    move-result-object v0

    sget-object v3, Lcom/speedata/libuhf/UHFManager;->factory:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/speedata/libuhf/utils/SharedXmlUtil;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ee
    return-void

    nop

    :array_1f0
    .array-data 4
        0x34
        0x59
        0x47
    .end array-data

    :array_1fa
    .array-data 4
        0x58
        0x7
        0x5
    .end array-data

    :array_204
    .array-data 4
        0x58
        0x6
        0x7
    .end array-data

    :array_20e
    .array-data 4
        0x9
        0xe
    .end array-data
.end method

.method private static powerOff()V
    .registers 3

    :try_start_0
    const-string v0, "ro.product.model"

    .line 505
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SD100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 506
    sget-object v0, Lcom/speedata/libuhf/UHFManager;->pw:Landroid/serialport/DeviceControlSpd;

    const-string v1, "uhf_close"

    invoke-virtual {v0, v1}, Landroid/serialport/DeviceControlSpd;->gtPower(Ljava/lang/String;)V

    .line 507
    sget-object v0, Lcom/speedata/libuhf/UHFManager;->pw:Landroid/serialport/DeviceControlSpd;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Landroid/serialport/DeviceControlSpd;->gtPower(Ljava/lang/String;)V

    goto :goto_41

    .line 509
    :cond_1d
    sget-object v0, Lcom/speedata/libuhf/UHFManager;->pw:Landroid/serialport/DeviceControlSpd;

    invoke-virtual {v0}, Landroid/serialport/DeviceControlSpd;->PowerOffDevice()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_41

    :catch_23
    move-exception v0

    .line 512
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "powerOff-Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZM"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_41
    return-void
.end method

.method private static varargs powerOn(Landroid/serialport/DeviceControlSpd$PowerType;[I)V
    .registers 3

    .line 362
    :try_start_0
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    invoke-direct {v0, p0, p1}, Landroid/serialport/DeviceControlSpd;-><init>(Landroid/serialport/DeviceControlSpd$PowerType;[I)V

    sput-object v0, Lcom/speedata/libuhf/UHFManager;->pw:Landroid/serialport/DeviceControlSpd;

    .line 363
    invoke-virtual {v0}, Landroid/serialport/DeviceControlSpd;->PowerOnDevice()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_29

    :catch_b
    move-exception p0

    .line 365
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 366
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "powerOn-Exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZM"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    return-void
.end method

.method private static readEm55()Ljava/lang/String;
    .registers 3

    .line 281
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/misc/aw9523/gpio"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 283
    :try_start_8
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 284
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 285
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_19} :catch_1f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_19} :catch_1a

    goto :goto_23

    :catch_1a
    move-exception v0

    .line 290
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23

    :catch_1f
    move-exception v0

    .line 288
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 292
    :goto_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readEm55state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ContentValues"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static setIuhfServiceNull()V
    .registers 1

    const/4 v0, 0x0

    .line 176
    sput-object v0, Lcom/speedata/libuhf/UHFManager;->iuhfService:Lcom/speedata/libuhf/IUHFService;

    return-void
.end method

.method public static setStipulationLevel(I)V
    .registers 1

    .line 180
    sput p0, Lcom/speedata/libuhf/UHFManager;->stipulationLevel:I

    return-void
.end method

.method private static stopTimer()V
    .registers 1

    .line 154
    sget-object v0, Lcom/speedata/libuhf/UHFManager;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_a

    .line 155
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 156
    sput-object v0, Lcom/speedata/libuhf/UHFManager;->timer:Ljava/util/Timer;

    :cond_a
    return-void
.end method

.method private static stopUseUHF()V
    .registers 2

    .line 209
    sget-object v0, Lcom/speedata/libuhf/UHFManager;->iuhfService:Lcom/speedata/libuhf/IUHFService;

    if-eqz v0, :cond_7

    .line 210
    invoke-interface {v0}, Lcom/speedata/libuhf/IUHFService;->closeDev()V

    .line 212
    :cond_7
    sget-object v0, Lcom/speedata/libuhf/UHFManager;->onSpdBanMsgListener:Lcom/speedata/libuhf/interfaces/OnSpdBanMsgListener;

    if-eqz v0, :cond_10

    const-string v0, "Low power or high temperature UHF is forbidden"

    .line 213
    invoke-static {v0}, Lcom/speedata/libuhf/UHFManager;->callBack(Ljava/lang/String;)V

    .line 215
    :cond_10
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 216
    new-instance v1, Lcom/speedata/libuhf/UHFManager$3;

    invoke-direct {v1}, Lcom/speedata/libuhf/UHFManager$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static unregisterReceiver()V
    .registers 2

    .line 172
    sget-object v0, Lcom/speedata/libuhf/UHFManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/speedata/libuhf/UHFManager;->batteryReceiver:Lcom/speedata/libuhf/UHFManager$BatteryReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public setOnBanMsgListener(Lcom/speedata/libuhf/interfaces/OnSpdBanMsgListener;)V
    .registers 2

    .line 233
    sput-object p1, Lcom/speedata/libuhf/UHFManager;->onSpdBanMsgListener:Lcom/speedata/libuhf/interfaces/OnSpdBanMsgListener;

    return-void
.end method
