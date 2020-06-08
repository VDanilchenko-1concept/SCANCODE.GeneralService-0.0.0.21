.class public Landroid/serialport/DeviceControlSpd;
.super Ljava/lang/Object;
.source "DeviceControlSpd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/serialport/DeviceControlSpd$PowerType;
    }
.end annotation


# static fields
.field public static final POWER_EXTERNAL:Ljava/lang/String; = "/sys/class/misc/aw9523/gpio"

.field public static final POWER_EXTERNAL2:Ljava/lang/String; = "/sys/class/misc/aw9524/gpio"

.field public static final POWER_GAOTONG:Ljava/lang/String; = "/sys/class/switch/app_switch/app_state"

.field public static final POWER_MAIN:Ljava/lang/String; = "/sys/class/misc/mtgpio/pin"

.field public static final POWER_NEWMAIN:Ljava/lang/String; = "/sys/bus/platform/drivers/mediatek-pinctrl/10005000.pinctrl/mt_gpio"


# instance fields
.field private ctrlfile:Ljava/io/BufferedWriter;

.field private currentPath:Ljava/lang/String;

.field private gpios:[I

.field private gtGpios:[Ljava/lang/String;

.field private power_type:Landroid/serialport/DeviceControlSpd$PowerType;

.field private powerdir:Ljava/lang/String;

.field private powermode:Ljava/lang/String;

.field private poweroff:Ljava/lang/String;

.field private poweron:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 76
    iput-object v0, p0, Landroid/serialport/DeviceControlSpd;->poweron:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Landroid/serialport/DeviceControlSpd;->powermode:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Landroid/serialport/DeviceControlSpd;->powerdir:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Landroid/serialport/DeviceControlSpd;->poweroff:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Landroid/serialport/DeviceControlSpd;->currentPath:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Landroid/serialport/DeviceControlSpd$PowerType;[I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 76
    iput-object v0, p0, Landroid/serialport/DeviceControlSpd;->poweron:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Landroid/serialport/DeviceControlSpd;->powermode:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Landroid/serialport/DeviceControlSpd;->powerdir:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Landroid/serialport/DeviceControlSpd;->poweroff:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Landroid/serialport/DeviceControlSpd;->currentPath:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Landroid/serialport/DeviceControlSpd;->gpios:[I

    .line 122
    iput-object p1, p0, Landroid/serialport/DeviceControlSpd;->power_type:Landroid/serialport/DeviceControlSpd$PowerType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 76
    iput-object v0, p0, Landroid/serialport/DeviceControlSpd;->poweron:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Landroid/serialport/DeviceControlSpd;->powermode:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Landroid/serialport/DeviceControlSpd;->powerdir:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Landroid/serialport/DeviceControlSpd;->poweroff:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Landroid/serialport/DeviceControlSpd;->currentPath:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Landroid/serialport/DeviceControlSpd;->ctrlfile:Ljava/io/BufferedWriter;

    .line 92
    iput-object p1, p0, Landroid/serialport/DeviceControlSpd;->currentPath:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 76
    iput-object v0, p0, Landroid/serialport/DeviceControlSpd;->poweron:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Landroid/serialport/DeviceControlSpd;->powermode:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Landroid/serialport/DeviceControlSpd;->powerdir:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Landroid/serialport/DeviceControlSpd;->poweroff:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Landroid/serialport/DeviceControlSpd;->currentPath:Ljava/lang/String;

    .line 142
    iput-object p2, p0, Landroid/serialport/DeviceControlSpd;->gpios:[I

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_88

    goto :goto_5f

    :sswitch_19
    const-string p2, "EXPAND"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5f

    const/4 p1, 0x1

    goto :goto_60

    :sswitch_23
    const-string p2, "MAIN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5f

    const/4 p1, 0x0

    goto :goto_60

    :sswitch_2d
    const-string p2, "MAIN_AND_EXPAND"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5f

    const/4 p1, 0x2

    goto :goto_60

    :sswitch_37
    const-string p2, "EXPAND2"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5f

    const/4 p1, 0x4

    goto :goto_60

    :sswitch_41
    const-string p2, "GAOTONG_MAIN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5f

    const/4 p1, 0x6

    goto :goto_60

    :sswitch_4b
    const-string p2, "MAIN_AND_EXPAND2"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5f

    const/4 p1, 0x5

    goto :goto_60

    :sswitch_55
    const-string p2, "NEW_MAIN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5f

    const/4 p1, 0x3

    goto :goto_60

    :cond_5f
    :goto_5f
    const/4 p1, -0x1

    :goto_60
    packed-switch p1, :pswitch_data_a6

    goto :goto_86

    .line 163
    :pswitch_64
    sget-object p1, Landroid/serialport/DeviceControlSpd$PowerType;->GAOTONG_MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    iput-object p1, p0, Landroid/serialport/DeviceControlSpd;->power_type:Landroid/serialport/DeviceControlSpd$PowerType;

    goto :goto_86

    .line 160
    :pswitch_69
    sget-object p1, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN_AND_EXPAND2:Landroid/serialport/DeviceControlSpd$PowerType;

    iput-object p1, p0, Landroid/serialport/DeviceControlSpd;->power_type:Landroid/serialport/DeviceControlSpd$PowerType;

    goto :goto_86

    .line 157
    :pswitch_6e
    sget-object p1, Landroid/serialport/DeviceControlSpd$PowerType;->EXPAND2:Landroid/serialport/DeviceControlSpd$PowerType;

    iput-object p1, p0, Landroid/serialport/DeviceControlSpd;->power_type:Landroid/serialport/DeviceControlSpd$PowerType;

    goto :goto_86

    .line 154
    :pswitch_73
    sget-object p1, Landroid/serialport/DeviceControlSpd$PowerType;->NEW_MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    iput-object p1, p0, Landroid/serialport/DeviceControlSpd;->power_type:Landroid/serialport/DeviceControlSpd$PowerType;

    goto :goto_86

    .line 151
    :pswitch_78
    sget-object p1, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN_AND_EXPAND:Landroid/serialport/DeviceControlSpd$PowerType;

    iput-object p1, p0, Landroid/serialport/DeviceControlSpd;->power_type:Landroid/serialport/DeviceControlSpd$PowerType;

    goto :goto_86

    .line 148
    :pswitch_7d
    sget-object p1, Landroid/serialport/DeviceControlSpd$PowerType;->EXPAND:Landroid/serialport/DeviceControlSpd$PowerType;

    iput-object p1, p0, Landroid/serialport/DeviceControlSpd;->power_type:Landroid/serialport/DeviceControlSpd$PowerType;

    goto :goto_86

    .line 145
    :pswitch_82
    sget-object p1, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    iput-object p1, p0, Landroid/serialport/DeviceControlSpd;->power_type:Landroid/serialport/DeviceControlSpd$PowerType;

    :goto_86
    return-void

    nop

    :sswitch_data_88
    .sparse-switch
        -0x7d8206e8 -> :sswitch_55
        -0x5f65f336 -> :sswitch_4b
        -0x5b61b971 -> :sswitch_41
        -0x23417f28 -> :sswitch_37
        -0x1bd9ff98 -> :sswitch_2d
        0x23fdb9 -> :sswitch_23
        0x7abbd29a -> :sswitch_19
    .end sparse-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
    .end packed-switch
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 76
    iput-object v0, p0, Landroid/serialport/DeviceControlSpd;->poweron:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Landroid/serialport/DeviceControlSpd;->powermode:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Landroid/serialport/DeviceControlSpd;->powerdir:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Landroid/serialport/DeviceControlSpd;->poweroff:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Landroid/serialport/DeviceControlSpd;->currentPath:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Landroid/serialport/DeviceControlSpd;->gtGpios:[Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x5b61b971

    if-eq p2, v0, :cond_1b

    goto :goto_25

    :cond_1b
    const-string p2, "GAOTONG_MAIN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 p1, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 p1, -0x1

    :goto_26
    if-eqz p1, :cond_29

    goto :goto_2d

    .line 129
    :cond_29
    sget-object p1, Landroid/serialport/DeviceControlSpd$PowerType;->GAOTONG_MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    iput-object p1, p0, Landroid/serialport/DeviceControlSpd;->power_type:Landroid/serialport/DeviceControlSpd$PowerType;

    :goto_2d
    return-void
.end method

.method private WriteOff()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Landroid/serialport/DeviceControlSpd;->ctrlfile:Ljava/io/BufferedWriter;

    iget-object v1, p0, Landroid/serialport/DeviceControlSpd;->poweroff:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Landroid/serialport/DeviceControlSpd;->ctrlfile:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    return-void
.end method

.method private writeON()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Landroid/serialport/DeviceControlSpd;->ctrlfile:Ljava/io/BufferedWriter;

    iget-object v1, p0, Landroid/serialport/DeviceControlSpd;->powermode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Landroid/serialport/DeviceControlSpd;->ctrlfile:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 276
    iget-object v0, p0, Landroid/serialport/DeviceControlSpd;->ctrlfile:Ljava/io/BufferedWriter;

    iget-object v1, p0, Landroid/serialport/DeviceControlSpd;->powerdir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Landroid/serialport/DeviceControlSpd;->ctrlfile:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 278
    iget-object v0, p0, Landroid/serialport/DeviceControlSpd;->ctrlfile:Ljava/io/BufferedWriter;

    iget-object v1, p0, Landroid/serialport/DeviceControlSpd;->poweron:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Landroid/serialport/DeviceControlSpd;->ctrlfile:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    return-void
.end method


# virtual methods
.method public DeviceClose()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Landroid/serialport/DeviceControlSpd;->ctrlfile:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    return-void
.end method

.method public Expand2PowerOff(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    const-string v1, "/sys/class/misc/aw9524/gpio"

    invoke-direct {v0, v1}, Landroid/serialport/DeviceControlSpd;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, p1}, Landroid/serialport/DeviceControlSpd;->setGpio(I)V

    .line 263
    invoke-direct {v0}, Landroid/serialport/DeviceControlSpd;->WriteOff()V

    .line 264
    invoke-virtual {v0}, Landroid/serialport/DeviceControlSpd;->DeviceClose()V

    return-void
.end method

.method public Expand2PowerOn(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    const-string v1, "/sys/class/misc/aw9524/gpio"

    invoke-direct {v0, v1}, Landroid/serialport/DeviceControlSpd;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0, p1}, Landroid/serialport/DeviceControlSpd;->setGpio(I)V

    .line 237
    invoke-direct {v0}, Landroid/serialport/DeviceControlSpd;->writeON()V

    .line 238
    invoke-virtual {v0}, Landroid/serialport/DeviceControlSpd;->DeviceClose()V

    return-void
.end method

.method public ExpandPowerOff(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    const-string v1, "/sys/class/misc/aw9523/gpio"

    invoke-direct {v0, v1}, Landroid/serialport/DeviceControlSpd;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0, p1}, Landroid/serialport/DeviceControlSpd;->setGpio(I)V

    .line 250
    invoke-direct {v0}, Landroid/serialport/DeviceControlSpd;->WriteOff()V

    .line 251
    invoke-virtual {v0}, Landroid/serialport/DeviceControlSpd;->DeviceClose()V

    return-void
.end method

.method public ExpandPowerOn(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    const-string v1, "/sys/class/misc/aw9523/gpio"

    invoke-direct {v0, v1}, Landroid/serialport/DeviceControlSpd;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0, p1}, Landroid/serialport/DeviceControlSpd;->setGpio(I)V

    .line 224
    invoke-direct {v0}, Landroid/serialport/DeviceControlSpd;->writeON()V

    .line 225
    invoke-virtual {v0}, Landroid/serialport/DeviceControlSpd;->DeviceClose()V

    return-void
.end method

.method public MainPowerOff(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    const-string v1, "/sys/class/misc/mtgpio/pin"

    invoke-direct {v0, v1}, Landroid/serialport/DeviceControlSpd;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, p1}, Landroid/serialport/DeviceControlSpd;->setGpio(I)V

    .line 211
    invoke-direct {v0}, Landroid/serialport/DeviceControlSpd;->WriteOff()V

    .line 212
    invoke-virtual {v0}, Landroid/serialport/DeviceControlSpd;->DeviceClose()V

    return-void
.end method

.method public MainPowerOn(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    const-string v1, "/sys/class/misc/mtgpio/pin"

    invoke-direct {v0, v1}, Landroid/serialport/DeviceControlSpd;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0, p1}, Landroid/serialport/DeviceControlSpd;->setGpio(I)V

    .line 198
    invoke-direct {v0}, Landroid/serialport/DeviceControlSpd;->writeON()V

    .line 199
    invoke-virtual {v0}, Landroid/serialport/DeviceControlSpd;->DeviceClose()V

    return-void
.end method

.method public PowerOffDevice()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    sget-object v0, Landroid/serialport/DeviceControlSpd$1;->$SwitchMap$android$serialport$DeviceControlSpd$PowerType:[I

    iget-object v1, p0, Landroid/serialport/DeviceControlSpd;->power_type:Landroid/serialport/DeviceControlSpd$PowerType;

    invoke-virtual {v1}, Landroid/serialport/DeviceControlSpd$PowerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_82

    goto/16 :goto_80

    .line 391
    :pswitch_13
    iget-object v0, p0, Landroid/serialport/DeviceControlSpd;->gtGpios:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Landroid/serialport/DeviceControlSpd;->gtPower(Ljava/lang/String;)V

    goto :goto_80

    .line 380
    :pswitch_1b
    iget-object v0, p0, Landroid/serialport/DeviceControlSpd;->gpios:[I

    aget v0, v0, v3

    invoke-virtual {p0, v0}, Landroid/serialport/DeviceControlSpd;->MainPowerOff(I)V

    .line 381
    :goto_22
    iget-object v0, p0, Landroid/serialport/DeviceControlSpd;->gpios:[I

    array-length v1, v0

    if-ge v4, v1, :cond_80

    .line 382
    aget v0, v0, v4

    invoke-virtual {p0, v0}, Landroid/serialport/DeviceControlSpd;->Expand2PowerOff(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 368
    :goto_2f
    :pswitch_2f
    iget-object v0, p0, Landroid/serialport/DeviceControlSpd;->gpios:[I

    array-length v4, v0

    if-ge v3, v4, :cond_80

    .line 369
    aget v0, v0, v3

    invoke-virtual {p0, v0}, Landroid/serialport/DeviceControlSpd;->Expand2PowerOff(I)V

    .line 370
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 386
    :goto_3f
    :pswitch_3f
    iget-object v0, p0, Landroid/serialport/DeviceControlSpd;->gpios:[I

    array-length v1, v0

    if-ge v3, v1, :cond_80

    .line 387
    aget v0, v0, v3

    invoke-virtual {p0, v0}, Landroid/serialport/DeviceControlSpd;->newSetGpioOff(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 374
    :pswitch_4c
    iget-object v0, p0, Landroid/serialport/DeviceControlSpd;->gpios:[I

    aget v0, v0, v3

    invoke-virtual {p0, v0}, Landroid/serialport/DeviceControlSpd;->MainPowerOff(I)V

    .line 375
    :goto_53
    iget-object v0, p0, Landroid/serialport/DeviceControlSpd;->gpios:[I

    array-length v1, v0

    if-ge v4, v1, :cond_80

    .line 376
    aget v0, v0, v4

    invoke-virtual {p0, v0}, Landroid/serialport/DeviceControlSpd;->ExpandPowerOff(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    .line 362
    :goto_60
    :pswitch_60
    iget-object v0, p0, Landroid/serialport/DeviceControlSpd;->gpios:[I

    array-length v4, v0

    if-ge v3, v4, :cond_80

    .line 363
    aget v0, v0, v3

    invoke-virtual {p0, v0}, Landroid/serialport/DeviceControlSpd;->ExpandPowerOff(I)V

    .line 364
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_60

    .line 356
    :goto_70
    :pswitch_70
    iget-object v0, p0, Landroid/serialport/DeviceControlSpd;->gpios:[I

    array-length v4, v0

    if-ge v3, v4, :cond_80

    .line 357
    aget v0, v0, v3

    invoke-virtual {p0, v0}, Landroid/serialport/DeviceControlSpd;->MainPowerOff(I)V

    .line 358
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_70

    :cond_80
    :goto_80
    return-void

    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_70
        :pswitch_60
        :pswitch_4c
        :pswitch_3f
        :pswitch_2f
        :pswitch_1b
        :pswitch_13
    .end packed-switch
.end method

.method public PowerOnDevice()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    sget-object v0, Landroid/serialport/DeviceControlSpd$1;->$SwitchMap$android$serialport$DeviceControlSpd$PowerType:[I

    iget-object v1, p0, Landroid/serialport/DeviceControlSpd;->power_type:Landroid/serialport/DeviceControlSpd$PowerType;

    invoke-virtual {v1}, Landroid/serialport/DeviceControlSpd$PowerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x64

    packed-switch v0, :pswitch_data_92

    goto/16 :goto_90

    .line 340
    :pswitch_13
    iget-object v0, p0, Landroid/serialport/DeviceControlSpd;->gtGpios:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/serialport/DeviceControlSpd;->gtPower(Ljava/lang/String;)V

    goto/16 :goto_90

    .line 332
    :pswitch_1c
    iget-object v0, p0, Landroid/serialport/DeviceControlSpd;->gpios:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/serialport/DeviceControlSpd;->MainPowerOn(I)V

    .line 333
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 334
    :goto_26
    iget-object v0, p0, Landroid/serialport/DeviceControlSpd;->gpios:[I

    array-length v1, v0

    if-ge v2, v1, :cond_90

    .line 335
    aget v0, v0, v2

    invoke-virtual {p0, v0}, Landroid/serialport/DeviceControlSpd;->Expand2PowerOn(I)V

    .line 336
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 326
    :goto_36
    :pswitch_36
    iget-object v0, p0, Landroid/serialport/DeviceControlSpd;->gpios:[I

    array-length v2, v0

    if-ge v1, v2, :cond_90

    .line 327
    aget v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/serialport/DeviceControlSpd;->Expand2PowerOn(I)V

    .line 328
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 320
    :goto_46
    :pswitch_46
    iget-object v0, p0, Landroid/serialport/DeviceControlSpd;->gpios:[I

    array-length v2, v0

    if-ge v1, v2, :cond_90

    .line 321
    aget v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/serialport/DeviceControlSpd;->newSetGpioOn(I)V

    .line 322
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 312
    :pswitch_56
    iget-object v0, p0, Landroid/serialport/DeviceControlSpd;->gpios:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/serialport/DeviceControlSpd;->MainPowerOn(I)V

    .line 313
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 314
    :goto_60
    iget-object v0, p0, Landroid/serialport/DeviceControlSpd;->gpios:[I

    array-length v1, v0

    if-ge v2, v1, :cond_90

    .line 315
    aget v0, v0, v2

    invoke-virtual {p0, v0}, Landroid/serialport/DeviceControlSpd;->ExpandPowerOn(I)V

    .line 316
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    .line 306
    :goto_70
    :pswitch_70
    iget-object v0, p0, Landroid/serialport/DeviceControlSpd;->gpios:[I

    array-length v2, v0

    if-ge v1, v2, :cond_90

    .line 307
    aget v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/serialport/DeviceControlSpd;->ExpandPowerOn(I)V

    .line 308
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    .line 300
    :goto_80
    :pswitch_80
    iget-object v0, p0, Landroid/serialport/DeviceControlSpd;->gpios:[I

    array-length v2, v0

    if-ge v1, v2, :cond_90

    .line 301
    aget v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/serialport/DeviceControlSpd;->MainPowerOn(I)V

    .line 302
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_80

    :cond_90
    :goto_90
    return-void

    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_80
        :pswitch_70
        :pswitch_56
        :pswitch_46
        :pswitch_36
        :pswitch_1c
        :pswitch_13
    .end packed-switch
.end method

.method public gtPower(Ljava/lang/String;)V
    .registers 6

    .line 178
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/switch/app_switch/app_state"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Landroid/serialport/DeviceControlSpd;->ctrlfile:Ljava/io/BufferedWriter;

    .line 180
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Landroid/serialport/DeviceControlSpd;->ctrlfile:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V

    .line 182
    iget-object p1, p0, Landroid/serialport/DeviceControlSpd;->ctrlfile:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception p1

    .line 184
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_26
    return-void
.end method

.method public newSetDir(II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 506
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    const-string v1, "/sys/bus/platform/drivers/mediatek-pinctrl/10005000.pinctrl/mt_gpio"

    invoke-direct {v0, v1}, Landroid/serialport/DeviceControlSpd;-><init>(Ljava/lang/String;)V

    .line 507
    iget-object v1, v0, Landroid/serialport/DeviceControlSpd;->ctrlfile:Ljava/io/BufferedWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 508
    iget-object p1, v0, Landroid/serialport/DeviceControlSpd;->ctrlfile:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V

    return-void
.end method

.method public newSetGpioOff(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    const-string v1, "/sys/bus/platform/drivers/mediatek-pinctrl/10005000.pinctrl/mt_gpio"

    invoke-direct {v0, v1}, Landroid/serialport/DeviceControlSpd;-><init>(Ljava/lang/String;)V

    .line 481
    iget-object v1, v0, Landroid/serialport/DeviceControlSpd;->ctrlfile:Ljava/io/BufferedWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "out "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " 0"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 482
    iget-object p1, v0, Landroid/serialport/DeviceControlSpd;->ctrlfile:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V

    return-void
.end method

.method public newSetGpioOn(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    const-string v1, "/sys/bus/platform/drivers/mediatek-pinctrl/10005000.pinctrl/mt_gpio"

    invoke-direct {v0, v1}, Landroid/serialport/DeviceControlSpd;-><init>(Ljava/lang/String;)V

    .line 466
    iget-object v1, v0, Landroid/serialport/DeviceControlSpd;->ctrlfile:Ljava/io/BufferedWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "out "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 467
    iget-object v0, v0, Landroid/serialport/DeviceControlSpd;->ctrlfile:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 468
    invoke-virtual {p0, p1}, Landroid/serialport/DeviceControlSpd;->newSetMode(I)V

    const/4 v0, 0x1

    .line 469
    invoke-virtual {p0, p1, v0}, Landroid/serialport/DeviceControlSpd;->newSetDir(II)V

    return-void
.end method

.method public newSetMode(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 492
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    const-string v1, "/sys/bus/platform/drivers/mediatek-pinctrl/10005000.pinctrl/mt_gpio"

    invoke-direct {v0, v1}, Landroid/serialport/DeviceControlSpd;-><init>(Ljava/lang/String;)V

    .line 494
    iget-object v1, v0, Landroid/serialport/DeviceControlSpd;->ctrlfile:Ljava/io/BufferedWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " 0"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 495
    iget-object p1, v0, Landroid/serialport/DeviceControlSpd;->ctrlfile:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V

    return-void
.end method

.method public setDir(IILjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    new-instance p3, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {p3, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object p3, p0, Landroid/serialport/DeviceControlSpd;->ctrlfile:Ljava/io/BufferedWriter;

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-wdir"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 433
    iget-object p1, p0, Landroid/serialport/DeviceControlSpd;->ctrlfile:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V

    return-void
.end method

.method public setGpio(I)V
    .registers 6

    .line 101
    iget-object v0, p0, Landroid/serialport/DeviceControlSpd;->currentPath:Ljava/lang/String;

    const-string v1, "/sys/class/misc/aw9523/gpio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    iget-object v0, p0, Landroid/serialport/DeviceControlSpd;->currentPath:Ljava/lang/String;

    const-string v1, "/sys/class/misc/aw9524/gpio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_70

    .line 106
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-wmode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/serialport/DeviceControlSpd;->powermode:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-wdir "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/serialport/DeviceControlSpd;->powerdir:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-wdout "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/serialport/DeviceControlSpd;->poweron:Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/serialport/DeviceControlSpd;->poweroff:Ljava/lang/String;

    goto :goto_96

    .line 102
    :cond_70
    :goto_70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/serialport/DeviceControlSpd;->poweron:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "off"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/serialport/DeviceControlSpd;->poweroff:Ljava/lang/String;

    :goto_96
    return-void
.end method

.method public setMode(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    iget-object v0, p0, Landroid/serialport/DeviceControlSpd;->ctrlfile:Ljava/io/BufferedWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-wmode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 417
    iget-object p1, p0, Landroid/serialport/DeviceControlSpd;->ctrlfile:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V

    return-void
.end method

.method public setPull(IILjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 446
    new-instance p3, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {p3, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object p3, p0, Landroid/serialport/DeviceControlSpd;->ctrlfile:Ljava/io/BufferedWriter;

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-wpsel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 449
    iget-object p3, p0, Landroid/serialport/DeviceControlSpd;->ctrlfile:Ljava/io/BufferedWriter;

    invoke-virtual {p3}, Ljava/io/BufferedWriter;->flush()V

    .line 451
    iget-object p3, p0, Landroid/serialport/DeviceControlSpd;->ctrlfile:Ljava/io/BufferedWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-wpen"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 452
    iget-object p1, p0, Landroid/serialport/DeviceControlSpd;->ctrlfile:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V

    return-void
.end method
