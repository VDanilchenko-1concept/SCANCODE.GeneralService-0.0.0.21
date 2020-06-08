.class public Lcom/cipherlab/barcode/decoderparams/GS1128;
.super Ljava/lang/Object;
.source "GS1128.java"

# interfaces
.implements Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/barcode/decoderparams/GS1128;",
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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/GS1128$1;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/GS1128$1;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/decoderparams/GS1128;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1128;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1128;->fieldSeparator:Ljava/lang/String;

    .line 14
    sget-object v1, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/GS1128;->enableApplicationIdentifier:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 15
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1128;->applicationIdentifierMark1:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1128;->applicationIdentifierMark2:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoderparams/GS1128;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public Compare(Lcom/cipherlab/barcode/decoderparams/GS1128;)Z
    .registers 4

    .line 90
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/GS1128;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/GS1128;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_2c

    .line 91
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/GS1128;->fieldSeparator:Ljava/lang/String;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/GS1128;->fieldSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 92
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/GS1128;->enableApplicationIdentifier:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/GS1128;->enableApplicationIdentifier:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_2c

    .line 93
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/GS1128;->applicationIdentifierMark1:Ljava/lang/String;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/GS1128;->applicationIdentifierMark1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 94
    iget-object p1, p1, Lcom/cipherlab/barcode/decoderparams/GS1128;->applicationIdentifierMark2:Ljava/lang/String;

    iget-object v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1128;->applicationIdentifierMark2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    const/4 p1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p1, 0x0

    :goto_2d
    return p1
.end method

.method public GetSymbologyType()Lcom/cipherlab/barcode/decoder/SymbologyType;
    .registers 2

    .line 28
    sget-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->GS1128:Lcom/cipherlab/barcode/decoder/SymbologyType;

    return-object v0
.end method

.method public SetIneffective()V
    .registers 3

    .line 34
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1128;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    const-string v0, ""

    .line 35
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1128;->fieldSeparator:Ljava/lang/String;

    .line 36
    sget-object v1, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/GS1128;->enableApplicationIdentifier:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 37
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1128;->applicationIdentifierMark1:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1128;->applicationIdentifierMark2:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1128;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1128;->fieldSeparator:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1128;->enableApplicationIdentifier:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/GS1128;->applicationIdentifierMark1:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cipherlab/barcode/decoderparams/GS1128;->applicationIdentifierMark2:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 50
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/GS1128;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 51
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/GS1128;->fieldSeparator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/GS1128;->enableApplicationIdentifier:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 53
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/GS1128;->applicationIdentifierMark1:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/GS1128;->applicationIdentifierMark2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
