.class public Lcom/cipherlab/barcode/decoderparams/UpcE1;
.super Ljava/lang/Object;
.source "UpcE1.java"

# interfaces
.implements Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/barcode/decoderparams/UpcE1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public addon2:Lcom/cipherlab/barcode/decoder/AddonsType;

.field public addon5:Lcom/cipherlab/barcode/decoder/AddonsType;

.field public convertToUpcA:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enable:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public transmitSystemNumber:Lcom/cipherlab/barcode/decoder/Preamble;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/UpcE1$1;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/UpcE1$1;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/decoderparams/UpcE1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE1;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 12
    sget-object v0, Lcom/cipherlab/barcode/decoder/AddonsType;->IgnoresAddons:Lcom/cipherlab/barcode/decoder/AddonsType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE1;->addon2:Lcom/cipherlab/barcode/decoder/AddonsType;

    .line 13
    sget-object v0, Lcom/cipherlab/barcode/decoder/AddonsType;->IgnoresAddons:Lcom/cipherlab/barcode/decoder/AddonsType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE1;->addon5:Lcom/cipherlab/barcode/decoder/AddonsType;

    .line 14
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE1;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 15
    sget-object v0, Lcom/cipherlab/barcode/decoder/Preamble;->SysNumOnly:Lcom/cipherlab/barcode/decoder/Preamble;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE1;->transmitSystemNumber:Lcom/cipherlab/barcode/decoder/Preamble;

    .line 16
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE1;->convertToUpcA:Lcom/cipherlab/barcode/decoder/Enable_State;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoderparams/UpcE1;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public Compare(Lcom/cipherlab/barcode/decoderparams/UpcE1;)Z
    .registers 4

    .line 96
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/UpcE1;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UpcE1;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_26

    .line 97
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/UpcE1;->addon2:Lcom/cipherlab/barcode/decoder/AddonsType;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UpcE1;->addon2:Lcom/cipherlab/barcode/decoder/AddonsType;

    if-ne v0, v1, :cond_26

    .line 98
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/UpcE1;->addon5:Lcom/cipherlab/barcode/decoder/AddonsType;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UpcE1;->addon5:Lcom/cipherlab/barcode/decoder/AddonsType;

    if-ne v0, v1, :cond_26

    .line 99
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/UpcE1;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UpcE1;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_26

    .line 100
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/UpcE1;->transmitSystemNumber:Lcom/cipherlab/barcode/decoder/Preamble;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UpcE1;->transmitSystemNumber:Lcom/cipherlab/barcode/decoder/Preamble;

    if-ne v0, v1, :cond_26

    .line 101
    iget-object p1, p1, Lcom/cipherlab/barcode/decoderparams/UpcE1;->convertToUpcA:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE1;->convertToUpcA:Lcom/cipherlab/barcode/decoder/Enable_State;

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
    sget-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->UpcE1:Lcom/cipherlab/barcode/decoder/SymbologyType;

    return-object v0
.end method

.method public SetIneffective()V
    .registers 2

    .line 33
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE1;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 34
    sget-object v0, Lcom/cipherlab/barcode/decoder/AddonsType;->NotSupport:Lcom/cipherlab/barcode/decoder/AddonsType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE1;->addon2:Lcom/cipherlab/barcode/decoder/AddonsType;

    .line 35
    sget-object v0, Lcom/cipherlab/barcode/decoder/AddonsType;->NotSupport:Lcom/cipherlab/barcode/decoder/AddonsType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE1;->addon5:Lcom/cipherlab/barcode/decoder/AddonsType;

    .line 36
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE1;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 37
    sget-object v0, Lcom/cipherlab/barcode/decoder/Preamble;->NotSupport:Lcom/cipherlab/barcode/decoder/Preamble;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE1;->transmitSystemNumber:Lcom/cipherlab/barcode/decoder/Preamble;

    .line 38
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE1;->convertToUpcA:Lcom/cipherlab/barcode/decoder/Enable_State;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE1;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/AddonsType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE1;->addon2:Lcom/cipherlab/barcode/decoder/AddonsType;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/AddonsType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE1;->addon5:Lcom/cipherlab/barcode/decoder/AddonsType;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE1;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Preamble;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UpcE1;->transmitSystemNumber:Lcom/cipherlab/barcode/decoder/Preamble;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object p1, p0, Lcom/cipherlab/barcode/decoderparams/UpcE1;->convertToUpcA:Lcom/cipherlab/barcode/decoder/Enable_State;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 51
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/UpcE1;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 52
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/UpcE1;->addon2:Lcom/cipherlab/barcode/decoder/AddonsType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 53
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/UpcE1;->addon5:Lcom/cipherlab/barcode/decoder/AddonsType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 54
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/UpcE1;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 55
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/UpcE1;->transmitSystemNumber:Lcom/cipherlab/barcode/decoder/Preamble;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 56
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/UpcE1;->convertToUpcA:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
