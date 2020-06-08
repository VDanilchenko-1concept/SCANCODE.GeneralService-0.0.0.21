.class public Lcom/cipherlab/barcode/decoderparams/ISBT128;
.super Ljava/lang/Object;
.source "ISBT128.java"

# interfaces
.implements Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/barcode/decoderparams/ISBT128;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public concatenation:Lcom/cipherlab/barcode/decoder/ISBTConcatenationType;

.field public concatenationRedundancy:I

.field public enable:Lcom/cipherlab/barcode/decoder/Enable_State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/ISBT128$1;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/ISBT128$1;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/decoderparams/ISBT128;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ISBT128;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 14
    sget-object v0, Lcom/cipherlab/barcode/decoder/ISBTConcatenationType;->Auto:Lcom/cipherlab/barcode/decoder/ISBTConcatenationType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ISBT128;->concatenation:Lcom/cipherlab/barcode/decoder/ISBTConcatenationType;

    const/16 v0, 0xa

    .line 15
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/ISBT128;->concatenationRedundancy:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoderparams/ISBT128;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public Compare(Lcom/cipherlab/barcode/decoderparams/ISBT128;)Z
    .registers 4

    .line 84
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/ISBT128;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/ISBT128;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_14

    .line 85
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/ISBT128;->concatenation:Lcom/cipherlab/barcode/decoder/ISBTConcatenationType;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/ISBT128;->concatenation:Lcom/cipherlab/barcode/decoder/ISBTConcatenationType;

    if-ne v0, v1, :cond_14

    .line 86
    iget p1, p1, Lcom/cipherlab/barcode/decoderparams/ISBT128;->concatenationRedundancy:I

    iget v0, p0, Lcom/cipherlab/barcode/decoderparams/ISBT128;->concatenationRedundancy:I

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

    .line 25
    sget-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->ISBT128:Lcom/cipherlab/barcode/decoder/SymbologyType;

    return-object v0
.end method

.method public SetIneffective()V
    .registers 2

    .line 31
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ISBT128;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 32
    sget-object v0, Lcom/cipherlab/barcode/decoder/ISBTConcatenationType;->NotSupport:Lcom/cipherlab/barcode/decoder/ISBTConcatenationType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ISBT128;->concatenation:Lcom/cipherlab/barcode/decoder/ISBTConcatenationType;

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/ISBT128;->concatenationRedundancy:I

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ISBT128;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/ISBTConcatenationType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ISBT128;->concatenation:Lcom/cipherlab/barcode/decoder/ISBTConcatenationType;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/cipherlab/barcode/decoderparams/ISBT128;->concatenationRedundancy:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 45
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/ISBT128;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 46
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/ISBT128;->concatenation:Lcom/cipherlab/barcode/decoder/ISBTConcatenationType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 47
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/ISBT128;->concatenationRedundancy:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
