.class public Lcom/cipherlab/barcode/decoderparams/AustralianPostal;
.super Ljava/lang/Object;
.source "AustralianPostal.java"

# interfaces
.implements Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/barcode/decoderparams/AustralianPostal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public enable:Lcom/cipherlab/barcode/decoder/Enable_State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/AustralianPostal$1;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/AustralianPostal$1;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public Compare(Lcom/cipherlab/barcode/decoderparams/AustralianPostal;)Z
    .registers 3

    .line 81
    iget-object p1, p1, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v0, p0, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne p1, v0, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public GetSymbologyType()Lcom/cipherlab/barcode/decoder/SymbologyType;
    .registers 2

    .line 28
    sget-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->AustralianPostal:Lcom/cipherlab/barcode/decoder/SymbologyType;

    return-object v0
.end method

.method public SetIneffective()V
    .registers 2

    .line 34
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 2

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object p1, p0, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 48
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
