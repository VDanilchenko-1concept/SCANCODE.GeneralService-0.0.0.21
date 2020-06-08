.class public Lcom/cipherlab/barcode/decoderparams/Aztec;
.super Ljava/lang/Object;
.source "Aztec.java"

# interfaces
.implements Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/barcode/decoderparams/Aztec;",
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

    .line 54
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/Aztec$1;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/Aztec$1;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/decoderparams/Aztec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Aztec;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 13
    sget-object v0, Lcom/cipherlab/barcode/decoder/MirrorImage;->NotSupport:Lcom/cipherlab/barcode/decoder/MirrorImage;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Aztec;->mirrorImage:Lcom/cipherlab/barcode/decoder/MirrorImage;

    .line 14
    sget-object v0, Lcom/cipherlab/barcode/decoder/InverseType;->NotSupport:Lcom/cipherlab/barcode/decoder/InverseType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Aztec;->inverseType:Lcom/cipherlab/barcode/decoder/InverseType;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoderparams/Aztec;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public Compare(Lcom/cipherlab/barcode/decoderparams/Aztec;)Z
    .registers 4

    .line 79
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Aztec;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Aztec;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_14

    .line 80
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Aztec;->mirrorImage:Lcom/cipherlab/barcode/decoder/MirrorImage;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Aztec;->mirrorImage:Lcom/cipherlab/barcode/decoder/MirrorImage;

    if-ne v0, v1, :cond_14

    .line 81
    iget-object p1, p1, Lcom/cipherlab/barcode/decoderparams/Aztec;->inverseType:Lcom/cipherlab/barcode/decoder/InverseType;

    iget-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Aztec;->inverseType:Lcom/cipherlab/barcode/decoder/InverseType;

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
    sget-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Aztec:Lcom/cipherlab/barcode/decoder/SymbologyType;

    return-object v0
.end method

.method public SetIneffective()V
    .registers 2

    .line 30
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Aztec;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 31
    sget-object v0, Lcom/cipherlab/barcode/decoder/MirrorImage;->NotSupport:Lcom/cipherlab/barcode/decoder/MirrorImage;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Aztec;->mirrorImage:Lcom/cipherlab/barcode/decoder/MirrorImage;

    .line 32
    sget-object v0, Lcom/cipherlab/barcode/decoder/InverseType;->NotSupport:Lcom/cipherlab/barcode/decoder/InverseType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Aztec;->inverseType:Lcom/cipherlab/barcode/decoder/InverseType;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Aztec;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/MirrorImage;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Aztec;->mirrorImage:Lcom/cipherlab/barcode/decoder/MirrorImage;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoder/InverseType;

    iput-object p1, p0, Lcom/cipherlab/barcode/decoderparams/Aztec;->inverseType:Lcom/cipherlab/barcode/decoder/InverseType;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 44
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Aztec;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 45
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Aztec;->mirrorImage:Lcom/cipherlab/barcode/decoder/MirrorImage;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 46
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Aztec;->inverseType:Lcom/cipherlab/barcode/decoder/InverseType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
