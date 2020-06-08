.class public Lcom/cipherlab/barcode/decoderparams/Codabar;
.super Ljava/lang/Object;
.source "Codabar.java"

# interfaces
.implements Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/barcode/decoderparams/Codabar;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public clsiEditing:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enable:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public length1:I

.field public length2:I

.field public notisEditing:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public notisEditingType:Lcom/cipherlab/barcode/decoder/NOTISEditingType;

.field public securityLevel:I

.field public transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public verifyCheckDigit:Lcom/cipherlab/barcode/decoder/CodabarDigitAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/Codabar$1;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/Codabar$1;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/decoderparams/Codabar;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/4 v0, 0x4

    .line 14
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->length1:I

    const/16 v0, 0x37

    .line 15
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->length2:I

    .line 16
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->clsiEditing:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 17
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->notisEditing:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 18
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 19
    sget-object v0, Lcom/cipherlab/barcode/decoder/CodabarDigitAlgorithm;->None:Lcom/cipherlab/barcode/decoder/CodabarDigitAlgorithm;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->verifyCheckDigit:Lcom/cipherlab/barcode/decoder/CodabarDigitAlgorithm;

    .line 20
    sget-object v0, Lcom/cipherlab/barcode/decoder/NOTISEditingType;->None:Lcom/cipherlab/barcode/decoder/NOTISEditingType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->notisEditingType:Lcom/cipherlab/barcode/decoder/NOTISEditingType;

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->securityLevel:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoderparams/Codabar;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public Compare(Lcom/cipherlab/barcode/decoderparams/Codabar;)Z
    .registers 4

    .line 110
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Codabar;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_38

    .line 111
    iget v0, p1, Lcom/cipherlab/barcode/decoderparams/Codabar;->length1:I

    iget v1, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->length1:I

    if-ne v0, v1, :cond_38

    .line 112
    iget v0, p1, Lcom/cipherlab/barcode/decoderparams/Codabar;->length2:I

    iget v1, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->length2:I

    if-ne v0, v1, :cond_38

    .line 113
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Codabar;->clsiEditing:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->clsiEditing:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_38

    .line 114
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Codabar;->notisEditing:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->notisEditing:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_38

    .line 115
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Codabar;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_38

    .line 116
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Codabar;->verifyCheckDigit:Lcom/cipherlab/barcode/decoder/CodabarDigitAlgorithm;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->verifyCheckDigit:Lcom/cipherlab/barcode/decoder/CodabarDigitAlgorithm;

    if-ne v0, v1, :cond_38

    .line 117
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Codabar;->notisEditingType:Lcom/cipherlab/barcode/decoder/NOTISEditingType;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->notisEditingType:Lcom/cipherlab/barcode/decoder/NOTISEditingType;

    if-ne v0, v1, :cond_38

    .line 118
    iget p1, p1, Lcom/cipherlab/barcode/decoderparams/Codabar;->securityLevel:I

    iget v0, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->securityLevel:I

    if-ne p1, v0, :cond_38

    const/4 p1, 0x1

    goto :goto_39

    :cond_38
    const/4 p1, 0x0

    :goto_39
    return p1
.end method

.method public GetSymbologyType()Lcom/cipherlab/barcode/decoder/SymbologyType;
    .registers 2

    .line 38
    sget-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Codabar:Lcom/cipherlab/barcode/decoder/SymbologyType;

    return-object v0
.end method

.method public SetIneffective()V
    .registers 3

    .line 44
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->length1:I

    .line 46
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->length2:I

    .line 47
    sget-object v1, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->clsiEditing:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 48
    sget-object v1, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->notisEditing:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 49
    sget-object v1, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 50
    sget-object v1, Lcom/cipherlab/barcode/decoder/CodabarDigitAlgorithm;->NotSupport:Lcom/cipherlab/barcode/decoder/CodabarDigitAlgorithm;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->verifyCheckDigit:Lcom/cipherlab/barcode/decoder/CodabarDigitAlgorithm;

    .line 51
    sget-object v1, Lcom/cipherlab/barcode/decoder/NOTISEditingType;->NotSupport:Lcom/cipherlab/barcode/decoder/NOTISEditingType;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->notisEditingType:Lcom/cipherlab/barcode/decoder/NOTISEditingType;

    .line 52
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->securityLevel:I

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

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->length1:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->length2:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->clsiEditing:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->notisEditing:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/CodabarDigitAlgorithm;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->verifyCheckDigit:Lcom/cipherlab/barcode/decoder/CodabarDigitAlgorithm;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/NOTISEditingType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->notisEditingType:Lcom/cipherlab/barcode/decoder/NOTISEditingType;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->securityLevel:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 63
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 64
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->length1:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->length2:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->clsiEditing:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 67
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->notisEditing:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 68
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 69
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->verifyCheckDigit:Lcom/cipherlab/barcode/decoder/CodabarDigitAlgorithm;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 70
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->notisEditingType:Lcom/cipherlab/barcode/decoder/NOTISEditingType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 71
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/Codabar;->securityLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
