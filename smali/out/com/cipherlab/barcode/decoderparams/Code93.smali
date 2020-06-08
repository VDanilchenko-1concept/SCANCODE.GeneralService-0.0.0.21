.class public Lcom/cipherlab/barcode/decoderparams/Code93;
.super Ljava/lang/Object;
.source "Code93.java"

# interfaces
.implements Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/barcode/decoderparams/Code93;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public enable:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public length1:I

.field public length2:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/Code93$1;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/Code93$1;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/decoderparams/Code93;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code93;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/4 v0, 0x4

    .line 12
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Code93;->length1:I

    const/16 v0, 0x37

    .line 13
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Code93;->length2:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoderparams/Code93;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public Compare(Lcom/cipherlab/barcode/decoderparams/Code93;)Z
    .registers 4

    .line 77
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Code93;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Code93;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_14

    .line 78
    iget v0, p1, Lcom/cipherlab/barcode/decoderparams/Code93;->length1:I

    iget v1, p0, Lcom/cipherlab/barcode/decoderparams/Code93;->length1:I

    if-ne v0, v1, :cond_14

    .line 79
    iget p1, p1, Lcom/cipherlab/barcode/decoderparams/Code93;->length2:I

    iget v0, p0, Lcom/cipherlab/barcode/decoderparams/Code93;->length2:I

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

    .line 23
    sget-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Code93:Lcom/cipherlab/barcode/decoder/SymbologyType;

    return-object v0
.end method

.method public SetIneffective()V
    .registers 2

    .line 28
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code93;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Code93;->length1:I

    .line 30
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Code93;->length2:I

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code93;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Code93;->length1:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/cipherlab/barcode/decoderparams/Code93;->length2:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 42
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Code93;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 43
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/Code93;->length1:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/Code93;->length2:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
