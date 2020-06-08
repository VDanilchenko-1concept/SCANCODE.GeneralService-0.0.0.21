.class public final enum Lcom/pow/api/cls/RfidPower$PDATYPE;
.super Ljava/lang/Enum;
.source "RfidPower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pow/api/cls/RfidPower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PDATYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pow/api/cls/RfidPower$PDATYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALPS_KT45:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field public static final enum ALPS_KT45Q:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field public static final enum CHAINWAY:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field public static final enum COMMANDLIST:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field public static final enum CZ880:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field public static final enum EKEMP:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field private static final synthetic ENUM$VALUES:[Lcom/pow/api/cls/RfidPower$PDATYPE;

.field public static final enum HANDEHUOER_12:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field public static final enum HANDEHUOER_13:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field public static final enum HD508:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field public static final enum IDATA:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field public static final enum IDATA_95w4g:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field public static final enum JIEBAO:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field public static final enum K06SS_A:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field public static final enum KK:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field public static final enum MT6737:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field public static final enum NONE:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field public static final enum PAX:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field public static final enum SCAN_ALPS_ANDROID_CUIUS2:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field public static final enum SCAN_ALPS_ANDROID_CUIUS2_NEBOARD:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field public static final enum SCAN_ALPS_ANDROID_CUIUS2_TEST:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field public static final enum SENTER907:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field public static final enum SENTER907_PDA_T8939:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field public static final enum SENTER_ST308W:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field public static final enum SENTER_ST907:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field public static final enum ST907Ver2:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field public static final enum ST908:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field public static final enum ST917:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field public static final enum ST917_V2:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field public static final enum Urovo_31:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field public static final enum Urovo_31Q:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field public static final enum XBANG:Lcom/pow/api/cls/RfidPower$PDATYPE;

.field public static final enum XIANSHI:Lcom/pow/api/cls/RfidPower$PDATYPE;


# instance fields
.field p_v:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 73
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "CHAINWAY"

    invoke-direct {v0, v3, v2, v1}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->CHAINWAY:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 74
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/4 v3, 0x2

    const-string v4, "COMMANDLIST"

    invoke-direct {v0, v4, v1, v3}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->COMMANDLIST:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 75
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/4 v4, 0x3

    const-string v5, "SCAN_ALPS_ANDROID_CUIUS2"

    invoke-direct {v0, v5, v3, v4}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->SCAN_ALPS_ANDROID_CUIUS2:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 76
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/4 v5, 0x4

    const-string v6, "ALPS_KT45"

    invoke-direct {v0, v6, v4, v5}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->ALPS_KT45:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 77
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/4 v6, 0x5

    const-string v7, "HD508"

    invoke-direct {v0, v7, v5, v6}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->HD508:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 78
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/4 v7, 0x6

    const-string v8, "IDATA"

    invoke-direct {v0, v8, v6, v7}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->IDATA:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 79
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/4 v8, 0x7

    const-string v9, "JIEBAO"

    invoke-direct {v0, v9, v7, v8}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->JIEBAO:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 80
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v9, 0x8

    const-string v10, "EKEMP"

    invoke-direct {v0, v10, v8, v9}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->EKEMP:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 81
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v10, 0x9

    const-string v11, "SCAN_ALPS_ANDROID_CUIUS2_TEST"

    invoke-direct {v0, v11, v9, v10}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->SCAN_ALPS_ANDROID_CUIUS2_TEST:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 82
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v11, 0xa

    const-string v12, "SENTER_ST308W"

    invoke-direct {v0, v12, v10, v11}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->SENTER_ST308W:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 83
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v12, 0xb

    const-string v13, "SENTER_ST907"

    invoke-direct {v0, v13, v11, v12}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->SENTER_ST907:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 84
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v13, 0xc

    const-string v14, "SCAN_ALPS_ANDROID_CUIUS2_NEBOARD"

    invoke-direct {v0, v14, v12, v13}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->SCAN_ALPS_ANDROID_CUIUS2_NEBOARD:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 85
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v14, 0xd

    const-string v15, "HANDEHUOER_12"

    invoke-direct {v0, v15, v13, v14}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->HANDEHUOER_12:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 86
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v15, 0xe

    const-string v13, "KK"

    invoke-direct {v0, v13, v14, v15}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->KK:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 87
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v13, 0xf

    const-string v14, "CZ880"

    invoke-direct {v0, v14, v15, v13}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->CZ880:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 88
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v14, 0x10

    const-string v15, "XIANSHI"

    invoke-direct {v0, v15, v13, v14}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->XIANSHI:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 89
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v15, 0x11

    const-string v13, "XBANG"

    invoke-direct {v0, v13, v14, v15}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->XBANG:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 90
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v13, 0x12

    const-string v14, "SENTER907"

    invoke-direct {v0, v14, v15, v13}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->SENTER907:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 91
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v14, 0x13

    const-string v15, "ALPS_KT45Q"

    invoke-direct {v0, v15, v13, v14}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->ALPS_KT45Q:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 92
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v15, 0x14

    const-string v13, "Urovo_31"

    invoke-direct {v0, v13, v14, v15}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->Urovo_31:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 93
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const-string v13, "Urovo_31Q"

    const/16 v14, 0x15

    invoke-direct {v0, v13, v15, v14}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->Urovo_31Q:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 94
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const-string v13, "K06SS_A"

    const/16 v15, 0x16

    invoke-direct {v0, v13, v14, v15}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->K06SS_A:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 95
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const-string v13, "HANDEHUOER_13"

    const/16 v14, 0x16

    const/16 v15, 0x17

    invoke-direct {v0, v13, v14, v15}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->HANDEHUOER_13:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 96
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const-string v13, "SENTER907_PDA_T8939"

    const/16 v14, 0x17

    const/16 v15, 0x18

    invoke-direct {v0, v13, v14, v15}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->SENTER907_PDA_T8939:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 97
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const-string v13, "ST908"

    const/16 v14, 0x18

    const/16 v15, 0x19

    invoke-direct {v0, v13, v14, v15}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->ST908:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 98
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const-string v13, "ST907Ver2"

    const/16 v14, 0x19

    const/16 v15, 0x1a

    invoke-direct {v0, v13, v14, v15}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->ST907Ver2:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 99
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const-string v13, "IDATA_95w4g"

    const/16 v14, 0x1a

    const/16 v15, 0x1b

    invoke-direct {v0, v13, v14, v15}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->IDATA_95w4g:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 100
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const-string v13, "MT6737"

    const/16 v14, 0x1b

    const/16 v15, 0x1c

    invoke-direct {v0, v13, v14, v15}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->MT6737:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 101
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const-string v13, "PAX"

    const/16 v14, 0x1c

    const/16 v15, 0x1d

    invoke-direct {v0, v13, v14, v15}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->PAX:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 102
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v13, 0x1e

    const-string v14, "ST917"

    invoke-direct {v0, v14, v15, v13}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->ST917:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 103
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const-string v14, "ST917_V2"

    invoke-direct {v0, v14, v13, v13}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->ST917_V2:Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 104
    new-instance v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    const-string v14, "NONE"

    const/16 v15, 0x1f

    invoke-direct {v0, v14, v15, v2}, Lcom/pow/api/cls/RfidPower$PDATYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->NONE:Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v14, 0x20

    new-array v14, v14, [Lcom/pow/api/cls/RfidPower$PDATYPE;

    .line 71
    sget-object v15, Lcom/pow/api/cls/RfidPower$PDATYPE;->CHAINWAY:Lcom/pow/api/cls/RfidPower$PDATYPE;

    aput-object v15, v14, v2

    sget-object v2, Lcom/pow/api/cls/RfidPower$PDATYPE;->COMMANDLIST:Lcom/pow/api/cls/RfidPower$PDATYPE;

    aput-object v2, v14, v1

    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->SCAN_ALPS_ANDROID_CUIUS2:Lcom/pow/api/cls/RfidPower$PDATYPE;

    aput-object v1, v14, v3

    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->ALPS_KT45:Lcom/pow/api/cls/RfidPower$PDATYPE;

    aput-object v1, v14, v4

    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->HD508:Lcom/pow/api/cls/RfidPower$PDATYPE;

    aput-object v1, v14, v5

    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->IDATA:Lcom/pow/api/cls/RfidPower$PDATYPE;

    aput-object v1, v14, v6

    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->JIEBAO:Lcom/pow/api/cls/RfidPower$PDATYPE;

    aput-object v1, v14, v7

    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->EKEMP:Lcom/pow/api/cls/RfidPower$PDATYPE;

    aput-object v1, v14, v8

    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->SCAN_ALPS_ANDROID_CUIUS2_TEST:Lcom/pow/api/cls/RfidPower$PDATYPE;

    aput-object v1, v14, v9

    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->SENTER_ST308W:Lcom/pow/api/cls/RfidPower$PDATYPE;

    aput-object v1, v14, v10

    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->SENTER_ST907:Lcom/pow/api/cls/RfidPower$PDATYPE;

    aput-object v1, v14, v11

    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->SCAN_ALPS_ANDROID_CUIUS2_NEBOARD:Lcom/pow/api/cls/RfidPower$PDATYPE;

    aput-object v1, v14, v12

    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->HANDEHUOER_12:Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v2, 0xc

    aput-object v1, v14, v2

    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->KK:Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->CZ880:Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->XIANSHI:Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->XBANG:Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->SENTER907:Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->ALPS_KT45Q:Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v2, 0x12

    aput-object v1, v14, v2

    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->Urovo_31:Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v2, 0x13

    aput-object v1, v14, v2

    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->Urovo_31Q:Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v2, 0x14

    aput-object v1, v14, v2

    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->K06SS_A:Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v2, 0x15

    aput-object v1, v14, v2

    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->HANDEHUOER_13:Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v2, 0x16

    aput-object v1, v14, v2

    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->SENTER907_PDA_T8939:Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v2, 0x17

    aput-object v1, v14, v2

    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->ST908:Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v2, 0x18

    aput-object v1, v14, v2

    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->ST907Ver2:Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v2, 0x19

    aput-object v1, v14, v2

    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->IDATA_95w4g:Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v2, 0x1a

    aput-object v1, v14, v2

    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->MT6737:Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v2, 0x1b

    aput-object v1, v14, v2

    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->PAX:Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v2, 0x1c

    aput-object v1, v14, v2

    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->ST917:Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/16 v2, 0x1d

    aput-object v1, v14, v2

    sget-object v1, Lcom/pow/api/cls/RfidPower$PDATYPE;->ST917_V2:Lcom/pow/api/cls/RfidPower$PDATYPE;

    aput-object v1, v14, v13

    const/16 v1, 0x1f

    aput-object v0, v14, v1

    sput-object v14, Lcom/pow/api/cls/RfidPower$PDATYPE;->ENUM$VALUES:[Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 109
    iput p3, p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->p_v:I

    return-void
.end method

.method public static valueOf(I)Lcom/pow/api/cls/RfidPower$PDATYPE;
    .registers 1

    packed-switch p0, :pswitch_data_66

    .line 181
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->NONE:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 179
    :pswitch_6
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->ST917_V2:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 177
    :pswitch_9
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->ST917:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 175
    :pswitch_c
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->PAX:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 173
    :pswitch_f
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->MT6737:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 171
    :pswitch_12
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->IDATA_95w4g:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 169
    :pswitch_15
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->ST907Ver2:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 167
    :pswitch_18
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->ST908:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 165
    :pswitch_1b
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->SENTER907_PDA_T8939:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 163
    :pswitch_1e
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->HANDEHUOER_13:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 161
    :pswitch_21
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->K06SS_A:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 159
    :pswitch_24
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->Urovo_31Q:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 157
    :pswitch_27
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->Urovo_31:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 155
    :pswitch_2a
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->ALPS_KT45Q:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 153
    :pswitch_2d
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->SENTER907:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 151
    :pswitch_30
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->XBANG:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 149
    :pswitch_33
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->XIANSHI:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 147
    :pswitch_36
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->CZ880:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 145
    :pswitch_39
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->KK:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 143
    :pswitch_3c
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->HANDEHUOER_12:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 141
    :pswitch_3f
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->SCAN_ALPS_ANDROID_CUIUS2_NEBOARD:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 139
    :pswitch_42
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->SENTER_ST907:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 137
    :pswitch_45
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->SENTER_ST308W:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 135
    :pswitch_48
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->SCAN_ALPS_ANDROID_CUIUS2_TEST:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 133
    :pswitch_4b
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->EKEMP:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 131
    :pswitch_4e
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->JIEBAO:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 129
    :pswitch_51
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->IDATA:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 127
    :pswitch_54
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->HD508:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 125
    :pswitch_57
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->ALPS_KT45:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 123
    :pswitch_5a
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->SCAN_ALPS_ANDROID_CUIUS2:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 121
    :pswitch_5d
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->COMMANDLIST:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 119
    :pswitch_60
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->CHAINWAY:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    .line 117
    :pswitch_63
    sget-object p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->NONE:Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pow/api/cls/RfidPower$PDATYPE;
    .registers 2

    .line 1
    const-class v0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pow/api/cls/RfidPower$PDATYPE;

    return-object p0
.end method

.method public static values()[Lcom/pow/api/cls/RfidPower$PDATYPE;
    .registers 4

    .line 1
    sget-object v0, Lcom/pow/api/cls/RfidPower$PDATYPE;->ENUM$VALUES:[Lcom/pow/api/cls/RfidPower$PDATYPE;

    array-length v1, v0

    new-array v2, v1, [Lcom/pow/api/cls/RfidPower$PDATYPE;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public value()I
    .registers 2

    .line 112
    iget v0, p0, Lcom/pow/api/cls/RfidPower$PDATYPE;->p_v:I

    return v0
.end method
