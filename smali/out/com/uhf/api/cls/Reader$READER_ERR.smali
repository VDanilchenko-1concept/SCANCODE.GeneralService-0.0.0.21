.class public final enum Lcom/uhf/api/cls/Reader$READER_ERR;
.super Ljava/lang/Enum;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "READER_ERR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uhf/api/cls/Reader$READER_ERR;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum M6E_INIT_FAILED:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_CMD_NO_TAG_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_HARDWARE_ALERT_BY_FAILED_RESET_MODLUE:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_HARDWARE_ALERT_ERR_BY_HIGH_TEMPERATURE:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_HARDWARE_ALERT_ERR_BY_HIGN_RETURN_LOSS:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_HARDWARE_ALERT_ERR_BY_NO_ANTENNAS:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_HARDWARE_ALERT_ERR_BY_READER_DOWN:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_HARDWARE_ALERT_ERR_BY_TOO_MANY_RESET:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_HARDWARE_ALERT_ERR_BY_UNKNOWN_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_INTERNAL_DEV_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_INVALID_READER_HANDLE:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_IO_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_JNI_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_M5E_FATAL_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_MAX_ERR_NUM:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_MAX_INT_NUM:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_OP_EXECING:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_OP_INVALID:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_OP_NOT_SUPPORTED:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_OTHER_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_TEST_DEV_FAULT_1:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_TEST_DEV_FAULT_2:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_TEST_DEV_FAULT_3:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_TEST_DEV_FAULT_4:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_TEST_DEV_FAULT_5:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_UNKNOWN_READER_TYPE:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_UPDFWFROMSP_FILE_FORMAT_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_UPDFWFROMSP_OPENFILE_FAILED:Lcom/uhf/api/cls/Reader$READER_ERR;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 343
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/4 v1, 0x0

    const-string v2, "MT_OK_ERR"

    invoke-direct {v0, v2, v1, v1}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 344
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/4 v2, 0x1

    const-string v3, "MT_IO_ERR"

    invoke-direct {v0, v3, v2, v2}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_IO_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 345
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/4 v3, 0x2

    const-string v4, "MT_INTERNAL_DEV_ERR"

    invoke-direct {v0, v4, v3, v3}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INTERNAL_DEV_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 346
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/4 v4, 0x3

    const-string v5, "MT_CMD_FAILED_ERR"

    invoke-direct {v0, v5, v4, v4}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 347
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/4 v5, 0x4

    const-string v6, "MT_CMD_NO_TAG_ERR"

    invoke-direct {v0, v6, v5, v5}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_NO_TAG_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 348
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/4 v6, 0x5

    const-string v7, "MT_M5E_FATAL_ERR"

    invoke-direct {v0, v7, v6, v6}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_M5E_FATAL_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 349
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/4 v7, 0x6

    const-string v8, "MT_OP_NOT_SUPPORTED"

    invoke-direct {v0, v8, v7, v7}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_NOT_SUPPORTED:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 350
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/4 v8, 0x7

    const-string v9, "MT_INVALID_PARA"

    invoke-direct {v0, v9, v8, v8}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 351
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v9, 0x8

    const-string v10, "MT_INVALID_READER_HANDLE"

    invoke-direct {v0, v10, v9, v9}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_READER_HANDLE:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 352
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v10, 0x9

    const-string v11, "MT_HARDWARE_ALERT_ERR_BY_HIGN_RETURN_LOSS"

    invoke-direct {v0, v11, v10, v10}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_HIGN_RETURN_LOSS:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 353
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v11, 0xa

    const-string v12, "MT_HARDWARE_ALERT_ERR_BY_TOO_MANY_RESET"

    invoke-direct {v0, v12, v11, v11}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_TOO_MANY_RESET:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 354
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v12, 0xb

    const-string v13, "MT_HARDWARE_ALERT_ERR_BY_NO_ANTENNAS"

    invoke-direct {v0, v13, v12, v12}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_NO_ANTENNAS:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 355
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v13, 0xc

    const-string v14, "MT_HARDWARE_ALERT_ERR_BY_HIGH_TEMPERATURE"

    invoke-direct {v0, v14, v13, v13}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_HIGH_TEMPERATURE:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 356
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v14, 0xd

    const-string v15, "MT_HARDWARE_ALERT_ERR_BY_READER_DOWN"

    invoke-direct {v0, v15, v14, v14}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_READER_DOWN:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 357
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v15, 0xe

    const-string v14, "MT_HARDWARE_ALERT_ERR_BY_UNKNOWN_ERR"

    invoke-direct {v0, v14, v15, v15}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_UNKNOWN_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 358
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v14, 0xf

    const-string v15, "M6E_INIT_FAILED"

    invoke-direct {v0, v15, v14, v14}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->M6E_INIT_FAILED:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 359
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v15, 0x10

    const-string v14, "MT_OP_EXECING"

    invoke-direct {v0, v14, v15, v15}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_EXECING:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 360
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v14, 0x11

    const-string v15, "MT_UNKNOWN_READER_TYPE"

    invoke-direct {v0, v15, v14, v14}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_UNKNOWN_READER_TYPE:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 361
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v15, 0x12

    const-string v14, "MT_OP_INVALID"

    invoke-direct {v0, v14, v15, v15}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_INVALID:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 362
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v14, 0x13

    const-string v15, "MT_HARDWARE_ALERT_BY_FAILED_RESET_MODLUE"

    invoke-direct {v0, v15, v14, v14}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_BY_FAILED_RESET_MODLUE:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 363
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v15, 0x14

    const-string v14, "MT_MAX_ERR_NUM"

    invoke-direct {v0, v14, v15, v15}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_MAX_ERR_NUM:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 364
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v14, 0x15

    const-string v15, "MT_MAX_INT_NUM"

    invoke-direct {v0, v15, v14, v14}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_MAX_INT_NUM:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 365
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const-string v15, "MT_TEST_DEV_FAULT_1"

    const/16 v14, 0x16

    const/16 v13, 0x33

    invoke-direct {v0, v15, v14, v13}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_TEST_DEV_FAULT_1:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 366
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const-string v13, "MT_TEST_DEV_FAULT_2"

    const/16 v14, 0x17

    const/16 v15, 0x34

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_TEST_DEV_FAULT_2:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 367
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const-string v13, "MT_TEST_DEV_FAULT_3"

    const/16 v14, 0x18

    const/16 v15, 0x35

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_TEST_DEV_FAULT_3:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 368
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const-string v13, "MT_TEST_DEV_FAULT_4"

    const/16 v14, 0x19

    const/16 v15, 0x36

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_TEST_DEV_FAULT_4:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 369
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const-string v13, "MT_TEST_DEV_FAULT_5"

    const/16 v14, 0x1a

    const/16 v15, 0x37

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_TEST_DEV_FAULT_5:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 370
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const-string v13, "MT_UPDFWFROMSP_OPENFILE_FAILED"

    const/16 v14, 0x1b

    const/16 v15, 0x50

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_UPDFWFROMSP_OPENFILE_FAILED:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 371
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const-string v13, "MT_UPDFWFROMSP_FILE_FORMAT_ERR"

    const/16 v14, 0x1c

    const/16 v15, 0x51

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_UPDFWFROMSP_FILE_FORMAT_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 372
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const-string v13, "MT_JNI_INVALID_PARA"

    const/16 v14, 0x1d

    const/16 v15, 0x65

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_JNI_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 373
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const-string v13, "MT_OTHER_ERR"

    const/16 v14, 0x1e

    const v15, -0x10000001

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OTHER_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v13, 0x1f

    new-array v13, v13, [Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 341
    sget-object v14, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    aput-object v14, v13, v1

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_IO_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    aput-object v1, v13, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INTERNAL_DEV_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    aput-object v1, v13, v3

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    aput-object v1, v13, v4

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_NO_TAG_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    aput-object v1, v13, v5

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_M5E_FATAL_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    aput-object v1, v13, v6

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_NOT_SUPPORTED:Lcom/uhf/api/cls/Reader$READER_ERR;

    aput-object v1, v13, v7

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    aput-object v1, v13, v8

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_READER_HANDLE:Lcom/uhf/api/cls/Reader$READER_ERR;

    aput-object v1, v13, v9

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_HIGN_RETURN_LOSS:Lcom/uhf/api/cls/Reader$READER_ERR;

    aput-object v1, v13, v10

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_TOO_MANY_RESET:Lcom/uhf/api/cls/Reader$READER_ERR;

    aput-object v1, v13, v11

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_NO_ANTENNAS:Lcom/uhf/api/cls/Reader$READER_ERR;

    aput-object v1, v13, v12

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_HIGH_TEMPERATURE:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0xc

    aput-object v1, v13, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_READER_DOWN:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0xd

    aput-object v1, v13, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_UNKNOWN_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0xe

    aput-object v1, v13, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->M6E_INIT_FAILED:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0xf

    aput-object v1, v13, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_EXECING:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0x10

    aput-object v1, v13, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_UNKNOWN_READER_TYPE:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0x11

    aput-object v1, v13, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_INVALID:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0x12

    aput-object v1, v13, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_BY_FAILED_RESET_MODLUE:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0x13

    aput-object v1, v13, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_MAX_ERR_NUM:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0x14

    aput-object v1, v13, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_MAX_INT_NUM:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0x15

    aput-object v1, v13, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_TEST_DEV_FAULT_1:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0x16

    aput-object v1, v13, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_TEST_DEV_FAULT_2:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0x17

    aput-object v1, v13, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_TEST_DEV_FAULT_3:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0x18

    aput-object v1, v13, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_TEST_DEV_FAULT_4:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0x19

    aput-object v1, v13, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_TEST_DEV_FAULT_5:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0x1a

    aput-object v1, v13, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_UPDFWFROMSP_OPENFILE_FAILED:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0x1b

    aput-object v1, v13, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_UPDFWFROMSP_FILE_FORMAT_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0x1c

    aput-object v1, v13, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_JNI_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0x1d

    aput-object v1, v13, v2

    const/16 v1, 0x1e

    aput-object v0, v13, v1

    sput-object v13, Lcom/uhf/api/cls/Reader$READER_ERR;->ENUM$VALUES:[Lcom/uhf/api/cls/Reader$READER_ERR;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 375
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 374
    iput p1, p0, Lcom/uhf/api/cls/Reader$READER_ERR;->value:I

    .line 376
    iput p3, p0, Lcom/uhf/api/cls/Reader$READER_ERR;->value:I

    return-void
.end method

.method static synthetic access$2(Lcom/uhf/api/cls/Reader$READER_ERR;)I
    .registers 1

    .line 374
    iget p0, p0, Lcom/uhf/api/cls/Reader$READER_ERR;->value:I

    return p0
.end method

.method public static valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 2

    const/16 v0, 0x50

    if-eq p0, v0, :cond_6c

    const/16 v0, 0x51

    if-eq p0, v0, :cond_69

    const/16 v0, 0x65

    if-eq p0, v0, :cond_66

    packed-switch p0, :pswitch_data_70

    packed-switch p0, :pswitch_data_a0

    .line 441
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OTHER_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 437
    :pswitch_15
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_TEST_DEV_FAULT_5:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 435
    :pswitch_18
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_TEST_DEV_FAULT_4:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 433
    :pswitch_1b
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_TEST_DEV_FAULT_3:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 431
    :pswitch_1e
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_TEST_DEV_FAULT_2:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 429
    :pswitch_21
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_TEST_DEV_FAULT_1:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 427
    :pswitch_24
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OTHER_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 425
    :pswitch_27
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OTHER_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 419
    :pswitch_2a
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_BY_FAILED_RESET_MODLUE:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 417
    :pswitch_2d
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_INVALID:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 415
    :pswitch_30
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_UNKNOWN_READER_TYPE:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 413
    :pswitch_33
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_EXECING:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 411
    :pswitch_36
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->M6E_INIT_FAILED:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 409
    :pswitch_39
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_UNKNOWN_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 407
    :pswitch_3c
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_READER_DOWN:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 405
    :pswitch_3f
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_HIGH_TEMPERATURE:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 403
    :pswitch_42
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_NO_ANTENNAS:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 401
    :pswitch_45
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_TOO_MANY_RESET:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 399
    :pswitch_48
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_HIGN_RETURN_LOSS:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 397
    :pswitch_4b
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_READER_HANDLE:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 395
    :pswitch_4e
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 393
    :pswitch_51
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_NOT_SUPPORTED:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 391
    :pswitch_54
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_M5E_FATAL_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 389
    :pswitch_57
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_NO_TAG_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 387
    :pswitch_5a
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 385
    :pswitch_5d
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INTERNAL_DEV_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 383
    :pswitch_60
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_IO_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 381
    :pswitch_63
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 439
    :cond_66
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_JNI_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 423
    :cond_69
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_UPDFWFROMSP_FILE_FORMAT_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 421
    :cond_6c
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_UPDFWFROMSP_OPENFILE_FAILED:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    nop

    :pswitch_data_70
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
    .end packed-switch

    :pswitch_data_a0
    .packed-switch 0x33
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 2

    .line 1
    const-class v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0
.end method

.method public static values()[Lcom/uhf/api/cls/Reader$READER_ERR;
    .registers 4

    .line 1
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->ENUM$VALUES:[Lcom/uhf/api/cls/Reader$READER_ERR;

    array-length v1, v0

    new-array v2, v1, [Lcom/uhf/api/cls/Reader$READER_ERR;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public value()I
    .registers 2

    .line 445
    iget v0, p0, Lcom/uhf/api/cls/Reader$READER_ERR;->value:I

    return v0
.end method
