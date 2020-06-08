.class public Lcom/cipherlab/rfid/GeneralString;
.super Ljava/lang/Object;
.source "GeneralString.java"


# static fields
.field public static final Data_GUN_ACPower:Ljava/lang/String; = "GUN_ACPower"

.field public static final Data_GUN_Connect:Ljava/lang/String; = "GUN_Connected"

.field public static final EXTRA_DATA1:Ljava/lang/String; = "data1"

.field public static final EXTRA_DATA1_LENGTH:Ljava/lang/String; = "length1"

.field public static final EXTRA_DATA2:Ljava/lang/String; = "data2"

.field public static final EXTRA_DATA2_LENGTH:Ljava/lang/String; = "length2"

.field public static final EXTRA_DATA_RSSI:Ljava/lang/String; = "rssi"

.field public static final EXTRA_DATA_TYPE:Ljava/lang/String; = "type"

.field public static final EXTRA_EPC:Ljava/lang/String; = "EPC"

.field public static final EXTRA_EPC_LENGTH:Ljava/lang/String; = "EPC_length"

.field public static final EXTRA_EVENT_MASK:Ljava/lang/String; = "mask"

.field public static final EXTRA_PC:Ljava/lang/String; = "PC"

.field public static final EXTRA_RESPONSE:Ljava/lang/String; = "response"

.field public static final EXTRA_ReadData:Ljava/lang/String; = "ReadData"

.field public static final EXTRA_ReadData_LENGTH:Ljava/lang/String; = "ReadData_length"

.field public static final EXTRA_TID:Ljava/lang/String; = "TID"

.field public static final EXTRA_TID_LENGTH:Ljava/lang/String; = "TID_length"

.field public static final FWUpdate_ErrorMessage:Ljava/lang/String; = "FWUpdate_ErrorMessage"

.field public static final FWUpdate_Percent:Ljava/lang/String; = "FWUpdate_Percent"

.field public static final FWUpdate_path:Ljava/lang/String; = "FwPath"

.field public static final Intent_DATA_DEMOEPC:Ljava/lang/String; = "RFIDService_DATA_DEMOEPC"

.field public static final Intent_DATA_DEMOPC:Ljava/lang/String; = "RFIDService_DATA_DEMOPC"

.field public static final Intent_DATA_DEMORSSI:Ljava/lang/String; = "RFIDService_DATA_DEMORSSI"

.field public static final Intent_FWUpdate:Ljava/lang/String; = "com.cipherlab.rfidservice.fwupdate"

.field public static final Intent_FWUpdate_ErrorMessage:Ljava/lang/String; = "com.cipherlab.rfidservice.fwupdate_errormessage"

.field public static final Intent_FWUpdate_Finish:Ljava/lang/String; = "com.cipherlab.rfidservice.fwupdate_finish"

.field public static final Intent_FWUpdate_Percent:Ljava/lang/String; = "com.cipherlab.rfidservice.fwupdate_percent"

.field public static final Intent_GUN_Attached:Ljava/lang/String; = "com.cipherlab.rfidservice.GUN_Attached"

.field public static final Intent_GUN_Power:Ljava/lang/String; = "com.cipherlab.rfidservice.GUN_Power"

.field public static final Intent_GUN_Unattached:Ljava/lang/String; = "com.cipherlab.rfidservice.GUN_Unattached"

.field public static final Intent_RECEIVE_DEMODATA:Ljava/lang/String; = "com.cipherlab.rfidserviceapi.GET_DATA"

.field public static final Intent_RFIDSERVICE_CONNECTED:Ljava/lang/String; = "com.cipherlab.rfidservice.SERVICE_CONNECTED"

.field public static final Intent_RFIDSERVICE_EVENT:Ljava/lang/String; = "com.cipherlab.rfidservice.SERVICE_EVENT"

.field public static final Intent_RFIDSERVICE_TAG_DATA:Ljava/lang/String; = "com.cipherlab.rfidservice.SERVICE_TAG_DATA"

.field public static final RESPONSE_DEVICE_BUSY:I = 0xfb

.field public static final RESPONSE_OPERATION_FAIL:I = 0x7

.field public static final RESPONSE_OPERATION_FINISH:I = 0x1

.field public static final RESPONSE_OPERATION_SUCCESS:I = 0x0

.field public static final RESPONSE_OPERATION_TIMEOUT_FAIL:I = 0x2

.field public static final RESPONSE_PASSWORD_FAIL:I = 0x6

.field public static final RfidServicePackageName:Ljava/lang/String; = "com.cipherlab.rfidservice"

.field public static final TAG:Ljava/lang/String; = "RFID_Service"

.field public static final TYPE_INVENTORY_EPC_SCAN:I = 0x1

.field public static final TYPE_INVENTORY_EPC_TID_SCAN:I = 0x2

.field public static final TYPE_NORMAL_SCAN:I = 0x0

.field public static final TYPE_RAW_DATA:I = 0x4

.field public static final TYPE_READ_TAG_SCAN:I = 0x3

.field public static final TYPE_WRITE_TAG:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
