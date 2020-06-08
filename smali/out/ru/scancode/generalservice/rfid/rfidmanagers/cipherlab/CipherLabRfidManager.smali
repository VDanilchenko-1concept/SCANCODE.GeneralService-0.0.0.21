.class public Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;
.super Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager;
.source "CipherLabRfidManager.java"


# static fields
.field private static final CONNECTED:Ljava/lang/String; = "com.cipherlab.rfidservice.SERVICE_CONNECTED"

.field private static final EPC:Ljava/lang/String; = "EPC"

.field private static final GUN_ATTACHED:Ljava/lang/String; = "com.cipherlab.rfidservice.GUN_Attached"

.field private static final GUN_UNATTACHED:Ljava/lang/String; = "com.cipherlab.rfidservice.GUN_Unattached"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "PackageName"

.field private static final PASSWD:Ljava/lang/String; = "00000000"

.field private static final READDATA:Ljava/lang/String; = "ReadData"

.field private static final RESPONSE:Ljava/lang/String; = "response"

.field private static final TAG_DATA:Ljava/lang/String; = "com.cipherlab.rfidservice.SERVICE_TAG_DATA"

.field private static final TID:Ljava/lang/String; = "TID"

.field private static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field private bInventory:Z

.field private receiver:Landroid/content/BroadcastReceiver;

.field private rfidManager:Lcom/cipherlab/rfidapi/RfidManager;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/scancode/generalservice/utils/RfidTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 192
    invoke-direct {p0, p1}, Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->bInventory:Z

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->tags:Ljava/util/List;

    .line 46
    new-instance p1, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager$1;

    invoke-direct {p1, p0}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager$1;-><init>(Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;)V

    iput-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private static StringToByteArray(Ljava/lang/String;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_2f

    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 139
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_27

    .line 141
    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_26

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x2

    .line 145
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_26
    return-object v1

    .line 149
    :cond_27
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "The binary key cannot have an odd number of digits"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 151
    :cond_2f
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "The binary key is empty"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_38

    :goto_37
    throw p0

    :goto_38
    goto :goto_37
.end method

.method static synthetic access$000(Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;)Ljava/util/Timer;
    .registers 1

    .line 26
    iget-object p0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->connect_timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$100(Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;)Ljava/util/Timer;
    .registers 1

    .line 26
    iget-object p0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->connect_timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$1000(Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;Lru/scancode/generalservice/utils/RfidTag;)V
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->sendReadRfidTag(Lru/scancode/generalservice/utils/RfidTag;)V

    return-void
.end method

.method static synthetic access$1100(Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;Ljava/lang/String;)V
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->sendError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;)Lcom/cipherlab/rfidapi/RfidManager;
    .registers 1

    .line 26
    iget-object p0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->rfidManager:Lcom/cipherlab/rfidapi/RfidManager;

    return-object p0
.end method

.method static synthetic access$300(Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;)V
    .registers 1

    .line 26
    invoke-virtual {p0}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->sendConnected()V

    return-void
.end method

.method static synthetic access$400(Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;Z)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->setTriggerEnable(Z)V

    return-void
.end method

.method static synthetic access$500(Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;I)Ljava/lang/String;
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->responseHandler(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;Ljava/lang/String;)V
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->sendError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;Ljava/lang/String;)Lru/scancode/generalservice/utils/RfidTag;
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->getTagByEpc(Ljava/lang/String;)Lru/scancode/generalservice/utils/RfidTag;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;)Ljava/util/List;
    .registers 1

    .line 26
    iget-object p0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->tags:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;Lru/scancode/generalservice/utils/RfidTag;)V
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->sendGetRfidTag(Lru/scancode/generalservice/utils/RfidTag;)V

    return-void
.end method

.method private getIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    .line 196
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.cipherlab.rfidservice.SERVICE_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.cipherlab.rfidservice.SERVICE_TAG_DATA"

    .line 197
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.cipherlab.rfidservice.GUN_Attached"

    .line 198
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.cipherlab.rfidservice.GUN_Unattached"

    .line 199
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method private getTagByEpc(Ljava/lang/String;)Lru/scancode/generalservice/utils/RfidTag;
    .registers 5

    if-eqz p1, :cond_1f

    .line 158
    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/scancode/generalservice/utils/RfidTag;

    .line 159
    invoke-virtual {v1}, Lru/scancode/generalservice/utils/RfidTag;->getEpc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    return-object v1
.end method

.method private responseHandler(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1c

    const/4 v0, 0x3

    if-eq p1, v0, :cond_19

    const/4 v0, 0x6

    if-eq p1, v0, :cond_16

    const/16 v0, 0xfb

    if-eq p1, v0, :cond_13

    const-string p1, ""

    goto :goto_21

    :cond_13
    const-string p1, "device busy"

    goto :goto_21

    :cond_16
    const-string p1, "password failed"

    goto :goto_21

    :cond_19
    const-string p1, "tag lock"

    goto :goto_21

    :cond_1c
    const-string p1, "operation failed"

    goto :goto_21

    :cond_1f
    const-string p1, "operation finish"

    .line 187
    :goto_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->rfidManager:Lcom/cipherlab/rfidapi/RfidManager;

    invoke-virtual {p1}, Lcom/cipherlab/rfidapi/RfidManager;->GetLastError()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setTriggerEnable(Z)V
    .registers 3

    .line 128
    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->rfidManager:Lcom/cipherlab/rfidapi/RfidManager;

    invoke-virtual {v0, p1}, Lcom/cipherlab/rfidapi/RfidManager;->EnableDeviceTrigger(Z)I

    move-result p1

    if-eqz p1, :cond_27

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->rfidManager:Lcom/cipherlab/rfidapi/RfidManager;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/cipherlab/rfidapi/RfidManager;->GetLastError()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_1b
    const-string v0, ""

    :goto_1d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->sendError(Ljava/lang/String;)V

    :cond_27
    return-void
.end method


# virtual methods
.method public closeDevice()V
    .registers 3

    .line 220
    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->rfidManager:Lcom/cipherlab/rfidapi/RfidManager;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    .line 221
    invoke-virtual {v0, v1}, Lcom/cipherlab/rfidapi/RfidManager;->EnableDeviceTrigger(Z)I

    .line 222
    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->rfidManager:Lcom/cipherlab/rfidapi/RfidManager;

    invoke-virtual {v0}, Lcom/cipherlab/rfidapi/RfidManager;->Release()V

    .line 225
    :cond_d
    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public openDevice(Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;I)V
    .registers 6

    .line 205
    iput-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->callback:Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;

    .line 207
    iget-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->connect_timer:Ljava/util/Timer;

    new-instance v0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager$2;

    invoke-direct {v0, p0}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager$2;-><init>(Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;)V

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 214
    iget-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->context:Landroid/content/Context;

    iget-object p2, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->receiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 215
    iget-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/cipherlab/rfidapi/RfidManager;->InitInstance(Landroid/content/Context;)Lcom/cipherlab/rfidapi/RfidManager;

    move-result-object p1

    iput-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->rfidManager:Lcom/cipherlab/rfidapi/RfidManager;

    return-void
.end method

.method public read(Ljava/lang/String;Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;)V
    .registers 13

    .line 260
    iget-object p2, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->rfidManager:Lcom/cipherlab/rfidapi/RfidManager;

    if-eqz p2, :cond_77

    .line 261
    sget-object v0, Lcom/cipherlab/rfid/RFIDMode;->ReadTag:Lcom/cipherlab/rfid/RFIDMode;

    invoke-virtual {p2, v0}, Lcom/cipherlab/rfidapi/RfidManager;->SetRFIDMode(Lcom/cipherlab/rfid/RFIDMode;)I

    const-string p2, "error: "

    const-string v0, "00000000"

    if-eqz p1, :cond_44

    .line 265
    :try_start_f
    iget-object v1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->rfidManager:Lcom/cipherlab/rfidapi/RfidManager;

    sget-object v2, Lcom/cipherlab/rfid/WorkMode;->SingleTagMode:Lcom/cipherlab/rfid/WorkMode;

    invoke-virtual {v1, v2}, Lcom/cipherlab/rfidapi/RfidManager;->SetWorkMode(Lcom/cipherlab/rfid/WorkMode;)I

    .line 266
    iget-object v3, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->rfidManager:Lcom/cipherlab/rfidapi/RfidManager;

    invoke-static {v0}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->StringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {p1}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->StringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    sget-object v6, Lcom/cipherlab/rfid/RFIDMemoryBank;->User:Lcom/cipherlab/rfid/RFIDMemoryBank;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-virtual/range {v3 .. v9}, Lcom/cipherlab/rfidapi/RfidManager;->RFIDDirectReadTagByEPC([B[BLcom/cipherlab/rfid/RFIDMemoryBank;III)I

    move-result p1

    if-eqz p1, :cond_77

    .line 268
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->rfidManager:Lcom/cipherlab/rfidapi/RfidManager;

    invoke-virtual {p2}, Lcom/cipherlab/rfidapi/RfidManager;->GetLastError()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->sendError(Ljava/lang/String;)V

    goto :goto_77

    .line 271
    :cond_44
    iget-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->rfidManager:Lcom/cipherlab/rfidapi/RfidManager;

    sget-object v1, Lcom/cipherlab/rfid/WorkMode;->MultiTagMode:Lcom/cipherlab/rfid/WorkMode;

    invoke-virtual {p1, v1}, Lcom/cipherlab/rfidapi/RfidManager;->SetWorkMode(Lcom/cipherlab/rfid/WorkMode;)I

    .line 272
    iget-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->rfidManager:Lcom/cipherlab/rfidapi/RfidManager;

    invoke-static {v0}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->StringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v1, Lcom/cipherlab/rfid/RFIDMemoryBank;->User:Lcom/cipherlab/rfid/RFIDMemoryBank;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/cipherlab/rfidapi/RfidManager;->RFIDReadTagMassive([BLcom/cipherlab/rfid/RFIDMemoryBank;II)I

    move-result p1

    if-eqz p1, :cond_77

    .line 274
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->rfidManager:Lcom/cipherlab/rfidapi/RfidManager;

    invoke-virtual {p2}, Lcom/cipherlab/rfidapi/RfidManager;->GetLastError()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->sendError(Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_72} :catch_73

    goto :goto_77

    :catch_73
    move-exception p1

    .line 278
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_77
    :goto_77
    return-void
.end method

.method public startScan(Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;)V
    .registers 4

    .line 230
    iput-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->callback:Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;

    .line 232
    iget-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->rfidManager:Lcom/cipherlab/rfidapi/RfidManager;

    if-eqz p1, :cond_47

    .line 233
    sget-object v0, Lcom/cipherlab/rfid/RFIDMode;->Inventory:Lcom/cipherlab/rfid/RFIDMode;

    invoke-virtual {p1, v0}, Lcom/cipherlab/rfidapi/RfidManager;->SetRFIDMode(Lcom/cipherlab/rfid/RFIDMode;)I

    .line 234
    iget-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->rfidManager:Lcom/cipherlab/rfidapi/RfidManager;

    sget-object v0, Lcom/cipherlab/rfid/WorkMode;->MultiTagMode:Lcom/cipherlab/rfid/WorkMode;

    invoke-virtual {p1, v0}, Lcom/cipherlab/rfidapi/RfidManager;->SetWorkMode(Lcom/cipherlab/rfid/WorkMode;)I

    .line 236
    iget-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->tags:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 237
    iget-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->rfidManager:Lcom/cipherlab/rfidapi/RfidManager;

    sget-object v0, Lcom/cipherlab/rfid/InventoryType;->EPC:Lcom/cipherlab/rfid/InventoryType;

    const/16 v1, 0xfe

    invoke-virtual {p1, v0, v1}, Lcom/cipherlab/rfidapi/RfidManager;->RFIDDirectStartInventoryRound(Lcom/cipherlab/rfid/InventoryType;I)I

    move-result p1

    .line 238
    sget-object v0, Lcom/cipherlab/rfid/ClResult;->S_OK:Lcom/cipherlab/rfid/ClResult;

    invoke-virtual {v0}, Lcom/cipherlab/rfid/ClResult;->ordinal()I

    move-result v0

    if-eq p1, v0, :cond_44

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->rfidManager:Lcom/cipherlab/rfidapi/RfidManager;

    invoke-virtual {v0}, Lcom/cipherlab/rfidapi/RfidManager;->GetLastError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->sendError(Ljava/lang/String;)V

    goto :goto_47

    :cond_44
    const/4 p1, 0x1

    .line 241
    iput-boolean p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->bInventory:Z

    :cond_47
    :goto_47
    return-void
.end method

.method public stopScan()V
    .registers 3

    .line 248
    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->rfidManager:Lcom/cipherlab/rfidapi/RfidManager;

    if-eqz v0, :cond_b

    .line 249
    iget-boolean v1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->bInventory:Z

    if-eqz v1, :cond_b

    .line 250
    invoke-virtual {v0}, Lcom/cipherlab/rfidapi/RfidManager;->RFIDDirectCancelInventoryRound()I

    :cond_b
    return-void
.end method

.method public write(Ljava/lang/String;IILjava/lang/String;ILru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;)V
    .registers 14

    .line 285
    iget-object p6, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->rfidManager:Lcom/cipherlab/rfidapi/RfidManager;

    if-eqz p6, :cond_34

    .line 286
    sget-object p6, Lcom/cipherlab/rfid/RFIDMemoryBank;->User:Lcom/cipherlab/rfid/RFIDMemoryBank;

    if-eqz p2, :cond_1c

    const/4 v0, 0x1

    if-eq p2, v0, :cond_19

    const/4 v0, 0x2

    if-eq p2, v0, :cond_16

    const/4 v0, 0x3

    if-eq p2, v0, :cond_13

    :goto_11
    move-object v3, p6

    goto :goto_1f

    .line 298
    :cond_13
    sget-object p6, Lcom/cipherlab/rfid/RFIDMemoryBank;->User:Lcom/cipherlab/rfid/RFIDMemoryBank;

    goto :goto_11

    .line 295
    :cond_16
    sget-object p6, Lcom/cipherlab/rfid/RFIDMemoryBank;->Err:Lcom/cipherlab/rfid/RFIDMemoryBank;

    goto :goto_11

    .line 292
    :cond_19
    sget-object p6, Lcom/cipherlab/rfid/RFIDMemoryBank;->TID:Lcom/cipherlab/rfid/RFIDMemoryBank;

    goto :goto_11

    .line 289
    :cond_1c
    sget-object p6, Lcom/cipherlab/rfid/RFIDMemoryBank;->EPC:Lcom/cipherlab/rfid/RFIDMemoryBank;

    goto :goto_11

    .line 301
    :goto_1f
    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->rfidManager:Lcom/cipherlab/rfidapi/RfidManager;

    const-string p2, "00000000"

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move v4, p5

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/cipherlab/rfidapi/RfidManager;->RFIDDirectWriteTagByEPC([B[BLcom/cipherlab/rfid/RFIDMemoryBank;II[B)Lcom/cipherlab/rfid/DeviceResponse;

    :cond_34
    return-void
.end method
