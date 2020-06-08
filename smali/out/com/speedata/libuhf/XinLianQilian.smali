.class public Lcom/speedata/libuhf/XinLianQilian;
.super Ljava/lang/Object;
.source "XinLianQilian.java"

# interfaces
.implements Lcom/speedata/libuhf/IUHFService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/speedata/libuhf/XinLianQilian$ReaderParams;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static Mreader:Lcom/uhf/api/cls/Reader;

.field private static antportc:I


# instance fields
.field private Rparams:Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

.field private ThreadMODE:I

.field private deviceControl:Landroid/serialport/DeviceControlSpd;

.field g2tf:Lcom/uhf/api/cls/Reader$TagFilter_ST;

.field private handler:Landroid/os/Handler;

.field private handler_inventer:Landroid/os/Handler;

.field private volatile inSearch:Z

.field private inv_thread:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mRead:Lcom/speedata/libuhf/utils/ReadBean;

.field private myInvThread:Ljava/lang/Thread;

.field private newUHFDeviceControl:Landroid/serialport/DeviceControlSpd;

.field public nostop:Z

.field private onInventoryListener:Lcom/speedata/libuhf/interfaces/OnSpdInventoryListener;

.field private onSpdReadListener:Lcom/speedata/libuhf/interfaces/OnSpdReadListener;

.field private onSpdWriteListener:Lcom/speedata/libuhf/interfaces/OnSpdWriteListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Lcom/uhf/api/cls/Reader;

    invoke-direct {v0}, Lcom/uhf/api/cls/Reader;-><init>()V

    sput-object v0, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/speedata/libuhf/XinLianQilian;->handler_inventer:Landroid/os/Handler;

    .line 54
    new-instance v1, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

    invoke-direct {v1, p0}, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;-><init>(Lcom/speedata/libuhf/XinLianQilian;)V

    iput-object v1, p0, Lcom/speedata/libuhf/XinLianQilian;->Rparams:Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

    const/4 v1, 0x0

    .line 55
    iput v1, p0, Lcom/speedata/libuhf/XinLianQilian;->ThreadMODE:I

    .line 56
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/speedata/libuhf/XinLianQilian;->handler:Landroid/os/Handler;

    .line 57
    iput-boolean v1, p0, Lcom/speedata/libuhf/XinLianQilian;->nostop:Z

    .line 58
    iput-object v0, p0, Lcom/speedata/libuhf/XinLianQilian;->g2tf:Lcom/uhf/api/cls/Reader$TagFilter_ST;

    .line 63
    iput-object v0, p0, Lcom/speedata/libuhf/XinLianQilian;->myInvThread:Ljava/lang/Thread;

    .line 324
    iput-object v0, p0, Lcom/speedata/libuhf/XinLianQilian;->onInventoryListener:Lcom/speedata/libuhf/interfaces/OnSpdInventoryListener;

    .line 325
    iput-object v0, p0, Lcom/speedata/libuhf/XinLianQilian;->onSpdReadListener:Lcom/speedata/libuhf/interfaces/OnSpdReadListener;

    .line 326
    iput-object v0, p0, Lcom/speedata/libuhf/XinLianQilian;->onSpdWriteListener:Lcom/speedata/libuhf/interfaces/OnSpdWriteListener;

    .line 1696
    iput-boolean v1, p0, Lcom/speedata/libuhf/XinLianQilian;->inSearch:Z

    .line 1697
    new-instance v0, Lcom/speedata/libuhf/XinLianQilian$1;

    invoke-direct {v0, p0}, Lcom/speedata/libuhf/XinLianQilian$1;-><init>(Lcom/speedata/libuhf/XinLianQilian;)V

    iput-object v0, p0, Lcom/speedata/libuhf/XinLianQilian;->inv_thread:Ljava/lang/Runnable;

    .line 66
    iput-object p1, p0, Lcom/speedata/libuhf/XinLianQilian;->mContext:Landroid/content/Context;

    return-void
.end method

.method private NoXmlopenDev()I
    .registers 12

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "xl_1"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "4.4.2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "/dev/ttyMT2"

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_41

    .line 122
    :try_start_1c
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    sget-object v5, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    new-array v6, v4, [I

    const/16 v7, 0x40

    aput v7, v6, v3

    invoke-direct {v0, v5, v6}, Landroid/serialport/DeviceControlSpd;-><init>(Landroid/serialport/DeviceControlSpd$PowerType;[I)V

    iput-object v0, p0, Lcom/speedata/libuhf/XinLianQilian;->deviceControl:Landroid/serialport/DeviceControlSpd;

    .line 123
    invoke-virtual {v0}, Landroid/serialport/DeviceControlSpd;->PowerOnDevice()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2e} :catch_2f

    goto :goto_33

    :catch_2f
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 127
    :goto_33
    sget-object v0, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v0, v1, v4}, Lcom/uhf/api/cls/Reader;->InitReader_Notype(Ljava/lang/String;I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 128
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v0, v1, :cond_40

    .line 129
    sput v4, Lcom/speedata/libuhf/XinLianQilian;->antportc:I

    return v3

    :cond_40
    return v2

    :cond_41
    const-string v0, "ro.product.model"

    .line 135
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "SD60RT"

    .line 136
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "SD55L"

    const-string v7, "/dev/ttyMT0"

    const/4 v8, 0x2

    if-nez v5, :cond_265

    const-string v5, "MST-II-YN"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_265

    const-string v5, "SD60"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_265

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_265

    const-string v5, "SC60"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_265

    const-string v5, "DXD60RT"

    .line 137
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_265

    const-string v5, "C6000"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_84

    goto/16 :goto_265

    :cond_84
    const-string v5, "SD55"

    .line 161
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_213

    const-string v5, "R66"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_96

    goto/16 :goto_213

    :cond_96
    const-string v5, "55"

    .line 191
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "80"

    const/4 v9, 0x3

    if-nez v5, :cond_19c

    const-string v5, "W2H"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ab

    goto/16 :goto_19c

    :cond_ab
    const-string v5, "KT80"

    .line 226
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_177

    const-string v5, "W6"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_177

    const-string v5, "N80"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_177

    const-string v5, "Biowolf LE"

    .line 227
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_177

    const-string v5, "FC-PK80"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_177

    const-string v5, "FC-K80"

    .line 228
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_177

    const-string v5, "T80"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_177

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_eb

    goto/16 :goto_177

    :cond_eb
    const-string v5, "SD100"

    .line 243
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11d

    .line 245
    :try_start_f3
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    const-string v1, "/sys/class/switch/app_switch/app_state"

    invoke-direct {v0, v1}, Landroid/serialport/DeviceControlSpd;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/speedata/libuhf/XinLianQilian;->deviceControl:Landroid/serialport/DeviceControlSpd;

    const-string v1, "uhf_open"

    .line 246
    invoke-virtual {v0, v1}, Landroid/serialport/DeviceControlSpd;->gtPower(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/speedata/libuhf/XinLianQilian;->deviceControl:Landroid/serialport/DeviceControlSpd;

    const-string v1, "open"

    invoke-virtual {v0, v1}, Landroid/serialport/DeviceControlSpd;->gtPower(Ljava/lang/String;)V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_108} :catch_109

    goto :goto_10d

    :catch_109
    move-exception v0

    .line 249
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 251
    :goto_10d
    sget-object v0, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    const-string v1, "/dev/ttyHSL2"

    invoke-virtual {v0, v1, v4}, Lcom/uhf/api/cls/Reader;->InitReader_Notype(Ljava/lang/String;I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 252
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v0, v1, :cond_11c

    .line 253
    sput v4, Lcom/speedata/libuhf/XinLianQilian;->antportc:I

    return v3

    :cond_11c
    return v2

    :cond_11d
    const-string v5, "SD100T"

    .line 259
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_152

    .line 261
    :try_start_125
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    sget-object v1, Landroid/serialport/DeviceControlSpd$PowerType;->NEW_MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    new-array v5, v9, [I

    const/16 v6, 0x34

    aput v6, v5, v3

    const/16 v6, 0x59

    aput v6, v5, v4

    const/16 v6, 0x47

    aput v6, v5, v8

    invoke-direct {v0, v1, v5}, Landroid/serialport/DeviceControlSpd;-><init>(Landroid/serialport/DeviceControlSpd$PowerType;[I)V

    iput-object v0, p0, Lcom/speedata/libuhf/XinLianQilian;->deviceControl:Landroid/serialport/DeviceControlSpd;

    .line 262
    invoke-virtual {v0}, Landroid/serialport/DeviceControlSpd;->PowerOnDevice()V
    :try_end_13f
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_13f} :catch_140

    goto :goto_144

    :catch_140
    move-exception v0

    .line 264
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 266
    :goto_144
    sget-object v0, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v0, v7, v4}, Lcom/uhf/api/cls/Reader;->InitReader_Notype(Ljava/lang/String;I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 267
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v0, v1, :cond_151

    .line 268
    sput v4, Lcom/speedata/libuhf/XinLianQilian;->antportc:I

    return v3

    :cond_151
    return v2

    .line 276
    :cond_152
    :try_start_152
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    sget-object v5, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    new-array v6, v4, [I

    const/16 v7, 0x5e

    aput v7, v6, v3

    invoke-direct {v0, v5, v6}, Landroid/serialport/DeviceControlSpd;-><init>(Landroid/serialport/DeviceControlSpd$PowerType;[I)V

    iput-object v0, p0, Lcom/speedata/libuhf/XinLianQilian;->deviceControl:Landroid/serialport/DeviceControlSpd;

    .line 277
    invoke-virtual {v0}, Landroid/serialport/DeviceControlSpd;->PowerOnDevice()V
    :try_end_164
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_164} :catch_165

    goto :goto_169

    :catch_165
    move-exception v0

    .line 279
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 281
    :goto_169
    sget-object v0, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v0, v1, v4}, Lcom/uhf/api/cls/Reader;->InitReader_Notype(Ljava/lang/String;I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 282
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v0, v1, :cond_176

    .line 283
    sput v4, Lcom/speedata/libuhf/XinLianQilian;->antportc:I

    return v3

    :cond_176
    return v2

    .line 230
    :cond_177
    :goto_177
    :try_start_177
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    sget-object v5, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    new-array v6, v4, [I

    const/16 v7, 0x77

    aput v7, v6, v3

    invoke-direct {v0, v5, v6}, Landroid/serialport/DeviceControlSpd;-><init>(Landroid/serialport/DeviceControlSpd$PowerType;[I)V

    iput-object v0, p0, Lcom/speedata/libuhf/XinLianQilian;->deviceControl:Landroid/serialport/DeviceControlSpd;

    .line 231
    invoke-virtual {v0}, Landroid/serialport/DeviceControlSpd;->PowerOnDevice()V
    :try_end_189
    .catch Ljava/io/IOException; {:try_start_177 .. :try_end_189} :catch_18a

    goto :goto_18e

    :catch_18a
    move-exception v0

    .line 233
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 235
    :goto_18e
    sget-object v0, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v0, v1, v4}, Lcom/uhf/api/cls/Reader;->InitReader_Notype(Ljava/lang/String;I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 236
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v0, v1, :cond_19b

    .line 237
    sput v4, Lcom/speedata/libuhf/XinLianQilian;->antportc:I

    return v3

    :cond_19b
    return v2

    .line 192
    :cond_19c
    :goto_19c
    invoke-static {}, Lcom/speedata/libuhf/XinLianQilian;->readEm55()Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x7

    const/16 v7, 0x58

    if-eqz v5, :cond_1c4

    .line 195
    :try_start_1a9
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    sget-object v5, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN_AND_EXPAND:Landroid/serialport/DeviceControlSpd$PowerType;

    new-array v9, v9, [I

    aput v7, v9, v3

    aput v6, v9, v4

    const/4 v6, 0x5

    aput v6, v9, v8

    invoke-direct {v0, v5, v9}, Landroid/serialport/DeviceControlSpd;-><init>(Landroid/serialport/DeviceControlSpd$PowerType;[I)V

    iput-object v0, p0, Lcom/speedata/libuhf/XinLianQilian;->deviceControl:Landroid/serialport/DeviceControlSpd;

    .line 197
    invoke-virtual {v0}, Landroid/serialport/DeviceControlSpd;->PowerOnDevice()V
    :try_end_1be
    .catch Ljava/io/IOException; {:try_start_1a9 .. :try_end_1be} :catch_1bf

    goto :goto_205

    :catch_1bf
    move-exception v0

    .line 199
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_205

    :cond_1c4
    const-string v5, "48"

    .line 202
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1eb

    const-string v5, "81"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d5

    goto :goto_1eb

    .line 212
    :cond_1d5
    :try_start_1d5
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    sget-object v5, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    new-array v6, v4, [I

    aput v7, v6, v3

    invoke-direct {v0, v5, v6}, Landroid/serialport/DeviceControlSpd;-><init>(Landroid/serialport/DeviceControlSpd$PowerType;[I)V

    iput-object v0, p0, Lcom/speedata/libuhf/XinLianQilian;->deviceControl:Landroid/serialport/DeviceControlSpd;

    .line 213
    invoke-virtual {v0}, Landroid/serialport/DeviceControlSpd;->PowerOnDevice()V
    :try_end_1e5
    .catch Ljava/io/IOException; {:try_start_1d5 .. :try_end_1e5} :catch_1e6

    goto :goto_205

    :catch_1e6
    move-exception v0

    .line 215
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_205

    .line 204
    :cond_1eb
    :goto_1eb
    :try_start_1eb
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    sget-object v5, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN_AND_EXPAND:Landroid/serialport/DeviceControlSpd$PowerType;

    new-array v9, v9, [I

    aput v7, v9, v3

    aput v6, v9, v4

    const/4 v6, 0x6

    aput v6, v9, v8

    invoke-direct {v0, v5, v9}, Landroid/serialport/DeviceControlSpd;-><init>(Landroid/serialport/DeviceControlSpd$PowerType;[I)V

    iput-object v0, p0, Lcom/speedata/libuhf/XinLianQilian;->deviceControl:Landroid/serialport/DeviceControlSpd;

    .line 206
    invoke-virtual {v0}, Landroid/serialport/DeviceControlSpd;->PowerOnDevice()V
    :try_end_200
    .catch Ljava/io/IOException; {:try_start_1eb .. :try_end_200} :catch_201

    goto :goto_205

    :catch_201
    move-exception v0

    .line 208
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 219
    :goto_205
    sget-object v0, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v0, v1, v4}, Lcom/uhf/api/cls/Reader;->InitReader_Notype(Ljava/lang/String;I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 220
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v0, v1, :cond_212

    .line 221
    sput v4, Lcom/speedata/libuhf/XinLianQilian;->antportc:I

    return v3

    :cond_212
    return v2

    .line 162
    :cond_213
    :goto_213
    invoke-static {}, Lcom/speedata/libuhf/utils/ConfigUtils;->getApiVersion()I

    move-result v0

    const/16 v5, 0x17

    if-le v0, v5, :cond_240

    .line 164
    :try_start_21b
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    sget-object v1, Landroid/serialport/DeviceControlSpd$PowerType;->NEW_MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    new-array v5, v4, [I

    const/16 v6, 0xc

    aput v6, v5, v3

    invoke-direct {v0, v1, v5}, Landroid/serialport/DeviceControlSpd;-><init>(Landroid/serialport/DeviceControlSpd$PowerType;[I)V

    iput-object v0, p0, Lcom/speedata/libuhf/XinLianQilian;->deviceControl:Landroid/serialport/DeviceControlSpd;

    .line 165
    invoke-virtual {v0}, Landroid/serialport/DeviceControlSpd;->PowerOnDevice()V
    :try_end_22d
    .catch Ljava/io/IOException; {:try_start_21b .. :try_end_22d} :catch_22e

    goto :goto_232

    :catch_22e
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 169
    :goto_232
    sget-object v0, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v0, v7, v4}, Lcom/uhf/api/cls/Reader;->InitReader_Notype(Ljava/lang/String;I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 170
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v0, v1, :cond_23f

    .line 171
    sput v4, Lcom/speedata/libuhf/XinLianQilian;->antportc:I

    return v3

    :cond_23f
    return v2

    .line 178
    :cond_240
    :try_start_240
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    sget-object v5, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    new-array v6, v4, [I

    const/16 v7, 0x80

    aput v7, v6, v3

    invoke-direct {v0, v5, v6}, Landroid/serialport/DeviceControlSpd;-><init>(Landroid/serialport/DeviceControlSpd$PowerType;[I)V

    iput-object v0, p0, Lcom/speedata/libuhf/XinLianQilian;->deviceControl:Landroid/serialport/DeviceControlSpd;

    .line 179
    invoke-virtual {v0}, Landroid/serialport/DeviceControlSpd;->PowerOnDevice()V
    :try_end_252
    .catch Ljava/io/IOException; {:try_start_240 .. :try_end_252} :catch_253

    goto :goto_257

    :catch_253
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 183
    :goto_257
    sget-object v0, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v0, v1, v4}, Lcom/uhf/api/cls/Reader;->InitReader_Notype(Ljava/lang/String;I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 184
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v0, v1, :cond_264

    .line 185
    sput v4, Lcom/speedata/libuhf/XinLianQilian;->antportc:I

    return v3

    :cond_264
    return v2

    .line 140
    :cond_265
    :goto_265
    :try_start_265
    new-instance v5, Landroid/serialport/DeviceControlSpd;

    sget-object v9, Landroid/serialport/DeviceControlSpd$PowerType;->EXPAND:Landroid/serialport/DeviceControlSpd$PowerType;

    new-array v8, v8, [I

    const/16 v10, 0x9

    aput v10, v8, v3

    const/16 v10, 0xe

    aput v10, v8, v4

    invoke-direct {v5, v9, v8}, Landroid/serialport/DeviceControlSpd;-><init>(Landroid/serialport/DeviceControlSpd$PowerType;[I)V

    iput-object v5, p0, Lcom/speedata/libuhf/XinLianQilian;->deviceControl:Landroid/serialport/DeviceControlSpd;

    .line 141
    invoke-virtual {v5}, Landroid/serialport/DeviceControlSpd;->PowerOnDevice()V
    :try_end_27b
    .catch Ljava/io/IOException; {:try_start_265 .. :try_end_27b} :catch_27c

    goto :goto_280

    :catch_27c
    move-exception v5

    .line 143
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 145
    :goto_280
    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_294

    .line 146
    sget-object v0, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v0, v1, v4}, Lcom/uhf/api/cls/Reader;->InitReader_Notype(Ljava/lang/String;I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 147
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v0, v1, :cond_293

    .line 148
    sput v4, Lcom/speedata/libuhf/XinLianQilian;->antportc:I

    return v3

    :cond_293
    return v2

    .line 154
    :cond_294
    sget-object v0, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v0, v7, v4}, Lcom/uhf/api/cls/Reader;->InitReader_Notype(Ljava/lang/String;I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 155
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v0, v1, :cond_2a1

    .line 156
    sput v4, Lcom/speedata/libuhf/XinLianQilian;->antportc:I

    return v3

    :cond_2a1
    return v2
.end method

.method static synthetic access$000(Lcom/speedata/libuhf/XinLianQilian;)Z
    .registers 1

    .line 49
    iget-boolean p0, p0, Lcom/speedata/libuhf/XinLianQilian;->inSearch:Z

    return p0
.end method

.method static synthetic access$100(Lcom/speedata/libuhf/XinLianQilian;)Lcom/speedata/libuhf/XinLianQilian$ReaderParams;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/speedata/libuhf/XinLianQilian;->Rparams:Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

    return-object p0
.end method

.method static synthetic access$200()Lcom/uhf/api/cls/Reader;
    .registers 1

    .line 49
    sget-object v0, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/speedata/libuhf/XinLianQilian;)Landroid/os/Handler;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/speedata/libuhf/XinLianQilian;->handler_inventer:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/speedata/libuhf/XinLianQilian;Lcom/speedata/libuhf/bean/SpdInventoryData;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/speedata/libuhf/XinLianQilian;->inventoryCallBack(Lcom/speedata/libuhf/bean/SpdInventoryData;)V

    return-void
.end method

.method private cancelSelect()V
    .registers 4

    .line 1812
    new-instance v0, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    sget-object v1, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/uhf/api/cls/Reader$TagFilter_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 1814
    sget-object v0, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TAG_FILTER:Lcom/uhf/api/cls/Reader$Mtr_Param;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    return-void
.end method

.method private getOnInventoryListener()Lcom/speedata/libuhf/interfaces/OnSpdInventoryListener;
    .registers 2

    .line 339
    iget-object v0, p0, Lcom/speedata/libuhf/XinLianQilian;->onInventoryListener:Lcom/speedata/libuhf/interfaces/OnSpdInventoryListener;

    return-object v0
.end method

.method private getOnReadListener()Lcom/speedata/libuhf/interfaces/OnSpdReadListener;
    .registers 2

    .line 391
    iget-object v0, p0, Lcom/speedata/libuhf/XinLianQilian;->onSpdReadListener:Lcom/speedata/libuhf/interfaces/OnSpdReadListener;

    return-object v0
.end method

.method private getOnWriteListener()Lcom/speedata/libuhf/interfaces/OnSpdWriteListener;
    .registers 2

    .line 535
    iget-object v0, p0, Lcom/speedata/libuhf/XinLianQilian;->onSpdWriteListener:Lcom/speedata/libuhf/interfaces/OnSpdWriteListener;

    return-object v0
.end method

.method private inventoryCallBack(Lcom/speedata/libuhf/bean/SpdInventoryData;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 343
    invoke-direct {p0}, Lcom/speedata/libuhf/XinLianQilian;->getOnInventoryListener()Lcom/speedata/libuhf/interfaces/OnSpdInventoryListener;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 344
    invoke-direct {p0}, Lcom/speedata/libuhf/XinLianQilian;->getOnInventoryListener()Lcom/speedata/libuhf/interfaces/OnSpdInventoryListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/speedata/libuhf/interfaces/OnSpdInventoryListener;->getInventoryData(Lcom/speedata/libuhf/bean/SpdInventoryData;)V

    :cond_f
    return-void
.end method

.method private readCallBack(Lcom/speedata/libuhf/bean/SpdReadData;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 395
    invoke-direct {p0}, Lcom/speedata/libuhf/XinLianQilian;->getOnReadListener()Lcom/speedata/libuhf/interfaces/OnSpdReadListener;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 396
    invoke-direct {p0}, Lcom/speedata/libuhf/XinLianQilian;->getOnReadListener()Lcom/speedata/libuhf/interfaces/OnSpdReadListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/speedata/libuhf/interfaces/OnSpdReadListener;->getReadData(Lcom/speedata/libuhf/bean/SpdReadData;)V

    :cond_f
    return-void
.end method

.method private static readEm55()Ljava/lang/String;
    .registers 3

    .line 103
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/misc/aw9523/gpio"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 105
    :try_start_8
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 106
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 107
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_19} :catch_1f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_19} :catch_1a

    goto :goto_23

    :catch_1a
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23

    :catch_1f
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 114
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

.method private read_card(IIILjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1252
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/speedata/libuhf/XinLianQilian;->read_area(IIILjava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 1256
    :cond_8
    array-length p2, p1

    invoke-static {p1, p2}, Lcom/speedata/libuhf/utils/ByteCharStrUtils;->b2hexs([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private writeCallBack(Lcom/speedata/libuhf/bean/SpdWriteData;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 539
    invoke-direct {p0}, Lcom/speedata/libuhf/XinLianQilian;->getOnWriteListener()Lcom/speedata/libuhf/interfaces/OnSpdWriteListener;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 540
    invoke-direct {p0}, Lcom/speedata/libuhf/XinLianQilian;->getOnWriteListener()Lcom/speedata/libuhf/interfaces/OnSpdWriteListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/speedata/libuhf/interfaces/OnSpdWriteListener;->getWriteData(Lcom/speedata/libuhf/bean/SpdWriteData;)V

    :cond_f
    return-void
.end method


# virtual methods
.method public GetLastDetailError()Ljava/lang/String;
    .registers 4

    .line 1655
    new-instance v0, Lcom/uhf/api/cls/ErrInfo;

    invoke-direct {v0}, Lcom/uhf/api/cls/ErrInfo;-><init>()V

    .line 1656
    sget-object v1, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v1, v0}, Lcom/uhf/api/cls/Reader;->GetLastDetailError(Lcom/uhf/api/cls/ErrInfo;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 1657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lcom/uhf/api/cls/ErrInfo;->derrcode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/uhf/api/cls/ErrInfo;->errstr:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cancelMask()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public closeDev()V
    .registers 4

    const-string v0, "ContentValues"

    const-string v1, "closeDev: start"

    .line 297
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    sget-object v1, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    if-eqz v1, :cond_e

    .line 299
    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader;->CloseReader()V

    .line 301
    :cond_e
    invoke-static {}, Lcom/speedata/libuhf/utils/ConfigUtils;->isConfigFileExists()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {}, Lcom/speedata/libuhf/utils/CommonUtils;->subDeviceType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "55"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 303
    :try_start_20
    iget-object v1, p0, Lcom/speedata/libuhf/XinLianQilian;->newUHFDeviceControl:Landroid/serialport/DeviceControlSpd;

    invoke-virtual {v1}, Landroid/serialport/DeviceControlSpd;->PowerOffDevice()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_26

    goto :goto_52

    :catch_26
    move-exception v1

    .line 305
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_52

    :cond_2b
    :try_start_2b
    const-string v1, "ro.product.model"

    .line 309
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SD100"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 310
    iget-object v1, p0, Lcom/speedata/libuhf/XinLianQilian;->deviceControl:Landroid/serialport/DeviceControlSpd;

    const-string v2, "uhf_close"

    invoke-virtual {v1, v2}, Landroid/serialport/DeviceControlSpd;->gtPower(Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/speedata/libuhf/XinLianQilian;->deviceControl:Landroid/serialport/DeviceControlSpd;

    const-string v2, "close"

    invoke-virtual {v1, v2}, Landroid/serialport/DeviceControlSpd;->gtPower(Ljava/lang/String;)V

    goto :goto_52

    .line 313
    :cond_48
    iget-object v1, p0, Lcom/speedata/libuhf/XinLianQilian;->deviceControl:Landroid/serialport/DeviceControlSpd;

    invoke-virtual {v1}, Landroid/serialport/DeviceControlSpd;->PowerOffDevice()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_4d} :catch_4e

    goto :goto_52

    :catch_4e
    move-exception v1

    .line 316
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_52
    const-string v1, "closeDev: end"

    .line 319
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableEngTest(I)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getAntennaPower()I
    .registers 5

    .line 1459
    :try_start_0
    new-instance v0, Lcom/uhf/api/cls/Reader$AntPowerConf;

    sget-object v1, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/uhf/api/cls/Reader$AntPowerConf;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 1460
    sget-object v1, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    sget-object v2, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_RF_ANTPOWER:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1, v2, v0}, Lcom/uhf/api/cls/Reader;->ParamGet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 1462
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2a

    const/4 v1, 0x0

    .line 1463
    :goto_18
    iget v2, v0, Lcom/uhf/api/cls/Reader$AntPowerConf;->antcnt:I

    if-ge v3, v2, :cond_29

    if-nez v3, :cond_26

    .line 1465
    iget-object v1, v0, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v1, v1, v3

    iget-short v1, v1, Lcom/uhf/api/cls/Reader$AntPower;->readPower:S

    div-int/lit8 v1, v1, 0x64
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_2b

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_29
    move v3, v1

    :cond_2a
    return v3

    :catch_2b
    move-exception v0

    .line 1470
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public getDynamicAlgorithm(Lcom/uhf/structures/DynamicQParams;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getFixedAlgorithm(Lcom/uhf/structures/FixedQParams;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getFreqRegion()I
    .registers 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    :try_start_2
    new-array v2, v0, [Lcom/uhf/api/cls/Reader$Region_Conf;

    .line 1619
    sget-object v3, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    sget-object v4, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_FREQUENCY_REGION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v3, v4, v2}, Lcom/uhf/api/cls/Reader;->ParamGet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v3

    .line 1621
    sget-object v4, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v3, v4, :cond_26

    .line 1622
    sget-object v3, Lcom/speedata/libuhf/XinLianQilian$2;->$SwitchMap$com$uhf$api$cls$Reader$Region_Conf:[I

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/uhf/api/cls/Reader$Region_Conf;->ordinal()I

    move-result v2

    aget v2, v3, v2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_27

    if-eq v2, v0, :cond_25

    const/4 v0, 0x2

    if-eq v2, v0, :cond_24

    const/4 v0, 0x3

    if-eq v2, v0, :cond_24

    return v1

    :cond_24
    return v0

    :cond_25
    return v4

    :cond_26
    return v1

    :catch_27
    move-exception v0

    .line 1636
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public getGen2AllValue()[I
    .registers 9

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_4
    new-array v2, v1, [I

    const/4 v3, -0x1

    const/4 v4, 0x0

    aput v3, v2, v4

    new-array v5, v1, [I

    aput v3, v5, v4

    .line 1007
    sget-object v6, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    sget-object v7, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_Q:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v6, v7, v2}, Lcom/uhf/api/cls/Reader;->ParamGet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v6

    .line 1008
    sget-object v7, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v6, v7, :cond_20

    .line 1009
    aget v2, v2, v4

    add-int/2addr v2, v1

    aput v2, v0, v4

    goto :goto_22

    :cond_20
    aput v3, v0, v4

    .line 1014
    :goto_22
    sget-object v2, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    sget-object v6, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_TARGET:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v2, v6, v5}, Lcom/uhf/api/cls/Reader;->ParamGet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v2

    .line 1015
    sget-object v6, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v6, :cond_33

    .line 1016
    aget v2, v5, v4

    aput v2, v0, v1

    goto :goto_37

    :cond_33
    aput v3, v0, v1
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_35} :catch_36

    goto :goto_37

    :catch_36
    const/4 v0, 0x0

    :goto_37
    return-object v0
.end method

.method public getInvMode(I)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getMask()Lcom/uhf/structures/SelectCriteria;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getQueryTagGroup()I
    .registers 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    :try_start_2
    new-array v0, v0, [I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 783
    sget-object v3, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    sget-object v4, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_SESSION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v3, v4, v0}, Lcom/uhf/api/cls/Reader;->ParamGet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v3

    .line 786
    sget-object v4, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v3, v4, :cond_16

    .line 787
    aget v0, v0, v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_16

    return v0

    :catch_16
    :cond_16
    return v1
.end method

.method public get_inventory_mode()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public inventoryStart()V
    .registers 1

    .line 354
    invoke-virtual {p0}, Lcom/speedata/libuhf/XinLianQilian;->inventory_start()V

    return-void
.end method

.method public inventoryStop()V
    .registers 4

    .line 362
    iget-boolean v0, p0, Lcom/speedata/libuhf/XinLianQilian;->inSearch:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "ContentValues"

    const-string v1, "inventory_stop: start"

    .line 365
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 366
    iput-boolean v1, p0, Lcom/speedata/libuhf/XinLianQilian;->inSearch:Z

    .line 368
    :try_start_f
    iget-object v1, p0, Lcom/speedata/libuhf/XinLianQilian;->myInvThread:Ljava/lang/Thread;

    if-eqz v1, :cond_20

    .line 369
    iget-object v1, p0, Lcom/speedata/libuhf/XinLianQilian;->myInvThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const/4 v1, 0x0

    .line 370
    iput-object v1, p0, Lcom/speedata/libuhf/XinLianQilian;->myInvThread:Ljava/lang/Thread;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception v1

    .line 374
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_20
    :goto_20
    const-wide/16 v1, 0x1f4

    .line 376
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    const-string v1, "inventory_stop: end"

    .line 377
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public inventory_start()V
    .registers 3

    .line 1065
    iget-boolean v0, p0, Lcom/speedata/libuhf/XinLianQilian;->inSearch:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 1068
    iput-boolean v0, p0, Lcom/speedata/libuhf/XinLianQilian;->inSearch:Z

    .line 1069
    invoke-direct {p0}, Lcom/speedata/libuhf/XinLianQilian;->cancelSelect()V

    .line 1070
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/speedata/libuhf/XinLianQilian;->inv_thread:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/speedata/libuhf/XinLianQilian;->myInvThread:Ljava/lang/Thread;

    .line 1071
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string v0, "ContentValues"

    const-string v1, "inventory_start: end"

    .line 1072
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public inventory_start(Landroid/os/Handler;)V
    .registers 4

    const-string v0, "ContentValues"

    const-string v1, "inventory_start: start"

    .line 1077
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    invoke-virtual {p0, p1}, Lcom/speedata/libuhf/XinLianQilian;->reg_handler(Landroid/os/Handler;)V

    .line 1079
    invoke-virtual {p0}, Lcom/speedata/libuhf/XinLianQilian;->inventory_start()V

    return-void
.end method

.method public inventory_stop()I
    .registers 6

    .line 1085
    iget-boolean v0, p0, Lcom/speedata/libuhf/XinLianQilian;->inSearch:Z

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    const-string v0, "ContentValues"

    const-string v2, "inventory_stop: start"

    .line 1088
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 1089
    iput-boolean v2, p0, Lcom/speedata/libuhf/XinLianQilian;->inSearch:Z

    .line 1091
    :try_start_10
    iget-object v3, p0, Lcom/speedata/libuhf/XinLianQilian;->myInvThread:Ljava/lang/Thread;

    if-eqz v3, :cond_1c

    .line 1092
    iget-object v3, p0, Lcom/speedata/libuhf/XinLianQilian;->myInvThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    const/4 v3, 0x0

    .line 1093
    iput-object v3, p0, Lcom/speedata/libuhf/XinLianQilian;->myInvThread:Ljava/lang/Thread;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1c} :catch_27

    :cond_1c
    const-wide/16 v3, 0x1f4

    .line 1100
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    const-string v1, "inventory_stop: end"

    .line 1147
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_27
    move-exception v0

    .line 1097
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public mask(III[B)I
    .registers 5

    const/4 p1, 0x0

    return p1
.end method

.method public openDev()I
    .registers 6

    const-string v0, "ContentValues"

    const-string v1, "openDev: start"

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {}, Lcom/speedata/libuhf/utils/ConfigUtils;->isConfigFileExists()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-static {}, Lcom/speedata/libuhf/utils/CommonUtils;->subDeviceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "55"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8d

    .line 75
    iget-object v0, p0, Lcom/speedata/libuhf/XinLianQilian;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/speedata/libuhf/utils/ConfigUtils;->readConfig(Landroid/content/Context;)Lcom/speedata/libuhf/utils/ReadBean;

    move-result-object v0

    iput-object v0, p0, Lcom/speedata/libuhf/XinLianQilian;->mRead:Lcom/speedata/libuhf/utils/ReadBean;

    .line 76
    invoke-virtual {v0}, Lcom/speedata/libuhf/utils/ReadBean;->getUhf()Lcom/speedata/libuhf/utils/ReadBean$UhfBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedata/libuhf/utils/ReadBean$UhfBean;->getPowerType()Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/speedata/libuhf/XinLianQilian;->mRead:Lcom/speedata/libuhf/utils/ReadBean;

    invoke-virtual {v1}, Lcom/speedata/libuhf/utils/ReadBean;->getUhf()Lcom/speedata/libuhf/utils/ReadBean$UhfBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/speedata/libuhf/utils/ReadBean$UhfBean;->getGpio()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 78
    :goto_3b
    iget-object v4, p0, Lcom/speedata/libuhf/XinLianQilian;->mRead:Lcom/speedata/libuhf/utils/ReadBean;

    invoke-virtual {v4}, Lcom/speedata/libuhf/utils/ReadBean;->getUhf()Lcom/speedata/libuhf/utils/ReadBean$UhfBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/speedata/libuhf/utils/ReadBean$UhfBean;->getGpio()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_64

    .line 79
    iget-object v4, p0, Lcom/speedata/libuhf/XinLianQilian;->mRead:Lcom/speedata/libuhf/utils/ReadBean;

    invoke-virtual {v4}, Lcom/speedata/libuhf/utils/ReadBean;->getUhf()Lcom/speedata/libuhf/utils/ReadBean$UhfBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/speedata/libuhf/utils/ReadBean$UhfBean;->getGpio()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    :cond_64
    const/4 v3, -0x1

    .line 82
    :try_start_65
    new-instance v4, Landroid/serialport/DeviceControlSpd;

    invoke-direct {v4, v0, v1}, Landroid/serialport/DeviceControlSpd;-><init>(Ljava/lang/String;[I)V

    iput-object v4, p0, Lcom/speedata/libuhf/XinLianQilian;->newUHFDeviceControl:Landroid/serialport/DeviceControlSpd;

    .line 83
    invoke-virtual {v4}, Landroid/serialport/DeviceControlSpd;->PowerOnDevice()V

    .line 84
    sget-object v0, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    iget-object v1, p0, Lcom/speedata/libuhf/XinLianQilian;->mRead:Lcom/speedata/libuhf/utils/ReadBean;

    invoke-virtual {v1}, Lcom/speedata/libuhf/utils/ReadBean;->getUhf()Lcom/speedata/libuhf/utils/ReadBean$UhfBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/speedata/libuhf/utils/ReadBean$UhfBean;->getSerialPort()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/uhf/api/cls/Reader;->InitReader_Notype(Ljava/lang/String;I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 85
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v0, v1, :cond_87

    .line 86
    sput v4, Lcom/speedata/libuhf/XinLianQilian;->antportc:I
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_86} :catch_88

    return v2

    :cond_87
    return v3

    :catch_88
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return v3

    .line 96
    :cond_8d
    invoke-direct {p0}, Lcom/speedata/libuhf/XinLianQilian;->NoXmlopenDev()I

    move-result v0

    return v0
.end method

.method public readArea(IIILjava/lang/String;)I
    .registers 23

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p4

    const-string v3, "ContentValues"

    const-string v4, "read_area: start22222"

    .line 403
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    if-gt v0, v4, :cond_282

    if-gez v0, :cond_14

    goto/16 :goto_282

    :cond_14
    mul-int/lit8 v13, p3, 0x2

    const/4 v14, -0x1

    .line 408
    :try_start_17
    new-array v15, v13, [B

    const/4 v12, 0x4

    new-array v11, v12, [B

    const-string v5, ""

    .line 410
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    .line 411
    sget-object v5, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v2, v6, v11}, Lcom/uhf/api/cls/Reader;->Str2Hex(Ljava/lang/String;I[B)V

    .line 413
    :cond_2d
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/4 v2, 0x3

    .line 416
    :goto_30
    sget-object v5, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    iget-object v6, v1, Lcom/speedata/libuhf/XinLianQilian;->Rparams:Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

    iget v6, v6, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->opant:I

    int-to-char v7, v0

    iget-object v8, v1, Lcom/speedata/libuhf/XinLianQilian;->Rparams:Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

    iget v8, v8, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->optime:I

    int-to-short v10, v8

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v16, v10

    move-object v10, v15

    move-object/from16 v17, v11

    move/from16 v12, v16

    invoke-virtual/range {v5 .. v12}, Lcom/uhf/api/cls/Reader;->GetTagData(ICII[B[BS)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v5

    add-int/2addr v2, v14

    const/4 v6, 0x1

    if-ge v2, v6, :cond_50

    goto :goto_54

    .line 424
    :cond_50
    sget-object v7, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v7, :cond_278

    :goto_54
    const-string v0, "read_area: end"

    .line 425
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    new-instance v0, Lcom/speedata/libuhf/bean/SpdReadData;

    invoke-direct {v0}, Lcom/speedata/libuhf/bean/SpdReadData;-><init>()V

    .line 427
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/4 v3, 0x0

    if-ne v5, v2, :cond_71

    .line 428
    invoke-virtual {v0, v15}, Lcom/speedata/libuhf/bean/SpdReadData;->setReadData([B)V

    .line 429
    invoke-virtual {v0, v13}, Lcom/speedata/libuhf/bean/SpdReadData;->setDataLen(I)V

    .line 430
    invoke-virtual {v0, v3}, Lcom/speedata/libuhf/bean/SpdReadData;->setStatus(I)V

    .line 431
    invoke-direct {v1, v0}, Lcom/speedata/libuhf/XinLianQilian;->readCallBack(Lcom/speedata/libuhf/bean/SpdReadData;)V

    goto/16 :goto_277

    .line 432
    :cond_71
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_IO_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v7, -0x12

    const/4 v8, 0x2

    if-ne v5, v2, :cond_8b

    new-array v2, v4, [B

    aput-byte v14, v2, v3

    aput-byte v6, v2, v6

    aput-byte v7, v2, v8

    .line 433
    invoke-virtual {v0, v2}, Lcom/speedata/libuhf/bean/SpdReadData;->setReadData([B)V

    .line 434
    invoke-virtual {v0, v6}, Lcom/speedata/libuhf/bean/SpdReadData;->setStatus(I)V

    .line 435
    invoke-direct {v1, v0}, Lcom/speedata/libuhf/XinLianQilian;->readCallBack(Lcom/speedata/libuhf/bean/SpdReadData;)V

    goto/16 :goto_277

    .line 436
    :cond_8b
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INTERNAL_DEV_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v2, :cond_a2

    new-array v2, v4, [B

    aput-byte v14, v2, v3

    aput-byte v8, v2, v6

    aput-byte v7, v2, v8

    .line 437
    invoke-virtual {v0, v2}, Lcom/speedata/libuhf/bean/SpdReadData;->setReadData([B)V

    .line 438
    invoke-virtual {v0, v8}, Lcom/speedata/libuhf/bean/SpdReadData;->setStatus(I)V

    .line 439
    invoke-direct {v1, v0}, Lcom/speedata/libuhf/XinLianQilian;->readCallBack(Lcom/speedata/libuhf/bean/SpdReadData;)V

    goto/16 :goto_277

    .line 440
    :cond_a2
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v2, :cond_b9

    new-array v2, v4, [B

    aput-byte v14, v2, v3

    aput-byte v4, v2, v6

    aput-byte v7, v2, v8

    .line 441
    invoke-virtual {v0, v2}, Lcom/speedata/libuhf/bean/SpdReadData;->setReadData([B)V

    .line 442
    invoke-virtual {v0, v4}, Lcom/speedata/libuhf/bean/SpdReadData;->setStatus(I)V

    .line 443
    invoke-direct {v1, v0}, Lcom/speedata/libuhf/XinLianQilian;->readCallBack(Lcom/speedata/libuhf/bean/SpdReadData;)V

    goto/16 :goto_277

    .line 444
    :cond_b9
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_NO_TAG_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v2, :cond_d1

    new-array v2, v4, [B

    aput-byte v14, v2, v3

    const/4 v5, 0x4

    aput-byte v5, v2, v6

    aput-byte v7, v2, v8

    .line 445
    invoke-virtual {v0, v2}, Lcom/speedata/libuhf/bean/SpdReadData;->setReadData([B)V

    .line 446
    invoke-virtual {v0, v5}, Lcom/speedata/libuhf/bean/SpdReadData;->setStatus(I)V

    .line 447
    invoke-direct {v1, v0}, Lcom/speedata/libuhf/XinLianQilian;->readCallBack(Lcom/speedata/libuhf/bean/SpdReadData;)V

    goto/16 :goto_277

    .line 448
    :cond_d1
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_M5E_FATAL_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v2, :cond_e9

    new-array v2, v4, [B

    aput-byte v14, v2, v3

    const/4 v4, 0x5

    aput-byte v4, v2, v6

    aput-byte v7, v2, v8

    .line 449
    invoke-virtual {v0, v2}, Lcom/speedata/libuhf/bean/SpdReadData;->setReadData([B)V

    .line 450
    invoke-virtual {v0, v4}, Lcom/speedata/libuhf/bean/SpdReadData;->setStatus(I)V

    .line 451
    invoke-direct {v1, v0}, Lcom/speedata/libuhf/XinLianQilian;->readCallBack(Lcom/speedata/libuhf/bean/SpdReadData;)V

    goto/16 :goto_277

    .line 452
    :cond_e9
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_NOT_SUPPORTED:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v2, :cond_101

    new-array v2, v4, [B

    aput-byte v14, v2, v3

    const/4 v4, 0x6

    aput-byte v4, v2, v6

    aput-byte v7, v2, v8

    .line 453
    invoke-virtual {v0, v2}, Lcom/speedata/libuhf/bean/SpdReadData;->setReadData([B)V

    .line 454
    invoke-virtual {v0, v4}, Lcom/speedata/libuhf/bean/SpdReadData;->setStatus(I)V

    .line 455
    invoke-direct {v1, v0}, Lcom/speedata/libuhf/XinLianQilian;->readCallBack(Lcom/speedata/libuhf/bean/SpdReadData;)V

    goto/16 :goto_277

    .line 456
    :cond_101
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v2, :cond_119

    new-array v2, v4, [B

    aput-byte v14, v2, v3

    const/4 v4, 0x7

    aput-byte v4, v2, v6

    aput-byte v7, v2, v8

    .line 457
    invoke-virtual {v0, v2}, Lcom/speedata/libuhf/bean/SpdReadData;->setReadData([B)V

    .line 458
    invoke-virtual {v0, v4}, Lcom/speedata/libuhf/bean/SpdReadData;->setStatus(I)V

    .line 459
    invoke-direct {v1, v0}, Lcom/speedata/libuhf/XinLianQilian;->readCallBack(Lcom/speedata/libuhf/bean/SpdReadData;)V

    goto/16 :goto_277

    .line 460
    :cond_119
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_READER_HANDLE:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v2, :cond_132

    new-array v2, v4, [B

    aput-byte v14, v2, v3

    const/16 v4, 0x8

    aput-byte v4, v2, v6

    aput-byte v7, v2, v8

    .line 461
    invoke-virtual {v0, v2}, Lcom/speedata/libuhf/bean/SpdReadData;->setReadData([B)V

    .line 462
    invoke-virtual {v0, v4}, Lcom/speedata/libuhf/bean/SpdReadData;->setStatus(I)V

    .line 463
    invoke-direct {v1, v0}, Lcom/speedata/libuhf/XinLianQilian;->readCallBack(Lcom/speedata/libuhf/bean/SpdReadData;)V

    goto/16 :goto_277

    .line 464
    :cond_132
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_HIGN_RETURN_LOSS:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v2, :cond_14b

    new-array v2, v4, [B

    aput-byte v14, v2, v3

    const/16 v4, 0x9

    aput-byte v4, v2, v6

    aput-byte v7, v2, v8

    .line 465
    invoke-virtual {v0, v2}, Lcom/speedata/libuhf/bean/SpdReadData;->setReadData([B)V

    .line 466
    invoke-virtual {v0, v4}, Lcom/speedata/libuhf/bean/SpdReadData;->setStatus(I)V

    .line 467
    invoke-direct {v1, v0}, Lcom/speedata/libuhf/XinLianQilian;->readCallBack(Lcom/speedata/libuhf/bean/SpdReadData;)V

    goto/16 :goto_277

    .line 468
    :cond_14b
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_TOO_MANY_RESET:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v9, 0x10

    if-ne v5, v2, :cond_166

    new-array v2, v4, [B

    aput-byte v14, v2, v3

    aput-byte v9, v2, v6

    aput-byte v7, v2, v8

    .line 469
    invoke-virtual {v0, v2}, Lcom/speedata/libuhf/bean/SpdReadData;->setReadData([B)V

    const/16 v2, 0xa

    .line 470
    invoke-virtual {v0, v2}, Lcom/speedata/libuhf/bean/SpdReadData;->setStatus(I)V

    .line 471
    invoke-direct {v1, v0}, Lcom/speedata/libuhf/XinLianQilian;->readCallBack(Lcom/speedata/libuhf/bean/SpdReadData;)V

    goto/16 :goto_277

    .line 472
    :cond_166
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_NO_ANTENNAS:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v10, 0x11

    if-ne v5, v2, :cond_181

    new-array v2, v4, [B

    aput-byte v14, v2, v3

    aput-byte v10, v2, v6

    aput-byte v7, v2, v8

    .line 473
    invoke-virtual {v0, v2}, Lcom/speedata/libuhf/bean/SpdReadData;->setReadData([B)V

    const/16 v2, 0xb

    .line 474
    invoke-virtual {v0, v2}, Lcom/speedata/libuhf/bean/SpdReadData;->setStatus(I)V

    .line 475
    invoke-direct {v1, v0}, Lcom/speedata/libuhf/XinLianQilian;->readCallBack(Lcom/speedata/libuhf/bean/SpdReadData;)V

    goto/16 :goto_277

    .line 476
    :cond_181
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_HIGH_TEMPERATURE:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v11, 0x12

    if-ne v5, v2, :cond_19c

    new-array v2, v4, [B

    aput-byte v14, v2, v3

    aput-byte v11, v2, v6

    aput-byte v7, v2, v8

    .line 477
    invoke-virtual {v0, v2}, Lcom/speedata/libuhf/bean/SpdReadData;->setReadData([B)V

    const/16 v2, 0xc

    .line 478
    invoke-virtual {v0, v2}, Lcom/speedata/libuhf/bean/SpdReadData;->setStatus(I)V

    .line 479
    invoke-direct {v1, v0}, Lcom/speedata/libuhf/XinLianQilian;->readCallBack(Lcom/speedata/libuhf/bean/SpdReadData;)V

    goto/16 :goto_277

    .line 480
    :cond_19c
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_READER_DOWN:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v12, 0x13

    if-ne v5, v2, :cond_1b7

    new-array v2, v4, [B

    aput-byte v14, v2, v3

    aput-byte v12, v2, v6

    aput-byte v7, v2, v8

    .line 481
    invoke-virtual {v0, v2}, Lcom/speedata/libuhf/bean/SpdReadData;->setReadData([B)V

    const/16 v2, 0xd

    .line 482
    invoke-virtual {v0, v2}, Lcom/speedata/libuhf/bean/SpdReadData;->setStatus(I)V

    .line 483
    invoke-direct {v1, v0}, Lcom/speedata/libuhf/XinLianQilian;->readCallBack(Lcom/speedata/libuhf/bean/SpdReadData;)V

    goto/16 :goto_277

    .line 484
    :cond_1b7
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_UNKNOWN_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v13, 0x14

    if-ne v5, v2, :cond_1d2

    new-array v2, v4, [B

    aput-byte v14, v2, v3

    aput-byte v13, v2, v6

    aput-byte v7, v2, v8

    .line 485
    invoke-virtual {v0, v2}, Lcom/speedata/libuhf/bean/SpdReadData;->setReadData([B)V

    const/16 v2, 0xe

    .line 486
    invoke-virtual {v0, v2}, Lcom/speedata/libuhf/bean/SpdReadData;->setStatus(I)V

    .line 487
    invoke-direct {v1, v0}, Lcom/speedata/libuhf/XinLianQilian;->readCallBack(Lcom/speedata/libuhf/bean/SpdReadData;)V

    goto/16 :goto_277

    .line 488
    :cond_1d2
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->M6E_INIT_FAILED:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v2, :cond_1ed

    new-array v2, v4, [B

    aput-byte v14, v2, v3

    const/16 v4, 0x15

    aput-byte v4, v2, v6

    aput-byte v7, v2, v8

    .line 489
    invoke-virtual {v0, v2}, Lcom/speedata/libuhf/bean/SpdReadData;->setReadData([B)V

    const/16 v2, 0xf

    .line 490
    invoke-virtual {v0, v2}, Lcom/speedata/libuhf/bean/SpdReadData;->setStatus(I)V

    .line 491
    invoke-direct {v1, v0}, Lcom/speedata/libuhf/XinLianQilian;->readCallBack(Lcom/speedata/libuhf/bean/SpdReadData;)V

    goto/16 :goto_277

    .line 492
    :cond_1ed
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_EXECING:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v2, :cond_206

    new-array v2, v4, [B

    aput-byte v14, v2, v3

    const/16 v4, 0x16

    aput-byte v4, v2, v6

    aput-byte v7, v2, v8

    .line 493
    invoke-virtual {v0, v2}, Lcom/speedata/libuhf/bean/SpdReadData;->setReadData([B)V

    .line 494
    invoke-virtual {v0, v9}, Lcom/speedata/libuhf/bean/SpdReadData;->setStatus(I)V

    .line 495
    invoke-direct {v1, v0}, Lcom/speedata/libuhf/XinLianQilian;->readCallBack(Lcom/speedata/libuhf/bean/SpdReadData;)V

    goto/16 :goto_277

    .line 496
    :cond_206
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_UNKNOWN_READER_TYPE:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v2, :cond_21e

    new-array v2, v4, [B

    aput-byte v14, v2, v3

    const/16 v4, 0x17

    aput-byte v4, v2, v6

    aput-byte v7, v2, v8

    .line 497
    invoke-virtual {v0, v2}, Lcom/speedata/libuhf/bean/SpdReadData;->setReadData([B)V

    .line 498
    invoke-virtual {v0, v10}, Lcom/speedata/libuhf/bean/SpdReadData;->setStatus(I)V

    .line 499
    invoke-direct {v1, v0}, Lcom/speedata/libuhf/XinLianQilian;->readCallBack(Lcom/speedata/libuhf/bean/SpdReadData;)V

    goto :goto_277

    .line 500
    :cond_21e
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_INVALID:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v2, :cond_236

    new-array v2, v4, [B

    aput-byte v14, v2, v3

    const/16 v4, 0x18

    aput-byte v4, v2, v6

    aput-byte v7, v2, v8

    .line 501
    invoke-virtual {v0, v2}, Lcom/speedata/libuhf/bean/SpdReadData;->setReadData([B)V

    .line 502
    invoke-virtual {v0, v11}, Lcom/speedata/libuhf/bean/SpdReadData;->setStatus(I)V

    .line 503
    invoke-direct {v1, v0}, Lcom/speedata/libuhf/XinLianQilian;->readCallBack(Lcom/speedata/libuhf/bean/SpdReadData;)V

    goto :goto_277

    .line 504
    :cond_236
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_BY_FAILED_RESET_MODLUE:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v2, :cond_24e

    new-array v2, v4, [B

    aput-byte v14, v2, v3

    const/16 v4, 0x19

    aput-byte v4, v2, v6

    aput-byte v7, v2, v8

    .line 505
    invoke-virtual {v0, v2}, Lcom/speedata/libuhf/bean/SpdReadData;->setReadData([B)V

    .line 506
    invoke-virtual {v0, v12}, Lcom/speedata/libuhf/bean/SpdReadData;->setStatus(I)V

    .line 507
    invoke-direct {v1, v0}, Lcom/speedata/libuhf/XinLianQilian;->readCallBack(Lcom/speedata/libuhf/bean/SpdReadData;)V

    goto :goto_277

    .line 508
    :cond_24e
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_MAX_ERR_NUM:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v9, 0x20

    if-ne v5, v2, :cond_266

    new-array v2, v4, [B

    aput-byte v14, v2, v3

    aput-byte v9, v2, v6

    aput-byte v7, v2, v8

    .line 509
    invoke-virtual {v0, v2}, Lcom/speedata/libuhf/bean/SpdReadData;->setReadData([B)V

    .line 510
    invoke-virtual {v0, v13}, Lcom/speedata/libuhf/bean/SpdReadData;->setStatus(I)V

    .line 511
    invoke-direct {v1, v0}, Lcom/speedata/libuhf/XinLianQilian;->readCallBack(Lcom/speedata/libuhf/bean/SpdReadData;)V

    goto :goto_277

    :cond_266
    new-array v2, v4, [B

    aput-byte v14, v2, v3

    aput-byte v9, v2, v6

    aput-byte v7, v2, v8

    .line 513
    invoke-virtual {v0, v2}, Lcom/speedata/libuhf/bean/SpdReadData;->setReadData([B)V

    .line 514
    invoke-virtual {v0, v13}, Lcom/speedata/libuhf/bean/SpdReadData;->setStatus(I)V

    .line 515
    invoke-direct {v1, v0}, Lcom/speedata/libuhf/XinLianQilian;->readCallBack(Lcom/speedata/libuhf/bean/SpdReadData;)V
    :try_end_277
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_277} :catch_27d

    :goto_277
    return v3

    :cond_278
    move-object/from16 v11, v17

    const/4 v12, 0x4

    goto/16 :goto_30

    :catch_27d
    move-exception v0

    .line 518
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v14

    :cond_282
    :goto_282
    const/4 v0, -0x3

    return v0
.end method

.method public readMonzaQtTag(I[BIII)I
    .registers 6

    const/4 p1, -0x1

    return p1
.end method

.method public readMonzaQtTagSync(I[BIIIILcom/uhf/structures/RW_Params;)I
    .registers 8

    const/4 p1, -0x1

    return p1
.end method

.method public read_area(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "ContentValues"

    const-string v1, "read_card: start1111"

    .line 1232
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    return-object v1

    .line 1236
    :cond_f
    invoke-static {p4}, Lcom/speedata/libuhf/utils/ByteCharStrUtils;->IsHex(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    return-object v1

    :cond_16
    const/16 v0, 0x10

    .line 1242
    :try_start_18
    invoke-static {p2, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p2

    const/16 v0, 0xa

    .line 1243
    invoke-static {p3, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p3
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_22} :catch_27

    .line 1247
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/speedata/libuhf/XinLianQilian;->read_card(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_27
    return-object v1
.end method

.method public read_area(IIILjava/lang/String;)[B
    .registers 21

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p4

    const-string v3, "ContentValues"

    const-string v4, "read_area: start22222"

    .line 1155
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    if-gt v0, v4, :cond_191

    if-gez v0, :cond_14

    goto/16 :goto_191

    :cond_14
    mul-int/lit8 v5, p3, 0x2

    .line 1160
    :try_start_16
    new-array v13, v5, [B

    const/4 v14, 0x4

    new-array v15, v14, [B

    const-string v5, ""

    .line 1162
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 1163
    sget-object v5, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v2, v6, v15}, Lcom/uhf/api/cls/Reader;->Str2Hex(Ljava/lang/String;I[B)V

    .line 1165
    :cond_2c
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/4 v2, 0x3

    .line 1168
    :cond_2f
    sget-object v5, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    iget-object v6, v1, Lcom/speedata/libuhf/XinLianQilian;->Rparams:Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

    iget v6, v6, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->opant:I

    int-to-char v7, v0

    iget-object v8, v1, Lcom/speedata/libuhf/XinLianQilian;->Rparams:Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

    iget v8, v8, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->optime:I

    int-to-short v12, v8

    move/from16 v8, p2

    move/from16 v9, p3

    move-object v10, v13

    move-object v11, v15

    invoke-virtual/range {v5 .. v12}, Lcom/uhf/api/cls/Reader;->GetTagData(ICII[B[BS)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v5

    const/4 v6, -0x1

    add-int/2addr v2, v6

    const/4 v7, 0x1

    if-ge v2, v7, :cond_4b

    goto :goto_4f

    .line 1176
    :cond_4b
    sget-object v8, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v8, :cond_2f

    :goto_4f
    const-string v0, "read_area: end"

    .line 1177
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v0, :cond_59

    return-object v13

    .line 1180
    :cond_59
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_IO_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, -0x12

    const/4 v3, 0x0

    const/4 v8, 0x2

    if-ne v5, v0, :cond_6a

    new-array v0, v4, [B

    aput-byte v6, v0, v3

    aput-byte v7, v0, v7

    aput-byte v2, v0, v8

    return-object v0

    .line 1182
    :cond_6a
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INTERNAL_DEV_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v0, :cond_77

    new-array v0, v4, [B

    aput-byte v6, v0, v3

    aput-byte v8, v0, v7

    aput-byte v2, v0, v8

    return-object v0

    .line 1184
    :cond_77
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v0, :cond_84

    new-array v0, v4, [B

    aput-byte v6, v0, v3

    aput-byte v4, v0, v7

    aput-byte v2, v0, v8

    return-object v0

    .line 1186
    :cond_84
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_NO_TAG_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v0, :cond_91

    new-array v0, v4, [B

    aput-byte v6, v0, v3

    aput-byte v14, v0, v7

    aput-byte v2, v0, v8

    return-object v0

    .line 1188
    :cond_91
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_M5E_FATAL_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v0, :cond_9f

    new-array v0, v4, [B

    aput-byte v6, v0, v3

    const/4 v3, 0x5

    aput-byte v3, v0, v7

    aput-byte v2, v0, v8

    return-object v0

    .line 1190
    :cond_9f
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_NOT_SUPPORTED:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v0, :cond_ad

    new-array v0, v4, [B

    aput-byte v6, v0, v3

    const/4 v3, 0x6

    aput-byte v3, v0, v7

    aput-byte v2, v0, v8

    return-object v0

    .line 1192
    :cond_ad
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v0, :cond_bb

    new-array v0, v4, [B

    aput-byte v6, v0, v3

    const/4 v3, 0x7

    aput-byte v3, v0, v7

    aput-byte v2, v0, v8

    return-object v0

    .line 1194
    :cond_bb
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_READER_HANDLE:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v0, :cond_ca

    new-array v0, v4, [B

    aput-byte v6, v0, v3

    const/16 v3, 0x8

    aput-byte v3, v0, v7

    aput-byte v2, v0, v8

    return-object v0

    .line 1196
    :cond_ca
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_HIGN_RETURN_LOSS:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v0, :cond_d9

    new-array v0, v4, [B

    aput-byte v6, v0, v3

    const/16 v3, 0x9

    aput-byte v3, v0, v7

    aput-byte v2, v0, v8

    return-object v0

    .line 1198
    :cond_d9
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_TOO_MANY_RESET:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v0, :cond_e8

    new-array v0, v4, [B

    aput-byte v6, v0, v3

    const/16 v3, 0x10

    aput-byte v3, v0, v7

    aput-byte v2, v0, v8

    return-object v0

    .line 1200
    :cond_e8
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_NO_ANTENNAS:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v0, :cond_f7

    new-array v0, v4, [B

    aput-byte v6, v0, v3

    const/16 v3, 0x11

    aput-byte v3, v0, v7

    aput-byte v2, v0, v8

    return-object v0

    .line 1202
    :cond_f7
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_HIGH_TEMPERATURE:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v0, :cond_106

    new-array v0, v4, [B

    aput-byte v6, v0, v3

    const/16 v3, 0x12

    aput-byte v3, v0, v7

    aput-byte v2, v0, v8

    return-object v0

    .line 1204
    :cond_106
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_READER_DOWN:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v0, :cond_115

    new-array v0, v4, [B

    aput-byte v6, v0, v3

    const/16 v3, 0x13

    aput-byte v3, v0, v7

    aput-byte v2, v0, v8

    return-object v0

    .line 1206
    :cond_115
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_UNKNOWN_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v0, :cond_124

    new-array v0, v4, [B

    aput-byte v6, v0, v3

    const/16 v3, 0x14

    aput-byte v3, v0, v7

    aput-byte v2, v0, v8

    return-object v0

    .line 1208
    :cond_124
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->M6E_INIT_FAILED:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v0, :cond_133

    new-array v0, v4, [B

    aput-byte v6, v0, v3

    const/16 v3, 0x15

    aput-byte v3, v0, v7

    aput-byte v2, v0, v8

    return-object v0

    .line 1210
    :cond_133
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_EXECING:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v0, :cond_142

    new-array v0, v4, [B

    aput-byte v6, v0, v3

    const/16 v3, 0x16

    aput-byte v3, v0, v7

    aput-byte v2, v0, v8

    return-object v0

    .line 1212
    :cond_142
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_UNKNOWN_READER_TYPE:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v0, :cond_151

    new-array v0, v4, [B

    aput-byte v6, v0, v3

    const/16 v3, 0x17

    aput-byte v3, v0, v7

    aput-byte v2, v0, v8

    return-object v0

    .line 1214
    :cond_151
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_INVALID:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v0, :cond_160

    new-array v0, v4, [B

    aput-byte v6, v0, v3

    const/16 v3, 0x18

    aput-byte v3, v0, v7

    aput-byte v2, v0, v8

    return-object v0

    .line 1216
    :cond_160
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_BY_FAILED_RESET_MODLUE:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v0, :cond_16f

    new-array v0, v4, [B

    aput-byte v6, v0, v3

    const/16 v3, 0x19

    aput-byte v3, v0, v7

    aput-byte v2, v0, v8

    return-object v0

    .line 1218
    :cond_16f
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_MAX_ERR_NUM:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v9, 0x20

    if-ne v5, v0, :cond_17e

    new-array v0, v4, [B

    aput-byte v6, v0, v3

    aput-byte v9, v0, v7

    aput-byte v2, v0, v8

    return-object v0

    :cond_17e
    new-array v0, v4, [B

    aput-byte v6, v0, v3

    aput-byte v9, v0, v7

    aput-byte v2, v0, v8
    :try_end_186
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_186} :catch_187

    return-object v0

    :catch_187
    move-exception v0

    .line 1224
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-array v0, v4, [B

    .line 1225
    fill-array-data v0, :array_198

    return-object v0

    :cond_191
    :goto_191
    new-array v0, v4, [B

    .line 1157
    fill-array-data v0, :array_19e

    return-object v0

    nop

    :array_198
    .array-data 1
        -0x1t
        0x20t
        -0x12t
    .end array-data

    :array_19e
    .array-data 1
        -0x1t
        0x7t
        -0x12t
    .end array-data
.end method

.method public reg_handler(Landroid/os/Handler;)V
    .registers 2

    .line 1826
    iput-object p1, p0, Lcom/speedata/libuhf/XinLianQilian;->handler_inventer:Landroid/os/Handler;

    return-void
.end method

.method public selectCard(ILjava/lang/String;Z)I
    .registers 8

    const-string v0, "ContentValues"

    const-string v1, "selectCard: start"

    .line 1400
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_b

    const-string p2, "0000"

    .line 1404
    :cond_b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_16

    .line 1405
    rem-int/lit8 v3, v1, 0x2

    if-ne v3, v2, :cond_18

    :cond_16
    add-int/lit8 v1, v1, 0x1

    .line 1408
    :cond_18
    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 1409
    sget-object v2, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, p2, v3, v1}, Lcom/uhf/api/cls/Reader;->Str2Hex(Ljava/lang/String;I[B)V

    .line 1411
    invoke-virtual {p0, p1, v1, p3}, Lcom/speedata/libuhf/XinLianQilian;->selectCard(I[BZ)I

    move-result p1

    if-eqz p1, :cond_32

    const-string p1, "selectCard: failed"

    .line 1412
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    :cond_32
    const-string p1, "selectCard: end"

    .line 1415
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public selectCard(I[BZ)I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p3, :cond_35

    if-nez p2, :cond_7

    return v1

    .line 1376
    :cond_7
    :try_start_7
    new-instance p3, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    sget-object v2, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p3, v2}, Lcom/uhf/api/cls/Reader$TagFilter_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    iput-object p3, p0, Lcom/speedata/libuhf/XinLianQilian;->g2tf:Lcom/uhf/api/cls/Reader$TagFilter_ST;

    .line 1377
    iput-object p2, p3, Lcom/uhf/api/cls/Reader$TagFilter_ST;->fdata:[B

    .line 1378
    iget-object p3, p0, Lcom/speedata/libuhf/XinLianQilian;->g2tf:Lcom/uhf/api/cls/Reader$TagFilter_ST;

    array-length p2, p2

    mul-int/lit8 p2, p2, 0x8

    iput p2, p3, Lcom/uhf/api/cls/Reader$TagFilter_ST;->flen:I

    .line 1379
    iget-object p2, p0, Lcom/speedata/libuhf/XinLianQilian;->g2tf:Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iput v0, p2, Lcom/uhf/api/cls/Reader$TagFilter_ST;->isInvert:I

    .line 1380
    iget-object p2, p0, Lcom/speedata/libuhf/XinLianQilian;->g2tf:Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iput p1, p2, Lcom/uhf/api/cls/Reader$TagFilter_ST;->bank:I

    .line 1381
    iget-object p1, p0, Lcom/speedata/libuhf/XinLianQilian;->g2tf:Lcom/uhf/api/cls/Reader$TagFilter_ST;

    const/16 p2, 0x20

    iput p2, p1, Lcom/uhf/api/cls/Reader$TagFilter_ST;->startaddr:I

    .line 1382
    sget-object p1, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    sget-object p2, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TAG_FILTER:Lcom/uhf/api/cls/Reader$Mtr_Param;

    iget-object p3, p0, Lcom/speedata/libuhf/XinLianQilian;->g2tf:Lcom/uhf/api/cls/Reader$TagFilter_ST;

    invoke-virtual {p1, p2, p3}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    goto :goto_3e

    .line 1384
    :cond_35
    sget-object p1, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    sget-object p2, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TAG_FILTER:Lcom/uhf/api/cls/Reader$Mtr_Param;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1387
    :goto_3e
    sget-object p2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_40} :catch_44

    if-eq p1, p2, :cond_43

    return v1

    :cond_43
    return v0

    :catch_44
    move-exception p1

    .line 1392
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public setAntennaPower(I)I
    .registers 11

    .line 1423
    new-instance v0, Lcom/uhf/api/cls/Reader$AntPowerConf;

    sget-object v1, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/uhf/api/cls/Reader$AntPowerConf;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 1424
    sget v1, Lcom/speedata/libuhf/XinLianQilian;->antportc:I

    iput v1, v0, Lcom/uhf/api/cls/Reader$AntPowerConf;->antcnt:I

    .line 1425
    iget v1, v0, Lcom/uhf/api/cls/Reader$AntPowerConf;->antcnt:I

    new-array v1, v1, [I

    .line 1426
    iget v2, v0, Lcom/uhf/api/cls/Reader$AntPowerConf;->antcnt:I

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1427
    :goto_18
    iget v5, v0, Lcom/uhf/api/cls/Reader$AntPowerConf;->antcnt:I

    if-ge v4, v5, :cond_3f

    .line 1428
    new-instance v5, Lcom/uhf/api/cls/Reader$AntPower;

    sget-object v6, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, v6}, Lcom/uhf/api/cls/Reader$AntPower;-><init>(Lcom/uhf/api/cls/Reader;)V

    add-int/lit8 v6, v4, 0x1

    .line 1429
    iput v6, v5, Lcom/uhf/api/cls/Reader$AntPower;->antid:I

    mul-int/lit8 v7, p1, 0x64

    int-to-short v7, v7

    .line 1430
    iput-short v7, v5, Lcom/uhf/api/cls/Reader$AntPower;->readPower:S

    .line 1431
    iget-short v8, v5, Lcom/uhf/api/cls/Reader$AntPower;->readPower:S

    aput v8, v1, v4

    .line 1432
    iput-short v7, v5, Lcom/uhf/api/cls/Reader$AntPower;->writePower:S

    .line 1433
    iget-short v7, v5, Lcom/uhf/api/cls/Reader$AntPower;->writePower:S

    aput v7, v2, v4

    .line 1434
    iget-object v7, v0, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aput-object v5, v7, v4

    move v4, v6

    goto :goto_18

    :cond_3f
    const/4 v4, -0x1

    .line 1437
    :try_start_40
    sget-object v5, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    sget-object v6, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_RF_ANTPOWER:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v5, v6, v0}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 1439
    sget-object v5, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v0, v5, :cond_4d

    return v4

    .line 1442
    :cond_4d
    iget-object v0, p0, Lcom/speedata/libuhf/XinLianQilian;->Rparams:Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

    iput-object v1, v0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->rpow:[I

    .line 1443
    iget-object v0, p0, Lcom/speedata/libuhf/XinLianQilian;->Rparams:Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

    iput-object v2, v0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->wpow:[I

    .line 1444
    iget-object v0, p0, Lcom/speedata/libuhf/XinLianQilian;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/speedata/libuhf/utils/SharedXmlUtil;->getInstance(Landroid/content/Context;)Lcom/speedata/libuhf/utils/SharedXmlUtil;

    move-result-object v0

    const-string v1, "AntennaPower"

    invoke-virtual {v0, v1, p1}, Lcom/speedata/libuhf/utils/SharedXmlUtil;->write(Ljava/lang/String;I)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_60} :catch_61

    return v3

    :catch_61
    move-exception p1

    .line 1447
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v4
.end method

.method public setDynamicAlgorithm()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public setDynamicAlgorithm(IIIIII)I
    .registers 7

    const/4 p1, 0x0

    return p1
.end method

.method public setFixedAlgorithm(IIII)I
    .registers 5

    const/4 p1, 0x0

    return p1
.end method

.method public setFreqRegion(I)I
    .registers 5

    const/4 v0, -0x1

    if-eqz p1, :cond_18

    const/4 v1, 0x1

    if-eq p1, v1, :cond_15

    const/4 v1, 0x2

    if-eq p1, v1, :cond_12

    const/4 v1, 0x3

    if-eq p1, v1, :cond_f

    .line 1597
    :try_start_c
    sget-object p1, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_NONE:Lcom/uhf/api/cls/Reader$Region_Conf;

    goto :goto_1a

    .line 1594
    :cond_f
    sget-object p1, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_EU3:Lcom/uhf/api/cls/Reader$Region_Conf;

    goto :goto_1a

    .line 1591
    :cond_12
    sget-object p1, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_NA:Lcom/uhf/api/cls/Reader$Region_Conf;

    goto :goto_1a

    .line 1588
    :cond_15
    sget-object p1, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_NONE:Lcom/uhf/api/cls/Reader$Region_Conf;

    goto :goto_1a

    .line 1585
    :cond_18
    sget-object p1, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_PRC:Lcom/uhf/api/cls/Reader$Region_Conf;

    .line 1600
    :goto_1a
    sget-object v1, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_NONE:Lcom/uhf/api/cls/Reader$Region_Conf;

    if-ne p1, v1, :cond_1f

    return v0

    .line 1603
    :cond_1f
    sget-object v1, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    sget-object v2, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_FREQUENCY_REGION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1, v2, p1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1605
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_29} :catch_2e

    if-eq p1, v1, :cond_2c

    return v0

    :cond_2c
    const/4 p1, 0x0

    return p1

    :catch_2e
    move-exception p1

    .line 1609
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public setFrequency(D)I
    .registers 3

    const/4 p1, -0x1

    return p1
.end method

.method public setGen2Blf(I)I
    .registers 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    :try_start_2
    new-array v0, v0, [I

    const/4 v2, 0x0

    aput v1, v0, v2

    aput p1, v0, v2

    .line 920
    sget-object p1, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    sget-object v3, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_BLF:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p1, v3, v0}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 921
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne p1, v3, :cond_1c

    .line 922
    iget-object p1, p0, Lcom/speedata/libuhf/XinLianQilian;->Rparams:Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

    aget v0, v0, v2

    iput v0, p1, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->blf:I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1c

    return v2

    :catch_1c
    :cond_1c
    return v1
.end method

.method public setGen2Code(I)I
    .registers 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    :try_start_2
    new-array v0, v0, [I

    const/4 v2, 0x0

    aput v1, v0, v2

    aput p1, v0, v2

    .line 971
    sget-object p1, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    sget-object v3, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_TAGENCODING:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p1, v3, v0}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 972
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne p1, v3, :cond_1c

    .line 973
    iget-object p1, p0, Lcom/speedata/libuhf/XinLianQilian;->Rparams:Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

    aget v0, v0, v2

    iput v0, p1, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->gen2code:I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1c

    return v2

    :catch_1c
    :cond_1c
    return v1
.end method

.method public setGen2MaxLen(I)I
    .registers 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    :try_start_2
    new-array v0, v0, [I

    const/4 v2, 0x0

    aput v1, v0, v2

    aput p1, v0, v2

    .line 937
    sget-object p1, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    sget-object v3, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_MAXEPCLEN:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p1, v3, v0}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 938
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne p1, v3, :cond_1c

    .line 939
    iget-object p1, p0, Lcom/speedata/libuhf/XinLianQilian;->Rparams:Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

    aget v0, v0, v2

    iput v0, p1, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->maxlen:I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1c

    return v2

    :catch_1c
    :cond_1c
    return v1
.end method

.method public setGen2QValue(I)I
    .registers 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    :try_start_2
    new-array v2, v0, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    sub-int/2addr p1, v0

    aput p1, v2, v3

    .line 886
    sget-object p1, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    sget-object v0, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_Q:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p1, v0, v2}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 887
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne p1, v0, :cond_1d

    .line 888
    iget-object p1, p0, Lcom/speedata/libuhf/XinLianQilian;->Rparams:Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

    aget v0, v2, v3

    iput v0, p1, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->qv:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1c} :catch_1d

    return v3

    :catch_1d
    :cond_1d
    return v1
.end method

.method public setGen2Target(I)I
    .registers 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    :try_start_2
    new-array v0, v0, [I

    const/4 v2, 0x0

    aput v1, v0, v2

    aput p1, v0, v2

    .line 954
    sget-object p1, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    sget-object v3, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_TARGET:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p1, v3, v0}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 955
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne p1, v3, :cond_1c

    .line 956
    iget-object p1, p0, Lcom/speedata/libuhf/XinLianQilian;->Rparams:Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

    aget v0, v0, v2

    iput v0, p1, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->target:I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1c

    return v2

    :catch_1c
    :cond_1c
    return v1
.end method

.method public setGen2Tari(I)I
    .registers 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    :try_start_2
    new-array v0, v0, [I

    const/4 v2, 0x0

    aput v1, v0, v2

    aput p1, v0, v2

    .line 988
    sget-object p1, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    sget-object v3, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_TARI:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p1, v3, v0}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 989
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne p1, v3, :cond_1c

    .line 990
    iget-object p1, p0, Lcom/speedata/libuhf/XinLianQilian;->Rparams:Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

    aget v0, v0, v2

    iput v0, p1, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->gen2tari:I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1c

    return v2

    :catch_1c
    :cond_1c
    return v1
.end method

.method public setGen2WriteMode(I)I
    .registers 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    :try_start_2
    new-array v0, v0, [I

    const/4 v2, 0x0

    aput v1, v0, v2

    aput p1, v0, v2

    .line 903
    sget-object p1, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    sget-object v3, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_WRITEMODE:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p1, v3, v0}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 904
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne p1, v3, :cond_1c

    .line 905
    iget-object p1, p0, Lcom/speedata/libuhf/XinLianQilian;->Rparams:Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

    aget v0, v0, v2

    iput v0, p1, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->wmode:I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1c

    return v2

    :catch_1c
    :cond_1c
    return v1
.end method

.method public setInvMode(III)I
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public setKill(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public setLock(IILjava/lang/String;)I
    .registers 16

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-nez p2, :cond_22

    .line 673
    :try_start_8
    sget-object p2, Lcom/uhf/api/cls/Reader$Lock_Obj;->LOCK_OBJECT_KILL_PASSWORD:Lcom/uhf/api/cls/Reader$Lock_Obj;

    if-nez p1, :cond_12

    .line 675
    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->KILL_PASSWORD_UNLOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    :cond_e
    :goto_e
    move-object p1, v1

    move-object v1, p2

    goto/16 :goto_7b

    :cond_12
    if-ne p1, v4, :cond_17

    .line 677
    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->KILL_PASSWORD_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    goto :goto_e

    :cond_17
    if-ne p1, v3, :cond_1a

    return v5

    :cond_1a
    if-ne p1, v2, :cond_e

    .line 681
    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->KILL_PASSWORD_PERM_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    goto :goto_e

    :catch_1f
    move-exception p1

    goto/16 :goto_bf

    :cond_22
    if-ne p2, v4, :cond_38

    .line 685
    sget-object p2, Lcom/uhf/api/cls/Reader$Lock_Obj;->LOCK_OBJECT_ACCESS_PASSWD:Lcom/uhf/api/cls/Reader$Lock_Obj;

    if-nez p1, :cond_2b

    .line 687
    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->ACCESS_PASSWD_UNLOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    goto :goto_e

    :cond_2b
    if-ne p1, v4, :cond_30

    .line 689
    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->ACCESS_PASSWD_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    goto :goto_e

    :cond_30
    if-ne p1, v3, :cond_33

    return v5

    :cond_33
    if-ne p1, v2, :cond_e

    .line 693
    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->ACCESS_PASSWD_PERM_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    goto :goto_e

    :cond_38
    if-ne p2, v3, :cond_4e

    .line 696
    sget-object p2, Lcom/uhf/api/cls/Reader$Lock_Obj;->LOCK_OBJECT_BANK1:Lcom/uhf/api/cls/Reader$Lock_Obj;

    if-nez p1, :cond_41

    .line 698
    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK1_UNLOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    goto :goto_e

    :cond_41
    if-ne p1, v4, :cond_46

    .line 700
    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK1_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    goto :goto_e

    :cond_46
    if-ne p1, v3, :cond_49

    return v5

    :cond_49
    if-ne p1, v2, :cond_e

    .line 704
    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK1_PERM_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    goto :goto_e

    :cond_4e
    if-ne p2, v2, :cond_64

    .line 707
    sget-object p2, Lcom/uhf/api/cls/Reader$Lock_Obj;->LOCK_OBJECT_BANK2:Lcom/uhf/api/cls/Reader$Lock_Obj;

    if-nez p1, :cond_57

    .line 709
    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK2_UNLOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    goto :goto_e

    :cond_57
    if-ne p1, v4, :cond_5c

    .line 711
    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK2_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    goto :goto_e

    :cond_5c
    if-ne p1, v3, :cond_5f

    return v5

    :cond_5f
    if-ne p1, v2, :cond_e

    .line 715
    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK2_PERM_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    goto :goto_e

    :cond_64
    if-ne p2, v0, :cond_7a

    .line 718
    sget-object p2, Lcom/uhf/api/cls/Reader$Lock_Obj;->LOCK_OBJECT_BANK3:Lcom/uhf/api/cls/Reader$Lock_Obj;

    if-nez p1, :cond_6d

    .line 720
    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK3_UNLOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    goto :goto_e

    :cond_6d
    if-ne p1, v4, :cond_72

    .line 722
    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK3_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    goto :goto_e

    :cond_72
    if-ne p1, v3, :cond_75

    return v5

    :cond_75
    if-ne p1, v2, :cond_e

    .line 726
    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK3_PERM_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    goto :goto_e

    :cond_7a
    move-object p1, v1

    :goto_7b
    new-array v10, v0, [B

    const-string p2, ""

    .line 730
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8e

    .line 731
    sget-object p2, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, p3, v0, v10}, Lcom/uhf/api/cls/Reader;->Str2Hex(Ljava/lang/String;I[B)V

    .line 736
    :cond_8e
    sget-object v6, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    iget-object p2, p0, Lcom/speedata/libuhf/XinLianQilian;->Rparams:Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

    iget v7, p2, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->opant:I

    .line 737
    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Lock_Obj;->value()I

    move-result p2

    int-to-byte v8, p2

    invoke-virtual {p1}, Lcom/uhf/api/cls/Reader$Lock_Type;->value()I

    move-result p1

    int-to-short v9, p1

    iget-object p1, p0, Lcom/speedata/libuhf/XinLianQilian;->Rparams:Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

    iget p1, p1, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->optime:I

    int-to-short v11, p1

    .line 736
    invoke-virtual/range {v6 .. v11}, Lcom/uhf/api/cls/Reader;->LockTag(IBS[BS)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 739
    new-instance p2, Lcom/speedata/libuhf/bean/SpdWriteData;

    invoke-direct {p2}, Lcom/speedata/libuhf/bean/SpdWriteData;-><init>()V

    .line 740
    sget-object p3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq p1, p3, :cond_b7

    .line 741
    invoke-virtual {p2, v5}, Lcom/speedata/libuhf/bean/SpdWriteData;->setStatus(I)V

    .line 742
    invoke-direct {p0, p2}, Lcom/speedata/libuhf/XinLianQilian;->writeCallBack(Lcom/speedata/libuhf/bean/SpdWriteData;)V

    return v5

    :cond_b7
    const/4 p1, 0x0

    .line 745
    invoke-virtual {p2, p1}, Lcom/speedata/libuhf/bean/SpdWriteData;->setStatus(I)V

    .line 746
    invoke-direct {p0, p2}, Lcom/speedata/libuhf/XinLianQilian;->writeCallBack(Lcom/speedata/libuhf/bean/SpdWriteData;)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_be} :catch_1f

    return p1

    .line 750
    :goto_bf
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v5
.end method

.method public setMonzaQtTagMode(II[B)I
    .registers 4

    const/4 p1, -0x1

    return p1
.end method

.method public setOnInventoryListener(Lcom/speedata/libuhf/interfaces/OnSpdInventoryListener;)V
    .registers 2

    .line 335
    iput-object p1, p0, Lcom/speedata/libuhf/XinLianQilian;->onInventoryListener:Lcom/speedata/libuhf/interfaces/OnSpdInventoryListener;

    return-void
.end method

.method public setOnReadListener(Lcom/speedata/libuhf/interfaces/OnSpdReadListener;)V
    .registers 2

    .line 387
    iput-object p1, p0, Lcom/speedata/libuhf/XinLianQilian;->onSpdReadListener:Lcom/speedata/libuhf/interfaces/OnSpdReadListener;

    return-void
.end method

.method public setOnWriteListener(Lcom/speedata/libuhf/interfaces/OnSpdWriteListener;)V
    .registers 2

    .line 531
    iput-object p1, p0, Lcom/speedata/libuhf/XinLianQilian;->onSpdWriteListener:Lcom/speedata/libuhf/interfaces/OnSpdWriteListener;

    return-void
.end method

.method public setPassword(ILjava/lang/String;Ljava/lang/String;)I
    .registers 12

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-gt p1, v1, :cond_21

    if-gez p1, :cond_7

    goto :goto_21

    .line 653
    :cond_7
    invoke-static {p3}, Lcom/speedata/libuhf/utils/StringUtils;->stringToByte(Ljava/lang/String;)[B

    move-result-object v7

    if-nez p1, :cond_17

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v2, p0

    move-object v6, p2

    .line 656
    :try_start_12
    invoke-virtual/range {v2 .. v7}, Lcom/speedata/libuhf/XinLianQilian;->writeArea(IIILjava/lang/String;[B)I

    move-result p1

    return p1

    :cond_17
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x2

    move-object v2, p0

    move-object v6, p2

    .line 658
    invoke-virtual/range {v2 .. v7}, Lcom/speedata/libuhf/XinLianQilian;->writeArea(IIILjava/lang/String;[B)I

    move-result p1
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_20} :catch_21

    return p1

    :catch_21
    :cond_21
    :goto_21
    return v0
.end method

.method public setQT([BIIII)I
    .registers 8

    .line 816
    :try_start_0
    new-instance v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;

    sget-object v1, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;-><init>(Lcom/uhf/api/cls/Reader;)V

    const/16 v1, 0x3e8

    .line 817
    iput-short v1, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->TimeOut:S

    .line 818
    iput p2, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->CmdType:I

    .line 819
    iget p2, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->CmdType:I

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1b

    .line 820
    iput p3, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->MemType:I

    .line 821
    iput p4, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->PersistType:I

    .line 822
    iput p5, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->RangeType:I

    .line 824
    :cond_1b
    iput-object p1, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->AccessPwd:[B

    .line 826
    new-instance p1, Lcom/uhf/api/cls/Reader$IMPINJM4QtResult;

    sget-object p2, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, p2}, Lcom/uhf/api/cls/Reader$IMPINJM4QtResult;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 827
    sget-object p2, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    iget-object p3, p0, Lcom/speedata/libuhf/XinLianQilian;->Rparams:Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

    iget p3, p3, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->opant:I

    sget-object p4, Lcom/uhf/api/cls/Reader$CustomCmdType;->IMPINJ_M4_Qt:Lcom/uhf/api/cls/Reader$CustomCmdType;

    invoke-virtual {p2, p3, p4, v0, p1}, Lcom/uhf/api/cls/Reader;->CustomCmd(ILcom/uhf/api/cls/Reader$CustomCmdType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_34

    const/4 p1, 0x0

    return p1

    :catch_34
    move-exception p1

    .line 830
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public setQueryTagGroup(III)I
    .registers 6

    const/4 p1, 0x1

    const/4 p3, -0x1

    :try_start_2
    new-array p1, p1, [I

    const/4 v0, 0x0

    aput p3, p1, v0

    aput p2, p1, v0

    .line 765
    sget-object p2, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_SESSION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p2, v1, p1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p2

    .line 767
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne p2, v1, :cond_1c

    .line 768
    iget-object p2, p0, Lcom/speedata/libuhf/XinLianQilian;->Rparams:Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

    aget p1, p1, v0

    iput p1, p2, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->session:I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1c

    return v0

    :catch_1c
    :cond_1c
    return p3
.end method

.method public set_Password(ILjava/lang/String;Ljava/lang/String;)I
    .registers 12

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-gt p1, v1, :cond_23

    if-gez p1, :cond_7

    goto :goto_23

    :cond_7
    if-nez p1, :cond_16

    const/4 v3, 0x0

    :try_start_a
    const-string v4, "0"

    const-string v6, "2"

    move-object v2, p0

    move-object v5, p2

    move-object v7, p3

    .line 1567
    invoke-virtual/range {v2 .. v7}, Lcom/speedata/libuhf/XinLianQilian;->write_area(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_16
    const/4 v2, 0x0

    const-string v3, "2"

    const-string v5, "2"

    move-object v1, p0

    move-object v4, p2

    move-object v6, p3

    .line 1569
    invoke-virtual/range {v1 .. v6}, Lcom/speedata/libuhf/XinLianQilian;->write_area(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_22} :catch_23

    return p1

    :catch_23
    :cond_23
    :goto_23
    return v0
.end method

.method public set_inventory_mode(I)I
    .registers 2

    const/4 p1, -0x1

    return p1
.end method

.method public setlock(IILjava/lang/String;)I
    .registers 16

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-nez p2, :cond_22

    .line 1483
    :try_start_8
    sget-object p2, Lcom/uhf/api/cls/Reader$Lock_Obj;->LOCK_OBJECT_KILL_PASSWORD:Lcom/uhf/api/cls/Reader$Lock_Obj;

    if-nez p1, :cond_12

    .line 1485
    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->KILL_PASSWORD_UNLOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    :cond_e
    :goto_e
    move-object p1, v1

    move-object v1, p2

    goto/16 :goto_7b

    :cond_12
    if-ne p1, v4, :cond_17

    .line 1487
    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->KILL_PASSWORD_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    goto :goto_e

    :cond_17
    if-ne p1, v3, :cond_1a

    return v5

    :cond_1a
    if-ne p1, v2, :cond_e

    .line 1491
    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->KILL_PASSWORD_PERM_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    goto :goto_e

    :catch_1f
    move-exception p1

    goto/16 :goto_ae

    :cond_22
    if-ne p2, v4, :cond_38

    .line 1495
    sget-object p2, Lcom/uhf/api/cls/Reader$Lock_Obj;->LOCK_OBJECT_ACCESS_PASSWD:Lcom/uhf/api/cls/Reader$Lock_Obj;

    if-nez p1, :cond_2b

    .line 1497
    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->ACCESS_PASSWD_UNLOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    goto :goto_e

    :cond_2b
    if-ne p1, v4, :cond_30

    .line 1499
    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->ACCESS_PASSWD_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    goto :goto_e

    :cond_30
    if-ne p1, v3, :cond_33

    return v5

    :cond_33
    if-ne p1, v2, :cond_e

    .line 1503
    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->ACCESS_PASSWD_PERM_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    goto :goto_e

    :cond_38
    if-ne p2, v3, :cond_4e

    .line 1506
    sget-object p2, Lcom/uhf/api/cls/Reader$Lock_Obj;->LOCK_OBJECT_BANK1:Lcom/uhf/api/cls/Reader$Lock_Obj;

    if-nez p1, :cond_41

    .line 1508
    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK1_UNLOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    goto :goto_e

    :cond_41
    if-ne p1, v4, :cond_46

    .line 1510
    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK1_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    goto :goto_e

    :cond_46
    if-ne p1, v3, :cond_49

    return v5

    :cond_49
    if-ne p1, v2, :cond_e

    .line 1514
    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK1_PERM_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    goto :goto_e

    :cond_4e
    if-ne p2, v2, :cond_64

    .line 1517
    sget-object p2, Lcom/uhf/api/cls/Reader$Lock_Obj;->LOCK_OBJECT_BANK2:Lcom/uhf/api/cls/Reader$Lock_Obj;

    if-nez p1, :cond_57

    .line 1519
    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK2_UNLOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    goto :goto_e

    :cond_57
    if-ne p1, v4, :cond_5c

    .line 1521
    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK2_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    goto :goto_e

    :cond_5c
    if-ne p1, v3, :cond_5f

    return v5

    :cond_5f
    if-ne p1, v2, :cond_e

    .line 1525
    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK2_PERM_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    goto :goto_e

    :cond_64
    if-ne p2, v0, :cond_7a

    .line 1528
    sget-object p2, Lcom/uhf/api/cls/Reader$Lock_Obj;->LOCK_OBJECT_BANK3:Lcom/uhf/api/cls/Reader$Lock_Obj;

    if-nez p1, :cond_6d

    .line 1530
    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK3_UNLOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    goto :goto_e

    :cond_6d
    if-ne p1, v4, :cond_72

    .line 1532
    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK3_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    goto :goto_e

    :cond_72
    if-ne p1, v3, :cond_75

    return v5

    :cond_75
    if-ne p1, v2, :cond_e

    .line 1536
    sget-object v1, Lcom/uhf/api/cls/Reader$Lock_Type;->BANK3_PERM_LOCK:Lcom/uhf/api/cls/Reader$Lock_Type;

    goto :goto_e

    :cond_7a
    move-object p1, v1

    :goto_7b
    new-array v10, v0, [B

    const-string p2, ""

    .line 1540
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8e

    .line 1541
    sget-object p2, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, p3, v0, v10}, Lcom/uhf/api/cls/Reader;->Str2Hex(Ljava/lang/String;I[B)V

    .line 1546
    :cond_8e
    sget-object v6, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    iget-object p2, p0, Lcom/speedata/libuhf/XinLianQilian;->Rparams:Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

    iget v7, p2, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->opant:I

    .line 1547
    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$Lock_Obj;->value()I

    move-result p2

    int-to-byte v8, p2

    invoke-virtual {p1}, Lcom/uhf/api/cls/Reader$Lock_Type;->value()I

    move-result p1

    int-to-short v9, p1

    iget-object p1, p0, Lcom/speedata/libuhf/XinLianQilian;->Rparams:Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

    iget p1, p1, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->optime:I

    int-to-short v11, p1

    .line 1546
    invoke-virtual/range {v6 .. v11}, Lcom/uhf/api/cls/Reader;->LockTag(IBS[BS)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1549
    sget-object p2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_a9} :catch_1f

    if-eq p1, p2, :cond_ac

    return v5

    :cond_ac
    const/4 p1, 0x0

    return p1

    .line 1553
    :goto_ae
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v5
.end method

.method public startFastMode()I
    .registers 6

    const/4 v0, -0x1

    .line 1031
    :try_start_1
    iget-object v1, p0, Lcom/speedata/libuhf/XinLianQilian;->Rparams:Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

    iget-object v1, v1, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->uants:[I

    .line 1032
    sget-object v2, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    iget-object v3, p0, Lcom/speedata/libuhf/XinLianQilian;->Rparams:Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

    iget-object v3, v3, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->uants:[I

    array-length v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/uhf/api/cls/Reader;->AsyncStartReading([III)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 1033
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v1, v2, :cond_19

    const/4 v1, 0x1

    .line 1034
    iput-boolean v1, p0, Lcom/speedata/libuhf/XinLianQilian;->nostop:Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_19

    return v4

    :catch_19
    :cond_19
    return v0
.end method

.method public stopFastMode()I
    .registers 4

    const/4 v0, -0x1

    .line 1047
    :try_start_1
    sget-object v1, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader;->AsyncStopReading()Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 1048
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v1, v2, :cond_f

    const/4 v1, 0x0

    .line 1049
    iput-boolean v1, p0, Lcom/speedata/libuhf/XinLianQilian;->nostop:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_f

    return v1

    :catch_f
    :cond_f
    return v0
.end method

.method public writeArea(IIILjava/lang/String;[B)I
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    move-object/from16 v10, p5

    const-string v11, "ContentValues"

    const-string v2, "write_area: start22222"

    .line 547
    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, -0x1

    .line 549
    :try_start_e
    array-length v2, v10

    const/4 v13, 0x2

    rem-int/2addr v2, v13

    const/4 v3, -0x3

    if-eqz v2, :cond_15

    return v3

    .line 552
    :cond_15
    array-length v2, v10

    div-int/2addr v2, v13

    move/from16 v4, p3

    if-eq v2, v4, :cond_1c

    return v3

    :cond_1c
    const/4 v14, 0x4

    new-array v15, v14, [B

    const-string v2, ""

    .line 556
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 557
    sget-object v2, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3, v15}, Lcom/uhf/api/cls/Reader;->Str2Hex(Ljava/lang/String;I[B)V

    .line 559
    :cond_30
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/4 v0, 0x3

    const/16 v16, 0x3

    .line 562
    :goto_35
    sget-object v2, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    iget-object v3, v1, Lcom/speedata/libuhf/XinLianQilian;->Rparams:Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

    iget v3, v3, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->opant:I

    move/from16 v9, p1

    int-to-char v4, v9

    array-length v7, v10

    iget-object v5, v1, Lcom/speedata/libuhf/XinLianQilian;->Rparams:Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

    iget v5, v5, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->optime:I

    int-to-short v8, v5

    move/from16 v5, p2

    move-object/from16 v6, p5

    move/from16 v17, v8

    move-object v8, v15

    move/from16 v9, v17

    invoke-virtual/range {v2 .. v9}, Lcom/uhf/api/cls/Reader;->WriteTagData(ICI[BI[BS)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v2

    add-int/lit8 v3, v16, -0x1

    const/4 v4, 0x1

    if-ge v3, v4, :cond_57

    goto :goto_5b

    .line 569
    :cond_57
    sget-object v5, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v5, :cond_17c

    :goto_5b
    const-string v3, "write_area: end"

    .line 570
    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    new-instance v3, Lcom/speedata/libuhf/bean/SpdWriteData;

    invoke-direct {v3}, Lcom/speedata/libuhf/bean/SpdWriteData;-><init>()V

    .line 572
    sget-object v5, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/4 v6, 0x0

    if-ne v2, v5, :cond_72

    .line 573
    invoke-virtual {v3, v6}, Lcom/speedata/libuhf/bean/SpdWriteData;->setStatus(I)V

    .line 574
    invoke-direct {v1, v3}, Lcom/speedata/libuhf/XinLianQilian;->writeCallBack(Lcom/speedata/libuhf/bean/SpdWriteData;)V

    goto/16 :goto_17b

    .line 575
    :cond_72
    sget-object v5, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_IO_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v5, :cond_7e

    .line 576
    invoke-virtual {v3, v4}, Lcom/speedata/libuhf/bean/SpdWriteData;->setStatus(I)V

    .line 577
    invoke-direct {v1, v3}, Lcom/speedata/libuhf/XinLianQilian;->writeCallBack(Lcom/speedata/libuhf/bean/SpdWriteData;)V

    goto/16 :goto_17b

    .line 578
    :cond_7e
    sget-object v4, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INTERNAL_DEV_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v4, :cond_8a

    .line 579
    invoke-virtual {v3, v13}, Lcom/speedata/libuhf/bean/SpdWriteData;->setStatus(I)V

    .line 580
    invoke-direct {v1, v3}, Lcom/speedata/libuhf/XinLianQilian;->writeCallBack(Lcom/speedata/libuhf/bean/SpdWriteData;)V

    goto/16 :goto_17b

    .line 581
    :cond_8a
    sget-object v4, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v4, :cond_96

    .line 582
    invoke-virtual {v3, v0}, Lcom/speedata/libuhf/bean/SpdWriteData;->setStatus(I)V

    .line 583
    invoke-direct {v1, v3}, Lcom/speedata/libuhf/XinLianQilian;->writeCallBack(Lcom/speedata/libuhf/bean/SpdWriteData;)V

    goto/16 :goto_17b

    .line 584
    :cond_96
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_NO_TAG_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_a2

    .line 585
    invoke-virtual {v3, v14}, Lcom/speedata/libuhf/bean/SpdWriteData;->setStatus(I)V

    .line 586
    invoke-direct {v1, v3}, Lcom/speedata/libuhf/XinLianQilian;->writeCallBack(Lcom/speedata/libuhf/bean/SpdWriteData;)V

    goto/16 :goto_17b

    .line 587
    :cond_a2
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_M5E_FATAL_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_af

    const/4 v0, 0x5

    .line 588
    invoke-virtual {v3, v0}, Lcom/speedata/libuhf/bean/SpdWriteData;->setStatus(I)V

    .line 589
    invoke-direct {v1, v3}, Lcom/speedata/libuhf/XinLianQilian;->writeCallBack(Lcom/speedata/libuhf/bean/SpdWriteData;)V

    goto/16 :goto_17b

    .line 590
    :cond_af
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_NOT_SUPPORTED:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_bc

    const/4 v0, 0x6

    .line 591
    invoke-virtual {v3, v0}, Lcom/speedata/libuhf/bean/SpdWriteData;->setStatus(I)V

    .line 592
    invoke-direct {v1, v3}, Lcom/speedata/libuhf/XinLianQilian;->writeCallBack(Lcom/speedata/libuhf/bean/SpdWriteData;)V

    goto/16 :goto_17b

    .line 593
    :cond_bc
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_c9

    const/4 v0, 0x7

    .line 594
    invoke-virtual {v3, v0}, Lcom/speedata/libuhf/bean/SpdWriteData;->setStatus(I)V

    .line 595
    invoke-direct {v1, v3}, Lcom/speedata/libuhf/XinLianQilian;->writeCallBack(Lcom/speedata/libuhf/bean/SpdWriteData;)V

    goto/16 :goto_17b

    .line 596
    :cond_c9
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_READER_HANDLE:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_d7

    const/16 v0, 0x8

    .line 597
    invoke-virtual {v3, v0}, Lcom/speedata/libuhf/bean/SpdWriteData;->setStatus(I)V

    .line 598
    invoke-direct {v1, v3}, Lcom/speedata/libuhf/XinLianQilian;->writeCallBack(Lcom/speedata/libuhf/bean/SpdWriteData;)V

    goto/16 :goto_17b

    .line 599
    :cond_d7
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_HIGN_RETURN_LOSS:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_e5

    const/16 v0, 0x9

    .line 600
    invoke-virtual {v3, v0}, Lcom/speedata/libuhf/bean/SpdWriteData;->setStatus(I)V

    .line 601
    invoke-direct {v1, v3}, Lcom/speedata/libuhf/XinLianQilian;->writeCallBack(Lcom/speedata/libuhf/bean/SpdWriteData;)V

    goto/16 :goto_17b

    .line 602
    :cond_e5
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_TOO_MANY_RESET:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_f3

    const/16 v0, 0xa

    .line 603
    invoke-virtual {v3, v0}, Lcom/speedata/libuhf/bean/SpdWriteData;->setStatus(I)V

    .line 604
    invoke-direct {v1, v3}, Lcom/speedata/libuhf/XinLianQilian;->writeCallBack(Lcom/speedata/libuhf/bean/SpdWriteData;)V

    goto/16 :goto_17b

    .line 605
    :cond_f3
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_NO_ANTENNAS:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_101

    const/16 v0, 0xb

    .line 606
    invoke-virtual {v3, v0}, Lcom/speedata/libuhf/bean/SpdWriteData;->setStatus(I)V

    .line 607
    invoke-direct {v1, v3}, Lcom/speedata/libuhf/XinLianQilian;->writeCallBack(Lcom/speedata/libuhf/bean/SpdWriteData;)V

    goto/16 :goto_17b

    .line 608
    :cond_101
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_HIGH_TEMPERATURE:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_10f

    const/16 v0, 0xc

    .line 609
    invoke-virtual {v3, v0}, Lcom/speedata/libuhf/bean/SpdWriteData;->setStatus(I)V

    .line 610
    invoke-direct {v1, v3}, Lcom/speedata/libuhf/XinLianQilian;->writeCallBack(Lcom/speedata/libuhf/bean/SpdWriteData;)V

    goto/16 :goto_17b

    .line 611
    :cond_10f
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_READER_DOWN:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_11c

    const/16 v0, 0xd

    .line 612
    invoke-virtual {v3, v0}, Lcom/speedata/libuhf/bean/SpdWriteData;->setStatus(I)V

    .line 613
    invoke-direct {v1, v3}, Lcom/speedata/libuhf/XinLianQilian;->writeCallBack(Lcom/speedata/libuhf/bean/SpdWriteData;)V

    goto :goto_17b

    .line 614
    :cond_11c
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_UNKNOWN_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_129

    const/16 v0, 0xe

    .line 615
    invoke-virtual {v3, v0}, Lcom/speedata/libuhf/bean/SpdWriteData;->setStatus(I)V

    .line 616
    invoke-direct {v1, v3}, Lcom/speedata/libuhf/XinLianQilian;->writeCallBack(Lcom/speedata/libuhf/bean/SpdWriteData;)V

    goto :goto_17b

    .line 617
    :cond_129
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->M6E_INIT_FAILED:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_136

    const/16 v0, 0xf

    .line 618
    invoke-virtual {v3, v0}, Lcom/speedata/libuhf/bean/SpdWriteData;->setStatus(I)V

    .line 619
    invoke-direct {v1, v3}, Lcom/speedata/libuhf/XinLianQilian;->writeCallBack(Lcom/speedata/libuhf/bean/SpdWriteData;)V

    goto :goto_17b

    .line 620
    :cond_136
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_EXECING:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_143

    const/16 v0, 0x10

    .line 621
    invoke-virtual {v3, v0}, Lcom/speedata/libuhf/bean/SpdWriteData;->setStatus(I)V

    .line 622
    invoke-direct {v1, v3}, Lcom/speedata/libuhf/XinLianQilian;->writeCallBack(Lcom/speedata/libuhf/bean/SpdWriteData;)V

    goto :goto_17b

    .line 623
    :cond_143
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_UNKNOWN_READER_TYPE:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_150

    const/16 v0, 0x11

    .line 624
    invoke-virtual {v3, v0}, Lcom/speedata/libuhf/bean/SpdWriteData;->setStatus(I)V

    .line 625
    invoke-direct {v1, v3}, Lcom/speedata/libuhf/XinLianQilian;->writeCallBack(Lcom/speedata/libuhf/bean/SpdWriteData;)V

    goto :goto_17b

    .line 626
    :cond_150
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_INVALID:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v4, 0x12

    if-ne v2, v0, :cond_15d

    .line 627
    invoke-virtual {v3, v4}, Lcom/speedata/libuhf/bean/SpdWriteData;->setStatus(I)V

    .line 628
    invoke-direct {v1, v3}, Lcom/speedata/libuhf/XinLianQilian;->writeCallBack(Lcom/speedata/libuhf/bean/SpdWriteData;)V

    goto :goto_17b

    .line 629
    :cond_15d
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_BY_FAILED_RESET_MODLUE:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_168

    .line 630
    invoke-virtual {v3, v4}, Lcom/speedata/libuhf/bean/SpdWriteData;->setStatus(I)V

    .line 631
    invoke-direct {v1, v3}, Lcom/speedata/libuhf/XinLianQilian;->writeCallBack(Lcom/speedata/libuhf/bean/SpdWriteData;)V

    goto :goto_17b

    .line 632
    :cond_168
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_MAX_ERR_NUM:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v4, 0x14

    if-ne v2, v0, :cond_175

    .line 633
    invoke-virtual {v3, v4}, Lcom/speedata/libuhf/bean/SpdWriteData;->setStatus(I)V

    .line 634
    invoke-direct {v1, v3}, Lcom/speedata/libuhf/XinLianQilian;->writeCallBack(Lcom/speedata/libuhf/bean/SpdWriteData;)V

    goto :goto_17b

    .line 636
    :cond_175
    invoke-virtual {v3, v4}, Lcom/speedata/libuhf/bean/SpdWriteData;->setStatus(I)V

    .line 637
    invoke-direct {v1, v3}, Lcom/speedata/libuhf/XinLianQilian;->writeCallBack(Lcom/speedata/libuhf/bean/SpdWriteData;)V
    :try_end_17b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17b} :catch_180

    :goto_17b
    return v6

    :cond_17c
    move/from16 v16, v3

    goto/16 :goto_35

    :catch_180
    move-exception v0

    .line 640
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v12
.end method

.method public writeMonzaQtTag(I[BIII[B)I
    .registers 7

    const/4 p1, -0x1

    return p1
.end method

.method public writeMonzaQtTagSync(I[BIII[BILcom/uhf/structures/RW_Params;)I
    .registers 9

    const/4 p1, -0x1

    return p1
.end method

.method public write_area(IIILjava/lang/String;[B)I
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    move-object/from16 v10, p5

    const-string v11, "ContentValues"

    const-string v2, "write_area: start22222"

    .line 1264
    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, -0x1

    .line 1266
    :try_start_e
    array-length v2, v10

    const/4 v13, 0x2

    rem-int/2addr v2, v13

    const/4 v3, -0x3

    if-eqz v2, :cond_15

    return v3

    .line 1269
    :cond_15
    array-length v2, v10

    div-int/2addr v2, v13

    move/from16 v4, p3

    if-eq v2, v4, :cond_1c

    return v3

    :cond_1c
    const/4 v14, 0x4

    new-array v15, v14, [B

    const-string v2, ""

    .line 1273
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 1274
    sget-object v2, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3, v15}, Lcom/uhf/api/cls/Reader;->Str2Hex(Ljava/lang/String;I[B)V

    .line 1276
    :cond_30
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/4 v0, 0x3

    const/16 v16, 0x3

    .line 1279
    :goto_35
    sget-object v2, Lcom/speedata/libuhf/XinLianQilian;->Mreader:Lcom/uhf/api/cls/Reader;

    iget-object v3, v1, Lcom/speedata/libuhf/XinLianQilian;->Rparams:Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

    iget v3, v3, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->opant:I

    move/from16 v9, p1

    int-to-char v4, v9

    array-length v7, v10

    iget-object v5, v1, Lcom/speedata/libuhf/XinLianQilian;->Rparams:Lcom/speedata/libuhf/XinLianQilian$ReaderParams;

    iget v5, v5, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->optime:I

    int-to-short v8, v5

    move/from16 v5, p2

    move-object/from16 v6, p5

    move/from16 v17, v8

    move-object v8, v15

    move/from16 v9, v17

    invoke-virtual/range {v2 .. v9}, Lcom/uhf/api/cls/Reader;->WriteTagData(ICI[BI[BS)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v2

    add-int/lit8 v3, v16, -0x1

    const/4 v4, 0x1

    if-ge v3, v4, :cond_57

    goto :goto_5b

    .line 1286
    :cond_57
    sget-object v5, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v5, :cond_e7

    :goto_5b
    const-string v3, "write_area: end"

    .line 1287
    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v3, :cond_66

    const/4 v0, 0x0

    return v0

    .line 1290
    :cond_66
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_IO_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v3, :cond_6b

    return v4

    .line 1292
    :cond_6b
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INTERNAL_DEV_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v3, :cond_70

    return v13

    .line 1294
    :cond_70
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v3, :cond_75

    return v0

    .line 1296
    :cond_75
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_NO_TAG_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_7a

    return v14

    .line 1298
    :cond_7a
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_M5E_FATAL_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_80

    const/4 v0, 0x5

    return v0

    .line 1300
    :cond_80
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_NOT_SUPPORTED:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_86

    const/4 v0, 0x6

    return v0

    .line 1302
    :cond_86
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_8c

    const/4 v0, 0x7

    return v0

    .line 1304
    :cond_8c
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_READER_HANDLE:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_93

    const/16 v0, 0x8

    return v0

    .line 1306
    :cond_93
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_HIGN_RETURN_LOSS:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_9a

    const/16 v0, 0x9

    return v0

    .line 1308
    :cond_9a
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_TOO_MANY_RESET:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_a1

    const/16 v0, 0xa

    return v0

    .line 1310
    :cond_a1
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_NO_ANTENNAS:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_a8

    const/16 v0, 0xb

    return v0

    .line 1312
    :cond_a8
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_HIGH_TEMPERATURE:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_af

    const/16 v0, 0xc

    return v0

    .line 1314
    :cond_af
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_READER_DOWN:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_b6

    const/16 v0, 0xd

    return v0

    .line 1316
    :cond_b6
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_UNKNOWN_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_bd

    const/16 v0, 0xe

    return v0

    .line 1318
    :cond_bd
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->M6E_INIT_FAILED:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_c4

    const/16 v0, 0xf

    return v0

    .line 1320
    :cond_c4
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_EXECING:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_cb

    const/16 v0, 0x10

    return v0

    .line 1322
    :cond_cb
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_UNKNOWN_READER_TYPE:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_d2

    const/16 v0, 0x11

    return v0

    .line 1324
    :cond_d2
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_INVALID:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_d9

    const/16 v0, 0x12

    return v0

    .line 1326
    :cond_d9
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_BY_FAILED_RESET_MODLUE:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_e0

    const/16 v0, 0x13

    return v0

    .line 1328
    :cond_e0
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_MAX_ERR_NUM:Lcom/uhf/api/cls/Reader$READER_ERR;
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e2} :catch_eb

    const/16 v3, 0x14

    if-ne v2, v0, :cond_e6

    :cond_e6
    return v3

    :cond_e7
    move/from16 v16, v3

    goto/16 :goto_35

    :catch_eb
    move-exception v0

    .line 1334
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v12
.end method

.method public write_area(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 14

    const-string v0, "ContentValues"

    const-string v1, "write_area: start11111"

    .line 1341
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_f

    return v1

    .line 1345
    :cond_f
    invoke-static {p3}, Lcom/speedata/libuhf/utils/ByteCharStrUtils;->IsHex(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    return v1

    :cond_16
    const/16 v0, 0x10

    .line 1351
    :try_start_18
    invoke-static {p2, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    const/16 p2, 0xa

    .line 1352
    invoke-static {p4, p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_22} :catch_2b

    move-object v2, p0

    move v3, p1

    move-object v6, p3

    move-object v7, p5

    .line 1356
    invoke-virtual/range {v2 .. v7}, Lcom/speedata/libuhf/XinLianQilian;->write_card(IIILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :catch_2b
    return v1
.end method

.method public write_card(IIILjava/lang/String;Ljava/lang/String;)I
    .registers 12

    .line 1362
    invoke-static {p5}, Lcom/speedata/libuhf/utils/ByteCharStrUtils;->toByteArray(Ljava/lang/String;)[B

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 1363
    invoke-virtual/range {v0 .. v5}, Lcom/speedata/libuhf/XinLianQilian;->write_area(IIILjava/lang/String;[B)I

    move-result p1

    return p1
.end method
