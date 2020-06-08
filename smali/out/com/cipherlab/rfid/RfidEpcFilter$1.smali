.class Lcom/cipherlab/rfid/RfidEpcFilter$1;
.super Ljava/lang/Object;
.source "RfidEpcFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cipherlab/rfid/RfidEpcFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/cipherlab/rfid/RfidEpcFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cipherlab/rfid/RfidEpcFilter;
    .registers 3

    .line 71
    new-instance v0, Lcom/cipherlab/rfid/RfidEpcFilter;

    invoke-direct {v0, p1}, Lcom/cipherlab/rfid/RfidEpcFilter;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/cipherlab/rfid/RfidEpcFilter$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cipherlab/rfid/RfidEpcFilter;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/cipherlab/rfid/RfidEpcFilter;
    .registers 2

    .line 76
    new-array p1, p1, [Lcom/cipherlab/rfid/RfidEpcFilter;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/cipherlab/rfid/RfidEpcFilter$1;->newArray(I)[Lcom/cipherlab/rfid/RfidEpcFilter;

    move-result-object p1

    return-object p1
.end method
