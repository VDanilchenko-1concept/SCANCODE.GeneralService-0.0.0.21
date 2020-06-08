.class public Lcom/cipherlab/barcode/decoderparams/NotificationParams;
.super Ljava/lang/Object;
.source "NotificationParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/barcode/decoderparams/NotificationParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ReaderBeep:Lcom/cipherlab/barcode/decoder/BeepType;

.field public enableVibrator:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public ledDuration:I

.field public vibrationCounter:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/NotificationParams$1;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/NotificationParams$1;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/decoderparams/NotificationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/cipherlab/barcode/decoder/BeepType;->Default:Lcom/cipherlab/barcode/decoder/BeepType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/NotificationParams;->ReaderBeep:Lcom/cipherlab/barcode/decoder/BeepType;

    .line 22
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/NotificationParams;->enableVibrator:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/NotificationParams;->vibrationCounter:I

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/NotificationParams;->ledDuration:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoderparams/NotificationParams;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public SetIneffective()V
    .registers 2

    .line 34
    sget-object v0, Lcom/cipherlab/barcode/decoder/BeepType;->Mute:Lcom/cipherlab/barcode/decoder/BeepType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/NotificationParams;->ReaderBeep:Lcom/cipherlab/barcode/decoder/BeepType;

    .line 35
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/NotificationParams;->enableVibrator:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/NotificationParams;->vibrationCounter:I

    .line 37
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/NotificationParams;->ledDuration:I

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/BeepType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/NotificationParams;->ReaderBeep:Lcom/cipherlab/barcode/decoder/BeepType;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/NotificationParams;->enableVibrator:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/NotificationParams;->vibrationCounter:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/cipherlab/barcode/decoderparams/NotificationParams;->ledDuration:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 50
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/NotificationParams;->ReaderBeep:Lcom/cipherlab/barcode/decoder/BeepType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 51
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/NotificationParams;->enableVibrator:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 52
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/NotificationParams;->vibrationCounter:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/NotificationParams;->ledDuration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
