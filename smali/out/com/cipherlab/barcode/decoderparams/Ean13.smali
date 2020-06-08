.class public Lcom/cipherlab/barcode/decoderparams/Ean13;
.super Ljava/lang/Object;
.source "Ean13.java"

# interfaces
.implements Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/barcode/decoderparams/Ean13;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public addon2:Lcom/cipherlab/barcode/decoder/AddonsType;

.field public addon5:Lcom/cipherlab/barcode/decoder/AddonsType;

.field public booklandISBNFormat:Lcom/cipherlab/barcode/decoder/ISBNFormat;

.field public convertToISBN:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public convertToISSN:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enable:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public securityLevel:I

.field public transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 72
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/Ean13$1;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/Ean13$1;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/decoderparams/Ean13;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 12
    sget-object v0, Lcom/cipherlab/barcode/decoder/AddonsType;->IgnoresAddons:Lcom/cipherlab/barcode/decoder/AddonsType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->addon2:Lcom/cipherlab/barcode/decoder/AddonsType;

    .line 13
    sget-object v0, Lcom/cipherlab/barcode/decoder/AddonsType;->IgnoresAddons:Lcom/cipherlab/barcode/decoder/AddonsType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->addon5:Lcom/cipherlab/barcode/decoder/AddonsType;

    .line 14
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->convertToISBN:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 15
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->convertToISSN:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 16
    sget-object v0, Lcom/cipherlab/barcode/decoder/ISBNFormat;->ISBN_10:Lcom/cipherlab/barcode/decoder/ISBNFormat;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->booklandISBNFormat:Lcom/cipherlab/barcode/decoder/ISBNFormat;

    .line 17
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->securityLevel:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoderparams/Ean13;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public Compare(Lcom/cipherlab/barcode/decoderparams/Ean13;)Z
    .registers 4

    .line 102
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Ean13;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_32

    .line 103
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Ean13;->addon2:Lcom/cipherlab/barcode/decoder/AddonsType;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->addon2:Lcom/cipherlab/barcode/decoder/AddonsType;

    if-ne v0, v1, :cond_32

    .line 104
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Ean13;->addon5:Lcom/cipherlab/barcode/decoder/AddonsType;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->addon5:Lcom/cipherlab/barcode/decoder/AddonsType;

    if-ne v0, v1, :cond_32

    .line 105
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Ean13;->convertToISBN:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->convertToISBN:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_32

    .line 106
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Ean13;->convertToISSN:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->convertToISSN:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_32

    .line 107
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Ean13;->booklandISBNFormat:Lcom/cipherlab/barcode/decoder/ISBNFormat;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->booklandISBNFormat:Lcom/cipherlab/barcode/decoder/ISBNFormat;

    if-ne v0, v1, :cond_32

    .line 108
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Ean13;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_32

    .line 109
    iget p1, p1, Lcom/cipherlab/barcode/decoderparams/Ean13;->securityLevel:I

    iget v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->securityLevel:I

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

    .line 32
    sget-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Ean13:Lcom/cipherlab/barcode/decoder/SymbologyType;

    return-object v0
.end method

.method public SetIneffective()V
    .registers 2

    .line 38
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 39
    sget-object v0, Lcom/cipherlab/barcode/decoder/AddonsType;->NotSupport:Lcom/cipherlab/barcode/decoder/AddonsType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->addon2:Lcom/cipherlab/barcode/decoder/AddonsType;

    .line 40
    sget-object v0, Lcom/cipherlab/barcode/decoder/AddonsType;->NotSupport:Lcom/cipherlab/barcode/decoder/AddonsType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->addon5:Lcom/cipherlab/barcode/decoder/AddonsType;

    .line 41
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->convertToISBN:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 42
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->convertToISSN:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 43
    sget-object v0, Lcom/cipherlab/barcode/decoder/ISBNFormat;->NotSupport:Lcom/cipherlab/barcode/decoder/ISBNFormat;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->booklandISBNFormat:Lcom/cipherlab/barcode/decoder/ISBNFormat;

    .line 44
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->securityLevel:I

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

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/AddonsType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->addon2:Lcom/cipherlab/barcode/decoder/AddonsType;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/AddonsType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->addon5:Lcom/cipherlab/barcode/decoder/AddonsType;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->convertToISBN:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->convertToISSN:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/ISBNFormat;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->booklandISBNFormat:Lcom/cipherlab/barcode/decoder/ISBNFormat;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->securityLevel:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 57
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 58
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->addon2:Lcom/cipherlab/barcode/decoder/AddonsType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 59
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->addon5:Lcom/cipherlab/barcode/decoder/AddonsType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 60
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->convertToISBN:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 61
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->convertToISSN:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 62
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->booklandISBNFormat:Lcom/cipherlab/barcode/decoder/ISBNFormat;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 63
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 64
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/Ean13;->securityLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
