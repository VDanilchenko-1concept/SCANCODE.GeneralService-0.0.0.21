.class public Lcom/honeywell/aidc/DcsJsonRpcHelper;
.super Ljava/lang/Object;
.source "DcsJsonRpcHelper.java"


# static fields
.field private static sId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/honeywell/aidc/DcsJsonRpcHelper;->sId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/String;)Lcom/honeywell/Message;
    .registers 4

    .line 47
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "id"

    .line 49
    sget-object v2, Lcom/honeywell/aidc/DcsJsonRpcHelper;->sId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "jsonrpc"

    const-string v2, "2.0"

    .line 50
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "method"

    .line 51
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception p0

    .line 53
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 56
    :goto_21
    new-instance p0, Lcom/honeywell/Message;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/honeywell/Message;-><init>(Ljava/lang/String;)V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/honeywell/Message;->extras:Ljava/util/Map;

    return-object p0
.end method

.method public static build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/honeywell/Message;
    .registers 4

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {p0, v0}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->build(Ljava/lang/String;Ljava/util/Map;)Lcom/honeywell/Message;

    move-result-object p0

    return-object p0
.end method

.method public static build(Ljava/lang/String;Ljava/util/Map;)Lcom/honeywell/Message;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/honeywell/Message;"
        }
    .end annotation

    .line 25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "id"

    .line 27
    sget-object v2, Lcom/honeywell/aidc/DcsJsonRpcHelper;->sId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "jsonrpc"

    const-string v2, "2.0"

    .line 28
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "method"

    .line 29
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "params"

    .line 30
    invoke-static {p1}, Lcom/honeywell/aidc/JsonUtil;->mapToJson(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception p0

    .line 32
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 35
    :goto_2a
    new-instance p0, Lcom/honeywell/Message;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/honeywell/Message;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/honeywell/Message;->extras:Ljava/util/Map;

    return-object p0
.end method

.method static buildBarcodeReaderInfo(Lorg/json/JSONObject;)Lcom/honeywell/aidc/BarcodeReaderInfo;
    .registers 16

    const-string v0, "IMG_SCANNER_NAME"

    .line 105
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "dcs.scanner.imager"

    if-eqz v1, :cond_10

    .line 106
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_e
    :goto_e
    move-object v4, v2

    goto :goto_1e

    :cond_10
    const-string v0, "scanner"

    .line 107
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 108
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v2, ""

    goto :goto_e

    .line 113
    :goto_1e
    new-instance v0, Lcom/honeywell/aidc/BarcodeReaderInfo;

    const-string v1, "IMG_FRIENDLY_SCANNER_NAME"

    const-string v2, "Internal Scanner"

    .line 114
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    const-string v2, "IMG_SCAN_ENGINE"

    .line 115
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "DEC_REVISION_FULL_DECODER"

    .line 116
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "DEC_REVISION_FAST_DECODER"

    .line 117
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "DEC_REVISION_CONTROL_LOGIC"

    .line 118
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "IMG_SCAN_ENGINE_VERSION"

    .line 119
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "IMG_SCAN_ENGINE_FIRMWARE_VERSION"

    .line 120
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "IMG_SCAN_ENGINE_SERIAL_NUMBER"

    .line 121
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v1, "IMG_FRAME_HEIGHT"

    .line 122
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    const-string v1, "IMG_FRAME_WIDTH"

    .line 123
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    move-object v3, v0

    invoke-direct/range {v3 .. v14}, Lcom/honeywell/aidc/BarcodeReaderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0
.end method

.method static checkRuntimeAndScannerExceptions(Lcom/honeywell/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/honeywell/aidc/InvalidScannerNameException;
        }
    .end annotation

    const-string v0, "error"

    .line 204
    :try_start_2
    iget-object v1, p0, Lcom/honeywell/Message;->action:Ljava/lang/String;

    if-eqz v1, :cond_3e

    .line 205
    new-instance v1, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/honeywell/Message;->action:Ljava/lang/String;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 207
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "code"

    .line 209
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, -0x7f5a

    if-eq v0, v1, :cond_34

    const/16 v1, -0x7532

    if-eq v0, v1, :cond_2c

    const-string v0, "message"

    .line 215
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_40

    .line 213
    :cond_2c
    new-instance p0, Lcom/honeywell/aidc/InvalidScannerNameException;

    const-string v0, "Specified scanner name is invalid."

    invoke-direct {p0, v0}, Lcom/honeywell/aidc/InvalidScannerNameException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 211
    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid parameter(s) provided."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3c
    const/4 p0, 0x0

    goto :goto_40

    :cond_3e
    const-string p0, "Action is null"
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_40} :catch_49

    :goto_40
    if-nez p0, :cond_43

    return-void

    .line 227
    :cond_43
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_49
    move-exception p0

    .line 222
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "An error occurred while communicating with the scanner service."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static checkRuntimeError(Lcom/honeywell/Message;)V
    .registers 3

    const-string v0, "error"

    .line 133
    :try_start_2
    iget-object v1, p0, Lcom/honeywell/Message;->action:Ljava/lang/String;

    if-eqz v1, :cond_32

    .line 134
    new-instance v1, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/honeywell/Message;->action:Ljava/lang/String;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_30

    .line 136
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "code"

    .line 138
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, -0x7f5a

    if-eq v0, v1, :cond_28

    const-string v0, "message"

    .line 142
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_34

    .line 140
    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid parameter(s) provided."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_30
    const/4 p0, 0x0

    goto :goto_34

    :cond_32
    const-string p0, "Action is null"
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_34} :catch_3d

    :goto_34
    if-nez p0, :cond_37

    return-void

    .line 154
    :cond_37
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3d
    move-exception p0

    .line 149
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "An error occurred while communicating with the scanner service."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static checkScannerNotClaimedException(Lcom/honeywell/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/honeywell/aidc/ScannerNotClaimedException;
        }
    .end annotation

    const-string v0, "error"

    .line 161
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/honeywell/Message;->action:Ljava/lang/String;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 163
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "code"

    .line 164
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_19} :catch_28

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    const/16 v0, -0x7530

    if-eq p0, v0, :cond_20

    return-void

    .line 172
    :cond_20
    new-instance p0, Lcom/honeywell/aidc/ScannerNotClaimedException;

    const-string v0, "Scanner is not claimed."

    invoke-direct {p0, v0}, Lcom/honeywell/aidc/ScannerNotClaimedException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_28
    move-exception p0

    .line 167
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "An error occurred while communicating with the scanner service."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static checkScannerUnavailable(Lcom/honeywell/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/honeywell/aidc/ScannerUnavailableException;
        }
    .end annotation

    const-string v0, "error"

    .line 179
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/honeywell/Message;->action:Ljava/lang/String;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 181
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "code"

    .line 182
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_19} :catch_28

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    const/16 v0, -0x7531

    if-eq p0, v0, :cond_20

    return-void

    .line 190
    :cond_20
    new-instance p0, Lcom/honeywell/aidc/ScannerUnavailableException;

    const-string v0, "Specified scanner is unavailable."

    invoke-direct {p0, v0}, Lcom/honeywell/aidc/ScannerUnavailableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_28
    move-exception p0

    .line 185
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "An error occurred while communicating with the scanner service."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static getEvent(Ljava/lang/Object;Lcom/honeywell/Message;)Ljava/util/EventObject;
    .registers 11

    const-string v0, "bounds"

    .line 65
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/honeywell/Message;->action:Ljava/lang/String;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "method"

    .line 66
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "scanner.barcodeEvent"

    .line 67
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_15} :catch_ab

    const-string v3, "timestamp"

    const/4 v4, 0x0

    const-string v5, "params"

    if-eqz v2, :cond_5a

    .line 68
    :try_start_1c
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "barcode"

    .line 69
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 71
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 72
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_30
    move-object v7, v4

    .line 74
    new-instance v8, Lcom/honeywell/aidc/BarcodeReadEvent;

    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "charset"

    .line 75
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "honeywellId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "aimId"

    .line 76
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v0, v8

    move-object v1, p0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/honeywell/aidc/BarcodeReadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v8

    goto :goto_aa

    :cond_5a
    const-string v0, "scanner.failureEvent"

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 79
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 80
    new-instance v4, Lcom/honeywell/aidc/BarcodeFailureEvent;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p0, p1}, Lcom/honeywell/aidc/BarcodeFailureEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_aa

    :cond_70
    const-string p0, "scanner.triggerEvent"

    .line 81
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_88

    .line 82
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "state"

    .line 83
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 84
    new-instance v4, Lcom/honeywell/aidc/TriggerStateChangeEvent;

    invoke-direct {v4, p1, p0}, Lcom/honeywell/aidc/TriggerStateChangeEvent;-><init>(Ljava/lang/Object;Z)V

    goto :goto_aa

    :cond_88
    const-string p0, "internal.scannerDeviceEvent"

    .line 85
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_aa

    .line 86
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "info"

    .line 87
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 89
    invoke-static {p0}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->buildBarcodeReaderInfo(Lorg/json/JSONObject;)Lcom/honeywell/aidc/BarcodeReaderInfo;

    move-result-object v0

    const-string v1, "IMG_CONNECTION_STATUS"

    const/4 v2, 0x0

    .line 90
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    .line 92
    new-instance v4, Lcom/honeywell/aidc/BarcodeDeviceConnectionEvent;

    invoke-direct {v4, p1, v0, p0}, Lcom/honeywell/aidc/BarcodeDeviceConnectionEvent;-><init>(Ljava/lang/Object;Lcom/honeywell/aidc/BarcodeReaderInfo;I)V
    :try_end_aa
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_aa} :catch_ab

    :cond_aa
    :goto_aa
    return-object v4

    :catch_ab
    move-exception p0

    .line 95
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "An error occurred while communicating with the scanner service."

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
