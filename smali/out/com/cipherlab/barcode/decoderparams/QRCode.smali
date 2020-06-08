.class public Lcom/cipherlab/barcode/decoderparams/QRCode;
.super Ljava/lang/Object;
.source "QRCode.java"

# interfaces
.implements Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/barcode/decoderparams/QRCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public enable:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public inverseType:Lcom/cipherlab/barcode/decoder/InverseType;

.field public mirrorImage:Lcom/cipherlab/barcode/decoder/MirrorImage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/QRCode$1;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/QRCode$1;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/decoderparams/QRCode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/QRCode;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 13
    sget-object v0, Lcom/cipherlab/barcode/decoder/MirrorImage;->NotSupport:Lcom/cipherlab/barcode/decoder/MirrorImage;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/QRCode;->mirrorImage:Lcom/cipherlab/barcode/decoder/MirrorImage;

    .line 14
    sget-object v0, Lcom/cipherlab/barcode/decoder/InverseType;->NotSupport:Lcom/cipherlab/barcode/decoder/InverseType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/QRCode;->inverseType:Lcom/cipherlab/barcode/decoder/InverseType;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoderparams/QRCode;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public Compare(Lcom/cipherlab/barcode/decoderparams/QRCode;)Z
    .registers 4

    .line 83
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/QRCode;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/QRCode;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_14

    .line 84
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/QRCode;->mirrorImage:Lcom/cipherlab/barcode/decoder/MirrorImage;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/QRCode;->mirrorImage:Lcom/cipherlab/barcode/decoder/MirrorImage;

    if-ne v0, v1, :cond_14

    .line 85
    iget-object p1, p1, Lcom/cipherlab/barcode/decoderparams/QRCode;->inverseType:Lcom/cipherlab/barcode/decoder/InverseType;

    iget-object v0, p0, Lcom/cipherlab/barcode/decoderparams/QRCode;->inverseType:Lcom/cipherlab/barcode/decoder/InverseType;

    if-ne p1, v0, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public GetSymbologyType()Lcom/cipherlab/barcode/decoder/SymbologyType;
    .registers 2

    .line 24
    sget-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->QRCode:Lcom/cipherlab/barcode/decoder/SymbologyType;

    return-object v0
.end method

.method public SetIneffective()V
    .registers 2

    .line 30
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/QRCode;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 31
    sget-object v0, Lcom/cipherlab/barcode/decoder/MirrorImage;->NotSupport:Lcom/cipherlab/barcode/decoder/MirrorImage;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/QRCode;->mirrorImage:Lcom/cipherlab/barcode/decoder/MirrorImage;

    .line 32
    sget-object v0, Lcom/cipherlab/barcode/decoder/InverseType;->NotSupport:Lcom/cipherlab/barcode/decoder/InverseType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/QRCode;->inverseType:Lcom/cipherlab/barcode/decoder/InverseType;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/QRCode;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/MirrorImage;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/QRCode;->mirrorImage:Lcom/cipherlab/barcode/decoder/MirrorImage;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoder/InverseType;

    iput-object p1, p0, Lcom/cipherlab/barcode/decoderparams/QRCode;->inverseType:Lcom/cipherlab/barcode/decoder/InverseType;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 44
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/QRCode;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 45
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/QRCode;->mirrorImage:Lcom/cipherlab/barcode/decoder/MirrorImage;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 46
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/QRCode;->inverseType:Lcom/cipherlab/barcode/decoder/InverseType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
