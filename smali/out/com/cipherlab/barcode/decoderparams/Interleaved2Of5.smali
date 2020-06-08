.class public Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;
.super Ljava/lang/Object;
.source "Interleaved2Of5.java"

# interfaces
.implements Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public checkDigitVerification:Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

.field public convertToEan13:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enable:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public length1:I

.field public length2:I

.field public securityLevel:Lcom/cipherlab/barcode/decoder/SecurityLevel;

.field public startStopSelection:I

.field public transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 78
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5$1;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5$1;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/4 v0, 0x4

    .line 14
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->length1:I

    const/16 v0, 0x37

    .line 15
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->length2:I

    .line 16
    sget-object v0, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;->Disable:Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->checkDigitVerification:Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    .line 17
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 18
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->convertToEan13:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 19
    sget-object v0, Lcom/cipherlab/barcode/decoder/SecurityLevel;->One:Lcom/cipherlab/barcode/decoder/SecurityLevel;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->securityLevel:Lcom/cipherlab/barcode/decoder/SecurityLevel;

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->startStopSelection:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public Compare(Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;)Z
    .registers 4

    .line 109
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_32

    .line 110
    iget v0, p1, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->length1:I

    iget v1, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->length1:I

    if-ne v0, v1, :cond_32

    .line 111
    iget v0, p1, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->length2:I

    iget v1, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->length2:I

    if-ne v0, v1, :cond_32

    .line 112
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->checkDigitVerification:Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->checkDigitVerification:Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    if-ne v0, v1, :cond_32

    .line 113
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_32

    .line 114
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->convertToEan13:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->convertToEan13:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_32

    .line 115
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->securityLevel:Lcom/cipherlab/barcode/decoder/SecurityLevel;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->securityLevel:Lcom/cipherlab/barcode/decoder/SecurityLevel;

    if-ne v0, v1, :cond_32

    .line 116
    iget p1, p1, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->startStopSelection:I

    iget v0, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->startStopSelection:I

    if-ne p1, v0, :cond_32

    const/4 p1, 0x1

    goto :goto_33

    :cond_32
    const/4 p1, 0x0

    :goto_33
    return p1
.end method

.method public GetSymbologyType()Lcom/cipherlab/barcode/decoder/SymbologyType;
    .registers 2

    .line 35
    sget-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Interleaved2Of5:Lcom/cipherlab/barcode/decoder/SymbologyType;

    return-object v0
.end method

.method public SetIneffective()V
    .registers 3

    .line 41
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->length1:I

    .line 43
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->length2:I

    .line 44
    sget-object v1, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;->NotSupport:Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->checkDigitVerification:Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    .line 45
    sget-object v1, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 46
    sget-object v1, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->convertToEan13:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 47
    sget-object v1, Lcom/cipherlab/barcode/decoder/SecurityLevel;->NotSupport:Lcom/cipherlab/barcode/decoder/SecurityLevel;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->securityLevel:Lcom/cipherlab/barcode/decoder/SecurityLevel;

    .line 48
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->startStopSelection:I

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->length1:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->length2:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->checkDigitVerification:Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->convertToEan13:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/SecurityLevel;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->securityLevel:Lcom/cipherlab/barcode/decoder/SecurityLevel;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->startStopSelection:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 61
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 62
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->length1:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->length2:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->checkDigitVerification:Lcom/cipherlab/barcode/decoder/I20f5CheckDigitVerification;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 65
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 66
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->convertToEan13:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 67
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->securityLevel:Lcom/cipherlab/barcode/decoder/SecurityLevel;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 68
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->startStopSelection:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
