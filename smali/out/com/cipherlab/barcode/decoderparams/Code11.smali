.class public Lcom/cipherlab/barcode/decoderparams/Code11;
.super Ljava/lang/Object;
.source "Code11.java"

# interfaces
.implements Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/barcode/decoderparams/Code11;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public enable:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public length1:I

.field public length2:I

.field public numberOfCheckDigits:Lcom/cipherlab/barcode/decoder/NumberOfCheck;

.field public securityLevel:I

.field public transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 64
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/Code11$1;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/Code11$1;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/decoderparams/Code11;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code11;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/4 v0, 0x4

    .line 11
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Code11;->length1:I

    const/16 v0, 0x37

    .line 12
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Code11;->length2:I

    .line 13
    sget-object v0, Lcom/cipherlab/barcode/decoder/NumberOfCheck;->None:Lcom/cipherlab/barcode/decoder/NumberOfCheck;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code11;->numberOfCheckDigits:Lcom/cipherlab/barcode/decoder/NumberOfCheck;

    .line 14
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code11;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Code11;->securityLevel:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoderparams/Code11;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public Compare(Lcom/cipherlab/barcode/decoderparams/Code11;)Z
    .registers 4

    .line 92
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Code11;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Code11;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_26

    .line 93
    iget v0, p1, Lcom/cipherlab/barcode/decoderparams/Code11;->length1:I

    iget v1, p0, Lcom/cipherlab/barcode/decoderparams/Code11;->length1:I

    if-ne v0, v1, :cond_26

    .line 94
    iget v0, p1, Lcom/cipherlab/barcode/decoderparams/Code11;->length2:I

    iget v1, p0, Lcom/cipherlab/barcode/decoderparams/Code11;->length2:I

    if-ne v0, v1, :cond_26

    .line 95
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Code11;->numberOfCheckDigits:Lcom/cipherlab/barcode/decoder/NumberOfCheck;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Code11;->numberOfCheckDigits:Lcom/cipherlab/barcode/decoder/NumberOfCheck;

    if-ne v0, v1, :cond_26

    .line 96
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Code11;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Code11;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_26

    .line 97
    iget p1, p1, Lcom/cipherlab/barcode/decoderparams/Code11;->securityLevel:I

    iget v0, p0, Lcom/cipherlab/barcode/decoderparams/Code11;->securityLevel:I

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

    .line 29
    sget-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Code11:Lcom/cipherlab/barcode/decoder/SymbologyType;

    return-object v0
.end method

.method public SetIneffective()V
    .registers 3

    .line 35
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code11;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Code11;->length1:I

    .line 37
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Code11;->length2:I

    .line 38
    sget-object v1, Lcom/cipherlab/barcode/decoder/NumberOfCheck;->NotSupport:Lcom/cipherlab/barcode/decoder/NumberOfCheck;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Code11;->numberOfCheckDigits:Lcom/cipherlab/barcode/decoder/NumberOfCheck;

    .line 39
    sget-object v1, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Code11;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 40
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Code11;->securityLevel:I

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code11;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Code11;->length1:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Code11;->length2:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/NumberOfCheck;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code11;->numberOfCheckDigits:Lcom/cipherlab/barcode/decoder/NumberOfCheck;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code11;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/cipherlab/barcode/decoderparams/Code11;->securityLevel:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 51
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Code11;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 52
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/Code11;->length1:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/Code11;->length2:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Code11;->numberOfCheckDigits:Lcom/cipherlab/barcode/decoder/NumberOfCheck;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 55
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Code11;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 56
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/Code11;->securityLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
