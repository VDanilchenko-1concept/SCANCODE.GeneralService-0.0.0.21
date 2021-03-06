.class public Lcom/cipherlab/barcode/decoderparams/Code128;
.super Ljava/lang/Object;
.source "Code128.java"

# interfaces
.implements Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/barcode/decoderparams/Code128;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public enable:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public length1:I

.field public length2:I

.field public securitylevel:Lcom/cipherlab/barcode/decoder/Code128SecurityLevel;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/Code128$1;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/Code128$1;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/decoderparams/Code128;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code128;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 11
    sget-object v0, Lcom/cipherlab/barcode/decoder/Code128SecurityLevel;->High:Lcom/cipherlab/barcode/decoder/Code128SecurityLevel;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code128;->securitylevel:Lcom/cipherlab/barcode/decoder/Code128SecurityLevel;

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Code128;->length1:I

    const/16 v0, 0x37

    .line 13
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Code128;->length2:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoderparams/Code128;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public Compare(Lcom/cipherlab/barcode/decoderparams/Code128;)Z
    .registers 4

    .line 85
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Code128;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Code128;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_1a

    .line 86
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/Code128;->securitylevel:Lcom/cipherlab/barcode/decoder/Code128SecurityLevel;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/Code128;->securitylevel:Lcom/cipherlab/barcode/decoder/Code128SecurityLevel;

    if-ne v0, v1, :cond_1a

    .line 87
    iget v0, p1, Lcom/cipherlab/barcode/decoderparams/Code128;->length1:I

    iget v1, p0, Lcom/cipherlab/barcode/decoderparams/Code128;->length1:I

    if-ne v0, v1, :cond_1a

    .line 88
    iget p1, p1, Lcom/cipherlab/barcode/decoderparams/Code128;->length2:I

    iget v0, p0, Lcom/cipherlab/barcode/decoderparams/Code128;->length2:I

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
    sget-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Code128:Lcom/cipherlab/barcode/decoder/SymbologyType;

    return-object v0
.end method

.method public SetIneffective()V
    .registers 2

    .line 30
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code128;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 31
    sget-object v0, Lcom/cipherlab/barcode/decoder/Code128SecurityLevel;->NotSupport:Lcom/cipherlab/barcode/decoder/Code128SecurityLevel;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code128;->securitylevel:Lcom/cipherlab/barcode/decoder/Code128SecurityLevel;

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Code128;->length1:I

    .line 33
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Code128;->length2:I

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

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code128;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Code128SecurityLevel;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Code128;->securitylevel:Lcom/cipherlab/barcode/decoder/Code128SecurityLevel;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/Code128;->length1:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/cipherlab/barcode/decoderparams/Code128;->length2:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 46
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Code128;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 47
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/Code128;->securitylevel:Lcom/cipherlab/barcode/decoder/Code128SecurityLevel;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 48
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/Code128;->length1:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/Code128;->length2:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
