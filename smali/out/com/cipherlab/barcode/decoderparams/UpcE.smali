.class public Lcom/cipherlab/barcode/decoderparams/UpcE;
.super Ljava/lang/Object;
.source "UpcE.java"

# interfaces
.implements Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/barcode/decoderparams/UpcE;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public addon2:Lcom/cipherlab/barcode/decoder/AddonsType;

.field public addon5:Lcom/cipherlab/barcode/decoder/AddonsType;

.field public convertToUpcA:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enable:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public selectionSystemNumber:I

.field public transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public transmitSystemNumber:Lcom/cipherlab/barcode/decoder/Preamble;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 70
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/UpcE$1;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/UpcE$1;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/decoderparams/UpcE;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 12
    sget-object v0, Lcom/cipherlab/barcode/decoder/AddonsType;->IgnoresAddons:Lcom/cipherlab/barcode/decoder/AddonsType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->addon2:Lcom/cipherlab/barcode/decoder/AddonsType;

    .line 13
    sget-object v0, Lcom/cipherlab/barcode/decoder/AddonsType;->IgnoresAddons:Lcom/cipherlab/barcode/decoder/AddonsType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->addon5:Lcom/cipherlab/barcode/decoder/AddonsType;

    .line 14
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 15
    sget-object v0, Lcom/cipherlab/barcode/decoder/Preamble;->SysNumOnly:Lcom/cipherlab/barcode/decoder/Preamble;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->transmitSystemNumber:Lcom/cipherlab/barcode/decoder/Preamble;

    .line 16
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->convertToUpcA:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->selectionSystemNumber:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoderparams/UpcE;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public Compare(Lcom/cipherlab/barcode/decoderparams/UpcE;)Z
    .registers 4

    .line 101
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/UpcE;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_2c

    .line 102
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/UpcE;->addon2:Lcom/cipherlab/barcode/decoder/AddonsType;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->addon2:Lcom/cipherlab/barcode/decoder/AddonsType;

    if-ne v0, v1, :cond_2c

    .line 103
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/UpcE;->addon5:Lcom/cipherlab/barcode/decoder/AddonsType;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->addon5:Lcom/cipherlab/barcode/decoder/AddonsType;

    if-ne v0, v1, :cond_2c

    .line 104
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/UpcE;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_2c

    .line 105
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/UpcE;->transmitSystemNumber:Lcom/cipherlab/barcode/decoder/Preamble;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->transmitSystemNumber:Lcom/cipherlab/barcode/decoder/Preamble;

    if-ne v0, v1, :cond_2c

    .line 106
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/UpcE;->convertToUpcA:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->convertToUpcA:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_2c

    .line 107
    iget p1, p1, Lcom/cipherlab/barcode/decoderparams/UpcE;->selectionSystemNumber:I

    iget v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->selectionSystemNumber:I

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
    sget-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->UpcE:Lcom/cipherlab/barcode/decoder/SymbologyType;

    return-object v0
.end method

.method public SetIneffective()V
    .registers 2

    .line 36
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 37
    sget-object v0, Lcom/cipherlab/barcode/decoder/AddonsType;->NotSupport:Lcom/cipherlab/barcode/decoder/AddonsType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->addon2:Lcom/cipherlab/barcode/decoder/AddonsType;

    .line 38
    sget-object v0, Lcom/cipherlab/barcode/decoder/AddonsType;->NotSupport:Lcom/cipherlab/barcode/decoder/AddonsType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->addon5:Lcom/cipherlab/barcode/decoder/AddonsType;

    .line 39
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 40
    sget-object v0, Lcom/cipherlab/barcode/decoder/Preamble;->NotSupport:Lcom/cipherlab/barcode/decoder/Preamble;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->transmitSystemNumber:Lcom/cipherlab/barcode/decoder/Preamble;

    .line 41
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->convertToUpcA:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->selectionSystemNumber:I

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/AddonsType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->addon2:Lcom/cipherlab/barcode/decoder/AddonsType;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/AddonsType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->addon5:Lcom/cipherlab/barcode/decoder/AddonsType;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Preamble;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->transmitSystemNumber:Lcom/cipherlab/barcode/decoder/Preamble;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->convertToUpcA:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->selectionSystemNumber:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 54
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 55
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->addon2:Lcom/cipherlab/barcode/decoder/AddonsType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 56
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->addon5:Lcom/cipherlab/barcode/decoder/AddonsType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 57
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 58
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->transmitSystemNumber:Lcom/cipherlab/barcode/decoder/Preamble;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 59
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->convertToUpcA:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 60
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/UpcE;->selectionSystemNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
