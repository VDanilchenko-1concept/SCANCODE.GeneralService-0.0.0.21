.class public Lcom/cipherlab/barcode/decoderparams/Msi;
.super Ljava/lang/Object;
.source "Msi.java"

# interfaces
.implements Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/barcode/decoderparams/Msi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public checkDigitAlgorithm:Lcom/cipherlab/barcode/decoder/DigitAlgorithm;

.field public checkDigitOption:Lcom/cipherlab/barcode/decoder/MsiDigitOption;

.field public enable:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public length1:I

.field public length2:I

.field public transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/Msi$1;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/Msi$1;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/decoderparams/Msi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Msi;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/4 v0, 0x4

    .line 12
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Msi;->length1:I

    const/16 v0, 0x37

    .line 13
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Msi;->length2:I

    .line 14
    sget-object v0, Lcom/cipherlab/barcode/decoder/MsiDigitOption;->OneDigit:Lcom/cipherlab/barcode/decoder/MsiDigitOption;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Msi;->checkDigitOption:Lcom/cipherlab/barcode/decoder/MsiDigitOption;

    .line 15
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Msi;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 16
    sget-object v0, Lcom/cipherlab/barcode/decoder/DigitAlgorithm;->DoubleModulo_10:Lcom/cipherlab/barcode/decoder/DigitAlgorithm;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Msi;->checkDigitAlgorithm:Lcom/cipherlab/barcode/decoder/DigitAlgorithm;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoderparams/Msi;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public Compare(Lcom/cipherlab/barcode/decoderparams/Msi;)Z
    .registers 4

    .line 94
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Msi;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Msi;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_26

    .line 95
    iget v0, p1, Lcom/cipherlab/barcode/decoderparams/Msi;->length1:I

    iget v1, p0, Lcom/cipherlab/barcode/decoderparams/Msi;->length1:I

    if-ne v0, v1, :cond_26

    .line 96
    iget v0, p1, Lcom/cipherlab/barcode/decoderparams/Msi;->length2:I

    iget v1, p0, Lcom/cipherlab/barcode/decoderparams/Msi;->length2:I

    if-ne v0, v1, :cond_26

    .line 97
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Msi;->checkDigitOption:Lcom/cipherlab/barcode/decoder/MsiDigitOption;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Msi;->checkDigitOption:Lcom/cipherlab/barcode/decoder/MsiDigitOption;

    if-ne v0, v1, :cond_26

    .line 98
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Msi;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Msi;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_26

    .line 99
    iget-object p1, p1, Lcom/cipherlab/barcode/decoderparams/Msi;->checkDigitAlgorithm:Lcom/cipherlab/barcode/decoder/DigitAlgorithm;

    iget-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Msi;->checkDigitAlgorithm:Lcom/cipherlab/barcode/decoder/DigitAlgorithm;

    if-ne p1, v0, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    return p1
.end method

.method public GetSymbologyType()Lcom/cipherlab/barcode/decoder/SymbologyType;
    .registers 2

    .line 28
    sget-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Msi:Lcom/cipherlab/barcode/decoder/SymbologyType;

    return-object v0
.end method

.method public SetIneffective()V
    .registers 2

    .line 33
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Msi;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Msi;->length1:I

    .line 35
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Msi;->length2:I

    .line 36
    sget-object v0, Lcom/cipherlab/barcode/decoder/MsiDigitOption;->NotSupport:Lcom/cipherlab/barcode/decoder/MsiDigitOption;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Msi;->checkDigitOption:Lcom/cipherlab/barcode/decoder/MsiDigitOption;

    .line 37
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Msi;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 38
    sget-object v0, Lcom/cipherlab/barcode/decoder/DigitAlgorithm;->NotSupport:Lcom/cipherlab/barcode/decoder/DigitAlgorithm;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Msi;->checkDigitAlgorithm:Lcom/cipherlab/barcode/decoder/DigitAlgorithm;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Msi;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Msi;->length1:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Msi;->length2:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/MsiDigitOption;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Msi;->checkDigitOption:Lcom/cipherlab/barcode/decoder/MsiDigitOption;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Msi;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoder/DigitAlgorithm;

    iput-object p1, p0, Lcom/cipherlab/barcode/decoderparams/Msi;->checkDigitAlgorithm:Lcom/cipherlab/barcode/decoder/DigitAlgorithm;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 50
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Msi;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 51
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/Msi;->length1:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/Msi;->length2:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Msi;->checkDigitOption:Lcom/cipherlab/barcode/decoder/MsiDigitOption;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 54
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Msi;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 55
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Msi;->checkDigitAlgorithm:Lcom/cipherlab/barcode/decoder/DigitAlgorithm;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
