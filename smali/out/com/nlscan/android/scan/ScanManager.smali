.class public Lcom/nlscan/android/scan/ScanManager;
.super Ljava/lang/Object;
.source "ScanManager.java"


# static fields
.field public static final ACTION_SEND_SCAN_RESULT:Ljava/lang/String;

.field public static final EXTRA_SCAN_BARCODE:Ljava/lang/String;

.field public static final EXTRA_SCAN_BARCODE_SEC:Ljava/lang/String;

.field public static final EXTRA_SCAN_RESULT_ONE_BYTES:Ljava/lang/String;

.field public static final EXTRA_SCAN_RESULT_TWO_BYTES:Ljava/lang/String;

.field public static final EXTRA_SCAN_SPAN_TIME:Ljava/lang/String;

.field public static final EXTRA_SCAN_STATE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "com.nlscan.android.config.BroadcastManager"

    const-string v1, "ACTION_SEND_SCAN_RESULT"

    const-string v2, "com.android.action.SEND_SCAN_RESULT"

    .line 18
    invoke-static {v0, v1, v2}, Lcom/nlscan/android/scan/ScanManager;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/nlscan/android/scan/ScanManager;->ACTION_SEND_SCAN_RESULT:Ljava/lang/String;

    const-string v1, "EXTRA_SCAN_BARCODE"

    const-string v2, "SCAN_BARCODE1"

    .line 23
    invoke-static {v0, v1, v2}, Lcom/nlscan/android/scan/ScanManager;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/nlscan/android/scan/ScanManager;->EXTRA_SCAN_BARCODE:Ljava/lang/String;

    const-string v1, "EXTRA_SCAN_BARCODE_SEC"

    const-string v2, "SCAN_BARCODE2"

    .line 28
    invoke-static {v0, v1, v2}, Lcom/nlscan/android/scan/ScanManager;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/nlscan/android/scan/ScanManager;->EXTRA_SCAN_BARCODE_SEC:Ljava/lang/String;

    const-string v1, "EXTRA_SCAN_RESULT_ONE_BYTES"

    const-string v2, "scan_result_one_bytes"

    .line 33
    invoke-static {v0, v1, v2}, Lcom/nlscan/android/scan/ScanManager;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/nlscan/android/scan/ScanManager;->EXTRA_SCAN_RESULT_ONE_BYTES:Ljava/lang/String;

    const-string v1, "EXTRA_SCAN_RESULT_TWO_BYTES"

    const-string v2, "scan_result_two_bytes"

    .line 38
    invoke-static {v0, v1, v2}, Lcom/nlscan/android/scan/ScanManager;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/nlscan/android/scan/ScanManager;->EXTRA_SCAN_RESULT_TWO_BYTES:Ljava/lang/String;

    const-string v1, "EXTRA_SCAN_SPAN_TIME"

    const-string v2, "scan_span_time"

    .line 43
    invoke-static {v0, v1, v2}, Lcom/nlscan/android/scan/ScanManager;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/nlscan/android/scan/ScanManager;->EXTRA_SCAN_SPAN_TIME:Ljava/lang/String;

    const-string v1, "EXTRA_SCAN_STATE"

    const-string v2, "SCAN_STATE"

    .line 48
    invoke-static {v0, v1, v2}, Lcom/nlscan/android/scan/ScanManager;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nlscan/android/scan/ScanManager;->EXTRA_SCAN_STATE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/nlscan/android/scan/ScanManager;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getStringFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 399
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 400
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 401
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    return-object p2
.end method


# virtual methods
.method public disableBeep()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public enableBeep()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getScanSettings()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getScanerSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    return-object p3
.end method

.method public getScannerModel()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getScannerType()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getScannerVersion()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public setAutoNewLineEnable(Z)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setCodeParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public setEmulateOutputIntervalTime(J)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public setJScode(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setJScodeEnable(Z)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setNonRepeatTimeOunt(J)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public setOutpuMode(I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setOutputRecoverable(Z)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setPrefix(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setPrefixEnable(Z)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setReplaceContent(Ljava/util/Map;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public setReplaceContent([Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setScanEnable(Z)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setScanEncode(I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setScanIntervalTime(J)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public setScanMode(I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setScanPromptLEDEnable(Z)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setScanPromptVibrateEnable(Z)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setScanTimeout(J)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public setSubResutLimits([I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setSuffix(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setSuffixEnable(Z)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setTriggerEnable(Ljava/lang/String;Z)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized startScan()Z
    .registers 2

    monitor-enter p0

    .line 64
    monitor-exit p0

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized startScan(J)Z
    .registers 3

    monitor-enter p0

    .line 73
    monitor-exit p0

    const/4 p1, 0x0

    return p1
.end method

.method public stopScan()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
