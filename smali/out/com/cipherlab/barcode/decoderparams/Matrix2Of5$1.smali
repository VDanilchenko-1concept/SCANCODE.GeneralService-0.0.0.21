.class Lcom/cipherlab/barcode/decoderparams/Matrix2Of5$1;
.super Ljava/lang/Object;
.source "Matrix2Of5.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;
    .registers 3

    .line 76
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;

    invoke-direct {v0, p1}, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;
    .registers 2

    .line 81
    new-array p1, p1, [Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5$1;->newArray(I)[Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;

    move-result-object p1

    return-object p1
.end method