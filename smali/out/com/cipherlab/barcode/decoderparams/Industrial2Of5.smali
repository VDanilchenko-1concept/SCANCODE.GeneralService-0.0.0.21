.class public Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;
.super Ljava/lang/Object;
.source "Industrial2Of5.java"

# interfaces
.implements Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public enable:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public length1:I

.field public length2:I

.field public startStopSelection:I

.field public transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public verifyCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5$1;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5$1;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/4 v0, 0x4

    .line 14
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->length1:I

    const/16 v0, 0x37

    .line 15
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->length2:I

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->startStopSelection:I

    .line 17
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->verifyCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 18
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public Compare(Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;)Z
    .registers 4

    .line 97
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_26

    .line 98
    iget v0, p1, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->length1:I

    iget v1, p0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->length1:I

    if-ne v0, v1, :cond_26

    .line 99
    iget v0, p1, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->length2:I

    iget v1, p0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->length2:I

    if-ne v0, v1, :cond_26

    .line 100
    iget v0, p1, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->startStopSelection:I

    iget v1, p0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->startStopSelection:I

    if-ne v0, v1, :cond_26

    .line 101
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->verifyCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->verifyCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_26

    .line 102
    iget-object p1, p1, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

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

    .line 41
    sget-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Industrial2Of5:Lcom/cipherlab/barcode/decoder/SymbologyType;

    return-object v0
.end method

.method public SetIneffective()V
    .registers 2

    .line 30
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->length1:I

    .line 32
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->length2:I

    .line 33
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->startStopSelection:I

    .line 34
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->verifyCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 35
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

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

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->length1:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->length2:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->startStopSelection:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->verifyCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object p1, p0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 53
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 54
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->length1:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->length2:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->startStopSelection:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->verifyCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 58
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
