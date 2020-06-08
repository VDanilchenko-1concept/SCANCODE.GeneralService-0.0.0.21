.class public Lcom/cipherlab/barcode/decoderparams/DataMatrix;
.super Ljava/lang/Object;
.source "DataMatrix.java"

# interfaces
.implements Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/barcode/decoderparams/DataMatrix;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public applicationIdentifierMark1:Ljava/lang/String;

.field public applicationIdentifierMark2:Ljava/lang/String;

.field public enable:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableApplicationIdentifier:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public fieldSeparator:Ljava/lang/String;

.field public inverseType:Lcom/cipherlab/barcode/decoder/InverseType;

.field public mirrorImage:Lcom/cipherlab/barcode/decoder/MatrixMirrorImage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 72
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/DataMatrix$1;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/DataMatrix$1;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->fieldSeparator:Ljava/lang/String;

    .line 15
    sget-object v1, Lcom/cipherlab/barcode/decoder/MatrixMirrorImage;->Never:Lcom/cipherlab/barcode/decoder/MatrixMirrorImage;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->mirrorImage:Lcom/cipherlab/barcode/decoder/MatrixMirrorImage;

    .line 16
    sget-object v1, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->enableApplicationIdentifier:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 17
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->applicationIdentifierMark1:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->applicationIdentifierMark2:Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/cipherlab/barcode/decoder/InverseType;->NotSupport:Lcom/cipherlab/barcode/decoder/InverseType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->inverseType:Lcom/cipherlab/barcode/decoder/InverseType;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public Compare(Lcom/cipherlab/barcode/decoderparams/DataMatrix;)Z
    .registers 4

    .line 101
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_38

    .line 102
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->fieldSeparator:Ljava/lang/String;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->fieldSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 103
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->mirrorImage:Lcom/cipherlab/barcode/decoder/MatrixMirrorImage;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->mirrorImage:Lcom/cipherlab/barcode/decoder/MatrixMirrorImage;

    if-ne v0, v1, :cond_38

    .line 104
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->enableApplicationIdentifier:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->enableApplicationIdentifier:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_38

    .line 105
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->applicationIdentifierMark1:Ljava/lang/String;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->applicationIdentifierMark1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 106
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->applicationIdentifierMark2:Ljava/lang/String;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->applicationIdentifierMark2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 107
    iget-object p1, p1, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->inverseType:Lcom/cipherlab/barcode/decoder/InverseType;

    iget-object v0, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->inverseType:Lcom/cipherlab/barcode/decoder/InverseType;

    if-ne p1, v0, :cond_38

    const/4 p1, 0x1

    goto :goto_39

    :cond_38
    const/4 p1, 0x0

    :goto_39
    return p1
.end method

.method public GetSymbologyType()Lcom/cipherlab/barcode/decoder/SymbologyType;
    .registers 2

    .line 34
    sget-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->DataMatrix:Lcom/cipherlab/barcode/decoder/SymbologyType;

    return-object v0
.end method

.method public SetIneffective()V
    .registers 3

    .line 40
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    const-string v0, ""

    .line 41
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->fieldSeparator:Ljava/lang/String;

    .line 42
    sget-object v1, Lcom/cipherlab/barcode/decoder/MatrixMirrorImage;->NotSupport:Lcom/cipherlab/barcode/decoder/MatrixMirrorImage;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->mirrorImage:Lcom/cipherlab/barcode/decoder/MatrixMirrorImage;

    .line 43
    sget-object v1, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->enableApplicationIdentifier:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 44
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->applicationIdentifierMark1:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->applicationIdentifierMark2:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/cipherlab/barcode/decoder/InverseType;->NotSupport:Lcom/cipherlab/barcode/decoder/InverseType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->inverseType:Lcom/cipherlab/barcode/decoder/InverseType;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->fieldSeparator:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/MatrixMirrorImage;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->mirrorImage:Lcom/cipherlab/barcode/decoder/MatrixMirrorImage;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->enableApplicationIdentifier:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->applicationIdentifierMark1:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->applicationIdentifierMark2:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoder/InverseType;

    iput-object p1, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->inverseType:Lcom/cipherlab/barcode/decoder/InverseType;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 58
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 59
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->fieldSeparator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->mirrorImage:Lcom/cipherlab/barcode/decoder/MatrixMirrorImage;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 61
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->enableApplicationIdentifier:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 62
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->applicationIdentifierMark1:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->applicationIdentifierMark2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->inverseType:Lcom/cipherlab/barcode/decoder/InverseType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
