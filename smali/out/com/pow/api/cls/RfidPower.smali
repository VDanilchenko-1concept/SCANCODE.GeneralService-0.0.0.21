.class public Lcom/pow/api/cls/RfidPower;
.super Ljava/lang/Object;
.source "RfidPower.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pow/api/cls/RfidPower$DeviceType;,
        Lcom/pow/api/cls/RfidPower$PDATYPE;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$pow$api$cls$RfidPower$PDATYPE:[I = null

.field protected static COM:Ljava/lang/String; = null

.field public static final CTRL_FILE:Ljava/lang/String; = "/sys/devices/platform/psam/psam_state"

.field private static final TAG:Ljava/lang/String; = "MYINFO"

.field private static final UART_SWITCH_PATH:Ljava/lang/String; = "/sys/devices/soc.0/78b0000.serial/uart_switch"

.field public static commnandList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static dt:Lcom/pow/api/cls/RfidPower$DeviceType;


# instance fields
.field private DevCtrl:Lcom/power/control/DeviceControl;

.field private Fd:I

.field private final RootPath:Ljava/lang/String;

.field private Uro:Lcom/urovo/uhf/UhfSwitchLib;

.field private final comstr:Ljava/lang/String;

.field private final dc_power:Ljava/lang/String;

.field private final en:Ljava/lang/String;

.field private idatasp:Lcom/device/serialport/SerialPort;

.field private mSerialport:Lcom/BRMicro/SerialPort;

.field private module:Lcom/rscja/deviceapi/Module;

.field ptype:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field private scan:Lcom/lsc/gpio/Scan;

.field private sp:Landroid_serialport_api/SerialPort;

.field private zp:Lcom/zhsim/pow/ZhPower;


# direct methods
.method static synthetic $SWITCH_TABLE$com$pow$api$cls$RfidPower$PDATYPE()[I
    .registers 3

    .line 42
    sget-object v0, Lcom/pow/api/cls/RfidPower;->$SWITCH_TABLE$com$pow$api$cls$RfidPower$PDATYPE:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Lcom/pow/api/cls/RfidPower$PDATYPE;->values()[Lcom/pow/api/cls/RfidPower$PDATYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->ALPS_KT45:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_15

    :catch_15
    :try_start_15
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->ALPS_KT45Q:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->CHAINWAY:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->COMMANDLIST:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_31} :catch_31

    :catch_31
    :try_start_31
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->CZ880:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_3b} :catch_3b

    :catch_3b
    :try_start_3b
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->EKEMP:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_45} :catch_45

    :catch_45
    :try_start_45
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->HANDEHUOER_12:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_4f} :catch_4f

    :catch_4f
    :try_start_4f
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->HANDEHUOER_13:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_59} :catch_59

    :catch_59
    :try_start_59
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->HD508:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_62} :catch_62

    :catch_62
    :try_start_62
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->IDATA:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6b} :catch_6b

    :catch_6b
    :try_start_6b
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->IDATA_95w4g:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_75} :catch_75

    :catch_75
    :try_start_75
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->JIEBAO:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_7e} :catch_7e

    :catch_7e
    :try_start_7e
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->K06SS_A:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_88
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_88} :catch_88

    :catch_88
    :try_start_88
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->KK:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_88 .. :try_end_92} :catch_92

    :catch_92
    :try_start_92
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->MT6737:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9c} :catch_9c

    :catch_9c
    :try_start_9c
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->NONE:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a6} :catch_a6

    :catch_a6
    :try_start_a6
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->PAX:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a6 .. :try_end_b0} :catch_b0

    :catch_b0
    :try_start_b0
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->SCAN_ALPS_ANDROID_CUIUS2:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b0 .. :try_end_b9} :catch_b9

    :catch_b9
    :try_start_b9
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->SCAN_ALPS_ANDROID_CUIUS2_NEBOARD:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_c3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b9 .. :try_end_c3} :catch_c3

    :catch_c3
    :try_start_c3
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->SCAN_ALPS_ANDROID_CUIUS2_TEST:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_cd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c3 .. :try_end_cd} :catch_cd

    :catch_cd
    :try_start_cd
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->SENTER907:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_d7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cd .. :try_end_d7} :catch_d7

    :catch_d7
    :try_start_d7
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->SENTER907_PDA_T8939:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d7 .. :try_end_e1} :catch_e1

    :catch_e1
    :try_start_e1
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->SENTER_ST308W:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_eb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e1 .. :try_end_eb} :catch_eb

    :catch_eb
    :try_start_eb
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->SENTER_ST907:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_f5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_eb .. :try_end_f5} :catch_f5

    :catch_f5
    :try_start_f5
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->ST907Ver2:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_ff
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f5 .. :try_end_ff} :catch_ff

    :catch_ff
    :try_start_ff
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->ST908:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_109
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ff .. :try_end_109} :catch_109

    :catch_109
    :try_start_109
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->ST917:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_113
    .catch Ljava/lang/NoSuchFieldError; {:try_start_109 .. :try_end_113} :catch_113

    :catch_113
    :try_start_113
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->ST917_V2:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_11d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_113 .. :try_end_11d} :catch_11d

    :catch_11d
    :try_start_11d
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->Urovo_31:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_127
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11d .. :try_end_127} :catch_127

    :catch_127
    :try_start_127
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->Urovo_31Q:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_131
    .catch Ljava/lang/NoSuchFieldError; {:try_start_127 .. :try_end_131} :catch_131

    :catch_131
    :try_start_131
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->XBANG:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_13b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_131 .. :try_end_13b} :catch_13b

    :catch_13b
    :try_start_13b
    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->XIANSHI:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_145
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13b .. :try_end_145} :catch_145

    :catch_145
    sput-object v0, Lcom/pow/api/cls/RfidPower;->$SWITCH_TABLE$com$pow$api$cls$RfidPower$PDATYPE:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/pow/api/cls/RfidPower;->commnandList:Ljava/util/List;

    const-string v0, "/dev/ttyHSL0"

    .line 266
    sput-object v0, Lcom/pow/api/cls/RfidPower;->COM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/pow/api/cls/RfidPower$PDATYPE;)V
    .registers 3

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Lcom/pow/api/cls/RfidPower;->scan:Lcom/lsc/gpio/Scan;

    const-string v0, "dc_power"

    .line 190
    iput-object v0, p0, Lcom/pow/api/cls/RfidPower;->dc_power:Ljava/lang/String;

    const-string v0, "en"

    .line 191
    iput-object v0, p0, Lcom/pow/api/cls/RfidPower;->en:Ljava/lang/String;

    const-string v0, "com"

    .line 192
    iput-object v0, p0, Lcom/pow/api/cls/RfidPower;->comstr:Ljava/lang/String;

    const-string v0, "/sys/devices/platform/uhf/"

    .line 193
    iput-object v0, p0, Lcom/pow/api/cls/RfidPower;->RootPath:Ljava/lang/String;

    .line 346
    iput-object p1, p0, Lcom/pow/api/cls/RfidPower;->ptype:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 348
    sget-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->Urovo_31:Lcom/pow/api/cls/RfidPower$PDATYPE;

    if-eq p1, v0, :cond_37

    iget-object p1, p0, Lcom/pow/api/cls/RfidPower;->ptype:Lcom/pow/api/cls/RfidPower$PDATYPE;

    sget-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->Urovo_31Q:Lcom/pow/api/cls/RfidPower$PDATYPE;

    if-ne p1, v0, :cond_23

    goto :goto_37

    .line 352
    :cond_23
    iget-object p1, p0, Lcom/pow/api/cls/RfidPower;->ptype:Lcom/pow/api/cls/RfidPower$PDATYPE;

    sget-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->K06SS_A:Lcom/pow/api/cls/RfidPower$PDATYPE;

    if-ne p1, v0, :cond_2d

    .line 354
    invoke-static {}, Lcom/example/gpio/MainActivity;->gpioInit()Z

    goto :goto_3e

    .line 356
    :cond_2d
    iget-object p1, p0, Lcom/pow/api/cls/RfidPower;->ptype:Lcom/pow/api/cls/RfidPower$PDATYPE;

    sget-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->XBANG:Lcom/pow/api/cls/RfidPower$PDATYPE;

    if-ne p1, v0, :cond_3e

    .line 358
    invoke-static {}, Lcom/pow/api/cls/RfidPower;->checkDevice()V

    goto :goto_3e

    .line 350
    :cond_37
    :goto_37
    new-instance p1, Lcom/urovo/uhf/UhfSwitchLib;

    invoke-direct {p1}, Lcom/urovo/uhf/UhfSwitchLib;-><init>()V

    iput-object p1, p0, Lcom/pow/api/cls/RfidPower;->Uro:Lcom/urovo/uhf/UhfSwitchLib;

    :cond_3e
    :goto_3e
    return-void
.end method

.method protected static checkDevice()V
    .registers 3

    .line 323
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 324
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "SHT3X"

    .line 325
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 326
    sget-object v0, Lcom/pow/api/cls/RfidPower$DeviceType;->supion_M_3:Lcom/pow/api/cls/RfidPower$DeviceType;

    sput-object v0, Lcom/pow/api/cls/RfidPower;->dt:Lcom/pow/api/cls/RfidPower$DeviceType;

    const-string v0, "dev/ttyMT2"

    .line 327
    sput-object v0, Lcom/pow/api/cls/RfidPower;->COM:Ljava/lang/String;

    goto :goto_3f

    :cond_15
    const-string v2, "SHT3X-4G"

    .line 328
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 329
    sget-object v0, Lcom/pow/api/cls/RfidPower$DeviceType;->supion_M_4:Lcom/pow/api/cls/RfidPower$DeviceType;

    sput-object v0, Lcom/pow/api/cls/RfidPower;->dt:Lcom/pow/api/cls/RfidPower$DeviceType;

    const-string v0, "dev/ttyMT3"

    .line 330
    sput-object v0, Lcom/pow/api/cls/RfidPower;->COM:Ljava/lang/String;

    goto :goto_3f

    :cond_26
    const/16 v0, 0x12

    if-ne v1, v0, :cond_33

    .line 332
    sget-object v0, Lcom/pow/api/cls/RfidPower$DeviceType;->supion_S_3:Lcom/pow/api/cls/RfidPower$DeviceType;

    sput-object v0, Lcom/pow/api/cls/RfidPower;->dt:Lcom/pow/api/cls/RfidPower$DeviceType;

    const-string v0, "/dev/ttyHSL2"

    .line 333
    sput-object v0, Lcom/pow/api/cls/RfidPower;->COM:Ljava/lang/String;

    goto :goto_3f

    :cond_33
    const/16 v0, 0x16

    if-ne v1, v0, :cond_3f

    .line 335
    sget-object v0, Lcom/pow/api/cls/RfidPower$DeviceType;->supion_S_4:Lcom/pow/api/cls/RfidPower$DeviceType;

    sput-object v0, Lcom/pow/api/cls/RfidPower;->dt:Lcom/pow/api/cls/RfidPower$DeviceType;

    const-string v0, "/dev/ttyHSL0"

    .line 336
    sput-object v0, Lcom/pow/api/cls/RfidPower;->COM:Ljava/lang/String;

    :cond_3f
    :goto_3f
    return-void
.end method

.method public static chmodFile(Ljava/lang/String;)I
    .registers 3

    .line 1168
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "chmod 777 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1170
    :try_start_e
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_15} :catch_15

    :catch_15
    const/4 p0, 0x0

    return p0
.end method

.method private power_down()Z
    .registers 3

    const/4 v0, 0x0

    const-string v1, "en"

    .line 236
    invoke-direct {p0, v1, v0}, Lcom/pow/api/cls/RfidPower;->writeFile(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "com"

    invoke-direct {p0, v1, v0}, Lcom/pow/api/cls/RfidPower;->writeFile(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "dc_power"

    invoke-direct {p0, v1, v0}, Lcom/pow/api/cls/RfidPower;->writeFile(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0
.end method

.method private power_up()Z
    .registers 3

    const/4 v0, 0x1

    const-string v1, "dc_power"

    .line 227
    invoke-direct {p0, v1, v0}, Lcom/pow/api/cls/RfidPower;->writeFile(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "com"

    invoke-direct {p0, v1, v0}, Lcom/pow/api/cls/RfidPower;->writeFile(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "en"

    invoke-direct {p0, v1, v0}, Lcom/pow/api/cls/RfidPower;->writeFile(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1a

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private sleepThread(J)V
    .registers 3

    .line 241
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception p1

    .line 243
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    return-void
.end method

.method private static switchSerialPin(Ljava/lang/String;)V
    .registers 5

    const-string v0, "serialport"

    const-string v1, "write uart switch"

    .line 308
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/soc.0/78b0000.serial/uart_switch"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/sys/devices/soc.0/78b0000.serial/uart_switch Read:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " Write:"

    .line 311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 310
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :try_start_2f
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 314
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 315
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3e} :catch_3f

    goto :goto_58

    :catch_3f
    move-exception p0

    .line 317
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "File write failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_58
    return-void
.end method

.method private declared-synchronized writeFile(Ljava/lang/String;I)Z
    .registers 7

    monitor-enter p0

    const/4 v0, 0x0

    .line 206
    :try_start_2
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/sys/devices/platform/uhf/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 208
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 210
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 211
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3a} :catch_41
    .catchall {:try_start_2 .. :try_end_3a} :catchall_3f

    const/4 p1, 0x1

    .line 212
    monitor-exit p0

    return p1

    .line 219
    :cond_3d
    monitor-exit p0

    return v0

    :catchall_3f
    move-exception p1

    goto :goto_47

    :catch_41
    move-exception p1

    .line 216
    :try_start_42
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_3f

    .line 217
    monitor-exit p0

    return v0

    :goto_47
    monitor-exit p0

    throw p1
.end method

.method private static writeToScannerCtrlFile(Ljava/lang/String;)V
    .registers 4

    .line 298
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/platform/psam/psam_state"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 299
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 300
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_2f

    :catch_17
    move-exception p0

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "File write failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "serialport"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    return-void
.end method

.method protected static xbpowerDown()Z
    .registers 2

    .line 282
    :try_start_0
    sget-object v0, Lcom/pow/api/cls/RfidPower;->dt:Lcom/pow/api/cls/RfidPower$DeviceType;

    sget-object v1, Lcom/pow/api/cls/RfidPower$DeviceType;->supion_S_3:Lcom/pow/api/cls/RfidPower$DeviceType;

    if-eq v0, v1, :cond_2e

    sget-object v0, Lcom/pow/api/cls/RfidPower;->dt:Lcom/pow/api/cls/RfidPower$DeviceType;

    sget-object v1, Lcom/pow/api/cls/RfidPower$DeviceType;->supion_M_3:Lcom/pow/api/cls/RfidPower$DeviceType;

    if-eq v0, v1, :cond_2e

    sget-object v0, Lcom/pow/api/cls/RfidPower;->dt:Lcom/pow/api/cls/RfidPower$DeviceType;

    sget-object v1, Lcom/pow/api/cls/RfidPower$DeviceType;->supion_M_4:Lcom/pow/api/cls/RfidPower$DeviceType;

    if-ne v0, v1, :cond_13

    goto :goto_2e

    .line 284
    :cond_13
    sget-object v0, Lcom/pow/api/cls/RfidPower;->dt:Lcom/pow/api/cls/RfidPower$DeviceType;

    sget-object v1, Lcom/pow/api/cls/RfidPower$DeviceType;->supion_S_4:Lcom/pow/api/cls/RfidPower$DeviceType;

    if-ne v0, v1, :cond_33

    .line 285
    new-instance v0, Ljava/lang/String;

    const-string v1, "disable"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pow/api/cls/RfidPower;->switchSerialPin(Ljava/lang/String;)V

    .line 286
    new-instance v0, Ljava/lang/String;

    const-string v1, "uart2"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pow/api/cls/RfidPower;->switchSerialPin(Ljava/lang/String;)V

    goto :goto_33

    :cond_2e
    :goto_2e
    const-string v0, "2"

    .line 283
    invoke-static {v0}, Lcom/pow/api/cls/RfidPower;->writeToScannerCtrlFile(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_35

    :cond_33
    :goto_33
    const/4 v0, 0x1

    return v0

    :catch_35
    move-exception v0

    .line 290
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method protected static xbpowerUp()Z
    .registers 2

    .line 269
    :try_start_0
    sget-object v0, Lcom/pow/api/cls/RfidPower;->dt:Lcom/pow/api/cls/RfidPower$DeviceType;

    sget-object v1, Lcom/pow/api/cls/RfidPower$DeviceType;->supion_S_3:Lcom/pow/api/cls/RfidPower$DeviceType;

    if-eq v0, v1, :cond_24

    sget-object v0, Lcom/pow/api/cls/RfidPower;->dt:Lcom/pow/api/cls/RfidPower$DeviceType;

    sget-object v1, Lcom/pow/api/cls/RfidPower$DeviceType;->supion_M_3:Lcom/pow/api/cls/RfidPower$DeviceType;

    if-eq v0, v1, :cond_24

    sget-object v0, Lcom/pow/api/cls/RfidPower;->dt:Lcom/pow/api/cls/RfidPower$DeviceType;

    sget-object v1, Lcom/pow/api/cls/RfidPower$DeviceType;->supion_M_4:Lcom/pow/api/cls/RfidPower$DeviceType;

    if-ne v0, v1, :cond_13

    goto :goto_24

    .line 271
    :cond_13
    sget-object v0, Lcom/pow/api/cls/RfidPower;->dt:Lcom/pow/api/cls/RfidPower$DeviceType;

    sget-object v1, Lcom/pow/api/cls/RfidPower$DeviceType;->supion_S_4:Lcom/pow/api/cls/RfidPower$DeviceType;

    if-ne v0, v1, :cond_29

    .line 272
    new-instance v0, Ljava/lang/String;

    const-string v1, "uart3"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pow/api/cls/RfidPower;->switchSerialPin(Ljava/lang/String;)V

    goto :goto_29

    :cond_24
    :goto_24
    const-string v0, "2"

    .line 270
    invoke-static {v0}, Lcom/pow/api/cls/RfidPower;->writeToScannerCtrlFile(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2b

    :cond_29
    :goto_29
    const/4 v0, 0x1

    return v0

    :catch_2b
    move-exception v0

    .line 275
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public GetDevPath()Ljava/lang/String;
    .registers 8

    .line 1096
    invoke-static {}, Lcom/pow/api/cls/RfidPower;->$SWITCH_TABLE$com$pow$api$cls$RfidPower$PDATYPE()[I

    move-result-object v0

    iget-object v1, p0, Lcom/pow/api/cls/RfidPower;->ptype:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "/dev/ttySAC3"

    const-string v2, "/dev/ttyMT1"

    const-string v3, "/dev/ttyMT2"

    const-string v4, "/dev/ttyMT0"

    const-string v5, "/dev/ttyMT3"

    const-string v6, "/dev/ttyHSL1"

    packed-switch v0, :pswitch_data_52

    const-string v0, "/dev/tty|192.168.1.100"

    return-object v0

    :pswitch_1e
    return-object v6

    :pswitch_1f
    const-string v0, "/dev/ttyMSM2"

    return-object v0

    :pswitch_22
    const-string v0, "/dev/ttyHS0"

    return-object v0

    :pswitch_25
    return-object v5

    :pswitch_26
    return-object v3

    :pswitch_27
    return-object v6

    :pswitch_28
    return-object v5

    :pswitch_29
    const-string v0, "/dev/ttyHSL2"

    return-object v0

    :pswitch_2c
    return-object v1

    :pswitch_2d
    return-object v3

    :pswitch_2e
    const-string v0, "/dev/ttysWK2"

    return-object v0

    .line 1130
    :pswitch_31
    sget-object v0, Lcom/pow/api/cls/RfidPower;->COM:Ljava/lang/String;

    return-object v0

    :pswitch_34
    const-string v0, "/dev/ttyS2"

    return-object v0

    :pswitch_37
    return-object v6

    :pswitch_38
    const-string v0, "/dev/ttySC0"

    return-object v0

    :pswitch_3b
    return-object v2

    :pswitch_3c
    return-object v4

    :pswitch_3d
    const-string v0, "/dev/ttyHS1"

    return-object v0

    :pswitch_40
    return-object v5

    :pswitch_41
    return-object v4

    :pswitch_42
    const-string v0, "/dev/ttyVK3"

    return-object v0

    :pswitch_45
    return-object v1

    :pswitch_46
    const/4 v0, 0x2

    .line 1108
    invoke-static {v0}, Lcom/device/serialport/SerialPort;->getDevPath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4c
    return-object v6

    :pswitch_4d
    return-object v3

    :pswitch_4e
    return-object v2

    :pswitch_4f
    return-object v4

    :pswitch_50
    return-object v5

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_46
        :pswitch_45
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_38
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_29
        :pswitch_28
        :pswitch_3b
        :pswitch_27
        :pswitch_27
        :pswitch_2e
        :pswitch_26
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1e
    .end packed-switch
.end method

.method public GetType()Lcom/pow/api/cls/RfidPower$PDATYPE;
    .registers 2

    .line 364
    iget-object v0, p0, Lcom/pow/api/cls/RfidPower;->ptype:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object v0
.end method

.method public PowerDown()Z
    .registers 7

    .line 782
    invoke-static {}, Lcom/pow/api/cls/RfidPower;->$SWITCH_TABLE$com$pow$api$cls$RfidPower$PDATYPE()[I

    move-result-object v0

    iget-object v1, p0, Lcom/pow/api/cls/RfidPower;->ptype:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "echo 0 > /sys/devices/soc.0/xt_dev.68/xt_uart_a"

    const-string v2, "echo 0 > /sys/devices/soc.0/xt_dev.68/xt_dc_in_en"

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_188

    :pswitch_16
    return v4

    :pswitch_17
    return v5

    .line 1082
    :pswitch_18
    invoke-static {}, Lrfid/lib/client/Power;->off_ST917_V2()V

    return v5

    .line 1077
    :pswitch_1c
    invoke-static {}, Lrfid/lib/client/Power;->off_ST917()V

    return v5

    .line 1069
    :pswitch_20
    invoke-static {}, Lcom/baifu/pow/bfPower;->Bfpowdown()I

    move-result v0

    if-nez v0, :cond_27

    return v5

    :cond_27
    return v4

    .line 1053
    :pswitch_28
    invoke-static {}, Lcom/slr2000/power/Emgpio;->poweroff()Z

    move-result v0

    return v0

    .line 1049
    :pswitch_2d
    invoke-static {}, Lcom/example/scarx/idcardreader/SimpleInterface;->IOCTL_UHF_POWER_OFF()Z

    move-result v0

    return v0

    .line 1044
    :pswitch_32
    invoke-static {}, Lrfid/lib/client/Power;->off_ST907ver2_5v()V

    return v5

    :pswitch_36
    :try_start_36
    const-string v0, "echo 0 > /sys/devices/soc.0/xt_dev.68/xt_uhf_en"

    .line 1032
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;

    .line 1034
    invoke-static {v1}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;

    const-string v0, "echo 0 > /sys/devices/soc.0/xt_dev.68/xt_uart_b"

    .line 1035
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception v0

    .line 1038
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_48
    return v5

    .line 1018
    :pswitch_49
    :try_start_49
    invoke-static {v2}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;

    .line 1020
    invoke-static {v1}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;

    const-string v0, "echo 1 > /sys/devices/soc.0/xt_dev.68/xt_uart_b"

    .line 1021
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_54} :catch_55

    goto :goto_59

    :catch_55
    move-exception v0

    .line 1024
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_59
    return v5

    :pswitch_5a
    const/4 v0, 0x2

    .line 1003
    invoke-static {v0}, Lcom/example/gpio/MainActivity;->getGpioMode(I)I

    move-result v1

    .line 1004
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "open, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yangqinghua"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    invoke-static {v0}, Lcom/example/gpio/MainActivity;->setGpioMode(I)Z

    .line 1006
    invoke-static {v0}, Lcom/example/gpio/MainActivity;->setGpioOutput(I)Z

    .line 1007
    invoke-static {v0}, Lcom/example/gpio/MainActivity;->setGpioDataLow(I)Z

    const/16 v0, 0x3d

    .line 1009
    invoke-static {v0}, Lcom/example/gpio/MainActivity;->setGpioMode(I)Z

    .line 1010
    invoke-static {v0}, Lcom/example/gpio/MainActivity;->setGpioOutput(I)Z

    .line 1011
    invoke-static {v0}, Lcom/example/gpio/MainActivity;->setGpioDataLow(I)Z

    return v5

    .line 996
    :pswitch_87
    iget-object v0, p0, Lcom/pow/api/cls/RfidPower;->Uro:Lcom/urovo/uhf/UhfSwitchLib;

    invoke-virtual {v0}, Lcom/urovo/uhf/UhfSwitchLib;->uhf_switch_exit()I

    move-result v0

    if-nez v0, :cond_90

    return v5

    :cond_90
    return v4

    .line 986
    :pswitch_91
    :try_start_91
    iget-object v0, p0, Lcom/pow/api/cls/RfidPower;->DevCtrl:Lcom/power/control/DeviceControl;

    if-eqz v0, :cond_9a

    .line 987
    iget-object v0, p0, Lcom/pow/api/cls/RfidPower;->DevCtrl:Lcom/power/control/DeviceControl;

    invoke-virtual {v0}, Lcom/power/control/DeviceControl;->PowerOffDevice94()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_9a} :catch_9b

    :cond_9a
    return v5

    :catch_9b
    return v4

    .line 978
    :pswitch_9c
    :try_start_9c
    invoke-static {v2}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a0

    goto :goto_a4

    :catch_a0
    move-exception v0

    .line 980
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_a4
    return v5

    .line 950
    :pswitch_a5
    invoke-static {}, Lcom/pow/api/cls/RfidPower;->xbpowerDown()Z

    move-result v0

    return v0

    .line 924
    :pswitch_aa
    :try_start_aa
    new-instance v0, Ljava/io/FileWriter;

    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/gpiocontrol/set_id"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const-string v1, "0"

    .line 925
    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 926
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_be} :catch_bf

    return v5

    :catch_bf
    move-exception v0

    .line 929
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v4

    .line 912
    :pswitch_c4
    :try_start_c4
    new-instance v0, Ljava/io/FileWriter;

    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/tty/ttyHSL1/device/uart_switch"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const-string v1, "disable"

    .line 913
    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 914
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_d8} :catch_d9

    return v5

    :catch_d9
    move-exception v0

    .line 917
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v4

    :pswitch_de
    const-string v0, "echo 0 > /sys/devices/virtual/misc/rfidctl/rs232_en"

    .line 971
    invoke-static {v0}, Lcom/odm/tools/Tools;->system(Ljava/lang/String;)I

    const-string v0, "echo 0 > /sys/devices/virtual/misc/rfidctl/rfid_en"

    .line 972
    invoke-static {v0}, Lcom/odm/tools/Tools;->system(Ljava/lang/String;)I

    return v5

    .line 893
    :pswitch_e9
    :try_start_e9
    iget-object v0, p0, Lcom/pow/api/cls/RfidPower;->mSerialport:Lcom/BRMicro/SerialPort;

    invoke-virtual {v0}, Lcom/BRMicro/SerialPort;->zigbeepoweroff()V

    .line 894
    iget-object v0, p0, Lcom/pow/api/cls/RfidPower;->mSerialport:Lcom/BRMicro/SerialPort;

    invoke-virtual {v0}, Lcom/BRMicro/SerialPort;->rfidPoweroff()V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_f3} :catch_f4

    return v5

    :catch_f4
    return v4

    .line 867
    :pswitch_f5
    iget-object v0, p0, Lcom/pow/api/cls/RfidPower;->scan:Lcom/lsc/gpio/Scan;

    if-nez v0, :cond_102

    .line 870
    :try_start_f9
    new-instance v0, Lcom/lsc/gpio/Scan;

    invoke-direct {v0}, Lcom/lsc/gpio/Scan;-><init>()V

    iput-object v0, p0, Lcom/pow/api/cls/RfidPower;->scan:Lcom/lsc/gpio/Scan;
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_100} :catch_101

    goto :goto_102

    :catch_101
    return v4

    .line 877
    :cond_102
    :goto_102
    iget-object v0, p0, Lcom/pow/api/cls/RfidPower;->scan:Lcom/lsc/gpio/Scan;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/lsc/gpio/Scan;->ctrl(I)I

    move-result v0

    if-eqz v0, :cond_10d

    return v4

    .line 880
    :cond_10d
    iget-object v0, p0, Lcom/pow/api/cls/RfidPower;->scan:Lcom/lsc/gpio/Scan;

    invoke-virtual {v0, v3}, Lcom/lsc/gpio/Scan;->ctrl(I)I

    move-result v0

    if-eqz v0, :cond_116

    return v4

    .line 883
    :cond_116
    iget-object v0, p0, Lcom/pow/api/cls/RfidPower;->scan:Lcom/lsc/gpio/Scan;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/lsc/gpio/Scan;->ctrl(I)I

    move-result v0

    if-nez v0, :cond_120

    return v5

    :cond_120
    return v4

    .line 864
    :pswitch_121
    invoke-static {}, Lrfid/lib/client/Power;->off_ST907_4P2v()V

    return v5

    .line 861
    :pswitch_125
    invoke-static {}, Lrfid/lib/client/Power;->off()V

    return v5

    .line 856
    :pswitch_129
    invoke-static {v4}, Landroid/devkit/api/Misc;->uhfEnable(Z)V

    return v4

    .line 853
    :pswitch_12d
    invoke-direct {p0}, Lcom/pow/api/cls/RfidPower;->power_down()Z

    move-result v0

    return v0

    .line 845
    :pswitch_132
    invoke-static {v3}, Lcom/device/serialport/SerialPort;->ioctlFromJNI(I)I

    move-result v0

    if-nez v0, :cond_139

    return v5

    :cond_139
    return v4

    .line 837
    :pswitch_13a
    :try_start_13a
    invoke-static {}, Lcom/hitown/hitownsdk/HitownAC3508Control;->getInstance()Lcom/hitown/hitownsdk/HitownAC3508Control;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hitown/hitownsdk/HitownAC3508Control;->close()V
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_13a .. :try_end_141} :catch_142

    return v5

    :catch_142
    return v4

    .line 827
    :pswitch_143
    :try_start_143
    iget-object v0, p0, Lcom/pow/api/cls/RfidPower;->DevCtrl:Lcom/power/control/DeviceControl;

    if-eqz v0, :cond_14c

    .line 828
    iget-object v0, p0, Lcom/pow/api/cls/RfidPower;->DevCtrl:Lcom/power/control/DeviceControl;

    invoke-virtual {v0}, Lcom/power/control/DeviceControl;->PowerOffDevice()V
    :try_end_14c
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_14c} :catch_14d

    :cond_14c
    return v5

    :catch_14d
    return v4

    .line 808
    :pswitch_14e
    iget-object v0, p0, Lcom/pow/api/cls/RfidPower;->scan:Lcom/lsc/gpio/Scan;

    if-nez v0, :cond_15b

    .line 811
    :try_start_152
    new-instance v0, Lcom/lsc/gpio/Scan;

    invoke-direct {v0}, Lcom/lsc/gpio/Scan;-><init>()V

    iput-object v0, p0, Lcom/pow/api/cls/RfidPower;->scan:Lcom/lsc/gpio/Scan;
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_159} :catch_15a

    goto :goto_15b

    :catch_15a
    return v4

    .line 818
    :cond_15b
    :goto_15b
    iget-object v0, p0, Lcom/pow/api/cls/RfidPower;->scan:Lcom/lsc/gpio/Scan;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/lsc/gpio/Scan;->ctrl(I)I

    move-result v0

    if-nez v0, :cond_166

    return v5

    :cond_166
    return v4

    .line 798
    :pswitch_167
    sget-object v0, Lcom/pow/api/cls/RfidPower;->commnandList:Ljava/util/List;

    const-string v1, "echo 1 >/sys/devices/platform/gpio_test/uart1power"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    sget-object v0, Lcom/pow/api/cls/RfidPower;->commnandList:Ljava/util/List;

    invoke-static {v0, v4}, Lcn/trinea/android/common/util/ShellUtils;->execCommand(Ljava/util/List;Z)Lcn/trinea/android/common/util/ShellUtils$CommandResult;

    move-result-object v0

    .line 802
    iget v0, v0, Lcn/trinea/android/common/util/ShellUtils$CommandResult;->result:I

    if-nez v0, :cond_179

    return v5

    :cond_179
    return v4

    .line 788
    :pswitch_17a
    :try_start_17a
    invoke-static {}, Lcom/rscja/deviceapi/Module;->getInstance()Lcom/rscja/deviceapi/Module;

    move-result-object v0

    iput-object v0, p0, Lcom/pow/api/cls/RfidPower;->module:Lcom/rscja/deviceapi/Module;

    const/4 v1, 0x3

    .line 789
    invoke-virtual {v0, v1}, Lcom/rscja/deviceapi/Module;->powerOff(I)Z

    move-result v0
    :try_end_185
    .catch Lcom/rscja/deviceapi/exception/ConfigurationException; {:try_start_17a .. :try_end_185} :catch_186

    return v0

    :catch_186
    return v4

    nop

    :pswitch_data_188
    .packed-switch 0x1
        :pswitch_17a
        :pswitch_167
        :pswitch_14e
        :pswitch_143
        :pswitch_13a
        :pswitch_132
        :pswitch_12d
        :pswitch_129
        :pswitch_16
        :pswitch_125
        :pswitch_121
        :pswitch_f5
        :pswitch_e9
        :pswitch_de
        :pswitch_c4
        :pswitch_aa
        :pswitch_a5
        :pswitch_9c
        :pswitch_91
        :pswitch_87
        :pswitch_87
        :pswitch_5a
        :pswitch_e9
        :pswitch_49
        :pswitch_36
        :pswitch_32
        :pswitch_2d
        :pswitch_28
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_17
    .end packed-switch
.end method

.method public PowerUp()Z
    .registers 9

    .line 369
    iget-object v0, p0, Lcom/pow/api/cls/RfidPower;->ptype:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v0}, Lcom/pow/api/cls/RfidPower$PDATYPE;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MYINFO"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/pow/api/cls/RfidPower;->$SWITCH_TABLE$com$pow$api$cls$RfidPower$PDATYPE()[I

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcom/pow/api/cls/RfidPower;->ptype:Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-virtual {v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "echo 1 > /sys/devices/soc.0/xt_dev.68/xt_uart_b"

    const-string v2, "echo 0 > /sys/devices/soc.0/xt_dev.68/xt_uart_a"

    const-string v3, "/sys/class/misc/mtgpio/pin"

    const-string v4, "echo 1 > /sys/devices/soc.0/xt_dev.68/xt_dc_in_en"

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_1b4

    :pswitch_25
    return v6

    :pswitch_26
    return v7

    .line 767
    :pswitch_27
    invoke-static {}, Lrfid/lib/client/Power;->on_ST917_V2()V

    return v7

    .line 762
    :pswitch_2b
    invoke-static {}, Lrfid/lib/client/Power;->on_ST917()V

    return v7

    .line 753
    :pswitch_2f
    invoke-static {}, Lcom/baifu/pow/bfPower;->Bfpowup()I

    move-result v0

    if-nez v0, :cond_36

    return v7

    :cond_36
    return v6

    .line 744
    :pswitch_37
    invoke-static {}, Lcom/slr2000/power/Emgpio;->poweron()Z

    move-result v0

    return v0

    .line 740
    :pswitch_3c
    invoke-static {}, Lcom/example/scarx/idcardreader/SimpleInterface;->IOCTL_UHF_POWER_ON()Z

    move-result v0

    return v0

    .line 735
    :pswitch_41
    invoke-static {}, Lrfid/lib/client/Power;->on_ST907ver2_5v()V

    return v7

    :pswitch_45
    :try_start_45
    const-string v0, "echo 1 > /sys/devices/soc.0/xt_dev.68/xt_uhf_en"

    .line 722
    invoke-static {v0}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;

    .line 724
    invoke-static {v2}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;

    .line 725
    invoke-static {v1}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_50} :catch_51

    return v7

    :catch_51
    move-exception v0

    .line 728
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return v6

    .line 707
    :pswitch_56
    :try_start_56
    invoke-static {v4}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;

    .line 709
    invoke-static {v2}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;

    .line 710
    invoke-static {v1}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5f} :catch_60

    return v7

    :catch_60
    move-exception v0

    .line 713
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return v6

    .line 517
    :pswitch_65
    :try_start_65
    new-instance v0, Lcom/BRMicro/SerialPort;

    invoke-direct {v0}, Lcom/BRMicro/SerialPort;-><init>()V

    iput-object v0, p0, Lcom/pow/api/cls/RfidPower;->mSerialport:Lcom/BRMicro/SerialPort;

    .line 518
    invoke-virtual {v0}, Lcom/BRMicro/SerialPort;->zigbeepoweron()V

    .line 519
    iget-object v0, p0, Lcom/pow/api/cls/RfidPower;->mSerialport:Lcom/BRMicro/SerialPort;

    invoke-virtual {v0}, Lcom/BRMicro/SerialPort;->rfidPoweron()V

    .line 520
    iget-object v0, p0, Lcom/pow/api/cls/RfidPower;->mSerialport:Lcom/BRMicro/SerialPort;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/BRMicro/SerialPort;->switch2Channel(I)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_7b} :catch_7c

    return v7

    :catch_7c
    return v6

    :pswitch_7d
    const/4 v0, 0x2

    .line 692
    invoke-static {v0}, Lcom/example/gpio/MainActivity;->getGpioMode(I)I

    .line 694
    invoke-static {v0}, Lcom/example/gpio/MainActivity;->setGpioMode(I)Z

    .line 695
    invoke-static {v0}, Lcom/example/gpio/MainActivity;->setGpioOutput(I)Z

    .line 696
    invoke-static {v0}, Lcom/example/gpio/MainActivity;->setGpioDataHigh(I)Z

    const/16 v0, 0x3d

    .line 698
    invoke-static {v0}, Lcom/example/gpio/MainActivity;->setGpioMode(I)Z

    .line 699
    invoke-static {v0}, Lcom/example/gpio/MainActivity;->setGpioOutput(I)Z

    .line 700
    invoke-static {v0}, Lcom/example/gpio/MainActivity;->setGpioDataHigh(I)Z

    return v7

    .line 685
    :pswitch_96
    iget-object v0, p0, Lcom/pow/api/cls/RfidPower;->Uro:Lcom/urovo/uhf/UhfSwitchLib;

    invoke-virtual {v0}, Lcom/urovo/uhf/UhfSwitchLib;->uhf_switch_init()I

    move-result v0

    if-nez v0, :cond_9f

    return v7

    :cond_9f
    return v6

    .line 673
    :pswitch_a0
    :try_start_a0
    new-instance v0, Lcom/power/control/DeviceControl;

    invoke-direct {v0, v3}, Lcom/power/control/DeviceControl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pow/api/cls/RfidPower;->DevCtrl:Lcom/power/control/DeviceControl;

    .line 674
    invoke-virtual {v0}, Lcom/power/control/DeviceControl;->PowerOnDevice94()V
    :try_end_aa
    .catch Ljava/lang/SecurityException; {:try_start_a0 .. :try_end_aa} :catch_ab
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_aa} :catch_ab

    return v7

    :catch_ab
    return v6

    .line 662
    :pswitch_ac
    :try_start_ac
    invoke-static {v4}, Lrfid/lib/client/CommunicateShell;->postShellComm(Ljava/lang/String;)Ljava/util/List;
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b0

    return v7

    :catch_b0
    move-exception v0

    .line 665
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return v6

    .line 631
    :pswitch_b5
    invoke-static {}, Lcom/pow/api/cls/RfidPower;->xbpowerUp()Z

    move-result v0

    return v0

    .line 605
    :pswitch_ba
    :try_start_ba
    new-instance v0, Ljava/io/FileWriter;

    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/gpiocontrol/set_id"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const-string v1, "1"

    .line 606
    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_ce} :catch_cf

    return v7

    :catch_cf
    move-exception v0

    .line 610
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v6

    .line 552
    :pswitch_d4
    :try_start_d4
    new-instance v0, Ljava/io/FileWriter;

    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/tty/ttyHSL1/device/uart_switch"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const-string v1, "slr53"

    .line 553
    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_e8} :catch_e9

    return v7

    :catch_e9
    move-exception v0

    .line 557
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v6

    :pswitch_ee
    const-string v0, "echo 1 > /sys/devices/virtual/misc/rfidctl/rs232_en"

    .line 653
    invoke-static {v0}, Lcom/odm/tools/Tools;->system(Ljava/lang/String;)I

    const-string v0, "echo 1 > /sys/devices/virtual/misc/rfidctl/rfid_en"

    .line 654
    invoke-static {v0}, Lcom/odm/tools/Tools;->system(Ljava/lang/String;)I

    return v7

    .line 503
    :pswitch_f9
    :try_start_f9
    new-instance v0, Lcom/BRMicro/SerialPort;

    invoke-direct {v0}, Lcom/BRMicro/SerialPort;-><init>()V

    iput-object v0, p0, Lcom/pow/api/cls/RfidPower;->mSerialport:Lcom/BRMicro/SerialPort;

    .line 504
    invoke-virtual {v0}, Lcom/BRMicro/SerialPort;->zigbeepoweron()V

    .line 505
    iget-object v0, p0, Lcom/pow/api/cls/RfidPower;->mSerialport:Lcom/BRMicro/SerialPort;

    invoke-virtual {v0}, Lcom/BRMicro/SerialPort;->rfidPoweron()V

    .line 506
    iget-object v0, p0, Lcom/pow/api/cls/RfidPower;->mSerialport:Lcom/BRMicro/SerialPort;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/BRMicro/SerialPort;->switch2Channel(I)V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_10f} :catch_110

    return v7

    :catch_110
    return v6

    .line 476
    :pswitch_111
    iget-object v0, p0, Lcom/pow/api/cls/RfidPower;->scan:Lcom/lsc/gpio/Scan;

    if-nez v0, :cond_11e

    .line 479
    :try_start_115
    new-instance v0, Lcom/lsc/gpio/Scan;

    invoke-direct {v0}, Lcom/lsc/gpio/Scan;-><init>()V

    iput-object v0, p0, Lcom/pow/api/cls/RfidPower;->scan:Lcom/lsc/gpio/Scan;
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_11c} :catch_11d

    goto :goto_11e

    :catch_11d
    return v6

    .line 487
    :cond_11e
    :goto_11e
    iget-object v0, p0, Lcom/pow/api/cls/RfidPower;->scan:Lcom/lsc/gpio/Scan;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/lsc/gpio/Scan;->ctrl(I)I

    move-result v0

    if-eqz v0, :cond_129

    return v6

    .line 490
    :cond_129
    iget-object v0, p0, Lcom/pow/api/cls/RfidPower;->scan:Lcom/lsc/gpio/Scan;

    invoke-virtual {v0, v5}, Lcom/lsc/gpio/Scan;->ctrl(I)I

    move-result v0

    if-eqz v0, :cond_132

    return v6

    .line 493
    :cond_132
    iget-object v0, p0, Lcom/pow/api/cls/RfidPower;->scan:Lcom/lsc/gpio/Scan;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/lsc/gpio/Scan;->ctrl(I)I

    move-result v0

    if-nez v0, :cond_13c

    return v7

    :cond_13c
    return v6

    .line 13
    :pswitch_13d
    invoke-static {}, Lrfid/lib/client/Power;->on_ST907_4P2v()V

    return v7

    .line 466
    :pswitch_141
    invoke-static {}, Lrfid/lib/client/Power;->on()V

    return v7

    .line 450
    :pswitch_145
    invoke-static {v7}, Landroid/devkit/api/Misc;->uhfEnable(Z)V

    const-wide/16 v0, 0x190

    .line 453
    :try_start_14a
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_14d} :catch_14e

    goto :goto_152

    :catch_14e
    move-exception v0

    .line 456
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_152
    return v7

    .line 445
    :pswitch_153
    invoke-direct {p0}, Lcom/pow/api/cls/RfidPower;->power_up()Z

    move-result v0

    return v0

    .line 435
    :pswitch_158
    invoke-static {v5}, Lcom/device/serialport/SerialPort;->ioctlFromJNI(I)I

    move-result v0

    if-nez v0, :cond_15f

    return v7

    :cond_15f
    return v6

    :pswitch_160
    const-wide/16 v0, 0xc8

    .line 427
    invoke-direct {p0, v0, v1}, Lcom/pow/api/cls/RfidPower;->sleepThread(J)V

    .line 428
    invoke-virtual {p0}, Lcom/pow/api/cls/RfidPower;->doSomethingInit()Z

    move-result v2

    .line 429
    invoke-direct {p0, v0, v1}, Lcom/pow/api/cls/RfidPower;->sleepThread(J)V

    return v2

    .line 416
    :pswitch_16d
    :try_start_16d
    new-instance v0, Lcom/power/control/DeviceControl;

    invoke-direct {v0, v3}, Lcom/power/control/DeviceControl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pow/api/cls/RfidPower;->DevCtrl:Lcom/power/control/DeviceControl;

    .line 417
    invoke-virtual {v0}, Lcom/power/control/DeviceControl;->PowerOnDevice()V
    :try_end_177
    .catch Ljava/lang/SecurityException; {:try_start_16d .. :try_end_177} :catch_178
    .catch Ljava/io/IOException; {:try_start_16d .. :try_end_177} :catch_178

    return v7

    :catch_178
    return v6

    .line 395
    :pswitch_179
    iget-object v0, p0, Lcom/pow/api/cls/RfidPower;->scan:Lcom/lsc/gpio/Scan;

    if-nez v0, :cond_186

    .line 398
    :try_start_17d
    new-instance v0, Lcom/lsc/gpio/Scan;

    invoke-direct {v0}, Lcom/lsc/gpio/Scan;-><init>()V

    iput-object v0, p0, Lcom/pow/api/cls/RfidPower;->scan:Lcom/lsc/gpio/Scan;
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_17d .. :try_end_184} :catch_185

    goto :goto_186

    :catch_185
    return v6

    .line 406
    :cond_186
    :goto_186
    iget-object v0, p0, Lcom/pow/api/cls/RfidPower;->scan:Lcom/lsc/gpio/Scan;

    invoke-virtual {v0, v7}, Lcom/lsc/gpio/Scan;->ctrl(I)I

    move-result v0

    if-nez v0, :cond_18f

    return v7

    :cond_18f
    return v6

    .line 386
    :pswitch_190
    sget-object v0, Lcom/pow/api/cls/RfidPower;->commnandList:Ljava/util/List;

    const-string v1, "echo 1 >/sys/devices/platform/gpio_test/uart1power"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    sget-object v0, Lcom/pow/api/cls/RfidPower;->commnandList:Ljava/util/List;

    invoke-static {v0, v7}, Lcn/trinea/android/common/util/ShellUtils;->execCommand(Ljava/util/List;Z)Lcn/trinea/android/common/util/ShellUtils$CommandResult;

    move-result-object v0

    .line 389
    iget v0, v0, Lcn/trinea/android/common/util/ShellUtils$CommandResult;->result:I

    if-nez v0, :cond_1a2

    return v7

    :cond_1a2
    return v6

    .line 377
    :pswitch_1a3
    :try_start_1a3
    invoke-static {}, Lcom/rscja/deviceapi/Module;->getInstance()Lcom/rscja/deviceapi/Module;

    move-result-object v0

    iput-object v0, p0, Lcom/pow/api/cls/RfidPower;->module:Lcom/rscja/deviceapi/Module;

    .line 378
    invoke-virtual {v0, v5}, Lcom/rscja/deviceapi/Module;->powerOn(I)Z

    .line 379
    iget-object v0, p0, Lcom/pow/api/cls/RfidPower;->module:Lcom/rscja/deviceapi/Module;

    invoke-virtual {v0, v5}, Lcom/rscja/deviceapi/Module;->uartSwitch(I)Z

    move-result v0
    :try_end_1b2
    .catch Lcom/rscja/deviceapi/exception/ConfigurationException; {:try_start_1a3 .. :try_end_1b2} :catch_1b3

    return v0

    :catch_1b3
    return v6

    :pswitch_data_1b4
    .packed-switch 0x1
        :pswitch_1a3
        :pswitch_190
        :pswitch_179
        :pswitch_16d
        :pswitch_160
        :pswitch_158
        :pswitch_153
        :pswitch_145
        :pswitch_25
        :pswitch_141
        :pswitch_13d
        :pswitch_111
        :pswitch_f9
        :pswitch_ee
        :pswitch_d4
        :pswitch_ba
        :pswitch_b5
        :pswitch_ac
        :pswitch_a0
        :pswitch_96
        :pswitch_96
        :pswitch_7d
        :pswitch_65
        :pswitch_56
        :pswitch_45
        :pswitch_41
        :pswitch_3c
        :pswitch_37
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_26
    .end packed-switch
.end method

.method protected doSomethingInit()Z
    .registers 2

    .line 248
    :try_start_0
    invoke-static {}, Lcom/hitown/hitownsdk/HitownAC3508Control;->getInstance()Lcom/hitown/hitownsdk/HitownAC3508Control;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hitown/hitownsdk/HitownAC3508Control;->init()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    const/4 v0, 0x1

    return v0

    :catch_9
    const/4 v0, 0x0

    return v0
.end method
