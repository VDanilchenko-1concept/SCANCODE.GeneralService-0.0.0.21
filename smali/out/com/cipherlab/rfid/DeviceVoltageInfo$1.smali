.class Lcom/cipherlab/rfid/DeviceVoltageInfo$1;
.super Ljava/lang/Object;
.source "DeviceVoltageInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cipherlab/rfid/DeviceVoltageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/cipherlab/rfid/DeviceVoltageInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cipherlab/rfid/DeviceVoltageInfo;
    .registers 3

    .line 48
    new-instance v0, Lcom/cipherlab/rfid/DeviceVoltageInfo;

    invoke-direct {v0, p1}, Lcom/cipherlab/rfid/DeviceVoltageInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/cipherlab/rfid/DeviceVoltageInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cipherlab/rfid/DeviceVoltageInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/cipherlab/rfid/DeviceVoltageInfo;
    .registers 2

    .line 53
    new-array p1, p1, [Lcom/cipherlab/rfid/DeviceVoltageInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/cipherlab/rfid/DeviceVoltageInfo$1;->newArray(I)[Lcom/cipherlab/rfid/DeviceVoltageInfo;

    move-result-object p1

    return-object p1
.end method
