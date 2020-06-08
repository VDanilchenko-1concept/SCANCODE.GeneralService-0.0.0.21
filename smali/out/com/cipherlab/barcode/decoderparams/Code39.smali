.class public Lcom/cipherlab/barcode/decoderparams/Code39;
.super Ljava/lang/Object;
.source "Code39.java"

# interfaces
.implements Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/barcode/decoderparams/Code39;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public asteriskAsDataCharacters:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public checkDigitVerification:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public code32TransmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public convertToCode32:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public convertToCode32Prefix:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enable:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public fullASCII:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public length1:I

.field public length2:I

.field public securityLevel:Lcom/cipherlab/barcode/decoder/SecurityLevel;

.field public transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public transmitStartStop:Lcom/cipherlab/barcode/decoder/Enable_State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 89
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/Code39$1;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/Code39$1;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/decoderparams/Code39;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 13
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->checkDigitVerification:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 14
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 15
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->fullASCII:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 16
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->convertToCode32:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 17
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->convertToCode32Prefix:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/4 v0, 0x4

    .line 18
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->length1:I

    const/16 v0, 0x37

    .line 19
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->length2:I

    .line 20
    sget-object v0, Lcom/cipherlab/barcode/decoder/SecurityLevel;->One:Lcom/cipherlab/barcode/decoder/SecurityLevel;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->securityLevel:Lcom/cipherlab/barcode/decoder/SecurityLevel;

    .line 21
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->transmitStartStop:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 22
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->asteriskAsDataCharacters:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 23
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->code32TransmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoderparams/Code39;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public Compare(Lcom/cipherlab/barcode/decoderparams/Code39;)Z
    .registers 4

    .line 123
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Code39;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_4a

    .line 124
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Code39;->checkDigitVerification:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->checkDigitVerification:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_4a

    .line 125
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Code39;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_4a

    .line 126
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Code39;->fullASCII:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->fullASCII:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_4a

    .line 127
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Code39;->convertToCode32:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->convertToCode32:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_4a

    .line 128
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Code39;->convertToCode32Prefix:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->convertToCode32Prefix:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_4a

    .line 129
    iget v0, p1, Lcom/cipherlab/barcode/decoderparams/Code39;->length1:I

    iget v1, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->length1:I

    if-ne v0, v1, :cond_4a

    .line 130
    iget v0, p1, Lcom/cipherlab/barcode/decoderparams/Code39;->length2:I

    iget v1, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->length2:I

    if-ne v0, v1, :cond_4a

    .line 131
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Code39;->securityLevel:Lcom/cipherlab/barcode/decoder/SecurityLevel;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->securityLevel:Lcom/cipherlab/barcode/decoder/SecurityLevel;

    if-ne v0, v1, :cond_4a

    .line 132
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Code39;->transmitStartStop:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->transmitStartStop:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_4a

    .line 133
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Code39;->asteriskAsDataCharacters:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->asteriskAsDataCharacters:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_4a

    .line 134
    iget-object p1, p1, Lcom/cipherlab/barcode/decoderparams/Code39;->code32TransmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->code32TransmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne p1, v0, :cond_4a

    const/4 p1, 0x1

    goto :goto_4b

    :cond_4a
    const/4 p1, 0x0

    :goto_4b
    return p1
.end method

.method public GetSymbologyType()Lcom/cipherlab/barcode/decoder/SymbologyType;
    .registers 2

    .line 41
    sget-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Code39:Lcom/cipherlab/barcode/decoder/SymbologyType;

    return-object v0
.end method

.method public SetIneffective()V
    .registers 2

    .line 47
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 48
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->checkDigitVerification:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 49
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 50
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->fullASCII:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 51
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->convertToCode32:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 52
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->convertToCode32Prefix:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->length1:I

    .line 54
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->length2:I

    .line 55
    sget-object v0, Lcom/cipherlab/barcode/decoder/SecurityLevel;->NotSupport:Lcom/cipherlab/barcode/decoder/SecurityLevel;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->securityLevel:Lcom/cipherlab/barcode/decoder/SecurityLevel;

    .line 56
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->transmitStartStop:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 57
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->asteriskAsDataCharacters:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 58
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->code32TransmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->checkDigitVerification:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->fullASCII:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->convertToCode32:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->convertToCode32Prefix:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->length1:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->length2:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/SecurityLevel;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->securityLevel:Lcom/cipherlab/barcode/decoder/SecurityLevel;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->transmitStartStop:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->asteriskAsDataCharacters:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object p1, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->code32TransmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 70
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 71
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->checkDigitVerification:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 72
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 73
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->fullASCII:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 74
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->convertToCode32:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 75
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->convertToCode32Prefix:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 76
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->length1:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->length2:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->securityLevel:Lcom/cipherlab/barcode/decoder/SecurityLevel;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 79
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->transmitStartStop:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 80
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->asteriskAsDataCharacters:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 81
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Code39;->code32TransmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
