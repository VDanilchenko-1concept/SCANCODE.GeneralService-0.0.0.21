.class public Lcom/cipherlab/rfidapi/RfidManagerAPI;
.super Landroid/app/Application;
.source "RfidManagerAPI.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cipherlab/rfidapi/RfidManagerAPI$RfidReadyRunnable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final APIVersion:Ljava/lang/String; = "1.0.13"

.field private static _instance:Lcom/cipherlab/rfidapi/RfidManagerAPI;

.field private static context:Landroid/content/Context;

.field private static handler:Landroid/os/Handler;

.field private static handlerThread:Landroid/os/HandlerThread;

.field private static looper:Landroid/os/Looper;


# instance fields
.field public bindServiceFlag:Z

.field public conn:Landroid/content/ServiceConnection;

.field private mMyRfidReadyRunnable:Lcom/cipherlab/rfidapi/RfidManagerAPI$RfidReadyRunnable;

.field private mMyThread:Ljava/lang/Thread;

.field mRfidReadySemaphore:Ljava/lang/Object;

.field mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 65
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->bindServiceFlag:Z

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    .line 60
    iput-object v0, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mMyThread:Ljava/lang/Thread;

    .line 61
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mRfidReadySemaphore:Ljava/lang/Object;

    .line 62
    iput-object v0, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mMyRfidReadyRunnable:Lcom/cipherlab/rfidapi/RfidManagerAPI$RfidReadyRunnable;

    .line 1243
    new-instance v1, Lcom/cipherlab/rfidapi/RfidManagerAPI$1;

    invoke-direct {v1, p0}, Lcom/cipherlab/rfidapi/RfidManagerAPI$1;-><init>(Lcom/cipherlab/rfidapi/RfidManagerAPI;)V

    iput-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->conn:Landroid/content/ServiceConnection;

    .line 67
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mMyRfidReadyRunnable:Lcom/cipherlab/rfidapi/RfidManagerAPI$RfidReadyRunnable;

    if-nez v1, :cond_32

    .line 71
    new-instance v1, Lcom/cipherlab/rfidapi/RfidManagerAPI$RfidReadyRunnable;

    invoke-direct {v1, p0, v0}, Lcom/cipherlab/rfidapi/RfidManagerAPI$RfidReadyRunnable;-><init>(Lcom/cipherlab/rfidapi/RfidManagerAPI;Lcom/cipherlab/rfidapi/RfidManagerAPI$RfidReadyRunnable;)V

    iput-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mMyRfidReadyRunnable:Lcom/cipherlab/rfidapi/RfidManagerAPI$RfidReadyRunnable;

    .line 73
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mMyRfidReadyRunnable:Lcom/cipherlab/rfidapi/RfidManagerAPI$RfidReadyRunnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mMyThread:Ljava/lang/Thread;

    .line 74
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_32
    return-void
.end method

.method public static GetExistInstance()Lcom/cipherlab/rfidapi/RfidManagerAPI;
    .registers 1

    .line 109
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->_instance:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    return-object v0
.end method

.method public static GetInstance(Landroid/content/Context;)Lcom/cipherlab/rfidapi/RfidManagerAPI;
    .registers 2

    .line 81
    sput-object p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->context:Landroid/content/Context;

    .line 82
    sget-object p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->_instance:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    if-nez p0, :cond_d

    .line 83
    new-instance p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;

    invoke-direct {p0}, Lcom/cipherlab/rfidapi/RfidManagerAPI;-><init>()V

    sput-object p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->_instance:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    :cond_d
    const-string p0, "RFID_Service"

    const-string v0, "API Version : 1.0.13"

    .line 86
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sget-object p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->handler:Landroid/os/Handler;

    if-nez p0, :cond_35

    .line 93
    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "MyNewThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->handlerThread:Landroid/os/HandlerThread;

    .line 94
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 98
    sget-object p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    sput-object p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->looper:Landroid/os/Looper;

    .line 100
    new-instance p0, Landroid/os/Handler;

    sget-object v0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->looper:Landroid/os/Looper;

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->handler:Landroid/os/Handler;

    .line 103
    :cond_35
    sget-object p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->_instance:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    return-object p0
.end method

.method static synthetic access$0()Landroid/content/Context;
    .registers 1

    .line 52
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public DeviceTriggerStatus()I
    .registers 2

    .line 1192
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->DeviceTriggerStatus()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_c

    :catch_7
    move-exception v0

    .line 1195
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public EnableDeviceTrigger(Z)I
    .registers 4

    const/4 v0, 0x0

    .line 1206
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->EnableDeviceTrigger(Z)I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 1209
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return v0
.end method

.method public FirmwareUpdate(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    .line 304
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->FirmwareUpdate(Ljava/lang/String;)I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 307
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return v0
.end method

.method public GetAllGen2(Lcom/cipherlab/rfid/AllGen2Settings;)I
    .registers 4

    const/4 v0, 0x0

    .line 1165
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->GetAllGen2(Lcom/cipherlab/rfid/AllGen2Settings;)I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 1168
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return v0
.end method

.method public GetAllQValue(Lcom/cipherlab/rfid/AllQValue;)I
    .registers 4

    const/4 v0, 0x0

    .line 1077
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->GetAllQValue(Lcom/cipherlab/rfid/AllQValue;)I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 1080
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return v0
.end method

.method public GetAllRFLink(Lcom/cipherlab/rfid/AllRFLink;)I
    .registers 4

    const/4 v0, 0x0

    .line 1107
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->GetAllRFLink(Lcom/cipherlab/rfid/AllRFLink;)I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 1110
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return v0
.end method

.method public GetBatteryLifePercent(Lcom/cipherlab/rfid/DeviceVoltageInfo;)I
    .registers 5

    const/4 v0, 0x0

    .line 264
    new-instance v1, Lcom/cipherlab/rfid/DeviceVoltageInfo;

    invoke-direct {v1}, Lcom/cipherlab/rfid/DeviceVoltageInfo;-><init>()V

    .line 266
    :try_start_6
    iget-object v2, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v2, v1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->GetBatteryLifePercent(Lcom/cipherlab/rfid/DeviceVoltageInfo;)I

    move-result v0

    .line 267
    iget v2, v1, Lcom/cipherlab/rfid/DeviceVoltageInfo;->Percentage:I

    iput v2, p1, Lcom/cipherlab/rfid/DeviceVoltageInfo;->Percentage:I

    .line 268
    iget-object v2, v1, Lcom/cipherlab/rfid/DeviceVoltageInfo;->Voltage:Ljava/lang/Double;

    iput-object v2, p1, Lcom/cipherlab/rfid/DeviceVoltageInfo;->Voltage:Ljava/lang/Double;

    .line 269
    iget v1, v1, Lcom/cipherlab/rfid/DeviceVoltageInfo;->ChargeStatus:I

    iput v1, p1, Lcom/cipherlab/rfid/DeviceVoltageInfo;->ChargeStatus:I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception p1

    .line 275
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1d
    return v0
.end method

.method public GetConnectionStatus()Z
    .registers 2

    .line 989
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->GetConnectionStatus()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_c

    :catch_7
    move-exception v0

    .line 992
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public GetDeviceInfo()Lcom/cipherlab/rfid/DeviceInfo;
    .registers 3

    .line 200
    new-instance v0, Lcom/cipherlab/rfid/DeviceInfo;

    invoke-direct {v0}, Lcom/cipherlab/rfid/DeviceInfo;-><init>()V

    .line 202
    :try_start_5
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->GetDeviceInfo()Lcom/cipherlab/rfid/DeviceInfo;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception v1

    .line 210
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_10
    return-object v0
.end method

.method public GetDevicePowerSavingState()I
    .registers 3

    const/4 v0, 0x0

    .line 222
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->GetDevicePowerSavingState()I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v1

    .line 226
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return v0
.end method

.method public GetExcludedEPCFilter(Lcom/cipherlab/rfid/RfidEpcFilter;)I
    .registers 4

    .line 797
    sget-object v0, Lcom/cipherlab/rfid/ClResult;->S_ERR:Lcom/cipherlab/rfid/ClResult;

    invoke-virtual {v0}, Lcom/cipherlab/rfid/ClResult;->ordinal()I

    move-result v0

    .line 800
    :try_start_6
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->GetExcludedEPCFilter(Lcom/cipherlab/rfid/RfidEpcFilter;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception p1

    .line 803
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_11
    return v0
.end method

.method public GetGen2(Lcom/cipherlab/rfid/Gen2Settings;)I
    .registers 4

    const/4 v0, 0x0

    .line 1137
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->GetGen2(Lcom/cipherlab/rfid/Gen2Settings;)I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 1140
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return v0
.end method

.method public GetIncludedEPCFilter(Lcom/cipherlab/rfid/RfidEpcFilter;)I
    .registers 4

    .line 765
    sget-object v0, Lcom/cipherlab/rfid/ClResult;->S_ERR:Lcom/cipherlab/rfid/ClResult;

    invoke-virtual {v0}, Lcom/cipherlab/rfid/ClResult;->ordinal()I

    move-result v0

    .line 768
    :try_start_6
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->GetIncludedEPCFilter(Lcom/cipherlab/rfid/RfidEpcFilter;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception p1

    .line 771
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_11
    return v0
.end method

.method public GetLastError()Ljava/lang/String;
    .registers 2

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->GetLastError()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_d

    :catch_7
    move-exception v0

    .line 190
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v0, ""

    :goto_d
    return-object v0
.end method

.method public GetModuleTemperature(Lcom/cipherlab/rfid/ModuleTemperature;)I
    .registers 4

    const/4 v0, 0x0

    .line 848
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->GetModuleTemperature(Lcom/cipherlab/rfid/ModuleTemperature;)I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 853
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return v0
.end method

.method public GetNotification(Lcom/cipherlab/rfid/NotificationParams;)I
    .registers 4

    .line 895
    sget-object v0, Lcom/cipherlab/rfid/ClResult;->S_ERR:Lcom/cipherlab/rfid/ClResult;

    invoke-virtual {v0}, Lcom/cipherlab/rfid/ClResult;->ordinal()I

    move-result v0

    .line 898
    :try_start_6
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->GetNotification(Lcom/cipherlab/rfid/NotificationParams;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception p1

    .line 901
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_11
    return v0
.end method

.method public GetQValue()Lcom/cipherlab/rfid/QValue;
    .registers 3

    .line 521
    new-instance v0, Lcom/cipherlab/rfid/QValue;

    invoke-direct {v0}, Lcom/cipherlab/rfid/QValue;-><init>()V

    .line 523
    :try_start_5
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->GetQValue()Lcom/cipherlab/rfid/QValue;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception v1

    .line 526
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_10
    return-object v0
.end method

.method public GetRFIDMode()Lcom/cipherlab/rfid/RFIDMode;
    .registers 3

    const/4 v0, 0x0

    .line 461
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->GetRFIDMode()Lcom/cipherlab/rfid/RFIDMode;

    move-result-object v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v1

    .line 464
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return-object v0
.end method

.method public GetRFIDSwitchStatus()I
    .registers 3

    const/4 v0, -0x1

    .line 381
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->GetRFIDSwitchStatus()I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v1

    .line 384
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return v0
.end method

.method public GetRFLink()Lcom/cipherlab/rfid/RFLink;
    .registers 3

    .line 1002
    sget-object v0, Lcom/cipherlab/rfid/RFLink;->Err:Lcom/cipherlab/rfid/RFLink;

    .line 1004
    :try_start_2
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->GetRFLink()Lcom/cipherlab/rfid/RFLink;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception v1

    .line 1007
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_d
    return-object v0
.end method

.method public GetRecognizedEPCEncoding(Lcom/cipherlab/rfid/EPCEncodingScheme;)I
    .registers 4

    const/4 v0, 0x0

    .line 1220
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->GetRecognizedEPCEncoding(Lcom/cipherlab/rfid/EPCEncodingScheme;)I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 1223
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return v0
.end method

.method public GetScanMode()Lcom/cipherlab/rfid/ScanMode;
    .registers 3

    .line 395
    sget-object v0, Lcom/cipherlab/rfid/ScanMode;->Continuous:Lcom/cipherlab/rfid/ScanMode;

    .line 397
    :try_start_2
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->GetScanMode()Lcom/cipherlab/rfid/ScanMode;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception v1

    .line 400
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_d
    return-object v0
.end method

.method public GetSelectedMemoryBank()Lcom/cipherlab/rfid/RFIDMemoryBank;
    .registers 3

    const/4 v0, 0x0

    .line 492
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->GetSelectedMemoryBank()Lcom/cipherlab/rfid/RFIDMemoryBank;

    move-result-object v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v1

    .line 495
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return-object v0
.end method

.method public GetServiceVersion()Ljava/lang/String;
    .registers 2

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->GetServiceVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_d

    :catch_7
    move-exception v0

    .line 175
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v0, ""

    :goto_d
    return-object v0
.end method

.method public GetTxPower()I
    .registers 3

    const/4 v0, 0x0

    .line 554
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->GetTxPower()I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v1

    .line 557
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return v0
.end method

.method public GetWorkMode()Lcom/cipherlab/rfid/WorkMode;
    .registers 3

    .line 959
    sget-object v0, Lcom/cipherlab/rfid/WorkMode;->Err:Lcom/cipherlab/rfid/WorkMode;

    .line 961
    :try_start_2
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->GetWorkMode()Lcom/cipherlab/rfid/WorkMode;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception v1

    .line 964
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_d
    return-object v0
.end method

.method public Intent_RfidService_Connected()V
    .registers 3

    .line 1267
    iget-object v0, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mRfidReadySemaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 1269
    :try_start_3
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mRfidReadySemaphore:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1267
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public KeepDeviceAlive()V
    .registers 2

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->KeepDeviceAlive()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    .line 255
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_a
    return-void
.end method

.method public LoadFactoryDefaultSettings()I
    .registers 3

    const/4 v0, 0x0

    .line 288
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->LoadFactoryDefaultSettings()I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v1

    .line 291
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return v0
.end method

.method public LoadUserSettings()I
    .registers 3

    const/4 v0, 0x0

    .line 320
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->LoadUserSettings()I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v1

    .line 323
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return v0
.end method

.method public RFIDDirectCancelInventoryRound()I
    .registers 3

    const/4 v0, 0x0

    .line 602
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->RFIDDirectCancelInventoryRound()I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v1

    .line 605
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return v0
.end method

.method public RFIDDirectKillTag([B[B)Lcom/cipherlab/rfid/DeviceResponse;
    .registers 5

    .line 701
    sget-object v0, Lcom/cipherlab/rfid/DeviceResponse;->OperationFail:Lcom/cipherlab/rfid/DeviceResponse;

    .line 704
    :try_start_2
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1, p2}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->RFIDDirectKillTag([B[B)Lcom/cipherlab/rfid/DeviceResponse;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception p1

    .line 707
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_d
    return-object v0
.end method

.method public RFIDDirectLockTag([B[BLcom/cipherlab/rfid/LockTarget;)Lcom/cipherlab/rfid/DeviceResponse;
    .registers 6

    .line 733
    sget-object v0, Lcom/cipherlab/rfid/DeviceResponse;->OperationFail:Lcom/cipherlab/rfid/DeviceResponse;

    .line 736
    :try_start_2
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1, p2, p3}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->RFIDDirectLockTag([B[BLcom/cipherlab/rfid/LockTarget;)Lcom/cipherlab/rfid/DeviceResponse;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception p1

    .line 739
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_d
    return-object v0
.end method

.method public RFIDDirectPermanentLockTag([B[BLcom/cipherlab/rfid/LockTarget;)Lcom/cipherlab/rfid/DeviceResponse;
    .registers 6

    .line 749
    sget-object v0, Lcom/cipherlab/rfid/DeviceResponse;->OperationFail:Lcom/cipherlab/rfid/DeviceResponse;

    .line 752
    :try_start_2
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1, p2, p3}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->RFIDDirectPermanentLockTag([B[BLcom/cipherlab/rfid/LockTarget;)Lcom/cipherlab/rfid/DeviceResponse;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception p1

    .line 755
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_d
    return-object v0
.end method

.method public RFIDDirectReadTagByEPC([B[BLcom/cipherlab/rfid/RFIDMemoryBank;III)I
    .registers 15

    const/4 v0, 0x0

    .line 645
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->RFIDDirectReadTagByEPC([B[BLcom/cipherlab/rfid/RFIDMemoryBank;III)I

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p1

    .line 648
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_12
    return v0
.end method

.method public RFIDDirectReadTagByTID([B[BLcom/cipherlab/rfid/RFIDMemoryBank;III)I
    .registers 15

    const/4 v0, 0x0

    .line 673
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->RFIDDirectReadTagByTID([B[BLcom/cipherlab/rfid/RFIDMemoryBank;III)I

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p1

    .line 676
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_12
    return v0
.end method

.method public RFIDDirectStartInventoryRound(Lcom/cipherlab/rfid/InventoryType;I)I
    .registers 5

    const/4 v0, 0x0

    .line 586
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1, p2}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->RFIDDirectStartInventoryRound(Lcom/cipherlab/rfid/InventoryType;I)I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 589
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return v0
.end method

.method public RFIDDirectUnlockTag([B[BLcom/cipherlab/rfid/LockTarget;)Lcom/cipherlab/rfid/DeviceResponse;
    .registers 6

    .line 717
    sget-object v0, Lcom/cipherlab/rfid/DeviceResponse;->OperationFail:Lcom/cipherlab/rfid/DeviceResponse;

    .line 720
    :try_start_2
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1, p2, p3}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->RFIDDirectUnlockTag([B[BLcom/cipherlab/rfid/LockTarget;)Lcom/cipherlab/rfid/DeviceResponse;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception p1

    .line 723
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_d
    return-object v0
.end method

.method public RFIDDirectWriteTagByEPC([B[BLcom/cipherlab/rfid/RFIDMemoryBank;II[B)Lcom/cipherlab/rfid/DeviceResponse;
    .registers 15

    .line 657
    sget-object v0, Lcom/cipherlab/rfid/DeviceResponse;->OperationFail:Lcom/cipherlab/rfid/DeviceResponse;

    .line 659
    :try_start_2
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->RFIDDirectWriteTagByEPC([B[BLcom/cipherlab/rfid/RFIDMemoryBank;II[B)Lcom/cipherlab/rfid/DeviceResponse;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p1

    .line 662
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_13
    return-object v0
.end method

.method public RFIDDirectWriteTagByTID([B[BLcom/cipherlab/rfid/RFIDMemoryBank;II[B)Lcom/cipherlab/rfid/DeviceResponse;
    .registers 15

    .line 685
    sget-object v0, Lcom/cipherlab/rfid/DeviceResponse;->OperationFail:Lcom/cipherlab/rfid/DeviceResponse;

    .line 688
    :try_start_2
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->RFIDDirectWriteTagByTID([B[BLcom/cipherlab/rfid/RFIDMemoryBank;II[B)Lcom/cipherlab/rfid/DeviceResponse;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p1

    .line 691
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_13
    return-object v0
.end method

.method public RFIDReadTagMassive([BLcom/cipherlab/rfid/RFIDMemoryBank;II)I
    .registers 7

    .line 615
    sget-object v0, Lcom/cipherlab/rfid/ClResult;->S_ERR:Lcom/cipherlab/rfid/ClResult;

    invoke-virtual {v0}, Lcom/cipherlab/rfid/ClResult;->ordinal()I

    move-result v0

    .line 617
    :try_start_6
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->RFIDReadTagMassive([BLcom/cipherlab/rfid/RFIDMemoryBank;II)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception p1

    .line 620
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_11
    return v0
.end method

.method public RFIDWriteTagMassive([BLcom/cipherlab/rfid/RFIDMemoryBank;[BII)I
    .registers 13

    .line 629
    sget-object v0, Lcom/cipherlab/rfid/ClResult;->S_ERR:Lcom/cipherlab/rfid/ClResult;

    invoke-virtual {v0}, Lcom/cipherlab/rfid/ClResult;->ordinal()I

    move-result v0

    .line 631
    :try_start_6
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->RFIDWriteTagMassive([BLcom/cipherlab/rfid/RFIDMemoryBank;[BII)I

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception p1

    .line 634
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_16
    return v0
.end method

.method public ResetToDefault()I
    .registers 3

    .line 927
    sget-object v0, Lcom/cipherlab/rfid/ClResult;->S_ERR:Lcom/cipherlab/rfid/ClResult;

    invoke-virtual {v0}, Lcom/cipherlab/rfid/ClResult;->ordinal()I

    move-result v0

    .line 930
    :try_start_6
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->ResetToDefault()I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception v1

    .line 933
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_11
    return v0
.end method

.method public SaveUserSettings()I
    .registers 3

    const/4 v0, 0x0

    .line 336
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->SaveUserSettings()I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v1

    .line 339
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return v0
.end method

.method public SelectMemoryBank(Lcom/cipherlab/rfid/RFIDMemoryBank;)I
    .registers 4

    const/4 v0, 0x0

    .line 508
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->SelectMemoryBank(Lcom/cipherlab/rfid/RFIDMemoryBank;)I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 511
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return v0
.end method

.method public SetAllGen2(Lcom/cipherlab/rfid/AllGen2Settings;)I
    .registers 4

    const/4 v0, 0x0

    .line 1179
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->SetAllGen2(Lcom/cipherlab/rfid/AllGen2Settings;)I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 1182
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return v0
.end method

.method public SetAllQValue(Lcom/cipherlab/rfid/AllQValue;)I
    .registers 4

    const/4 v0, 0x0

    .line 1092
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->SetAllQValue(Lcom/cipherlab/rfid/AllQValue;)I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 1095
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return v0
.end method

.method public SetAllRFLink(Lcom/cipherlab/rfid/AllRFLink;)I
    .registers 4

    const/4 v0, 0x0

    .line 1122
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->SetAllRFLink(Lcom/cipherlab/rfid/AllRFLink;)I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 1125
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return v0
.end method

.method public SetDevicePowerSavingState(I)I
    .registers 4

    const/4 v0, 0x0

    .line 238
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->SetDevicePowerSavingState(I)I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 241
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return v0
.end method

.method public SetExcludedEPCFilter(Lcom/cipherlab/rfid/RfidEpcFilter;)I
    .registers 4

    .line 813
    sget-object v0, Lcom/cipherlab/rfid/ClResult;->S_ERR:Lcom/cipherlab/rfid/ClResult;

    invoke-virtual {v0}, Lcom/cipherlab/rfid/ClResult;->ordinal()I

    move-result v0

    .line 816
    :try_start_6
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->SetExcludedEPCFilter(Lcom/cipherlab/rfid/RfidEpcFilter;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception p1

    .line 819
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_11
    return v0
.end method

.method public SetGen2(Lcom/cipherlab/rfid/Gen2Settings;)I
    .registers 4

    const/4 v0, 0x0

    .line 1151
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->SetGen2(Lcom/cipherlab/rfid/Gen2Settings;)I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 1154
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return v0
.end method

.method public SetIncludedEPCFilter(Lcom/cipherlab/rfid/RfidEpcFilter;)I
    .registers 4

    .line 781
    sget-object v0, Lcom/cipherlab/rfid/ClResult;->S_ERR:Lcom/cipherlab/rfid/ClResult;

    invoke-virtual {v0}, Lcom/cipherlab/rfid/ClResult;->ordinal()I

    move-result v0

    .line 784
    :try_start_6
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->SetIncludedEPCFilter(Lcom/cipherlab/rfid/RfidEpcFilter;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception p1

    .line 787
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_11
    return v0
.end method

.method public SetNotification(Lcom/cipherlab/rfid/NotificationParams;)I
    .registers 4

    .line 911
    sget-object v0, Lcom/cipherlab/rfid/ClResult;->S_ERR:Lcom/cipherlab/rfid/ClResult;

    invoke-virtual {v0}, Lcom/cipherlab/rfid/ClResult;->ordinal()I

    move-result v0

    .line 914
    :try_start_6
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->SetNotification(Lcom/cipherlab/rfid/NotificationParams;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception p1

    .line 917
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_11
    return v0
.end method

.method public SetQValue(Lcom/cipherlab/rfid/QValue;)I
    .registers 4

    const/4 v0, 0x0

    .line 538
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->SetQValue(Lcom/cipherlab/rfid/QValue;)I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 541
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return v0
.end method

.method public SetRFIDMode(Lcom/cipherlab/rfid/RFIDMode;)I
    .registers 4

    const/4 v0, 0x0

    .line 477
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->SetRFIDMode(Lcom/cipherlab/rfid/RFIDMode;)I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 480
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return v0
.end method

.method public SetRFIDSwitchStatus(Z)I
    .registers 4

    .line 829
    sget-object v0, Lcom/cipherlab/rfid/ClResult;->S_ERR:Lcom/cipherlab/rfid/ClResult;

    invoke-virtual {v0}, Lcom/cipherlab/rfid/ClResult;->ordinal()I

    move-result v0

    .line 832
    :try_start_6
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->SetRFIDSwitchStatus(Z)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception p1

    .line 835
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_11
    return v0
.end method

.method public SetRFLink(Lcom/cipherlab/rfid/RFLink;)I
    .registers 4

    const/4 v0, 0x0

    .line 1019
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->SetRFLink(Lcom/cipherlab/rfid/RFLink;)I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 1022
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return v0
.end method

.method public SetRecognizedEPCEncoding(Lcom/cipherlab/rfid/EPCEncodingScheme;)I
    .registers 4

    const/4 v0, 0x0

    .line 1234
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->SetRecognizedEPCEncoding(Lcom/cipherlab/rfid/EPCEncodingScheme;)I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 1237
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return v0
.end method

.method public SetScanMode(Lcom/cipherlab/rfid/ScanMode;)I
    .registers 4

    const/4 v0, 0x0

    .line 414
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->SetScanMode(Lcom/cipherlab/rfid/ScanMode;)I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 417
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return v0
.end method

.method public SetTxPower(I)I
    .registers 4

    const/4 v0, 0x0

    .line 570
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->SetTxPower(I)I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 573
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return v0
.end method

.method public SetWorkMode(Lcom/cipherlab/rfid/WorkMode;)I
    .registers 4

    const/4 v0, 0x0

    .line 976
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->SetWorkMode(Lcom/cipherlab/rfid/WorkMode;)I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 979
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return v0
.end method

.method public ShutdownDevice()I
    .registers 3

    const/4 v0, 0x0

    .line 351
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->ShutdownDevice()I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v1

    .line 354
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return v0
.end method

.method public SoftScanTrigger(Z)I
    .registers 4

    .line 943
    sget-object v0, Lcom/cipherlab/rfid/ClResult;->S_ERR:Lcom/cipherlab/rfid/ClResult;

    invoke-virtual {v0}, Lcom/cipherlab/rfid/ClResult;->ordinal()I

    move-result v0

    .line 946
    :try_start_6
    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mService:Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    invoke-interface {v1, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;->SoftScanTrigger(Z)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception p1

    .line 949
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_11
    return v0
.end method

.method public bindBRfidService()V
    .registers 5

    .line 143
    iget-boolean v0, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->bindServiceFlag:Z

    if-nez v0, :cond_45

    .line 144
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->context:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v1, 0x64

    .line 145
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 146
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_45

    :cond_1f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 147
    iget-object v2, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.cipherlab.rfidservice"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 149
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 150
    iget-object v1, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 151
    sget-object v1, Lcom/cipherlab/rfidapi/RfidManagerAPI;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->conn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_45
    :goto_45
    return-void
.end method

.method public deinit()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 116
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->context:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_29

    .line 120
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->looper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 121
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 122
    sput-object v1, Lcom/cipherlab/rfidapi/RfidManagerAPI;->looper:Landroid/os/Looper;

    .line 123
    sput-object v1, Lcom/cipherlab/rfidapi/RfidManagerAPI;->handlerThread:Landroid/os/HandlerThread;

    .line 124
    sput-object v1, Lcom/cipherlab/rfidapi/RfidManagerAPI;->handler:Landroid/os/Handler;

    .line 126
    iget-object v0, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mMyRfidReadyRunnable:Lcom/cipherlab/rfidapi/RfidManagerAPI$RfidReadyRunnable;

    if-eqz v0, :cond_20

    .line 128
    invoke-virtual {v0}, Lcom/cipherlab/rfidapi/RfidManagerAPI$RfidReadyRunnable;->stopThread()V

    .line 131
    :cond_20
    iget-object v0, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mMyThread:Ljava/lang/Thread;

    if-eqz v0, :cond_29

    .line 132
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 133
    iput-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->mMyThread:Ljava/lang/Thread;

    .line 137
    :cond_29
    sput-object v1, Lcom/cipherlab/rfidapi/RfidManagerAPI;->_instance:Lcom/cipherlab/rfidapi/RfidManagerAPI;

    return-void
.end method

.method public unbindBRfidService()V
    .registers 3

    .line 159
    iget-boolean v0, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->bindServiceFlag:Z

    if-eqz v0, :cond_e

    .line 160
    sget-object v0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/cipherlab/rfidapi/RfidManagerAPI;->bindServiceFlag:Z

    :cond_e
    return-void
.end method
