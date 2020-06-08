.class public Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;
.super Ljava/lang/Object;
.source "Matrix2Of5.java"

# interfaces
.implements Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public checkDigitVerification:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enable:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public length1:I

.field public length2:I

.field public redundancy:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public startStopSelection:I

.field public transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 71
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5$1;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5$1;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/4 v0, 0x4

    .line 12
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->length1:I

    const/16 v0, 0x37

    .line 13
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->length2:I

    .line 14
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->redundancy:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 15
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->checkDigitVerification:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 16
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->startStopSelection:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public Compare(Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;)Z
    .registers 4

    .line 101
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_2c

    .line 102
    iget v0, p1, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->length1:I

    iget v1, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->length1:I

    if-ne v0, v1, :cond_2c

    .line 103
    iget v0, p1, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->length2:I

    iget v1, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->length2:I

    if-ne v0, v1, :cond_2c

    .line 104
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->redundancy:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->redundancy:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_2c

    .line 105
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->checkDigitVerification:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->checkDigitVerification:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_2c

    .line 106
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_2c

    .line 107
    iget p1, p1, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->startStopSelection:I

    iget v0, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->startStopSelection:I

    if-ne p1, v0, :cond_2c

    const/4 p1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p1, 0x0

    :goto_2d
    return p1
.end method

.method public GetSymbologyType()Lcom/cipherlab/barcode/decoder/SymbologyType;
    .registers 2

    .line 31
    sget-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Matrix2Of5:Lcom/cipherlab/barcode/decoder/SymbologyType;

    return-object v0
.end method

.method public SetIneffective()V
    .registers 3

    .line 37
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->length1:I

    .line 39
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->length2:I

    .line 40
    sget-object v1, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->redundancy:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 41
    sget-object v1, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->checkDigitVerification:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 42
    sget-object v1, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 43
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->startStopSelection:I

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->length1:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->length2:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->redundancy:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->checkDigitVerification:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->startStopSelection:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 55
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 56
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->length1:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->length2:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->redundancy:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 59
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->checkDigitVerification:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 60
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 61
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->startStopSelection:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
