.class public abstract Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;
.super Landroid/os/Binder;
.source "IRfidServiceInterface.java"

# interfaces
.implements Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.cipherlab.rfidbaseclass.IRfidServiceInterface"

.field static final TRANSACTION_DetectRfidReady:I = 0x3b

.field static final TRANSACTION_DeviceTriggerStatus:I = 0x3c

.field static final TRANSACTION_EnableDeviceTrigger:I = 0x3d

.field static final TRANSACTION_FirmwareUpdate:I = 0xb

.field static final TRANSACTION_GetAllGen2:I = 0x39

.field static final TRANSACTION_GetAllQValue:I = 0x33

.field static final TRANSACTION_GetAllRFLink:I = 0x35

.field static final TRANSACTION_GetBatteryLifePercent:I = 0x7

.field static final TRANSACTION_GetConnectionStatus:I = 0x30

.field static final TRANSACTION_GetDeviceInfo:I = 0x3

.field static final TRANSACTION_GetDevicePowerSavingState:I = 0x4

.field static final TRANSACTION_GetExcludedEPCFilter:I = 0x26

.field static final TRANSACTION_GetGen2:I = 0x37

.field static final TRANSACTION_GetIncludedEPCFilter:I = 0x24

.field static final TRANSACTION_GetLastError:I = 0x2

.field static final TRANSACTION_GetModuleTemperature:I = 0x29

.field static final TRANSACTION_GetNotification:I = 0x2a

.field static final TRANSACTION_GetQValue:I = 0x14

.field static final TRANSACTION_GetRFIDMode:I = 0x10

.field static final TRANSACTION_GetRFIDSwitchStatus:I = 0xd

.field static final TRANSACTION_GetRFLink:I = 0x31

.field static final TRANSACTION_GetRecognizedEPCEncoding:I = 0x3e

.field static final TRANSACTION_GetScanMode:I = 0xe

.field static final TRANSACTION_GetSelectedMemoryBank:I = 0x12

.field static final TRANSACTION_GetServiceVersion:I = 0x1

.field static final TRANSACTION_GetTxPower:I = 0x16

.field static final TRANSACTION_GetWorkMode:I = 0x2e

.field static final TRANSACTION_KeepDeviceAlive:I = 0x6

.field static final TRANSACTION_LoadFactoryDefaultSettings:I = 0x8

.field static final TRANSACTION_LoadUserSettings:I = 0x9

.field static final TRANSACTION_RFIDDirectCancelInventoryRound:I = 0x19

.field static final TRANSACTION_RFIDDirectKillTag:I = 0x20

.field static final TRANSACTION_RFIDDirectLockTag:I = 0x22

.field static final TRANSACTION_RFIDDirectPermanentLockTag:I = 0x23

.field static final TRANSACTION_RFIDDirectReadTagByEPC:I = 0x1c

.field static final TRANSACTION_RFIDDirectReadTagByTID:I = 0x1e

.field static final TRANSACTION_RFIDDirectStartInventoryRound:I = 0x18

.field static final TRANSACTION_RFIDDirectUnlockTag:I = 0x21

.field static final TRANSACTION_RFIDDirectWriteTagByEPC:I = 0x1d

.field static final TRANSACTION_RFIDDirectWriteTagByTID:I = 0x1f

.field static final TRANSACTION_RFIDReadTagMassive:I = 0x1a

.field static final TRANSACTION_RFIDWriteTagMassive:I = 0x1b

.field static final TRANSACTION_ResetToDefault:I = 0x2c

.field static final TRANSACTION_SaveUserSettings:I = 0xa

.field static final TRANSACTION_SelectMemoryBank:I = 0x13

.field static final TRANSACTION_SetAllGen2:I = 0x3a

.field static final TRANSACTION_SetAllQValue:I = 0x34

.field static final TRANSACTION_SetAllRFLink:I = 0x36

.field static final TRANSACTION_SetDevicePowerSavingState:I = 0x5

.field static final TRANSACTION_SetExcludedEPCFilter:I = 0x27

.field static final TRANSACTION_SetGen2:I = 0x38

.field static final TRANSACTION_SetIncludedEPCFilter:I = 0x25

.field static final TRANSACTION_SetNotification:I = 0x2b

.field static final TRANSACTION_SetQValue:I = 0x15

.field static final TRANSACTION_SetRFIDMode:I = 0x11

.field static final TRANSACTION_SetRFIDSwitchStatus:I = 0x28

.field static final TRANSACTION_SetRFLink:I = 0x32

.field static final TRANSACTION_SetRecognizedEPCEncoding:I = 0x3f

.field static final TRANSACTION_SetScanMode:I = 0xf

.field static final TRANSACTION_SetTxPower:I = 0x17

.field static final TRANSACTION_SetWorkMode:I = 0x2f

.field static final TRANSACTION_ShutdownDevice:I = 0xc

.field static final TRANSACTION_SoftScanTrigger:I = 0x2d


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.cipherlab.rfidbaseclass.IRfidServiceInterface"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.cipherlab.rfidbaseclass.IRfidServiceInterface"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 27
    instance-of v1, v0, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface;

    return-object v0

    .line 30
    :cond_13
    new-instance v0, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const-string v1, "com.cipherlab.rfidbaseclass.IRfidServiceInterface"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_686

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_68a

    .line 969
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 955
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 957
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_24

    .line 958
    sget-object p1, Lcom/cipherlab/rfid/EPCEncodingScheme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/rfid/EPCEncodingScheme;

    .line 963
    :cond_24
    invoke-virtual {p0, v3}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->SetRecognizedEPCEncoding(Lcom/cipherlab/rfid/EPCEncodingScheme;)I

    move-result p1

    .line 964
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 938
    :pswitch_2f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 940
    new-instance p1, Lcom/cipherlab/rfid/EPCEncodingScheme;

    invoke-direct {p1}, Lcom/cipherlab/rfid/EPCEncodingScheme;-><init>()V

    .line 941
    invoke-virtual {p0, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->GetRecognizedEPCEncoding(Lcom/cipherlab/rfid/EPCEncodingScheme;)I

    move-result p2

    .line 942
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 946
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/rfid/EPCEncodingScheme;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 928
    :pswitch_48
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 930
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_52

    const/4 v0, 0x1

    .line 931
    :cond_52
    invoke-virtual {p0, v0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->EnableDeviceTrigger(Z)I

    move-result p1

    .line 932
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 920
    :pswitch_5d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 921
    invoke-virtual {p0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->DeviceTriggerStatus()I

    move-result p1

    .line 922
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 923
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 912
    :pswitch_6b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 913
    invoke-virtual {p0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->DetectRfidReady()Z

    move-result p1

    .line 914
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 897
    :pswitch_79
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 899
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8b

    .line 900
    sget-object p1, Lcom/cipherlab/rfid/AllGen2Settings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/rfid/AllGen2Settings;

    .line 905
    :cond_8b
    invoke-virtual {p0, v3}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->SetAllGen2(Lcom/cipherlab/rfid/AllGen2Settings;)I

    move-result p1

    .line 906
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 907
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 880
    :pswitch_96
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    new-instance p1, Lcom/cipherlab/rfid/AllGen2Settings;

    invoke-direct {p1}, Lcom/cipherlab/rfid/AllGen2Settings;-><init>()V

    .line 883
    invoke-virtual {p0, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->GetAllGen2(Lcom/cipherlab/rfid/AllGen2Settings;)I

    move-result p2

    .line 884
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 887
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 888
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/rfid/AllGen2Settings;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 865
    :pswitch_af
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_c1

    .line 868
    sget-object p1, Lcom/cipherlab/rfid/Gen2Settings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/rfid/Gen2Settings;

    .line 873
    :cond_c1
    invoke-virtual {p0, v3}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->SetGen2(Lcom/cipherlab/rfid/Gen2Settings;)I

    move-result p1

    .line 874
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 875
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 848
    :pswitch_cc
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    new-instance p1, Lcom/cipherlab/rfid/Gen2Settings;

    invoke-direct {p1}, Lcom/cipherlab/rfid/Gen2Settings;-><init>()V

    .line 851
    invoke-virtual {p0, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->GetGen2(Lcom/cipherlab/rfid/Gen2Settings;)I

    move-result p2

    .line 852
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 855
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/rfid/Gen2Settings;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 833
    :pswitch_e5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_f7

    .line 836
    sget-object p1, Lcom/cipherlab/rfid/AllRFLink;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/rfid/AllRFLink;

    .line 841
    :cond_f7
    invoke-virtual {p0, v3}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->SetAllRFLink(Lcom/cipherlab/rfid/AllRFLink;)I

    move-result p1

    .line 842
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 816
    :pswitch_102
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    new-instance p1, Lcom/cipherlab/rfid/AllRFLink;

    invoke-direct {p1}, Lcom/cipherlab/rfid/AllRFLink;-><init>()V

    .line 819
    invoke-virtual {p0, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->GetAllRFLink(Lcom/cipherlab/rfid/AllRFLink;)I

    move-result p2

    .line 820
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 823
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 824
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/rfid/AllRFLink;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 801
    :pswitch_11b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 803
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_12d

    .line 804
    sget-object p1, Lcom/cipherlab/rfid/AllQValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/rfid/AllQValue;

    .line 809
    :cond_12d
    invoke-virtual {p0, v3}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->SetAllQValue(Lcom/cipherlab/rfid/AllQValue;)I

    move-result p1

    .line 810
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 784
    :pswitch_138
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    new-instance p1, Lcom/cipherlab/rfid/AllQValue;

    invoke-direct {p1}, Lcom/cipherlab/rfid/AllQValue;-><init>()V

    .line 787
    invoke-virtual {p0, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->GetAllQValue(Lcom/cipherlab/rfid/AllQValue;)I

    move-result p2

    .line 788
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 791
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 792
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/rfid/AllQValue;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 769
    :pswitch_151
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_163

    .line 772
    sget-object p1, Lcom/cipherlab/rfid/RFLink;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/rfid/RFLink;

    .line 777
    :cond_163
    invoke-virtual {p0, v3}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->SetRFLink(Lcom/cipherlab/rfid/RFLink;)I

    move-result p1

    .line 778
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 755
    :pswitch_16e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->GetRFLink()Lcom/cipherlab/rfid/RFLink;

    move-result-object p1

    .line 757
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_181

    .line 759
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/rfid/RFLink;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_184

    .line 763
    :cond_181
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_184
    return v2

    .line 747
    :pswitch_185
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 748
    invoke-virtual {p0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->GetConnectionStatus()Z

    move-result p1

    .line 749
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 732
    :pswitch_193
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1a5

    .line 735
    sget-object p1, Lcom/cipherlab/rfid/WorkMode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/rfid/WorkMode;

    .line 740
    :cond_1a5
    invoke-virtual {p0, v3}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->SetWorkMode(Lcom/cipherlab/rfid/WorkMode;)I

    move-result p1

    .line 741
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 718
    :pswitch_1b0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->GetWorkMode()Lcom/cipherlab/rfid/WorkMode;

    move-result-object p1

    .line 720
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1c3

    .line 722
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 723
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/rfid/WorkMode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1c6

    .line 726
    :cond_1c3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1c6
    return v2

    .line 708
    :pswitch_1c7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1d1

    const/4 v0, 0x1

    .line 711
    :cond_1d1
    invoke-virtual {p0, v0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->SoftScanTrigger(Z)I

    move-result p1

    .line 712
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 700
    :pswitch_1dc
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->ResetToDefault()I

    move-result p1

    .line 702
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 685
    :pswitch_1ea
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 687
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1fc

    .line 688
    sget-object p1, Lcom/cipherlab/rfid/NotificationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/rfid/NotificationParams;

    .line 693
    :cond_1fc
    invoke-virtual {p0, v3}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->SetNotification(Lcom/cipherlab/rfid/NotificationParams;)I

    move-result p1

    .line 694
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 668
    :pswitch_207
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 670
    new-instance p1, Lcom/cipherlab/rfid/NotificationParams;

    invoke-direct {p1}, Lcom/cipherlab/rfid/NotificationParams;-><init>()V

    .line 671
    invoke-virtual {p0, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->GetNotification(Lcom/cipherlab/rfid/NotificationParams;)I

    move-result p2

    .line 672
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 675
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 676
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/rfid/NotificationParams;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 651
    :pswitch_220
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 653
    new-instance p1, Lcom/cipherlab/rfid/ModuleTemperature;

    invoke-direct {p1}, Lcom/cipherlab/rfid/ModuleTemperature;-><init>()V

    .line 654
    invoke-virtual {p0, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->GetModuleTemperature(Lcom/cipherlab/rfid/ModuleTemperature;)I

    move-result p2

    .line 655
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 658
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 659
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/rfid/ModuleTemperature;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 641
    :pswitch_239
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_243

    const/4 v0, 0x1

    .line 644
    :cond_243
    invoke-virtual {p0, v0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->SetRFIDSwitchStatus(Z)I

    move-result p1

    .line 645
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 626
    :pswitch_24e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_260

    .line 629
    sget-object p1, Lcom/cipherlab/rfid/RfidEpcFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/rfid/RfidEpcFilter;

    .line 634
    :cond_260
    invoke-virtual {p0, v3}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->SetExcludedEPCFilter(Lcom/cipherlab/rfid/RfidEpcFilter;)I

    move-result p1

    .line 635
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 609
    :pswitch_26b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    new-instance p1, Lcom/cipherlab/rfid/RfidEpcFilter;

    invoke-direct {p1}, Lcom/cipherlab/rfid/RfidEpcFilter;-><init>()V

    .line 612
    invoke-virtual {p0, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->GetExcludedEPCFilter(Lcom/cipherlab/rfid/RfidEpcFilter;)I

    move-result p2

    .line 613
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/rfid/RfidEpcFilter;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 594
    :pswitch_284
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_296

    .line 597
    sget-object p1, Lcom/cipherlab/rfid/RfidEpcFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/rfid/RfidEpcFilter;

    .line 602
    :cond_296
    invoke-virtual {p0, v3}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->SetIncludedEPCFilter(Lcom/cipherlab/rfid/RfidEpcFilter;)I

    move-result p1

    .line 603
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 577
    :pswitch_2a1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    new-instance p1, Lcom/cipherlab/rfid/RfidEpcFilter;

    invoke-direct {p1}, Lcom/cipherlab/rfid/RfidEpcFilter;-><init>()V

    .line 580
    invoke-virtual {p0, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->GetIncludedEPCFilter(Lcom/cipherlab/rfid/RfidEpcFilter;)I

    move-result p2

    .line 581
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/rfid/RfidEpcFilter;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 552
    :pswitch_2ba
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 556
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 558
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2d4

    .line 559
    sget-object v1, Lcom/cipherlab/rfid/LockTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/rfid/LockTarget;

    .line 564
    :cond_2d4
    invoke-virtual {p0, p1, p4, v3}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->RFIDDirectPermanentLockTag([B[BLcom/cipherlab/rfid/LockTarget;)Lcom/cipherlab/rfid/DeviceResponse;

    move-result-object p1

    .line 565
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2e4

    .line 567
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/rfid/DeviceResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2e7

    .line 571
    :cond_2e4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2e7
    return v2

    .line 527
    :pswitch_2e8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 531
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_302

    .line 534
    sget-object v1, Lcom/cipherlab/rfid/LockTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/rfid/LockTarget;

    .line 539
    :cond_302
    invoke-virtual {p0, p1, p4, v3}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->RFIDDirectLockTag([B[BLcom/cipherlab/rfid/LockTarget;)Lcom/cipherlab/rfid/DeviceResponse;

    move-result-object p1

    .line 540
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_312

    .line 542
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/rfid/DeviceResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_315

    .line 546
    :cond_312
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_315
    return v2

    .line 502
    :pswitch_316
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_330

    .line 509
    sget-object v1, Lcom/cipherlab/rfid/LockTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/rfid/LockTarget;

    .line 514
    :cond_330
    invoke-virtual {p0, p1, p4, v3}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->RFIDDirectUnlockTag([B[BLcom/cipherlab/rfid/LockTarget;)Lcom/cipherlab/rfid/DeviceResponse;

    move-result-object p1

    .line 515
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_340

    .line 517
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/rfid/DeviceResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_343

    .line 521
    :cond_340
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_343
    return v2

    .line 484
    :pswitch_344
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 489
    invoke-virtual {p0, p1, p2}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->RFIDDirectKillTag([B[B)Lcom/cipherlab/rfid/DeviceResponse;

    move-result-object p1

    .line 490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_35f

    .line 492
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/rfid/DeviceResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_362

    .line 496
    :cond_35f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_362
    return v2

    .line 453
    :pswitch_363
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_37d

    .line 460
    sget-object p1, Lcom/cipherlab/rfid/RFIDMemoryBank;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/rfid/RFIDMemoryBank;

    :cond_37d
    move-object v6, v3

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    move-object v3, p0

    .line 471
    invoke-virtual/range {v3 .. v9}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->RFIDDirectWriteTagByTID([B[BLcom/cipherlab/rfid/RFIDMemoryBank;II[B)Lcom/cipherlab/rfid/DeviceResponse;

    move-result-object p1

    .line 472
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_39b

    .line 474
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/rfid/DeviceResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_39e

    .line 478
    :cond_39b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_39e
    return v2

    .line 428
    :pswitch_39f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3b9

    .line 435
    sget-object p1, Lcom/cipherlab/rfid/RFIDMemoryBank;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/rfid/RFIDMemoryBank;

    :cond_3b9
    move-object v6, v3

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object v3, p0

    .line 446
    invoke-virtual/range {v3 .. v9}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->RFIDDirectReadTagByTID([B[BLcom/cipherlab/rfid/RFIDMemoryBank;III)I

    move-result p1

    .line 447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 397
    :pswitch_3d2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3ec

    .line 404
    sget-object p1, Lcom/cipherlab/rfid/RFIDMemoryBank;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/rfid/RFIDMemoryBank;

    :cond_3ec
    move-object v6, v3

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 414
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    move-object v3, p0

    .line 415
    invoke-virtual/range {v3 .. v9}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->RFIDDirectWriteTagByEPC([B[BLcom/cipherlab/rfid/RFIDMemoryBank;II[B)Lcom/cipherlab/rfid/DeviceResponse;

    move-result-object p1

    .line 416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_40a

    .line 418
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/rfid/DeviceResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_40d

    .line 422
    :cond_40a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_40d
    return v2

    .line 372
    :pswitch_40e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_428

    .line 379
    sget-object p1, Lcom/cipherlab/rfid/RFIDMemoryBank;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/rfid/RFIDMemoryBank;

    :cond_428
    move-object v6, v3

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object v3, p0

    .line 390
    invoke-virtual/range {v3 .. v9}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->RFIDDirectReadTagByEPC([B[BLcom/cipherlab/rfid/RFIDMemoryBank;III)I

    move-result p1

    .line 391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 349
    :pswitch_441
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_457

    .line 354
    sget-object p1, Lcom/cipherlab/rfid/RFIDMemoryBank;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/rfid/RFIDMemoryBank;

    :cond_457
    move-object v5, v3

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v3, p0

    .line 365
    invoke-virtual/range {v3 .. v8}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->RFIDWriteTagMassive([BLcom/cipherlab/rfid/RFIDMemoryBank;[BII)I

    move-result p1

    .line 366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 328
    :pswitch_470
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_486

    .line 333
    sget-object p4, Lcom/cipherlab/rfid/RFIDMemoryBank;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v3, p4

    check-cast v3, Lcom/cipherlab/rfid/RFIDMemoryBank;

    .line 339
    :cond_486
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 342
    invoke-virtual {p0, p1, v3, p4, p2}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->RFIDReadTagMassive([BLcom/cipherlab/rfid/RFIDMemoryBank;II)I

    move-result p1

    .line 343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 320
    :pswitch_499
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->RFIDDirectCancelInventoryRound()I

    move-result p1

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 303
    :pswitch_4a7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4b9

    .line 306
    sget-object p1, Lcom/cipherlab/rfid/InventoryType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/rfid/InventoryType;

    .line 312
    :cond_4b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 313
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->RFIDDirectStartInventoryRound(Lcom/cipherlab/rfid/InventoryType;I)I

    move-result p1

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 293
    :pswitch_4c8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 296
    invoke-virtual {p0, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->SetTxPower(I)I

    move-result p1

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 285
    :pswitch_4da
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->GetTxPower()I

    move-result p1

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 270
    :pswitch_4e8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4fa

    .line 273
    sget-object p1, Lcom/cipherlab/rfid/QValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/rfid/QValue;

    .line 278
    :cond_4fa
    invoke-virtual {p0, v3}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->SetQValue(Lcom/cipherlab/rfid/QValue;)I

    move-result p1

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 256
    :pswitch_505
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->GetQValue()Lcom/cipherlab/rfid/QValue;

    move-result-object p1

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_518

    .line 260
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/rfid/QValue;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_51b

    .line 264
    :cond_518
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_51b
    return v2

    .line 241
    :pswitch_51c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_52e

    .line 244
    sget-object p1, Lcom/cipherlab/rfid/RFIDMemoryBank;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/rfid/RFIDMemoryBank;

    .line 249
    :cond_52e
    invoke-virtual {p0, v3}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->SelectMemoryBank(Lcom/cipherlab/rfid/RFIDMemoryBank;)I

    move-result p1

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 227
    :pswitch_539
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->GetSelectedMemoryBank()Lcom/cipherlab/rfid/RFIDMemoryBank;

    move-result-object p1

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_54c

    .line 231
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/rfid/RFIDMemoryBank;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_54f

    .line 235
    :cond_54c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_54f
    return v2

    .line 212
    :pswitch_550
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_562

    .line 215
    sget-object p1, Lcom/cipherlab/rfid/RFIDMode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/rfid/RFIDMode;

    .line 220
    :cond_562
    invoke-virtual {p0, v3}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->SetRFIDMode(Lcom/cipherlab/rfid/RFIDMode;)I

    move-result p1

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 198
    :pswitch_56d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->GetRFIDMode()Lcom/cipherlab/rfid/RFIDMode;

    move-result-object p1

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_580

    .line 202
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/rfid/RFIDMode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_583

    .line 206
    :cond_580
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_583
    return v2

    .line 183
    :pswitch_584
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_596

    .line 186
    sget-object p1, Lcom/cipherlab/rfid/ScanMode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/rfid/ScanMode;

    .line 191
    :cond_596
    invoke-virtual {p0, v3}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->SetScanMode(Lcom/cipherlab/rfid/ScanMode;)I

    move-result p1

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 169
    :pswitch_5a1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->GetScanMode()Lcom/cipherlab/rfid/ScanMode;

    move-result-object p1

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_5b4

    .line 173
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/rfid/ScanMode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5b7

    .line 177
    :cond_5b4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5b7
    return v2

    .line 161
    :pswitch_5b8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->GetRFIDSwitchStatus()I

    move-result p1

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 153
    :pswitch_5c6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->ShutdownDevice()I

    move-result p1

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 143
    :pswitch_5d4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-virtual {p0, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->FirmwareUpdate(Ljava/lang/String;)I

    move-result p1

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 135
    :pswitch_5e6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->SaveUserSettings()I

    move-result p1

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 127
    :pswitch_5f4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->LoadUserSettings()I

    move-result p1

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 119
    :pswitch_602
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->LoadFactoryDefaultSettings()I

    move-result p1

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 102
    :pswitch_610
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    new-instance p1, Lcom/cipherlab/rfid/DeviceVoltageInfo;

    invoke-direct {p1}, Lcom/cipherlab/rfid/DeviceVoltageInfo;-><init>()V

    .line 105
    invoke-virtual {p0, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->GetBatteryLifePercent(Lcom/cipherlab/rfid/DeviceVoltageInfo;)I

    move-result p2

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/rfid/DeviceVoltageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 95
    :pswitch_629
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->KeepDeviceAlive()V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 85
    :pswitch_633
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 88
    invoke-virtual {p0, p1}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->SetDevicePowerSavingState(I)I

    move-result p1

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 77
    :pswitch_645
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->GetDevicePowerSavingState()I

    move-result p1

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 63
    :pswitch_653
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->GetDeviceInfo()Lcom/cipherlab/rfid/DeviceInfo;

    move-result-object p1

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_666

    .line 67
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/rfid/DeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_669

    .line 71
    :cond_666
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_669
    return v2

    .line 55
    :pswitch_66a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->GetLastError()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 47
    :pswitch_678
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/cipherlab/rfidbaseclass/IRfidServiceInterface$Stub;->GetServiceVersion()Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 42
    :cond_686
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_68a
    .packed-switch 0x1
        :pswitch_678
        :pswitch_66a
        :pswitch_653
        :pswitch_645
        :pswitch_633
        :pswitch_629
        :pswitch_610
        :pswitch_602
        :pswitch_5f4
        :pswitch_5e6
        :pswitch_5d4
        :pswitch_5c6
        :pswitch_5b8
        :pswitch_5a1
        :pswitch_584
        :pswitch_56d
        :pswitch_550
        :pswitch_539
        :pswitch_51c
        :pswitch_505
        :pswitch_4e8
        :pswitch_4da
        :pswitch_4c8
        :pswitch_4a7
        :pswitch_499
        :pswitch_470
        :pswitch_441
        :pswitch_40e
        :pswitch_3d2
        :pswitch_39f
        :pswitch_363
        :pswitch_344
        :pswitch_316
        :pswitch_2e8
        :pswitch_2ba
        :pswitch_2a1
        :pswitch_284
        :pswitch_26b
        :pswitch_24e
        :pswitch_239
        :pswitch_220
        :pswitch_207
        :pswitch_1ea
        :pswitch_1dc
        :pswitch_1c7
        :pswitch_1b0
        :pswitch_193
        :pswitch_185
        :pswitch_16e
        :pswitch_151
        :pswitch_138
        :pswitch_11b
        :pswitch_102
        :pswitch_e5
        :pswitch_cc
        :pswitch_af
        :pswitch_96
        :pswitch_79
        :pswitch_6b
        :pswitch_5d
        :pswitch_48
        :pswitch_2f
        :pswitch_12
    .end packed-switch
.end method
