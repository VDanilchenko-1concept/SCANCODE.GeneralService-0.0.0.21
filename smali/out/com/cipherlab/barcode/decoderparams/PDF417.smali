.class public Lcom/cipherlab/barcode/decoderparams/PDF417;
.super Ljava/lang/Object;
.source "PDF417.java"

# interfaces
.implements Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/barcode/decoderparams/PDF417;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public enable:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public escapeCharacter:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public transmitControlHeader:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public transmitMode:Lcom/cipherlab/barcode/decoder/TransmitMode;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/PDF417$1;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/PDF417$1;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/decoderparams/PDF417;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/PDF417;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 13
    sget-object v0, Lcom/cipherlab/barcode/decoder/TransmitMode;->PassthroughAllSymbols:Lcom/cipherlab/barcode/decoder/TransmitMode;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/PDF417;->transmitMode:Lcom/cipherlab/barcode/decoder/TransmitMode;

    .line 14
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/PDF417;->escapeCharacter:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 15
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/PDF417;->transmitControlHeader:Lcom/cipherlab/barcode/decoder/Enable_State;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoderparams/PDF417;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public Compare(Lcom/cipherlab/barcode/decoderparams/PDF417;)Z
    .registers 4

    .line 89
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/PDF417;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/PDF417;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_1a

    .line 90
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/PDF417;->transmitMode:Lcom/cipherlab/barcode/decoder/TransmitMode;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/PDF417;->transmitMode:Lcom/cipherlab/barcode/decoder/TransmitMode;

    if-ne v0, v1, :cond_1a

    .line 91
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/PDF417;->escapeCharacter:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/PDF417;->escapeCharacter:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_1a

    .line 92
    iget-object p1, p1, Lcom/cipherlab/barcode/decoderparams/PDF417;->transmitControlHeader:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v0, p0, Lcom/cipherlab/barcode/decoderparams/PDF417;->transmitControlHeader:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne p1, v0, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method public GetSymbologyType()Lcom/cipherlab/barcode/decoder/SymbologyType;
    .registers 2

    .line 26
    sget-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->PDF417:Lcom/cipherlab/barcode/decoder/SymbologyType;

    return-object v0
.end method

.method public SetIneffective()V
    .registers 2

    .line 32
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/PDF417;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 33
    sget-object v0, Lcom/cipherlab/barcode/decoder/TransmitMode;->NotSupport:Lcom/cipherlab/barcode/decoder/TransmitMode;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/PDF417;->transmitMode:Lcom/cipherlab/barcode/decoder/TransmitMode;

    .line 34
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/PDF417;->escapeCharacter:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 35
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/PDF417;->transmitControlHeader:Lcom/cipherlab/barcode/decoder/Enable_State;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/PDF417;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/TransmitMode;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/PDF417;->transmitMode:Lcom/cipherlab/barcode/decoder/TransmitMode;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/PDF417;->escapeCharacter:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object p1, p0, Lcom/cipherlab/barcode/decoderparams/PDF417;->transmitControlHeader:Lcom/cipherlab/barcode/decoder/Enable_State;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 47
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/PDF417;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 48
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/PDF417;->transmitMode:Lcom/cipherlab/barcode/decoder/TransmitMode;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 49
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/PDF417;->escapeCharacter:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 50
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/PDF417;->transmitControlHeader:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
