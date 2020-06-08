.class public Lcom/cipherlab/barcode/decoderparams/MRZ;
.super Ljava/lang/Object;
.source "MRZ.java"

# interfaces
.implements Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/barcode/decoderparams/MRZ;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public enable:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public mode:Lcom/cipherlab/barcode/decoder/MRZMode;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/MRZ$1;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/MRZ$1;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/decoderparams/MRZ;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/MRZ;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 15
    sget-object v0, Lcom/cipherlab/barcode/decoder/MRZMode;->ICAO_TravelDocuments:Lcom/cipherlab/barcode/decoder/MRZMode;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/MRZ;->mode:Lcom/cipherlab/barcode/decoder/MRZMode;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoderparams/MRZ;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public Compare(Lcom/cipherlab/barcode/decoderparams/MRZ;)Z
    .registers 4

    .line 78
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/MRZ;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/MRZ;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_e

    .line 79
    iget-object p1, p1, Lcom/cipherlab/barcode/decoderparams/MRZ;->mode:Lcom/cipherlab/barcode/decoder/MRZMode;

    iget-object v0, p0, Lcom/cipherlab/barcode/decoderparams/MRZ;->mode:Lcom/cipherlab/barcode/decoder/MRZMode;

    if-ne p1, v0, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public GetSymbologyType()Lcom/cipherlab/barcode/decoder/SymbologyType;
    .registers 2

    .line 23
    sget-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->MRZ:Lcom/cipherlab/barcode/decoder/SymbologyType;

    return-object v0
.end method

.method public SetIneffective()V
    .registers 2

    .line 28
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/MRZ;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 29
    sget-object v0, Lcom/cipherlab/barcode/decoder/MRZMode;->NotSupport:Lcom/cipherlab/barcode/decoder/MRZMode;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/MRZ;->mode:Lcom/cipherlab/barcode/decoder/MRZMode;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/MRZ;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoder/MRZMode;

    iput-object p1, p0, Lcom/cipherlab/barcode/decoderparams/MRZ;->mode:Lcom/cipherlab/barcode/decoder/MRZMode;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 41
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/MRZ;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 42
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/MRZ;->mode:Lcom/cipherlab/barcode/decoder/MRZMode;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
