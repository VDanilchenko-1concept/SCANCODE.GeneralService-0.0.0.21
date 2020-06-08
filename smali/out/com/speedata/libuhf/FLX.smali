.class public Lcom/speedata/libuhf/FLX;
.super Ljava/lang/Object;
.source "FLX.java"

# interfaces
.implements Lcom/speedata/libuhf/IUHFService;
.implements Lcom/uhf/structures/OnInventoryListener;
.implements Lcom/uhf/structures/OnReadWriteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/speedata/libuhf/FLX$ReadTimeOutThread;,
        Lcom/speedata/libuhf/FLX$LockTimeOutThread;,
        Lcom/speedata/libuhf/FLX$TimeOutThread;
    }
.end annotation


# static fields
.field public static final InvAddrType:I = 0x1

.field public static final InvModeType:I = 0x0

.field public static final InvSizeType:I = 0x2

.field private static final va:[I

.field private static final vp:[I


# instance fields
.field public final ACCESS_PW_L:I

.field private final ANTENNA_P_MAX:I

.field private final ANTENNA_P_MIN:I

.field public final EPC_L:I

.field public final KILL_PW_L:I

.field public final LOCK:I

.field public final P_LOCK:I

.field public final P_UNLOCK:I

.field public final TID_L:I

.field public final UNLOCK:I

.field public final USER_L:I

.field private epcData:[B

.field private h:Landroid/os/Handler;

.field private volatile isLockOutTime:Z

.field private volatile isLockSuccess:Z

.field private volatile isReadOutTime:Z

.field private volatile isReadSuccess:Z

.field private volatile isWriteOutTime:Z

.field private volatile isWriteSuccess:Z

.field private lk:Lcom/uhf/linkage/Linkage;

.field private lockStatus:I

.field private mContext:Landroid/content/Context;

.field private mRead:Lcom/speedata/libuhf/utils/ReadBean;

.field private newUHFDeviceControl:Landroid/serialport/DeviceControlSpd;

.field private onInventoryListener:Lcom/speedata/libuhf/interfaces/OnSpdInventoryListener;

.field private onSpdReadListener:Lcom/speedata/libuhf/interfaces/OnSpdReadListener;

.field private onSpdWriteListener:Lcom/speedata/libuhf/interfaces/OnSpdWriteListener;

.field private pw:Landroid/serialport/DeviceControlSpd;

.field private type:I

.field private writeStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 845
    sget-object v2, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;->ACCESSIBLE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

    invoke-virtual {v2}, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;->getValue()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    sget-object v2, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;->SECURED_ACCESSIBLE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

    .line 846
    invoke-virtual {v2}, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;->getValue()I

    move-result v2

    const/4 v4, 0x1

    aput v2, v1, v4

    sget-object v2, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;->ALWAYS_ACCESSIBLE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

    .line 847
    invoke-virtual {v2}, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;->getValue()I

    move-result v2

    const/4 v5, 0x2

    aput v2, v1, v5

    sget-object v2, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;->ALWAYS_NOT_ACCESSIBLE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

    .line 848
    invoke-virtual {v2}, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;->getValue()I

    move-result v2

    const/4 v6, 0x3

    aput v2, v1, v6

    sput-object v1, Lcom/speedata/libuhf/FLX;->vp:[I

    new-array v0, v0, [I

    .line 849
    sget-object v1, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_MEM_PERM;->WRITEABLE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_MEM_PERM;

    invoke-virtual {v1}, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_MEM_PERM;->getValue()I

    move-result v1

    aput v1, v0, v3

    sget-object v1, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_MEM_PERM;->SECURED_WRITEABLE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_MEM_PERM;

    .line 850
    invoke-virtual {v1}, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_MEM_PERM;->getValue()I

    move-result v1

    aput v1, v0, v4

    sget-object v1, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_MEM_PERM;->ALWAYS_WRITEABLE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_MEM_PERM;

    .line 851
    invoke-virtual {v1}, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_MEM_PERM;->getValue()I

    move-result v1

    aput v1, v0, v5

    sget-object v1, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_MEM_PERM;->ALWAYS_NOT_WRITEABLE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_MEM_PERM;

    .line 852
    invoke-virtual {v1}, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_MEM_PERM;->getValue()I

    move-result v1

    aput v1, v0, v6

    sput-object v0, Lcom/speedata/libuhf/FLX;->va:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 8

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/speedata/libuhf/FLX;->lk:Lcom/uhf/linkage/Linkage;

    .line 52
    iput-object v0, p0, Lcom/speedata/libuhf/FLX;->h:Landroid/os/Handler;

    .line 53
    iput-object v0, p0, Lcom/speedata/libuhf/FLX;->pw:Landroid/serialport/DeviceControlSpd;

    .line 54
    iput-object v0, p0, Lcom/speedata/libuhf/FLX;->mContext:Landroid/content/Context;

    .line 55
    iput-object v0, p0, Lcom/speedata/libuhf/FLX;->mRead:Lcom/speedata/libuhf/utils/ReadBean;

    .line 56
    iput-object v0, p0, Lcom/speedata/libuhf/FLX;->newUHFDeviceControl:Landroid/serialport/DeviceControlSpd;

    const/4 v1, 0x0

    .line 58
    iput-boolean v1, p0, Lcom/speedata/libuhf/FLX;->isReadOutTime:Z

    .line 59
    iput-boolean v1, p0, Lcom/speedata/libuhf/FLX;->isReadSuccess:Z

    .line 62
    iput-boolean v1, p0, Lcom/speedata/libuhf/FLX;->isLockOutTime:Z

    .line 63
    iput-boolean v1, p0, Lcom/speedata/libuhf/FLX;->isLockSuccess:Z

    .line 68
    iput v1, p0, Lcom/speedata/libuhf/FLX;->type:I

    .line 69
    iput-boolean v1, p0, Lcom/speedata/libuhf/FLX;->isWriteOutTime:Z

    .line 70
    iput-boolean v1, p0, Lcom/speedata/libuhf/FLX;->isWriteSuccess:Z

    .line 432
    iput-object v0, p0, Lcom/speedata/libuhf/FLX;->onInventoryListener:Lcom/speedata/libuhf/interfaces/OnSpdInventoryListener;

    .line 433
    iput-object v0, p0, Lcom/speedata/libuhf/FLX;->onSpdReadListener:Lcom/speedata/libuhf/interfaces/OnSpdReadListener;

    .line 434
    iput-object v0, p0, Lcom/speedata/libuhf/FLX;->onSpdWriteListener:Lcom/speedata/libuhf/interfaces/OnSpdWriteListener;

    .line 834
    iput v1, p0, Lcom/speedata/libuhf/FLX;->KILL_PW_L:I

    const/4 v0, 0x1

    .line 835
    iput v0, p0, Lcom/speedata/libuhf/FLX;->ACCESS_PW_L:I

    const/4 v2, 0x2

    .line 836
    iput v2, p0, Lcom/speedata/libuhf/FLX;->EPC_L:I

    const/4 v3, 0x3

    .line 837
    iput v3, p0, Lcom/speedata/libuhf/FLX;->TID_L:I

    const/4 v4, 0x4

    .line 838
    iput v4, p0, Lcom/speedata/libuhf/FLX;->USER_L:I

    .line 840
    iput v1, p0, Lcom/speedata/libuhf/FLX;->UNLOCK:I

    .line 841
    iput v0, p0, Lcom/speedata/libuhf/FLX;->LOCK:I

    .line 842
    iput v2, p0, Lcom/speedata/libuhf/FLX;->P_UNLOCK:I

    .line 843
    iput v3, p0, Lcom/speedata/libuhf/FLX;->P_LOCK:I

    const/16 v0, 0xa

    .line 1214
    iput v0, p0, Lcom/speedata/libuhf/FLX;->ANTENNA_P_MIN:I

    const/16 v0, 0x21

    .line 1215
    iput v0, p0, Lcom/speedata/libuhf/FLX;->ANTENNA_P_MAX:I

    .line 73
    iput-object p1, p0, Lcom/speedata/libuhf/FLX;->mContext:Landroid/content/Context;

    .line 74
    iput p2, p0, Lcom/speedata/libuhf/FLX;->type:I

    return-void
.end method

.method private NoXmlopenDev()I
    .registers 21

    move-object/from16 v1, p0

    .line 277
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "4.4.2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "SD100T"

    const-string v3, "R66"

    const-string v5, "SD55"

    const-string v6, "C6000"

    const-string v7, "DXD60RT"

    const-string v8, "SC60"

    const-string v9, "SD60"

    const-string v10, "MST-II-YN"

    const-string v11, "SD60RT"

    const-string v12, "SD100"

    const-string v13, "ro.product.model"

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v0, :cond_3b

    .line 279
    :try_start_24
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    sget-object v4, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    new-array v14, v14, [I

    const/16 v16, 0x40

    aput v16, v14, v15

    invoke-direct {v0, v4, v14}, Landroid/serialport/DeviceControlSpd;-><init>(Landroid/serialport/DeviceControlSpd$PowerType;[I)V

    iput-object v0, v1, Lcom/speedata/libuhf/FLX;->pw:Landroid/serialport/DeviceControlSpd;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_33} :catch_35

    goto/16 :goto_218

    :catch_35
    move-exception v0

    .line 281
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_218

    .line 284
    :cond_3b
    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1fb

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1fb

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1fb

    const-string v4, "SD55L"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1fb

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1fb

    .line 286
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1fb

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6d

    goto/16 :goto_1fb

    .line 293
    :cond_6d
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1c3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7b

    goto/16 :goto_1c3

    :cond_7b
    const-string v4, "KT80"

    .line 307
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1ab

    const-string v4, "W6"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1ab

    const-string v4, "N80"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1ab

    const-string v4, "Biowolf LE"

    .line 308
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1ab

    const-string v4, "FC-PK80"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1ab

    const-string v4, "FC-K80"

    .line 309
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1ab

    const-string v4, "T80"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1ab

    const-string v4, "80"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_bd

    goto/16 :goto_1ab

    :cond_bd
    const-string v14, "55"

    .line 315
    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    const/4 v15, 0x3

    if-nez v14, :cond_137

    const-string v14, "W2H"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_cf

    goto :goto_137

    .line 340
    :cond_cf
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f2

    .line 343
    :try_start_d5
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    const-string v4, "/sys/class/switch/app_switch/app_state"

    invoke-direct {v0, v4}, Landroid/serialport/DeviceControlSpd;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/speedata/libuhf/FLX;->pw:Landroid/serialport/DeviceControlSpd;

    const-string v4, "uhf_open"

    .line 344
    invoke-virtual {v0, v4}, Landroid/serialport/DeviceControlSpd;->gtPower(Ljava/lang/String;)V

    .line 345
    iget-object v0, v1, Lcom/speedata/libuhf/FLX;->pw:Landroid/serialport/DeviceControlSpd;

    const-string v4, "open"

    invoke-virtual {v0, v4}, Landroid/serialport/DeviceControlSpd;->gtPower(Ljava/lang/String;)V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_ea} :catch_ec

    goto/16 :goto_218

    :catch_ec
    move-exception v0

    .line 347
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_218

    .line 350
    :cond_f2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 352
    :try_start_f8
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    sget-object v4, Landroid/serialport/DeviceControlSpd$PowerType;->NEW_MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    new-array v14, v15, [I

    const/16 v15, 0x34

    const/16 v18, 0x0

    aput v15, v14, v18

    const/16 v15, 0x59

    const/16 v16, 0x1

    aput v15, v14, v16

    const/16 v15, 0x47

    const/16 v16, 0x2

    aput v15, v14, v16

    invoke-direct {v0, v4, v14}, Landroid/serialport/DeviceControlSpd;-><init>(Landroid/serialport/DeviceControlSpd$PowerType;[I)V

    iput-object v0, v1, Lcom/speedata/libuhf/FLX;->pw:Landroid/serialport/DeviceControlSpd;
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_115} :catch_117

    goto/16 :goto_218

    :catch_117
    move-exception v0

    .line 354
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_218

    .line 359
    :cond_11d
    :try_start_11d
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    sget-object v4, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/16 v15, 0x5e

    const/16 v16, 0x0

    aput v15, v14, v16

    invoke-direct {v0, v4, v14}, Landroid/serialport/DeviceControlSpd;-><init>(Landroid/serialport/DeviceControlSpd$PowerType;[I)V

    iput-object v0, v1, Lcom/speedata/libuhf/FLX;->pw:Landroid/serialport/DeviceControlSpd;
    :try_end_12f
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_12f} :catch_131

    goto/16 :goto_218

    :catch_131
    move-exception v0

    .line 361
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_218

    .line 316
    :cond_137
    :goto_137
    invoke-direct/range {p0 .. p0}, Lcom/speedata/libuhf/FLX;->readEm55()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v14, 0x7

    const/16 v19, 0x58

    if-eqz v4, :cond_164

    .line 319
    :try_start_144
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    sget-object v4, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN_AND_EXPAND:Landroid/serialport/DeviceControlSpd$PowerType;

    new-array v15, v15, [I

    const/16 v18, 0x0

    aput v19, v15, v18

    const/16 v16, 0x1

    aput v14, v15, v16

    const/4 v14, 0x5

    const/16 v16, 0x2

    aput v14, v15, v16

    invoke-direct {v0, v4, v15}, Landroid/serialport/DeviceControlSpd;-><init>(Landroid/serialport/DeviceControlSpd$PowerType;[I)V

    iput-object v0, v1, Lcom/speedata/libuhf/FLX;->pw:Landroid/serialport/DeviceControlSpd;
    :try_end_15c
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_15c} :catch_15e

    goto/16 :goto_218

    :catch_15e
    move-exception v0

    .line 322
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_218

    :cond_164
    const-string v4, "48"

    .line 325
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18c

    const-string v4, "81"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_175

    goto :goto_18c

    .line 334
    :cond_175
    :try_start_175
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    sget-object v4, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v19, v14, v15

    invoke-direct {v0, v4, v14}, Landroid/serialport/DeviceControlSpd;-><init>(Landroid/serialport/DeviceControlSpd$PowerType;[I)V

    iput-object v0, v1, Lcom/speedata/libuhf/FLX;->pw:Landroid/serialport/DeviceControlSpd;
    :try_end_184
    .catch Ljava/io/IOException; {:try_start_175 .. :try_end_184} :catch_186

    goto/16 :goto_218

    :catch_186
    move-exception v0

    .line 336
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_218

    .line 327
    :cond_18c
    :goto_18c
    :try_start_18c
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    sget-object v4, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN_AND_EXPAND:Landroid/serialport/DeviceControlSpd$PowerType;

    new-array v15, v15, [I

    const/16 v18, 0x0

    aput v19, v15, v18

    const/16 v16, 0x1

    aput v14, v15, v16

    const/4 v14, 0x6

    const/16 v16, 0x2

    aput v14, v15, v16

    invoke-direct {v0, v4, v15}, Landroid/serialport/DeviceControlSpd;-><init>(Landroid/serialport/DeviceControlSpd$PowerType;[I)V

    iput-object v0, v1, Lcom/speedata/libuhf/FLX;->pw:Landroid/serialport/DeviceControlSpd;
    :try_end_1a4
    .catch Ljava/io/IOException; {:try_start_18c .. :try_end_1a4} :catch_1a6

    goto/16 :goto_218

    :catch_1a6
    move-exception v0

    .line 330
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_218

    .line 311
    :cond_1ab
    :goto_1ab
    :try_start_1ab
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    sget-object v4, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/16 v15, 0x77

    const/16 v16, 0x0

    aput v15, v14, v16

    invoke-direct {v0, v4, v14}, Landroid/serialport/DeviceControlSpd;-><init>(Landroid/serialport/DeviceControlSpd$PowerType;[I)V

    iput-object v0, v1, Lcom/speedata/libuhf/FLX;->pw:Landroid/serialport/DeviceControlSpd;
    :try_end_1bd
    .catch Ljava/io/IOException; {:try_start_1ab .. :try_end_1bd} :catch_1be

    goto :goto_218

    :catch_1be
    move-exception v0

    .line 313
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_218

    .line 294
    :cond_1c3
    :goto_1c3
    invoke-static {}, Lcom/speedata/libuhf/utils/ConfigUtils;->getApiVersion()I

    move-result v0

    const/16 v4, 0x17

    if-le v0, v4, :cond_1e3

    .line 296
    :try_start_1cb
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    sget-object v4, Landroid/serialport/DeviceControlSpd$PowerType;->NEW_MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/16 v15, 0xc

    const/16 v16, 0x0

    aput v15, v14, v16

    invoke-direct {v0, v4, v14}, Landroid/serialport/DeviceControlSpd;-><init>(Landroid/serialport/DeviceControlSpd$PowerType;[I)V

    iput-object v0, v1, Lcom/speedata/libuhf/FLX;->pw:Landroid/serialport/DeviceControlSpd;
    :try_end_1dd
    .catch Ljava/io/IOException; {:try_start_1cb .. :try_end_1dd} :catch_1de

    goto :goto_218

    :catch_1de
    move-exception v0

    .line 298
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_218

    .line 302
    :cond_1e3
    :try_start_1e3
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    sget-object v4, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/16 v15, 0x80

    const/16 v16, 0x0

    aput v15, v14, v16

    invoke-direct {v0, v4, v14}, Landroid/serialport/DeviceControlSpd;-><init>(Landroid/serialport/DeviceControlSpd$PowerType;[I)V

    iput-object v0, v1, Lcom/speedata/libuhf/FLX;->pw:Landroid/serialport/DeviceControlSpd;
    :try_end_1f5
    .catch Ljava/io/IOException; {:try_start_1e3 .. :try_end_1f5} :catch_1f6

    goto :goto_218

    :catch_1f6
    move-exception v0

    .line 304
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_218

    .line 289
    :cond_1fb
    :goto_1fb
    :try_start_1fb
    new-instance v0, Landroid/serialport/DeviceControlSpd;

    sget-object v4, Landroid/serialport/DeviceControlSpd$PowerType;->EXPAND:Landroid/serialport/DeviceControlSpd$PowerType;

    const/4 v14, 0x2

    new-array v14, v14, [I

    const/16 v15, 0x9

    const/16 v17, 0x0

    aput v15, v14, v17

    const/16 v15, 0xe

    const/16 v16, 0x1

    aput v15, v14, v16

    invoke-direct {v0, v4, v14}, Landroid/serialport/DeviceControlSpd;-><init>(Landroid/serialport/DeviceControlSpd$PowerType;[I)V

    iput-object v0, v1, Lcom/speedata/libuhf/FLX;->pw:Landroid/serialport/DeviceControlSpd;
    :try_end_213
    .catch Ljava/io/IOException; {:try_start_1fb .. :try_end_213} :catch_214

    goto :goto_218

    :catch_214
    move-exception v0

    .line 291
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 366
    :goto_218
    :try_start_218
    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_231

    .line 367
    iget-object v0, v1, Lcom/speedata/libuhf/FLX;->pw:Landroid/serialport/DeviceControlSpd;

    invoke-virtual {v0}, Landroid/serialport/DeviceControlSpd;->PowerOffDevice()V

    .line 368
    iget-object v0, v1, Lcom/speedata/libuhf/FLX;->pw:Landroid/serialport/DeviceControlSpd;

    invoke-virtual {v0}, Landroid/serialport/DeviceControlSpd;->PowerOnDevice()V
    :try_end_22c
    .catch Ljava/io/IOException; {:try_start_218 .. :try_end_22c} :catch_22d

    goto :goto_231

    :catch_22d
    move-exception v0

    .line 371
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_231
    :goto_231
    const-wide/16 v14, 0x14

    .line 374
    invoke-static {v14, v15}, Landroid/os/SystemClock;->sleep(J)V

    .line 376
    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v11, "/dev/ttyMT0"

    if-nez v4, :cond_2af

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2af

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2af

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2af

    .line 378
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2af

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2af

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_267

    goto :goto_2af

    .line 380
    :cond_267
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "/dev/ttyMT2"

    if-nez v2, :cond_295

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_276

    goto :goto_295

    .line 386
    :cond_276
    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28c

    const-wide/16 v2, 0xf0

    .line 387
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v0

    const-string v2, "/dev/ttyHSL2"

    invoke-virtual {v0, v2}, Lcom/uhf/linkage/Linkage;->open_serial(Ljava/lang/String;)I

    move-result v0

    goto :goto_2b7

    .line 390
    :cond_28c
    invoke-virtual/range {p0 .. p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/uhf/linkage/Linkage;->open_serial(Ljava/lang/String;)I

    move-result v0

    goto :goto_2b7

    .line 381
    :cond_295
    :goto_295
    invoke-static {}, Lcom/speedata/libuhf/utils/ConfigUtils;->getApiVersion()I

    move-result v0

    const/16 v2, 0x17

    if-le v0, v2, :cond_2a6

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/uhf/linkage/Linkage;->open_serial(Ljava/lang/String;)I

    move-result v0

    goto :goto_2b7

    .line 384
    :cond_2a6
    invoke-virtual/range {p0 .. p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/uhf/linkage/Linkage;->open_serial(Ljava/lang/String;)I

    move-result v0

    goto :goto_2b7

    .line 379
    :cond_2af
    :goto_2af
    invoke-virtual/range {p0 .. p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/uhf/linkage/Linkage;->open_serial(Ljava/lang/String;)I

    move-result v0

    :goto_2b7
    if-nez v0, :cond_2bb

    const/4 v2, 0x0

    return v2

    :cond_2bb
    const/4 v0, -0x1

    return v0
.end method

.method static synthetic access$002(Lcom/speedata/libuhf/FLX;Z)Z
    .registers 2

    .line 50
    iput-boolean p1, p0, Lcom/speedata/libuhf/FLX;->isWriteOutTime:Z

    return p1
.end method

.method static synthetic access$102(Lcom/speedata/libuhf/FLX;Z)Z
    .registers 2

    .line 50
    iput-boolean p1, p0, Lcom/speedata/libuhf/FLX;->isLockOutTime:Z

    return p1
.end method

.method static synthetic access$202(Lcom/speedata/libuhf/FLX;Z)Z
    .registers 2

    .line 50
    iput-boolean p1, p0, Lcom/speedata/libuhf/FLX;->isReadOutTime:Z

    return p1
.end method

.method private getOnInventoryListener()Lcom/speedata/libuhf/interfaces/OnSpdInventoryListener;
    .registers 2

    .line 447
    iget-object v0, p0, Lcom/speedata/libuhf/FLX;->onInventoryListener:Lcom/speedata/libuhf/interfaces/OnSpdInventoryListener;

    return-object v0
.end method

.method private getOnReadListener()Lcom/speedata/libuhf/interfaces/OnSpdReadListener;
    .registers 2

    .line 484
    iget-object v0, p0, Lcom/speedata/libuhf/FLX;->onSpdReadListener:Lcom/speedata/libuhf/interfaces/OnSpdReadListener;

    return-object v0
.end method

.method private getOnWriteListener()Lcom/speedata/libuhf/interfaces/OnSpdWriteListener;
    .registers 2

    .line 517
    iget-object v0, p0, Lcom/speedata/libuhf/FLX;->onSpdWriteListener:Lcom/speedata/libuhf/interfaces/OnSpdWriteListener;

    return-object v0
.end method

.method private inventoryCallBack(Lcom/speedata/libuhf/bean/SpdInventoryData;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 451
    invoke-direct {p0}, Lcom/speedata/libuhf/FLX;->getOnInventoryListener()Lcom/speedata/libuhf/interfaces/OnSpdInventoryListener;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 452
    invoke-direct {p0}, Lcom/speedata/libuhf/FLX;->getOnInventoryListener()Lcom/speedata/libuhf/interfaces/OnSpdInventoryListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/speedata/libuhf/interfaces/OnSpdInventoryListener;->getInventoryData(Lcom/speedata/libuhf/bean/SpdInventoryData;)V

    :cond_f
    return-void
.end method

.method private readCallBack(Lcom/speedata/libuhf/bean/SpdReadData;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 488
    invoke-direct {p0}, Lcom/speedata/libuhf/FLX;->getOnReadListener()Lcom/speedata/libuhf/interfaces/OnSpdReadListener;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 489
    invoke-direct {p0}, Lcom/speedata/libuhf/FLX;->getOnReadListener()Lcom/speedata/libuhf/interfaces/OnSpdReadListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/speedata/libuhf/interfaces/OnSpdReadListener;->getReadData(Lcom/speedata/libuhf/bean/SpdReadData;)V

    :cond_f
    return-void
.end method

.method private readEm55()Ljava/lang/String;
    .registers 4

    .line 263
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/misc/aw9523/gpio"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 265
    :try_start_8
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 266
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 267
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception v0

    .line 270
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 272
    :goto_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readEm55state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UHF"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private read_card(IIILjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 956
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/speedata/libuhf/FLX;->read_area(IIILjava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 960
    :cond_8
    invoke-static {p1, p3}, Lcom/speedata/libuhf/utils/StringUtils;->byteToHexString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private writeCallBack(Lcom/speedata/libuhf/bean/SpdWriteData;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 521
    invoke-direct {p0}, Lcom/speedata/libuhf/FLX;->getOnWriteListener()Lcom/speedata/libuhf/interfaces/OnSpdWriteListener;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 522
    invoke-direct {p0}, Lcom/speedata/libuhf/FLX;->getOnWriteListener()Lcom/speedata/libuhf/interfaces/OnSpdWriteListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/speedata/libuhf/interfaces/OnSpdWriteListener;->getWriteData(Lcom/speedata/libuhf/bean/SpdWriteData;)V

    :cond_f
    return-void
.end method


# virtual methods
.method public GetLastDetailError()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public cancelMask()I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 647
    invoke-virtual {p0, v0, v1, v0}, Lcom/speedata/libuhf/FLX;->setQueryTagGroup(III)I

    move-result v1

    if-eqz v1, :cond_9

    return v1

    .line 651
    :cond_9
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v1

    new-instance v2, Lcom/uhf/structures/SelectCriteria;

    invoke-direct {v2, v0}, Lcom/uhf/structures/SelectCriteria;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/uhf/linkage/Linkage;->set18K6CSelectCriteria(Lcom/uhf/structures/SelectCriteria;)I

    return v0
.end method

.method public closeDev()V
    .registers 3

    .line 404
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uhf/linkage/Linkage;->close_serial()I

    .line 405
    invoke-static {}, Lcom/speedata/libuhf/utils/ConfigUtils;->isConfigFileExists()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/speedata/libuhf/utils/CommonUtils;->subDeviceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "55"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 407
    :try_start_19
    iget-object v0, p0, Lcom/speedata/libuhf/FLX;->newUHFDeviceControl:Landroid/serialport/DeviceControlSpd;

    invoke-virtual {v0}, Landroid/serialport/DeviceControlSpd;->PowerOffDevice()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_1f

    goto :goto_52

    :catch_1f
    move-exception v0

    .line 409
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_52

    :cond_24
    :try_start_24
    const-string v0, "ro.product.model"

    .line 413
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SD100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 414
    iget-object v0, p0, Lcom/speedata/libuhf/FLX;->pw:Landroid/serialport/DeviceControlSpd;

    const-string v1, "uhf_close"

    invoke-virtual {v0, v1}, Landroid/serialport/DeviceControlSpd;->gtPower(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/speedata/libuhf/FLX;->pw:Landroid/serialport/DeviceControlSpd;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Landroid/serialport/DeviceControlSpd;->gtPower(Ljava/lang/String;)V

    goto :goto_52

    .line 417
    :cond_41
    iget-object v0, p0, Lcom/speedata/libuhf/FLX;->pw:Landroid/serialport/DeviceControlSpd;

    invoke-virtual {v0}, Landroid/serialport/DeviceControlSpd;->PowerOffDevice()V

    const-string v0, "UHF"

    const-string v1, "closeDev"

    .line 418
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_4d} :catch_4e

    goto :goto_52

    :catch_4e
    move-exception v0

    .line 421
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_52
    const/4 v0, 0x0

    .line 426
    iput-object v0, p0, Lcom/speedata/libuhf/FLX;->lk:Lcom/uhf/linkage/Linkage;

    return-void
.end method

.method public enableEngTest(I)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getAntennaPower()I
    .registers 3

    .line 1231
    new-instance v0, Lcom/uhf/structures/Rfid_Value;

    invoke-direct {v0}, Lcom/uhf/structures/Rfid_Value;-><init>()V

    .line 1232
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uhf/linkage/Linkage;->Radio_GetAntennaPower(Lcom/uhf/structures/Rfid_Value;)I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, -0x1

    return v0

    .line 1236
    :cond_11
    iget v0, v0, Lcom/uhf/structures/Rfid_Value;->value:I

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getDynamicAlgorithm(Lcom/uhf/structures/DynamicQParams;)I
    .registers 3

    .line 744
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uhf/linkage/Linkage;->Radio_GetSingulationAlgorithmDyParameters(Lcom/uhf/structures/DynamicQParams;)I

    move-result p1

    return p1
.end method

.method public getFixedAlgorithm(Lcom/uhf/structures/FixedQParams;)I
    .registers 3

    .line 749
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uhf/linkage/Linkage;->Radio_GetSingulationAlgorithmFixedParameters(Lcom/uhf/structures/FixedQParams;)I

    move-result p1

    return p1
.end method

.method public getFreqRegion()I
    .registers 5

    .line 1072
    new-instance v0, Lcom/uhf/structures/Rfid_Value;

    invoke-direct {v0}, Lcom/uhf/structures/Rfid_Value;-><init>()V

    .line 1075
    iget v1, p0, Lcom/speedata/libuhf/FLX;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 1076
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uhf/linkage/Linkage;->Radio_MacGetRegion(Lcom/uhf/structures/Rfid_Value;)I

    move-result v1

    goto :goto_1b

    .line 1078
    :cond_13
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uhf/linkage/Linkage;->Radio_GetSingleFrequency(Lcom/uhf/structures/Rfid_Value;)I

    move-result v1

    :goto_1b
    if-nez v1, :cond_5b

    .line 1081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFreqRegion: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/uhf/structures/Rfid_Value;->value:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "zm"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget v1, v0, Lcom/uhf/structures/Rfid_Value;->value:I

    const/16 v3, 0x348

    if-ge v1, v3, :cond_58

    .line 1083
    iget v1, v0, Lcom/uhf/structures/Rfid_Value;->value:I

    if-eqz v1, :cond_56

    iget v1, v0, Lcom/uhf/structures/Rfid_Value;->value:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_45

    goto :goto_56

    .line 1085
    :cond_45
    iget v1, v0, Lcom/uhf/structures/Rfid_Value;->value:I

    if-ne v1, v2, :cond_4a

    return v2

    .line 1087
    :cond_4a
    iget v1, v0, Lcom/uhf/structures/Rfid_Value;->value:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_50

    return v2

    .line 1089
    :cond_50
    iget v0, v0, Lcom/uhf/structures/Rfid_Value;->value:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5b

    return v1

    :cond_56
    :goto_56
    const/4 v0, 0x0

    return v0

    .line 1093
    :cond_58
    iget v0, v0, Lcom/uhf/structures/Rfid_Value;->value:I

    return v0

    :cond_5b
    const/4 v0, -0x1

    return v0
.end method

.method public getGen2AllValue()[I
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInvMode(I)I
    .registers 5

    .line 88
    new-instance v0, Lcom/uhf/structures/InventoryParams;

    invoke-direct {v0}, Lcom/uhf/structures/InventoryParams;-><init>()V

    .line 89
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uhf/linkage/Linkage;->Radio_GetInventoryParams(Lcom/uhf/structures/InventoryParams;)I

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_22

    if-eqz p1, :cond_1f

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1c

    const/4 v1, 0x2

    if-eq p1, v1, :cond_19

    return v2

    .line 97
    :cond_19
    iget p1, v0, Lcom/uhf/structures/InventoryParams;->len:I

    return p1

    .line 95
    :cond_1c
    iget p1, v0, Lcom/uhf/structures/InventoryParams;->address:I

    return p1

    .line 93
    :cond_1f
    iget p1, v0, Lcom/uhf/structures/InventoryParams;->inventoryArea:I

    return p1

    :cond_22
    return v2
.end method

.method public getInventoryData(Lcom/uhf/structures/InventoryData;)V
    .registers 8

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    iget v1, p1, Lcom/uhf/structures/InventoryData;->epcLength:I

    const/16 v2, 0x42

    const-string v3, ""

    if-lez v1, :cond_20

    iget v1, p1, Lcom/uhf/structures/InventoryData;->epcLength:I

    if-ge v1, v2, :cond_20

    .line 139
    iget-object v1, p1, Lcom/uhf/structures/InventoryData;->EPC_Data:[B

    iget v4, p1, Lcom/uhf/structures/InventoryData;->epcLength:I

    invoke-static {v1, v4}, Lcom/speedata/libuhf/utils/StringUtils;->byteToHexString([BI)Ljava/lang/String;

    move-result-object v1

    .line 141
    iget v4, p1, Lcom/uhf/structures/InventoryData;->RSSI:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_22

    :cond_20
    move-object v1, v3

    move-object v4, v1

    .line 143
    :goto_22
    iget v5, p1, Lcom/uhf/structures/InventoryData;->dataLength:I

    if-lez v5, :cond_32

    iget v5, p1, Lcom/uhf/structures/InventoryData;->dataLength:I

    if-ge v5, v2, :cond_32

    .line 144
    iget-object v2, p1, Lcom/uhf/structures/InventoryData;->data:[B

    iget p1, p1, Lcom/uhf/structures/InventoryData;->dataLength:I

    invoke-static {v2, p1}, Lcom/speedata/libuhf/utils/StringUtils;->byteToHexString([BI)Ljava/lang/String;

    move-result-object v3

    .line 147
    :cond_32
    iget-object p1, p0, Lcom/speedata/libuhf/FLX;->h:Landroid/os/Handler;

    if-nez p1, :cond_3f

    .line 148
    new-instance p1, Lcom/speedata/libuhf/bean/SpdInventoryData;

    invoke-direct {p1, v3, v1, v4}, Lcom/speedata/libuhf/bean/SpdInventoryData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/speedata/libuhf/FLX;->inventoryCallBack(Lcom/speedata/libuhf/bean/SpdInventoryData;)V

    goto :goto_56

    .line 150
    :cond_3f
    new-instance p1, Lcom/speedata/libuhf/bean/SpdInventoryData;

    invoke-direct {p1, v3, v1, v4}, Lcom/speedata/libuhf/bean/SpdInventoryData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 152
    iput v1, p1, Landroid/os/Message;->what:I

    .line 153
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/speedata/libuhf/FLX;->h:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_56
    return-void
.end method

.method public getLinkage()Lcom/uhf/linkage/Linkage;
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/speedata/libuhf/FLX;->lk:Lcom/uhf/linkage/Linkage;

    if-nez v0, :cond_1f

    .line 108
    new-instance v0, Lcom/uhf/linkage/Linkage;

    invoke-direct {v0}, Lcom/uhf/linkage/Linkage;-><init>()V

    iput-object v0, p0, Lcom/speedata/libuhf/FLX;->lk:Lcom/uhf/linkage/Linkage;

    .line 109
    invoke-virtual {v0}, Lcom/uhf/linkage/Linkage;->initRFID()I

    .line 110
    iget-object v0, p0, Lcom/speedata/libuhf/FLX;->lk:Lcom/uhf/linkage/Linkage;

    iget v1, p0, Lcom/speedata/libuhf/FLX;->type:I

    invoke-virtual {v0, v1}, Lcom/uhf/linkage/Linkage;->setRFModuleType(I)V

    .line 111
    iget-object v0, p0, Lcom/speedata/libuhf/FLX;->lk:Lcom/uhf/linkage/Linkage;

    invoke-virtual {v0, p0}, Lcom/uhf/linkage/Linkage;->setOnInventoryListener(Lcom/uhf/structures/OnInventoryListener;)V

    .line 112
    iget-object v0, p0, Lcom/speedata/libuhf/FLX;->lk:Lcom/uhf/linkage/Linkage;

    invoke-virtual {v0, p0}, Lcom/uhf/linkage/Linkage;->setOnReadWriteListener(Lcom/uhf/structures/OnReadWriteListener;)V

    .line 114
    :cond_1f
    iget-object v0, p0, Lcom/speedata/libuhf/FLX;->lk:Lcom/uhf/linkage/Linkage;

    return-object v0
.end method

.method public getMask()Lcom/uhf/structures/SelectCriteria;
    .registers 3

    .line 658
    new-instance v0, Lcom/uhf/structures/SelectCriteria;

    invoke-direct {v0}, Lcom/uhf/structures/SelectCriteria;-><init>()V

    .line 659
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uhf/linkage/Linkage;->get18K6CSelectCriteria(Lcom/uhf/structures/SelectCriteria;)I

    move-result v1

    if-nez v1, :cond_10

    return-object v0

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public getQueryTagGroup()I
    .registers 3

    .line 618
    new-instance v0, Lcom/uhf/structures/TagGroup;

    invoke-direct {v0}, Lcom/uhf/structures/TagGroup;-><init>()V

    .line 619
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uhf/linkage/Linkage;->Radio_GetQueryTagGroup(Lcom/uhf/structures/TagGroup;)I

    move-result v1

    if-nez v1, :cond_12

    .line 621
    iget v0, v0, Lcom/uhf/structures/TagGroup;->session:I

    return v0

    :cond_12
    const/4 v0, -0x1

    return v0
.end method

.method public getReadWriteData(Lcom/uhf/structures/RW_Params;)V
    .registers 10

    .line 165
    iget v0, p1, Lcom/uhf/structures/RW_Params;->EPCLen:I

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 167
    :try_start_5
    iget-object v2, p1, Lcom/uhf/structures/RW_Params;->EPCData:[B

    .line 168
    iget v3, p1, Lcom/uhf/structures/RW_Params;->EPCLen:I

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception v2

    .line 170
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 173
    :goto_11
    iget v2, p1, Lcom/uhf/structures/RW_Params;->type:I

    const/4 v3, 0x2

    const-string v4, "ZM"

    const/4 v5, 0x1

    if-ne v2, v3, :cond_88

    .line 174
    new-instance v2, Lcom/speedata/libuhf/bean/SpdReadData;

    invoke-direct {v2}, Lcom/speedata/libuhf/bean/SpdReadData;-><init>()V

    .line 175
    invoke-virtual {v2, v0}, Lcom/speedata/libuhf/bean/SpdReadData;->setEPCData([B)V

    .line 176
    iget v0, p1, Lcom/uhf/structures/RW_Params;->EPCLen:I

    invoke-virtual {v2, v0}, Lcom/speedata/libuhf/bean/SpdReadData;->setEPCLen(I)V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bfb\u5361\u72b6\u6001: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/uhf/structures/RW_Params;->status:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget v0, p1, Lcom/uhf/structures/RW_Params;->status:I

    if-nez v0, :cond_6e

    .line 179
    iget v0, p1, Lcom/uhf/structures/RW_Params;->DataLen:I

    new-array v0, v0, [B

    .line 180
    iget-object v6, p1, Lcom/uhf/structures/RW_Params;->ReadData:[B

    .line 181
    iget v7, p1, Lcom/uhf/structures/RW_Params;->DataLen:I

    invoke-static {v6, v1, v0, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    invoke-virtual {v2, v0}, Lcom/speedata/libuhf/bean/SpdReadData;->setReadData([B)V

    .line 183
    iput-object v0, p0, Lcom/speedata/libuhf/FLX;->epcData:[B

    .line 184
    iput-boolean v5, p0, Lcom/speedata/libuhf/FLX;->isReadSuccess:Z

    .line 185
    iput-boolean v5, p0, Lcom/speedata/libuhf/FLX;->isReadOutTime:Z

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/speedata/libuhf/FLX;->isReadSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/speedata/libuhf/FLX;->isReadOutTime:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 189
    :cond_6e
    iput-boolean v5, p0, Lcom/speedata/libuhf/FLX;->isReadOutTime:Z

    const/4 v0, 0x0

    .line 190
    invoke-virtual {v2, v0}, Lcom/speedata/libuhf/bean/SpdReadData;->setReadData([B)V

    .line 192
    :goto_74
    iget v0, p1, Lcom/uhf/structures/RW_Params;->DataLen:I

    invoke-virtual {v2, v0}, Lcom/speedata/libuhf/bean/SpdReadData;->setDataLen(I)V

    .line 193
    iget v0, p1, Lcom/uhf/structures/RW_Params;->RSS:I

    invoke-virtual {v2, v0}, Lcom/speedata/libuhf/bean/SpdReadData;->setRSS(I)V

    .line 194
    iget p1, p1, Lcom/uhf/structures/RW_Params;->status:I

    invoke-virtual {v2, p1}, Lcom/speedata/libuhf/bean/SpdReadData;->setStatus(I)V

    .line 195
    invoke-direct {p0, v2}, Lcom/speedata/libuhf/FLX;->readCallBack(Lcom/speedata/libuhf/bean/SpdReadData;)V

    goto/16 :goto_110

    .line 196
    :cond_88
    iget v1, p1, Lcom/uhf/structures/RW_Params;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_ca

    .line 197
    iget v1, p1, Lcom/uhf/structures/RW_Params;->status:I

    iput v1, p0, Lcom/speedata/libuhf/FLX;->writeStatus:I

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5199\u5361\u72b6\u6001: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/uhf/structures/RW_Params;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget v1, p1, Lcom/uhf/structures/RW_Params;->status:I

    if-nez v1, :cond_af

    .line 200
    iput-boolean v5, p0, Lcom/speedata/libuhf/FLX;->isWriteSuccess:Z

    .line 201
    iput-boolean v5, p0, Lcom/speedata/libuhf/FLX;->isWriteOutTime:Z

    .line 204
    :cond_af
    new-instance v1, Lcom/speedata/libuhf/bean/SpdWriteData;

    invoke-direct {v1}, Lcom/speedata/libuhf/bean/SpdWriteData;-><init>()V

    .line 205
    invoke-virtual {v1, v0}, Lcom/speedata/libuhf/bean/SpdWriteData;->setEPCData([B)V

    .line 206
    iget v0, p1, Lcom/uhf/structures/RW_Params;->EPCLen:I

    invoke-virtual {v1, v0}, Lcom/speedata/libuhf/bean/SpdWriteData;->setEPCLen(I)V

    .line 207
    iget v0, p1, Lcom/uhf/structures/RW_Params;->RSS:I

    invoke-virtual {v1, v0}, Lcom/speedata/libuhf/bean/SpdWriteData;->setRSS(I)V

    .line 208
    iget p1, p1, Lcom/uhf/structures/RW_Params;->status:I

    invoke-virtual {v1, p1}, Lcom/speedata/libuhf/bean/SpdWriteData;->setStatus(I)V

    .line 209
    invoke-direct {p0, v1}, Lcom/speedata/libuhf/FLX;->writeCallBack(Lcom/speedata/libuhf/bean/SpdWriteData;)V

    goto :goto_110

    .line 210
    :cond_ca
    iget v1, p1, Lcom/uhf/structures/RW_Params;->type:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_d4

    iget v1, p1, Lcom/uhf/structures/RW_Params;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_110

    .line 211
    :cond_d4
    iget v1, p1, Lcom/uhf/structures/RW_Params;->status:I

    iput v1, p0, Lcom/speedata/libuhf/FLX;->lockStatus:I

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9501\u5361\u72b6\u6001: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/uhf/structures/RW_Params;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget v1, p1, Lcom/uhf/structures/RW_Params;->status:I

    if-nez v1, :cond_f6

    .line 214
    iput-boolean v5, p0, Lcom/speedata/libuhf/FLX;->isLockSuccess:Z

    .line 215
    iput-boolean v5, p0, Lcom/speedata/libuhf/FLX;->isLockOutTime:Z

    .line 218
    :cond_f6
    new-instance v1, Lcom/speedata/libuhf/bean/SpdWriteData;

    invoke-direct {v1}, Lcom/speedata/libuhf/bean/SpdWriteData;-><init>()V

    .line 219
    invoke-virtual {v1, v0}, Lcom/speedata/libuhf/bean/SpdWriteData;->setEPCData([B)V

    .line 220
    iget v0, p1, Lcom/uhf/structures/RW_Params;->EPCLen:I

    invoke-virtual {v1, v0}, Lcom/speedata/libuhf/bean/SpdWriteData;->setEPCLen(I)V

    .line 221
    iget v0, p1, Lcom/uhf/structures/RW_Params;->RSS:I

    invoke-virtual {v1, v0}, Lcom/speedata/libuhf/bean/SpdWriteData;->setRSS(I)V

    .line 222
    iget p1, p1, Lcom/uhf/structures/RW_Params;->status:I

    invoke-virtual {v1, p1}, Lcom/speedata/libuhf/bean/SpdWriteData;->setStatus(I)V

    .line 223
    invoke-direct {p0, v1}, Lcom/speedata/libuhf/FLX;->writeCallBack(Lcom/speedata/libuhf/bean/SpdWriteData;)V

    :cond_110
    :goto_110
    return-void
.end method

.method public get_link_prof()I
    .registers 3

    .line 1248
    new-instance v0, Lcom/uhf/structures/Rfid_Value;

    invoke-direct {v0}, Lcom/uhf/structures/Rfid_Value;-><init>()V

    .line 1249
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uhf/linkage/Linkage;->Radio_GetCurrentLinkProfile(Lcom/uhf/structures/Rfid_Value;)I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, -0x1

    return v0

    .line 1253
    :cond_11
    iget v0, v0, Lcom/uhf/structures/Rfid_Value;->value:I

    return v0
.end method

.method public inventoryStart()V
    .registers 3

    .line 462
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/uhf/linkage/Linkage;->startInventory(I)V

    return-void
.end method

.method public inventoryStop()V
    .registers 2

    .line 470
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uhf/linkage/Linkage;->stopInventory()V

    return-void
.end method

.method public inventory_start()V
    .registers 3

    .line 819
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/uhf/linkage/Linkage;->startInventory(I)V

    return-void
.end method

.method public inventory_start(Landroid/os/Handler;)V
    .registers 2

    .line 824
    invoke-virtual {p0, p1}, Lcom/speedata/libuhf/FLX;->reg_handler(Landroid/os/Handler;)V

    .line 825
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->inventory_start()V

    return-void
.end method

.method public inventory_stop()I
    .registers 2

    .line 830
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uhf/linkage/Linkage;->stopInventory()V

    const/4 v0, 0x0

    return v0
.end method

.method public mask(III[B)I
    .registers 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 628
    invoke-virtual {p0, v0, v0, v1}, Lcom/speedata/libuhf/FLX;->setQueryTagGroup(III)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    .line 633
    :cond_9
    new-instance v0, Lcom/uhf/structures/SelectCriteria;

    invoke-direct {v0}, Lcom/uhf/structures/SelectCriteria;-><init>()V

    const/4 v2, 0x1

    .line 634
    iput v2, v0, Lcom/uhf/structures/SelectCriteria;->status:I

    .line 635
    iput p3, v0, Lcom/uhf/structures/SelectCriteria;->length:I

    .line 636
    iput p2, v0, Lcom/uhf/structures/SelectCriteria;->offset:I

    .line 637
    iput p1, v0, Lcom/uhf/structures/SelectCriteria;->bank:I

    const/4 p1, 0x4

    .line 638
    iput p1, v0, Lcom/uhf/structures/SelectCriteria;->session:I

    .line 639
    iput v1, v0, Lcom/uhf/structures/SelectCriteria;->jq:I

    .line 640
    iput v1, v0, Lcom/uhf/structures/SelectCriteria;->action:I

    .line 641
    iget-object p1, v0, Lcom/uhf/structures/SelectCriteria;->maskData:[B

    array-length p2, p4

    invoke-static {p4, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 642
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/uhf/linkage/Linkage;->set18K6CSelectCriteria(Lcom/uhf/structures/SelectCriteria;)I

    move-result p1

    return p1
.end method

.method public openDev()I
    .registers 6

    .line 235
    invoke-static {}, Lcom/speedata/libuhf/utils/ConfigUtils;->isConfigFileExists()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-static {}, Lcom/speedata/libuhf/utils/CommonUtils;->subDeviceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "55"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_88

    .line 236
    iget-object v0, p0, Lcom/speedata/libuhf/FLX;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/speedata/libuhf/utils/ConfigUtils;->readConfig(Landroid/content/Context;)Lcom/speedata/libuhf/utils/ReadBean;

    move-result-object v0

    iput-object v0, p0, Lcom/speedata/libuhf/FLX;->mRead:Lcom/speedata/libuhf/utils/ReadBean;

    .line 237
    invoke-virtual {v0}, Lcom/speedata/libuhf/utils/ReadBean;->getUhf()Lcom/speedata/libuhf/utils/ReadBean$UhfBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedata/libuhf/utils/ReadBean$UhfBean;->getPowerType()Ljava/lang/String;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/speedata/libuhf/FLX;->mRead:Lcom/speedata/libuhf/utils/ReadBean;

    invoke-virtual {v1}, Lcom/speedata/libuhf/utils/ReadBean;->getUhf()Lcom/speedata/libuhf/utils/ReadBean$UhfBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/speedata/libuhf/utils/ReadBean$UhfBean;->getGpio()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 239
    :goto_34
    iget-object v4, p0, Lcom/speedata/libuhf/FLX;->mRead:Lcom/speedata/libuhf/utils/ReadBean;

    invoke-virtual {v4}, Lcom/speedata/libuhf/utils/ReadBean;->getUhf()Lcom/speedata/libuhf/utils/ReadBean$UhfBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/speedata/libuhf/utils/ReadBean$UhfBean;->getGpio()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5d

    .line 240
    iget-object v4, p0, Lcom/speedata/libuhf/FLX;->mRead:Lcom/speedata/libuhf/utils/ReadBean;

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

    goto :goto_34

    :cond_5d
    const/4 v3, -0x1

    .line 243
    :try_start_5e
    new-instance v4, Landroid/serialport/DeviceControlSpd;

    invoke-direct {v4, v0, v1}, Landroid/serialport/DeviceControlSpd;-><init>(Ljava/lang/String;[I)V

    iput-object v4, p0, Lcom/speedata/libuhf/FLX;->newUHFDeviceControl:Landroid/serialport/DeviceControlSpd;

    .line 244
    invoke-virtual {v4}, Landroid/serialport/DeviceControlSpd;->PowerOffDevice()V

    .line 245
    iget-object v0, p0, Lcom/speedata/libuhf/FLX;->newUHFDeviceControl:Landroid/serialport/DeviceControlSpd;

    invoke-virtual {v0}, Landroid/serialport/DeviceControlSpd;->PowerOnDevice()V

    .line 246
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v0

    iget-object v1, p0, Lcom/speedata/libuhf/FLX;->mRead:Lcom/speedata/libuhf/utils/ReadBean;

    invoke-virtual {v1}, Lcom/speedata/libuhf/utils/ReadBean;->getUhf()Lcom/speedata/libuhf/utils/ReadBean$UhfBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/speedata/libuhf/utils/ReadBean$UhfBean;->getSerialPort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uhf/linkage/Linkage;->open_serial(Ljava/lang/String;)I

    move-result v0
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_7f} :catch_83

    if-nez v0, :cond_82

    return v2

    :cond_82
    return v3

    :catch_83
    move-exception v0

    .line 253
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return v3

    .line 257
    :cond_88
    invoke-direct {p0}, Lcom/speedata/libuhf/FLX;->NoXmlopenDev()I

    move-result v0

    return v0
.end method

.method public pushRemoteRFIDData([B)V
    .registers 3

    .line 124
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uhf/linkage/Linkage;->pushRemoteRFIDData([B)V

    return-void
.end method

.method public readArea(IIILjava/lang/String;)I
    .registers 7

    const/4 v0, 0x3

    if-gt p1, v0, :cond_19

    if-gez p1, :cond_6

    goto :goto_19

    .line 499
    :cond_6
    invoke-static {p4}, Lcom/speedata/libuhf/utils/StringUtils;->stringToByte(Ljava/lang/String;)[B

    move-result-object p4

    .line 500
    array-length v0, p4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    const/4 p1, -0x3

    return p1

    .line 503
    :cond_10
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v0

    invoke-virtual {v0, p3, p2, p1, p4}, Lcom/uhf/linkage/Linkage;->Radio_ReadTag(III[B)I

    move-result p1

    return p1

    :cond_19
    :goto_19
    const/4 p1, -0x1

    return p1
.end method

.method public readMonzaQtTag(I[BIII)I
    .registers 12

    .line 678
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/uhf/linkage/Linkage;->readMonzaQtTag(I[BIII)I

    move-result p1

    return p1
.end method

.method public readMonzaQtTagSync(I[BIIIILcom/uhf/structures/RW_Params;)I
    .registers 16

    .line 683
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/uhf/linkage/Linkage;->readMonzaQtTagSync(I[BIIIILcom/uhf/structures/RW_Params;)I

    move-result p1

    return p1
.end method

.method public read_area(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 938
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 941
    :cond_8
    invoke-static {p4}, Lcom/speedata/libuhf/utils/ByteCharStrUtils;->IsHex(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    return-object v1

    .line 947
    :cond_f
    :try_start_f
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 948
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_17} :catch_1c

    .line 952
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/speedata/libuhf/FLX;->read_card(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_1c
    return-object v1
.end method

.method public read_area(IIILjava/lang/String;)[B
    .registers 7

    const/4 v0, 0x0

    .line 908
    iput-object v0, p0, Lcom/speedata/libuhf/FLX;->epcData:[B

    const/4 v1, 0x0

    .line 909
    iput-boolean v1, p0, Lcom/speedata/libuhf/FLX;->isReadOutTime:Z

    .line 910
    iput-boolean v1, p0, Lcom/speedata/libuhf/FLX;->isReadSuccess:Z

    const/4 v1, 0x3

    if-gt p1, v1, :cond_5f

    if-gez p1, :cond_e

    goto :goto_5f

    .line 914
    :cond_e
    invoke-static {p4}, Lcom/speedata/libuhf/utils/StringUtils;->stringToByte(Ljava/lang/String;)[B

    move-result-object p4

    .line 915
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v1

    invoke-virtual {v1, p3, p2, p1, p4}, Lcom/uhf/linkage/Linkage;->Radio_ReadTag(III[B)I

    move-result p1

    const-string p2, "read_area: failed"

    const-string p3, "zm"

    if-nez p1, :cond_5c

    .line 917
    new-instance p1, Lcom/speedata/libuhf/FLX$ReadTimeOutThread;

    invoke-direct {p1, p0}, Lcom/speedata/libuhf/FLX$ReadTimeOutThread;-><init>(Lcom/speedata/libuhf/FLX;)V

    .line 918
    invoke-virtual {p1}, Lcom/speedata/libuhf/FLX$ReadTimeOutThread;->start()V

    .line 920
    :cond_28
    iget-boolean p1, p0, Lcom/speedata/libuhf/FLX;->isReadOutTime:Z

    if-nez p1, :cond_58

    .line 921
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "read_area-isReadSuccess\u72b6\u6001\uff1a "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/speedata/libuhf/FLX;->isReadSuccess:Z

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, "isReadOutTime\u72b6\u6001\uff1a"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/speedata/libuhf/FLX;->isReadOutTime:Z

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget-boolean p1, p0, Lcom/speedata/libuhf/FLX;->isReadSuccess:Z

    if-eqz p1, :cond_28

    const-string p1, "read_area: success"

    .line 923
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object p1, p0, Lcom/speedata/libuhf/FLX;->epcData:[B

    return-object p1

    .line 927
    :cond_58
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 930
    :cond_5c
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    :goto_5f
    return-object v0
.end method

.method public reg_handler(Landroid/os/Handler;)V
    .registers 2

    .line 807
    iput-object p1, p0, Lcom/speedata/libuhf/FLX;->h:Landroid/os/Handler;

    return-void
.end method

.method public selectCard(ILjava/lang/String;Z)I
    .registers 4

    .line 1279
    invoke-static {p2}, Lcom/speedata/libuhf/utils/StringUtils;->stringToByte(Ljava/lang/String;)[B

    move-result-object p2

    .line 1280
    invoke-virtual {p0, p1, p2, p3}, Lcom/speedata/libuhf/FLX;->selectCard(I[BZ)I

    move-result p1

    return p1
.end method

.method public selectCard(I[BZ)I
    .registers 8

    .line 1258
    new-instance v0, Lcom/uhf/structures/SelectCriteria;

    invoke-direct {v0}, Lcom/uhf/structures/SelectCriteria;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_c

    .line 1260
    iput v1, v0, Lcom/uhf/structures/SelectCriteria;->status:I

    goto :goto_e

    .line 1262
    :cond_c
    iput v2, v0, Lcom/uhf/structures/SelectCriteria;->status:I

    .line 1264
    :goto_e
    array-length p3, p2

    mul-int/lit8 p3, p3, 0x8

    iput p3, v0, Lcom/uhf/structures/SelectCriteria;->length:I

    .line 1265
    iput v2, v0, Lcom/uhf/structures/SelectCriteria;->offset:I

    .line 1266
    iget-object p3, v0, Lcom/uhf/structures/SelectCriteria;->maskData:[B

    array-length v3, p2

    invoke-static {p2, v2, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1267
    iget p2, p0, Lcom/speedata/libuhf/FLX;->type:I

    if-ne p2, v1, :cond_2e

    .line 1268
    iput p1, v0, Lcom/uhf/structures/SelectCriteria;->bank:I

    const/16 p1, 0x20

    .line 1269
    iput p1, v0, Lcom/uhf/structures/SelectCriteria;->offset:I

    .line 1270
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/uhf/linkage/Linkage;->set18K6CSelectCriteria(Lcom/uhf/structures/SelectCriteria;)I

    move-result p1

    return p1

    .line 1272
    :cond_2e
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/uhf/linkage/Linkage;->Radio_SetPostMatchCriteria(Lcom/uhf/structures/SelectCriteria;)I

    move-result p1

    return p1
.end method

.method public setAntennaPower(I)I
    .registers 5

    const/16 v0, 0xa

    if-lt p1, v0, :cond_13

    const/16 v0, 0x21

    if-gt p1, v0, :cond_13

    .line 1221
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v0

    mul-int/lit8 v1, p1, 0xa

    invoke-virtual {v0, v1}, Lcom/uhf/linkage/Linkage;->Radio_SetAntennaPower(I)I

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, -0x1

    :goto_14
    if-nez v0, :cond_21

    .line 1224
    iget-object v1, p0, Lcom/speedata/libuhf/FLX;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/speedata/libuhf/utils/SharedXmlUtil;->getInstance(Landroid/content/Context;)Lcom/speedata/libuhf/utils/SharedXmlUtil;

    move-result-object v1

    const-string v2, "AntennaPower"

    invoke-virtual {v1, v2, p1}, Lcom/speedata/libuhf/utils/SharedXmlUtil;->write(Ljava/lang/String;I)V

    :cond_21
    return v0
.end method

.method public setDynamicAlgorithm()I
    .registers 9

    .line 1053
    new-instance v7, Lcom/uhf/structures/DynamicQParams;

    invoke-direct {v7}, Lcom/uhf/structures/DynamicQParams;-><init>()V

    const/4 v4, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/16 v3, 0xf

    const/4 v6, 0x4

    const/4 v5, 0x1

    move-object v0, v7

    .line 1054
    invoke-virtual/range {v0 .. v6}, Lcom/uhf/structures/DynamicQParams;->setValue(IIIIII)V

    .line 1055
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/uhf/linkage/Linkage;->Radio_SetSingulationAlgorithmDyParameters(Lcom/uhf/structures/DynamicQParams;)I

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    return v0

    :cond_1c
    const/16 v1, -0x3e8

    if-ne v0, v1, :cond_21

    return v1

    :cond_21
    const/4 v0, -0x1

    return v0
.end method

.method public setDynamicAlgorithm(IIIIII)I
    .registers 15

    if-ltz p1, :cond_40

    const/16 v0, 0xf

    if-gt p1, v0, :cond_40

    if-ltz p2, :cond_40

    if-gt p2, v0, :cond_40

    if-ltz p3, :cond_40

    if-le p3, v0, :cond_f

    goto :goto_40

    :cond_f
    if-le p2, p3, :cond_13

    const/4 p1, -0x2

    return p1

    :cond_13
    if-ltz p6, :cond_3e

    const/16 v0, 0xff

    if-le p6, v0, :cond_1a

    goto :goto_3e

    :cond_1a
    if-ltz p4, :cond_3c

    const/16 v0, 0xa

    if-le p4, v0, :cond_21

    goto :goto_3c

    .line 710
    :cond_21
    new-instance v0, Lcom/uhf/structures/DynamicQParams;

    invoke-direct {v0}, Lcom/uhf/structures/DynamicQParams;-><init>()V

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 711
    invoke-virtual/range {v1 .. v7}, Lcom/uhf/structures/DynamicQParams;->setValue(IIIIII)V

    .line 712
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/uhf/linkage/Linkage;->Radio_SetSingulationAlgorithmDyParameters(Lcom/uhf/structures/DynamicQParams;)I

    move-result p1

    if-nez p1, :cond_3b

    const/4 p1, 0x0

    :cond_3b
    return p1

    :cond_3c
    :goto_3c
    const/4 p1, -0x4

    return p1

    :cond_3e
    :goto_3e
    const/4 p1, -0x3

    return p1

    :cond_40
    :goto_40
    const/4 p1, -0x1

    return p1
.end method

.method public setFixedAlgorithm(IIII)I
    .registers 6

    if-ltz p1, :cond_24

    const/16 v0, 0xf

    if-le p1, v0, :cond_7

    goto :goto_24

    :cond_7
    if-ltz p2, :cond_22

    const/16 v0, 0xa

    if-le p2, v0, :cond_e

    goto :goto_22

    .line 730
    :cond_e
    new-instance v0, Lcom/uhf/structures/FixedQParams;

    invoke-direct {v0}, Lcom/uhf/structures/FixedQParams;-><init>()V

    .line 731
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/uhf/structures/FixedQParams;->setValue(IIII)V

    .line 732
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/uhf/linkage/Linkage;->Radio_SetSingulationAlgorithmFixedParameters(Lcom/uhf/structures/FixedQParams;)I

    move-result p1

    if-nez p1, :cond_21

    const/4 p1, 0x0

    :cond_21
    return p1

    :cond_22
    :goto_22
    const/4 p1, -0x4

    return p1

    :cond_24
    :goto_24
    const/4 p1, -0x1

    return p1
.end method

.method public setFreqRegion(I)I
    .registers 5

    .line 966
    iget v0, p0, Lcom/speedata/libuhf/FLX;->type:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    if-nez p1, :cond_9

    const/4 p1, 0x4

    :cond_9
    if-eqz p1, :cond_47

    if-eq p1, v2, :cond_3e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_35

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2c

    if-eq p1, v1, :cond_23

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1a

    const/4 p1, -0x1

    goto :goto_50

    .line 986
    :cond_1a
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/uhf/linkage/Linkage;->Radio_MacSetRegion(I)I

    move-result p1

    goto :goto_50

    .line 983
    :cond_23
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/uhf/linkage/Linkage;->Radio_MacSetRegion(I)I

    move-result p1

    goto :goto_50

    .line 980
    :cond_2c
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/uhf/linkage/Linkage;->Radio_MacSetRegion(I)I

    move-result p1

    goto :goto_50

    .line 977
    :cond_35
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/uhf/linkage/Linkage;->Radio_MacSetRegion(I)I

    move-result p1

    goto :goto_50

    .line 974
    :cond_3e
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/uhf/linkage/Linkage;->Radio_MacSetRegion(I)I

    move-result p1

    goto :goto_50

    .line 971
    :cond_47
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/uhf/linkage/Linkage;->Radio_MacSetRegion(I)I

    move-result p1

    :goto_50
    return p1
.end method

.method public setFrequency(D)I
    .registers 5

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v0

    double-to-int p1, p1

    const p2, 0xcd140

    if-lt p1, p2, :cond_20

    const p2, 0xea600

    if-gt p1, p2, :cond_20

    .line 998
    rem-int/lit8 p2, p1, 0x7d

    if-eqz p2, :cond_17

    goto :goto_20

    .line 1001
    :cond_17
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/uhf/linkage/Linkage;->Radio_SetSingleFrequency(I)I

    move-result p1

    return p1

    :cond_20
    :goto_20
    const/4 p1, -0x1

    return p1
.end method

.method public setGen2Blf(I)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setGen2Code(I)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setGen2MaxLen(I)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setGen2QValue(I)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setGen2Target(I)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setGen2Tari(I)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setGen2WriteMode(I)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setInvMode(III)I
    .registers 5

    .line 79
    new-instance v0, Lcom/uhf/structures/InventoryParams;

    invoke-direct {v0}, Lcom/uhf/structures/InventoryParams;-><init>()V

    .line 80
    iput p1, v0, Lcom/uhf/structures/InventoryParams;->inventoryArea:I

    .line 81
    iput p2, v0, Lcom/uhf/structures/InventoryParams;->address:I

    .line 82
    iput p3, v0, Lcom/uhf/structures/InventoryParams;->len:I

    .line 83
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/uhf/linkage/Linkage;->Radio_SetInventoryParams(Lcom/uhf/structures/InventoryParams;)I

    move-result p1

    return p1
.end method

.method public setKill(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 605
    invoke-static {p1}, Lcom/speedata/libuhf/utils/StringUtils;->stringToByte(Ljava/lang/String;)[B

    move-result-object p1

    .line 606
    invoke-static {p2}, Lcom/speedata/libuhf/utils/StringUtils;->stringToByte(Ljava/lang/String;)[B

    move-result-object p2

    .line 607
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/uhf/linkage/Linkage;->Radio_KillTag([B[B)I

    move-result p1

    return p1
.end method

.method public setLock(IILjava/lang/String;)I
    .registers 16

    .line 571
    sget-object v0, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;->NO_CHANGE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

    invoke-virtual {v0}, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;->getValue()I

    move-result v0

    .line 572
    sget-object v1, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;->NO_CHANGE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

    invoke-virtual {v1}, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;->getValue()I

    move-result v1

    .line 573
    sget-object v2, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_MEM_PERM;->NO_CHANGE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_MEM_PERM;

    invoke-virtual {v2}, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_MEM_PERM;->getValue()I

    move-result v2

    .line 574
    sget-object v3, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_MEM_PERM;->NO_CHANGE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_MEM_PERM;

    invoke-virtual {v3}, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_MEM_PERM;->getValue()I

    move-result v3

    .line 575
    sget-object v4, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_MEM_PERM;->NO_CHANGE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_MEM_PERM;

    invoke-virtual {v4}, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_MEM_PERM;->getValue()I

    move-result v4

    if-ltz p1, :cond_60

    const/4 v5, 0x3

    if-gt p1, v5, :cond_60

    if-ltz p2, :cond_60

    const/4 v6, 0x4

    if-gt p2, v6, :cond_60

    if-eqz p2, :cond_4e

    const/4 v7, 0x1

    if-eq p2, v7, :cond_49

    const/4 v7, 0x2

    if-eq p2, v7, :cond_44

    if-eq p2, v5, :cond_3f

    if-eq p2, v6, :cond_3a

    :goto_34
    move v8, v0

    move v7, v1

    move v10, v2

    move v9, v3

    move v11, v4

    goto :goto_53

    .line 592
    :cond_3a
    sget-object p2, Lcom/speedata/libuhf/FLX;->va:[I

    aget v4, p2, p1

    goto :goto_34

    .line 589
    :cond_3f
    sget-object p2, Lcom/speedata/libuhf/FLX;->va:[I

    aget v2, p2, p1

    goto :goto_34

    .line 586
    :cond_44
    sget-object p2, Lcom/speedata/libuhf/FLX;->va:[I

    aget v3, p2, p1

    goto :goto_34

    .line 583
    :cond_49
    sget-object p2, Lcom/speedata/libuhf/FLX;->vp:[I

    aget v1, p2, p1

    goto :goto_34

    .line 580
    :cond_4e
    sget-object p2, Lcom/speedata/libuhf/FLX;->vp:[I

    aget v0, p2, p1

    goto :goto_34

    .line 597
    :goto_53
    invoke-static {p3}, Lcom/speedata/libuhf/utils/StringUtils;->stringToByte(Ljava/lang/String;)[B

    move-result-object v6

    .line 598
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v5

    invoke-virtual/range {v5 .. v11}, Lcom/uhf/linkage/Linkage;->Radio_LockTag([BIIIII)I

    move-result p1

    return p1

    :cond_60
    const/4 p1, -0x1

    return p1
.end method

.method public setMonzaQtTagMode(II[B)I
    .registers 5

    .line 673
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/uhf/linkage/Linkage;->setMonzaQtTagMode(II[B)I

    move-result p1

    return p1
.end method

.method public setOnInventoryListener(Lcom/speedata/libuhf/interfaces/OnSpdInventoryListener;)V
    .registers 2

    .line 443
    iput-object p1, p0, Lcom/speedata/libuhf/FLX;->onInventoryListener:Lcom/speedata/libuhf/interfaces/OnSpdInventoryListener;

    return-void
.end method

.method public setOnReadListener(Lcom/speedata/libuhf/interfaces/OnSpdReadListener;)V
    .registers 2

    .line 480
    iput-object p1, p0, Lcom/speedata/libuhf/FLX;->onSpdReadListener:Lcom/speedata/libuhf/interfaces/OnSpdReadListener;

    return-void
.end method

.method public setOnWriteListener(Lcom/speedata/libuhf/interfaces/OnSpdWriteListener;)V
    .registers 2

    .line 513
    iput-object p1, p0, Lcom/speedata/libuhf/FLX;->onSpdWriteListener:Lcom/speedata/libuhf/interfaces/OnSpdWriteListener;

    return-void
.end method

.method public setPassword(ILjava/lang/String;Ljava/lang/String;)I
    .registers 12

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-gt p1, v1, :cond_21

    if-gez p1, :cond_7

    goto :goto_21

    .line 557
    :cond_7
    invoke-static {p3}, Lcom/speedata/libuhf/utils/StringUtils;->stringToByte(Ljava/lang/String;)[B

    move-result-object v7

    if-nez p1, :cond_17

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v2, p0

    move-object v6, p2

    .line 560
    :try_start_12
    invoke-virtual/range {v2 .. v7}, Lcom/speedata/libuhf/FLX;->writeArea(IIILjava/lang/String;[B)I

    move-result p1

    return p1

    :cond_17
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x2

    move-object v2, p0

    move-object v6, p2

    .line 562
    invoke-virtual/range {v2 .. v7}, Lcom/speedata/libuhf/FLX;->writeArea(IIILjava/lang/String;[B)I

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
    .registers 6

    const/4 p1, -0x1

    return p1
.end method

.method public setQueryTagGroup(III)I
    .registers 5

    .line 612
    new-instance v0, Lcom/uhf/structures/TagGroup;

    invoke-direct {v0, p1, p2, p3}, Lcom/uhf/structures/TagGroup;-><init>(III)V

    .line 613
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/uhf/linkage/Linkage;->Radio_SetQueryTagGroup(Lcom/uhf/structures/TagGroup;)I

    move-result p1

    return p1
.end method

.method public setRFConnectMode(I)V
    .registers 3

    .line 119
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uhf/linkage/Linkage;->setRFConnectMode(I)V

    return-void
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

    .line 1291
    invoke-virtual/range {v2 .. v7}, Lcom/speedata/libuhf/FLX;->write_area(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_16
    const/4 v2, 0x0

    const-string v3, "2"

    const-string v5, "2"

    move-object v1, p0

    move-object v4, p2

    move-object v6, p3

    .line 1293
    invoke-virtual/range {v1 .. v6}, Lcom/speedata/libuhf/FLX;->write_area(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_22} :catch_23

    return p1

    :catch_23
    :cond_23
    :goto_23
    return v0
.end method

.method public set_link_prof(I)I
    .registers 3

    if-ltz p1, :cond_e

    const/4 v0, 0x4

    if-ge p1, v0, :cond_e

    .line 1242
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uhf/linkage/Linkage;->Radio_SetCurrentLinkProfile(I)I

    move-result p1

    goto :goto_f

    :cond_e
    const/4 p1, -0x1

    :goto_f
    return p1
.end method

.method public setlock(IILjava/lang/String;)I
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, -0x1

    .line 856
    iput v3, v0, Lcom/speedata/libuhf/FLX;->lockStatus:I

    const/4 v4, 0x0

    .line 857
    iput-boolean v4, v0, Lcom/speedata/libuhf/FLX;->isLockOutTime:Z

    .line 858
    iput-boolean v4, v0, Lcom/speedata/libuhf/FLX;->isLockSuccess:Z

    .line 859
    sget-object v5, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;->NO_CHANGE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

    invoke-virtual {v5}, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;->getValue()I

    move-result v5

    .line 860
    sget-object v6, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;->NO_CHANGE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;

    invoke-virtual {v6}, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;->getValue()I

    move-result v6

    .line 861
    sget-object v7, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_MEM_PERM;->NO_CHANGE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_MEM_PERM;

    invoke-virtual {v7}, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_MEM_PERM;->getValue()I

    move-result v7

    .line 862
    sget-object v8, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_MEM_PERM;->NO_CHANGE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_MEM_PERM;

    invoke-virtual {v8}, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_MEM_PERM;->getValue()I

    move-result v8

    .line 863
    sget-object v9, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_MEM_PERM;->NO_CHANGE:Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_MEM_PERM;

    invoke-virtual {v9}, Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_MEM_PERM;->getValue()I

    move-result v9

    if-ltz v1, :cond_84

    const/4 v10, 0x3

    if-gt v1, v10, :cond_84

    if-ltz v2, :cond_84

    const/4 v11, 0x4

    if-gt v2, v11, :cond_84

    if-eqz v2, :cond_5d

    const/4 v12, 0x1

    if-eq v2, v12, :cond_58

    const/4 v12, 0x2

    if-eq v2, v12, :cond_53

    if-eq v2, v10, :cond_4e

    if-eq v2, v11, :cond_49

    :goto_42
    move v13, v5

    move v12, v6

    move v15, v7

    move v14, v8

    move/from16 v16, v9

    goto :goto_62

    .line 881
    :cond_49
    sget-object v2, Lcom/speedata/libuhf/FLX;->va:[I

    aget v9, v2, v1

    goto :goto_42

    .line 878
    :cond_4e
    sget-object v2, Lcom/speedata/libuhf/FLX;->va:[I

    aget v7, v2, v1

    goto :goto_42

    .line 875
    :cond_53
    sget-object v2, Lcom/speedata/libuhf/FLX;->va:[I

    aget v8, v2, v1

    goto :goto_42

    .line 872
    :cond_58
    sget-object v2, Lcom/speedata/libuhf/FLX;->vp:[I

    aget v6, v2, v1

    goto :goto_42

    .line 869
    :cond_5d
    sget-object v2, Lcom/speedata/libuhf/FLX;->vp:[I

    aget v5, v2, v1

    goto :goto_42

    .line 886
    :goto_62
    invoke-static/range {p3 .. p3}, Lcom/speedata/libuhf/utils/StringUtils;->stringToByte(Ljava/lang/String;)[B

    move-result-object v11

    .line 887
    invoke-virtual/range {p0 .. p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v10

    invoke-virtual/range {v10 .. v16}, Lcom/uhf/linkage/Linkage;->Radio_LockTag([BIIIII)I

    move-result v1

    if-nez v1, :cond_84

    .line 889
    new-instance v1, Lcom/speedata/libuhf/FLX$LockTimeOutThread;

    invoke-direct {v1, v0}, Lcom/speedata/libuhf/FLX$LockTimeOutThread;-><init>(Lcom/speedata/libuhf/FLX;)V

    .line 890
    invoke-virtual {v1}, Lcom/speedata/libuhf/FLX$LockTimeOutThread;->start()V

    .line 892
    :cond_78
    iget-boolean v1, v0, Lcom/speedata/libuhf/FLX;->isLockOutTime:Z

    if-nez v1, :cond_81

    .line 893
    iget-boolean v1, v0, Lcom/speedata/libuhf/FLX;->isLockSuccess:Z

    if-eqz v1, :cond_78

    return v4

    .line 897
    :cond_81
    iget v1, v0, Lcom/speedata/libuhf/FLX;->lockStatus:I

    return v1

    :cond_84
    return v3
.end method

.method public startFastMode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public stopFastMode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeArea(IIILjava/lang/String;[B)I
    .registers 13

    .line 529
    array-length v0, p5

    .line 530
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, -0x3

    if-eqz v1, :cond_7

    return v2

    .line 533
    :cond_7
    div-int/lit8 v0, v0, 0x2

    if-eq v0, p3, :cond_c

    return v2

    :cond_c
    if-ltz p1, :cond_22

    const/4 v0, 0x3

    if-gt p1, v0, :cond_22

    .line 537
    invoke-static {p4}, Lcom/speedata/libuhf/utils/StringUtils;->stringToByte(Ljava/lang/String;)[B

    move-result-object v5

    .line 538
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v1

    move v2, p3

    move v3, p2

    move v4, p1

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/uhf/linkage/Linkage;->Radio_WriteTag(III[B[B)I

    move-result p1

    return p1

    :cond_22
    const/4 p1, -0x1

    return p1
.end method

.method public writeMonzaQtTag(I[BIII[B)I
    .registers 14

    .line 688
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/uhf/linkage/Linkage;->writeMonzaQtTag(I[BIII[B)I

    move-result p1

    return p1
.end method

.method public writeMonzaQtTagSync(I[BIII[BILcom/uhf/structures/RW_Params;)I
    .registers 18

    .line 693
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/uhf/linkage/Linkage;->writeMonzaQtTagSync(I[BIII[BILcom/uhf/structures/RW_Params;)I

    move-result v0

    return v0
.end method

.method public write_area(IIILjava/lang/String;[B)I
    .registers 16

    const/4 v0, 0x0

    .line 1101
    iput-boolean v0, p0, Lcom/speedata/libuhf/FLX;->isWriteOutTime:Z

    .line 1102
    iput-boolean v0, p0, Lcom/speedata/libuhf/FLX;->isWriteSuccess:Z

    const/4 v1, -0x1

    .line 1103
    iput v1, p0, Lcom/speedata/libuhf/FLX;->writeStatus:I

    .line 1104
    array-length v2, p5

    .line 1105
    rem-int/lit8 v3, v2, 0x2

    const/4 v4, -0x3

    if-eqz v3, :cond_f

    return v4

    .line 1108
    :cond_f
    div-int/lit8 v2, v2, 0x2

    if-eq v2, p3, :cond_14

    return v4

    :cond_14
    if-ltz p1, :cond_5c

    const/4 v2, 0x3

    if-gt p1, v2, :cond_5c

    if-nez v3, :cond_5c

    .line 1112
    invoke-static {p4}, Lcom/speedata/libuhf/utils/StringUtils;->stringToByte(Ljava/lang/String;)[B

    move-result-object v8

    .line 1113
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v4

    move v5, p3

    move v6, p2

    move v7, p1

    move-object v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/uhf/linkage/Linkage;->Radio_WriteTag(III[B[B)I

    move-result p1

    .line 1115
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "write_card: \u72b6\u6001"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ZM"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_5c

    .line 1117
    new-instance p1, Lcom/speedata/libuhf/FLX$TimeOutThread;

    invoke-direct {p1, p0}, Lcom/speedata/libuhf/FLX$TimeOutThread;-><init>(Lcom/speedata/libuhf/FLX;)V

    .line 1118
    invoke-virtual {p1}, Lcom/speedata/libuhf/FLX$TimeOutThread;->start()V

    .line 1120
    :cond_4b
    iget-boolean p1, p0, Lcom/speedata/libuhf/FLX;->isWriteOutTime:Z

    if-nez p1, :cond_59

    .line 1121
    iget-boolean p1, p0, Lcom/speedata/libuhf/FLX;->isWriteSuccess:Z

    if-eqz p1, :cond_4b

    const-string p1, "write_card: \u72b6\u6001\u6210\u529f"

    .line 1122
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1126
    :cond_59
    iget p1, p0, Lcom/speedata/libuhf/FLX;->writeStatus:I

    return p1

    :cond_5c
    return v1
.end method

.method public write_area(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 14

    const/4 v0, 0x0

    .line 1136
    iput-boolean v0, p0, Lcom/speedata/libuhf/FLX;->isWriteOutTime:Z

    .line 1137
    iput-boolean v0, p0, Lcom/speedata/libuhf/FLX;->isWriteSuccess:Z

    const/4 v0, -0x1

    .line 1138
    iput v0, p0, Lcom/speedata/libuhf/FLX;->writeStatus:I

    .line 1139
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_10

    return v1

    .line 1142
    :cond_10
    invoke-static {p3}, Lcom/speedata/libuhf/utils/ByteCharStrUtils;->IsHex(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    return v1

    .line 1148
    :cond_17
    :try_start_17
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1149
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1f} :catch_28

    move-object v2, p0

    move v3, p1

    move-object v6, p3

    move-object v7, p5

    .line 1153
    invoke-virtual/range {v2 .. v7}, Lcom/speedata/libuhf/FLX;->write_card(IIILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :catch_28
    return v1
.end method

.method public write_card(IIILjava/lang/String;Ljava/lang/String;)I
    .registers 14

    .line 1158
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, -0x3

    if-eqz v0, :cond_a

    return v1

    .line 1161
    :cond_a
    invoke-static {p5}, Lcom/speedata/libuhf/utils/StringUtils;->stringToByte(Ljava/lang/String;)[B

    move-result-object v7

    .line 1162
    array-length p5, v7

    div-int/lit8 p5, p5, 0x2

    if-eq p5, p3, :cond_14

    return v1

    :cond_14
    const/4 p5, -0x1

    if-ltz p1, :cond_5b

    const/4 v0, 0x3

    if-gt p1, v0, :cond_5b

    .line 1166
    invoke-static {p4}, Lcom/speedata/libuhf/utils/StringUtils;->stringToByte(Ljava/lang/String;)[B

    move-result-object v6

    .line 1167
    invoke-virtual {p0}, Lcom/speedata/libuhf/FLX;->getLinkage()Lcom/uhf/linkage/Linkage;

    move-result-object v2

    move v3, p3

    move v4, p2

    move v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/uhf/linkage/Linkage;->Radio_WriteTag(III[B[B)I

    move-result p1

    .line 1169
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "write_card: \u72b6\u6001"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ZM"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_5b

    .line 1171
    new-instance p1, Lcom/speedata/libuhf/FLX$TimeOutThread;

    invoke-direct {p1, p0}, Lcom/speedata/libuhf/FLX$TimeOutThread;-><init>(Lcom/speedata/libuhf/FLX;)V

    .line 1172
    invoke-virtual {p1}, Lcom/speedata/libuhf/FLX$TimeOutThread;->start()V

    .line 1173
    :cond_49
    iget-boolean p1, p0, Lcom/speedata/libuhf/FLX;->isWriteOutTime:Z

    if-nez p1, :cond_58

    .line 1174
    iget-boolean p1, p0, Lcom/speedata/libuhf/FLX;->isWriteSuccess:Z

    if-eqz p1, :cond_49

    const-string p1, "write_card: \u72b6\u6001\u6210\u529f"

    .line 1175
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 1179
    :cond_58
    iget p1, p0, Lcom/speedata/libuhf/FLX;->writeStatus:I

    return p1

    :cond_5b
    return p5
.end method
