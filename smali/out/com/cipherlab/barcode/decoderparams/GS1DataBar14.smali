.class public Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;
.super Ljava/lang/Object;
.source "GS1DataBar14.java"

# interfaces
.implements Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public convertToUpcEan:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enable:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public securityLevel:I

.field public selectionCodeID:I

.field public transmitApplicationId:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 69
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14$1;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14$1;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 12
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->convertToUpcEan:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->securityLevel:I

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->selectionCodeID:I

    .line 15
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 16
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->transmitApplicationId:Lcom/cipherlab/barcode/decoder/Enable_State;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public Compare(Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;)Z
    .registers 4

    .line 98
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_26

    .line 99
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->convertToUpcEan:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->convertToUpcEan:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_26

    .line 100
    iget v0, p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->securityLevel:I

    iget v1, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->securityLevel:I

    if-ne v0, v1, :cond_26

    .line 101
    iget v0, p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->selectionCodeID:I

    iget v1, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->selectionCodeID:I

    if-ne v0, v1, :cond_26

    .line 102
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_26

    .line 103
    iget-object p1, p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->transmitApplicationId:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->transmitApplicationId:Lcom/cipherlab/barcode/decoder/Enable_State;

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

    .line 31
    sget-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->GS1DataBar14:Lcom/cipherlab/barcode/decoder/SymbologyType;

    return-object v0
.end method

.method public SetIneffective()V
    .registers 2

    .line 37
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 38
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->convertToUpcEan:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->securityLevel:I

    .line 40
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->selectionCodeID:I

    .line 41
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 42
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->transmitApplicationId:Lcom/cipherlab/barcode/decoder/Enable_State;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->convertToUpcEan:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->securityLevel:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->selectionCodeID:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object p1, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->transmitApplicationId:Lcom/cipherlab/barcode/decoder/Enable_State;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 55
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 56
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->convertToUpcEan:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 57
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->securityLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->selectionCodeID:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 60
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->transmitApplicationId:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
