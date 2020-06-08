.class public Lcom/cipherlab/rfid/Gen2Settings;
.super Ljava/lang/Object;
.source "Gen2Settings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/rfid/Gen2Settings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public InventoryStatus_Action:Lcom/cipherlab/rfid/InventoryStatusSettings;

.field public SL_Flag:Lcom/cipherlab/rfid/SLFlagSettings;

.field public Session:Lcom/cipherlab/rfid/SessionSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Lcom/cipherlab/rfid/Gen2Settings$1;

    invoke-direct {v0}, Lcom/cipherlab/rfid/Gen2Settings$1;-><init>()V

    sput-object v0, Lcom/cipherlab/rfid/Gen2Settings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/cipherlab/rfid/SessionSettings;->S0:Lcom/cipherlab/rfid/SessionSettings;

    iput-object v0, p0, Lcom/cipherlab/rfid/Gen2Settings;->Session:Lcom/cipherlab/rfid/SessionSettings;

    .line 15
    sget-object v0, Lcom/cipherlab/rfid/InventoryStatusSettings;->STATE_A:Lcom/cipherlab/rfid/InventoryStatusSettings;

    iput-object v0, p0, Lcom/cipherlab/rfid/Gen2Settings;->InventoryStatus_Action:Lcom/cipherlab/rfid/InventoryStatusSettings;

    .line 16
    sget-object v0, Lcom/cipherlab/rfid/SLFlagSettings;->All:Lcom/cipherlab/rfid/SLFlagSettings;

    iput-object v0, p0, Lcom/cipherlab/rfid/Gen2Settings;->SL_Flag:Lcom/cipherlab/rfid/SLFlagSettings;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Lcom/cipherlab/rfid/Gen2Settings;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public SetIneffective()V
    .registers 2

    .line 39
    sget-object v0, Lcom/cipherlab/rfid/SessionSettings;->S0:Lcom/cipherlab/rfid/SessionSettings;

    iput-object v0, p0, Lcom/cipherlab/rfid/Gen2Settings;->Session:Lcom/cipherlab/rfid/SessionSettings;

    .line 40
    sget-object v0, Lcom/cipherlab/rfid/InventoryStatusSettings;->STATE_A:Lcom/cipherlab/rfid/InventoryStatusSettings;

    iput-object v0, p0, Lcom/cipherlab/rfid/Gen2Settings;->InventoryStatus_Action:Lcom/cipherlab/rfid/InventoryStatusSettings;

    .line 41
    sget-object v0, Lcom/cipherlab/rfid/SLFlagSettings;->All:Lcom/cipherlab/rfid/SLFlagSettings;

    iput-object v0, p0, Lcom/cipherlab/rfid/Gen2Settings;->SL_Flag:Lcom/cipherlab/rfid/SLFlagSettings;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/rfid/SessionSettings;

    iput-object v0, p0, Lcom/cipherlab/rfid/Gen2Settings;->Session:Lcom/cipherlab/rfid/SessionSettings;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/rfid/InventoryStatusSettings;

    iput-object v0, p0, Lcom/cipherlab/rfid/Gen2Settings;->InventoryStatus_Action:Lcom/cipherlab/rfid/InventoryStatusSettings;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/rfid/SLFlagSettings;

    iput-object p1, p0, Lcom/cipherlab/rfid/Gen2Settings;->SL_Flag:Lcom/cipherlab/rfid/SLFlagSettings;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 27
    iget-object p2, p0, Lcom/cipherlab/rfid/Gen2Settings;->Session:Lcom/cipherlab/rfid/SessionSettings;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 28
    iget-object p2, p0, Lcom/cipherlab/rfid/Gen2Settings;->InventoryStatus_Action:Lcom/cipherlab/rfid/InventoryStatusSettings;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 29
    iget-object p2, p0, Lcom/cipherlab/rfid/Gen2Settings;->SL_Flag:Lcom/cipherlab/rfid/SLFlagSettings;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
