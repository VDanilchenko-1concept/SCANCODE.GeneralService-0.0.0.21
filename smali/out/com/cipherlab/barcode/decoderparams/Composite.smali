.class public Lcom/cipherlab/barcode/decoderparams/Composite;
.super Ljava/lang/Object;
.source "Composite.java"

# interfaces
.implements Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/barcode/decoderparams/Composite;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public enableCc_AB:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableCc_C:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableEmulationMode:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableTlc39:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableUpcMode:Lcom/cipherlab/barcode/decoder/UpcMode;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/Composite$1;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/Composite$1;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/decoderparams/Composite;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Composite;->enableCc_C:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 11
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Composite;->enableCc_AB:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 12
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Composite;->enableTlc39:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 13
    sget-object v0, Lcom/cipherlab/barcode/decoder/UpcMode;->AlwaysLinksUPC:Lcom/cipherlab/barcode/decoder/UpcMode;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Composite;->enableUpcMode:Lcom/cipherlab/barcode/decoder/UpcMode;

    .line 14
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Composite;->enableEmulationMode:Lcom/cipherlab/barcode/decoder/Enable_State;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoderparams/Composite;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public Compare(Lcom/cipherlab/barcode/decoderparams/Composite;)Z
    .registers 4

    .line 86
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Composite;->enableCc_C:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Composite;->enableCc_C:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_20

    .line 87
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Composite;->enableCc_AB:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Composite;->enableCc_AB:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_20

    .line 88
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Composite;->enableTlc39:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Composite;->enableTlc39:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_20

    .line 89
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Composite;->enableUpcMode:Lcom/cipherlab/barcode/decoder/UpcMode;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Composite;->enableUpcMode:Lcom/cipherlab/barcode/decoder/UpcMode;

    if-ne v0, v1, :cond_20

    .line 90
    iget-object p1, p1, Lcom/cipherlab/barcode/decoderparams/Composite;->enableEmulationMode:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Composite;->enableEmulationMode:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne p1, v0, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    return p1
.end method

.method public GetSymbologyType()Lcom/cipherlab/barcode/decoder/SymbologyType;
    .registers 2

    .line 27
    sget-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Composite:Lcom/cipherlab/barcode/decoder/SymbologyType;

    return-object v0
.end method

.method public SetIneffective()V
    .registers 2

    .line 32
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Composite;->enableCc_C:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 33
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Composite;->enableCc_AB:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 34
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Composite;->enableTlc39:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 35
    sget-object v0, Lcom/cipherlab/barcode/decoder/UpcMode;->NotSupport:Lcom/cipherlab/barcode/decoder/UpcMode;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Composite;->enableUpcMode:Lcom/cipherlab/barcode/decoder/UpcMode;

    .line 36
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Composite;->enableEmulationMode:Lcom/cipherlab/barcode/decoder/Enable_State;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Composite;->enableCc_C:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Composite;->enableCc_AB:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Composite;->enableTlc39:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/UpcMode;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Composite;->enableUpcMode:Lcom/cipherlab/barcode/decoder/UpcMode;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object p1, p0, Lcom/cipherlab/barcode/decoderparams/Composite;->enableEmulationMode:Lcom/cipherlab/barcode/decoder/Enable_State;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 47
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Composite;->enableCc_C:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 48
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Composite;->enableCc_AB:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 49
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Composite;->enableTlc39:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 50
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Composite;->enableUpcMode:Lcom/cipherlab/barcode/decoder/UpcMode;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 51
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Composite;->enableEmulationMode:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
