.class public Lcom/uhf/api/cls/Reader;
.super Ljava/lang/Object;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uhf/api/cls/Reader$ALIENHiggs3BlockReadLockPara;,
        Lcom/uhf/api/cls/Reader$AntPortsVSWR;,
        Lcom/uhf/api/cls/Reader$AntPower;,
        Lcom/uhf/api/cls/Reader$AntPowerConf;,
        Lcom/uhf/api/cls/Reader$BackReadGpiTriState;,
        Lcom/uhf/api/cls/Reader$ConnAnts_ST;,
        Lcom/uhf/api/cls/Reader$CustomCmdType;,
        Lcom/uhf/api/cls/Reader$CustomParam_ST;,
        Lcom/uhf/api/cls/Reader$DeviceSerialNumber;,
        Lcom/uhf/api/cls/Reader$EmbededData_ST;,
        Lcom/uhf/api/cls/Reader$EmbededSecureRead_ST;,
        Lcom/uhf/api/cls/Reader$Exceptionotify;,
        Lcom/uhf/api/cls/Reader$FrequencyVSWR;,
        Lcom/uhf/api/cls/Reader$HardwareDetails;,
        Lcom/uhf/api/cls/Reader$HoptableData_ST;,
        Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;,
        Lcom/uhf/api/cls/Reader$IMPINJM4QtResult;,
        Lcom/uhf/api/cls/Reader$Inv_Potl;,
        Lcom/uhf/api/cls/Reader$Inv_Potls_ST;,
        Lcom/uhf/api/cls/Reader$Lock_Obj;,
        Lcom/uhf/api/cls/Reader$Lock_Type;,
        Lcom/uhf/api/cls/Reader$MaindBoard_Type;,
        Lcom/uhf/api/cls/Reader$Module_Type;,
        Lcom/uhf/api/cls/Reader$Mtr_Param;,
        Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;,
        Lcom/uhf/api/cls/Reader$NXPChangeEASPara;,
        Lcom/uhf/api/cls/Reader$NXPEASAlarmPara;,
        Lcom/uhf/api/cls/Reader$NXPEASAlarmResult;,
        Lcom/uhf/api/cls/Reader$NXP_U8_InventoryModePara;,
        Lcom/uhf/api/cls/Reader$READER_ERR;,
        Lcom/uhf/api/cls/Reader$ReaderVersion;,
        Lcom/uhf/api/cls/Reader$Reader_Ip;,
        Lcom/uhf/api/cls/Reader$Reader_Type;,
        Lcom/uhf/api/cls/Reader$Region_Conf;,
        Lcom/uhf/api/cls/Reader$SL_TagProtocol;,
        Lcom/uhf/api/cls/Reader$TAGINFO;,
        Lcom/uhf/api/cls/Reader$TagFilter_ST;,
        Lcom/uhf/api/cls/Reader$TagSelector_ST;,
        Lcom/uhf/api/cls/Reader$Tagnotify;,
        Lcom/uhf/api/cls/Reader$deviceVersion;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$uhf$api$cls$Reader$CustomCmdType:[I = null

.field private static synthetic $SWITCH_TABLE$com$uhf$api$cls$Reader$Mtr_Param:[I = null

.field public static final HOPTABLECNT:I = 0x64

.field public static final MAXANTCNT:I = 0x10

.field public static final MAXEMBDATALEN:I = 0x80

.field public static final MAXEPCBYTESCNT:I = 0x3e

.field public static final MAXINVPOTLSCNT:I = 0x6

.field public static final MAXIPSTRLEN:I = 0x32


# instance fields
.field private final JniBytesBufferLength:I

.field addr:Ljava/lang/String;

.field protected gpitriListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uhf/api/cls/GpiTriggerListener;",
            ">;"
        }
    .end annotation
.end field

.field protected gpitriboundListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uhf/api/cls/GpiTriggerBoundaryListener;",
            ">;"
        }
    .end annotation
.end field

.field hReader:[I

.field japi:Lcom/uhf/api/cls/JniModuleAPI;

.field m_BackReadAnts:[I

.field m_BackReadAntsCnt:I

.field m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

.field m_FastReadOption:I

.field m_IsReadThRunning:Z

.field m_IsReadingForAll:Z

.field m_ThreadForAll:Ljava/lang/Thread;

.field m_ThreadForAllid:J

.field m_gError:I

.field protected readExceptionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uhf/api/cls/ReadExceptionListener;",
            ">;"
        }
    .end annotation
.end field

.field protected readListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uhf/api/cls/ReadListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$uhf$api$cls$Reader$CustomCmdType()[I
    .registers 3

    .line 6
    sget-object v0, Lcom/uhf/api/cls/Reader;->$SWITCH_TABLE$com$uhf$api$cls$Reader$CustomCmdType:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Lcom/uhf/api/cls/Reader$CustomCmdType;->values()[Lcom/uhf/api/cls/Reader$CustomCmdType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs2_FullLoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$CustomCmdType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_15

    :catch_15
    :try_start_15
    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs2_PartialLoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$CustomCmdType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1e
    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs3_BlockPermaLock:Lcom/uhf/api/cls/Reader$CustomCmdType;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$CustomCmdType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs3_BlockReadLock:Lcom/uhf/api/cls/Reader$CustomCmdType;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$CustomCmdType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_32} :catch_32

    :catch_32
    :try_start_32
    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs3_FastLoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$CustomCmdType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3c} :catch_3c

    :catch_3c
    :try_start_3c
    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->ALIEN_Higgs3_LoadImage:Lcom/uhf/api/cls/Reader$CustomCmdType;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$CustomCmdType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_46} :catch_46

    :catch_46
    :try_start_46
    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->IMPINJ_M4_Qt:Lcom/uhf/api/cls/Reader$CustomCmdType;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$CustomCmdType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_50} :catch_50

    :catch_50
    :try_start_50
    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_Calibrate:Lcom/uhf/api/cls/Reader$CustomCmdType;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$CustomCmdType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_59} :catch_59

    :catch_59
    :try_start_59
    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_ChangeEAS:Lcom/uhf/api/cls/Reader$CustomCmdType;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$CustomCmdType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_62} :catch_62

    :catch_62
    :try_start_62
    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_EASAlarm:Lcom/uhf/api/cls/Reader$CustomCmdType;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$CustomCmdType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6b} :catch_6b

    :catch_6b
    :try_start_6b
    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_ResetReadProtect:Lcom/uhf/api/cls/Reader$CustomCmdType;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$CustomCmdType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_74
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_74} :catch_74

    :catch_74
    :try_start_74
    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_SetReadProtect:Lcom/uhf/api/cls/Reader$CustomCmdType;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$CustomCmdType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_74 .. :try_end_7d} :catch_7d

    :catch_7d
    :try_start_7d
    sget-object v1, Lcom/uhf/api/cls/Reader$CustomCmdType;->NXP_U8_InventoryMode:Lcom/uhf/api/cls/Reader$CustomCmdType;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$CustomCmdType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d .. :try_end_87} :catch_87

    :catch_87
    sput-object v0, Lcom/uhf/api/cls/Reader;->$SWITCH_TABLE$com$uhf$api$cls$Reader$CustomCmdType:[I

    return-object v0
.end method

.method static synthetic $SWITCH_TABLE$com$uhf$api$cls$Reader$Mtr_Param()[I
    .registers 3

    .line 6
    sget-object v0, Lcom/uhf/api/cls/Reader;->$SWITCH_TABLE$com$uhf$api$cls$Reader$Mtr_Param:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Lcom/uhf/api/cls/Reader$Mtr_Param;->values()[Lcom/uhf/api/cls/Reader$Mtr_Param;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_CUSTOM:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_16} :catch_16

    :catch_16
    :try_start_16
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_FREQUENCY_HOPTABLE:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_20} :catch_20

    :catch_20
    :try_start_20
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_FREQUENCY_REGION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_MAXINDEX:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_34} :catch_34

    :catch_34
    :try_start_34
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_BLF:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_MAXEPCLEN:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_47} :catch_47

    :catch_47
    :try_start_47
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_Q:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_50} :catch_50

    :catch_50
    :try_start_50
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_SESSION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_59} :catch_59

    :catch_59
    :try_start_59
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_TAGENCODING:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_62} :catch_62

    :catch_62
    :try_start_62
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_TARGET:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_TARI:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_76} :catch_76

    :catch_76
    :try_start_76
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_WRITEMODE:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_76 .. :try_end_80} :catch_80

    :catch_80
    :try_start_80
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_ISO180006B_BLF:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_8a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8a} :catch_8a

    :catch_8a
    :try_start_8a
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_ISO180006B_DELIMITER:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8a .. :try_end_94} :catch_94

    :catch_94
    :try_start_94
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_ISO180006B_MODULATION_DEPTH:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_9e} :catch_9e

    :catch_9e
    :try_start_9e
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_SUPPORTEDPROTOCOLS:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_a8} :catch_a8

    :catch_a8
    :try_start_a8
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POWERSAVE_MODE:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_b2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b2} :catch_b2

    :catch_b2
    :try_start_b2
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_READER_AVAILABLE_ANTPORTS:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b2 .. :try_end_bc} :catch_bc

    :catch_bc
    :try_start_bc
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_READER_CONN_ANTS:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_c6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bc .. :try_end_c6} :catch_c6

    :catch_c6
    :try_start_c6
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_READER_ERRORDATA:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c6 .. :try_end_d0} :catch_d0

    :catch_d0
    :try_start_d0
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_READER_IP:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d0 .. :try_end_da} :catch_da

    :catch_da
    :try_start_da
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_READER_IS_CHK_ANT:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_da .. :try_end_e4} :catch_e4

    :catch_e4
    :try_start_e4
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_READER_VERSION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_ee
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e4 .. :try_end_ee} :catch_ee

    :catch_ee
    :try_start_ee
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_READER_WATCHDOG:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_f8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ee .. :try_end_f8} :catch_f8

    :catch_f8
    :try_start_f8
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_RF_ANTPORTS_VSWR:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_102
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f8 .. :try_end_102} :catch_102

    :catch_102
    :try_start_102
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_RF_ANTPOWER:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_10b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_102 .. :try_end_10b} :catch_10b

    :catch_10b
    :try_start_10b
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_RF_HOPANTTIME:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_115
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10b .. :try_end_115} :catch_115

    :catch_115
    :try_start_115
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_RF_HOPTIME:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_11f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_115 .. :try_end_11f} :catch_11f

    :catch_11f
    :try_start_11f
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_RF_LBT_ENABLE:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_129
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11f .. :try_end_129} :catch_129

    :catch_129
    :try_start_129
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_RF_MAXPOWER:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_132
    .catch Ljava/lang/NoSuchFieldError; {:try_start_129 .. :try_end_132} :catch_132

    :catch_132
    :try_start_132
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_RF_MINPOWER:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_13b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_132 .. :try_end_13b} :catch_13b

    :catch_13b
    :try_start_13b
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_RF_SUPPORTEDREGIONS:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_145
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13b .. :try_end_145} :catch_145

    :catch_145
    :try_start_145
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_RF_TEMPERATURE:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_14f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_145 .. :try_end_14f} :catch_14f

    :catch_14f
    :try_start_14f
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TAGDATA_RECORDHIGHESTRSSI:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_159
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14f .. :try_end_159} :catch_159

    :catch_159
    :try_start_159
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TAGDATA_UNIQUEBYANT:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_163
    .catch Ljava/lang/NoSuchFieldError; {:try_start_159 .. :try_end_163} :catch_163

    :catch_163
    :try_start_163
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TAGDATA_UNIQUEBYEMDDATA:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_16d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_163 .. :try_end_16d} :catch_16d

    :catch_16d
    :try_start_16d
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TAG_EMBEDEDDATA:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_177
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16d .. :try_end_177} :catch_177

    :catch_177
    :try_start_177
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TAG_EMDSECUREREAD:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_181
    .catch Ljava/lang/NoSuchFieldError; {:try_start_177 .. :try_end_181} :catch_181

    :catch_181
    :try_start_181
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TAG_FILTER:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_18b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_181 .. :try_end_18b} :catch_18b

    :catch_18b
    :try_start_18b
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TAG_INVPOTL:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_195
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18b .. :try_end_195} :catch_195

    :catch_195
    :try_start_195
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TAG_MULTISELECTORS:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_19f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_195 .. :try_end_19f} :catch_19f

    :catch_19f
    :try_start_19f
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TAG_SEARCH_MODE:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_1a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19f .. :try_end_1a9} :catch_1a9

    :catch_1a9
    :try_start_1a9
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TRANSMIT_MODE:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_1b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a9 .. :try_end_1b3} :catch_1b3

    :catch_1b3
    :try_start_1b3
    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TRANS_TIMEOUT:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b3 .. :try_end_1bd} :catch_1bd

    :catch_1bd
    sput-object v0, Lcom/uhf/api/cls/Reader;->$SWITCH_TABLE$com$uhf$api$cls$Reader$Mtr_Param:[I

    return-object v0
.end method

.method public constructor <init>()V
    .registers 2

    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    .line 984
    iput v0, p0, Lcom/uhf/api/cls/Reader;->JniBytesBufferLength:I

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 999
    iput-object v0, p0, Lcom/uhf/api/cls/Reader;->m_BackReadAnts:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1009
    iput-object v0, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    .line 1010
    new-instance v0, Lcom/uhf/api/cls/JniModuleAPI;

    invoke-direct {v0}, Lcom/uhf/api/cls/JniModuleAPI;-><init>()V

    iput-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    .line 1011
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/uhf/api/cls/Reader;->readListeners:Ljava/util/List;

    .line 1012
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/uhf/api/cls/Reader;->readExceptionListeners:Ljava/util/List;

    .line 1013
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/uhf/api/cls/Reader;->gpitriListener:Ljava/util/List;

    .line 1014
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/uhf/api/cls/Reader;->gpitriboundListener:Ljava/util/List;

    return-void
.end method

.method private ALOGS(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method private CLOGS()V
    .registers 1

    return-void
.end method

.method public static FirmwareLoadFromSerialPort(Ljava/lang/String;Ljava/lang/String;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 2

    .line 2239
    invoke-static {p0, p1}, Lcom/uhf/api/cls/JniModuleAPI;->FirmwareLoadFromSerialPort(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 2240
    invoke-static {p0}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p0

    return-object p0
.end method

.method public static GetDeviceVersion(Ljava/lang/String;Lcom/uhf/api/cls/Reader$deviceVersion;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 15

    const/16 v0, 0x9

    new-array v0, v0, [B

    .line 2129
    invoke-static {p0, v0}, Lcom/uhf/api/cls/JniModuleAPI;->GetDeviceVersion(Ljava/lang/String;[B)I

    move-result p0

    .line 2130
    invoke-static {p0}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p0

    .line 2131
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne p0, v1, :cond_1c4

    const/4 v1, 0x0

    .line 2132
    aget-byte v2, v0, v1

    const/16 v3, 0x8

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const-string v11, "."

    if-ne v2, v10, :cond_da

    .line 2133
    new-instance v1, Ljava/lang/StringBuilder;

    aget-byte v2, v0, v10

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->hardwareVer:Ljava/lang/String;

    .line 2134
    iget-object v1, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->hardwareVer:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v1, v0, v9

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->hardwareVer:Ljava/lang/String;

    .line 2135
    iget-object v1, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->hardwareVer:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v1, v0, v8

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->hardwareVer:Ljava/lang/String;

    .line 2136
    iget-object v1, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->hardwareVer:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v1, v0, v7

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->hardwareVer:Ljava/lang/String;

    .line 2138
    new-instance v1, Ljava/lang/StringBuilder;

    aget-byte v2, v0, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->softwareVer:Ljava/lang/String;

    .line 2139
    iget-object v1, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->softwareVer:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v1, v0, v5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->softwareVer:Ljava/lang/String;

    .line 2140
    iget-object v1, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->softwareVer:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v1, v0, v4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->softwareVer:Ljava/lang/String;

    .line 2141
    iget-object v1, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->softwareVer:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->softwareVer:Ljava/lang/String;

    goto/16 :goto_1c4

    :cond_da
    new-array v2, v10, [B

    .line 2144
    aget-byte v10, v0, v10

    aput-byte v10, v2, v1

    .line 2145
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->hardwareVer:Ljava/lang/String;

    .line 2146
    aget-byte v9, v0, v9

    aput-byte v9, v2, v1

    .line 2147
    iget-object v9, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->hardwareVer:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->hardwareVer:Ljava/lang/String;

    .line 2148
    aget-byte v8, v0, v8

    aput-byte v8, v2, v1

    .line 2149
    iget-object v8, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->hardwareVer:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->hardwareVer:Ljava/lang/String;

    .line 2150
    aget-byte v7, v0, v7

    aput-byte v7, v2, v1

    .line 2151
    iget-object v7, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->hardwareVer:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->hardwareVer:Ljava/lang/String;

    .line 2153
    aget-byte v6, v0, v6

    aput-byte v6, v2, v1

    .line 2154
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->softwareVer:Ljava/lang/String;

    .line 2155
    aget-byte v5, v0, v5

    aput-byte v5, v2, v1

    .line 2156
    iget-object v5, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->softwareVer:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->softwareVer:Ljava/lang/String;

    .line 2157
    aget-byte v4, v0, v4

    aput-byte v4, v2, v1

    .line 2158
    iget-object v4, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->softwareVer:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->softwareVer:Ljava/lang/String;

    .line 2159
    aget-byte v0, v0, v3

    aput-byte v0, v2, v1

    .line 2160
    iget-object v0, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->softwareVer:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->softwareVer:Ljava/lang/String;

    :cond_1c4
    :goto_1c4
    return-object p0
.end method

.method private GetIntFrByteArray([BI)I
    .registers 5

    .line 1489
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    .line 1490
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    .line 1491
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    .line 1492
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method public static GetSDKVersion()Ljava/lang/String;
    .registers 2

    .line 2123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "jarVersion:20180911"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "soVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uhf/api/cls/JniModuleAPI;->GetSDKVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private GpiTriContains(Lcom/uhf/api/cls/GpiInfo_ST;Lcom/uhf/api/cls/GpiInfo_ST;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2383
    :goto_2
    iget v2, p1, Lcom/uhf/api/cls/GpiInfo_ST;->gpiCount:I

    const/4 v3, 0x1

    if-lt v1, v2, :cond_8

    return v3

    .line 2385
    :cond_8
    iget-object v2, p2, Lcom/uhf/api/cls/GpiInfo_ST;->gpiStats:[Lcom/uhf/api/cls/GpiState_ST;

    iget-object v4, p1, Lcom/uhf/api/cls/GpiInfo_ST;->gpiStats:[Lcom/uhf/api/cls/GpiState_ST;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/uhf/api/cls/GpiState_ST;->GpiId:I

    sub-int/2addr v4, v3

    aget-object v2, v2, v4

    iget v2, v2, Lcom/uhf/api/cls/GpiState_ST;->State:I

    .line 2386
    iget-object v3, p1, Lcom/uhf/api/cls/GpiInfo_ST;->gpiStats:[Lcom/uhf/api/cls/GpiState_ST;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/uhf/api/cls/GpiState_ST;->State:I

    if-eq v2, v3, :cond_1e

    return v0

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static RebootReader(Ljava/lang/String;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 1

    .line 2246
    invoke-static {p0}, Lcom/uhf/api/cls/JniModuleAPI;->RebootReader(Ljava/lang/String;)I

    move-result p0

    .line 2247
    invoke-static {p0}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$0(Lcom/uhf/api/cls/Reader;I)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 2

    .line 2539
    invoke-direct {p0, p1}, Lcom/uhf/api/cls/Reader;->errhandle(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/GpiInfo_ST;Lcom/uhf/api/cls/GpiInfo_ST;)Z
    .registers 3

    .line 2381
    invoke-direct {p0, p1, p2}, Lcom/uhf/api/cls/Reader;->GpiTriContains(Lcom/uhf/api/cls/GpiInfo_ST;Lcom/uhf/api/cls/GpiInfo_ST;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Lcom/uhf/api/cls/Reader;->ALOGS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 2

    .line 2567
    invoke-direct {p0, p1}, Lcom/uhf/api/cls/Reader;->errhandle2(Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p0

    return-object p0
.end method

.method public static bytes_Hexstr([B)Ljava/lang/String;
    .registers 7

    .line 1985
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1987
    :goto_8
    array-length v3, p0

    if-lt v2, v3, :cond_10

    .line 1993
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1988
    :cond_10
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 1989
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_22

    .line 1990
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1991
    :cond_22
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method

.method private bytestochars([B)[C
    .registers 5

    .line 1031
    array-length v0, p1

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 1033
    :goto_4
    array-length v2, p1

    if-lt v1, v2, :cond_8

    return-object v0

    .line 1034
    :cond_8
    aget-byte v2, p1, v1

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method private charstobytes([C)[B
    .registers 6

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1045
    :goto_7
    array-length v3, p1

    if-lt v1, v3, :cond_b

    goto :goto_14

    .line 1047
    :cond_b
    aget-char v3, p1, v1

    if-eqz v3, :cond_14

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1052
    :cond_14
    :goto_14
    new-array v1, v2, [B

    :goto_16
    if-lt v0, v2, :cond_19

    return-object v1

    .line 1055
    :cond_19
    aget-char v3, p1, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_16
.end method

.method private errhandle(I)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 5

    .line 2541
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 2542
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v0, v1, :cond_30

    .line 2544
    iput p1, p0, Lcom/uhf/api/cls/Reader;->m_gError:I

    .line 2545
    iget-object p1, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-boolean p1, p1, Lcom/uhf/api/cls/BackReadOption;->IsFastRead:Z

    if-eqz p1, :cond_18

    const-wide/16 v1, 0x1f4

    .line 2548
    :try_start_12
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_15} :catch_15

    .line 2553
    :catch_15
    invoke-virtual {p0}, Lcom/uhf/api/cls/Reader;->AsyncStopReading()Lcom/uhf/api/cls/Reader$READER_ERR;

    :cond_18
    const/4 p1, 0x0

    .line 2555
    iput-boolean p1, p0, Lcom/uhf/api/cls/Reader;->m_IsReadingForAll:Z

    .line 2556
    iget-object p1, p0, Lcom/uhf/api/cls/Reader;->readExceptionListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_30

    .line 2558
    new-instance p1, Lcom/uhf/api/cls/Reader$Exceptionotify;

    invoke-direct {p1, p0, p0, v0}, Lcom/uhf/api/cls/Reader$Exceptionotify;-><init>(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)V

    .line 2559
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2560
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_30
    return-object v0
.end method

.method private errhandle2(Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 4

    .line 2569
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq p1, v0, :cond_2a

    .line 2571
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-boolean v0, v0, Lcom/uhf/api/cls/BackReadOption;->IsFastRead:Z

    if-eqz v0, :cond_12

    const-wide/16 v0, 0x1f4

    .line 2574
    :try_start_c
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_f

    .line 2579
    :catch_f
    invoke-virtual {p0}, Lcom/uhf/api/cls/Reader;->AsyncStopReading()Lcom/uhf/api/cls/Reader$READER_ERR;

    :cond_12
    const/4 v0, 0x0

    .line 2581
    iput-boolean v0, p0, Lcom/uhf/api/cls/Reader;->m_IsReadingForAll:Z

    .line 2582
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->readExceptionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2a

    .line 2584
    new-instance v0, Lcom/uhf/api/cls/Reader$Exceptionotify;

    invoke-direct {v0, p0, p0, p1}, Lcom/uhf/api/cls/Reader$Exceptionotify;-><init>(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)V

    .line 2585
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2586
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_2a
    return-object p1
.end method


# virtual methods
.method public AsyncGetNextTag(Lcom/uhf/api/cls/Reader$TAGINFO;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 12

    .line 2076
    monitor-enter p0

    const/16 v0, 0x1f4

    :try_start_3
    new-array v0, v0, [B

    .line 2079
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v2, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/uhf/api/cls/JniModuleAPI;->AsyncGetNextTag_BaseType(I[B)I

    move-result v1

    .line 2080
    invoke-static {v1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 2082
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v1, v2, :cond_d5

    .line 2085
    aget-byte v2, v0, v3

    iput v2, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->ReadCnt:I

    const/4 v2, 0x1

    .line 2086
    aget-byte v4, v0, v2

    iput v4, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->RSSI:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    .line 2087
    aget-byte v6, v0, v5

    iput-byte v6, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->AntennaID:B

    .line 2088
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v6, 0x4

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x10

    shl-int/2addr v6, v7

    or-int/2addr v4, v6

    const/4 v6, 0x5

    .line 2089
    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v8, 0x8

    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    const/4 v6, 0x6

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    .line 2088
    iput v4, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->Frequency:I

    const/4 v4, 0x7

    .line 2091
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    aget-byte v6, v0, v8

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v7

    or-int/2addr v4, v6

    const/16 v6, 0x9

    .line 2092
    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    const/16 v6, 0xa

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    .line 2091
    iput v4, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->TimeStamp:I

    const/16 v4, 0xb

    .line 2094
    iget-object v6, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->Res:[B

    const/16 v9, 0xc

    aget-byte v4, v0, v4

    aput-byte v4, v6, v3

    .line 2095
    iget-object v4, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->Res:[B

    const/16 v6, 0xd

    aget-byte v9, v0, v9

    aput-byte v9, v4, v2

    .line 2096
    aget-byte v4, v0, v6

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v8

    const/16 v6, 0xe

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    const/16 v6, 0xf

    .line 2098
    iget-object v9, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->PC:[B

    aget-byte v6, v0, v6

    aput-byte v6, v9, v3

    .line 2099
    iget-object v6, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->PC:[B

    const/16 v9, 0x11

    aget-byte v7, v0, v7

    aput-byte v7, v6, v2

    .line 2100
    new-array v6, v4, [B

    iput-object v6, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->EpcId:[B

    int-to-short v6, v4

    .line 2101
    iput-short v6, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->Epclen:S

    .line 2102
    iget-object v6, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->EpcId:[B

    invoke-static {v0, v9, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v4

    .line 2104
    iget-object v4, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->CRC:[B

    add-int/lit8 v6, v9, 0x1

    aget-byte v7, v0, v9

    aput-byte v7, v4, v3

    .line 2105
    iget-object v4, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->CRC:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v0, v6

    aput-byte v6, v4, v2

    add-int/lit8 v2, v7, 0x1

    .line 2106
    aget-byte v4, v0, v7

    invoke-static {v4}, Lcom/uhf/api/cls/Reader$SL_TagProtocol;->valueOf(I)Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    move-result-object v4

    iput-object v4, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->protocol:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    .line 2107
    aget-byte v4, v0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v8

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    add-int/2addr v2, v5

    .line 2109
    new-array v5, v4, [B

    iput-object v5, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededData:[B

    int-to-short v5, v4

    .line 2110
    iput-short v5, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededDatalen:S

    if-lez v4, :cond_d5

    .line 2112
    iget-object p1, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededData:[B

    invoke-static {v0, v2, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2117
    :cond_d5
    monitor-exit p0

    return-object v1

    :catchall_d7
    move-exception p1

    .line 2076
    monitor-exit p0
    :try_end_d9
    .catchall {:try_start_3 .. :try_end_d9} :catchall_d7

    throw p1
.end method

.method public AsyncGetTagCount([I)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 5

    .line 2043
    monitor-enter p0

    .line 2044
    :try_start_1
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1, p1}, Lcom/uhf/api/cls/JniModuleAPI;->AsyncGetTagCount(I[I)I

    move-result p1

    .line 2045
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 2046
    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    .line 2043
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public AsyncStartReading([III)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 7

    .line 2027
    monitor-enter p0

    .line 2028
    :try_start_1
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/uhf/api/cls/JniModuleAPI;->AsyncStartReading(I[III)I

    move-result p1

    .line 2029
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 2030
    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    .line 2027
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public AsyncStopReading()Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 4

    .line 2035
    monitor-enter p0

    .line 2036
    :try_start_1
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/uhf/api/cls/JniModuleAPI;->AsyncStopReading(I)I

    move-result v0

    .line 2037
    invoke-static {v0}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 2038
    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    .line 2035
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public BlockErase(IIII[BS)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 15

    .line 1313
    monitor-enter p0

    .line 1314
    :try_start_1
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/uhf/api/cls/JniModuleAPI;->BlockErase(IIIII[BS)I

    move-result p1

    .line 1315
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1316
    monitor-exit p0

    return-object p1

    :catchall_18
    move-exception p1

    .line 1313
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public BlockPermaLock(IIII[B[BS)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 19

    move-object v1, p0

    .line 1303
    monitor-enter p0

    .line 1304
    :try_start_2
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v0, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v3, 0x0

    aget v3, v0, v3

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v2 .. v10}, Lcom/uhf/api/cls/JniModuleAPI;->BlockPermaLock(IIIII[B[BS)I

    move-result v0

    .line 1305
    invoke-static {v0}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 1306
    monitor-exit p0

    return-object v0

    :catchall_1d
    move-exception v0

    .line 1303
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public CloseReader()V
    .registers 4

    .line 1130
    monitor-enter p0

    .line 1131
    :try_start_1
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/uhf/api/cls/JniModuleAPI;->CloseReader(I)V

    const-string v0, ""

    .line 1132
    iput-object v0, p0, Lcom/uhf/api/cls/Reader;->addr:Ljava/lang/String;

    .line 1133
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    aput v2, v0, v2

    .line 1134
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->readListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1135
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->readExceptionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1136
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->gpitriListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1137
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->gpitriboundListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1130
    monitor-exit p0

    return-void

    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public CustomCmd(ILcom/uhf/api/cls/Reader$CustomCmdType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 23

    move-object/from16 v1, p0

    .line 1348
    monitor-enter p0

    .line 1350
    :try_start_3
    invoke-static {}, Lcom/uhf/api/cls/Reader;->$SWITCH_TABLE$com$uhf$api$cls$Reader$CustomCmdType()[I

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/uhf/api/cls/Reader$CustomCmdType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x3

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x7

    const v6, 0xff00

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/16 v9, 0x8

    if-eq v0, v2, :cond_134

    const/16 v10, 0xb

    const/4 v11, 0x1

    if-eq v0, v8, :cond_10e

    const/16 v2, 0xa

    if-eq v0, v2, :cond_ed

    const/16 v12, 0xd

    const/16 v13, 0xc

    if-eq v0, v13, :cond_3b

    if-eq v0, v12, :cond_2f

    .line 1423
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_NOT_SUPPORTED:Lcom/uhf/api/cls/Reader$READER_ERR;

    monitor-exit p0

    return-object v0

    .line 1416
    :cond_2f
    move-object/from16 v0, p3

    check-cast v0, Lcom/uhf/api/cls/Reader$NXP_U8_InventoryModePara;

    .line 1417
    iget-object v0, v0, Lcom/uhf/api/cls/Reader$NXP_U8_InventoryModePara;->Mode:[B

    new-array v2, v11, [B

    :goto_37
    move-object v12, v0

    move-object v13, v2

    goto/16 :goto_156

    .line 1354
    :cond_3b
    move-object/from16 v0, p3

    check-cast v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;

    const/16 v11, 0x16

    new-array v11, v11, [B

    new-array v14, v2, [B

    .line 1357
    iget-object v15, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->AccessPwd:[B

    invoke-static {v15, v7, v11, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1358
    iget v15, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->CmdType:I

    const/high16 v16, -0x1000000

    and-int v15, v15, v16

    shr-int/lit8 v15, v15, 0x18

    int-to-byte v15, v15

    aput-byte v15, v11, v8

    .line 1359
    iget v8, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->CmdType:I

    const/high16 v15, 0xff0000

    and-int/2addr v8, v15

    const/16 v17, 0x10

    shr-int/lit8 v8, v8, 0x10

    int-to-byte v8, v8

    aput-byte v8, v11, v4

    .line 1360
    iget v4, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->CmdType:I

    and-int/2addr v4, v6

    shr-int/2addr v4, v9

    int-to-byte v4, v4

    aput-byte v4, v11, v3

    .line 1361
    iget v3, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->CmdType:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v11, v5

    .line 1362
    iget v3, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->MemType:I

    and-int v3, v3, v16

    shr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, v11, v9

    const/16 v3, 0x9

    .line 1363
    iget v4, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->MemType:I

    and-int/2addr v4, v15

    shr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v11, v3

    .line 1364
    iget v3, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->MemType:I

    and-int/2addr v3, v6

    shr-int/2addr v3, v9

    int-to-byte v3, v3

    aput-byte v3, v11, v2

    .line 1365
    iget v2, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->MemType:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v11, v10

    .line 1366
    iget v2, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->PersistType:I

    and-int v2, v2, v16

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v11, v13

    .line 1367
    iget v2, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->PersistType:I

    and-int/2addr v2, v15

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v11, v12

    const/16 v2, 0xe

    .line 1368
    iget v3, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->PersistType:I

    and-int/2addr v3, v6

    shr-int/2addr v3, v9

    int-to-byte v3, v3

    aput-byte v3, v11, v2

    const/16 v2, 0xf

    .line 1369
    iget v3, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->PersistType:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v11, v2

    .line 1370
    iget v2, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->RangeType:I

    and-int v2, v2, v16

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v11, v17

    const/16 v2, 0x11

    .line 1371
    iget v3, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->RangeType:I

    and-int/2addr v3, v15

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v11, v2

    const/16 v2, 0x12

    .line 1372
    iget v3, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->RangeType:I

    and-int/2addr v3, v6

    shr-int/2addr v3, v9

    int-to-byte v3, v3

    aput-byte v3, v11, v2

    const/16 v2, 0x13

    .line 1373
    iget v3, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->RangeType:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v11, v2

    const/16 v2, 0x14

    .line 1375
    iget-short v3, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->TimeOut:S

    and-int/2addr v3, v6

    shr-int/2addr v3, v9

    int-to-byte v3, v3

    aput-byte v3, v11, v2

    const/16 v2, 0x15

    .line 1376
    iget-short v0, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->TimeOut:S

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v11, v2

    move-object v12, v11

    move-object v13, v14

    goto :goto_156

    :cond_ed
    new-array v0, v5, [B

    new-array v2, v5, [B

    .line 1383
    move-object/from16 v5, p3

    check-cast v5, Lcom/uhf/api/cls/Reader$ALIENHiggs3BlockReadLockPara;

    .line 1384
    iget-object v10, v5, Lcom/uhf/api/cls/Reader$ALIENHiggs3BlockReadLockPara;->AccessPwd:[B

    invoke-static {v10, v7, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1385
    iget-byte v10, v5, Lcom/uhf/api/cls/Reader$ALIENHiggs3BlockReadLockPara;->BlkBits:B

    aput-byte v10, v0, v8

    .line 1386
    iget-short v8, v5, Lcom/uhf/api/cls/Reader$ALIENHiggs3BlockReadLockPara;->TimeOut:S

    and-int/2addr v6, v8

    shr-int/2addr v6, v9

    int-to-byte v6, v6

    aput-byte v6, v0, v4

    .line 1387
    iget-short v4, v5, Lcom/uhf/api/cls/Reader$ALIENHiggs3BlockReadLockPara;->TimeOut:S

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    goto/16 :goto_37

    :cond_10e
    new-array v0, v4, [B

    new-array v3, v4, [B

    .line 1405
    move-object/from16 v4, p3

    check-cast v4, Lcom/uhf/api/cls/Reader$NXPEASAlarmPara;

    .line 1406
    iget-byte v5, v4, Lcom/uhf/api/cls/Reader$NXPEASAlarmPara;->DR:B

    aput-byte v5, v0, v7

    .line 1407
    iput-byte v10, v4, Lcom/uhf/api/cls/Reader$NXPEASAlarmPara;->MC:B

    aput-byte v10, v0, v11

    const/4 v5, 0x2

    .line 1408
    iget-byte v10, v4, Lcom/uhf/api/cls/Reader$NXPEASAlarmPara;->TrExt:B

    aput-byte v10, v0, v5

    .line 1409
    iget-short v5, v4, Lcom/uhf/api/cls/Reader$NXPEASAlarmPara;->TimeOut:S

    and-int/2addr v5, v6

    shr-int/2addr v5, v9

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    .line 1410
    iget-short v2, v4, Lcom/uhf/api/cls/Reader$NXPEASAlarmPara;->TimeOut:S

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v8

    move-object v12, v0

    move-object v13, v3

    goto :goto_156

    :cond_134
    new-array v0, v5, [B

    new-array v2, v5, [B

    .line 1394
    move-object/from16 v5, p3

    check-cast v5, Lcom/uhf/api/cls/Reader$NXPChangeEASPara;

    .line 1395
    iget-object v10, v5, Lcom/uhf/api/cls/Reader$NXPChangeEASPara;->AccessPwd:[B

    invoke-static {v10, v7, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1396
    iget v10, v5, Lcom/uhf/api/cls/Reader$NXPChangeEASPara;->isSet:I

    int-to-byte v10, v10

    aput-byte v10, v0, v8

    .line 1397
    iget-short v8, v5, Lcom/uhf/api/cls/Reader$NXPChangeEASPara;->TimeOut:S

    and-int/2addr v6, v8

    shr-int/2addr v6, v9

    int-to-byte v6, v6

    aput-byte v6, v0, v4

    .line 1398
    iget-short v4, v5, Lcom/uhf/api/cls/Reader$NXPChangeEASPara;->TimeOut:S

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    goto/16 :goto_37

    .line 1425
    :goto_156
    iget-object v8, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v0, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v9, v0, v7

    invoke-virtual/range {p2 .. p2}, Lcom/uhf/api/cls/Reader$CustomCmdType;->value()I

    move-result v11

    move/from16 v10, p1

    invoke-virtual/range {v8 .. v13}, Lcom/uhf/api/cls/JniModuleAPI;->CustomCmd_BaseType(III[B[B)I

    move-result v0

    .line 1426
    invoke-static {v0}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 1428
    monitor-exit p0

    return-object v0

    :catchall_16c
    move-exception v0

    .line 1348
    monitor-exit p0
    :try_end_16e
    .catchall {:try_start_3 .. :try_end_16e} :catchall_16c

    goto :goto_170

    :goto_16f
    throw v0

    :goto_170
    goto :goto_16f
.end method

.method public CustomCmd_BaseType(II[B[B)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 11

    .line 1434
    monitor-enter p0

    .line 1435
    :try_start_1
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/uhf/api/cls/JniModuleAPI;->CustomCmd_BaseType(III[B[B)I

    move-result p1

    .line 1436
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1437
    monitor-exit p0

    return-object p1

    :catchall_16
    move-exception p1

    .line 1434
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public DataTransportRecv([BII)I
    .registers 7

    .line 2335
    monitor-enter p0

    .line 2336
    :try_start_1
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/uhf/api/cls/JniModuleAPI;->DataTransportRecv(I[BII)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_e
    move-exception p1

    .line 2335
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public DataTransportSend([BII)I
    .registers 7

    .line 2327
    monitor-enter p0

    .line 2328
    :try_start_1
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/uhf/api/cls/JniModuleAPI;->DataTransportSend(I[BII)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_e
    move-exception p1

    .line 2327
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public EraseDataOnReader()Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 4

    .line 1321
    monitor-enter p0

    .line 1322
    :try_start_1
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/uhf/api/cls/JniModuleAPI;->EraseDataOnReader(I)I

    move-result v0

    .line 1323
    invoke-static {v0}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 1324
    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    .line 1321
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public GetGPI(I[I)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 6

    .line 1452
    monitor-enter p0

    .line 1453
    :try_start_1
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1, p1, p2}, Lcom/uhf/api/cls/JniModuleAPI;->GetGPI(II[I)I

    move-result p1

    .line 1454
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1455
    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    .line 1452
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public GetGPIEx(Lcom/uhf/api/cls/GpiInfo_ST;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 8

    .line 1461
    monitor-enter p0

    const/16 v0, 0x1f4

    :try_start_3
    new-array v0, v0, [B

    .line 1463
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v2, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/uhf/api/cls/JniModuleAPI;->GetGPIEx_BaseType(I[B)I

    move-result v1

    .line 1464
    invoke-static {v1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 1465
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v1, v2, :cond_3a

    .line 1466
    aget-byte v2, v0, v3

    iput v2, p1, Lcom/uhf/api/cls/GpiInfo_ST;->gpiCount:I

    .line 1467
    :goto_1c
    iget v2, p1, Lcom/uhf/api/cls/GpiInfo_ST;->gpiCount:I

    if-lt v3, v2, :cond_21

    goto :goto_3a

    .line 1468
    :cond_21
    iget-object v2, p1, Lcom/uhf/api/cls/GpiInfo_ST;->gpiStats:[Lcom/uhf/api/cls/GpiState_ST;

    aget-object v2, v2, v3

    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v0, v5

    iput v5, v2, Lcom/uhf/api/cls/GpiState_ST;->GpiId:I

    .line 1469
    iget-object v2, p1, Lcom/uhf/api/cls/GpiInfo_ST;->gpiStats:[Lcom/uhf/api/cls/GpiState_ST;

    aget-object v2, v2, v3

    add-int/lit8 v4, v4, 0x2

    aget-byte v4, v0, v4

    iput v4, v2, Lcom/uhf/api/cls/GpiState_ST;->State:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 1472
    :cond_3a
    :goto_3a
    monitor-exit p0

    return-object v1

    :catchall_3c
    move-exception p1

    .line 1461
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    goto :goto_40

    :goto_3f
    throw p1

    :goto_40
    goto :goto_3f
.end method

.method public GetHardwareDetails(Lcom/uhf/api/cls/Reader$HardwareDetails;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 7

    .line 1091
    monitor-enter p0

    const/16 v0, 0x1f4

    :try_start_3
    new-array v0, v0, [B

    .line 1093
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v2, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/uhf/api/cls/JniModuleAPI;->GetHardwareDetails_BaseType(I[B)I

    move-result v1

    .line 1094
    invoke-static {v1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 1095
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v1, v2, :cond_59

    .line 1097
    aget-byte v2, v0, v3

    invoke-static {v2}, Lcom/uhf/api/cls/Reader$Module_Type;->valueOf(I)Lcom/uhf/api/cls/Reader$Module_Type;

    move-result-object v2

    iput-object v2, p1, Lcom/uhf/api/cls/Reader$HardwareDetails;->module:Lcom/uhf/api/cls/Reader$Module_Type;

    const/4 v2, 0x1

    .line 1099
    aget-byte v3, v0, v2

    const/4 v4, 0x2

    if-eqz v3, :cond_4d

    if-eq v3, v2, :cond_48

    if-eq v3, v4, :cond_43

    const/4 v2, 0x3

    if-eq v3, v2, :cond_3e

    const/4 v2, 0x4

    if-eq v3, v2, :cond_39

    const/4 v2, 0x5

    if-eq v3, v2, :cond_34

    goto :goto_51

    .line 1116
    :cond_34
    sget-object v2, Lcom/uhf/api/cls/Reader$MaindBoard_Type;->MAINBOARD_ARM9_WIFI:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    iput-object v2, p1, Lcom/uhf/api/cls/Reader$HardwareDetails;->board:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    goto :goto_51

    .line 1113
    :cond_39
    sget-object v2, Lcom/uhf/api/cls/Reader$MaindBoard_Type;->MAINBOARD_ARM9:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    iput-object v2, p1, Lcom/uhf/api/cls/Reader$HardwareDetails;->board:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    goto :goto_51

    .line 1110
    :cond_3e
    sget-object v2, Lcom/uhf/api/cls/Reader$MaindBoard_Type;->MAINBOARD_WIFI:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    iput-object v2, p1, Lcom/uhf/api/cls/Reader$HardwareDetails;->board:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    goto :goto_51

    .line 1107
    :cond_43
    sget-object v2, Lcom/uhf/api/cls/Reader$MaindBoard_Type;->MAINBOARD_SERIAL:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    iput-object v2, p1, Lcom/uhf/api/cls/Reader$HardwareDetails;->board:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    goto :goto_51

    .line 1104
    :cond_48
    sget-object v2, Lcom/uhf/api/cls/Reader$MaindBoard_Type;->MAINBOARD_ARM7:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    iput-object v2, p1, Lcom/uhf/api/cls/Reader$HardwareDetails;->board:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    goto :goto_51

    .line 1101
    :cond_4d
    sget-object v2, Lcom/uhf/api/cls/Reader$MaindBoard_Type;->MAINBOARD_NONE:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    iput-object v2, p1, Lcom/uhf/api/cls/Reader$HardwareDetails;->board:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    .line 1119
    :goto_51
    aget-byte v0, v0, v4

    invoke-static {v0}, Lcom/uhf/api/cls/Reader$Reader_Type;->valueOf(I)Lcom/uhf/api/cls/Reader$Reader_Type;

    move-result-object v0

    iput-object v0, p1, Lcom/uhf/api/cls/Reader$HardwareDetails;->logictype:Lcom/uhf/api/cls/Reader$Reader_Type;

    .line 1121
    :cond_59
    monitor-exit p0

    return-object v1

    :catchall_5b
    move-exception p1

    .line 1091
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5b

    throw p1
.end method

.method public GetLastDetailError(Lcom/uhf/api/cls/ErrInfo;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 8

    .line 2208
    monitor-enter p0

    const/16 v0, 0x1f4

    :try_start_3
    new-array v0, v0, [B

    .line 2210
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v2, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/uhf/api/cls/JniModuleAPI;->GetLastDetailError_BaseType(I[B)I

    move-result v1

    .line 2211
    invoke-static {v1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 2213
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v1, v2, :cond_4a

    .line 2214
    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    const/4 v4, 0x2

    .line 2215
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    const/4 v4, 0x3

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    .line 2214
    iput v2, p1, Lcom/uhf/api/cls/ErrInfo;->derrcode:I

    const/4 v2, 0x4

    .line 2216
    aget-byte v4, v0, v2

    new-array v4, v4, [B

    const/4 v5, 0x5

    .line 2217
    aget-byte v2, v0, v2

    invoke-static {v0, v5, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_4c

    .line 2219
    :try_start_41
    new-instance v0, Ljava/lang/String;

    const-string v2, "ascii"

    invoke-direct {v0, v4, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p1, Lcom/uhf/api/cls/ErrInfo;->errstr:Ljava/lang/String;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4a} :catch_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_4c

    .line 2224
    :catch_4a
    :cond_4a
    :try_start_4a
    monitor-exit p0

    return-object v1

    :catchall_4c
    move-exception p1

    .line 2208
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_4c

    throw p1
.end method

.method public GetNextTag(Lcom/uhf/api/cls/Reader$TAGINFO;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 12

    .line 1218
    monitor-enter p0

    const/16 v0, 0xe6

    :try_start_3
    new-array v0, v0, [B

    .line 1221
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v2, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/uhf/api/cls/JniModuleAPI;->GetNextTag_BaseType(I[B)I

    move-result v1

    .line 1222
    invoke-static {v1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 1224
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v1, v2, :cond_c5

    .line 1227
    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

    iput v2, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->ReadCnt:I

    const/4 v2, 0x1

    .line 1228
    aget-byte v4, v0, v2

    iput v4, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->RSSI:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    .line 1229
    aget-byte v6, v0, v5

    iput-byte v6, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->AntennaID:B

    .line 1230
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v6, 0x4

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x10

    shl-int/2addr v6, v7

    or-int/2addr v4, v6

    const/4 v6, 0x5

    .line 1231
    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v8, 0x8

    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    const/4 v6, 0x6

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    .line 1230
    iput v4, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->Frequency:I

    const/4 v4, 0x7

    .line 1233
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    aget-byte v6, v0, v8

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v7

    or-int/2addr v4, v6

    const/16 v6, 0x9

    .line 1234
    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    const/16 v6, 0xa

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    .line 1233
    iput v4, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->TimeStamp:I

    const/16 v4, 0xb

    .line 1236
    iget-object v6, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->Res:[B

    const/16 v9, 0xc

    aget-byte v4, v0, v4

    aput-byte v4, v6, v3

    .line 1237
    iget-object v4, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->Res:[B

    const/16 v6, 0xd

    aget-byte v9, v0, v9

    aput-byte v9, v4, v2

    .line 1238
    aget-byte v4, v0, v6

    shl-int/2addr v4, v8

    const/16 v6, 0xe

    aget-byte v6, v0, v6

    or-int/2addr v4, v6

    const/16 v6, 0xf

    .line 1240
    iget-object v9, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->PC:[B

    aget-byte v6, v0, v6

    aput-byte v6, v9, v3

    .line 1241
    iget-object v6, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->PC:[B

    const/16 v9, 0x11

    aget-byte v7, v0, v7

    aput-byte v7, v6, v2

    .line 1242
    new-array v6, v4, [B

    iput-object v6, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->EpcId:[B

    int-to-short v6, v4

    .line 1243
    iput-short v6, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->Epclen:S

    .line 1244
    iget-object v6, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->EpcId:[B

    invoke-static {v0, v9, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v4

    .line 1246
    iget-object v4, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->CRC:[B

    add-int/lit8 v6, v9, 0x1

    aget-byte v7, v0, v9

    aput-byte v7, v4, v3

    .line 1247
    iget-object v4, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->CRC:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v0, v6

    aput-byte v6, v4, v2

    .line 1248
    aget-byte v2, v0, v7

    shl-int/2addr v2, v8

    add-int/lit8 v4, v7, 0x1

    aget-byte v4, v0, v4

    or-int/2addr v2, v4

    add-int/2addr v7, v5

    .line 1250
    new-array v4, v2, [B

    iput-object v4, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededData:[B

    int-to-short v4, v2

    .line 1251
    iput-short v4, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededDatalen:S

    if-lez v2, :cond_c5

    .line 1253
    iget-object p1, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededData:[B

    invoke-static {v0, v7, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1258
    :cond_c5
    monitor-exit p0

    return-object v1

    :catchall_c7
    move-exception p1

    .line 1218
    monitor-exit p0
    :try_end_c9
    .catchall {:try_start_3 .. :try_end_c9} :catchall_c7

    throw p1
.end method

.method public GetNextTag_BaseType([B)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 5

    .line 1264
    monitor-enter p0

    .line 1265
    :try_start_1
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1, p1}, Lcom/uhf/api/cls/JniModuleAPI;->GetNextTag_BaseType(I[B)I

    move-result p1

    .line 1266
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1267
    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    .line 1264
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public GetReaderAddress()Ljava/lang/String;
    .registers 2

    .line 1086
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->addr:Ljava/lang/String;

    return-object v0
.end method

.method public GetSerialNumber(Lcom/uhf/api/cls/Reader$DeviceSerialNumber;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 10

    .line 2171
    monitor-enter p0

    :try_start_1
    const-string v0, ""

    .line 2173
    new-instance v1, Lcom/uhf/api/cls/Reader$CustomParam_ST;

    invoke-direct {v1, p0}, Lcom/uhf/api/cls/Reader$CustomParam_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    const-string v2, "reader/rdrdetails"

    .line 2174
    iput-object v2, v1, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamName:Ljava/lang/String;

    .line 2175
    sget-object v2, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_CUSTOM:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p0, v2, v1}, Lcom/uhf/api/cls/Reader;->ParamGet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v2

    .line 2176
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v2, v3, :cond_18

    .line 2177
    monitor-exit p0

    return-object v2

    :cond_18
    const/4 v3, 0x4

    new-array v4, v3, [B

    .line 2180
    iget-object v5, v1, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamVal:[B

    const/16 v6, 0x1c

    const/4 v7, 0x0

    invoke-static {v5, v6, v4, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_33
    const/16 v3, 0xc

    if-lt v7, v3, :cond_7b

    .line 2187
    new-instance v1, Lcom/uhf/api/cls/Reader$HardwareDetails;

    invoke-direct {v1, p0}, Lcom/uhf/api/cls/Reader$HardwareDetails;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 2188
    invoke-virtual {p0, v1}, Lcom/uhf/api/cls/Reader;->GetHardwareDetails(Lcom/uhf/api/cls/Reader$HardwareDetails;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 2189
    iget-object v3, v1, Lcom/uhf/api/cls/Reader$HardwareDetails;->board:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    sget-object v4, Lcom/uhf/api/cls/Reader$MaindBoard_Type;->MAINBOARD_ARM9:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    if-ne v3, v4, :cond_54

    .line 2190
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "A9"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_77

    .line 2191
    :cond_54
    iget-object v1, v1, Lcom/uhf/api/cls/Reader$HardwareDetails;->board:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    sget-object v3, Lcom/uhf/api/cls/Reader$MaindBoard_Type;->MAINBOARD_ARM7:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    if-ne v1, v3, :cond_69

    .line 2192
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "A7"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_77

    .line 2194
    :cond_69
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SE"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2195
    :goto_77
    iput-object v0, p1, Lcom/uhf/api/cls/Reader$DeviceSerialNumber;->serailNumber:Ljava/lang/String;

    .line 2196
    monitor-exit p0

    return-object v2

    .line 2184
    :cond_7b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamVal:[B

    add-int/lit8 v4, v7, 0x10

    aget-byte v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    :catchall_94
    move-exception p1

    .line 2171
    monitor-exit p0
    :try_end_96
    .catchall {:try_start_1 .. :try_end_96} :catchall_94

    goto :goto_98

    :goto_97
    throw p1

    :goto_98
    goto :goto_97
.end method

.method public GetTagData(ICII[B[BS)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 19

    move-object v1, p0

    .line 1144
    monitor-enter p0

    .line 1145
    :try_start_2
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v0, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v3, 0x0

    aget v3, v0, v3

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v2 .. v10}, Lcom/uhf/api/cls/JniModuleAPI;->GetTagData(IICII[B[BS)I

    move-result v0

    .line 1146
    invoke-static {v0}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 1147
    monitor-exit p0

    return-object v0

    :catchall_1d
    move-exception v0

    .line 1144
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public Hex2Str([BI[C)V
    .registers 9

    const/16 v0, 0x10

    new-array v1, v0, [C

    .line 1020
    fill-array-data v1, :array_24

    const/4 v2, 0x0

    :goto_8
    if-lt v2, p2, :cond_b

    return-void

    :cond_b
    mul-int/lit8 v3, v2, 0x2

    .line 1024
    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    div-int/2addr v4, v0

    aget-char v4, v1, v4

    aput-char v4, p3, v3

    add-int/lit8 v3, v3, 0x1

    .line 1025
    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    rem-int/2addr v4, v0

    aget-char v4, v1, v4

    aput-char v4, p3, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :array_24
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public InitReader(Ljava/lang/String;Lcom/uhf/api/cls/Reader$Reader_Type;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 5

    .line 1064
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    invoke-virtual {p2}, Lcom/uhf/api/cls/Reader$Reader_Type;->value()I

    move-result p2

    invoke-virtual {v0, v1, p1, p2}, Lcom/uhf/api/cls/JniModuleAPI;->InitReader([ILjava/lang/String;I)I

    move-result p1

    .line 1065
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    return-object p1
.end method

.method public InitReader_Notype(Ljava/lang/String;I)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 5

    .line 1076
    monitor-enter p0

    .line 1077
    :try_start_1
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    invoke-virtual {v0, v1, p1, p2}, Lcom/uhf/api/cls/JniModuleAPI;->InitReader_Notype([ILjava/lang/String;I)I

    move-result p2

    .line 1078
    invoke-static {p2}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p2

    .line 1079
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne p2, v0, :cond_13

    .line 1080
    iput-object p1, p0, Lcom/uhf/api/cls/Reader;->addr:Ljava/lang/String;

    .line 1081
    :cond_13
    monitor-exit p0

    return-object p2

    :catchall_15
    move-exception p1

    .line 1076
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public KillTag(I[BS)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 7

    .line 1283
    monitor-enter p0

    .line 1284
    :try_start_1
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/uhf/api/cls/JniModuleAPI;->KillTag(II[BS)I

    move-result p1

    .line 1285
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1286
    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    .line 1283
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public Lock180006BTag(IIIS)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 11

    .line 1293
    monitor-enter p0

    .line 1294
    :try_start_1
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/uhf/api/cls/JniModuleAPI;->Lock180006BTag(IIIIS)I

    move-result p1

    .line 1295
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1296
    monitor-exit p0

    return-object p1

    :catchall_16
    move-exception p1

    .line 1293
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public LockTag(IBS[BS)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 13

    .line 1274
    monitor-enter p0

    .line 1275
    :try_start_1
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/uhf/api/cls/JniModuleAPI;->LockTag(IIBS[BS)I

    move-result p1

    .line 1276
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1277
    monitor-exit p0

    return-object p1

    :catchall_17
    move-exception p1

    .line 1274
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public ParamGet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 19

    move-object/from16 v1, p0

    .line 1497
    monitor-enter p0

    const/16 v0, 0x1f4

    :try_start_5
    new-array v0, v0, [B

    .line 1500
    invoke-static {}, Lcom/uhf/api/cls/Reader;->$SWITCH_TABLE$com$uhf$api$cls$Reader$Mtr_Param()[I

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eq v2, v3, :cond_5a9

    const/16 v6, 0x26

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v2, v6, :cond_4d8

    const/4 v6, 0x0

    const/16 v11, 0x9

    const/4 v12, 0x7

    const/4 v13, 0x6

    packed-switch v2, :pswitch_data_608

    packed-switch v2, :pswitch_data_614

    packed-switch v2, :pswitch_data_620

    .line 1726
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v3, v3, v5

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v6

    invoke-virtual {v2, v3, v6, v0}, Lcom/uhf/api/cls/JniModuleAPI;->ParamGet_BaseType(II[B)I

    move-result v2

    if-nez v2, :cond_5fd

    .line 1728
    move-object/from16 v3, p2

    check-cast v3, [I

    .line 1729
    aget-byte v6, v0, v5

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    .line 1730
    aget-byte v7, v0, v10

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    .line 1731
    aget-byte v7, v0, v9

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v4, v7, 0x8

    or-int/2addr v4, v6

    .line 1732
    aget-byte v0, v0, v8

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v4

    .line 1729
    aput v0, v3, v5

    goto/16 :goto_5fd

    .line 1720
    :pswitch_5e
    move-object/from16 v0, p2

    check-cast v0, [B

    .line 1721
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v3, v3, v5

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/uhf/api/cls/JniModuleAPI;->ParamGet_BaseType(II[B)I

    move-result v2

    goto/16 :goto_5fd

    .line 1697
    :pswitch_72
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$CustomParam_ST;
    :try_end_76
    .catchall {:try_start_5 .. :try_end_76} :catchall_603

    .line 1700
    :try_start_76
    iget-object v3, v2, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamName:Ljava/lang/String;

    const-string v7, "US-ASCII"

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7e} :catch_7e
    .catchall {:try_start_76 .. :try_end_7e} :catchall_603

    .line 1704
    :catch_7e
    :try_start_7e
    array-length v3, v6

    invoke-static {v6, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1705
    array-length v3, v6

    aput-byte v5, v0, v3

    .line 1706
    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v6, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v6, v6, v5

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v7

    invoke-virtual {v3, v6, v7, v0}, Lcom/uhf/api/cls/JniModuleAPI;->ParamGet_BaseType(II[B)I

    move-result v3

    if-nez v3, :cond_ba

    .line 1708
    aget-byte v6, v0, v5

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    .line 1709
    aget-byte v7, v0, v10

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    .line 1710
    aget-byte v7, v0, v9

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v4, v7, 0x8

    or-int/2addr v4, v6

    .line 1711
    aget-byte v6, v0, v8

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    const/16 v6, 0x32

    sub-int/2addr v4, v6

    .line 1712
    new-array v7, v4, [B

    iput-object v7, v2, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamVal:[B

    .line 1713
    iget-object v2, v2, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamVal:[B

    invoke-static {v0, v6, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_ba
    :goto_ba
    move v2, v3

    goto/16 :goto_5fd

    .line 1631
    :pswitch_bd
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v3, v3, v5

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v6

    invoke-virtual {v2, v3, v6, v0}, Lcom/uhf/api/cls/JniModuleAPI;->ParamGet_BaseType(II[B)I

    move-result v2

    if-nez v2, :cond_5fd

    .line 1634
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$HoptableData_ST;

    aget-byte v6, v0, v5

    iput v6, v3, Lcom/uhf/api/cls/Reader$HoptableData_ST;->lenhtb:I

    const/4 v3, 0x0

    .line 1636
    :goto_d6
    aget-byte v6, v0, v5

    if-lt v3, v6, :cond_dc

    goto/16 :goto_5fd

    .line 1643
    :cond_dc
    move-object/from16 v6, p2

    check-cast v6, Lcom/uhf/api/cls/Reader$HoptableData_ST;

    iget-object v6, v6, Lcom/uhf/api/cls/Reader$HoptableData_ST;->htb:[I

    mul-int/lit8 v7, v3, 0x4

    add-int/lit8 v8, v7, 0x1

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    add-int/lit8 v9, v7, 0x2

    .line 1644
    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    add-int/lit8 v9, v7, 0x3

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v4

    or-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x4

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v8

    .line 1643
    aput v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_d6

    .line 1621
    :pswitch_109
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v3, v3, v5

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v6

    invoke-virtual {v2, v3, v6, v0}, Lcom/uhf/api/cls/JniModuleAPI;->ParamGet_BaseType(II[B)I

    move-result v2

    if-nez v2, :cond_5fd

    .line 1624
    aget-byte v3, v0, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    aget-byte v6, v0, v10

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v3, v6

    .line 1625
    aget-byte v6, v0, v9

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v4, v6, 0x8

    or-int/2addr v3, v4

    aget-byte v0, v0, v8

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v3

    .line 1626
    move-object/from16 v3, p2

    check-cast v3, [Lcom/uhf/api/cls/Reader$Region_Conf;

    invoke-static {v0}, Lcom/uhf/api/cls/Reader$Region_Conf;->valueOf(I)Lcom/uhf/api/cls/Reader$Region_Conf;

    move-result-object v0

    aput-object v0, v3, v5

    goto/16 :goto_5fd

    .line 1681
    :pswitch_13e
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v3, v3, v5

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/uhf/api/cls/JniModuleAPI;->ParamGet_BaseType(II[B)I

    move-result v2

    if-nez v2, :cond_5fd

    .line 1684
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$Reader_Ip;

    aget-byte v4, v0, v5

    new-array v4, v4, [B

    iput-object v4, v3, Lcom/uhf/api/cls/Reader$Reader_Ip;->ip:[B

    .line 1685
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$Reader_Ip;

    aget-byte v4, v0, v10

    new-array v4, v4, [B

    iput-object v4, v3, Lcom/uhf/api/cls/Reader$Reader_Ip;->mask:[B

    .line 1686
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$Reader_Ip;

    aget-byte v4, v0, v9

    new-array v4, v4, [B

    iput-object v4, v3, Lcom/uhf/api/cls/Reader$Reader_Ip;->gateway:[B

    .line 1689
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$Reader_Ip;

    iget-object v3, v3, Lcom/uhf/api/cls/Reader$Reader_Ip;->ip:[B

    aget-byte v4, v0, v5

    invoke-static {v0, v8, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1690
    aget-byte v3, v0, v5

    add-int/2addr v3, v8

    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$Reader_Ip;

    iget-object v4, v4, Lcom/uhf/api/cls/Reader$Reader_Ip;->mask:[B

    aget-byte v6, v0, v10

    invoke-static {v0, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1691
    aget-byte v3, v0, v5

    add-int/2addr v3, v8

    aget-byte v4, v0, v10

    add-int/2addr v3, v4

    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$Reader_Ip;

    iget-object v4, v4, Lcom/uhf/api/cls/Reader$Reader_Ip;->gateway:[B

    aget-byte v6, v0, v9

    invoke-static {v0, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_5fd

    .line 1582
    :pswitch_198
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v4, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v4, v4, v5

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v6

    invoke-virtual {v2, v4, v6, v0}, Lcom/uhf/api/cls/JniModuleAPI;->ParamGet_BaseType(II[B)I

    move-result v2

    if-nez v2, :cond_5fd

    .line 1585
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$ReaderVersion;

    .line 1586
    aget-byte v6, v0, v5

    if-ne v6, v10, :cond_27e

    aget-byte v6, v0, v10

    if-nez v6, :cond_27e

    aget-byte v6, v0, v9

    if-nez v6, :cond_27e

    .line 1587
    new-instance v6, Ljava/lang/StringBuilder;

    aget-byte v5, v0, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "."

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/uhf/api/cls/Reader$ReaderVersion;->hardwareVer:Ljava/lang/String;

    .line 1588
    iget-object v5, v4, Lcom/uhf/api/cls/Reader$ReaderVersion;->hardwareVer:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v5, v0, v10

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/uhf/api/cls/Reader$ReaderVersion;->hardwareVer:Ljava/lang/String;

    .line 1589
    iget-object v5, v4, Lcom/uhf/api/cls/Reader$ReaderVersion;->hardwareVer:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v5, v0, v9

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/uhf/api/cls/Reader$ReaderVersion;->hardwareVer:Ljava/lang/String;

    .line 1590
    iget-object v5, v4, Lcom/uhf/api/cls/Reader$ReaderVersion;->hardwareVer:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v5, v0, v8

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/uhf/api/cls/Reader$ReaderVersion;->hardwareVer:Ljava/lang/String;

    .line 1592
    new-instance v5, Ljava/lang/StringBuilder;

    aget-byte v6, v0, v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/uhf/api/cls/Reader$ReaderVersion;->softwareVer:Ljava/lang/String;

    .line 1593
    iget-object v5, v4, Lcom/uhf/api/cls/Reader$ReaderVersion;->softwareVer:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v3, v0, v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/uhf/api/cls/Reader$ReaderVersion;->softwareVer:Ljava/lang/String;

    .line 1594
    iget-object v3, v4, Lcom/uhf/api/cls/Reader$ReaderVersion;->softwareVer:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v3, v0, v13

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/uhf/api/cls/Reader$ReaderVersion;->softwareVer:Ljava/lang/String;

    .line 1595
    iget-object v3, v4, Lcom/uhf/api/cls/Reader$ReaderVersion;->softwareVer:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v0, v0, v12

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/uhf/api/cls/Reader$ReaderVersion;->softwareVer:Ljava/lang/String;

    goto/16 :goto_5fd

    :cond_27e
    new-array v6, v10, [B

    .line 1598
    aget-byte v11, v0, v5

    aput-byte v11, v6, v5

    .line 1599
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "."

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/uhf/api/cls/Reader$ReaderVersion;->hardwareVer:Ljava/lang/String;

    .line 1600
    aget-byte v10, v0, v10

    aput-byte v10, v6, v5

    .line 1601
    iget-object v10, v4, Lcom/uhf/api/cls/Reader$ReaderVersion;->hardwareVer:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/uhf/api/cls/Reader$ReaderVersion;->hardwareVer:Ljava/lang/String;

    .line 1602
    aget-byte v9, v0, v9

    aput-byte v9, v6, v5

    .line 1603
    iget-object v9, v4, Lcom/uhf/api/cls/Reader$ReaderVersion;->hardwareVer:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "."

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/uhf/api/cls/Reader$ReaderVersion;->hardwareVer:Ljava/lang/String;

    .line 1604
    aget-byte v8, v0, v8

    aput-byte v8, v6, v5

    .line 1605
    iget-object v8, v4, Lcom/uhf/api/cls/Reader$ReaderVersion;->hardwareVer:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/uhf/api/cls/Reader$ReaderVersion;->hardwareVer:Ljava/lang/String;

    .line 1607
    aget-byte v7, v0, v7

    aput-byte v7, v6, v5

    .line 1608
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/uhf/api/cls/Reader$ReaderVersion;->softwareVer:Ljava/lang/String;

    .line 1609
    aget-byte v3, v0, v3

    aput-byte v3, v6, v5

    .line 1610
    iget-object v3, v4, Lcom/uhf/api/cls/Reader$ReaderVersion;->softwareVer:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/uhf/api/cls/Reader$ReaderVersion;->softwareVer:Ljava/lang/String;

    .line 1611
    aget-byte v3, v0, v13

    aput-byte v3, v6, v5

    .line 1612
    iget-object v3, v4, Lcom/uhf/api/cls/Reader$ReaderVersion;->softwareVer:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/uhf/api/cls/Reader$ReaderVersion;->softwareVer:Ljava/lang/String;

    .line 1613
    aget-byte v0, v0, v12

    aput-byte v0, v6, v5

    .line 1614
    iget-object v0, v4, Lcom/uhf/api/cls/Reader$ReaderVersion;->softwareVer:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/uhf/api/cls/Reader$ReaderVersion;->softwareVer:Ljava/lang/String;

    goto/16 :goto_5fd

    .line 1569
    :pswitch_376
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v3, v3, v5

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/uhf/api/cls/JniModuleAPI;->ParamGet_BaseType(II[B)I

    move-result v2

    if-nez v2, :cond_5fd

    .line 1572
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$ConnAnts_ST;

    aget-byte v4, v0, v5

    iput v4, v3, Lcom/uhf/api/cls/Reader$ConnAnts_ST;->antcnt:I

    const/4 v3, 0x0

    .line 1573
    :goto_38f
    aget-byte v4, v0, v5

    if-lt v3, v4, :cond_395

    goto/16 :goto_5fd

    .line 1575
    :cond_395
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$ConnAnts_ST;

    iget-object v4, v4, Lcom/uhf/api/cls/Reader$ConnAnts_ST;->connectedants:[I

    add-int/lit8 v6, v3, 0x1

    aget-byte v7, v0, v6

    aput v7, v4, v3

    move v3, v6

    goto :goto_38f

    .line 1553
    :pswitch_3a3
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v3, v3, v5

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/uhf/api/cls/JniModuleAPI;->ParamGet_BaseType(II[B)I

    move-result v2

    if-nez v2, :cond_5fd

    .line 1556
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;

    aget-byte v4, v0, v5

    iput v4, v3, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potlcnt:I

    .line 1557
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;

    aget-byte v4, v0, v5

    new-array v4, v4, [Lcom/uhf/api/cls/Reader$Inv_Potl;

    iput-object v4, v3, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potls:[Lcom/uhf/api/cls/Reader$Inv_Potl;

    const/4 v3, 0x0

    .line 1558
    :goto_3c6
    aget-byte v4, v0, v5

    if-lt v3, v4, :cond_3cc

    goto/16 :goto_5fd

    .line 1560
    :cond_3cc
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;

    iget-object v4, v4, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potls:[Lcom/uhf/api/cls/Reader$Inv_Potl;

    new-instance v6, Lcom/uhf/api/cls/Reader$Inv_Potl;

    invoke-direct {v6, v1}, Lcom/uhf/api/cls/Reader$Inv_Potl;-><init>(Lcom/uhf/api/cls/Reader;)V

    aput-object v6, v4, v3

    .line 1561
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;

    iget-object v4, v4, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potls:[Lcom/uhf/api/cls/Reader$Inv_Potl;

    aget-object v4, v4, v3

    mul-int/lit8 v6, v3, 0x5

    add-int/lit8 v7, v6, 0x1

    aget-byte v7, v0, v7

    invoke-static {v7}, Lcom/uhf/api/cls/Reader$SL_TagProtocol;->valueOf(I)Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    move-result-object v7

    iput-object v7, v4, Lcom/uhf/api/cls/Reader$Inv_Potl;->potl:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    .line 1562
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;

    iget-object v4, v4, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potls:[Lcom/uhf/api/cls/Reader$Inv_Potl;

    aget-object v4, v4, v3

    add-int/lit8 v6, v6, 0x2

    invoke-direct {v1, v0, v6}, Lcom/uhf/api/cls/Reader;->GetIntFrByteArray([BI)I

    move-result v6

    iput v6, v4, Lcom/uhf/api/cls/Reader$Inv_Potl;->weight:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_3c6

    .line 1537
    :pswitch_400
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v14, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v14, v14, v5

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v15

    invoke-virtual {v2, v14, v15, v0}, Lcom/uhf/api/cls/JniModuleAPI;->ParamGet_BaseType(II[B)I

    move-result v2

    if-nez v2, :cond_5fd

    .line 1540
    move-object/from16 v14, p2

    check-cast v14, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    aget-byte v10, v0, v10

    iput v10, v14, Lcom/uhf/api/cls/Reader$EmbededData_ST;->bank:I

    .line 1541
    move-object/from16 v10, p2

    check-cast v10, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    aget-byte v9, v0, v9

    shl-int/lit8 v9, v9, 0x18

    aget-byte v8, v0, v8

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v8, v9

    aget-byte v9, v0, v7

    shl-int/2addr v9, v4

    or-int/2addr v8, v9

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v8

    iput v3, v10, Lcom/uhf/api/cls/Reader$EmbededData_ST;->startaddr:I

    .line 1542
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    aget-byte v8, v0, v13

    shl-int/lit8 v8, v8, 0x18

    aget-byte v9, v0, v12

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    aget-byte v9, v0, v4

    shl-int/lit8 v4, v9, 0x8

    or-int/2addr v4, v8

    aget-byte v8, v0, v11

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v4, v8

    iput v4, v3, Lcom/uhf/api/cls/Reader$EmbededData_ST;->bytecnt:I

    .line 1543
    aget-byte v3, v0, v5

    const/16 v4, 0xe

    const/16 v8, 0xa

    if-ne v3, v4, :cond_45c

    .line 1544
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    iget-object v3, v3, Lcom/uhf/api/cls/Reader$EmbededData_ST;->accesspwd:[B

    invoke-static {v0, v8, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_5fd

    .line 1545
    :cond_45c
    aget-byte v0, v0, v5

    if-ne v0, v8, :cond_5fd

    .line 1546
    move-object/from16 v0, p2

    check-cast v0, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    iput-object v6, v0, Lcom/uhf/api/cls/Reader$EmbededData_ST;->accesspwd:[B

    goto/16 :goto_5fd

    .line 1521
    :pswitch_468
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v6, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v6, v6, v5

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v14

    invoke-virtual {v2, v6, v14, v0}, Lcom/uhf/api/cls/JniModuleAPI;->ParamGet_BaseType(II[B)I

    move-result v2

    if-nez v2, :cond_5fd

    .line 1524
    move-object/from16 v6, p2

    check-cast v6, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    aget-byte v14, v0, v5

    iput v14, v6, Lcom/uhf/api/cls/Reader$TagFilter_ST;->bank:I

    .line 1525
    move-object/from16 v6, p2

    check-cast v6, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    aget-byte v9, v0, v9

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v9, v10

    aget-byte v8, v0, v8

    shl-int/2addr v8, v4

    or-int/2addr v8, v9

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v8

    iput v7, v6, Lcom/uhf/api/cls/Reader$TagFilter_ST;->startaddr:I

    .line 1526
    move-object/from16 v6, p2

    check-cast v6, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    aget-byte v3, v0, v3

    shl-int/lit8 v3, v3, 0x18

    aget-byte v7, v0, v13

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v3, v7

    aget-byte v7, v0, v12

    shl-int/2addr v7, v4

    or-int/2addr v3, v7

    aget-byte v7, v0, v4

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v3, v7

    iput v3, v6, Lcom/uhf/api/cls/Reader$TagFilter_ST;->flen:I

    .line 1527
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget v3, v3, Lcom/uhf/api/cls/Reader$TagFilter_ST;->flen:I

    div-int/2addr v3, v4

    .line 1528
    move-object/from16 v6, p2

    check-cast v6, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget v6, v6, Lcom/uhf/api/cls/Reader$TagFilter_ST;->flen:I

    rem-int/2addr v6, v4

    if-eqz v6, :cond_4c4

    add-int/lit8 v3, v3, 0x1

    .line 1530
    :cond_4c4
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget-object v4, v4, Lcom/uhf/api/cls/Reader$TagFilter_ST;->fdata:[B

    invoke-static {v0, v11, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1531
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    add-int/2addr v3, v11

    aget-byte v0, v0, v3

    iput v0, v4, Lcom/uhf/api/cls/Reader$TagFilter_ST;->isInvert:I

    goto/16 :goto_5fd

    .line 1653
    :cond_4d8
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$AntPortsVSWR;

    .line 1654
    iget v6, v2, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->andid:I

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 1655
    iget-object v6, v2, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->region:Lcom/uhf/api/cls/Reader$Region_Conf;

    invoke-virtual {v6}, Lcom/uhf/api/cls/Reader$Region_Conf;->value()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v10

    .line 1656
    iget-short v6, v2, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->power:S

    const v11, 0xff00

    and-int/2addr v6, v11

    shr-int/2addr v6, v4

    int-to-byte v6, v6

    aput-byte v6, v0, v9

    .line 1657
    iget-short v6, v2, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->power:S

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v8

    .line 1658
    iget v6, v2, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->frecount:I

    int-to-byte v6, v6

    aput-byte v6, v0, v7

    const/4 v6, 0x0

    .line 1659
    :goto_501
    iget v7, v2, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->frecount:I

    if-lt v6, v7, :cond_56a

    .line 1665
    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v6, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v6, v6, v5

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v7

    invoke-virtual {v3, v6, v7, v0}, Lcom/uhf/api/cls/JniModuleAPI;->ParamGet_BaseType(II[B)I

    move-result v3

    if-nez v3, :cond_ba

    .line 1667
    aget-byte v6, v0, v5

    iput v6, v2, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->frecount:I

    .line 1668
    :goto_519
    iget v6, v2, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->frecount:I

    if-lt v5, v6, :cond_51f

    goto/16 :goto_ba

    .line 1669
    :cond_51f
    iget-object v6, v2, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->vswrs:[Lcom/uhf/api/cls/Reader$FrequencyVSWR;

    aget-object v6, v6, v5

    mul-int/lit8 v7, v5, 0x5

    add-int/2addr v7, v10

    aget-byte v8, v0, v7

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    add-int/lit8 v9, v7, 0x1

    .line 1670
    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    add-int/lit8 v9, v7, 0x2

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v4

    or-int/2addr v8, v9

    add-int/lit8 v9, v7, 0x3

    .line 1671
    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    .line 1669
    iput v8, v6, Lcom/uhf/api/cls/Reader$FrequencyVSWR;->frequency:I

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    add-int/lit8 v7, v7, 0x4

    .line 1673
    aget-byte v6, v0, v7

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    const/high16 v7, 0x41200000    # 10.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x41a00000    # 20.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    .line 1672
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    .line 1674
    iget-object v7, v2, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->vswrs:[Lcom/uhf/api/cls/Reader$FrequencyVSWR;

    aget-object v7, v7, v5

    const/high16 v8, 0x3f800000    # 1.0f

    add-float v9, v6, v8

    sub-float/2addr v6, v8

    div-float/2addr v9, v6

    iput v9, v7, Lcom/uhf/api/cls/Reader$FrequencyVSWR;->vswr:F

    add-int/lit8 v5, v5, 0x1

    goto :goto_519

    :cond_56a
    mul-int/lit8 v7, v6, 0x4

    add-int/2addr v7, v3

    .line 1660
    iget-object v8, v2, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->vswrs:[Lcom/uhf/api/cls/Reader$FrequencyVSWR;

    aget-object v8, v8, v6

    iget v8, v8, Lcom/uhf/api/cls/Reader$FrequencyVSWR;->frequency:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    add-int/lit8 v8, v7, 0x1

    .line 1661
    iget-object v9, v2, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->vswrs:[Lcom/uhf/api/cls/Reader$FrequencyVSWR;

    aget-object v9, v9, v6

    iget v9, v9, Lcom/uhf/api/cls/Reader$FrequencyVSWR;->frequency:I

    shr-int/lit8 v9, v9, 0x10

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    add-int/lit8 v8, v7, 0x2

    .line 1662
    iget-object v9, v2, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->vswrs:[Lcom/uhf/api/cls/Reader$FrequencyVSWR;

    aget-object v9, v9, v6

    iget v9, v9, Lcom/uhf/api/cls/Reader$FrequencyVSWR;->frequency:I

    shr-int/2addr v9, v4

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    add-int/lit8 v7, v7, 0x3

    .line 1663
    iget-object v8, v2, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->vswrs:[Lcom/uhf/api/cls/Reader$FrequencyVSWR;

    aget-object v8, v8, v6

    iget v8, v8, Lcom/uhf/api/cls/Reader$FrequencyVSWR;->frequency:I

    shr-int/2addr v8, v5

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_501

    .line 1504
    :cond_5a9
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v3, v3, v5

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v6

    invoke-virtual {v2, v3, v6, v0}, Lcom/uhf/api/cls/JniModuleAPI;->ParamGet_BaseType(II[B)I

    move-result v2

    if-nez v2, :cond_5fd

    .line 1507
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$AntPowerConf;

    aget-byte v6, v0, v5

    iput v6, v3, Lcom/uhf/api/cls/Reader$AntPowerConf;->antcnt:I

    const/4 v3, 0x0

    .line 1508
    :goto_5c2
    aget-byte v6, v0, v5

    if-lt v3, v6, :cond_5c7

    goto :goto_5fd

    .line 1510
    :cond_5c7
    new-instance v6, Lcom/uhf/api/cls/Reader$AntPower;

    invoke-direct {v6, v1}, Lcom/uhf/api/cls/Reader$AntPower;-><init>(Lcom/uhf/api/cls/Reader;)V

    mul-int/lit8 v7, v3, 0x5

    add-int/lit8 v8, v7, 0x1

    .line 1511
    aget-byte v8, v0, v8

    iput v8, v6, Lcom/uhf/api/cls/Reader$AntPower;->antid:I

    add-int/lit8 v8, v7, 0x2

    .line 1512
    aget-byte v8, v0, v8

    shl-int/2addr v8, v4

    add-int/lit8 v9, v7, 0x3

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-short v8, v8

    iput-short v8, v6, Lcom/uhf/api/cls/Reader$AntPower;->readPower:S

    add-int/lit8 v8, v7, 0x4

    .line 1513
    aget-byte v8, v0, v8

    shl-int/2addr v8, v4

    add-int/lit8 v7, v7, 0x5

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v8

    int-to-short v7, v7

    iput-short v7, v6, Lcom/uhf/api/cls/Reader$AntPower;->writePower:S

    .line 1514
    move-object/from16 v7, p2

    check-cast v7, Lcom/uhf/api/cls/Reader$AntPowerConf;

    iget-object v7, v7, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aput-object v6, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5c2

    .line 1738
    :cond_5fd
    :goto_5fd
    invoke-static {v2}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 1739
    monitor-exit p0

    return-object v0

    :catchall_603
    move-exception v0

    .line 1497
    monitor-exit p0
    :try_end_605
    .catchall {:try_start_7e .. :try_end_605} :catchall_603

    goto :goto_607

    :goto_606
    throw v0

    :goto_607
    goto :goto_606

    :pswitch_data_608
    .packed-switch 0x8
        :pswitch_468
        :pswitch_400
        :pswitch_3a3
        :pswitch_376
    .end packed-switch

    :pswitch_data_614
    .packed-switch 0xe
        :pswitch_198
        :pswitch_13e
        :pswitch_109
        :pswitch_bd
    .end packed-switch

    :pswitch_data_620
    .packed-switch 0x28
        :pswitch_72
        :pswitch_5e
        :pswitch_5e
    .end packed-switch
.end method

.method public ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 20

    move-object/from16 v1, p0

    .line 1745
    monitor-enter p0

    const/16 v0, 0x1f4

    :try_start_5
    new-array v0, v0, [B

    .line 1748
    invoke-static {}, Lcom/uhf/api/cls/Reader;->$SWITCH_TABLE$com$uhf$api$cls$Reader$Mtr_Param()[I

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x5

    const v4, 0xff00

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eq v2, v3, :cond_49e

    const/16 v7, 0x2c

    const/16 v8, 0x30

    const/4 v10, 0x4

    const/high16 v11, 0xff0000

    const/high16 v12, -0x1000000

    const/16 v13, 0x10

    const/4 v14, 0x1

    if-eq v2, v7, :cond_373

    const/16 v7, 0x28

    if-eq v2, v7, :cond_332

    const/16 v7, 0x29

    if-eq v2, v7, :cond_31e

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/16 v16, 0x2

    const/4 v9, 0x3

    packed-switch v2, :pswitch_data_51e

    packed-switch v2, :pswitch_data_528

    .line 1969
    move-object/from16 v2, p2

    check-cast v2, [I

    aget v2, v2, v6

    and-int v3, v2, v12

    shr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v6

    and-int v3, v2, v11

    shr-int/2addr v3, v13

    int-to-byte v3, v3

    aput-byte v3, v0, v14

    and-int v3, v2, v4

    shr-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v0, v16

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v9

    .line 1974
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v3, v3, v6

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/uhf/api/cls/JniModuleAPI;->ParamSet_BaseType(II[B)I

    move-result v0

    goto/16 :goto_4ba

    .line 1846
    :pswitch_69
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$HoptableData_ST;

    iget v2, v2, Lcom/uhf/api/cls/Reader$HoptableData_ST;->lenhtb:I

    int-to-byte v2, v2

    aput-byte v2, v0, v6

    const/4 v2, 0x0

    .line 1848
    :goto_73
    aget-byte v3, v0, v6

    if-lt v2, v3, :cond_87

    .line 1855
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v3, v3, v6

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/uhf/api/cls/JniModuleAPI;->ParamSet_BaseType(II[B)I

    move-result v0

    goto/16 :goto_4ba

    :cond_87
    mul-int/lit8 v3, v2, 0x4

    add-int/lit8 v7, v3, 0x1

    .line 1850
    move-object/from16 v8, p2

    check-cast v8, Lcom/uhf/api/cls/Reader$HoptableData_ST;

    iget-object v8, v8, Lcom/uhf/api/cls/Reader$HoptableData_ST;->htb:[I

    aget v8, v8, v2

    and-int/2addr v8, v12

    shr-int/lit8 v8, v8, 0x18

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    add-int/lit8 v7, v3, 0x2

    .line 1851
    move-object/from16 v8, p2

    check-cast v8, Lcom/uhf/api/cls/Reader$HoptableData_ST;

    iget-object v8, v8, Lcom/uhf/api/cls/Reader$HoptableData_ST;->htb:[I

    aget v8, v8, v2

    and-int/2addr v8, v11

    shr-int/2addr v8, v13

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    add-int/lit8 v7, v3, 0x3

    .line 1852
    move-object/from16 v8, p2

    check-cast v8, Lcom/uhf/api/cls/Reader$HoptableData_ST;

    iget-object v8, v8, Lcom/uhf/api/cls/Reader$HoptableData_ST;->htb:[I

    aget v8, v8, v2

    and-int/2addr v8, v4

    shr-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    add-int/lit8 v3, v3, 0x4

    .line 1853
    move-object/from16 v7, p2

    check-cast v7, Lcom/uhf/api/cls/Reader$HoptableData_ST;

    iget-object v7, v7, Lcom/uhf/api/cls/Reader$HoptableData_ST;->htb:[I

    aget v7, v7, v2

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_73

    .line 1836
    :pswitch_c9
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$Region_Conf;

    invoke-virtual {v2}, Lcom/uhf/api/cls/Reader$Region_Conf;->value()I

    move-result v2

    and-int v3, v2, v12

    shr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v6

    and-int v3, v2, v11

    shr-int/2addr v3, v13

    int-to-byte v3, v3

    aput-byte v3, v0, v14

    and-int v3, v2, v4

    shr-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v0, v16

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v9

    .line 1841
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v3, v3, v6

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/uhf/api/cls/JniModuleAPI;->ParamSet_BaseType(II[B)I

    move-result v0

    goto/16 :goto_4ba

    .line 1862
    :pswitch_f9
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$Reader_Ip;

    iget-object v2, v2, Lcom/uhf/api/cls/Reader$Reader_Ip;->ip:[B

    array-length v2, v2

    .line 1863
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$Reader_Ip;

    iget-object v3, v3, Lcom/uhf/api/cls/Reader$Reader_Ip;->mask:[B

    array-length v3, v3

    .line 1864
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$Reader_Ip;

    iget-object v4, v4, Lcom/uhf/api/cls/Reader$Reader_Ip;->gateway:[B

    array-length v4, v4

    int-to-byte v5, v2

    aput-byte v5, v0, v6

    int-to-byte v5, v3

    aput-byte v5, v0, v14

    int-to-byte v5, v4

    aput-byte v5, v0, v16

    .line 1868
    move-object/from16 v5, p2

    check-cast v5, Lcom/uhf/api/cls/Reader$Reader_Ip;

    iget-object v5, v5, Lcom/uhf/api/cls/Reader$Reader_Ip;->ip:[B

    invoke-static {v5, v6, v0, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1869
    move-object/from16 v5, p2

    check-cast v5, Lcom/uhf/api/cls/Reader$Reader_Ip;

    iget-object v5, v5, Lcom/uhf/api/cls/Reader$Reader_Ip;->mask:[B

    add-int/2addr v2, v9

    invoke-static {v5, v6, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1870
    move-object/from16 v5, p2

    check-cast v5, Lcom/uhf/api/cls/Reader$Reader_Ip;

    iget-object v5, v5, Lcom/uhf/api/cls/Reader$Reader_Ip;->ip:[B

    add-int/2addr v2, v3

    invoke-static {v5, v6, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1871
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v3, v3, v6

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/uhf/api/cls/JniModuleAPI;->ParamSet_BaseType(II[B)I

    move-result v0

    goto/16 :goto_4ba

    .line 1821
    :pswitch_144
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;

    iget v2, v2, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potlcnt:I

    int-to-byte v2, v2

    aput-byte v2, v0, v6

    const/4 v2, 0x0

    .line 1822
    :goto_14e
    aget-byte v3, v0, v6

    if-lt v2, v3, :cond_162

    .line 1831
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v3, v3, v6

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/uhf/api/cls/JniModuleAPI;->ParamSet_BaseType(II[B)I

    move-result v0

    goto/16 :goto_4ba

    :cond_162
    mul-int/lit8 v3, v2, 0x5

    add-int/lit8 v7, v3, 0x1

    .line 1824
    move-object/from16 v8, p2

    check-cast v8, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;

    iget-object v8, v8, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potls:[Lcom/uhf/api/cls/Reader$Inv_Potl;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/uhf/api/cls/Reader$Inv_Potl;->potl:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    invoke-virtual {v8}, Lcom/uhf/api/cls/Reader$SL_TagProtocol;->value()I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    add-int/lit8 v7, v3, 0x2

    .line 1825
    move-object/from16 v8, p2

    check-cast v8, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;

    iget-object v8, v8, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potls:[Lcom/uhf/api/cls/Reader$Inv_Potl;

    aget-object v8, v8, v2

    iget v8, v8, Lcom/uhf/api/cls/Reader$Inv_Potl;->weight:I

    and-int/2addr v8, v12

    shr-int/lit8 v8, v8, 0x18

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    add-int/lit8 v7, v3, 0x3

    .line 1826
    move-object/from16 v8, p2

    check-cast v8, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;

    iget-object v8, v8, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potls:[Lcom/uhf/api/cls/Reader$Inv_Potl;

    aget-object v8, v8, v2

    iget v8, v8, Lcom/uhf/api/cls/Reader$Inv_Potl;->weight:I

    and-int/2addr v8, v11

    shr-int/2addr v8, v13

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    add-int/lit8 v7, v3, 0x4

    .line 1827
    move-object/from16 v8, p2

    check-cast v8, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;

    iget-object v8, v8, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potls:[Lcom/uhf/api/cls/Reader$Inv_Potl;

    aget-object v8, v8, v2

    iget v8, v8, Lcom/uhf/api/cls/Reader$Inv_Potl;->weight:I

    and-int/2addr v8, v4

    shr-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    add-int/lit8 v3, v3, 0x5

    .line 1828
    move-object/from16 v7, p2

    check-cast v7, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;

    iget-object v7, v7, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potls:[Lcom/uhf/api/cls/Reader$Inv_Potl;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/uhf/api/cls/Reader$Inv_Potl;->weight:I

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_14e

    .line 1794
    :pswitch_1bf
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    if-eqz v2, :cond_25c

    .line 1796
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    iget-object v2, v2, Lcom/uhf/api/cls/Reader$EmbededData_ST;->accesspwd:[B

    const/16 v15, 0xa

    if-nez v2, :cond_1d2

    aput-byte v15, v0, v6

    goto :goto_1d6

    :cond_1d2
    const/16 v2, 0xe

    aput-byte v2, v0, v6

    .line 1800
    :goto_1d6
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    iget v2, v2, Lcom/uhf/api/cls/Reader$EmbededData_ST;->bank:I

    int-to-byte v2, v2

    aput-byte v2, v0, v14

    .line 1801
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    iget v2, v2, Lcom/uhf/api/cls/Reader$EmbededData_ST;->startaddr:I

    and-int/2addr v2, v12

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v16

    .line 1802
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    iget v2, v2, Lcom/uhf/api/cls/Reader$EmbededData_ST;->startaddr:I

    and-int/2addr v2, v11

    shr-int/2addr v2, v13

    int-to-byte v2, v2

    aput-byte v2, v0, v9

    .line 1803
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    iget v2, v2, Lcom/uhf/api/cls/Reader$EmbededData_ST;->startaddr:I

    and-int/2addr v2, v4

    shr-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v10

    .line 1804
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    iget v2, v2, Lcom/uhf/api/cls/Reader$EmbededData_ST;->startaddr:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 1806
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    iget v2, v2, Lcom/uhf/api/cls/Reader$EmbededData_ST;->bytecnt:I

    and-int/2addr v2, v12

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v8

    .line 1807
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    iget v2, v2, Lcom/uhf/api/cls/Reader$EmbededData_ST;->bytecnt:I

    and-int/2addr v2, v11

    shr-int/2addr v2, v13

    int-to-byte v2, v2

    aput-byte v2, v0, v7

    .line 1808
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    iget v2, v2, Lcom/uhf/api/cls/Reader$EmbededData_ST;->bytecnt:I

    and-int/2addr v2, v4

    shr-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v5

    .line 1809
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    iget v2, v2, Lcom/uhf/api/cls/Reader$EmbededData_ST;->bytecnt:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/16 v3, 0x9

    aput-byte v2, v0, v3

    .line 1810
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    iget-object v2, v2, Lcom/uhf/api/cls/Reader$EmbededData_ST;->accesspwd:[B

    if-eqz v2, :cond_24c

    .line 1811
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    iget-object v2, v2, Lcom/uhf/api/cls/Reader$EmbededData_ST;->accesspwd:[B

    invoke-static {v2, v6, v0, v15, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1812
    :cond_24c
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v3, v3, v6

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/uhf/api/cls/JniModuleAPI;->ParamSet_BaseType(II[B)I

    move-result v0

    goto/16 :goto_4ba

    .line 1815
    :cond_25c
    iget-object v0, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v2, v2, v6

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/uhf/api/cls/JniModuleAPI;->ParamSet_BaseType(II[B)I

    move-result v0

    goto/16 :goto_4ba

    .line 1766
    :pswitch_26d
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    if-eqz v2, :cond_30d

    .line 1768
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget v2, v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;->bank:I

    int-to-byte v2, v2

    aput-byte v2, v0, v6

    .line 1769
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget v2, v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;->startaddr:I

    and-int/2addr v2, v12

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v14

    .line 1770
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget v2, v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;->startaddr:I

    and-int/2addr v2, v11

    shr-int/2addr v2, v13

    int-to-byte v2, v2

    aput-byte v2, v0, v16

    .line 1771
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget v2, v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;->startaddr:I

    and-int/2addr v2, v4

    shr-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v9

    .line 1772
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget v2, v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;->startaddr:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v10

    .line 1774
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget v2, v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;->flen:I

    and-int/2addr v2, v12

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 1775
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget v2, v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;->flen:I

    and-int/2addr v2, v11

    shr-int/2addr v2, v13

    int-to-byte v2, v2

    aput-byte v2, v0, v8

    .line 1776
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget v2, v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;->flen:I

    and-int/2addr v2, v4

    shr-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v7

    .line 1777
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget v2, v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;->flen:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v5

    .line 1779
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget v2, v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;->flen:I

    div-int/2addr v2, v5

    .line 1780
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget v3, v3, Lcom/uhf/api/cls/Reader$TagFilter_ST;->flen:I

    rem-int/2addr v3, v5

    if-eqz v3, :cond_2e8

    add-int/lit8 v2, v2, 0x1

    .line 1782
    :cond_2e8
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget-object v3, v3, Lcom/uhf/api/cls/Reader$TagFilter_ST;->fdata:[B

    const/16 v4, 0x9

    invoke-static {v3, v6, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v4

    .line 1783
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget v3, v3, Lcom/uhf/api/cls/Reader$TagFilter_ST;->isInvert:I

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1784
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v3, v3, v6

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/uhf/api/cls/JniModuleAPI;->ParamSet_BaseType(II[B)I

    move-result v0

    goto/16 :goto_4ba

    .line 1788
    :cond_30d
    iget-object v0, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v2, v2, v6

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/uhf/api/cls/JniModuleAPI;->ParamSet_BaseType(II[B)I

    move-result v0

    goto/16 :goto_4ba

    .line 1876
    :cond_31e
    iget-object v0, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v2, v2, v6

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v3

    move-object/from16 v4, p2

    check-cast v4, [B

    invoke-virtual {v0, v2, v3, v4}, Lcom/uhf/api/cls/JniModuleAPI;->ParamSet_BaseType(II[B)I

    move-result v0

    goto/16 :goto_4ba

    .line 1952
    :cond_332
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$CustomParam_ST;
    :try_end_336
    .catchall {:try_start_5 .. :try_end_336} :catchall_518

    .line 1955
    :try_start_336
    iget-object v3, v2, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamName:Ljava/lang/String;

    const-string v7, "US-ASCII"

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9
    :try_end_33e
    .catch Ljava/lang/Exception; {:try_start_336 .. :try_end_33e} :catch_33f
    .catchall {:try_start_336 .. :try_end_33e} :catchall_518

    goto :goto_340

    :catch_33f
    const/4 v9, 0x0

    .line 1959
    :goto_340
    :try_start_340
    array-length v3, v9

    invoke-static {v9, v6, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1960
    array-length v3, v9

    aput-byte v6, v0, v3

    .line 1961
    iget-object v3, v2, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamVal:[B

    array-length v3, v3

    and-int/2addr v3, v4

    shr-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v0, v8

    const/16 v3, 0x31

    .line 1962
    iget-object v4, v2, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamVal:[B

    array-length v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 1963
    iget-object v3, v2, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamVal:[B

    const/16 v4, 0x32

    iget-object v2, v2, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamVal:[B

    array-length v2, v2

    invoke-static {v3, v6, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1964
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v3, v3, v6

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/uhf/api/cls/JniModuleAPI;->ParamSet_BaseType(II[B)I

    move-result v0

    goto/16 :goto_4ba

    .line 1903
    :cond_373
    move-object/from16 v2, p2

    check-cast v2, [Ljava/lang/String;

    if-nez v2, :cond_38a

    .line 1905
    iget-object v0, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v2, v2, v6

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/uhf/api/cls/JniModuleAPI;->ParamSet_BaseType(II[B)I

    move-result v0

    goto/16 :goto_4ba

    .line 1907
    :cond_38a
    new-instance v7, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;

    invoke-direct {v7, v1}, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 1908
    array-length v9, v2

    if-eqz v9, :cond_49a

    array-length v9, v2

    if-le v9, v13, :cond_397

    goto/16 :goto_49a

    .line 1911
    :cond_397
    array-length v9, v2

    iput v9, v7, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectorcnt:I

    const/4 v9, 0x0

    .line 1912
    :goto_39b
    array-length v15, v2

    if-lt v9, v15, :cond_42b

    .line 1932
    iget v2, v7, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectorcnt:I

    int-to-byte v2, v2

    aput-byte v2, v0, v6

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1933
    :goto_3a5
    iget v8, v7, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectorcnt:I

    if-lt v2, v8, :cond_3b9

    .line 1945
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v3, v3, v6

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/uhf/api/cls/JniModuleAPI;->ParamSet_BaseType(II[B)I

    move-result v0

    goto/16 :goto_4ba

    :cond_3b9
    add-int/lit8 v8, v3, 0x1

    .line 1934
    iget-object v9, v7, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v9, v9, v2

    iget v9, v9, Lcom/uhf/api/cls/Reader$TagSelector_ST;->bank:I

    int-to-byte v9, v9

    aput-byte v9, v0, v3

    add-int/lit8 v3, v8, 0x1

    .line 1935
    iget-object v9, v7, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v9, v9, v2

    iget v9, v9, Lcom/uhf/api/cls/Reader$TagSelector_ST;->startaddr:I

    and-int/2addr v9, v12

    shr-int/lit8 v9, v9, 0x18

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    add-int/lit8 v8, v3, 0x1

    .line 1936
    iget-object v9, v7, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v9, v9, v2

    iget v9, v9, Lcom/uhf/api/cls/Reader$TagSelector_ST;->startaddr:I

    and-int/2addr v9, v11

    shr-int/2addr v9, v13

    int-to-byte v9, v9

    aput-byte v9, v0, v3

    add-int/lit8 v3, v8, 0x1

    .line 1937
    iget-object v9, v7, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v9, v9, v2

    iget v9, v9, Lcom/uhf/api/cls/Reader$TagSelector_ST;->startaddr:I

    and-int/2addr v9, v4

    shr-int/2addr v9, v5

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    add-int/lit8 v8, v3, 0x1

    .line 1938
    iget-object v9, v7, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v9, v9, v2

    iget v9, v9, Lcom/uhf/api/cls/Reader$TagSelector_ST;->startaddr:I

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v0, v3

    add-int/lit8 v3, v8, 0x1

    .line 1939
    iget-object v9, v7, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v9, v9, v2

    iget v9, v9, Lcom/uhf/api/cls/Reader$TagSelector_ST;->slen:I

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 1940
    iget-object v8, v7, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v8, v8, v2

    iget v8, v8, Lcom/uhf/api/cls/Reader$TagSelector_ST;->slen:I

    rem-int/2addr v8, v5

    if-nez v8, :cond_415

    iget-object v8, v7, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v8, v8, v2

    iget v8, v8, Lcom/uhf/api/cls/Reader$TagSelector_ST;->slen:I

    div-int/2addr v8, v5

    goto :goto_41d

    .line 1941
    :cond_415
    iget-object v8, v7, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v8, v8, v2

    iget v8, v8, Lcom/uhf/api/cls/Reader$TagSelector_ST;->slen:I

    div-int/2addr v8, v5

    add-int/2addr v8, v14

    .line 1942
    :goto_41d
    iget-object v9, v7, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v9, v9, v2

    iget-object v9, v9, Lcom/uhf/api/cls/Reader$TagSelector_ST;->sdata:[B

    invoke-static {v9, v6, v0, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v8

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3a5

    .line 1913
    :cond_42b
    aget-object v15, v2, v9

    if-nez v15, :cond_433

    .line 1914
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    monitor-exit p0

    return-object v0

    .line 1915
    :cond_433
    aget-object v15, v2, v9

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-gt v15, v8, :cond_496

    aget-object v15, v2, v9

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    rem-int/2addr v15, v10

    if-eqz v15, :cond_445

    goto :goto_496

    .line 1917
    :cond_445
    iget-object v15, v7, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v15, v15, v9

    iput v14, v15, Lcom/uhf/api/cls/Reader$TagSelector_ST;->bank:I

    .line 1918
    aget-object v15, v2, v9

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_468

    .line 1919
    iget-object v15, v7, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v15, v15, v9

    iput v13, v15, Lcom/uhf/api/cls/Reader$TagSelector_ST;->startaddr:I

    .line 1920
    iget-object v15, v7, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v15, v15, v9

    iput v3, v15, Lcom/uhf/api/cls/Reader$TagSelector_ST;->slen:I

    .line 1921
    iget-object v15, v7, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v15, v15, v9

    iget-object v15, v15, Lcom/uhf/api/cls/Reader$TagSelector_ST;->sdata:[B

    aput-byte v6, v15, v6

    goto :goto_48f

    .line 1924
    :cond_468
    iget-object v15, v7, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v15, v15, v9

    const/16 v3, 0x20

    iput v3, v15, Lcom/uhf/api/cls/Reader$TagSelector_ST;->startaddr:I

    .line 1925
    iget-object v3, v7, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v3, v3, v9

    aget-object v15, v2, v9

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    mul-int/lit8 v15, v15, 0x4

    iput v15, v3, Lcom/uhf/api/cls/Reader$TagSelector_ST;->slen:I

    .line 1926
    aget-object v3, v2, v9

    aget-object v15, v2, v9

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    iget-object v8, v7, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/uhf/api/cls/Reader$TagSelector_ST;->sdata:[B

    invoke-virtual {v1, v3, v15, v8}, Lcom/uhf/api/cls/Reader;->Str2Hex(Ljava/lang/String;I[B)V

    :goto_48f
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x5

    const/16 v8, 0x30

    goto/16 :goto_39b

    .line 1916
    :cond_496
    :goto_496
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    monitor-exit p0

    return-object v0

    .line 1909
    :cond_49a
    :goto_49a
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    monitor-exit p0

    return-object v0

    .line 1752
    :cond_49e
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$AntPowerConf;

    iget v2, v2, Lcom/uhf/api/cls/Reader$AntPowerConf;->antcnt:I

    int-to-byte v2, v2

    aput-byte v2, v0, v6

    const/4 v2, 0x0

    .line 1753
    :goto_4a8
    aget-byte v3, v0, v6

    if-lt v2, v3, :cond_4c0

    .line 1761
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v3, v3, v6

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/uhf/api/cls/JniModuleAPI;->ParamSet_BaseType(II[B)I

    move-result v0

    .line 1979
    :goto_4ba
    invoke-static {v0}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 1980
    monitor-exit p0

    return-object v0

    :cond_4c0
    mul-int/lit8 v3, v2, 0x5

    add-int/lit8 v7, v3, 0x1

    .line 1755
    move-object/from16 v8, p2

    check-cast v8, Lcom/uhf/api/cls/Reader$AntPowerConf;

    iget-object v8, v8, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v8, v8, v2

    iget v8, v8, Lcom/uhf/api/cls/Reader$AntPower;->antid:I

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    add-int/lit8 v7, v3, 0x2

    .line 1756
    move-object/from16 v8, p2

    check-cast v8, Lcom/uhf/api/cls/Reader$AntPowerConf;

    iget-object v8, v8, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v8, v8, v2

    iget-short v8, v8, Lcom/uhf/api/cls/Reader$AntPower;->readPower:S

    and-int/2addr v8, v4

    shr-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    add-int/lit8 v7, v3, 0x3

    .line 1757
    move-object/from16 v8, p2

    check-cast v8, Lcom/uhf/api/cls/Reader$AntPowerConf;

    iget-object v8, v8, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v8, v8, v2

    iget-short v8, v8, Lcom/uhf/api/cls/Reader$AntPower;->readPower:S

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    add-int/lit8 v7, v3, 0x4

    .line 1758
    move-object/from16 v8, p2

    check-cast v8, Lcom/uhf/api/cls/Reader$AntPowerConf;

    iget-object v8, v8, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v8, v8, v2

    iget-short v8, v8, Lcom/uhf/api/cls/Reader$AntPower;->writePower:S

    and-int/2addr v8, v4

    shr-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    add-int/lit8 v3, v3, 0x5

    .line 1759
    move-object/from16 v7, p2

    check-cast v7, Lcom/uhf/api/cls/Reader$AntPowerConf;

    iget-object v7, v7, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v7, v7, v2

    iget-short v7, v7, Lcom/uhf/api/cls/Reader$AntPower;->writePower:S

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_4a8

    :catchall_518
    move-exception v0

    .line 1745
    monitor-exit p0
    :try_end_51a
    .catchall {:try_start_340 .. :try_end_51a} :catchall_518

    goto :goto_51c

    :goto_51b
    throw v0

    :goto_51c
    goto :goto_51b

    nop

    :pswitch_data_51e
    .packed-switch 0x8
        :pswitch_26d
        :pswitch_1bf
        :pswitch_144
    .end packed-switch

    :pswitch_data_528
    .packed-switch 0xf
        :pswitch_f9
        :pswitch_c9
        :pswitch_69
    .end packed-switch
.end method

.method public PsamTransceiver(II[B[I[B[BS)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 19

    move-object v1, p0

    .line 1479
    monitor-enter p0

    .line 1480
    :try_start_2
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v0, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v3, 0x0

    aget v3, v0, v3

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v2 .. v10}, Lcom/uhf/api/cls/JniModuleAPI;->PsamTransceiver(III[B[I[B[BS)I

    move-result v0

    .line 1482
    invoke-static {v0}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 1483
    monitor-exit p0

    return-object v0

    :catchall_1d
    move-exception v0

    .line 1479
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public ReadDataOnReader(I[BI)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 7

    .line 1339
    monitor-enter p0

    .line 1340
    :try_start_1
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/uhf/api/cls/JniModuleAPI;->ReadDataOnReader(II[BI)I

    move-result p1

    .line 1341
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1342
    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    .line 1339
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public ReadTagLED(ISSLcom/uhf/api/cls/R2000_calibration$TagLED_DATA;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 15

    .line 2293
    monitor-enter p0

    const/16 v0, 0x12c

    :try_start_3
    new-array v0, v0, [B

    const/4 v1, 0x1

    new-array v8, v1, [I

    .line 2296
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v2, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v9, 0x0

    aget v2, v2, v9

    move v3, p1

    move v4, p3

    move v5, p2

    move-object v6, v0

    move-object v7, v8

    invoke-virtual/range {v1 .. v7}, Lcom/uhf/api/cls/JniModuleAPI;->ReadTagLED(IISS[B[I)I

    move-result p1

    if-nez p1, :cond_82

    .line 2299
    new-instance p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;

    new-instance p3, Lcom/uhf/api/cls/R2000_calibration;

    invoke-direct {p3}, Lcom/uhf/api/cls/R2000_calibration;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget v1, v8, v9

    invoke-direct {p2, p3, v0, v1}, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;-><init>(Lcom/uhf/api/cls/R2000_calibration;[BI)V

    .line 2300
    iget p3, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtAntenna:I

    iput p3, p4, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtAntenna:I

    .line 2301
    iget p3, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtFrequency:I

    iput p3, p4, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtFrequency:I

    .line 2302
    iget p3, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtLqi:I

    iput p3, p4, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtLqi:I

    .line 2303
    iget p3, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtPhase:I

    iput p3, p4, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtPhase:I

    .line 2304
    iget p3, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtPro:I

    iput p3, p4, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtPro:I

    .line 2305
    iget p3, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtReadCount:I

    iput p3, p4, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtReadCount:I

    .line 2306
    iget p3, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtTsmp:I

    iput p3, p4, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtTsmp:I

    const/4 p3, 0x2

    new-array v0, p3, [B

    .line 2307
    iput-object v0, p4, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagcrc:[B

    new-array v0, p3, [B

    .line 2308
    iput-object v0, p4, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagpc:[B

    .line 2309
    iget-object v0, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagepc:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p4, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagepc:[B

    .line 2310
    iget-object v0, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagcrc:[B

    iget-object v1, p4, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagcrc:[B

    invoke-static {v0, v9, v1, v9, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2311
    iget-object v0, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagepc:[B

    iget-object v1, p4, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagepc:[B

    iget-object v2, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagepc:[B

    array-length v2, v2

    invoke-static {v0, v9, v1, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2312
    iget-object v0, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagpc:[B

    iget-object v1, p4, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagpc:[B

    invoke-static {v0, v9, v1, v9, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2313
    iget-object p3, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->BankData:[B

    if-eqz p3, :cond_82

    .line 2315
    iget-object p3, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->BankData:[B

    array-length p3, p3

    new-array p3, p3, [B

    iput-object p3, p4, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->BankData:[B

    .line 2316
    iget-object p3, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->BankData:[B

    iget-object p4, p4, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->BankData:[B

    iget-object p2, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->BankData:[B

    array-length p2, p2

    invoke-static {p3, v9, p4, v9, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2320
    :cond_82
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 2321
    monitor-exit p0

    return-object p1

    :catchall_88
    move-exception p1

    .line 2293
    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_3 .. :try_end_8a} :catchall_88

    throw p1
.end method

.method public ReadTagTemperature(ICIIIIIS[BLcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v0, p10

    .line 2255
    monitor-enter p0

    const/16 v2, 0x12c

    :try_start_7
    new-array v2, v2, [B

    const/4 v3, 0x1

    new-array v15, v3, [I

    .line 2258
    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v4, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v14, 0x0

    aget v4, v4, v14

    add-int v5, p5, p6

    add-int v9, v5, p7

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    move-object v14, v2

    invoke-virtual/range {v3 .. v15}, Lcom/uhf/api/cls/JniModuleAPI;->ReadTagTemperature(IICIIIIIS[B[B[I)I

    move-result v3

    if-nez v3, :cond_a8

    .line 2263
    new-instance v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;

    new-instance v5, Lcom/uhf/api/cls/R2000_calibration;

    invoke-direct {v5}, Lcom/uhf/api/cls/R2000_calibration;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v6, p4

    invoke-direct {v4, v5, v2, v6}, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;-><init>(Lcom/uhf/api/cls/R2000_calibration;[BI)V

    .line 2264
    iget v2, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtAntenna:I

    iput v2, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtAntenna:I

    .line 2265
    iget v2, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtFrequency:I

    iput v2, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtFrequency:I

    .line 2266
    iget v2, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtLqi:I

    iput v2, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtLqi:I

    .line 2267
    iget v2, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtPhase:I

    iput v2, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtPhase:I

    .line 2268
    iget v2, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtPro:I

    iput v2, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtPro:I

    .line 2269
    iget v2, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtReadCount:I

    iput v2, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtReadCount:I

    .line 2270
    iget v2, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtTsmp:I

    iput v2, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtTsmp:I

    const/4 v2, 0x2

    new-array v5, v2, [B

    .line 2271
    iput-object v5, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->tagcrc:[B

    new-array v5, v2, [B

    .line 2272
    iput-object v5, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->tagpc:[B

    .line 2273
    iget-object v5, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->tagepc:[B

    array-length v5, v5

    new-array v5, v5, [B

    iput-object v5, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->tagepc:[B

    .line 2274
    iget-object v5, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->tagcrc:[B

    iget-object v6, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->tagcrc:[B

    const/4 v7, 0x0

    invoke-static {v5, v7, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2275
    iget-object v5, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->tagepc:[B

    iget-object v6, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->tagepc:[B

    iget-object v8, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->tagepc:[B

    array-length v8, v8

    invoke-static {v5, v7, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2276
    iget-object v5, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->tagpc:[B

    iget-object v6, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->tagpc:[B

    invoke-static {v5, v7, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2277
    iget-object v2, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->BankData:[B

    if-eqz v2, :cond_97

    .line 2279
    iget-object v2, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->BankData:[B

    array-length v2, v2

    new-array v2, v2, [B

    iput-object v2, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->BankData:[B

    .line 2280
    iget-object v2, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->BankData:[B

    iget-object v5, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->BankData:[B

    iget-object v6, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->BankData:[B

    array-length v6, v6

    invoke-static {v2, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2282
    :cond_97
    iget-object v2, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->temperdata:[B

    array-length v2, v2

    new-array v2, v2, [B

    iput-object v2, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->temperdata:[B

    .line 2283
    iget-object v2, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->temperdata:[B

    iget-object v0, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->temperdata:[B

    iget-object v4, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->temperdata:[B

    array-length v4, v4

    invoke-static {v2, v7, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2285
    :cond_a8
    invoke-static {v3}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 2286
    monitor-exit p0

    return-object v0

    :catchall_ae
    move-exception v0

    .line 2255
    monitor-exit p0
    :try_end_b0
    .catchall {:try_start_7 .. :try_end_b0} :catchall_ae

    throw v0
.end method

.method public ResetRfidModule()Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 4

    .line 2230
    monitor-enter p0

    .line 2231
    :try_start_1
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/uhf/api/cls/JniModuleAPI;->ResetRfidModule(I)I

    move-result v0

    .line 2232
    invoke-static {v0}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 2233
    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    .line 2230
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public SaveDataOnReader(I[BI)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 7

    .line 1330
    monitor-enter p0

    .line 1331
    :try_start_1
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/uhf/api/cls/JniModuleAPI;->SaveDataOnReader(II[BI)I

    move-result p1

    .line 1332
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1333
    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    .line 1330
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public SetGPO(II)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 6

    .line 1443
    monitor-enter p0

    .line 1444
    :try_start_1
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1, p1, p2}, Lcom/uhf/api/cls/JniModuleAPI;->SetGPO(III)I

    move-result p1

    .line 1445
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1446
    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    .line 1443
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public StartReading([IILcom/uhf/api/cls/BackReadOption;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 10

    .line 2394
    invoke-direct {p0}, Lcom/uhf/api/cls/Reader;->CLOGS()V

    .line 2395
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 2396
    iget-boolean v1, p0, Lcom/uhf/api/cls/Reader;->m_IsReadingForAll:Z

    if-eqz v1, :cond_c

    .line 2397
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_EXECING:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p1

    :cond_c
    const/4 v1, 0x1

    .line 2398
    iput-boolean v1, p0, Lcom/uhf/api/cls/Reader;->m_IsReadingForAll:Z

    .line 2399
    iput-object p3, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    .line 2402
    iget-boolean v2, p3, Lcom/uhf/api/cls/BackReadOption;->IsGPITrigger:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_c3

    .line 2404
    iget-object v2, p3, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    iget-object v2, v2, Lcom/uhf/api/cls/GPITrigger;->TriggerType:Lcom/uhf/api/cls/GpiTrigger_Type;

    sget-object v4, Lcom/uhf/api/cls/GpiTrigger_Type;->GPITRIGGER_TRI1START_TIMEOUTSTOP:Lcom/uhf/api/cls/GpiTrigger_Type;

    if-eq v2, v4, :cond_26

    .line 2405
    iget-object v2, p3, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    iget-object v2, v2, Lcom/uhf/api/cls/GPITrigger;->TriggerType:Lcom/uhf/api/cls/GpiTrigger_Type;

    sget-object v4, Lcom/uhf/api/cls/GpiTrigger_Type;->GPITRIGGER_TRI1ORTRI2START_TIMEOUTSTOP:Lcom/uhf/api/cls/GpiTrigger_Type;

    if-ne v2, v4, :cond_30

    .line 2407
    :cond_26
    iget-object v2, p3, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    iget v2, v2, Lcom/uhf/api/cls/GPITrigger;->StopTriggerTimeout:I

    const/4 v4, 0x5

    if-ge v2, v4, :cond_30

    .line 2408
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p1

    .line 2411
    :cond_30
    new-instance v2, Lcom/uhf/api/cls/Reader$HardwareDetails;

    invoke-direct {v2, p0}, Lcom/uhf/api/cls/Reader$HardwareDetails;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 2412
    invoke-virtual {p0, v2}, Lcom/uhf/api/cls/Reader;->GetHardwareDetails(Lcom/uhf/api/cls/Reader$HardwareDetails;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 2413
    iget-object v4, v2, Lcom/uhf/api/cls/Reader$HardwareDetails;->logictype:Lcom/uhf/api/cls/Reader$Reader_Type;

    sget-object v5, Lcom/uhf/api/cls/Reader$Reader_Type;->MODULE_ARM7_FOUR_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

    if-eq v4, v5, :cond_53

    .line 2414
    iget-object v4, v2, Lcom/uhf/api/cls/Reader$HardwareDetails;->logictype:Lcom/uhf/api/cls/Reader$Reader_Type;

    sget-object v5, Lcom/uhf/api/cls/Reader$Reader_Type;->M6E_ARM7_FOUR_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

    if-eq v4, v5, :cond_53

    .line 2415
    iget-object v4, v2, Lcom/uhf/api/cls/Reader$HardwareDetails;->logictype:Lcom/uhf/api/cls/Reader$Reader_Type;

    sget-object v5, Lcom/uhf/api/cls/Reader$Reader_Type;->MODULE_ARM7_TWO_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

    if-eq v4, v5, :cond_53

    .line 2416
    iget-object v2, v2, Lcom/uhf/api/cls/Reader$HardwareDetails;->logictype:Lcom/uhf/api/cls/Reader$Reader_Type;

    sget-object v4, Lcom/uhf/api/cls/Reader$Reader_Type;->SL_COMMN_READER:Lcom/uhf/api/cls/Reader$Reader_Type;

    if-ne v2, v4, :cond_51

    goto :goto_53

    :cond_51
    const/4 v2, 0x2

    goto :goto_54

    :cond_53
    :goto_53
    const/4 v2, 0x4

    .line 2421
    :goto_54
    iget-object v4, p3, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    iget-object v4, v4, Lcom/uhf/api/cls/GPITrigger;->GpiTrigger1States:Lcom/uhf/api/cls/GpiInfo_ST;

    iget v4, v4, Lcom/uhf/api/cls/GpiInfo_ST;->gpiCount:I

    if-le v4, v2, :cond_5f

    .line 2422
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p1

    :cond_5f
    const/4 v4, 0x0

    .line 2424
    :goto_60
    iget-object v5, p3, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    iget-object v5, v5, Lcom/uhf/api/cls/GPITrigger;->GpiTrigger1States:Lcom/uhf/api/cls/GpiInfo_ST;

    iget v5, v5, Lcom/uhf/api/cls/GpiInfo_ST;->gpiCount:I

    if-lt v4, v5, :cond_a4

    .line 2430
    iget-object v4, p3, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    iget-object v4, v4, Lcom/uhf/api/cls/GPITrigger;->TriggerType:Lcom/uhf/api/cls/GpiTrigger_Type;

    sget-object v5, Lcom/uhf/api/cls/GpiTrigger_Type;->GPITRIGGER_TRI1START_TRI2STOP:Lcom/uhf/api/cls/GpiTrigger_Type;

    if-ne v4, v5, :cond_c3

    .line 2432
    iget-object v4, p3, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    iget-object v4, v4, Lcom/uhf/api/cls/GPITrigger;->GpiTrigger2States:Lcom/uhf/api/cls/GpiInfo_ST;

    iget v4, v4, Lcom/uhf/api/cls/GpiInfo_ST;->gpiCount:I

    if-le v4, v2, :cond_7b

    .line 2433
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p1

    :cond_7b
    const/4 v4, 0x0

    .line 2434
    :goto_7c
    iget-object v5, p3, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    iget-object v5, v5, Lcom/uhf/api/cls/GPITrigger;->GpiTrigger2States:Lcom/uhf/api/cls/GpiInfo_ST;

    iget v5, v5, Lcom/uhf/api/cls/GpiInfo_ST;->gpiCount:I

    if-lt v4, v5, :cond_85

    goto :goto_c3

    .line 2436
    :cond_85
    iget-object v5, p3, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    iget-object v5, v5, Lcom/uhf/api/cls/GPITrigger;->GpiTrigger2States:Lcom/uhf/api/cls/GpiInfo_ST;

    iget-object v5, v5, Lcom/uhf/api/cls/GpiInfo_ST;->gpiStats:[Lcom/uhf/api/cls/GpiState_ST;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/uhf/api/cls/GpiState_ST;->GpiId:I

    if-lt v5, v1, :cond_a1

    .line 2437
    iget-object v5, p3, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    iget-object v5, v5, Lcom/uhf/api/cls/GPITrigger;->GpiTrigger2States:Lcom/uhf/api/cls/GpiInfo_ST;

    iget-object v5, v5, Lcom/uhf/api/cls/GpiInfo_ST;->gpiStats:[Lcom/uhf/api/cls/GpiState_ST;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/uhf/api/cls/GpiState_ST;->GpiId:I

    if-le v5, v2, :cond_9e

    goto :goto_a1

    :cond_9e
    add-int/lit8 v4, v4, 0x1

    goto :goto_7c

    .line 2438
    :cond_a1
    :goto_a1
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p1

    .line 2426
    :cond_a4
    iget-object v5, p3, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    iget-object v5, v5, Lcom/uhf/api/cls/GPITrigger;->GpiTrigger1States:Lcom/uhf/api/cls/GpiInfo_ST;

    iget-object v5, v5, Lcom/uhf/api/cls/GpiInfo_ST;->gpiStats:[Lcom/uhf/api/cls/GpiState_ST;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/uhf/api/cls/GpiState_ST;->GpiId:I

    if-lt v5, v1, :cond_c0

    .line 2427
    iget-object v5, p3, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    iget-object v5, v5, Lcom/uhf/api/cls/GPITrigger;->GpiTrigger1States:Lcom/uhf/api/cls/GpiInfo_ST;

    iget-object v5, v5, Lcom/uhf/api/cls/GpiInfo_ST;->gpiStats:[Lcom/uhf/api/cls/GpiState_ST;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/uhf/api/cls/GpiState_ST;->GpiId:I

    if-le v5, v2, :cond_bd

    goto :goto_c0

    :cond_bd
    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    .line 2428
    :cond_c0
    :goto_c0
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p1

    .line 2443
    :cond_c3
    :goto_c3
    iget-object p3, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-boolean p3, p3, Lcom/uhf/api/cls/BackReadOption;->IsFastRead:Z

    if-eqz p3, :cond_146

    .line 2446
    iget-object p3, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-object p3, p3, Lcom/uhf/api/cls/BackReadOption;->TMFlags:Lcom/uhf/api/cls/TagMetaFlags;

    iget-boolean p3, p3, Lcom/uhf/api/cls/TagMetaFlags;->IsReadCnt:Z

    if-eqz p3, :cond_d3

    int-to-short p3, v1

    goto :goto_d4

    :cond_d3
    const/4 p3, 0x0

    .line 2448
    :goto_d4
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-object v1, v1, Lcom/uhf/api/cls/BackReadOption;->TMFlags:Lcom/uhf/api/cls/TagMetaFlags;

    iget-boolean v1, v1, Lcom/uhf/api/cls/TagMetaFlags;->IsRSSI:Z

    if-eqz v1, :cond_df

    or-int/lit8 p3, p3, 0x2

    int-to-short p3, p3

    .line 2450
    :cond_df
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-object v1, v1, Lcom/uhf/api/cls/BackReadOption;->TMFlags:Lcom/uhf/api/cls/TagMetaFlags;

    iget-boolean v1, v1, Lcom/uhf/api/cls/TagMetaFlags;->IsAntennaID:Z

    if-eqz v1, :cond_ea

    or-int/lit8 p3, p3, 0x4

    int-to-short p3, p3

    .line 2452
    :cond_ea
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-object v1, v1, Lcom/uhf/api/cls/BackReadOption;->TMFlags:Lcom/uhf/api/cls/TagMetaFlags;

    iget-boolean v1, v1, Lcom/uhf/api/cls/TagMetaFlags;->IsFrequency:Z

    if-eqz v1, :cond_f5

    or-int/lit8 p3, p3, 0x8

    int-to-short p3, p3

    .line 2454
    :cond_f5
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-object v1, v1, Lcom/uhf/api/cls/BackReadOption;->TMFlags:Lcom/uhf/api/cls/TagMetaFlags;

    iget-boolean v1, v1, Lcom/uhf/api/cls/TagMetaFlags;->IsTimestamp:Z

    if-eqz v1, :cond_100

    or-int/lit8 p3, p3, 0x10

    int-to-short p3, p3

    .line 2456
    :cond_100
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-object v1, v1, Lcom/uhf/api/cls/BackReadOption;->TMFlags:Lcom/uhf/api/cls/TagMetaFlags;

    iget-boolean v1, v1, Lcom/uhf/api/cls/TagMetaFlags;->IsRFU:Z

    if-eqz v1, :cond_10b

    or-int/lit8 p3, p3, 0x20

    int-to-short p3, p3

    .line 2458
    :cond_10b
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-object v1, v1, Lcom/uhf/api/cls/BackReadOption;->TMFlags:Lcom/uhf/api/cls/TagMetaFlags;

    iget-boolean v1, v1, Lcom/uhf/api/cls/TagMetaFlags;->IsEmdData:Z

    if-eqz v1, :cond_116

    or-int/lit16 p3, p3, 0x80

    int-to-short p3, p3

    .line 2460
    :cond_116
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iput-short v3, v1, Lcom/uhf/api/cls/BackReadOption;->ReadDuration:S

    .line 2461
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    const/16 v2, 0x32

    iput v2, v1, Lcom/uhf/api/cls/BackReadOption;->ReadInterval:I

    shl-int/lit8 p3, p3, 0x8

    .line 2462
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-char v1, v1, Lcom/uhf/api/cls/BackReadOption;->FastReadDutyRation:C

    or-int/2addr p3, v1

    or-int/lit16 p3, p3, 0x80

    iput p3, p0, Lcom/uhf/api/cls/Reader;->m_FastReadOption:I

    .line 2463
    iget-object p3, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-boolean p3, p3, Lcom/uhf/api/cls/BackReadOption;->IsGPITrigger:Z

    if-nez p3, :cond_146

    .line 2465
    iget-object p3, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v0, v0, v3

    iget v1, p0, Lcom/uhf/api/cls/Reader;->m_FastReadOption:I

    invoke-virtual {p3, v0, p1, p2, v1}, Lcom/uhf/api/cls/JniModuleAPI;->AsyncStartReading(I[III)I

    move-result p3

    .line 2466
    invoke-direct {p0, p3}, Lcom/uhf/api/cls/Reader;->errhandle(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 2467
    sget-object p3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v0, p3, :cond_146

    return-object v0

    .line 2472
    :cond_146
    iput p2, p0, Lcom/uhf/api/cls/Reader;->m_BackReadAntsCnt:I

    :goto_148
    if-lt v3, p2, :cond_162

    .line 2478
    new-instance p1, Lcom/uhf/api/cls/Reader$Tagnotify;

    invoke-direct {p1, p0, p0}, Lcom/uhf/api/cls/Reader$Tagnotify;-><init>(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader;)V

    .line 2479
    new-instance p2, Ljava/lang/Thread;

    invoke-direct {p2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/uhf/api/cls/Reader;->m_ThreadForAll:Ljava/lang/Thread;

    .line 2484
    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/uhf/api/cls/Reader;->m_ThreadForAllid:J

    .line 2485
    iget-object p1, p0, Lcom/uhf/api/cls/Reader;->m_ThreadForAll:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-object v0

    .line 2475
    :cond_162
    iget-object p3, p0, Lcom/uhf/api/cls/Reader;->m_BackReadAnts:[I

    aget v1, p1, v3

    aput v1, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_148
.end method

.method public StopReading()Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 6

    .line 2493
    iget-boolean v0, p0, Lcom/uhf/api/cls/Reader;->m_IsReadingForAll:Z

    if-nez v0, :cond_7

    .line 2494
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object v0

    :cond_7
    const/4 v0, 0x0

    .line 2495
    iput-boolean v0, p0, Lcom/uhf/api/cls/Reader;->m_IsReadingForAll:Z

    .line 2496
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 2497
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uhf/api/cls/Reader;->m_ThreadForAllid:J

    .line 2498
    iget-object v2, p0, Lcom/uhf/api/cls/Reader;->m_ThreadForAll:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_45

    .line 2499
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-boolean v0, v0, Lcom/uhf/api/cls/BackReadOption;->IsFastRead:Z

    if-eqz v0, :cond_42

    .line 2500
    invoke-virtual {p0}, Lcom/uhf/api/cls/Reader;->AsyncStopReading()Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v0, v1, :cond_42

    .line 2501
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "err 1892"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/uhf/api/cls/Reader$READER_ERR;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/uhf/api/cls/Reader;->ALOGS(Ljava/lang/String;)V

    return-object v0

    .line 2502
    :cond_42
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object v0

    .line 2506
    :cond_45
    :goto_45
    iget-boolean v0, p0, Lcom/uhf/api/cls/Reader;->m_IsReadThRunning:Z

    if-nez v0, :cond_73

    const/4 v0, 0x0

    .line 2515
    iput-object v0, p0, Lcom/uhf/api/cls/Reader;->m_ThreadForAll:Ljava/lang/Thread;

    .line 2516
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-boolean v0, v0, Lcom/uhf/api/cls/BackReadOption;->IsFastRead:Z

    if-eqz v0, :cond_70

    .line 2517
    invoke-virtual {p0}, Lcom/uhf/api/cls/Reader;->AsyncStopReading()Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v0, v1, :cond_70

    .line 2518
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "err 1920"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/uhf/api/cls/Reader$READER_ERR;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/uhf/api/cls/Reader;->ALOGS(Ljava/lang/String;)V

    return-object v0

    .line 2519
    :cond_70
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object v0

    :cond_73
    const-wide/16 v0, 0x14

    .line 2509
    :try_start_75
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_78
    .catch Ljava/lang/InterruptedException; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_45

    :catch_79
    move-exception v0

    .line 2512
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_45
.end method

.method public Str2Binary(Ljava/lang/String;I[B)V
    .registers 10

    .line 2011
    rem-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    if-lt v1, p2, :cond_a

    return-void

    :cond_a
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    const/16 v4, 0x8

    if-lt v2, v4, :cond_1b

    .line 2021
    div-int/lit8 v2, v1, 0x8

    aget-byte v4, p3, v2

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    add-int/lit8 v1, v1, 0x8

    goto :goto_7

    :cond_1b
    add-int v4, v1, v2

    add-int/lit8 v5, v4, 0x1

    .line 2019
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v4

    rsub-int/lit8 v5, v2, 0x7

    shl-int/2addr v4, v5

    int-to-byte v4, v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_c
.end method

.method public Str2Hex(Ljava/lang/String;I[B)V
    .registers 10

    .line 1999
    rem-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    :goto_6
    if-lt v0, p2, :cond_9

    return-void

    .line 2003
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "0123456789ABCDEF"

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    int-to-byte v1, v1

    .line 2004
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    .line 2005
    div-int/lit8 v0, v0, 0x2

    shl-int/lit8 v1, v1, 0x4

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    move v0, v5

    goto :goto_6
.end method

.method public TagInventory([IIS[Lcom/uhf/api/cls/Reader$TAGINFO;[I)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 13

    .line 1176
    monitor-enter p0

    .line 1177
    :try_start_1
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v6, 0x0

    aget v1, v1, v6

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/uhf/api/cls/JniModuleAPI;->TagInventory_Raw(I[IIS[I)I

    move-result p1

    .line 1178
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1180
    sget-object p2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne p1, p2, :cond_30

    const/4 p2, 0x0

    .line 1182
    :goto_19
    aget p3, p5, v6

    if-lt p2, p3, :cond_1e

    goto :goto_30

    .line 1184
    :cond_1e
    new-instance p3, Lcom/uhf/api/cls/Reader$TAGINFO;

    invoke-direct {p3, p0}, Lcom/uhf/api/cls/Reader$TAGINFO;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 1185
    invoke-virtual {p0, p3}, Lcom/uhf/api/cls/Reader;->GetNextTag(Lcom/uhf/api/cls/Reader$TAGINFO;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 1186
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v0, v1, :cond_2d

    .line 1188
    aput-object p3, p4, p2

    :cond_2d
    add-int/lit8 p2, p2, 0x1

    goto :goto_19

    .line 1192
    :cond_30
    :goto_30
    monitor-exit p0

    return-object p1

    :catchall_32
    move-exception p1

    .line 1176
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_32

    goto :goto_36

    :goto_35
    throw p1

    :goto_36
    goto :goto_35
.end method

.method public TagInventory_BaseType([IIS[B[I)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 13

    .line 1209
    monitor-enter p0

    .line 1210
    :try_start_1
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/uhf/api/cls/JniModuleAPI;->TagInventory_BaseType(I[IIS[B[I)I

    move-result p1

    .line 1211
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1212
    monitor-exit p0

    return-object p1

    :catchall_17
    move-exception p1

    .line 1209
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public TagInventory_Raw([IIS[I)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 11

    .line 1199
    monitor-enter p0

    .line 1200
    :try_start_1
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/uhf/api/cls/JniModuleAPI;->TagInventory_Raw(I[IIS[I)I

    move-result p1

    .line 1201
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1202
    monitor-exit p0

    return-object p1

    :catchall_16
    move-exception p1

    .line 1199
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public WriteTagData(ICI[BI[BS)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 19

    move-object v1, p0

    .line 1155
    monitor-enter p0

    .line 1156
    :try_start_2
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v0, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v3, 0x0

    aget v3, v0, v3

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v2 .. v10}, Lcom/uhf/api/cls/JniModuleAPI;->WriteTagData(IICI[BI[BS)I

    move-result v0

    .line 1157
    invoke-static {v0}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 1158
    monitor-exit p0

    return-object v0

    :catchall_1d
    move-exception v0

    .line 1155
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public WriteTagEpcEx(I[BI[BS)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 13

    .line 1165
    monitor-enter p0

    .line 1166
    :try_start_1
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/uhf/api/cls/JniModuleAPI;->WriteTagEpcEx(II[BI[BS)I

    move-result p1

    .line 1167
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1168
    monitor-exit p0

    return-object p1

    :catchall_17
    move-exception p1

    .line 1165
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public addGpiTriggerBoundaryListener(Lcom/uhf/api/cls/GpiTriggerBoundaryListener;)V
    .registers 3

    .line 2373
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->gpitriboundListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addGpiTriggerListener(Lcom/uhf/api/cls/GpiTriggerListener;)V
    .registers 3

    .line 2363
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->gpitriListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addReadExceptionListener(Lcom/uhf/api/cls/ReadExceptionListener;)V
    .registers 3

    .line 2354
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->readExceptionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addReadListener(Lcom/uhf/api/cls/ReadListener;)V
    .registers 3

    .line 2344
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->readListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeGpiTriggerBoundaryListener(Lcom/uhf/api/cls/GpiTriggerBoundaryListener;)V
    .registers 3

    .line 2378
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->gpitriboundListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeGpiTriggerListener(Lcom/uhf/api/cls/GpiTriggerListener;)V
    .registers 3

    .line 2368
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->gpitriListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeReadExceptionListener(Lcom/uhf/api/cls/ReadExceptionListener;)V
    .registers 3

    .line 2358
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->readExceptionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeReadListener(Lcom/uhf/api/cls/ReadListener;)V
    .registers 3

    .line 2349
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->readListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
