.class public interface abstract Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;
.super Ljava/lang/Object;
.source "IBarcodeReaderServiceInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract ApplyProfile()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract CopyProfile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract CreateProfile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract CreateProfileEx(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract DetectReaderReady()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract GetLastError()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract GetProfileList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cipherlab/barcode/decoderparams/ReaderProfile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract GetReaderActive()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract GetReaderActive_Profile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract GetReaderCallbackState()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract GetScannerType()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract GetScannerVersion()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract GetServiceVersion()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadAustralianPostal(Lcom/cipherlab/barcode/decoderparams/AustralianPostal;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadAustralianPostal_Profile(Lcom/cipherlab/barcode/decoderparams/AustralianPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadAustralianPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/AustralianPostal;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadAztec(Lcom/cipherlab/barcode/decoderparams/Aztec;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadAztec_Profile(Lcom/cipherlab/barcode/decoderparams/Aztec;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadAztec_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Aztec;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadChinese2Of5(Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadChinese2Of5_Profile(Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadChinese2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadCip39(Lcom/cipherlab/barcode/decoderparams/Cip39;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadCip39_Profile(Lcom/cipherlab/barcode/decoderparams/Cip39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadCip39_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Cip39;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadCodabar(Lcom/cipherlab/barcode/decoderparams/Codabar;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadCodabar_Profile(Lcom/cipherlab/barcode/decoderparams/Codabar;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadCodabar_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Codabar;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadCode11(Lcom/cipherlab/barcode/decoderparams/Code11;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadCode11_Profile(Lcom/cipherlab/barcode/decoderparams/Code11;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadCode11_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code11;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadCode128(Lcom/cipherlab/barcode/decoderparams/Code128;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadCode128_Profile(Lcom/cipherlab/barcode/decoderparams/Code128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadCode128_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code128;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadCode39(Lcom/cipherlab/barcode/decoderparams/Code39;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadCode39_Profile(Lcom/cipherlab/barcode/decoderparams/Code39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadCode39_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code39;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadCode93(Lcom/cipherlab/barcode/decoderparams/Code93;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadCode93_Profile(Lcom/cipherlab/barcode/decoderparams/Code93;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadCode93_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code93;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadComposite(Lcom/cipherlab/barcode/decoderparams/Composite;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadComposite_Profile(Lcom/cipherlab/barcode/decoderparams/Composite;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadComposite_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Composite;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadDataMatrix(Lcom/cipherlab/barcode/decoderparams/DataMatrix;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadDataMatrix_Profile(Lcom/cipherlab/barcode/decoderparams/DataMatrix;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadDataMatrix_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/DataMatrix;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadDecodersSettings(Lcom/cipherlab/barcode/decoder/Decoders;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadDecodersSettings_Profile(Lcom/cipherlab/barcode/decoder/Decoders;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadDecodersSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoder/Decoders;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadDotCode(Lcom/cipherlab/barcode/decoderparams/DotCode;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadDotCode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/DotCode;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadDutchPostal(Lcom/cipherlab/barcode/decoderparams/DutchPostal;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadDutchPostal_Profile(Lcom/cipherlab/barcode/decoderparams/DutchPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadDutchPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/DutchPostal;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadEan13(Lcom/cipherlab/barcode/decoderparams/Ean13;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadEan13_Profile(Lcom/cipherlab/barcode/decoderparams/Ean13;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadEan13_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Ean13;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadEan8(Lcom/cipherlab/barcode/decoderparams/Ean8;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadEan8_Profile(Lcom/cipherlab/barcode/decoderparams/Ean8;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadEan8_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Ean8;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadFrenchPharmacode(Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadFrenchPharmacode_Profile(Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadFrenchPharmacode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadGS1128(Lcom/cipherlab/barcode/decoderparams/GS1128;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadGS1128_Profile(Lcom/cipherlab/barcode/decoderparams/GS1128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadGS1128_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1128;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadGS1DataBar14(Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadGS1DataBar14_Profile(Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadGS1DataBar14_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadGS1DataBarExpanded(Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadGS1DataBarExpanded_Profile(Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadGS1DataBarExpanded_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadGS1DataBarLimited(Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadGS1DataBarLimited_Profile(Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadGS1DataBarLimited_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadHanxin(Lcom/cipherlab/barcode/decoderparams/Hanxin;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadHanxin_Profile(Lcom/cipherlab/barcode/decoderparams/Hanxin;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadHanxin_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Hanxin;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadISBT128(Lcom/cipherlab/barcode/decoderparams/ISBT128;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadISBT128_Profile(Lcom/cipherlab/barcode/decoderparams/ISBT128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadISBT128_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/ISBT128;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadIndustrial2Of5(Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadIndustrial2Of5_Profile(Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadIndustrial2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadInterleaved2Of5(Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadInterleaved2Of5_Profile(Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadInterleaved2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadJapanPostal(Lcom/cipherlab/barcode/decoderparams/JapanPostal;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadJapanPostal_Profile(Lcom/cipherlab/barcode/decoderparams/JapanPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadJapanPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/JapanPostal;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadKorean3Of5(Lcom/cipherlab/barcode/decoderparams/Korean3Of5;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadKorean3Of5_Profile(Lcom/cipherlab/barcode/decoderparams/Korean3Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadKorean3Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Korean3Of5;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadLaetus(Lcom/cipherlab/barcode/decoderparams/Laetus;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadLaetus_Profile(Lcom/cipherlab/barcode/decoderparams/Laetus;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadLaetus_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Laetus;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadMRZ(Lcom/cipherlab/barcode/decoderparams/MRZ;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadMRZ_Profile(Lcom/cipherlab/barcode/decoderparams/MRZ;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadMRZ_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MRZ;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadMatrix2Of5(Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadMatrix2Of5_Profile(Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadMatrix2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadMaxiCode(Lcom/cipherlab/barcode/decoderparams/MaxiCode;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadMaxiCode_Profile(Lcom/cipherlab/barcode/decoderparams/MaxiCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadMaxiCode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MaxiCode;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadMicroPDF417(Lcom/cipherlab/barcode/decoderparams/MicroPDF417;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadMicroPDF417_Profile(Lcom/cipherlab/barcode/decoderparams/MicroPDF417;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadMicroPDF417_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MicroPDF417;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadMicroQR(Lcom/cipherlab/barcode/decoderparams/MicroQR;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadMicroQR_Profile(Lcom/cipherlab/barcode/decoderparams/MicroQR;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadMicroQR_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MicroQR;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadMsi(Lcom/cipherlab/barcode/decoderparams/Msi;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadMsi_Profile(Lcom/cipherlab/barcode/decoderparams/Msi;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadMsi_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Msi;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadNotificationSettings(Lcom/cipherlab/barcode/decoderparams/NotificationParams;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadNotificationSettings_Profile(Lcom/cipherlab/barcode/decoderparams/NotificationParams;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadNotificationSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/NotificationParams;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadOutputSettings(Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadOutputSettings_Profile(Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadOutputSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadPDF417(Lcom/cipherlab/barcode/decoderparams/PDF417;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadPDF417_Profile(Lcom/cipherlab/barcode/decoderparams/PDF417;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadPDF417_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/PDF417;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadPlessey(Lcom/cipherlab/barcode/decoderparams/Plessey;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadPlessey_Profile(Lcom/cipherlab/barcode/decoderparams/Plessey;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadPlessey_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Plessey;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadQRCode(Lcom/cipherlab/barcode/decoderparams/QRCode;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadQRCode_Profile(Lcom/cipherlab/barcode/decoderparams/QRCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadQRCode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/QRCode;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadTelepen(Lcom/cipherlab/barcode/decoderparams/Telepen;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadTelepen_Profile(Lcom/cipherlab/barcode/decoderparams/Telepen;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadTelepen_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Telepen;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadTriopticCode39(Lcom/cipherlab/barcode/decoderparams/TriopticCode39;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadTriopticCode39_Profile(Lcom/cipherlab/barcode/decoderparams/TriopticCode39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadTriopticCode39_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/TriopticCode39;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadUKPostal(Lcom/cipherlab/barcode/decoderparams/UKPostal;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadUKPostal_Profile(Lcom/cipherlab/barcode/decoderparams/UKPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadUKPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UKPostal;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadUPUFICSPostal(Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadUPUFICSPostal_Profile(Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadUPUFICSPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadUSPSPostal(Lcom/cipherlab/barcode/decoderparams/USPSPostal;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadUSPSPostal_Profile(Lcom/cipherlab/barcode/decoderparams/USPSPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadUSPSPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/USPSPostal;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadUSPostal(Lcom/cipherlab/barcode/decoderparams/USPostal;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadUSPostal_Profile(Lcom/cipherlab/barcode/decoderparams/USPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadUSPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/USPostal;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadUccCoupon(Lcom/cipherlab/barcode/decoderparams/UccCoupon;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadUccCoupon_Profile(Lcom/cipherlab/barcode/decoderparams/UccCoupon;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadUccCoupon_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UccCoupon;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadUpcA(Lcom/cipherlab/barcode/decoderparams/UpcA;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadUpcA_Profile(Lcom/cipherlab/barcode/decoderparams/UpcA;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadUpcA_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UpcA;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadUpcE(Lcom/cipherlab/barcode/decoderparams/UpcE;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadUpcE1(Lcom/cipherlab/barcode/decoderparams/UpcE1;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadUpcE1_Profile(Lcom/cipherlab/barcode/decoderparams/UpcE1;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadUpcE1_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UpcE1;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadUpcE_Profile(Lcom/cipherlab/barcode/decoderparams/UpcE;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadUpcE_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UpcE;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadUserPreferenceSettings(Lcom/cipherlab/barcode/decoderparams/UserPreference;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadUserPreferenceSettings_Profile(Lcom/cipherlab/barcode/decoderparams/UserPreference;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ReadUserPreferenceSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UserPreference;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract RemoveProfile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ResetToDefault()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ResetToDefault_Profile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ResetToPorfileDefault()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract SetReaderActive(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract SetReaderActive_Profile(ZLcom/cipherlab/barcode/decoderparams/ReaderProfile;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract SetReaderCallback(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract SetSoftwareTriggerBool(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract UpdateProfile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteAustralianPostal(Lcom/cipherlab/barcode/decoderparams/AustralianPostal;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteAustralianPostal_Profile(Lcom/cipherlab/barcode/decoderparams/AustralianPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteAustralianPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/AustralianPostal;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteAztec(Lcom/cipherlab/barcode/decoderparams/Aztec;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteAztec_Profile(Lcom/cipherlab/barcode/decoderparams/Aztec;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteAztec_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Aztec;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteChinese2Of5(Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteChinese2Of5_Profile(Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteChinese2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteCip39(Lcom/cipherlab/barcode/decoderparams/Cip39;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteCip39_Profile(Lcom/cipherlab/barcode/decoderparams/Cip39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteCip39_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Cip39;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteCodabar(Lcom/cipherlab/barcode/decoderparams/Codabar;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteCodabar_Profile(Lcom/cipherlab/barcode/decoderparams/Codabar;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteCodabar_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Codabar;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteCode11(Lcom/cipherlab/barcode/decoderparams/Code11;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteCode11_Profile(Lcom/cipherlab/barcode/decoderparams/Code11;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteCode11_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code11;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteCode128(Lcom/cipherlab/barcode/decoderparams/Code128;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteCode128_Profile(Lcom/cipherlab/barcode/decoderparams/Code128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteCode128_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code128;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteCode39(Lcom/cipherlab/barcode/decoderparams/Code39;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteCode39_Profile(Lcom/cipherlab/barcode/decoderparams/Code39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteCode39_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code39;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteCode93(Lcom/cipherlab/barcode/decoderparams/Code93;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteCode93_Profile(Lcom/cipherlab/barcode/decoderparams/Code93;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteCode93_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code93;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteComposite(Lcom/cipherlab/barcode/decoderparams/Composite;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteComposite_Profile(Lcom/cipherlab/barcode/decoderparams/Composite;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteComposite_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Composite;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteDataMatrix(Lcom/cipherlab/barcode/decoderparams/DataMatrix;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteDataMatrix_Profile(Lcom/cipherlab/barcode/decoderparams/DataMatrix;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteDataMatrix_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/DataMatrix;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteDecodersSettings(Lcom/cipherlab/barcode/decoder/Decoders;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteDecodersSettings_Profile(Lcom/cipherlab/barcode/decoder/Decoders;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteDecodersSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoder/Decoders;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteDotCode(Lcom/cipherlab/barcode/decoderparams/DotCode;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteDotCode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/DotCode;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteDutchPostal(Lcom/cipherlab/barcode/decoderparams/DutchPostal;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteDutchPostal_Profile(Lcom/cipherlab/barcode/decoderparams/DutchPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteDutchPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/DutchPostal;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteEan13(Lcom/cipherlab/barcode/decoderparams/Ean13;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteEan13_Profile(Lcom/cipherlab/barcode/decoderparams/Ean13;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteEan13_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Ean13;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteEan8(Lcom/cipherlab/barcode/decoderparams/Ean8;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteEan8_Profile(Lcom/cipherlab/barcode/decoderparams/Ean8;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteEan8_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Ean8;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteFrenchPharmacode(Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteFrenchPharmacode_Profile(Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteFrenchPharmacode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteGS1128(Lcom/cipherlab/barcode/decoderparams/GS1128;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteGS1128_Profile(Lcom/cipherlab/barcode/decoderparams/GS1128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteGS1128_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1128;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteGS1DataBar14(Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteGS1DataBar14_Profile(Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteGS1DataBar14_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteGS1DataBarExpanded(Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteGS1DataBarExpanded_Profile(Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteGS1DataBarExpanded_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteGS1DataBarLimited(Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteGS1DataBarLimited_Profile(Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteGS1DataBarLimited_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteHanxin(Lcom/cipherlab/barcode/decoderparams/Hanxin;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteHanxin_Profile(Lcom/cipherlab/barcode/decoderparams/Hanxin;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteHanxin_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Hanxin;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteISBT128(Lcom/cipherlab/barcode/decoderparams/ISBT128;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteISBT128_Profile(Lcom/cipherlab/barcode/decoderparams/ISBT128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteISBT128_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/ISBT128;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteIndustrial2Of5(Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteIndustrial2Of5_Profile(Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteIndustrial2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteInterleaved2Of5(Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteInterleaved2Of5_Profile(Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteInterleaved2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteJapanPostal(Lcom/cipherlab/barcode/decoderparams/JapanPostal;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteJapanPostal_Profile(Lcom/cipherlab/barcode/decoderparams/JapanPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteJapanPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/JapanPostal;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteKorean3Of5(Lcom/cipherlab/barcode/decoderparams/Korean3Of5;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteKorean3Of5_Profile(Lcom/cipherlab/barcode/decoderparams/Korean3Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteKorean3Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Korean3Of5;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteLaetus(Lcom/cipherlab/barcode/decoderparams/Laetus;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteLaetus_Profile(Lcom/cipherlab/barcode/decoderparams/Laetus;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteLaetus_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Laetus;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteMRZ(Lcom/cipherlab/barcode/decoderparams/MRZ;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteMRZ_Profile(Lcom/cipherlab/barcode/decoderparams/MRZ;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteMRZ_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MRZ;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteMatrix2Of5(Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteMatrix2Of5_Profile(Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteMatrix2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteMaxiCode(Lcom/cipherlab/barcode/decoderparams/MaxiCode;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteMaxiCode_Profile(Lcom/cipherlab/barcode/decoderparams/MaxiCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteMaxiCode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MaxiCode;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteMicroPDF417(Lcom/cipherlab/barcode/decoderparams/MicroPDF417;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteMicroPDF417_Profile(Lcom/cipherlab/barcode/decoderparams/MicroPDF417;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteMicroPDF417_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MicroPDF417;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteMicroQR(Lcom/cipherlab/barcode/decoderparams/MicroQR;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteMicroQR_Profile(Lcom/cipherlab/barcode/decoderparams/MicroQR;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteMicroQR_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MicroQR;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteMsi(Lcom/cipherlab/barcode/decoderparams/Msi;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteMsi_Profile(Lcom/cipherlab/barcode/decoderparams/Msi;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteMsi_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Msi;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteNotificationSettings(Lcom/cipherlab/barcode/decoderparams/NotificationParams;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteNotificationSettings_Profile(Lcom/cipherlab/barcode/decoderparams/NotificationParams;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteNotificationSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/NotificationParams;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteOutputSettings(Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteOutputSettings_Profile(Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteOutputSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WritePDF417(Lcom/cipherlab/barcode/decoderparams/PDF417;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WritePDF417_Profile(Lcom/cipherlab/barcode/decoderparams/PDF417;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WritePDF417_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/PDF417;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WritePlessey(Lcom/cipherlab/barcode/decoderparams/Plessey;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WritePlessey_Profile(Lcom/cipherlab/barcode/decoderparams/Plessey;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WritePlessey_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Plessey;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteQRCode(Lcom/cipherlab/barcode/decoderparams/QRCode;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteQRCode_Profile(Lcom/cipherlab/barcode/decoderparams/QRCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteQRCode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/QRCode;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteTelepen(Lcom/cipherlab/barcode/decoderparams/Telepen;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteTelepen_Profile(Lcom/cipherlab/barcode/decoderparams/Telepen;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteTelepen_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Telepen;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteTriopticCode39(Lcom/cipherlab/barcode/decoderparams/TriopticCode39;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteTriopticCode39_Profile(Lcom/cipherlab/barcode/decoderparams/TriopticCode39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteTriopticCode39_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/TriopticCode39;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteUKPostal(Lcom/cipherlab/barcode/decoderparams/UKPostal;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteUKPostal_Profile(Lcom/cipherlab/barcode/decoderparams/UKPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteUKPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UKPostal;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteUPUFICSPostal(Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteUPUFICSPostal_Profile(Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteUPUFICSPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteUSPSPostal(Lcom/cipherlab/barcode/decoderparams/USPSPostal;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteUSPSPostal_Profile(Lcom/cipherlab/barcode/decoderparams/USPSPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteUSPSPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/USPSPostal;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteUSPostal(Lcom/cipherlab/barcode/decoderparams/USPostal;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteUSPostal_Profile(Lcom/cipherlab/barcode/decoderparams/USPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteUSPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/USPostal;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteUccCoupon(Lcom/cipherlab/barcode/decoderparams/UccCoupon;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteUccCoupon_Profile(Lcom/cipherlab/barcode/decoderparams/UccCoupon;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteUccCoupon_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UccCoupon;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteUpcA(Lcom/cipherlab/barcode/decoderparams/UpcA;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteUpcA_Profile(Lcom/cipherlab/barcode/decoderparams/UpcA;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteUpcA_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UpcA;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteUpcE(Lcom/cipherlab/barcode/decoderparams/UpcE;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteUpcE1(Lcom/cipherlab/barcode/decoderparams/UpcE1;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteUpcE1_Profile(Lcom/cipherlab/barcode/decoderparams/UpcE1;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteUpcE1_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UpcE1;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteUpcE_Profile(Lcom/cipherlab/barcode/decoderparams/UpcE;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteUpcE_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UpcE;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteUserPreferenceSettings(Lcom/cipherlab/barcode/decoderparams/UserPreference;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteUserPreferenceSettings_Profile(Lcom/cipherlab/barcode/decoderparams/UserPreference;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract WriteUserPreferenceSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UserPreference;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
