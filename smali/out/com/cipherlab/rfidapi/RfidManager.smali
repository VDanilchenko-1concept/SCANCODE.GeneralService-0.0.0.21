.class public Lcom/cipherlab/rfidapi/RfidManager;
.super Ljava/lang/Object;
.source "RfidManager.java"


# static fields
.field private static _instance:Lcom/cipherlab/rfidapi/RfidManager;

.field private static mContext:Landroid/content/Context;

.field private static mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;


# instance fields
.field mMyRfidManagerSemaphore:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cipherlab/rfidapi/RfidManager;->mMyRfidManagerSemaphore:Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->GetInstance(Landroid/content/Context;)Lcom/cipherlab/rfidapi/RfidManagerAPI;

    move-result-object v0

    sput-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    .line 44
    invoke-direct {p0}, Lcom/cipherlab/rfidapi/RfidManager;->isRfidServiceRunning()Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    if-eqz v0, :cond_1f

    .line 46
    invoke-virtual {v0}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->bindBRfidService()V

    :cond_1f
    return-void
.end method

.method public static InitInstance(Landroid/content/Context;)Lcom/cipherlab/rfidapi/RfidManager;
    .registers 2

    .line 72
    sput-object p0, Lcom/cipherlab/rfidapi/RfidManager;->mContext:Landroid/content/Context;

    .line 73
    sget-object p0, Lcom/cipherlab/rfidapi/RfidManager;->_instance:Lcom/cipherlab/rfidapi/RfidManager;

    if-nez p0, :cond_e

    .line 75
    new-instance p0, Lcom/cipherlab/rfidapi/RfidManager;

    invoke-direct {p0}, Lcom/cipherlab/rfidapi/RfidManager;-><init>()V

    sput-object p0, Lcom/cipherlab/rfidapi/RfidManager;->_instance:Lcom/cipherlab/rfidapi/RfidManager;

    goto :goto_20

    .line 77
    :cond_e
    sget-object p0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    iget-boolean p0, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->bindServiceFlag:Z

    if-eqz p0, :cond_20

    .line 79
    sget-object p0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {p0}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->Intent_RfidService_Connected()V

    const-string p0, "RFID_Service"

    const-string v0, "[InitInstance] Broadcast Intent_RFIDSERVICE_CONNECTED"

    .line 81
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_20
    :goto_20
    sget-object p0, Lcom/cipherlab/rfidapi/RfidManager;->_instance:Lcom/cipherlab/rfidapi/RfidManager;

    return-object p0
.end method

.method private isRfidServiceRunning()Z
    .registers 4

    .line 522
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v1, 0x7fffffff

    .line 524
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 523
    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1d

    const/4 v0, 0x0

    return v0

    .line 524
    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 526
    iget-object v1, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.cipherlab.rfidservice.MainService"

    .line 525
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public DeviceTriggerStatus()I
    .registers 2

    .line 485
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->DeviceTriggerStatus()I

    move-result v0

    return v0
.end method

.method public EnableDeviceTrigger(Z)I
    .registers 3

    .line 490
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->EnableDeviceTrigger(Z)I

    move-result p1

    return p1
.end method

.method public FirmwareUpdate(Ljava/lang/String;)I
    .registers 3

    .line 158
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->FirmwareUpdate(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public GetAPIVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "1.0.13"

    return-object v0
.end method

.method public GetAllGen2(Lcom/cipherlab/rfid/AllGen2Settings;)I
    .registers 3

    .line 470
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->GetAllGen2(Lcom/cipherlab/rfid/AllGen2Settings;)I

    move-result p1

    return p1
.end method

.method public GetAllQValue(Lcom/cipherlab/rfid/AllQValue;)I
    .registers 3

    .line 440
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->GetAllQValue(Lcom/cipherlab/rfid/AllQValue;)I

    move-result p1

    return p1
.end method

.method public GetAllRFLink(Lcom/cipherlab/rfid/AllRFLink;)I
    .registers 3

    .line 450
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->GetAllRFLink(Lcom/cipherlab/rfid/AllRFLink;)I

    move-result p1

    return p1
.end method

.method public GetBatteryLifePercent(Lcom/cipherlab/rfid/DeviceVoltageInfo;)I
    .registers 5

    .line 129
    new-instance v0, Lcom/cipherlab/rfid/DeviceVoltageInfo;

    invoke-direct {v0}, Lcom/cipherlab/rfid/DeviceVoltageInfo;-><init>()V

    .line 130
    sget-object v1, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v1, v0}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->GetBatteryLifePercent(Lcom/cipherlab/rfid/DeviceVoltageInfo;)I

    move-result v1

    .line 131
    iget v2, v0, Lcom/cipherlab/rfid/DeviceVoltageInfo;->Percentage:I

    iput v2, p1, Lcom/cipherlab/rfid/DeviceVoltageInfo;->Percentage:I

    .line 132
    iget-object v2, v0, Lcom/cipherlab/rfid/DeviceVoltageInfo;->Voltage:Ljava/lang/Double;

    iput-object v2, p1, Lcom/cipherlab/rfid/DeviceVoltageInfo;->Voltage:Ljava/lang/Double;

    .line 133
    iget v0, v0, Lcom/cipherlab/rfid/DeviceVoltageInfo;->ChargeStatus:I

    iput v0, p1, Lcom/cipherlab/rfid/DeviceVoltageInfo;->ChargeStatus:I

    return v1
.end method

.method public GetConnectionStatus()Z
    .registers 2

    .line 410
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->GetConnectionStatus()Z

    move-result v0

    return v0
.end method

.method public GetDeviceInfo()Lcom/cipherlab/rfid/DeviceInfo;
    .registers 2

    .line 105
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->GetDeviceInfo()Lcom/cipherlab/rfid/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public GetDevicePowerSavingState()I
    .registers 2

    .line 111
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->GetDevicePowerSavingState()I

    move-result v0

    return v0
.end method

.method public GetExcludedEPCFilter(Lcom/cipherlab/rfid/RfidEpcFilter;)I
    .registers 3

    .line 341
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->GetExcludedEPCFilter(Lcom/cipherlab/rfid/RfidEpcFilter;)I

    move-result p1

    return p1
.end method

.method public GetGen2(Lcom/cipherlab/rfid/Gen2Settings;)I
    .registers 3

    .line 460
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->GetGen2(Lcom/cipherlab/rfid/Gen2Settings;)I

    move-result p1

    return p1
.end method

.method public GetIncludedEPCFilter(Lcom/cipherlab/rfid/RfidEpcFilter;)I
    .registers 3

    .line 329
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->GetIncludedEPCFilter(Lcom/cipherlab/rfid/RfidEpcFilter;)I

    move-result p1

    return p1
.end method

.method public GetLastError()Ljava/lang/String;
    .registers 2

    .line 99
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->GetLastError()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetModuleTemperature(Lcom/cipherlab/rfid/ModuleTemperature;)I
    .registers 3

    .line 359
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->GetModuleTemperature(Lcom/cipherlab/rfid/ModuleTemperature;)I

    move-result p1

    return p1
.end method

.method public GetNotification(Lcom/cipherlab/rfid/NotificationParams;)I
    .registers 3

    .line 377
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->GetNotification(Lcom/cipherlab/rfid/NotificationParams;)I

    move-result p1

    return p1
.end method

.method public GetQValue()Lcom/cipherlab/rfid/QValue;
    .registers 2

    .line 232
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->GetQValue()Lcom/cipherlab/rfid/QValue;

    move-result-object v0

    return-object v0
.end method

.method public GetRFIDMode()Lcom/cipherlab/rfid/RFIDMode;
    .registers 2

    .line 208
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->GetRFIDMode()Lcom/cipherlab/rfid/RFIDMode;

    move-result-object v0

    return-object v0
.end method

.method public GetRFIDSwitchStatus()I
    .registers 2

    .line 176
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->GetRFIDSwitchStatus()I

    move-result v0

    return v0
.end method

.method public GetRFLink()Lcom/cipherlab/rfid/RFLink;
    .registers 2

    .line 415
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->GetRFLink()Lcom/cipherlab/rfid/RFLink;

    move-result-object v0

    return-object v0
.end method

.method public GetRecognizedEPCEncoding(Lcom/cipherlab/rfid/EPCEncodingScheme;)I
    .registers 3

    .line 495
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->GetRecognizedEPCEncoding(Lcom/cipherlab/rfid/EPCEncodingScheme;)I

    move-result p1

    return p1
.end method

.method public GetScanMode()Lcom/cipherlab/rfid/ScanMode;
    .registers 2

    .line 182
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->GetScanMode()Lcom/cipherlab/rfid/ScanMode;

    move-result-object v0

    return-object v0
.end method

.method public GetSelectedMemoryBank()Lcom/cipherlab/rfid/RFIDMemoryBank;
    .registers 2

    .line 220
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->GetSelectedMemoryBank()Lcom/cipherlab/rfid/RFIDMemoryBank;

    move-result-object v0

    return-object v0
.end method

.method public GetServiceVersion()Ljava/lang/String;
    .registers 2

    .line 94
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->GetServiceVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetTxPower()I
    .registers 2

    .line 244
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->GetTxPower()I

    move-result v0

    return v0
.end method

.method public GetWorkMode()Lcom/cipherlab/rfid/WorkMode;
    .registers 2

    .line 400
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->GetWorkMode()Lcom/cipherlab/rfid/WorkMode;

    move-result-object v0

    return-object v0
.end method

.method public KeepDeviceAlive()V
    .registers 2

    .line 123
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->KeepDeviceAlive()V

    return-void
.end method

.method public RFIDDirectCancelInventoryRound()I
    .registers 2

    .line 262
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->RFIDDirectCancelInventoryRound()I

    move-result v0

    return v0
.end method

.method public RFIDDirectKillTag([B[B)Lcom/cipherlab/rfid/DeviceResponse;
    .registers 4

    .line 305
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->RFIDDirectKillTag([B[B)Lcom/cipherlab/rfid/DeviceResponse;

    move-result-object p1

    return-object p1
.end method

.method public RFIDDirectLockTag([B[BLcom/cipherlab/rfid/LockTarget;)Lcom/cipherlab/rfid/DeviceResponse;
    .registers 5

    .line 317
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->RFIDDirectLockTag([B[BLcom/cipherlab/rfid/LockTarget;)Lcom/cipherlab/rfid/DeviceResponse;

    move-result-object p1

    return-object p1
.end method

.method public RFIDDirectPermanentLockTag([B[BLcom/cipherlab/rfid/LockTarget;)Lcom/cipherlab/rfid/DeviceResponse;
    .registers 5

    .line 323
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->RFIDDirectPermanentLockTag([B[BLcom/cipherlab/rfid/LockTarget;)Lcom/cipherlab/rfid/DeviceResponse;

    move-result-object p1

    return-object p1
.end method

.method public RFIDDirectReadTagByEPC([B[BLcom/cipherlab/rfid/RFIDMemoryBank;III)I
    .registers 14

    .line 281
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->RFIDDirectReadTagByEPC([B[BLcom/cipherlab/rfid/RFIDMemoryBank;III)I

    move-result p1

    return p1
.end method

.method public RFIDDirectReadTagByTID([B[BLcom/cipherlab/rfid/RFIDMemoryBank;III)I
    .registers 14

    .line 293
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->RFIDDirectReadTagByTID([B[BLcom/cipherlab/rfid/RFIDMemoryBank;III)I

    move-result p1

    return p1
.end method

.method public RFIDDirectStartInventoryRound(Lcom/cipherlab/rfid/InventoryType;I)I
    .registers 4

    .line 256
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->RFIDDirectStartInventoryRound(Lcom/cipherlab/rfid/InventoryType;I)I

    move-result p1

    return p1
.end method

.method public RFIDDirectUnlockTag([B[BLcom/cipherlab/rfid/LockTarget;)Lcom/cipherlab/rfid/DeviceResponse;
    .registers 5

    .line 311
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->RFIDDirectUnlockTag([B[BLcom/cipherlab/rfid/LockTarget;)Lcom/cipherlab/rfid/DeviceResponse;

    move-result-object p1

    return-object p1
.end method

.method public RFIDDirectWriteTagByEPC([B[BLcom/cipherlab/rfid/RFIDMemoryBank;II[B)Lcom/cipherlab/rfid/DeviceResponse;
    .registers 14

    .line 287
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->RFIDDirectWriteTagByEPC([B[BLcom/cipherlab/rfid/RFIDMemoryBank;II[B)Lcom/cipherlab/rfid/DeviceResponse;

    move-result-object p1

    return-object p1
.end method

.method public RFIDDirectWriteTagByTID([B[BLcom/cipherlab/rfid/RFIDMemoryBank;II[B)Lcom/cipherlab/rfid/DeviceResponse;
    .registers 14

    .line 299
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->RFIDDirectWriteTagByTID([B[BLcom/cipherlab/rfid/RFIDMemoryBank;II[B)Lcom/cipherlab/rfid/DeviceResponse;

    move-result-object p1

    return-object p1
.end method

.method public RFIDReadTagMassive([BLcom/cipherlab/rfid/RFIDMemoryBank;II)I
    .registers 6

    .line 269
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->RFIDReadTagMassive([BLcom/cipherlab/rfid/RFIDMemoryBank;II)I

    move-result p1

    return p1
.end method

.method public RFIDWriteTagMassive([BLcom/cipherlab/rfid/RFIDMemoryBank;[BII)I
    .registers 12

    .line 275
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->RFIDWriteTagMassive([BLcom/cipherlab/rfid/RFIDMemoryBank;[BII)I

    move-result p1

    return p1
.end method

.method public Release()V
    .registers 2

    .line 508
    invoke-direct {p0}, Lcom/cipherlab/rfidapi/RfidManager;->isRfidServiceRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    if-eqz v0, :cond_d

    .line 510
    invoke-virtual {v0}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->unbindBRfidService()V

    .line 514
    :cond_d
    :try_start_d
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->_instance:Lcom/cipherlab/rfidapi/RfidManager;

    invoke-virtual {v0}, Ljava/lang/Object;->finalize()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_13

    goto :goto_17

    :catchall_13
    move-exception v0

    .line 516
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_17
    const/4 v0, 0x0

    .line 518
    sput-object v0, Lcom/cipherlab/rfidapi/RfidManager;->_instance:Lcom/cipherlab/rfidapi/RfidManager;

    return-void
.end method

.method public ResetToDefault()I
    .registers 2

    .line 389
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->ResetToDefault()I

    move-result v0

    return v0
.end method

.method public SelectMemoryBank(Lcom/cipherlab/rfid/RFIDMemoryBank;)I
    .registers 3

    .line 226
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->SelectMemoryBank(Lcom/cipherlab/rfid/RFIDMemoryBank;)I

    move-result p1

    return p1
.end method

.method public SetAllGen2(Lcom/cipherlab/rfid/AllGen2Settings;)I
    .registers 3

    .line 475
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->SetAllGen2(Lcom/cipherlab/rfid/AllGen2Settings;)I

    move-result p1

    return p1
.end method

.method public SetAllQValue(Lcom/cipherlab/rfid/AllQValue;)I
    .registers 3

    .line 445
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->SetAllQValue(Lcom/cipherlab/rfid/AllQValue;)I

    move-result p1

    return p1
.end method

.method public SetAllRFLink(Lcom/cipherlab/rfid/AllRFLink;)I
    .registers 3

    .line 455
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->SetAllRFLink(Lcom/cipherlab/rfid/AllRFLink;)I

    move-result p1

    return p1
.end method

.method public SetDevicePowerSavingState(I)I
    .registers 3

    .line 117
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->SetDevicePowerSavingState(I)I

    move-result p1

    return p1
.end method

.method public SetExcludedEPCFilter(Lcom/cipherlab/rfid/RfidEpcFilter;)I
    .registers 3

    .line 347
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->SetExcludedEPCFilter(Lcom/cipherlab/rfid/RfidEpcFilter;)I

    move-result p1

    return p1
.end method

.method public SetGen2(Lcom/cipherlab/rfid/Gen2Settings;)I
    .registers 3

    .line 465
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->SetGen2(Lcom/cipherlab/rfid/Gen2Settings;)I

    move-result p1

    return p1
.end method

.method public SetIncludedEPCFilter(Lcom/cipherlab/rfid/RfidEpcFilter;)I
    .registers 3

    .line 335
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->SetIncludedEPCFilter(Lcom/cipherlab/rfid/RfidEpcFilter;)I

    move-result p1

    return p1
.end method

.method public SetNotification(Lcom/cipherlab/rfid/NotificationParams;)I
    .registers 3

    .line 383
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->SetNotification(Lcom/cipherlab/rfid/NotificationParams;)I

    move-result p1

    return p1
.end method

.method public SetQValue(Lcom/cipherlab/rfid/QValue;)I
    .registers 3

    .line 238
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->SetQValue(Lcom/cipherlab/rfid/QValue;)I

    move-result p1

    return p1
.end method

.method public SetRFIDMode(Lcom/cipherlab/rfid/RFIDMode;)I
    .registers 3

    .line 214
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->SetRFIDMode(Lcom/cipherlab/rfid/RFIDMode;)I

    move-result p1

    return p1
.end method

.method public SetRFIDSwitchStatus(Z)I
    .registers 3

    .line 353
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->SetRFIDSwitchStatus(Z)I

    move-result p1

    return p1
.end method

.method public SetRFLink(Lcom/cipherlab/rfid/RFLink;)I
    .registers 3

    .line 420
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->SetRFLink(Lcom/cipherlab/rfid/RFLink;)I

    move-result p1

    return p1
.end method

.method public SetRecognizedEPCEncoding(Lcom/cipherlab/rfid/EPCEncodingScheme;)I
    .registers 3

    .line 500
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->SetRecognizedEPCEncoding(Lcom/cipherlab/rfid/EPCEncodingScheme;)I

    move-result p1

    return p1
.end method

.method public SetScanMode(Lcom/cipherlab/rfid/ScanMode;)I
    .registers 3

    .line 190
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->SetScanMode(Lcom/cipherlab/rfid/ScanMode;)I

    move-result p1

    return p1
.end method

.method public SetTxPower(I)I
    .registers 3

    .line 250
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->SetTxPower(I)I

    move-result p1

    return p1
.end method

.method public SetWorkMode(Lcom/cipherlab/rfid/WorkMode;)I
    .registers 3

    .line 405
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->SetWorkMode(Lcom/cipherlab/rfid/WorkMode;)I

    move-result p1

    return p1
.end method

.method public ShutdownDevice()I
    .registers 2

    .line 164
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->ShutdownDevice()I

    move-result v0

    return v0
.end method

.method public SoftScanTrigger(Z)I
    .registers 3

    .line 395
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManager;->mRfidManagerAPI:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/rfidapi/RfidManagerAPI;->SoftScanTrigger(Z)I

    move-result p1

    return p1
.end method
