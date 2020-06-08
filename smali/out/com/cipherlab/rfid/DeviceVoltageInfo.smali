.class public Lcom/cipherlab/rfid/DeviceVoltageInfo;
.super Ljava/lang/Object;
.source "DeviceVoltageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/rfid/DeviceVoltageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ChargeStatus:I

.field public Percentage:I

.field public Voltage:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Lcom/cipherlab/rfid/DeviceVoltageInfo$1;

    invoke-direct {v0}, Lcom/cipherlab/rfid/DeviceVoltageInfo$1;-><init>()V

    sput-object v0, Lcom/cipherlab/rfid/DeviceVoltageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/cipherlab/rfid/DeviceVoltageInfo;->Percentage:I

    const-wide/16 v1, 0x0

    .line 11
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/cipherlab/rfid/DeviceVoltageInfo;->Voltage:Ljava/lang/Double;

    .line 12
    iput v0, p0, Lcom/cipherlab/rfid/DeviceVoltageInfo;->ChargeStatus:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lcom/cipherlab/rfid/DeviceVoltageInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public SetIneffective()V
    .registers 4

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/cipherlab/rfid/DeviceVoltageInfo;->Percentage:I

    const-wide/16 v1, 0x0

    .line 39
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/cipherlab/rfid/DeviceVoltageInfo;->Voltage:Ljava/lang/Double;

    .line 40
    iput v0, p0, Lcom/cipherlab/rfid/DeviceVoltageInfo;->ChargeStatus:I

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/rfid/DeviceVoltageInfo;->Percentage:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/cipherlab/rfid/DeviceVoltageInfo;->Voltage:Ljava/lang/Double;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/cipherlab/rfid/DeviceVoltageInfo;->ChargeStatus:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 26
    iget p2, p0, Lcom/cipherlab/rfid/DeviceVoltageInfo;->Percentage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget-object p2, p0, Lcom/cipherlab/rfid/DeviceVoltageInfo;->Voltage:Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 28
    iget p2, p0, Lcom/cipherlab/rfid/DeviceVoltageInfo;->ChargeStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
