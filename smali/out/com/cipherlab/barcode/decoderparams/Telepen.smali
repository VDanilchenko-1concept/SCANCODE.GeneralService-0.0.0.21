.class public Lcom/cipherlab/barcode/decoderparams/Telepen;
.super Ljava/lang/Object;
.source "Telepen.java"

# interfaces
.implements Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/barcode/decoderparams/Telepen;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public enable:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public format:Lcom/cipherlab/barcode/decoder/TelepenFormat;

.field public length1:I

.field public length2:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/Telepen$1;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/Telepen$1;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/decoderparams/Telepen;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Telepen;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 12
    sget-object v0, Lcom/cipherlab/barcode/decoder/TelepenFormat;->ASCII:Lcom/cipherlab/barcode/decoder/TelepenFormat;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Telepen;->format:Lcom/cipherlab/barcode/decoder/TelepenFormat;

    const/4 v0, 0x4

    .line 13
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Telepen;->length1:I

    const/16 v0, 0x37

    .line 14
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Telepen;->length2:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoderparams/Telepen;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public Compare(Lcom/cipherlab/barcode/decoderparams/Telepen;)Z
    .registers 4

    .line 80
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Telepen;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Telepen;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_1a

    .line 81
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Telepen;->format:Lcom/cipherlab/barcode/decoder/TelepenFormat;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Telepen;->format:Lcom/cipherlab/barcode/decoder/TelepenFormat;

    if-ne v0, v1, :cond_1a

    .line 82
    iget v0, p1, Lcom/cipherlab/barcode/decoderparams/Telepen;->length1:I

    iget v1, p0, Lcom/cipherlab/barcode/decoderparams/Telepen;->length1:I

    if-ne v0, v1, :cond_1a

    .line 83
    iget p1, p1, Lcom/cipherlab/barcode/decoderparams/Telepen;->length2:I

    iget v0, p0, Lcom/cipherlab/barcode/decoderparams/Telepen;->length2:I

    if-ne p1, v0, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method public GetSymbologyType()Lcom/cipherlab/barcode/decoder/SymbologyType;
    .registers 2

    .line 24
    sget-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Telepen:Lcom/cipherlab/barcode/decoder/SymbologyType;

    return-object v0
.end method

.method public SetIneffective()V
    .registers 2

    .line 29
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Telepen;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 30
    sget-object v0, Lcom/cipherlab/barcode/decoder/TelepenFormat;->NotSupport:Lcom/cipherlab/barcode/decoder/TelepenFormat;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Telepen;->format:Lcom/cipherlab/barcode/decoder/TelepenFormat;

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Telepen;->length1:I

    .line 32
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Telepen;->length2:I

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Telepen;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/TelepenFormat;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Telepen;->format:Lcom/cipherlab/barcode/decoder/TelepenFormat;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Telepen;->length1:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/cipherlab/barcode/decoderparams/Telepen;->length2:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 43
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Telepen;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 44
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Telepen;->format:Lcom/cipherlab/barcode/decoder/TelepenFormat;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 45
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/Telepen;->length1:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/Telepen;->length2:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
