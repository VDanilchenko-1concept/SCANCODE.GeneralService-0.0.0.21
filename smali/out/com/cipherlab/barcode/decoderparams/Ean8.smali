.class public Lcom/cipherlab/barcode/decoderparams/Ean8;
.super Ljava/lang/Object;
.source "Ean8.java"

# interfaces
.implements Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/barcode/decoderparams/Ean8;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public addon2:Lcom/cipherlab/barcode/decoder/AddonsType;

.field public addon5:Lcom/cipherlab/barcode/decoder/AddonsType;

.field public convertToEan13:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enable:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/Ean8$1;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/Ean8$1;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/decoderparams/Ean8;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean8;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 12
    sget-object v0, Lcom/cipherlab/barcode/decoder/AddonsType;->IgnoresAddons:Lcom/cipherlab/barcode/decoder/AddonsType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean8;->addon2:Lcom/cipherlab/barcode/decoder/AddonsType;

    .line 13
    sget-object v0, Lcom/cipherlab/barcode/decoder/AddonsType;->IgnoresAddons:Lcom/cipherlab/barcode/decoder/AddonsType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean8;->addon5:Lcom/cipherlab/barcode/decoder/AddonsType;

    .line 14
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean8;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 15
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean8;->convertToEan13:Lcom/cipherlab/barcode/decoder/Enable_State;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoderparams/Ean8;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public Compare(Lcom/cipherlab/barcode/decoderparams/Ean8;)Z
    .registers 4

    .line 90
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Ean8;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Ean8;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_20

    .line 91
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Ean8;->addon2:Lcom/cipherlab/barcode/decoder/AddonsType;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Ean8;->addon2:Lcom/cipherlab/barcode/decoder/AddonsType;

    if-ne v0, v1, :cond_20

    .line 92
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Ean8;->addon5:Lcom/cipherlab/barcode/decoder/AddonsType;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Ean8;->addon5:Lcom/cipherlab/barcode/decoder/AddonsType;

    if-ne v0, v1, :cond_20

    .line 93
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Ean8;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Ean8;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_20

    .line 94
    iget-object p1, p1, Lcom/cipherlab/barcode/decoderparams/Ean8;->convertToEan13:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean8;->convertToEan13:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne p1, v0, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    return p1
.end method

.method public GetSymbologyType()Lcom/cipherlab/barcode/decoder/SymbologyType;
    .registers 2

    .line 28
    sget-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Ean8:Lcom/cipherlab/barcode/decoder/SymbologyType;

    return-object v0
.end method

.method public SetIneffective()V
    .registers 2

    .line 34
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean8;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 35
    sget-object v0, Lcom/cipherlab/barcode/decoder/AddonsType;->NotSupport:Lcom/cipherlab/barcode/decoder/AddonsType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean8;->addon2:Lcom/cipherlab/barcode/decoder/AddonsType;

    .line 36
    sget-object v0, Lcom/cipherlab/barcode/decoder/AddonsType;->NotSupport:Lcom/cipherlab/barcode/decoder/AddonsType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean8;->addon5:Lcom/cipherlab/barcode/decoder/AddonsType;

    .line 37
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean8;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 38
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean8;->convertToEan13:Lcom/cipherlab/barcode/decoder/Enable_State;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean8;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/AddonsType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean8;->addon2:Lcom/cipherlab/barcode/decoder/AddonsType;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/AddonsType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean8;->addon5:Lcom/cipherlab/barcode/decoder/AddonsType;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Ean8;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object p1, p0, Lcom/cipherlab/barcode/decoderparams/Ean8;->convertToEan13:Lcom/cipherlab/barcode/decoder/Enable_State;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 50
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Ean8;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 51
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Ean8;->addon2:Lcom/cipherlab/barcode/decoder/AddonsType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 52
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Ean8;->addon5:Lcom/cipherlab/barcode/decoder/AddonsType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 53
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Ean8;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 54
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Ean8;->convertToEan13:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
