.class Lcom/cipherlab/rfid/WorkMode$1;
.super Ljava/lang/Object;
.source "WorkMode.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cipherlab/rfid/WorkMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/cipherlab/rfid/WorkMode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cipherlab/rfid/WorkMode;
    .registers 2

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Lcom/cipherlab/rfid/WorkMode;->valueOf(I)Lcom/cipherlab/rfid/WorkMode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/cipherlab/rfid/WorkMode$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cipherlab/rfid/WorkMode;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/cipherlab/rfid/WorkMode;
    .registers 2

    .line 54
    new-array p1, p1, [Lcom/cipherlab/rfid/WorkMode;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/cipherlab/rfid/WorkMode$1;->newArray(I)[Lcom/cipherlab/rfid/WorkMode;

    move-result-object p1

    return-object p1
.end method