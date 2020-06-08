.class public Lcom/uhf/linkage/Linkage;
.super Ljava/lang/Object;
.source "Linkage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_MEM_PERM;,
        Lcom/uhf/linkage/Linkage$RFID_18K6C_TAG_PWD_PERM;,
        Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION_QILIAN;,
        Lcom/uhf/linkage/Linkage$RFID_18K6C_COUNTRY_REGION;
    }
.end annotation


# instance fields
.field private onBluetoothListener:Lcom/uhf/structures/OnBluetoothListener;

.field private onInventoryListener:Lcom/uhf/structures/OnInventoryListener;

.field private onReadWriteListener:Lcom/uhf/structures/OnReadWriteListener;

.field private onRemoteListener:Lcom/uhf/structures/OnRemoteListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "uhf_sdk"

    .line 681
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native APDUInterface(IIIIII[BLcom/uhf/structures/APDUParams;)I
.end method

.method public Bluetooth_CallBack([B)V
    .registers 3

    if-eqz p1, :cond_9

    .line 445
    iget-object v0, p0, Lcom/uhf/linkage/Linkage;->onBluetoothListener:Lcom/uhf/structures/OnBluetoothListener;

    if-eqz v0, :cond_9

    .line 446
    invoke-interface {v0, p1}, Lcom/uhf/structures/OnBluetoothListener;->getBluetoothData([B)V

    :cond_9
    return-void
.end method

.method public RW_CallBack(Lcom/uhf/structures/RW_Params;)V
    .registers 3

    if-eqz p1, :cond_9

    .line 401
    iget-object v0, p0, Lcom/uhf/linkage/Linkage;->onReadWriteListener:Lcom/uhf/structures/OnReadWriteListener;

    if-eqz v0, :cond_9

    .line 402
    invoke-interface {v0, p1}, Lcom/uhf/structures/OnReadWriteListener;->getReadWriteData(Lcom/uhf/structures/RW_Params;)V

    :cond_9
    return-void
.end method

.method public native Radio_BlockWriteTag(III[B[B)I
.end method

.method public native Radio_GetAntennaPower(Lcom/uhf/structures/Rfid_Value;)I
.end method

.method public native Radio_GetCurrentLinkProfile(Lcom/uhf/structures/Rfid_Value;)I
.end method

.method public native Radio_GetInventoryParams(Lcom/uhf/structures/InventoryParams;)I
.end method

.method public native Radio_GetPostMatchCriteria(Lcom/uhf/structures/SelectCriteria;)I
.end method

.method public native Radio_GetQueryTagGroup(Lcom/uhf/structures/TagGroup;)I
.end method

.method public native Radio_GetSingleFrequency(Lcom/uhf/structures/Rfid_Value;)I
.end method

.method public native Radio_GetSingulationAlgorithmDyParameters(Lcom/uhf/structures/DynamicQParams;)I
.end method

.method public native Radio_GetSingulationAlgorithmFixedParameters(Lcom/uhf/structures/FixedQParams;)I
.end method

.method public native Radio_KillTag([B[B)I
.end method

.method public native Radio_LockTag([BIIIII)I
.end method

.method public native Radio_MacGetRegion(Lcom/uhf/structures/Rfid_Value;)I
.end method

.method public native Radio_MacSetRegion(I)I
.end method

.method public native Radio_ReadTag(III[B)I
.end method

.method public native Radio_SetAntennaPower(I)I
.end method

.method public native Radio_SetCurrentLinkProfile(I)I
.end method

.method public native Radio_SetInventoryParams(Lcom/uhf/structures/InventoryParams;)I
.end method

.method public native Radio_SetPostMatchCriteria(Lcom/uhf/structures/SelectCriteria;)I
.end method

.method public native Radio_SetQueryTagGroup(Lcom/uhf/structures/TagGroup;)I
.end method

.method public native Radio_SetSingleFrequency(I)I
.end method

.method public native Radio_SetSingulationAlgorithmDyParameters(Lcom/uhf/structures/DynamicQParams;)I
.end method

.method public native Radio_SetSingulationAlgorithmFixedParameters(Lcom/uhf/structures/FixedQParams;)I
.end method

.method public native Radio_WriteTag(III[B[B)I
.end method

.method public native Radio_WriteTagSync(III[B[BILcom/uhf/structures/RW_Params;)I
.end method

.method public native Radio_readTagSync(III[BILcom/uhf/structures/RW_Params;)I
.end method

.method public Remote_CallBack(I)V
    .registers 3

    if-eqz p1, :cond_9

    .line 452
    iget-object v0, p0, Lcom/uhf/linkage/Linkage;->onRemoteListener:Lcom/uhf/structures/OnRemoteListener;

    if-eqz v0, :cond_9

    .line 453
    invoke-interface {v0, p1}, Lcom/uhf/structures/OnRemoteListener;->getRemoteData(I)V

    :cond_9
    return-void
.end method

.method public native authenticationSM7()I
.end method

.method public native boardFirmwareUpdate(III[B)I
.end method

.method public native boardReboot()I
.end method

.method public native close_serial()I
.end method

.method public native deinitPsamDev()I
.end method

.method public native deinitRFID()V
.end method

.method public native enableEngTest(I)I
.end method

.method public native get18K6CSelectCriteria(Lcom/uhf/structures/SelectCriteria;)I
.end method

.method public native getAntennaPort(ILcom/uhf/structures/AntennaPorts;)I
.end method

.method public native getAntennaPortNum(Lcom/uhf/structures/Rfid_Value;)I
.end method

.method public native getAntennaPortState(ILcom/uhf/structures/Rfid_Value;)I
.end method

.method public native getAntennaSWR(ILcom/uhf/structures/Rfid_Value;)D
.end method

.method public native getBatteryInfo(Lcom/uhf/structures/BatteryInfo;)I
.end method

.method public native getBoardSerialNumber(Lcom/uhf/structures/Rfid_Value;)[B
.end method

.method public native getBoardSoftVersion(Lcom/uhf/structures/Rfid_Value;)[B
.end method

.method public native getCurrentAntArray()[I
.end method

.method public native getCurrentAntNum()I
.end method

.method public native getPowerLevel(ILcom/uhf/structures/Rfid_Value;)I
.end method

.method public native getSerialNumber(Lcom/uhf/structures/Rfid_Value;)[B
.end method

.method public native getVersion(Lcom/uhf/structures/Rfid_Value;)[B
.end method

.method public native get_Query(Lcom/uhf/structures/Parameters;)I
.end method

.method public native initPSAMDev(Ljava/lang/String;ILcom/uhf/structures/AtrParams;)I
.end method

.method public native initRFID()I
.end method

.method public inventoryCallBack(Lcom/uhf/structures/InventoryData;)V
    .registers 3

    if-eqz p1, :cond_9

    .line 392
    iget-object v0, p0, Lcom/uhf/linkage/Linkage;->onInventoryListener:Lcom/uhf/structures/OnInventoryListener;

    if-eqz v0, :cond_9

    .line 393
    invoke-interface {v0, p1}, Lcom/uhf/structures/OnInventoryListener;->getInventoryData(Lcom/uhf/structures/InventoryData;)V

    :cond_9
    return-void
.end method

.method public native inventoryOnceSync(IILcom/uhf/structures/InventoryData;)I
.end method

.method public native krSm7Blockwrite(III[B[B)I
.end method

.method public native krSm7End()I
.end method

.method public native krSm7Inventory(Lcom/uhf/structures/InventoryData;)I
.end method

.method public native krSm7Read(III[BLcom/uhf/structures/KrSm7Data;)I
.end method

.method public native krSm7Write(III[B[B)I
.end method

.method public native macGetSM7Packet(IILcom/uhf/structures/PacketData;)I
.end method

.method public native macReadSM7Register(ILcom/uhf/structures/Rfid_Value;)I
.end method

.method public native macWriteSM7Register(II)I
.end method

.method public native open_serial(Ljava/lang/String;)I
.end method

.method public native powerOffRFModule()I
.end method

.method public native powerOnRFModule()I
.end method

.method public native prepareModuleUpdate(Lcom/uhf/structures/UpdateParam;)I
.end method

.method public native pushRemoteRFIDData([B)V
.end method

.method public native readMac(ILcom/uhf/structures/Rfid_Value;)I
.end method

.method public native readMonzaQtTag(I[BIII)I
.end method

.method public native readMonzaQtTagSync(I[BIIIILcom/uhf/structures/RW_Params;)I
.end method

.method public native readOEM(ILcom/uhf/structures/Rfid_Value;)I
.end method

.method public native readSM7Tag(III)I
.end method

.method public native saveR2000Setting()I
.end method

.method public native selectPSAMDev(I)I
.end method

.method public native set18K6CSelectCriteria(Lcom/uhf/structures/SelectCriteria;)I
.end method

.method public native setAntennaPort(IIIII)I
.end method

.method public native setAntennaPortState(II)I
.end method

.method public native setMonzaQtTagMode(II[B)I
.end method

.method public setOnBluetoothListener(Lcom/uhf/structures/OnBluetoothListener;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/uhf/linkage/Linkage;->onBluetoothListener:Lcom/uhf/structures/OnBluetoothListener;

    return-void
.end method

.method public setOnInventoryListener(Lcom/uhf/structures/OnInventoryListener;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/uhf/linkage/Linkage;->onInventoryListener:Lcom/uhf/structures/OnInventoryListener;

    return-void
.end method

.method public setOnReadWriteListener(Lcom/uhf/structures/OnReadWriteListener;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/uhf/linkage/Linkage;->onReadWriteListener:Lcom/uhf/structures/OnReadWriteListener;

    return-void
.end method

.method public setOnRemoteListener(Lcom/uhf/structures/OnRemoteListener;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/uhf/linkage/Linkage;->onRemoteListener:Lcom/uhf/structures/OnRemoteListener;

    return-void
.end method

.method public native setPowerLevel(II)I
.end method

.method public native setRFConnectMode(I)V
.end method

.method public native setRFModuleType(I)V
.end method

.method public native set_Query(IIIIIII)I
.end method

.method public native startInventory(I)V
.end method

.method public native stopInventory()V
.end method

.method public native updateModuleFirmware([BI)I
.end method

.method public native writeMonzaQtTag(I[BIII[B)I
.end method

.method public native writeMonzaQtTagSync(I[BIII[BILcom/uhf/structures/RW_Params;)I
.end method

.method public native writeOEM(II)I
.end method

.method public native writeSM7Tag(III[B)I
.end method
