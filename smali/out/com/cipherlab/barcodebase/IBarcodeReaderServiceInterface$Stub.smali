.class public abstract Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;
.super Landroid/os/Binder;
.source "IBarcodeReaderServiceInterface.java"

# interfaces
.implements Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

.field static final TRANSACTION_ApplyProfile:I = 0xd9

.field static final TRANSACTION_CopyProfile:I = 0x73

.field static final TRANSACTION_CreateProfile:I = 0x64

.field static final TRANSACTION_CreateProfileEx:I = 0x6f

.field static final TRANSACTION_DetectReaderReady:I = 0xda

.field static final TRANSACTION_GetLastError:I = 0x61

.field static final TRANSACTION_GetProfileList:I = 0x70

.field static final TRANSACTION_GetReaderActive:I = 0x4

.field static final TRANSACTION_GetReaderActive_Profile:I = 0x75

.field static final TRANSACTION_GetReaderCallbackState:I = 0x60

.field static final TRANSACTION_GetScannerType:I = 0x8

.field static final TRANSACTION_GetScannerVersion:I = 0x62

.field static final TRANSACTION_GetServiceVersion:I = 0x5a

.field static final TRANSACTION_ReadAustralianPostal:I = 0xf

.field static final TRANSACTION_ReadAustralianPostal_Profile:I = 0x80

.field static final TRANSACTION_ReadAustralianPostal_Profile_V2:I = 0xe4

.field static final TRANSACTION_ReadAztec:I = 0x11

.field static final TRANSACTION_ReadAztec_Profile:I = 0x82

.field static final TRANSACTION_ReadAztec_Profile_V2:I = 0xe6

.field static final TRANSACTION_ReadChinese2Of5:I = 0x13

.field static final TRANSACTION_ReadChinese2Of5_Profile:I = 0x84

.field static final TRANSACTION_ReadChinese2Of5_Profile_V2:I = 0xe8

.field static final TRANSACTION_ReadCip39:I = 0x66

.field static final TRANSACTION_ReadCip39_Profile:I = 0xd0

.field static final TRANSACTION_ReadCip39_Profile_V2:I = 0x134

.field static final TRANSACTION_ReadCodabar:I = 0x15

.field static final TRANSACTION_ReadCodabar_Profile:I = 0x86

.field static final TRANSACTION_ReadCodabar_Profile_V2:I = 0xea

.field static final TRANSACTION_ReadCode11:I = 0x17

.field static final TRANSACTION_ReadCode11_Profile:I = 0x88

.field static final TRANSACTION_ReadCode11_Profile_V2:I = 0xec

.field static final TRANSACTION_ReadCode128:I = 0x19

.field static final TRANSACTION_ReadCode128_Profile:I = 0x8a

.field static final TRANSACTION_ReadCode128_Profile_V2:I = 0xee

.field static final TRANSACTION_ReadCode39:I = 0x1b

.field static final TRANSACTION_ReadCode39_Profile:I = 0x8c

.field static final TRANSACTION_ReadCode39_Profile_V2:I = 0xf0

.field static final TRANSACTION_ReadCode93:I = 0x1d

.field static final TRANSACTION_ReadCode93_Profile:I = 0x8e

.field static final TRANSACTION_ReadCode93_Profile_V2:I = 0xf2

.field static final TRANSACTION_ReadComposite:I = 0x1f

.field static final TRANSACTION_ReadComposite_Profile:I = 0x90

.field static final TRANSACTION_ReadComposite_Profile_V2:I = 0xf4

.field static final TRANSACTION_ReadDataMatrix:I = 0x21

.field static final TRANSACTION_ReadDataMatrix_Profile:I = 0x92

.field static final TRANSACTION_ReadDataMatrix_Profile_V2:I = 0xf6

.field static final TRANSACTION_ReadDecodersSettings:I = 0xa

.field static final TRANSACTION_ReadDecodersSettings_Profile:I = 0x7e

.field static final TRANSACTION_ReadDecodersSettings_Profile_V2:I = 0xe2

.field static final TRANSACTION_ReadDotCode:I = 0x13e

.field static final TRANSACTION_ReadDotCode_Profile_V2:I = 0x140

.field static final TRANSACTION_ReadDutchPostal:I = 0x23

.field static final TRANSACTION_ReadDutchPostal_Profile:I = 0x94

.field static final TRANSACTION_ReadDutchPostal_Profile_V2:I = 0xf8

.field static final TRANSACTION_ReadEan13:I = 0x25

.field static final TRANSACTION_ReadEan13_Profile:I = 0x96

.field static final TRANSACTION_ReadEan13_Profile_V2:I = 0xfa

.field static final TRANSACTION_ReadEan8:I = 0x27

.field static final TRANSACTION_ReadEan8_Profile:I = 0x98

.field static final TRANSACTION_ReadEan8_Profile_V2:I = 0xfc

.field static final TRANSACTION_ReadFrenchPharmacode:I = 0x6c

.field static final TRANSACTION_ReadFrenchPharmacode_Profile:I = 0xd6

.field static final TRANSACTION_ReadFrenchPharmacode_Profile_V2:I = 0x13a

.field static final TRANSACTION_ReadGS1128:I = 0x29

.field static final TRANSACTION_ReadGS1128_Profile:I = 0x9a

.field static final TRANSACTION_ReadGS1128_Profile_V2:I = 0xfe

.field static final TRANSACTION_ReadGS1DataBar14:I = 0x2b

.field static final TRANSACTION_ReadGS1DataBar14_Profile:I = 0x9c

.field static final TRANSACTION_ReadGS1DataBar14_Profile_V2:I = 0x100

.field static final TRANSACTION_ReadGS1DataBarExpanded:I = 0x2d

.field static final TRANSACTION_ReadGS1DataBarExpanded_Profile:I = 0x9e

.field static final TRANSACTION_ReadGS1DataBarExpanded_Profile_V2:I = 0x102

.field static final TRANSACTION_ReadGS1DataBarLimited:I = 0x2f

.field static final TRANSACTION_ReadGS1DataBarLimited_Profile:I = 0xa0

.field static final TRANSACTION_ReadGS1DataBarLimited_Profile_V2:I = 0x104

.field static final TRANSACTION_ReadHanxin:I = 0x6a

.field static final TRANSACTION_ReadHanxin_Profile:I = 0xd4

.field static final TRANSACTION_ReadHanxin_Profile_V2:I = 0x138

.field static final TRANSACTION_ReadISBT128:I = 0x35

.field static final TRANSACTION_ReadISBT128_Profile:I = 0xa6

.field static final TRANSACTION_ReadISBT128_Profile_V2:I = 0x10a

.field static final TRANSACTION_ReadIndustrial2Of5:I = 0x31

.field static final TRANSACTION_ReadIndustrial2Of5_Profile:I = 0xa2

.field static final TRANSACTION_ReadIndustrial2Of5_Profile_V2:I = 0x106

.field static final TRANSACTION_ReadInterleaved2Of5:I = 0x33

.field static final TRANSACTION_ReadInterleaved2Of5_Profile:I = 0xa4

.field static final TRANSACTION_ReadInterleaved2Of5_Profile_V2:I = 0x108

.field static final TRANSACTION_ReadJapanPostal:I = 0x37

.field static final TRANSACTION_ReadJapanPostal_Profile:I = 0xa8

.field static final TRANSACTION_ReadJapanPostal_Profile_V2:I = 0x10c

.field static final TRANSACTION_ReadKorean3Of5:I = 0x39

.field static final TRANSACTION_ReadKorean3Of5_Profile:I = 0xaa

.field static final TRANSACTION_ReadKorean3Of5_Profile_V2:I = 0x10e

.field static final TRANSACTION_ReadLaetus:I = 0x68

.field static final TRANSACTION_ReadLaetus_Profile:I = 0xd2

.field static final TRANSACTION_ReadLaetus_Profile_V2:I = 0x136

.field static final TRANSACTION_ReadMRZ:I = 0x6e

.field static final TRANSACTION_ReadMRZ_Profile:I = 0xd8

.field static final TRANSACTION_ReadMRZ_Profile_V2:I = 0x13c

.field static final TRANSACTION_ReadMatrix2Of5:I = 0x3b

.field static final TRANSACTION_ReadMatrix2Of5_Profile:I = 0xac

.field static final TRANSACTION_ReadMatrix2Of5_Profile_V2:I = 0x110

.field static final TRANSACTION_ReadMaxiCode:I = 0x3d

.field static final TRANSACTION_ReadMaxiCode_Profile:I = 0xae

.field static final TRANSACTION_ReadMaxiCode_Profile_V2:I = 0x112

.field static final TRANSACTION_ReadMicroPDF417:I = 0x3f

.field static final TRANSACTION_ReadMicroPDF417_Profile:I = 0xb0

.field static final TRANSACTION_ReadMicroPDF417_Profile_V2:I = 0x114

.field static final TRANSACTION_ReadMicroQR:I = 0x41

.field static final TRANSACTION_ReadMicroQR_Profile:I = 0xb2

.field static final TRANSACTION_ReadMicroQR_Profile_V2:I = 0x116

.field static final TRANSACTION_ReadMsi:I = 0x43

.field static final TRANSACTION_ReadMsi_Profile:I = 0xb4

.field static final TRANSACTION_ReadMsi_Profile_V2:I = 0x118

.field static final TRANSACTION_ReadNotificationSettings:I = 0x2

.field static final TRANSACTION_ReadNotificationSettings_Profile:I = 0x78

.field static final TRANSACTION_ReadNotificationSettings_Profile_V2:I = 0xdc

.field static final TRANSACTION_ReadOutputSettings:I = 0x6

.field static final TRANSACTION_ReadOutputSettings_Profile:I = 0x7a

.field static final TRANSACTION_ReadOutputSettings_Profile_V2:I = 0xde

.field static final TRANSACTION_ReadPDF417:I = 0x45

.field static final TRANSACTION_ReadPDF417_Profile:I = 0xb6

.field static final TRANSACTION_ReadPDF417_Profile_V2:I = 0x11a

.field static final TRANSACTION_ReadPlessey:I = 0x5c

.field static final TRANSACTION_ReadPlessey_Profile:I = 0xcc

.field static final TRANSACTION_ReadPlessey_Profile_V2:I = 0x130

.field static final TRANSACTION_ReadQRCode:I = 0x47

.field static final TRANSACTION_ReadQRCode_Profile:I = 0xb8

.field static final TRANSACTION_ReadQRCode_Profile_V2:I = 0x11c

.field static final TRANSACTION_ReadTelepen:I = 0x5e

.field static final TRANSACTION_ReadTelepen_Profile:I = 0xce

.field static final TRANSACTION_ReadTelepen_Profile_V2:I = 0x132

.field static final TRANSACTION_ReadTriopticCode39:I = 0x49

.field static final TRANSACTION_ReadTriopticCode39_Profile:I = 0xba

.field static final TRANSACTION_ReadTriopticCode39_Profile_V2:I = 0x11e

.field static final TRANSACTION_ReadUKPostal:I = 0x4d

.field static final TRANSACTION_ReadUKPostal_Profile:I = 0xbe

.field static final TRANSACTION_ReadUKPostal_Profile_V2:I = 0x122

.field static final TRANSACTION_ReadUPUFICSPostal:I = 0x55

.field static final TRANSACTION_ReadUPUFICSPostal_Profile:I = 0xc6

.field static final TRANSACTION_ReadUPUFICSPostal_Profile_V2:I = 0x12a

.field static final TRANSACTION_ReadUSPSPostal:I = 0x59

.field static final TRANSACTION_ReadUSPSPostal_Profile:I = 0xca

.field static final TRANSACTION_ReadUSPSPostal_Profile_V2:I = 0x12e

.field static final TRANSACTION_ReadUSPostal:I = 0x57

.field static final TRANSACTION_ReadUSPostal_Profile:I = 0xc8

.field static final TRANSACTION_ReadUSPostal_Profile_V2:I = 0x12c

.field static final TRANSACTION_ReadUccCoupon:I = 0x4b

.field static final TRANSACTION_ReadUccCoupon_Profile:I = 0xbc

.field static final TRANSACTION_ReadUccCoupon_Profile_V2:I = 0x120

.field static final TRANSACTION_ReadUpcA:I = 0x4f

.field static final TRANSACTION_ReadUpcA_Profile:I = 0xc0

.field static final TRANSACTION_ReadUpcA_Profile_V2:I = 0x124

.field static final TRANSACTION_ReadUpcE:I = 0x51

.field static final TRANSACTION_ReadUpcE1:I = 0x53

.field static final TRANSACTION_ReadUpcE1_Profile:I = 0xc4

.field static final TRANSACTION_ReadUpcE1_Profile_V2:I = 0x128

.field static final TRANSACTION_ReadUpcE_Profile:I = 0xc2

.field static final TRANSACTION_ReadUpcE_Profile_V2:I = 0x126

.field static final TRANSACTION_ReadUserPreferenceSettings:I = 0xc

.field static final TRANSACTION_ReadUserPreferenceSettings_Profile:I = 0x7c

.field static final TRANSACTION_ReadUserPreferenceSettings_Profile_V2:I = 0xe0

.field static final TRANSACTION_RemoveProfile:I = 0x72

.field static final TRANSACTION_ResetToDefault:I = 0xd

.field static final TRANSACTION_ResetToDefault_Profile:I = 0x76

.field static final TRANSACTION_ResetToPorfileDefault:I = 0x63

.field static final TRANSACTION_SetReaderActive:I = 0x3

.field static final TRANSACTION_SetReaderActive_Profile:I = 0x74

.field static final TRANSACTION_SetReaderCallback:I = 0x5f

.field static final TRANSACTION_SetSoftwareTriggerBool:I = 0x7

.field static final TRANSACTION_UpdateProfile:I = 0x71

.field static final TRANSACTION_WriteAustralianPostal:I = 0xe

.field static final TRANSACTION_WriteAustralianPostal_Profile:I = 0x7f

.field static final TRANSACTION_WriteAustralianPostal_Profile_V2:I = 0xe3

.field static final TRANSACTION_WriteAztec:I = 0x10

.field static final TRANSACTION_WriteAztec_Profile:I = 0x81

.field static final TRANSACTION_WriteAztec_Profile_V2:I = 0xe5

.field static final TRANSACTION_WriteChinese2Of5:I = 0x12

.field static final TRANSACTION_WriteChinese2Of5_Profile:I = 0x83

.field static final TRANSACTION_WriteChinese2Of5_Profile_V2:I = 0xe7

.field static final TRANSACTION_WriteCip39:I = 0x65

.field static final TRANSACTION_WriteCip39_Profile:I = 0xcf

.field static final TRANSACTION_WriteCip39_Profile_V2:I = 0x133

.field static final TRANSACTION_WriteCodabar:I = 0x14

.field static final TRANSACTION_WriteCodabar_Profile:I = 0x85

.field static final TRANSACTION_WriteCodabar_Profile_V2:I = 0xe9

.field static final TRANSACTION_WriteCode11:I = 0x16

.field static final TRANSACTION_WriteCode11_Profile:I = 0x87

.field static final TRANSACTION_WriteCode11_Profile_V2:I = 0xeb

.field static final TRANSACTION_WriteCode128:I = 0x18

.field static final TRANSACTION_WriteCode128_Profile:I = 0x89

.field static final TRANSACTION_WriteCode128_Profile_V2:I = 0xed

.field static final TRANSACTION_WriteCode39:I = 0x1a

.field static final TRANSACTION_WriteCode39_Profile:I = 0x8b

.field static final TRANSACTION_WriteCode39_Profile_V2:I = 0xef

.field static final TRANSACTION_WriteCode93:I = 0x1c

.field static final TRANSACTION_WriteCode93_Profile:I = 0x8d

.field static final TRANSACTION_WriteCode93_Profile_V2:I = 0xf1

.field static final TRANSACTION_WriteComposite:I = 0x1e

.field static final TRANSACTION_WriteComposite_Profile:I = 0x8f

.field static final TRANSACTION_WriteComposite_Profile_V2:I = 0xf3

.field static final TRANSACTION_WriteDataMatrix:I = 0x20

.field static final TRANSACTION_WriteDataMatrix_Profile:I = 0x91

.field static final TRANSACTION_WriteDataMatrix_Profile_V2:I = 0xf5

.field static final TRANSACTION_WriteDecodersSettings:I = 0x9

.field static final TRANSACTION_WriteDecodersSettings_Profile:I = 0x7d

.field static final TRANSACTION_WriteDecodersSettings_Profile_V2:I = 0xe1

.field static final TRANSACTION_WriteDotCode:I = 0x13d

.field static final TRANSACTION_WriteDotCode_Profile_V2:I = 0x13f

.field static final TRANSACTION_WriteDutchPostal:I = 0x22

.field static final TRANSACTION_WriteDutchPostal_Profile:I = 0x93

.field static final TRANSACTION_WriteDutchPostal_Profile_V2:I = 0xf7

.field static final TRANSACTION_WriteEan13:I = 0x24

.field static final TRANSACTION_WriteEan13_Profile:I = 0x95

.field static final TRANSACTION_WriteEan13_Profile_V2:I = 0xf9

.field static final TRANSACTION_WriteEan8:I = 0x26

.field static final TRANSACTION_WriteEan8_Profile:I = 0x97

.field static final TRANSACTION_WriteEan8_Profile_V2:I = 0xfb

.field static final TRANSACTION_WriteFrenchPharmacode:I = 0x6b

.field static final TRANSACTION_WriteFrenchPharmacode_Profile:I = 0xd5

.field static final TRANSACTION_WriteFrenchPharmacode_Profile_V2:I = 0x139

.field static final TRANSACTION_WriteGS1128:I = 0x28

.field static final TRANSACTION_WriteGS1128_Profile:I = 0x99

.field static final TRANSACTION_WriteGS1128_Profile_V2:I = 0xfd

.field static final TRANSACTION_WriteGS1DataBar14:I = 0x2a

.field static final TRANSACTION_WriteGS1DataBar14_Profile:I = 0x9b

.field static final TRANSACTION_WriteGS1DataBar14_Profile_V2:I = 0xff

.field static final TRANSACTION_WriteGS1DataBarExpanded:I = 0x2c

.field static final TRANSACTION_WriteGS1DataBarExpanded_Profile:I = 0x9d

.field static final TRANSACTION_WriteGS1DataBarExpanded_Profile_V2:I = 0x101

.field static final TRANSACTION_WriteGS1DataBarLimited:I = 0x2e

.field static final TRANSACTION_WriteGS1DataBarLimited_Profile:I = 0x9f

.field static final TRANSACTION_WriteGS1DataBarLimited_Profile_V2:I = 0x103

.field static final TRANSACTION_WriteHanxin:I = 0x69

.field static final TRANSACTION_WriteHanxin_Profile:I = 0xd3

.field static final TRANSACTION_WriteHanxin_Profile_V2:I = 0x137

.field static final TRANSACTION_WriteISBT128:I = 0x34

.field static final TRANSACTION_WriteISBT128_Profile:I = 0xa5

.field static final TRANSACTION_WriteISBT128_Profile_V2:I = 0x109

.field static final TRANSACTION_WriteIndustrial2Of5:I = 0x30

.field static final TRANSACTION_WriteIndustrial2Of5_Profile:I = 0xa1

.field static final TRANSACTION_WriteIndustrial2Of5_Profile_V2:I = 0x105

.field static final TRANSACTION_WriteInterleaved2Of5:I = 0x32

.field static final TRANSACTION_WriteInterleaved2Of5_Profile:I = 0xa3

.field static final TRANSACTION_WriteInterleaved2Of5_Profile_V2:I = 0x107

.field static final TRANSACTION_WriteJapanPostal:I = 0x36

.field static final TRANSACTION_WriteJapanPostal_Profile:I = 0xa7

.field static final TRANSACTION_WriteJapanPostal_Profile_V2:I = 0x10b

.field static final TRANSACTION_WriteKorean3Of5:I = 0x38

.field static final TRANSACTION_WriteKorean3Of5_Profile:I = 0xa9

.field static final TRANSACTION_WriteKorean3Of5_Profile_V2:I = 0x10d

.field static final TRANSACTION_WriteLaetus:I = 0x67

.field static final TRANSACTION_WriteLaetus_Profile:I = 0xd1

.field static final TRANSACTION_WriteLaetus_Profile_V2:I = 0x135

.field static final TRANSACTION_WriteMRZ:I = 0x6d

.field static final TRANSACTION_WriteMRZ_Profile:I = 0xd7

.field static final TRANSACTION_WriteMRZ_Profile_V2:I = 0x13b

.field static final TRANSACTION_WriteMatrix2Of5:I = 0x3a

.field static final TRANSACTION_WriteMatrix2Of5_Profile:I = 0xab

.field static final TRANSACTION_WriteMatrix2Of5_Profile_V2:I = 0x10f

.field static final TRANSACTION_WriteMaxiCode:I = 0x3c

.field static final TRANSACTION_WriteMaxiCode_Profile:I = 0xad

.field static final TRANSACTION_WriteMaxiCode_Profile_V2:I = 0x111

.field static final TRANSACTION_WriteMicroPDF417:I = 0x3e

.field static final TRANSACTION_WriteMicroPDF417_Profile:I = 0xaf

.field static final TRANSACTION_WriteMicroPDF417_Profile_V2:I = 0x113

.field static final TRANSACTION_WriteMicroQR:I = 0x40

.field static final TRANSACTION_WriteMicroQR_Profile:I = 0xb1

.field static final TRANSACTION_WriteMicroQR_Profile_V2:I = 0x115

.field static final TRANSACTION_WriteMsi:I = 0x42

.field static final TRANSACTION_WriteMsi_Profile:I = 0xb3

.field static final TRANSACTION_WriteMsi_Profile_V2:I = 0x117

.field static final TRANSACTION_WriteNotificationSettings:I = 0x1

.field static final TRANSACTION_WriteNotificationSettings_Profile:I = 0x77

.field static final TRANSACTION_WriteNotificationSettings_Profile_V2:I = 0xdb

.field static final TRANSACTION_WriteOutputSettings:I = 0x5

.field static final TRANSACTION_WriteOutputSettings_Profile:I = 0x79

.field static final TRANSACTION_WriteOutputSettings_Profile_V2:I = 0xdd

.field static final TRANSACTION_WritePDF417:I = 0x44

.field static final TRANSACTION_WritePDF417_Profile:I = 0xb5

.field static final TRANSACTION_WritePDF417_Profile_V2:I = 0x119

.field static final TRANSACTION_WritePlessey:I = 0x5b

.field static final TRANSACTION_WritePlessey_Profile:I = 0xcb

.field static final TRANSACTION_WritePlessey_Profile_V2:I = 0x12f

.field static final TRANSACTION_WriteQRCode:I = 0x46

.field static final TRANSACTION_WriteQRCode_Profile:I = 0xb7

.field static final TRANSACTION_WriteQRCode_Profile_V2:I = 0x11b

.field static final TRANSACTION_WriteTelepen:I = 0x5d

.field static final TRANSACTION_WriteTelepen_Profile:I = 0xcd

.field static final TRANSACTION_WriteTelepen_Profile_V2:I = 0x131

.field static final TRANSACTION_WriteTriopticCode39:I = 0x48

.field static final TRANSACTION_WriteTriopticCode39_Profile:I = 0xb9

.field static final TRANSACTION_WriteTriopticCode39_Profile_V2:I = 0x11d

.field static final TRANSACTION_WriteUKPostal:I = 0x4c

.field static final TRANSACTION_WriteUKPostal_Profile:I = 0xbd

.field static final TRANSACTION_WriteUKPostal_Profile_V2:I = 0x121

.field static final TRANSACTION_WriteUPUFICSPostal:I = 0x54

.field static final TRANSACTION_WriteUPUFICSPostal_Profile:I = 0xc5

.field static final TRANSACTION_WriteUPUFICSPostal_Profile_V2:I = 0x129

.field static final TRANSACTION_WriteUSPSPostal:I = 0x58

.field static final TRANSACTION_WriteUSPSPostal_Profile:I = 0xc9

.field static final TRANSACTION_WriteUSPSPostal_Profile_V2:I = 0x12d

.field static final TRANSACTION_WriteUSPostal:I = 0x56

.field static final TRANSACTION_WriteUSPostal_Profile:I = 0xc7

.field static final TRANSACTION_WriteUSPostal_Profile_V2:I = 0x12b

.field static final TRANSACTION_WriteUccCoupon:I = 0x4a

.field static final TRANSACTION_WriteUccCoupon_Profile:I = 0xbb

.field static final TRANSACTION_WriteUccCoupon_Profile_V2:I = 0x11f

.field static final TRANSACTION_WriteUpcA:I = 0x4e

.field static final TRANSACTION_WriteUpcA_Profile:I = 0xbf

.field static final TRANSACTION_WriteUpcA_Profile_V2:I = 0x123

.field static final TRANSACTION_WriteUpcE:I = 0x50

.field static final TRANSACTION_WriteUpcE1:I = 0x52

.field static final TRANSACTION_WriteUpcE1_Profile:I = 0xc3

.field static final TRANSACTION_WriteUpcE1_Profile_V2:I = 0x127

.field static final TRANSACTION_WriteUpcE_Profile:I = 0xc1

.field static final TRANSACTION_WriteUpcE_Profile_V2:I = 0x125

.field static final TRANSACTION_WriteUserPreferenceSettings:I = 0xb

.field static final TRANSACTION_WriteUserPreferenceSettings_Profile:I = 0x7b

.field static final TRANSACTION_WriteUserPreferenceSettings_Profile_V2:I = 0xdf


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 27
    instance-of v1, v0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    return-object v0

    .line 30
    :cond_13
    new-instance v0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const-string v1, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2d41

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_2d46

    .line 6441
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 6418
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6420
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_24

    .line 6421
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 6427
    :cond_24
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/DotCode;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/DotCode;-><init>()V

    .line 6428
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadDotCode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/DotCode;)I

    move-result p2

    .line 6429
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6430
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6432
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6433
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/DotCode;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 6396
    :pswitch_3a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6398
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4c

    .line 6399
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_4d

    :cond_4c
    move-object p1, v3

    .line 6405
    :goto_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_5c

    .line 6406
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/DotCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/DotCode;

    .line 6411
    :cond_5c
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteDotCode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/DotCode;)I

    move-result p1

    .line 6412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6413
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 6379
    :pswitch_67
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6381
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/DotCode;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/DotCode;-><init>()V

    .line 6382
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadDotCode(Lcom/cipherlab/barcode/decoderparams/DotCode;)I

    move-result p2

    .line 6383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6384
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6386
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6387
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/DotCode;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 6364
    :pswitch_80
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6366
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_92

    .line 6367
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/DotCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/DotCode;

    .line 6372
    :cond_92
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteDotCode(Lcom/cipherlab/barcode/decoderparams/DotCode;)I

    move-result p1

    .line 6373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6374
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 6340
    :pswitch_9d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6342
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_af

    .line 6343
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 6349
    :cond_af
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/MRZ;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/MRZ;-><init>()V

    .line 6350
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadMRZ_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MRZ;)I

    move-result p2

    .line 6351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6352
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6354
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6355
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/MRZ;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 6318
    :pswitch_c5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6320
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d7

    .line 6321
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_d8

    :cond_d7
    move-object p1, v3

    .line 6327
    :goto_d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_e7

    .line 6328
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/MRZ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/MRZ;

    .line 6333
    :cond_e7
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteMRZ_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MRZ;)I

    move-result p1

    .line 6334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6335
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 6294
    :pswitch_f2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6296
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_104

    .line 6297
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 6303
    :cond_104
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;-><init>()V

    .line 6304
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadFrenchPharmacode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;)I

    move-result p2

    .line 6305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6306
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6308
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6309
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 6272
    :pswitch_11a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_12c

    .line 6275
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_12d

    :cond_12c
    move-object p1, v3

    .line 6281
    :goto_12d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_13c

    .line 6282
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;

    .line 6287
    :cond_13c
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteFrenchPharmacode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;)I

    move-result p1

    .line 6288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6289
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 6248
    :pswitch_147
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_159

    .line 6251
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 6257
    :cond_159
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Hanxin;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Hanxin;-><init>()V

    .line 6258
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadHanxin_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Hanxin;)I

    move-result p2

    .line 6259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6260
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6262
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6263
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Hanxin;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 6226
    :pswitch_16f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6228
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_181

    .line 6229
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_182

    :cond_181
    move-object p1, v3

    .line 6235
    :goto_182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_191

    .line 6236
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/Hanxin;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Hanxin;

    .line 6241
    :cond_191
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteHanxin_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Hanxin;)I

    move-result p1

    .line 6242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6243
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 6202
    :pswitch_19c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1ae

    .line 6205
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 6211
    :cond_1ae
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Laetus;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Laetus;-><init>()V

    .line 6212
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadLaetus_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Laetus;)I

    move-result p2

    .line 6213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6214
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6216
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6217
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Laetus;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 6180
    :pswitch_1c4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1d6

    .line 6183
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_1d7

    :cond_1d6
    move-object p1, v3

    .line 6189
    :goto_1d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1e6

    .line 6190
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/Laetus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Laetus;

    .line 6195
    :cond_1e6
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteLaetus_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Laetus;)I

    move-result p1

    .line 6196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6197
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 6156
    :pswitch_1f1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_203

    .line 6159
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 6165
    :cond_203
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Cip39;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Cip39;-><init>()V

    .line 6166
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadCip39_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Cip39;)I

    move-result p2

    .line 6167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6168
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6170
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6171
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Cip39;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 6134
    :pswitch_219
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_22b

    .line 6137
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_22c

    :cond_22b
    move-object p1, v3

    .line 6143
    :goto_22c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_23b

    .line 6144
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/Cip39;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Cip39;

    .line 6149
    :cond_23b
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteCip39_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Cip39;)I

    move-result p1

    .line 6150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6151
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 6110
    :pswitch_246
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_258

    .line 6113
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 6119
    :cond_258
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Telepen;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Telepen;-><init>()V

    .line 6120
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadTelepen_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Telepen;)I

    move-result p2

    .line 6121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6122
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6124
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6125
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Telepen;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 6088
    :pswitch_26e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6090
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_280

    .line 6091
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_281

    :cond_280
    move-object p1, v3

    .line 6097
    :goto_281
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_290

    .line 6098
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/Telepen;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Telepen;

    .line 6103
    :cond_290
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteTelepen_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Telepen;)I

    move-result p1

    .line 6104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6105
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 6064
    :pswitch_29b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6066
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2ad

    .line 6067
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 6073
    :cond_2ad
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Plessey;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Plessey;-><init>()V

    .line 6074
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadPlessey_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Plessey;)I

    move-result p2

    .line 6075
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6076
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6078
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6079
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Plessey;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 6042
    :pswitch_2c3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6044
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2d5

    .line 6045
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_2d6

    :cond_2d5
    move-object p1, v3

    .line 6051
    :goto_2d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2e5

    .line 6052
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/Plessey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Plessey;

    .line 6057
    :cond_2e5
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WritePlessey_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Plessey;)I

    move-result p1

    .line 6058
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6059
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 6018
    :pswitch_2f0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6020
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_302

    .line 6021
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 6027
    :cond_302
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/USPSPostal;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/USPSPostal;-><init>()V

    .line 6028
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadUSPSPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/USPSPostal;)I

    move-result p2

    .line 6029
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6030
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6032
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6033
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/USPSPostal;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 5996
    :pswitch_318
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5998
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_32a

    .line 5999
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_32b

    :cond_32a
    move-object p1, v3

    .line 6005
    :goto_32b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_33a

    .line 6006
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/USPSPostal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/USPSPostal;

    .line 6011
    :cond_33a
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteUSPSPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/USPSPostal;)I

    move-result p1

    .line 6012
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6013
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 5972
    :pswitch_345
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5974
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_357

    .line 5975
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 5981
    :cond_357
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/USPostal;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/USPostal;-><init>()V

    .line 5982
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadUSPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/USPostal;)I

    move-result p2

    .line 5983
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5984
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5986
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5987
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/USPostal;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 5950
    :pswitch_36d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5952
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_37f

    .line 5953
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_380

    :cond_37f
    move-object p1, v3

    .line 5959
    :goto_380
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_38f

    .line 5960
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/USPostal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/USPostal;

    .line 5965
    :cond_38f
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteUSPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/USPostal;)I

    move-result p1

    .line 5966
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5967
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 5926
    :pswitch_39a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5928
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3ac

    .line 5929
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 5935
    :cond_3ac
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;-><init>()V

    .line 5936
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadUPUFICSPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;)I

    move-result p2

    .line 5937
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5938
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5940
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5941
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 5904
    :pswitch_3c2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5906
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3d4

    .line 5907
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_3d5

    :cond_3d4
    move-object p1, v3

    .line 5913
    :goto_3d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_3e4

    .line 5914
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;

    .line 5919
    :cond_3e4
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteUPUFICSPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;)I

    move-result p1

    .line 5920
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5921
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 5880
    :pswitch_3ef
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5882
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_401

    .line 5883
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 5889
    :cond_401
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/UpcE1;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/UpcE1;-><init>()V

    .line 5890
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadUpcE1_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UpcE1;)I

    move-result p2

    .line 5891
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5892
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5894
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5895
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/UpcE1;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 5858
    :pswitch_417
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5860
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_429

    .line 5861
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_42a

    :cond_429
    move-object p1, v3

    .line 5867
    :goto_42a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_439

    .line 5868
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/UpcE1;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/UpcE1;

    .line 5873
    :cond_439
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteUpcE1_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UpcE1;)I

    move-result p1

    .line 5874
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5875
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 5834
    :pswitch_444
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5836
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_456

    .line 5837
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 5843
    :cond_456
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/UpcE;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/UpcE;-><init>()V

    .line 5844
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadUpcE_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UpcE;)I

    move-result p2

    .line 5845
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5846
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5848
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5849
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/UpcE;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 5812
    :pswitch_46c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5814
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_47e

    .line 5815
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_47f

    :cond_47e
    move-object p1, v3

    .line 5821
    :goto_47f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_48e

    .line 5822
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/UpcE;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/UpcE;

    .line 5827
    :cond_48e
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteUpcE_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UpcE;)I

    move-result p1

    .line 5828
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5829
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 5788
    :pswitch_499
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5790
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4ab

    .line 5791
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 5797
    :cond_4ab
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/UpcA;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/UpcA;-><init>()V

    .line 5798
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadUpcA_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UpcA;)I

    move-result p2

    .line 5799
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5800
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5802
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5803
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/UpcA;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 5766
    :pswitch_4c1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5768
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4d3

    .line 5769
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_4d4

    :cond_4d3
    move-object p1, v3

    .line 5775
    :goto_4d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_4e3

    .line 5776
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/UpcA;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/UpcA;

    .line 5781
    :cond_4e3
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteUpcA_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UpcA;)I

    move-result p1

    .line 5782
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5783
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 5742
    :pswitch_4ee
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5744
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_500

    .line 5745
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 5751
    :cond_500
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/UKPostal;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/UKPostal;-><init>()V

    .line 5752
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadUKPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UKPostal;)I

    move-result p2

    .line 5753
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5754
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5756
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5757
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/UKPostal;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 5720
    :pswitch_516
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5722
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_528

    .line 5723
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_529

    :cond_528
    move-object p1, v3

    .line 5729
    :goto_529
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_538

    .line 5730
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/UKPostal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/UKPostal;

    .line 5735
    :cond_538
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteUKPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UKPostal;)I

    move-result p1

    .line 5736
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5737
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 5696
    :pswitch_543
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5698
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_555

    .line 5699
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 5705
    :cond_555
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/UccCoupon;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/UccCoupon;-><init>()V

    .line 5706
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadUccCoupon_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UccCoupon;)I

    move-result p2

    .line 5707
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5708
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5710
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5711
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/UccCoupon;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 5674
    :pswitch_56b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5676
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_57d

    .line 5677
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_57e

    :cond_57d
    move-object p1, v3

    .line 5683
    :goto_57e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_58d

    .line 5684
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/UccCoupon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/UccCoupon;

    .line 5689
    :cond_58d
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteUccCoupon_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UccCoupon;)I

    move-result p1

    .line 5690
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5691
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 5650
    :pswitch_598
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5652
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5aa

    .line 5653
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 5659
    :cond_5aa
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/TriopticCode39;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/TriopticCode39;-><init>()V

    .line 5660
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadTriopticCode39_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/TriopticCode39;)I

    move-result p2

    .line 5661
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5662
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5664
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5665
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/TriopticCode39;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 5628
    :pswitch_5c0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5630
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5d2

    .line 5631
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_5d3

    :cond_5d2
    move-object p1, v3

    .line 5637
    :goto_5d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_5e2

    .line 5638
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/TriopticCode39;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/TriopticCode39;

    .line 5643
    :cond_5e2
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteTriopticCode39_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/TriopticCode39;)I

    move-result p1

    .line 5644
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5645
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 5604
    :pswitch_5ed
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5606
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5ff

    .line 5607
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 5613
    :cond_5ff
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/QRCode;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/QRCode;-><init>()V

    .line 5614
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadQRCode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/QRCode;)I

    move-result p2

    .line 5615
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5616
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5618
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5619
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/QRCode;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 5582
    :pswitch_615
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5584
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_627

    .line 5585
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_628

    :cond_627
    move-object p1, v3

    .line 5591
    :goto_628
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_637

    .line 5592
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/QRCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/QRCode;

    .line 5597
    :cond_637
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteQRCode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/QRCode;)I

    move-result p1

    .line 5598
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5599
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 5558
    :pswitch_642
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5560
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_654

    .line 5561
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 5567
    :cond_654
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/PDF417;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/PDF417;-><init>()V

    .line 5568
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadPDF417_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/PDF417;)I

    move-result p2

    .line 5569
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5570
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5572
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5573
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/PDF417;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 5536
    :pswitch_66a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5538
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_67c

    .line 5539
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_67d

    :cond_67c
    move-object p1, v3

    .line 5545
    :goto_67d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_68c

    .line 5546
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/PDF417;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/PDF417;

    .line 5551
    :cond_68c
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WritePDF417_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/PDF417;)I

    move-result p1

    .line 5552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5553
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 5512
    :pswitch_697
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5514
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6a9

    .line 5515
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 5521
    :cond_6a9
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Msi;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Msi;-><init>()V

    .line 5522
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadMsi_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Msi;)I

    move-result p2

    .line 5523
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5524
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5526
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5527
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Msi;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 5490
    :pswitch_6bf
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5492
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6d1

    .line 5493
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_6d2

    :cond_6d1
    move-object p1, v3

    .line 5499
    :goto_6d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_6e1

    .line 5500
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/Msi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Msi;

    .line 5505
    :cond_6e1
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteMsi_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Msi;)I

    move-result p1

    .line 5506
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5507
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 5466
    :pswitch_6ec
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5468
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6fe

    .line 5469
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 5475
    :cond_6fe
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/MicroQR;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/MicroQR;-><init>()V

    .line 5476
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadMicroQR_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MicroQR;)I

    move-result p2

    .line 5477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5478
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5480
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5481
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/MicroQR;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 5444
    :pswitch_714
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5446
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_726

    .line 5447
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_727

    :cond_726
    move-object p1, v3

    .line 5453
    :goto_727
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_736

    .line 5454
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/MicroQR;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/MicroQR;

    .line 5459
    :cond_736
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteMicroQR_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MicroQR;)I

    move-result p1

    .line 5460
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5461
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 5420
    :pswitch_741
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5422
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_753

    .line 5423
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 5429
    :cond_753
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/MicroPDF417;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/MicroPDF417;-><init>()V

    .line 5430
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadMicroPDF417_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MicroPDF417;)I

    move-result p2

    .line 5431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5432
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5434
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5435
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/MicroPDF417;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 5398
    :pswitch_769
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5400
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_77b

    .line 5401
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_77c

    :cond_77b
    move-object p1, v3

    .line 5407
    :goto_77c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_78b

    .line 5408
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/MicroPDF417;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/MicroPDF417;

    .line 5413
    :cond_78b
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteMicroPDF417_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MicroPDF417;)I

    move-result p1

    .line 5414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5415
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 5374
    :pswitch_796
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5376
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7a8

    .line 5377
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 5383
    :cond_7a8
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/MaxiCode;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/MaxiCode;-><init>()V

    .line 5384
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadMaxiCode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MaxiCode;)I

    move-result p2

    .line 5385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5386
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5388
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5389
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/MaxiCode;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 5352
    :pswitch_7be
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5354
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7d0

    .line 5355
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_7d1

    :cond_7d0
    move-object p1, v3

    .line 5361
    :goto_7d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_7e0

    .line 5362
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/MaxiCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/MaxiCode;

    .line 5367
    :cond_7e0
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteMaxiCode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MaxiCode;)I

    move-result p1

    .line 5368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5369
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 5328
    :pswitch_7eb
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5330
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7fd

    .line 5331
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 5337
    :cond_7fd
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;-><init>()V

    .line 5338
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadMatrix2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;)I

    move-result p2

    .line 5339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5340
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5342
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5343
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 5306
    :pswitch_813
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_825

    .line 5309
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_826

    :cond_825
    move-object p1, v3

    .line 5315
    :goto_826
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_835

    .line 5316
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;

    .line 5321
    :cond_835
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteMatrix2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;)I

    move-result p1

    .line 5322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5323
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 5282
    :pswitch_840
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_852

    .line 5285
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 5291
    :cond_852
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Korean3Of5;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Korean3Of5;-><init>()V

    .line 5292
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadKorean3Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Korean3Of5;)I

    move-result p2

    .line 5293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5294
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5296
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5297
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Korean3Of5;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 5260
    :pswitch_868
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5262
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_87a

    .line 5263
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_87b

    :cond_87a
    move-object p1, v3

    .line 5269
    :goto_87b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_88a

    .line 5270
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/Korean3Of5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Korean3Of5;

    .line 5275
    :cond_88a
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteKorean3Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Korean3Of5;)I

    move-result p1

    .line 5276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5277
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 5236
    :pswitch_895
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8a7

    .line 5239
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 5245
    :cond_8a7
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/JapanPostal;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/JapanPostal;-><init>()V

    .line 5246
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadJapanPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/JapanPostal;)I

    move-result p2

    .line 5247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5248
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5250
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5251
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/JapanPostal;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 5214
    :pswitch_8bd
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8cf

    .line 5217
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_8d0

    :cond_8cf
    move-object p1, v3

    .line 5223
    :goto_8d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_8df

    .line 5224
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/JapanPostal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/JapanPostal;

    .line 5229
    :cond_8df
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteJapanPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/JapanPostal;)I

    move-result p1

    .line 5230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5231
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 5190
    :pswitch_8ea
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8fc

    .line 5193
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 5199
    :cond_8fc
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/ISBT128;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/ISBT128;-><init>()V

    .line 5200
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadISBT128_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/ISBT128;)I

    move-result p2

    .line 5201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5202
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5204
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5205
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/ISBT128;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 5168
    :pswitch_912
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_924

    .line 5171
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_925

    :cond_924
    move-object p1, v3

    .line 5177
    :goto_925
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_934

    .line 5178
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ISBT128;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ISBT128;

    .line 5183
    :cond_934
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteISBT128_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/ISBT128;)I

    move-result p1

    .line 5184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5185
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 5144
    :pswitch_93f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_951

    .line 5147
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 5153
    :cond_951
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;-><init>()V

    .line 5154
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadInterleaved2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;)I

    move-result p2

    .line 5155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5156
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5158
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5159
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 5122
    :pswitch_967
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_979

    .line 5125
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_97a

    :cond_979
    move-object p1, v3

    .line 5131
    :goto_97a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_989

    .line 5132
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;

    .line 5137
    :cond_989
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteInterleaved2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;)I

    move-result p1

    .line 5138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5139
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 5098
    :pswitch_994
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9a6

    .line 5101
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 5107
    :cond_9a6
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;-><init>()V

    .line 5108
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadIndustrial2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;)I

    move-result p2

    .line 5109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5110
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5112
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5113
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 5076
    :pswitch_9bc
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5078
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9ce

    .line 5079
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_9cf

    :cond_9ce
    move-object p1, v3

    .line 5085
    :goto_9cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_9de

    .line 5086
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;

    .line 5091
    :cond_9de
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteIndustrial2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;)I

    move-result p1

    .line 5092
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5093
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 5052
    :pswitch_9e9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5054
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9fb

    .line 5055
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 5061
    :cond_9fb
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;-><init>()V

    .line 5062
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadGS1DataBarLimited_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;)I

    move-result p2

    .line 5063
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5064
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5066
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5067
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 5030
    :pswitch_a11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5032
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a23

    .line 5033
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_a24

    :cond_a23
    move-object p1, v3

    .line 5039
    :goto_a24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_a33

    .line 5040
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;

    .line 5045
    :cond_a33
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteGS1DataBarLimited_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;)I

    move-result p1

    .line 5046
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5047
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 5006
    :pswitch_a3e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5008
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a50

    .line 5009
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 5015
    :cond_a50
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;-><init>()V

    .line 5016
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadGS1DataBarExpanded_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;)I

    move-result p2

    .line 5017
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5018
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5020
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5021
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 4984
    :pswitch_a66
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4986
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a78

    .line 4987
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_a79

    :cond_a78
    move-object p1, v3

    .line 4993
    :goto_a79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_a88

    .line 4994
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;

    .line 4999
    :cond_a88
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteGS1DataBarExpanded_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;)I

    move-result p1

    .line 5000
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5001
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 4960
    :pswitch_a93
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4962
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_aa5

    .line 4963
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 4969
    :cond_aa5
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;-><init>()V

    .line 4970
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadGS1DataBar14_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;)I

    move-result p2

    .line 4971
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4972
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4974
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4975
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 4938
    :pswitch_abb
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4940
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_acd

    .line 4941
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_ace

    :cond_acd
    move-object p1, v3

    .line 4947
    :goto_ace
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_add

    .line 4948
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;

    .line 4953
    :cond_add
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteGS1DataBar14_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;)I

    move-result p1

    .line 4954
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4955
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 4914
    :pswitch_ae8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4916
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_afa

    .line 4917
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 4923
    :cond_afa
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/GS1128;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/GS1128;-><init>()V

    .line 4924
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadGS1128_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1128;)I

    move-result p2

    .line 4925
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4926
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4928
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4929
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/GS1128;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 4892
    :pswitch_b10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4894
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b22

    .line 4895
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_b23

    :cond_b22
    move-object p1, v3

    .line 4901
    :goto_b23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_b32

    .line 4902
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/GS1128;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/GS1128;

    .line 4907
    :cond_b32
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteGS1128_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1128;)I

    move-result p1

    .line 4908
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4909
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 4868
    :pswitch_b3d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4870
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b4f

    .line 4871
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 4877
    :cond_b4f
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Ean8;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Ean8;-><init>()V

    .line 4878
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadEan8_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Ean8;)I

    move-result p2

    .line 4879
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4880
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4882
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4883
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Ean8;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 4846
    :pswitch_b65
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4848
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b77

    .line 4849
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_b78

    :cond_b77
    move-object p1, v3

    .line 4855
    :goto_b78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_b87

    .line 4856
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/Ean8;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Ean8;

    .line 4861
    :cond_b87
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteEan8_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Ean8;)I

    move-result p1

    .line 4862
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4863
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 4822
    :pswitch_b92
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4824
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_ba4

    .line 4825
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 4831
    :cond_ba4
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Ean13;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Ean13;-><init>()V

    .line 4832
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadEan13_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Ean13;)I

    move-result p2

    .line 4833
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4834
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4836
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4837
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Ean13;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 4800
    :pswitch_bba
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4802
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_bcc

    .line 4803
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_bcd

    :cond_bcc
    move-object p1, v3

    .line 4809
    :goto_bcd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_bdc

    .line 4810
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/Ean13;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Ean13;

    .line 4815
    :cond_bdc
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteEan13_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Ean13;)I

    move-result p1

    .line 4816
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4817
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 4776
    :pswitch_be7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4778
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_bf9

    .line 4779
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 4785
    :cond_bf9
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/DutchPostal;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/DutchPostal;-><init>()V

    .line 4786
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadDutchPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/DutchPostal;)I

    move-result p2

    .line 4787
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4788
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4790
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4791
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/DutchPostal;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 4754
    :pswitch_c0f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4756
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_c21

    .line 4757
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_c22

    :cond_c21
    move-object p1, v3

    .line 4763
    :goto_c22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_c31

    .line 4764
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/DutchPostal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/DutchPostal;

    .line 4769
    :cond_c31
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteDutchPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/DutchPostal;)I

    move-result p1

    .line 4770
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4771
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 4730
    :pswitch_c3c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4732
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_c4e

    .line 4733
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 4739
    :cond_c4e
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/DataMatrix;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/DataMatrix;-><init>()V

    .line 4740
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadDataMatrix_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/DataMatrix;)I

    move-result p2

    .line 4741
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4742
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4744
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4745
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 4708
    :pswitch_c64
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4710
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_c76

    .line 4711
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_c77

    :cond_c76
    move-object p1, v3

    .line 4717
    :goto_c77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_c86

    .line 4718
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/DataMatrix;

    .line 4723
    :cond_c86
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteDataMatrix_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/DataMatrix;)I

    move-result p1

    .line 4724
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4725
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 4684
    :pswitch_c91
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4686
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_ca3

    .line 4687
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 4693
    :cond_ca3
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Composite;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Composite;-><init>()V

    .line 4694
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadComposite_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Composite;)I

    move-result p2

    .line 4695
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4696
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4698
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4699
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Composite;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 4662
    :pswitch_cb9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4664
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_ccb

    .line 4665
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_ccc

    :cond_ccb
    move-object p1, v3

    .line 4671
    :goto_ccc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_cdb

    .line 4672
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/Composite;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Composite;

    .line 4677
    :cond_cdb
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteComposite_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Composite;)I

    move-result p1

    .line 4678
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4679
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 4638
    :pswitch_ce6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4640
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_cf8

    .line 4641
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 4647
    :cond_cf8
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Code93;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Code93;-><init>()V

    .line 4648
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadCode93_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code93;)I

    move-result p2

    .line 4649
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4650
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4652
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4653
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Code93;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 4616
    :pswitch_d0e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4618
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d20

    .line 4619
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_d21

    :cond_d20
    move-object p1, v3

    .line 4625
    :goto_d21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_d30

    .line 4626
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/Code93;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Code93;

    .line 4631
    :cond_d30
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteCode93_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code93;)I

    move-result p1

    .line 4632
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4633
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 4592
    :pswitch_d3b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4594
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d4d

    .line 4595
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 4601
    :cond_d4d
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Code39;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Code39;-><init>()V

    .line 4602
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadCode39_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code39;)I

    move-result p2

    .line 4603
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4604
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4606
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4607
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Code39;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 4570
    :pswitch_d63
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4572
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d75

    .line 4573
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_d76

    :cond_d75
    move-object p1, v3

    .line 4579
    :goto_d76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_d85

    .line 4580
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/Code39;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Code39;

    .line 4585
    :cond_d85
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteCode39_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code39;)I

    move-result p1

    .line 4586
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4587
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 4546
    :pswitch_d90
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4548
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_da2

    .line 4549
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 4555
    :cond_da2
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Code128;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Code128;-><init>()V

    .line 4556
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadCode128_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code128;)I

    move-result p2

    .line 4557
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4558
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4560
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4561
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Code128;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 4524
    :pswitch_db8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4526
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_dca

    .line 4527
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_dcb

    :cond_dca
    move-object p1, v3

    .line 4533
    :goto_dcb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_dda

    .line 4534
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/Code128;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Code128;

    .line 4539
    :cond_dda
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteCode128_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code128;)I

    move-result p1

    .line 4540
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4541
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 4500
    :pswitch_de5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4502
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_df7

    .line 4503
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 4509
    :cond_df7
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Code11;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Code11;-><init>()V

    .line 4510
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadCode11_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code11;)I

    move-result p2

    .line 4511
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4512
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4514
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4515
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Code11;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 4478
    :pswitch_e0d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4480
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_e1f

    .line 4481
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_e20

    :cond_e1f
    move-object p1, v3

    .line 4487
    :goto_e20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_e2f

    .line 4488
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/Code11;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Code11;

    .line 4493
    :cond_e2f
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteCode11_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code11;)I

    move-result p1

    .line 4494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4495
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 4454
    :pswitch_e3a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4456
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_e4c

    .line 4457
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 4463
    :cond_e4c
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Codabar;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Codabar;-><init>()V

    .line 4464
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadCodabar_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Codabar;)I

    move-result p2

    .line 4465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4466
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4468
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4469
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Codabar;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 4432
    :pswitch_e62
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4434
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_e74

    .line 4435
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_e75

    :cond_e74
    move-object p1, v3

    .line 4441
    :goto_e75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_e84

    .line 4442
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/Codabar;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Codabar;

    .line 4447
    :cond_e84
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteCodabar_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Codabar;)I

    move-result p1

    .line 4448
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4449
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 4408
    :pswitch_e8f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4410
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_ea1

    .line 4411
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 4417
    :cond_ea1
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;-><init>()V

    .line 4418
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadChinese2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;)I

    move-result p2

    .line 4419
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4420
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4422
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4423
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 4386
    :pswitch_eb7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4388
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_ec9

    .line 4389
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_eca

    :cond_ec9
    move-object p1, v3

    .line 4395
    :goto_eca
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_ed9

    .line 4396
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;

    .line 4401
    :cond_ed9
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteChinese2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;)I

    move-result p1

    .line 4402
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4403
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 4362
    :pswitch_ee4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4364
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_ef6

    .line 4365
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 4371
    :cond_ef6
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Aztec;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Aztec;-><init>()V

    .line 4372
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadAztec_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Aztec;)I

    move-result p2

    .line 4373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4374
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4376
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4377
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Aztec;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 4340
    :pswitch_f0c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4342
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_f1e

    .line 4343
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_f1f

    :cond_f1e
    move-object p1, v3

    .line 4349
    :goto_f1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_f2e

    .line 4350
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/Aztec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Aztec;

    .line 4355
    :cond_f2e
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteAztec_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Aztec;)I

    move-result p1

    .line 4356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4357
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 4316
    :pswitch_f39
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4318
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_f4b

    .line 4319
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 4325
    :cond_f4b
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;-><init>()V

    .line 4326
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadAustralianPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/AustralianPostal;)I

    move-result p2

    .line 4327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4328
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4330
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4331
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 4294
    :pswitch_f61
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4296
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_f73

    .line 4297
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_f74

    :cond_f73
    move-object p1, v3

    .line 4303
    :goto_f74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_f83

    .line 4304
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;

    .line 4309
    :cond_f83
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteAustralianPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/AustralianPostal;)I

    move-result p1

    .line 4310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4311
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 4270
    :pswitch_f8e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_fa0

    .line 4273
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 4279
    :cond_fa0
    new-instance p1, Lcom/cipherlab/barcode/decoder/Decoders;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoder/Decoders;-><init>()V

    .line 4280
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadDecodersSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoder/Decoders;)I

    move-result p2

    .line 4281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4282
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4284
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4285
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoder/Decoders;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 4248
    :pswitch_fb6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_fc8

    .line 4251
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_fc9

    :cond_fc8
    move-object p1, v3

    .line 4257
    :goto_fc9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_fd8

    .line 4258
    sget-object p4, Lcom/cipherlab/barcode/decoder/Decoders;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoder/Decoders;

    .line 4263
    :cond_fd8
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteDecodersSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoder/Decoders;)I

    move-result p1

    .line 4264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4265
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 4224
    :pswitch_fe3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_ff5

    .line 4227
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 4233
    :cond_ff5
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/UserPreference;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/UserPreference;-><init>()V

    .line 4234
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadUserPreferenceSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UserPreference;)I

    move-result p2

    .line 4235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4236
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4238
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4239
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/UserPreference;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 4202
    :pswitch_100b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_101d

    .line 4205
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_101e

    :cond_101d
    move-object p1, v3

    .line 4211
    :goto_101e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_102d

    .line 4212
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/UserPreference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/UserPreference;

    .line 4217
    :cond_102d
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteUserPreferenceSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UserPreference;)I

    move-result p1

    .line 4218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4219
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 4178
    :pswitch_1038
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_104a

    .line 4181
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 4187
    :cond_104a
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;-><init>()V

    .line 4188
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadOutputSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;)I

    move-result p2

    .line 4189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4190
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4192
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4193
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 4156
    :pswitch_1060
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1072

    .line 4159
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_1073

    :cond_1072
    move-object p1, v3

    .line 4165
    :goto_1073
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1082

    .line 4166
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;

    .line 4171
    :cond_1082
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteOutputSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;)I

    move-result p1

    .line 4172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4173
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 4132
    :pswitch_108d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_109f

    .line 4135
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 4141
    :cond_109f
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/NotificationParams;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/NotificationParams;-><init>()V

    .line 4142
    invoke-virtual {p0, v3, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadNotificationSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/NotificationParams;)I

    move-result p2

    .line 4143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4144
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4146
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4147
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/NotificationParams;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 4110
    :pswitch_10b5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_10c7

    .line 4113
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_10c8

    :cond_10c7
    move-object p1, v3

    .line 4119
    :goto_10c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_10d7

    .line 4120
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/NotificationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/NotificationParams;

    .line 4125
    :cond_10d7
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteNotificationSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/NotificationParams;)I

    move-result p1

    .line 4126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4127
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 4102
    :pswitch_10e2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4103
    invoke-virtual {p0}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->DetectReaderReady()Z

    move-result p1

    .line 4104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4105
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 4095
    :pswitch_10f0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4096
    invoke-virtual {p0}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ApplyProfile()V

    .line 4097
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 4071
    :pswitch_10fa
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4073
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/MRZ;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/MRZ;-><init>()V

    .line 4075
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1111

    .line 4076
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 4081
    :cond_1111
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadMRZ_Profile(Lcom/cipherlab/barcode/decoderparams/MRZ;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 4082
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4083
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4085
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4086
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/MRZ;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 4049
    :pswitch_1122
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4051
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1134

    .line 4052
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/MRZ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/MRZ;

    goto :goto_1135

    :cond_1134
    move-object p1, v3

    .line 4058
    :goto_1135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1144

    .line 4059
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 4064
    :cond_1144
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteMRZ_Profile(Lcom/cipherlab/barcode/decoderparams/MRZ;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 4065
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4066
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 4025
    :pswitch_114f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4027
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;-><init>()V

    .line 4029
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1166

    .line 4030
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 4035
    :cond_1166
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadFrenchPharmacode_Profile(Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 4036
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4037
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4039
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4040
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 4003
    :pswitch_1177
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4005
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1189

    .line 4006
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;

    goto :goto_118a

    :cond_1189
    move-object p1, v3

    .line 4012
    :goto_118a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1199

    .line 4013
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 4018
    :cond_1199
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteFrenchPharmacode_Profile(Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 4019
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4020
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 3979
    :pswitch_11a4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3981
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Hanxin;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Hanxin;-><init>()V

    .line 3983
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_11bb

    .line 3984
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3989
    :cond_11bb
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadHanxin_Profile(Lcom/cipherlab/barcode/decoderparams/Hanxin;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 3990
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3991
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3993
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3994
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Hanxin;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 3957
    :pswitch_11cc
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3959
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_11de

    .line 3960
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Hanxin;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Hanxin;

    goto :goto_11df

    :cond_11de
    move-object p1, v3

    .line 3966
    :goto_11df
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_11ee

    .line 3967
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3972
    :cond_11ee
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteHanxin_Profile(Lcom/cipherlab/barcode/decoderparams/Hanxin;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 3973
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3974
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 3933
    :pswitch_11f9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3935
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Laetus;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Laetus;-><init>()V

    .line 3937
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1210

    .line 3938
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3943
    :cond_1210
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadLaetus_Profile(Lcom/cipherlab/barcode/decoderparams/Laetus;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 3944
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3945
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3947
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3948
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Laetus;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 3911
    :pswitch_1221
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3913
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1233

    .line 3914
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Laetus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Laetus;

    goto :goto_1234

    :cond_1233
    move-object p1, v3

    .line 3920
    :goto_1234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1243

    .line 3921
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3926
    :cond_1243
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteLaetus_Profile(Lcom/cipherlab/barcode/decoderparams/Laetus;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 3927
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3928
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 3887
    :pswitch_124e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3889
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Cip39;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Cip39;-><init>()V

    .line 3891
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1265

    .line 3892
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3897
    :cond_1265
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadCip39_Profile(Lcom/cipherlab/barcode/decoderparams/Cip39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 3898
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3899
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3901
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3902
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Cip39;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 3865
    :pswitch_1276
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3867
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1288

    .line 3868
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Cip39;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Cip39;

    goto :goto_1289

    :cond_1288
    move-object p1, v3

    .line 3874
    :goto_1289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1298

    .line 3875
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3880
    :cond_1298
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteCip39_Profile(Lcom/cipherlab/barcode/decoderparams/Cip39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 3881
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3882
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 3841
    :pswitch_12a3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3843
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Telepen;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Telepen;-><init>()V

    .line 3845
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_12ba

    .line 3846
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3851
    :cond_12ba
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadTelepen_Profile(Lcom/cipherlab/barcode/decoderparams/Telepen;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 3852
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3853
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3855
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3856
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Telepen;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 3819
    :pswitch_12cb
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3821
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_12dd

    .line 3822
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Telepen;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Telepen;

    goto :goto_12de

    :cond_12dd
    move-object p1, v3

    .line 3828
    :goto_12de
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_12ed

    .line 3829
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3834
    :cond_12ed
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteTelepen_Profile(Lcom/cipherlab/barcode/decoderparams/Telepen;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 3835
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3836
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 3795
    :pswitch_12f8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3797
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Plessey;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Plessey;-><init>()V

    .line 3799
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_130f

    .line 3800
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3805
    :cond_130f
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadPlessey_Profile(Lcom/cipherlab/barcode/decoderparams/Plessey;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 3806
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3807
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3809
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3810
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Plessey;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 3773
    :pswitch_1320
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3775
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1332

    .line 3776
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Plessey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Plessey;

    goto :goto_1333

    :cond_1332
    move-object p1, v3

    .line 3782
    :goto_1333
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1342

    .line 3783
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3788
    :cond_1342
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WritePlessey_Profile(Lcom/cipherlab/barcode/decoderparams/Plessey;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 3789
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3790
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 3749
    :pswitch_134d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3751
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/USPSPostal;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/USPSPostal;-><init>()V

    .line 3753
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1364

    .line 3754
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3759
    :cond_1364
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadUSPSPostal_Profile(Lcom/cipherlab/barcode/decoderparams/USPSPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 3760
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3761
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3763
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3764
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/USPSPostal;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 3727
    :pswitch_1375
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3729
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1387

    .line 3730
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/USPSPostal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/USPSPostal;

    goto :goto_1388

    :cond_1387
    move-object p1, v3

    .line 3736
    :goto_1388
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1397

    .line 3737
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3742
    :cond_1397
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteUSPSPostal_Profile(Lcom/cipherlab/barcode/decoderparams/USPSPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 3743
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3744
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 3703
    :pswitch_13a2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3705
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/USPostal;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/USPostal;-><init>()V

    .line 3707
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_13b9

    .line 3708
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3713
    :cond_13b9
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadUSPostal_Profile(Lcom/cipherlab/barcode/decoderparams/USPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 3714
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3715
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3717
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3718
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/USPostal;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 3681
    :pswitch_13ca
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3683
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_13dc

    .line 3684
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/USPostal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/USPostal;

    goto :goto_13dd

    :cond_13dc
    move-object p1, v3

    .line 3690
    :goto_13dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_13ec

    .line 3691
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3696
    :cond_13ec
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteUSPostal_Profile(Lcom/cipherlab/barcode/decoderparams/USPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 3697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3698
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 3657
    :pswitch_13f7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3659
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;-><init>()V

    .line 3661
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_140e

    .line 3662
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3667
    :cond_140e
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadUPUFICSPostal_Profile(Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 3668
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3669
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3671
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3672
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 3635
    :pswitch_141f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3637
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1431

    .line 3638
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;

    goto :goto_1432

    :cond_1431
    move-object p1, v3

    .line 3644
    :goto_1432
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1441

    .line 3645
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3650
    :cond_1441
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteUPUFICSPostal_Profile(Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 3651
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3652
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 3611
    :pswitch_144c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3613
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/UpcE1;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/UpcE1;-><init>()V

    .line 3615
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1463

    .line 3616
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3621
    :cond_1463
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadUpcE1_Profile(Lcom/cipherlab/barcode/decoderparams/UpcE1;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 3622
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3623
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3625
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3626
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/UpcE1;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 3589
    :pswitch_1474
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3591
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1486

    .line 3592
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/UpcE1;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/UpcE1;

    goto :goto_1487

    :cond_1486
    move-object p1, v3

    .line 3598
    :goto_1487
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1496

    .line 3599
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3604
    :cond_1496
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteUpcE1_Profile(Lcom/cipherlab/barcode/decoderparams/UpcE1;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 3605
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3606
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 3565
    :pswitch_14a1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3567
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/UpcE;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/UpcE;-><init>()V

    .line 3569
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_14b8

    .line 3570
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3575
    :cond_14b8
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadUpcE_Profile(Lcom/cipherlab/barcode/decoderparams/UpcE;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 3576
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3577
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3579
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3580
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/UpcE;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 3543
    :pswitch_14c9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3545
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_14db

    .line 3546
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/UpcE;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/UpcE;

    goto :goto_14dc

    :cond_14db
    move-object p1, v3

    .line 3552
    :goto_14dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_14eb

    .line 3553
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3558
    :cond_14eb
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteUpcE_Profile(Lcom/cipherlab/barcode/decoderparams/UpcE;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 3559
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3560
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 3519
    :pswitch_14f6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3521
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/UpcA;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/UpcA;-><init>()V

    .line 3523
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_150d

    .line 3524
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3529
    :cond_150d
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadUpcA_Profile(Lcom/cipherlab/barcode/decoderparams/UpcA;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 3530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3531
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3533
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3534
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/UpcA;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 3497
    :pswitch_151e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3499
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1530

    .line 3500
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/UpcA;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/UpcA;

    goto :goto_1531

    :cond_1530
    move-object p1, v3

    .line 3506
    :goto_1531
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1540

    .line 3507
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3512
    :cond_1540
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteUpcA_Profile(Lcom/cipherlab/barcode/decoderparams/UpcA;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 3513
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3514
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 3473
    :pswitch_154b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3475
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/UKPostal;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/UKPostal;-><init>()V

    .line 3477
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1562

    .line 3478
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3483
    :cond_1562
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadUKPostal_Profile(Lcom/cipherlab/barcode/decoderparams/UKPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 3484
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3485
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3487
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3488
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/UKPostal;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 3451
    :pswitch_1573
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3453
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1585

    .line 3454
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/UKPostal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/UKPostal;

    goto :goto_1586

    :cond_1585
    move-object p1, v3

    .line 3460
    :goto_1586
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1595

    .line 3461
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3466
    :cond_1595
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteUKPostal_Profile(Lcom/cipherlab/barcode/decoderparams/UKPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 3467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3468
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 3427
    :pswitch_15a0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3429
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/UccCoupon;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/UccCoupon;-><init>()V

    .line 3431
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_15b7

    .line 3432
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3437
    :cond_15b7
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadUccCoupon_Profile(Lcom/cipherlab/barcode/decoderparams/UccCoupon;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 3438
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3439
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3441
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3442
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/UccCoupon;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 3405
    :pswitch_15c8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3407
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_15da

    .line 3408
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/UccCoupon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/UccCoupon;

    goto :goto_15db

    :cond_15da
    move-object p1, v3

    .line 3414
    :goto_15db
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_15ea

    .line 3415
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3420
    :cond_15ea
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteUccCoupon_Profile(Lcom/cipherlab/barcode/decoderparams/UccCoupon;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 3421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3422
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 3381
    :pswitch_15f5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3383
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/TriopticCode39;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/TriopticCode39;-><init>()V

    .line 3385
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_160c

    .line 3386
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3391
    :cond_160c
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadTriopticCode39_Profile(Lcom/cipherlab/barcode/decoderparams/TriopticCode39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 3392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3393
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3395
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3396
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/TriopticCode39;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 3359
    :pswitch_161d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_162f

    .line 3362
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/TriopticCode39;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/TriopticCode39;

    goto :goto_1630

    :cond_162f
    move-object p1, v3

    .line 3368
    :goto_1630
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_163f

    .line 3369
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3374
    :cond_163f
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteTriopticCode39_Profile(Lcom/cipherlab/barcode/decoderparams/TriopticCode39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 3375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3376
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 3335
    :pswitch_164a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3337
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/QRCode;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/QRCode;-><init>()V

    .line 3339
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1661

    .line 3340
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3345
    :cond_1661
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadQRCode_Profile(Lcom/cipherlab/barcode/decoderparams/QRCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 3346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3347
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3349
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3350
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/QRCode;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 3313
    :pswitch_1672
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1684

    .line 3316
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/QRCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/QRCode;

    goto :goto_1685

    :cond_1684
    move-object p1, v3

    .line 3322
    :goto_1685
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1694

    .line 3323
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3328
    :cond_1694
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteQRCode_Profile(Lcom/cipherlab/barcode/decoderparams/QRCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 3329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3330
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 3289
    :pswitch_169f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3291
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/PDF417;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/PDF417;-><init>()V

    .line 3293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_16b6

    .line 3294
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3299
    :cond_16b6
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadPDF417_Profile(Lcom/cipherlab/barcode/decoderparams/PDF417;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 3300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3301
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3303
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3304
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/PDF417;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 3267
    :pswitch_16c7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3269
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_16d9

    .line 3270
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/PDF417;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/PDF417;

    goto :goto_16da

    :cond_16d9
    move-object p1, v3

    .line 3276
    :goto_16da
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_16e9

    .line 3277
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3282
    :cond_16e9
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WritePDF417_Profile(Lcom/cipherlab/barcode/decoderparams/PDF417;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 3283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3284
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 3243
    :pswitch_16f4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3245
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Msi;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Msi;-><init>()V

    .line 3247
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_170b

    .line 3248
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3253
    :cond_170b
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadMsi_Profile(Lcom/cipherlab/barcode/decoderparams/Msi;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 3254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3255
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3257
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3258
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Msi;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 3221
    :pswitch_171c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_172e

    .line 3224
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Msi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Msi;

    goto :goto_172f

    :cond_172e
    move-object p1, v3

    .line 3230
    :goto_172f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_173e

    .line 3231
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3236
    :cond_173e
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteMsi_Profile(Lcom/cipherlab/barcode/decoderparams/Msi;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 3237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3238
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 3197
    :pswitch_1749
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3199
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/MicroQR;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/MicroQR;-><init>()V

    .line 3201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1760

    .line 3202
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3207
    :cond_1760
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadMicroQR_Profile(Lcom/cipherlab/barcode/decoderparams/MicroQR;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 3208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3209
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3211
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3212
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/MicroQR;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 3175
    :pswitch_1771
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1783

    .line 3178
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/MicroQR;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/MicroQR;

    goto :goto_1784

    :cond_1783
    move-object p1, v3

    .line 3184
    :goto_1784
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1793

    .line 3185
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3190
    :cond_1793
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteMicroQR_Profile(Lcom/cipherlab/barcode/decoderparams/MicroQR;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 3191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3192
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 3151
    :pswitch_179e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3153
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/MicroPDF417;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/MicroPDF417;-><init>()V

    .line 3155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_17b5

    .line 3156
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3161
    :cond_17b5
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadMicroPDF417_Profile(Lcom/cipherlab/barcode/decoderparams/MicroPDF417;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 3162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3163
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3165
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3166
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/MicroPDF417;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 3129
    :pswitch_17c6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_17d8

    .line 3132
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/MicroPDF417;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/MicroPDF417;

    goto :goto_17d9

    :cond_17d8
    move-object p1, v3

    .line 3138
    :goto_17d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_17e8

    .line 3139
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3144
    :cond_17e8
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteMicroPDF417_Profile(Lcom/cipherlab/barcode/decoderparams/MicroPDF417;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 3145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3146
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 3105
    :pswitch_17f3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3107
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/MaxiCode;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/MaxiCode;-><init>()V

    .line 3109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_180a

    .line 3110
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3115
    :cond_180a
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadMaxiCode_Profile(Lcom/cipherlab/barcode/decoderparams/MaxiCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 3116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3117
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3119
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3120
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/MaxiCode;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 3083
    :pswitch_181b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3085
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_182d

    .line 3086
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/MaxiCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/MaxiCode;

    goto :goto_182e

    :cond_182d
    move-object p1, v3

    .line 3092
    :goto_182e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_183d

    .line 3093
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3098
    :cond_183d
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteMaxiCode_Profile(Lcom/cipherlab/barcode/decoderparams/MaxiCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 3099
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3100
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 3059
    :pswitch_1848
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3061
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;-><init>()V

    .line 3063
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_185f

    .line 3064
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3069
    :cond_185f
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadMatrix2Of5_Profile(Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 3070
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3071
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3073
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3074
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 3037
    :pswitch_1870
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3039
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1882

    .line 3040
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;

    goto :goto_1883

    :cond_1882
    move-object p1, v3

    .line 3046
    :goto_1883
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1892

    .line 3047
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3052
    :cond_1892
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteMatrix2Of5_Profile(Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 3053
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3054
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 3013
    :pswitch_189d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3015
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Korean3Of5;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Korean3Of5;-><init>()V

    .line 3017
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_18b4

    .line 3018
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3023
    :cond_18b4
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadKorean3Of5_Profile(Lcom/cipherlab/barcode/decoderparams/Korean3Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 3024
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3025
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3027
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3028
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Korean3Of5;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 2991
    :pswitch_18c5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2993
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_18d7

    .line 2994
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Korean3Of5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Korean3Of5;

    goto :goto_18d8

    :cond_18d7
    move-object p1, v3

    .line 3000
    :goto_18d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_18e7

    .line 3001
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 3006
    :cond_18e7
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteKorean3Of5_Profile(Lcom/cipherlab/barcode/decoderparams/Korean3Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 3007
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3008
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 2967
    :pswitch_18f2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2969
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/JapanPostal;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/JapanPostal;-><init>()V

    .line 2971
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1909

    .line 2972
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2977
    :cond_1909
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadJapanPostal_Profile(Lcom/cipherlab/barcode/decoderparams/JapanPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 2978
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2979
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2981
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2982
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/JapanPostal;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 2945
    :pswitch_191a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2947
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_192c

    .line 2948
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/JapanPostal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/JapanPostal;

    goto :goto_192d

    :cond_192c
    move-object p1, v3

    .line 2954
    :goto_192d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_193c

    .line 2955
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2960
    :cond_193c
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteJapanPostal_Profile(Lcom/cipherlab/barcode/decoderparams/JapanPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 2961
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2962
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 2921
    :pswitch_1947
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2923
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/ISBT128;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/ISBT128;-><init>()V

    .line 2925
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_195e

    .line 2926
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2931
    :cond_195e
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadISBT128_Profile(Lcom/cipherlab/barcode/decoderparams/ISBT128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 2932
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2933
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2935
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2936
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/ISBT128;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 2899
    :pswitch_196f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2901
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1981

    .line 2902
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ISBT128;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ISBT128;

    goto :goto_1982

    :cond_1981
    move-object p1, v3

    .line 2908
    :goto_1982
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1991

    .line 2909
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2914
    :cond_1991
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteISBT128_Profile(Lcom/cipherlab/barcode/decoderparams/ISBT128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 2915
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2916
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 2875
    :pswitch_199c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2877
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;-><init>()V

    .line 2879
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_19b3

    .line 2880
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2885
    :cond_19b3
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadInterleaved2Of5_Profile(Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 2886
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2887
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2889
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2890
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 2853
    :pswitch_19c4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2855
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_19d6

    .line 2856
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;

    goto :goto_19d7

    :cond_19d6
    move-object p1, v3

    .line 2862
    :goto_19d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_19e6

    .line 2863
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2868
    :cond_19e6
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteInterleaved2Of5_Profile(Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 2869
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2870
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 2829
    :pswitch_19f1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2831
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;-><init>()V

    .line 2833
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1a08

    .line 2834
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2839
    :cond_1a08
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadIndustrial2Of5_Profile(Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 2840
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2841
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2843
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2844
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 2807
    :pswitch_1a19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2809
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1a2b

    .line 2810
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;

    goto :goto_1a2c

    :cond_1a2b
    move-object p1, v3

    .line 2816
    :goto_1a2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1a3b

    .line 2817
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2822
    :cond_1a3b
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteIndustrial2Of5_Profile(Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 2823
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2824
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 2783
    :pswitch_1a46
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2785
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;-><init>()V

    .line 2787
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1a5d

    .line 2788
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2793
    :cond_1a5d
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadGS1DataBarLimited_Profile(Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 2794
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2795
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2797
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2798
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 2761
    :pswitch_1a6e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2763
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1a80

    .line 2764
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;

    goto :goto_1a81

    :cond_1a80
    move-object p1, v3

    .line 2770
    :goto_1a81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1a90

    .line 2771
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2776
    :cond_1a90
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteGS1DataBarLimited_Profile(Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 2777
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2778
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 2737
    :pswitch_1a9b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2739
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;-><init>()V

    .line 2741
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1ab2

    .line 2742
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2747
    :cond_1ab2
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadGS1DataBarExpanded_Profile(Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 2748
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2749
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2751
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2752
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 2715
    :pswitch_1ac3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2717
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1ad5

    .line 2718
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;

    goto :goto_1ad6

    :cond_1ad5
    move-object p1, v3

    .line 2724
    :goto_1ad6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1ae5

    .line 2725
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2730
    :cond_1ae5
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteGS1DataBarExpanded_Profile(Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 2731
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2732
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 2691
    :pswitch_1af0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2693
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;-><init>()V

    .line 2695
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1b07

    .line 2696
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2701
    :cond_1b07
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadGS1DataBar14_Profile(Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 2702
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2703
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2705
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2706
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 2669
    :pswitch_1b18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2671
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1b2a

    .line 2672
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;

    goto :goto_1b2b

    :cond_1b2a
    move-object p1, v3

    .line 2678
    :goto_1b2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1b3a

    .line 2679
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2684
    :cond_1b3a
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteGS1DataBar14_Profile(Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 2685
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2686
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 2645
    :pswitch_1b45
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2647
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/GS1128;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/GS1128;-><init>()V

    .line 2649
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1b5c

    .line 2650
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2655
    :cond_1b5c
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadGS1128_Profile(Lcom/cipherlab/barcode/decoderparams/GS1128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 2656
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2657
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2659
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2660
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/GS1128;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 2623
    :pswitch_1b6d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2625
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1b7f

    .line 2626
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/GS1128;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/GS1128;

    goto :goto_1b80

    :cond_1b7f
    move-object p1, v3

    .line 2632
    :goto_1b80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1b8f

    .line 2633
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2638
    :cond_1b8f
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteGS1128_Profile(Lcom/cipherlab/barcode/decoderparams/GS1128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 2639
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2640
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 2599
    :pswitch_1b9a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2601
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Ean8;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Ean8;-><init>()V

    .line 2603
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1bb1

    .line 2604
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2609
    :cond_1bb1
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadEan8_Profile(Lcom/cipherlab/barcode/decoderparams/Ean8;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 2610
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2611
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2613
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2614
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Ean8;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 2577
    :pswitch_1bc2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2579
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1bd4

    .line 2580
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Ean8;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Ean8;

    goto :goto_1bd5

    :cond_1bd4
    move-object p1, v3

    .line 2586
    :goto_1bd5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1be4

    .line 2587
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2592
    :cond_1be4
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteEan8_Profile(Lcom/cipherlab/barcode/decoderparams/Ean8;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 2593
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2594
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 2553
    :pswitch_1bef
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2555
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Ean13;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Ean13;-><init>()V

    .line 2557
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1c06

    .line 2558
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2563
    :cond_1c06
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadEan13_Profile(Lcom/cipherlab/barcode/decoderparams/Ean13;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 2564
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2565
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2567
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2568
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Ean13;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 2531
    :pswitch_1c17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2533
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1c29

    .line 2534
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Ean13;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Ean13;

    goto :goto_1c2a

    :cond_1c29
    move-object p1, v3

    .line 2540
    :goto_1c2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1c39

    .line 2541
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2546
    :cond_1c39
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteEan13_Profile(Lcom/cipherlab/barcode/decoderparams/Ean13;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 2547
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2548
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 2507
    :pswitch_1c44
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2509
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/DutchPostal;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/DutchPostal;-><init>()V

    .line 2511
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1c5b

    .line 2512
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2517
    :cond_1c5b
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadDutchPostal_Profile(Lcom/cipherlab/barcode/decoderparams/DutchPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 2518
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2519
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2521
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2522
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/DutchPostal;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 2485
    :pswitch_1c6c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2487
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1c7e

    .line 2488
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/DutchPostal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/DutchPostal;

    goto :goto_1c7f

    :cond_1c7e
    move-object p1, v3

    .line 2494
    :goto_1c7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1c8e

    .line 2495
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2500
    :cond_1c8e
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteDutchPostal_Profile(Lcom/cipherlab/barcode/decoderparams/DutchPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 2501
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2502
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 2461
    :pswitch_1c99
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2463
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/DataMatrix;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/DataMatrix;-><init>()V

    .line 2465
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1cb0

    .line 2466
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2471
    :cond_1cb0
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadDataMatrix_Profile(Lcom/cipherlab/barcode/decoderparams/DataMatrix;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 2472
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2473
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2475
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2476
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 2439
    :pswitch_1cc1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2441
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1cd3

    .line 2442
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/DataMatrix;

    goto :goto_1cd4

    :cond_1cd3
    move-object p1, v3

    .line 2448
    :goto_1cd4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1ce3

    .line 2449
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2454
    :cond_1ce3
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteDataMatrix_Profile(Lcom/cipherlab/barcode/decoderparams/DataMatrix;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 2455
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2456
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 2415
    :pswitch_1cee
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2417
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Composite;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Composite;-><init>()V

    .line 2419
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1d05

    .line 2420
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2425
    :cond_1d05
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadComposite_Profile(Lcom/cipherlab/barcode/decoderparams/Composite;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 2426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2427
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2429
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2430
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Composite;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 2393
    :pswitch_1d16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2395
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1d28

    .line 2396
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Composite;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Composite;

    goto :goto_1d29

    :cond_1d28
    move-object p1, v3

    .line 2402
    :goto_1d29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1d38

    .line 2403
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2408
    :cond_1d38
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteComposite_Profile(Lcom/cipherlab/barcode/decoderparams/Composite;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 2409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2410
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 2369
    :pswitch_1d43
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2371
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Code93;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Code93;-><init>()V

    .line 2373
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1d5a

    .line 2374
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2379
    :cond_1d5a
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadCode93_Profile(Lcom/cipherlab/barcode/decoderparams/Code93;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 2380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2381
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2383
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2384
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Code93;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 2347
    :pswitch_1d6b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2349
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1d7d

    .line 2350
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Code93;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Code93;

    goto :goto_1d7e

    :cond_1d7d
    move-object p1, v3

    .line 2356
    :goto_1d7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1d8d

    .line 2357
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2362
    :cond_1d8d
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteCode93_Profile(Lcom/cipherlab/barcode/decoderparams/Code93;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 2363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2364
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 2323
    :pswitch_1d98
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2325
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Code39;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Code39;-><init>()V

    .line 2327
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1daf

    .line 2328
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2333
    :cond_1daf
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadCode39_Profile(Lcom/cipherlab/barcode/decoderparams/Code39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 2334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2335
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2337
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2338
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Code39;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 2301
    :pswitch_1dc0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1dd2

    .line 2304
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Code39;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Code39;

    goto :goto_1dd3

    :cond_1dd2
    move-object p1, v3

    .line 2310
    :goto_1dd3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1de2

    .line 2311
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2316
    :cond_1de2
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteCode39_Profile(Lcom/cipherlab/barcode/decoderparams/Code39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 2317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2318
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 2277
    :pswitch_1ded
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2279
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Code128;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Code128;-><init>()V

    .line 2281
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1e04

    .line 2282
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2287
    :cond_1e04
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadCode128_Profile(Lcom/cipherlab/barcode/decoderparams/Code128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 2288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2289
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2291
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2292
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Code128;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 2255
    :pswitch_1e15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2257
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1e27

    .line 2258
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Code128;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Code128;

    goto :goto_1e28

    :cond_1e27
    move-object p1, v3

    .line 2264
    :goto_1e28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1e37

    .line 2265
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2270
    :cond_1e37
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteCode128_Profile(Lcom/cipherlab/barcode/decoderparams/Code128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 2271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2272
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 2231
    :pswitch_1e42
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2233
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Code11;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Code11;-><init>()V

    .line 2235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1e59

    .line 2236
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2241
    :cond_1e59
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadCode11_Profile(Lcom/cipherlab/barcode/decoderparams/Code11;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 2242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2243
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2245
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2246
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Code11;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 2209
    :pswitch_1e6a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1e7c

    .line 2212
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Code11;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Code11;

    goto :goto_1e7d

    :cond_1e7c
    move-object p1, v3

    .line 2218
    :goto_1e7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1e8c

    .line 2219
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2224
    :cond_1e8c
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteCode11_Profile(Lcom/cipherlab/barcode/decoderparams/Code11;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 2225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2226
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 2185
    :pswitch_1e97
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2187
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Codabar;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Codabar;-><init>()V

    .line 2189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1eae

    .line 2190
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2195
    :cond_1eae
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadCodabar_Profile(Lcom/cipherlab/barcode/decoderparams/Codabar;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 2196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2197
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2199
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2200
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Codabar;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 2163
    :pswitch_1ebf
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1ed1

    .line 2166
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Codabar;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Codabar;

    goto :goto_1ed2

    :cond_1ed1
    move-object p1, v3

    .line 2172
    :goto_1ed2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1ee1

    .line 2173
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2178
    :cond_1ee1
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteCodabar_Profile(Lcom/cipherlab/barcode/decoderparams/Codabar;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 2179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2180
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 2139
    :pswitch_1eec
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2141
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;-><init>()V

    .line 2143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1f03

    .line 2144
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2149
    :cond_1f03
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadChinese2Of5_Profile(Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 2150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2151
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2153
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2154
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 2117
    :pswitch_1f14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1f26

    .line 2120
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;

    goto :goto_1f27

    :cond_1f26
    move-object p1, v3

    .line 2126
    :goto_1f27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1f36

    .line 2127
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2132
    :cond_1f36
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteChinese2Of5_Profile(Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 2133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2134
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 2093
    :pswitch_1f41
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2095
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Aztec;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Aztec;-><init>()V

    .line 2097
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1f58

    .line 2098
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2103
    :cond_1f58
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadAztec_Profile(Lcom/cipherlab/barcode/decoderparams/Aztec;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 2104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2105
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2107
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2108
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Aztec;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 2071
    :pswitch_1f69
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2073
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1f7b

    .line 2074
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Aztec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Aztec;

    goto :goto_1f7c

    :cond_1f7b
    move-object p1, v3

    .line 2080
    :goto_1f7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1f8b

    .line 2081
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2086
    :cond_1f8b
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteAztec_Profile(Lcom/cipherlab/barcode/decoderparams/Aztec;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 2087
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2088
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 2047
    :pswitch_1f96
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2049
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;-><init>()V

    .line 2051
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1fad

    .line 2052
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2057
    :cond_1fad
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadAustralianPostal_Profile(Lcom/cipherlab/barcode/decoderparams/AustralianPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 2058
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2059
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2061
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2062
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 2025
    :pswitch_1fbe
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2027
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1fd0

    .line 2028
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;

    goto :goto_1fd1

    :cond_1fd0
    move-object p1, v3

    .line 2034
    :goto_1fd1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1fe0

    .line 2035
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2040
    :cond_1fe0
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteAustralianPostal_Profile(Lcom/cipherlab/barcode/decoderparams/AustralianPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 2041
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2042
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 2001
    :pswitch_1feb
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2003
    new-instance p1, Lcom/cipherlab/barcode/decoder/Decoders;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoder/Decoders;-><init>()V

    .line 2005
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2002

    .line 2006
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 2011
    :cond_2002
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadDecodersSettings_Profile(Lcom/cipherlab/barcode/decoder/Decoders;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 2012
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2013
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2015
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2016
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoder/Decoders;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 1979
    :pswitch_2013
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1981
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2025

    .line 1982
    sget-object p1, Lcom/cipherlab/barcode/decoder/Decoders;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoder/Decoders;

    goto :goto_2026

    :cond_2025
    move-object p1, v3

    .line 1988
    :goto_2026
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2035

    .line 1989
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 1994
    :cond_2035
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteDecodersSettings_Profile(Lcom/cipherlab/barcode/decoder/Decoders;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 1995
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1996
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1955
    :pswitch_2040
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1957
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/UserPreference;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/UserPreference;-><init>()V

    .line 1959
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2057

    .line 1960
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 1965
    :cond_2057
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadUserPreferenceSettings_Profile(Lcom/cipherlab/barcode/decoderparams/UserPreference;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 1966
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1967
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1969
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1970
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/UserPreference;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 1933
    :pswitch_2068
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1935
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_207a

    .line 1936
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/UserPreference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/UserPreference;

    goto :goto_207b

    :cond_207a
    move-object p1, v3

    .line 1942
    :goto_207b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_208a

    .line 1943
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 1948
    :cond_208a
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteUserPreferenceSettings_Profile(Lcom/cipherlab/barcode/decoderparams/UserPreference;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 1949
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1950
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1909
    :pswitch_2095
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1911
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;-><init>()V

    .line 1913
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_20ac

    .line 1914
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 1919
    :cond_20ac
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadOutputSettings_Profile(Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 1920
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1921
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1923
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1924
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 1887
    :pswitch_20bd
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1889
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_20cf

    .line 1890
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;

    goto :goto_20d0

    :cond_20cf
    move-object p1, v3

    .line 1896
    :goto_20d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_20df

    .line 1897
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 1902
    :cond_20df
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteOutputSettings_Profile(Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 1903
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1904
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1863
    :pswitch_20ea
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1865
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/NotificationParams;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/NotificationParams;-><init>()V

    .line 1867
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2101

    .line 1868
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 1873
    :cond_2101
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadNotificationSettings_Profile(Lcom/cipherlab/barcode/decoderparams/NotificationParams;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p2

    .line 1874
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1875
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1877
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1878
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/NotificationParams;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 1841
    :pswitch_2112
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1843
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2124

    .line 1844
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/NotificationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/NotificationParams;

    goto :goto_2125

    :cond_2124
    move-object p1, v3

    .line 1850
    :goto_2125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2134

    .line 1851
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 1856
    :cond_2134
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteNotificationSettings_Profile(Lcom/cipherlab/barcode/decoderparams/NotificationParams;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 1857
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1858
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1826
    :pswitch_213f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1828
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2151

    .line 1829
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 1834
    :cond_2151
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ResetToDefault_Profile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 1835
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1836
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1811
    :pswitch_215c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1813
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_216e

    .line 1814
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 1819
    :cond_216e
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->GetReaderActive_Profile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Z

    move-result p1

    .line 1820
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1821
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1795
    :pswitch_2179
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1797
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2183

    const/4 v0, 0x1

    .line 1799
    :cond_2183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2192

    .line 1800
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 1805
    :cond_2192
    invoke-virtual {p0, v0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->SetReaderActive_Profile(ZLcom/cipherlab/barcode/decoderparams/ReaderProfile;)V

    .line 1806
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 1773
    :pswitch_2199
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1775
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_21ab

    .line 1776
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    goto :goto_21ac

    :cond_21ab
    move-object p1, v3

    .line 1782
    :goto_21ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_21bb

    .line 1783
    sget-object p4, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 1788
    :cond_21bb
    invoke-virtual {p0, p1, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->CopyProfile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 1789
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1790
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1758
    :pswitch_21c6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1760
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_21d8

    .line 1761
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 1766
    :cond_21d8
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->RemoveProfile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 1767
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1768
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1743
    :pswitch_21e3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1745
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_21f5

    .line 1746
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 1751
    :cond_21f5
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->UpdateProfile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 1752
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1753
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1735
    :pswitch_2200
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1736
    invoke-virtual {p0}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->GetProfileList()Ljava/util/List;

    move-result-object p1

    .line 1737
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1738
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    .line 1720
    :pswitch_220e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1722
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2220

    .line 1723
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;

    .line 1728
    :cond_2220
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->CreateProfileEx(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 1729
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1730
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1703
    :pswitch_222b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1705
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/MRZ;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/MRZ;-><init>()V

    .line 1706
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadMRZ(Lcom/cipherlab/barcode/decoderparams/MRZ;)I

    move-result p2

    .line 1707
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1708
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1710
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1711
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/MRZ;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 1688
    :pswitch_2244
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1690
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2256

    .line 1691
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/MRZ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/MRZ;

    .line 1696
    :cond_2256
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteMRZ(Lcom/cipherlab/barcode/decoderparams/MRZ;)I

    move-result p1

    .line 1697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1698
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1671
    :pswitch_2261
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1673
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;-><init>()V

    .line 1674
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadFrenchPharmacode(Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;)I

    move-result p2

    .line 1675
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1676
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1678
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1679
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 1656
    :pswitch_227a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1658
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_228c

    .line 1659
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;

    .line 1664
    :cond_228c
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteFrenchPharmacode(Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;)I

    move-result p1

    .line 1665
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1666
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1639
    :pswitch_2297
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1641
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Hanxin;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Hanxin;-><init>()V

    .line 1642
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadHanxin(Lcom/cipherlab/barcode/decoderparams/Hanxin;)I

    move-result p2

    .line 1643
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1644
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1646
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1647
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Hanxin;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 1624
    :pswitch_22b0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1626
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_22c2

    .line 1627
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Hanxin;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Hanxin;

    .line 1632
    :cond_22c2
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteHanxin(Lcom/cipherlab/barcode/decoderparams/Hanxin;)I

    move-result p1

    .line 1633
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1634
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1607
    :pswitch_22cd
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1609
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Laetus;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Laetus;-><init>()V

    .line 1610
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadLaetus(Lcom/cipherlab/barcode/decoderparams/Laetus;)I

    move-result p2

    .line 1611
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1612
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1614
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1615
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Laetus;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 1592
    :pswitch_22e6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1594
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_22f8

    .line 1595
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Laetus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Laetus;

    .line 1600
    :cond_22f8
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteLaetus(Lcom/cipherlab/barcode/decoderparams/Laetus;)I

    move-result p1

    .line 1601
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1602
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1575
    :pswitch_2303
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1577
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Cip39;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Cip39;-><init>()V

    .line 1578
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadCip39(Lcom/cipherlab/barcode/decoderparams/Cip39;)I

    move-result p2

    .line 1579
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1580
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1582
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1583
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Cip39;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 1560
    :pswitch_231c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1562
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_232e

    .line 1563
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Cip39;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Cip39;

    .line 1568
    :cond_232e
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteCip39(Lcom/cipherlab/barcode/decoderparams/Cip39;)I

    move-result p1

    .line 1569
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1570
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1546
    :pswitch_2339
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1548
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1550
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1552
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_234b

    const/4 v0, 0x1

    .line 1553
    :cond_234b
    invoke-virtual {p0, p1, p4, v0}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->CreateProfile(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    .line 1554
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1555
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1538
    :pswitch_2356
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1539
    invoke-virtual {p0}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ResetToPorfileDefault()I

    move-result p1

    .line 1540
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1541
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1530
    :pswitch_2364
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1531
    invoke-virtual {p0}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->GetScannerVersion()Ljava/lang/String;

    move-result-object p1

    .line 1532
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1533
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 1522
    :pswitch_2372
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1523
    invoke-virtual {p0}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->GetLastError()Ljava/lang/String;

    move-result-object p1

    .line 1524
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1525
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 1514
    :pswitch_2380
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1515
    invoke-virtual {p0}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->GetReaderCallbackState()Z

    move-result p1

    .line 1516
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1517
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1505
    :pswitch_238e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1507
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2398

    const/4 v0, 0x1

    .line 1508
    :cond_2398
    invoke-virtual {p0, v0}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->SetReaderCallback(Z)V

    .line 1509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 1488
    :pswitch_239f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1490
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Telepen;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Telepen;-><init>()V

    .line 1491
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadTelepen(Lcom/cipherlab/barcode/decoderparams/Telepen;)I

    move-result p2

    .line 1492
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1493
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1495
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1496
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Telepen;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 1473
    :pswitch_23b8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1475
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_23ca

    .line 1476
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Telepen;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Telepen;

    .line 1481
    :cond_23ca
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteTelepen(Lcom/cipherlab/barcode/decoderparams/Telepen;)I

    move-result p1

    .line 1482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1483
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1456
    :pswitch_23d5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1458
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Plessey;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Plessey;-><init>()V

    .line 1459
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadPlessey(Lcom/cipherlab/barcode/decoderparams/Plessey;)I

    move-result p2

    .line 1460
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1461
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1463
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1464
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Plessey;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 1441
    :pswitch_23ee
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1443
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2400

    .line 1444
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Plessey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Plessey;

    .line 1449
    :cond_2400
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WritePlessey(Lcom/cipherlab/barcode/decoderparams/Plessey;)I

    move-result p1

    .line 1450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1451
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1433
    :pswitch_240b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1434
    invoke-virtual {p0}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->GetServiceVersion()Ljava/lang/String;

    move-result-object p1

    .line 1435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1436
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 1416
    :pswitch_2419
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1418
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/USPSPostal;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/USPSPostal;-><init>()V

    .line 1419
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadUSPSPostal(Lcom/cipherlab/barcode/decoderparams/USPSPostal;)I

    move-result p2

    .line 1420
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1421
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1423
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1424
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/USPSPostal;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 1401
    :pswitch_2432
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1403
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2444

    .line 1404
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/USPSPostal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/USPSPostal;

    .line 1409
    :cond_2444
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteUSPSPostal(Lcom/cipherlab/barcode/decoderparams/USPSPostal;)I

    move-result p1

    .line 1410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1411
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1384
    :pswitch_244f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1386
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/USPostal;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/USPostal;-><init>()V

    .line 1387
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadUSPostal(Lcom/cipherlab/barcode/decoderparams/USPostal;)I

    move-result p2

    .line 1388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1389
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1391
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1392
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/USPostal;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 1369
    :pswitch_2468
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1371
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_247a

    .line 1372
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/USPostal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/USPostal;

    .line 1377
    :cond_247a
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteUSPostal(Lcom/cipherlab/barcode/decoderparams/USPostal;)I

    move-result p1

    .line 1378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1379
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1352
    :pswitch_2485
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1354
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;-><init>()V

    .line 1355
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadUPUFICSPostal(Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;)I

    move-result p2

    .line 1356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1357
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1359
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1360
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 1337
    :pswitch_249e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1339
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_24b0

    .line 1340
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;

    .line 1345
    :cond_24b0
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteUPUFICSPostal(Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;)I

    move-result p1

    .line 1346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1347
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1320
    :pswitch_24bb
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1322
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/UpcE1;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/UpcE1;-><init>()V

    .line 1323
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadUpcE1(Lcom/cipherlab/barcode/decoderparams/UpcE1;)I

    move-result p2

    .line 1324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1325
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1327
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1328
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/UpcE1;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 1305
    :pswitch_24d4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1307
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_24e6

    .line 1308
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/UpcE1;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/UpcE1;

    .line 1313
    :cond_24e6
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteUpcE1(Lcom/cipherlab/barcode/decoderparams/UpcE1;)I

    move-result p1

    .line 1314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1315
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1288
    :pswitch_24f1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1290
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/UpcE;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/UpcE;-><init>()V

    .line 1291
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadUpcE(Lcom/cipherlab/barcode/decoderparams/UpcE;)I

    move-result p2

    .line 1292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1293
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1295
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1296
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/UpcE;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 1273
    :pswitch_250a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_251c

    .line 1276
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/UpcE;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/UpcE;

    .line 1281
    :cond_251c
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteUpcE(Lcom/cipherlab/barcode/decoderparams/UpcE;)I

    move-result p1

    .line 1282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1283
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1256
    :pswitch_2527
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1258
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/UpcA;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/UpcA;-><init>()V

    .line 1259
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadUpcA(Lcom/cipherlab/barcode/decoderparams/UpcA;)I

    move-result p2

    .line 1260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1261
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1263
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1264
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/UpcA;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 1241
    :pswitch_2540
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2552

    .line 1244
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/UpcA;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/UpcA;

    .line 1249
    :cond_2552
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteUpcA(Lcom/cipherlab/barcode/decoderparams/UpcA;)I

    move-result p1

    .line 1250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1251
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1224
    :pswitch_255d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1226
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/UKPostal;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/UKPostal;-><init>()V

    .line 1227
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadUKPostal(Lcom/cipherlab/barcode/decoderparams/UKPostal;)I

    move-result p2

    .line 1228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1229
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1231
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1232
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/UKPostal;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 1209
    :pswitch_2576
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2588

    .line 1212
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/UKPostal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/UKPostal;

    .line 1217
    :cond_2588
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteUKPostal(Lcom/cipherlab/barcode/decoderparams/UKPostal;)I

    move-result p1

    .line 1218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1219
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1192
    :pswitch_2593
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1194
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/UccCoupon;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/UccCoupon;-><init>()V

    .line 1195
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadUccCoupon(Lcom/cipherlab/barcode/decoderparams/UccCoupon;)I

    move-result p2

    .line 1196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1197
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1199
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1200
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/UccCoupon;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 1177
    :pswitch_25ac
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_25be

    .line 1180
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/UccCoupon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/UccCoupon;

    .line 1185
    :cond_25be
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteUccCoupon(Lcom/cipherlab/barcode/decoderparams/UccCoupon;)I

    move-result p1

    .line 1186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1187
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1160
    :pswitch_25c9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1162
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/TriopticCode39;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/TriopticCode39;-><init>()V

    .line 1163
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadTriopticCode39(Lcom/cipherlab/barcode/decoderparams/TriopticCode39;)I

    move-result p2

    .line 1164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1165
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1167
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1168
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/TriopticCode39;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 1145
    :pswitch_25e2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_25f4

    .line 1148
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/TriopticCode39;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/TriopticCode39;

    .line 1153
    :cond_25f4
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteTriopticCode39(Lcom/cipherlab/barcode/decoderparams/TriopticCode39;)I

    move-result p1

    .line 1154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1155
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1128
    :pswitch_25ff
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1130
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/QRCode;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/QRCode;-><init>()V

    .line 1131
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadQRCode(Lcom/cipherlab/barcode/decoderparams/QRCode;)I

    move-result p2

    .line 1132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1133
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1135
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1136
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/QRCode;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 1113
    :pswitch_2618
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_262a

    .line 1116
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/QRCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/QRCode;

    .line 1121
    :cond_262a
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteQRCode(Lcom/cipherlab/barcode/decoderparams/QRCode;)I

    move-result p1

    .line 1122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1123
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1096
    :pswitch_2635
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1098
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/PDF417;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/PDF417;-><init>()V

    .line 1099
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadPDF417(Lcom/cipherlab/barcode/decoderparams/PDF417;)I

    move-result p2

    .line 1100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1101
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1103
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1104
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/PDF417;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 1081
    :pswitch_264e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2660

    .line 1084
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/PDF417;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/PDF417;

    .line 1089
    :cond_2660
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WritePDF417(Lcom/cipherlab/barcode/decoderparams/PDF417;)I

    move-result p1

    .line 1090
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1091
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1064
    :pswitch_266b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1066
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Msi;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Msi;-><init>()V

    .line 1067
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadMsi(Lcom/cipherlab/barcode/decoderparams/Msi;)I

    move-result p2

    .line 1068
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1069
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1071
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1072
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Msi;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 1049
    :pswitch_2684
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2696

    .line 1052
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Msi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Msi;

    .line 1057
    :cond_2696
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteMsi(Lcom/cipherlab/barcode/decoderparams/Msi;)I

    move-result p1

    .line 1058
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1032
    :pswitch_26a1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1034
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/MicroQR;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/MicroQR;-><init>()V

    .line 1035
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadMicroQR(Lcom/cipherlab/barcode/decoderparams/MicroQR;)I

    move-result p2

    .line 1036
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1037
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1039
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1040
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/MicroQR;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 1017
    :pswitch_26ba
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_26cc

    .line 1020
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/MicroQR;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/MicroQR;

    .line 1025
    :cond_26cc
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteMicroQR(Lcom/cipherlab/barcode/decoderparams/MicroQR;)I

    move-result p1

    .line 1026
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 1000
    :pswitch_26d7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1002
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/MicroPDF417;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/MicroPDF417;-><init>()V

    .line 1003
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadMicroPDF417(Lcom/cipherlab/barcode/decoderparams/MicroPDF417;)I

    move-result p2

    .line 1004
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1005
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1007
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1008
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/MicroPDF417;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 985
    :pswitch_26f0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 987
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2702

    .line 988
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/MicroPDF417;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/MicroPDF417;

    .line 993
    :cond_2702
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteMicroPDF417(Lcom/cipherlab/barcode/decoderparams/MicroPDF417;)I

    move-result p1

    .line 994
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 995
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 968
    :pswitch_270d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 970
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/MaxiCode;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/MaxiCode;-><init>()V

    .line 971
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadMaxiCode(Lcom/cipherlab/barcode/decoderparams/MaxiCode;)I

    move-result p2

    .line 972
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 973
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 975
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 976
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/MaxiCode;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 953
    :pswitch_2726
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 955
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2738

    .line 956
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/MaxiCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/MaxiCode;

    .line 961
    :cond_2738
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteMaxiCode(Lcom/cipherlab/barcode/decoderparams/MaxiCode;)I

    move-result p1

    .line 962
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 963
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 936
    :pswitch_2743
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 938
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;-><init>()V

    .line 939
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadMatrix2Of5(Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;)I

    move-result p2

    .line 940
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 941
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 943
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 944
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 921
    :pswitch_275c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 923
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_276e

    .line 924
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;

    .line 929
    :cond_276e
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteMatrix2Of5(Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;)I

    move-result p1

    .line 930
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 931
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 904
    :pswitch_2779
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 906
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Korean3Of5;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Korean3Of5;-><init>()V

    .line 907
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadKorean3Of5(Lcom/cipherlab/barcode/decoderparams/Korean3Of5;)I

    move-result p2

    .line 908
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 909
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 911
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 912
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Korean3Of5;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 889
    :pswitch_2792
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 891
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_27a4

    .line 892
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Korean3Of5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Korean3Of5;

    .line 897
    :cond_27a4
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteKorean3Of5(Lcom/cipherlab/barcode/decoderparams/Korean3Of5;)I

    move-result p1

    .line 898
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 872
    :pswitch_27af
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 874
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/JapanPostal;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/JapanPostal;-><init>()V

    .line 875
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadJapanPostal(Lcom/cipherlab/barcode/decoderparams/JapanPostal;)I

    move-result p2

    .line 876
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 879
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 880
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/JapanPostal;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 857
    :pswitch_27c8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 859
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_27da

    .line 860
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/JapanPostal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/JapanPostal;

    .line 865
    :cond_27da
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteJapanPostal(Lcom/cipherlab/barcode/decoderparams/JapanPostal;)I

    move-result p1

    .line 866
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 840
    :pswitch_27e5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/ISBT128;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/ISBT128;-><init>()V

    .line 843
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadISBT128(Lcom/cipherlab/barcode/decoderparams/ISBT128;)I

    move-result p2

    .line 844
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 847
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 848
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/ISBT128;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 825
    :pswitch_27fe
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2810

    .line 828
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ISBT128;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ISBT128;

    .line 833
    :cond_2810
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteISBT128(Lcom/cipherlab/barcode/decoderparams/ISBT128;)I

    move-result p1

    .line 834
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 808
    :pswitch_281b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 810
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;-><init>()V

    .line 811
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadInterleaved2Of5(Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;)I

    move-result p2

    .line 812
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 816
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 793
    :pswitch_2834
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2846

    .line 796
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;

    .line 801
    :cond_2846
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteInterleaved2Of5(Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;)I

    move-result p1

    .line 802
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 803
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 776
    :pswitch_2851
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 778
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;-><init>()V

    .line 779
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadIndustrial2Of5(Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;)I

    move-result p2

    .line 780
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 783
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 784
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 761
    :pswitch_286a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 763
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_287c

    .line 764
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;

    .line 769
    :cond_287c
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteIndustrial2Of5(Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;)I

    move-result p1

    .line 770
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 744
    :pswitch_2887
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;-><init>()V

    .line 747
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadGS1DataBarLimited(Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;)I

    move-result p2

    .line 748
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 752
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 729
    :pswitch_28a0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 731
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_28b2

    .line 732
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;

    .line 737
    :cond_28b2
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteGS1DataBarLimited(Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;)I

    move-result p1

    .line 738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 712
    :pswitch_28bd
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 714
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;-><init>()V

    .line 715
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadGS1DataBarExpanded(Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;)I

    move-result p2

    .line 716
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 719
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 720
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 697
    :pswitch_28d6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_28e8

    .line 700
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;

    .line 705
    :cond_28e8
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteGS1DataBarExpanded(Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;)I

    move-result p1

    .line 706
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 680
    :pswitch_28f3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;-><init>()V

    .line 683
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadGS1DataBar14(Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;)I

    move-result p2

    .line 684
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 665
    :pswitch_290c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_291e

    .line 668
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;

    .line 673
    :cond_291e
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteGS1DataBar14(Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;)I

    move-result p1

    .line 674
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 648
    :pswitch_2929
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/GS1128;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/GS1128;-><init>()V

    .line 651
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadGS1128(Lcom/cipherlab/barcode/decoderparams/GS1128;)I

    move-result p2

    .line 652
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 655
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 656
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/GS1128;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 633
    :pswitch_2942
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2954

    .line 636
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/GS1128;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/GS1128;

    .line 641
    :cond_2954
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteGS1128(Lcom/cipherlab/barcode/decoderparams/GS1128;)I

    move-result p1

    .line 642
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 616
    :pswitch_295f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Ean8;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Ean8;-><init>()V

    .line 619
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadEan8(Lcom/cipherlab/barcode/decoderparams/Ean8;)I

    move-result p2

    .line 620
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 624
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Ean8;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 601
    :pswitch_2978
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_298a

    .line 604
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Ean8;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Ean8;

    .line 609
    :cond_298a
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteEan8(Lcom/cipherlab/barcode/decoderparams/Ean8;)I

    move-result p1

    .line 610
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 584
    :pswitch_2995
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Ean13;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Ean13;-><init>()V

    .line 587
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadEan13(Lcom/cipherlab/barcode/decoderparams/Ean13;)I

    move-result p2

    .line 588
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 592
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Ean13;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 569
    :pswitch_29ae
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_29c0

    .line 572
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Ean13;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Ean13;

    .line 577
    :cond_29c0
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteEan13(Lcom/cipherlab/barcode/decoderparams/Ean13;)I

    move-result p1

    .line 578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 552
    :pswitch_29cb
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/DutchPostal;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/DutchPostal;-><init>()V

    .line 555
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadDutchPostal(Lcom/cipherlab/barcode/decoderparams/DutchPostal;)I

    move-result p2

    .line 556
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 560
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/DutchPostal;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 537
    :pswitch_29e4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_29f6

    .line 540
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/DutchPostal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/DutchPostal;

    .line 545
    :cond_29f6
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteDutchPostal(Lcom/cipherlab/barcode/decoderparams/DutchPostal;)I

    move-result p1

    .line 546
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 520
    :pswitch_2a01
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/DataMatrix;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/DataMatrix;-><init>()V

    .line 523
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadDataMatrix(Lcom/cipherlab/barcode/decoderparams/DataMatrix;)I

    move-result p2

    .line 524
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 505
    :pswitch_2a1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2a2c

    .line 508
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/DataMatrix;

    .line 513
    :cond_2a2c
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteDataMatrix(Lcom/cipherlab/barcode/decoderparams/DataMatrix;)I

    move-result p1

    .line 514
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 488
    :pswitch_2a37
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Composite;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Composite;-><init>()V

    .line 491
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadComposite(Lcom/cipherlab/barcode/decoderparams/Composite;)I

    move-result p2

    .line 492
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Composite;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 473
    :pswitch_2a50
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2a62

    .line 476
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Composite;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Composite;

    .line 481
    :cond_2a62
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteComposite(Lcom/cipherlab/barcode/decoderparams/Composite;)I

    move-result p1

    .line 482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 456
    :pswitch_2a6d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Code93;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Code93;-><init>()V

    .line 459
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadCode93(Lcom/cipherlab/barcode/decoderparams/Code93;)I

    move-result p2

    .line 460
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Code93;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 441
    :pswitch_2a86
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2a98

    .line 444
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Code93;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Code93;

    .line 449
    :cond_2a98
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteCode93(Lcom/cipherlab/barcode/decoderparams/Code93;)I

    move-result p1

    .line 450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 424
    :pswitch_2aa3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Code39;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Code39;-><init>()V

    .line 427
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadCode39(Lcom/cipherlab/barcode/decoderparams/Code39;)I

    move-result p2

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Code39;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 409
    :pswitch_2abc
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2ace

    .line 412
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Code39;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Code39;

    .line 417
    :cond_2ace
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteCode39(Lcom/cipherlab/barcode/decoderparams/Code39;)I

    move-result p1

    .line 418
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 392
    :pswitch_2ad9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Code128;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Code128;-><init>()V

    .line 395
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadCode128(Lcom/cipherlab/barcode/decoderparams/Code128;)I

    move-result p2

    .line 396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Code128;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 377
    :pswitch_2af2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2b04

    .line 380
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Code128;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Code128;

    .line 385
    :cond_2b04
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteCode128(Lcom/cipherlab/barcode/decoderparams/Code128;)I

    move-result p1

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 360
    :pswitch_2b0f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Code11;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Code11;-><init>()V

    .line 363
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadCode11(Lcom/cipherlab/barcode/decoderparams/Code11;)I

    move-result p2

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Code11;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 345
    :pswitch_2b28
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2b3a

    .line 348
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Code11;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Code11;

    .line 353
    :cond_2b3a
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteCode11(Lcom/cipherlab/barcode/decoderparams/Code11;)I

    move-result p1

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 328
    :pswitch_2b45
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Codabar;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Codabar;-><init>()V

    .line 331
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadCodabar(Lcom/cipherlab/barcode/decoderparams/Codabar;)I

    move-result p2

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Codabar;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 313
    :pswitch_2b5e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2b70

    .line 316
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Codabar;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Codabar;

    .line 321
    :cond_2b70
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteCodabar(Lcom/cipherlab/barcode/decoderparams/Codabar;)I

    move-result p1

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 296
    :pswitch_2b7b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;-><init>()V

    .line 299
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadChinese2Of5(Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;)I

    move-result p2

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 281
    :pswitch_2b94
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2ba6

    .line 284
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;

    .line 289
    :cond_2ba6
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteChinese2Of5(Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;)I

    move-result p1

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 264
    :pswitch_2bb1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/Aztec;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/Aztec;-><init>()V

    .line 267
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadAztec(Lcom/cipherlab/barcode/decoderparams/Aztec;)I

    move-result p2

    .line 268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/Aztec;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 249
    :pswitch_2bca
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2bdc

    .line 252
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/Aztec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/Aztec;

    .line 257
    :cond_2bdc
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteAztec(Lcom/cipherlab/barcode/decoderparams/Aztec;)I

    move-result p1

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 232
    :pswitch_2be7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;-><init>()V

    .line 235
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadAustralianPostal(Lcom/cipherlab/barcode/decoderparams/AustralianPostal;)I

    move-result p2

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 217
    :pswitch_2c00
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2c12

    .line 220
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;

    .line 225
    :cond_2c12
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteAustralianPostal(Lcom/cipherlab/barcode/decoderparams/AustralianPostal;)I

    move-result p1

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 209
    :pswitch_2c1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ResetToDefault()I

    move-result p1

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 192
    :pswitch_2c2b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/UserPreference;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/UserPreference;-><init>()V

    .line 195
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadUserPreferenceSettings(Lcom/cipherlab/barcode/decoderparams/UserPreference;)I

    move-result p2

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/UserPreference;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 177
    :pswitch_2c44
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2c56

    .line 180
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/UserPreference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/UserPreference;

    .line 185
    :cond_2c56
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteUserPreferenceSettings(Lcom/cipherlab/barcode/decoderparams/UserPreference;)I

    move-result p1

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 160
    :pswitch_2c61
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    new-instance p1, Lcom/cipherlab/barcode/decoder/Decoders;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoder/Decoders;-><init>()V

    .line 163
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadDecodersSettings(Lcom/cipherlab/barcode/decoder/Decoders;)I

    move-result p2

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoder/Decoders;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 145
    :pswitch_2c7a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2c8c

    .line 148
    sget-object p1, Lcom/cipherlab/barcode/decoder/Decoders;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoder/Decoders;

    .line 153
    :cond_2c8c
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteDecodersSettings(Lcom/cipherlab/barcode/decoder/Decoders;)I

    move-result p1

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 137
    :pswitch_2c97
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->GetScannerType()I

    move-result p1

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 128
    :pswitch_2ca5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2caf

    const/4 v0, 0x1

    .line 131
    :cond_2caf
    invoke-virtual {p0, v0}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->SetSoftwareTriggerBool(Z)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 111
    :pswitch_2cb6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;-><init>()V

    .line 114
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadOutputSettings(Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;)I

    move-result p2

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 96
    :pswitch_2ccf
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2ce1

    .line 99
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;

    .line 104
    :cond_2ce1
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteOutputSettings(Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;)I

    move-result p1

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 88
    :pswitch_2cec
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->GetReaderActive()Z

    move-result p1

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 79
    :pswitch_2cfa
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2d04

    const/4 v0, 0x1

    .line 82
    :cond_2d04
    invoke-virtual {p0, v0}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->SetReaderActive(Z)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 62
    :pswitch_2d0b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    new-instance p1, Lcom/cipherlab/barcode/decoderparams/NotificationParams;

    invoke-direct {p1}, Lcom/cipherlab/barcode/decoderparams/NotificationParams;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->ReadNotificationSettings(Lcom/cipherlab/barcode/decoderparams/NotificationParams;)I

    move-result p2

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    invoke-virtual {p1, p3, v2}, Lcom/cipherlab/barcode/decoderparams/NotificationParams;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 47
    :pswitch_2d24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2d36

    .line 50
    sget-object p1, Lcom/cipherlab/barcode/decoderparams/NotificationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/cipherlab/barcode/decoderparams/NotificationParams;

    .line 55
    :cond_2d36
    invoke-virtual {p0, v3}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;->WriteNotificationSettings(Lcom/cipherlab/barcode/decoderparams/NotificationParams;)I

    move-result p1

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 42
    :cond_2d41
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_2d46
    .packed-switch 0x1
        :pswitch_2d24
        :pswitch_2d0b
        :pswitch_2cfa
        :pswitch_2cec
        :pswitch_2ccf
        :pswitch_2cb6
        :pswitch_2ca5
        :pswitch_2c97
        :pswitch_2c7a
        :pswitch_2c61
        :pswitch_2c44
        :pswitch_2c2b
        :pswitch_2c1d
        :pswitch_2c00
        :pswitch_2be7
        :pswitch_2bca
        :pswitch_2bb1
        :pswitch_2b94
        :pswitch_2b7b
        :pswitch_2b5e
        :pswitch_2b45
        :pswitch_2b28
        :pswitch_2b0f
        :pswitch_2af2
        :pswitch_2ad9
        :pswitch_2abc
        :pswitch_2aa3
        :pswitch_2a86
        :pswitch_2a6d
        :pswitch_2a50
        :pswitch_2a37
        :pswitch_2a1a
        :pswitch_2a01
        :pswitch_29e4
        :pswitch_29cb
        :pswitch_29ae
        :pswitch_2995
        :pswitch_2978
        :pswitch_295f
        :pswitch_2942
        :pswitch_2929
        :pswitch_290c
        :pswitch_28f3
        :pswitch_28d6
        :pswitch_28bd
        :pswitch_28a0
        :pswitch_2887
        :pswitch_286a
        :pswitch_2851
        :pswitch_2834
        :pswitch_281b
        :pswitch_27fe
        :pswitch_27e5
        :pswitch_27c8
        :pswitch_27af
        :pswitch_2792
        :pswitch_2779
        :pswitch_275c
        :pswitch_2743
        :pswitch_2726
        :pswitch_270d
        :pswitch_26f0
        :pswitch_26d7
        :pswitch_26ba
        :pswitch_26a1
        :pswitch_2684
        :pswitch_266b
        :pswitch_264e
        :pswitch_2635
        :pswitch_2618
        :pswitch_25ff
        :pswitch_25e2
        :pswitch_25c9
        :pswitch_25ac
        :pswitch_2593
        :pswitch_2576
        :pswitch_255d
        :pswitch_2540
        :pswitch_2527
        :pswitch_250a
        :pswitch_24f1
        :pswitch_24d4
        :pswitch_24bb
        :pswitch_249e
        :pswitch_2485
        :pswitch_2468
        :pswitch_244f
        :pswitch_2432
        :pswitch_2419
        :pswitch_240b
        :pswitch_23ee
        :pswitch_23d5
        :pswitch_23b8
        :pswitch_239f
        :pswitch_238e
        :pswitch_2380
        :pswitch_2372
        :pswitch_2364
        :pswitch_2356
        :pswitch_2339
        :pswitch_231c
        :pswitch_2303
        :pswitch_22e6
        :pswitch_22cd
        :pswitch_22b0
        :pswitch_2297
        :pswitch_227a
        :pswitch_2261
        :pswitch_2244
        :pswitch_222b
        :pswitch_220e
        :pswitch_2200
        :pswitch_21e3
        :pswitch_21c6
        :pswitch_2199
        :pswitch_2179
        :pswitch_215c
        :pswitch_213f
        :pswitch_2112
        :pswitch_20ea
        :pswitch_20bd
        :pswitch_2095
        :pswitch_2068
        :pswitch_2040
        :pswitch_2013
        :pswitch_1feb
        :pswitch_1fbe
        :pswitch_1f96
        :pswitch_1f69
        :pswitch_1f41
        :pswitch_1f14
        :pswitch_1eec
        :pswitch_1ebf
        :pswitch_1e97
        :pswitch_1e6a
        :pswitch_1e42
        :pswitch_1e15
        :pswitch_1ded
        :pswitch_1dc0
        :pswitch_1d98
        :pswitch_1d6b
        :pswitch_1d43
        :pswitch_1d16
        :pswitch_1cee
        :pswitch_1cc1
        :pswitch_1c99
        :pswitch_1c6c
        :pswitch_1c44
        :pswitch_1c17
        :pswitch_1bef
        :pswitch_1bc2
        :pswitch_1b9a
        :pswitch_1b6d
        :pswitch_1b45
        :pswitch_1b18
        :pswitch_1af0
        :pswitch_1ac3
        :pswitch_1a9b
        :pswitch_1a6e
        :pswitch_1a46
        :pswitch_1a19
        :pswitch_19f1
        :pswitch_19c4
        :pswitch_199c
        :pswitch_196f
        :pswitch_1947
        :pswitch_191a
        :pswitch_18f2
        :pswitch_18c5
        :pswitch_189d
        :pswitch_1870
        :pswitch_1848
        :pswitch_181b
        :pswitch_17f3
        :pswitch_17c6
        :pswitch_179e
        :pswitch_1771
        :pswitch_1749
        :pswitch_171c
        :pswitch_16f4
        :pswitch_16c7
        :pswitch_169f
        :pswitch_1672
        :pswitch_164a
        :pswitch_161d
        :pswitch_15f5
        :pswitch_15c8
        :pswitch_15a0
        :pswitch_1573
        :pswitch_154b
        :pswitch_151e
        :pswitch_14f6
        :pswitch_14c9
        :pswitch_14a1
        :pswitch_1474
        :pswitch_144c
        :pswitch_141f
        :pswitch_13f7
        :pswitch_13ca
        :pswitch_13a2
        :pswitch_1375
        :pswitch_134d
        :pswitch_1320
        :pswitch_12f8
        :pswitch_12cb
        :pswitch_12a3
        :pswitch_1276
        :pswitch_124e
        :pswitch_1221
        :pswitch_11f9
        :pswitch_11cc
        :pswitch_11a4
        :pswitch_1177
        :pswitch_114f
        :pswitch_1122
        :pswitch_10fa
        :pswitch_10f0
        :pswitch_10e2
        :pswitch_10b5
        :pswitch_108d
        :pswitch_1060
        :pswitch_1038
        :pswitch_100b
        :pswitch_fe3
        :pswitch_fb6
        :pswitch_f8e
        :pswitch_f61
        :pswitch_f39
        :pswitch_f0c
        :pswitch_ee4
        :pswitch_eb7
        :pswitch_e8f
        :pswitch_e62
        :pswitch_e3a
        :pswitch_e0d
        :pswitch_de5
        :pswitch_db8
        :pswitch_d90
        :pswitch_d63
        :pswitch_d3b
        :pswitch_d0e
        :pswitch_ce6
        :pswitch_cb9
        :pswitch_c91
        :pswitch_c64
        :pswitch_c3c
        :pswitch_c0f
        :pswitch_be7
        :pswitch_bba
        :pswitch_b92
        :pswitch_b65
        :pswitch_b3d
        :pswitch_b10
        :pswitch_ae8
        :pswitch_abb
        :pswitch_a93
        :pswitch_a66
        :pswitch_a3e
        :pswitch_a11
        :pswitch_9e9
        :pswitch_9bc
        :pswitch_994
        :pswitch_967
        :pswitch_93f
        :pswitch_912
        :pswitch_8ea
        :pswitch_8bd
        :pswitch_895
        :pswitch_868
        :pswitch_840
        :pswitch_813
        :pswitch_7eb
        :pswitch_7be
        :pswitch_796
        :pswitch_769
        :pswitch_741
        :pswitch_714
        :pswitch_6ec
        :pswitch_6bf
        :pswitch_697
        :pswitch_66a
        :pswitch_642
        :pswitch_615
        :pswitch_5ed
        :pswitch_5c0
        :pswitch_598
        :pswitch_56b
        :pswitch_543
        :pswitch_516
        :pswitch_4ee
        :pswitch_4c1
        :pswitch_499
        :pswitch_46c
        :pswitch_444
        :pswitch_417
        :pswitch_3ef
        :pswitch_3c2
        :pswitch_39a
        :pswitch_36d
        :pswitch_345
        :pswitch_318
        :pswitch_2f0
        :pswitch_2c3
        :pswitch_29b
        :pswitch_26e
        :pswitch_246
        :pswitch_219
        :pswitch_1f1
        :pswitch_1c4
        :pswitch_19c
        :pswitch_16f
        :pswitch_147
        :pswitch_11a
        :pswitch_f2
        :pswitch_c5
        :pswitch_9d
        :pswitch_80
        :pswitch_67
        :pswitch_3a
        :pswitch_12
    .end packed-switch
.end method
