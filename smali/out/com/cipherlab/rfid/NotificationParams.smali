.class public Lcom/cipherlab/rfid/NotificationParams;
.super Ljava/lang/Object;
.source "NotificationParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/rfid/NotificationParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public BatteryBeep:Lcom/cipherlab/rfid/Enable_State;

.field public BatteryLED:Lcom/cipherlab/rfid/Enable_State;

.field public ModuleTemperature:Lcom/cipherlab/rfid/Enable_State;

.field public ReaderBeep:Lcom/cipherlab/rfid/BeepType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Lcom/cipherlab/rfid/NotificationParams$1;

    invoke-direct {v0}, Lcom/cipherlab/rfid/NotificationParams$1;-><init>()V

    sput-object v0, Lcom/cipherlab/rfid/NotificationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lcom/cipherlab/rfid/BeepType;->Default:Lcom/cipherlab/rfid/BeepType;

    iput-object v0, p0, Lcom/cipherlab/rfid/NotificationParams;->ReaderBeep:Lcom/cipherlab/rfid/BeepType;

    .line 16
    sget-object v0, Lcom/cipherlab/rfid/Enable_State;->TRUE:Lcom/cipherlab/rfid/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/rfid/NotificationParams;->BatteryLED:Lcom/cipherlab/rfid/Enable_State;

    .line 17
    sget-object v0, Lcom/cipherlab/rfid/Enable_State;->FALSE:Lcom/cipherlab/rfid/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/rfid/NotificationParams;->BatteryBeep:Lcom/cipherlab/rfid/Enable_State;

    .line 18
    sget-object v0, Lcom/cipherlab/rfid/Enable_State;->FALSE:Lcom/cipherlab/rfid/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/rfid/NotificationParams;->ModuleTemperature:Lcom/cipherlab/rfid/Enable_State;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Lcom/cipherlab/rfid/NotificationParams;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public SetIneffective()V
    .registers 2

    .line 28
    sget-object v0, Lcom/cipherlab/rfid/BeepType;->Mute:Lcom/cipherlab/rfid/BeepType;

    iput-object v0, p0, Lcom/cipherlab/rfid/NotificationParams;->ReaderBeep:Lcom/cipherlab/rfid/BeepType;

    .line 29
    sget-object v0, Lcom/cipherlab/rfid/Enable_State;->FALSE:Lcom/cipherlab/rfid/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/rfid/NotificationParams;->BatteryLED:Lcom/cipherlab/rfid/Enable_State;

    .line 30
    sget-object v0, Lcom/cipherlab/rfid/Enable_State;->FALSE:Lcom/cipherlab/rfid/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/rfid/NotificationParams;->BatteryBeep:Lcom/cipherlab/rfid/Enable_State;

    .line 31
    sget-object v0, Lcom/cipherlab/rfid/Enable_State;->FALSE:Lcom/cipherlab/rfid/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/rfid/NotificationParams;->ModuleTemperature:Lcom/cipherlab/rfid/Enable_State;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/rfid/BeepType;

    iput-object v0, p0, Lcom/cipherlab/rfid/NotificationParams;->ReaderBeep:Lcom/cipherlab/rfid/BeepType;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/rfid/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/rfid/NotificationParams;->BatteryLED:Lcom/cipherlab/rfid/Enable_State;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/rfid/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/rfid/NotificationParams;->BatteryBeep:Lcom/cipherlab/rfid/Enable_State;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/rfid/Enable_State;

    iput-object p1, p0, Lcom/cipherlab/rfid/NotificationParams;->ModuleTemperature:Lcom/cipherlab/rfid/Enable_State;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 44
    iget-object p2, p0, Lcom/cipherlab/rfid/NotificationParams;->ReaderBeep:Lcom/cipherlab/rfid/BeepType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 45
    iget-object p2, p0, Lcom/cipherlab/rfid/NotificationParams;->BatteryLED:Lcom/cipherlab/rfid/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 46
    iget-object p2, p0, Lcom/cipherlab/rfid/NotificationParams;->BatteryBeep:Lcom/cipherlab/rfid/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 47
    iget-object p2, p0, Lcom/cipherlab/rfid/NotificationParams;->ModuleTemperature:Lcom/cipherlab/rfid/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
