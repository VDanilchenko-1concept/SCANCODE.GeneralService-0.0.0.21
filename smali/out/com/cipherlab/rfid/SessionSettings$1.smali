.class Lcom/cipherlab/rfid/SessionSettings$1;
.super Ljava/lang/Object;
.source "SessionSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cipherlab/rfid/SessionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/cipherlab/rfid/SessionSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cipherlab/rfid/SessionSettings;
    .registers 2

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Lcom/cipherlab/rfid/SessionSettings;->valueOf(I)Lcom/cipherlab/rfid/SessionSettings;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/cipherlab/rfid/SessionSettings$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cipherlab/rfid/SessionSettings;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/cipherlab/rfid/SessionSettings;
    .registers 2

    .line 44
    new-array p1, p1, [Lcom/cipherlab/rfid/SessionSettings;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/cipherlab/rfid/SessionSettings$1;->newArray(I)[Lcom/cipherlab/rfid/SessionSettings;

    move-result-object p1

    return-object p1
.end method
