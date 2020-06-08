.class public Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;
.super Ljava/lang/Object;
.source "GS1DataBarExpanded.java"

# interfaces
.implements Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public enable:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public fieldSeparator:Ljava/lang/String;

.field public securityLevel:I

.field public selectionCodeID:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded$1;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded$1;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->fieldSeparator:Ljava/lang/String;

    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->securityLevel:I

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->selectionCodeID:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public Compare(Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;)Z
    .registers 4

    .line 88
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_1e

    .line 89
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->fieldSeparator:Ljava/lang/String;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->fieldSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 90
    iget v0, p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->securityLevel:I

    iget v1, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->securityLevel:I

    if-ne v0, v1, :cond_1e

    .line 91
    iget p1, p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->selectionCodeID:I

    iget v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->selectionCodeID:I

    if-ne p1, v0, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method public GetSymbologyType()Lcom/cipherlab/barcode/decoder/SymbologyType;
    .registers 2

    .line 27
    sget-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->GS1DataBarExpanded:Lcom/cipherlab/barcode/decoder/SymbologyType;

    return-object v0
.end method

.method public SetIneffective()V
    .registers 2

    .line 33
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    const-string v0, ""

    .line 34
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->fieldSeparator:Ljava/lang/String;

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->securityLevel:I

    .line 36
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->selectionCodeID:I

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

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->fieldSeparator:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->securityLevel:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->selectionCodeID:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 49
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 50
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->fieldSeparator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->securityLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->selectionCodeID:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
