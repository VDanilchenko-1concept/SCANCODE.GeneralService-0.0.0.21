.class public Lcom/cipherlab/rfid/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/rfid/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public KernelVersion:Ljava/lang/String;

.field public RFIDModuleVersion:Ljava/lang/String;

.field public Region:Ljava/lang/String;

.field public SerialNumber:Ljava/lang/String;

.field public UserVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Lcom/cipherlab/rfid/DeviceInfo$1;

    invoke-direct {v0}, Lcom/cipherlab/rfid/DeviceInfo$1;-><init>()V

    sput-object v0, Lcom/cipherlab/rfid/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lcom/cipherlab/rfid/DeviceInfo;->SerialNumber:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/cipherlab/rfid/DeviceInfo;->Region:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/cipherlab/rfid/DeviceInfo;->KernelVersion:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/cipherlab/rfid/DeviceInfo;->UserVersion:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/cipherlab/rfid/DeviceInfo;->RFIDModuleVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/cipherlab/rfid/DeviceInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public SetIneffective()V
    .registers 2

    const-string v0, ""

    .line 44
    iput-object v0, p0, Lcom/cipherlab/rfid/DeviceInfo;->SerialNumber:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/cipherlab/rfid/DeviceInfo;->Region:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/cipherlab/rfid/DeviceInfo;->KernelVersion:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/cipherlab/rfid/DeviceInfo;->UserVersion:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/cipherlab/rfid/DeviceInfo;->RFIDModuleVersion:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cipherlab/rfid/DeviceInfo;->SerialNumber:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cipherlab/rfid/DeviceInfo;->Region:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cipherlab/rfid/DeviceInfo;->KernelVersion:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cipherlab/rfid/DeviceInfo;->UserVersion:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cipherlab/rfid/DeviceInfo;->RFIDModuleVersion:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 30
    iget-object p2, p0, Lcom/cipherlab/rfid/DeviceInfo;->SerialNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object p2, p0, Lcom/cipherlab/rfid/DeviceInfo;->Region:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object p2, p0, Lcom/cipherlab/rfid/DeviceInfo;->KernelVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lcom/cipherlab/rfid/DeviceInfo;->UserVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lcom/cipherlab/rfid/DeviceInfo;->RFIDModuleVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
