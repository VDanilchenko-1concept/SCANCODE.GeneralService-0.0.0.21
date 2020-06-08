.class public Lcom/cipherlab/barcode/decoderparams/ReaderProfile;
.super Ljava/lang/Object;
.source "ReaderProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/barcode/decoderparams/ReaderProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bProfileEnable:Z

.field public sPackage:Ljava/lang/String;

.field public sProfile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/ReaderProfile$1;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile$1;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->sProfile:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->sPackage:Ljava/lang/String;

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->bProfileEnable:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    if-eqz p1, :cond_11

    const-string p1, "Default"

    .line 23
    iput-object p1, p0, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->sProfile:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->sPackage:Ljava/lang/String;

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->bProfileEnable:Z

    goto :goto_18

    .line 29
    :cond_11
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->sProfile:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->sPackage:Ljava/lang/String;

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->bProfileEnable:Z

    :goto_18
    return-void
.end method


# virtual methods
.method public SetIneffective()V
    .registers 2

    const-string v0, ""

    .line 42
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->sProfile:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->sPackage:Ljava/lang/String;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->bProfileEnable:Z

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

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->sProfile:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->sPackage:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->bProfileEnable:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 56
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->sProfile:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 57
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->sPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 58
    iget-boolean p2, p0, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->bProfileEnable:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
