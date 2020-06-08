.class public Lcom/cipherlab/rfid/ModuleTemperature;
.super Ljava/lang/Object;
.source "ModuleTemperature.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/rfid/ModuleTemperature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ModuleTemperature:D

.field public ProtectTemperature:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Lcom/cipherlab/rfid/ModuleTemperature$1;

    invoke-direct {v0}, Lcom/cipherlab/rfid/ModuleTemperature$1;-><init>()V

    sput-object v0, Lcom/cipherlab/rfid/ModuleTemperature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/cipherlab/rfid/ModuleTemperature;->ModuleTemperature:D

    .line 11
    iput-wide v0, p0, Lcom/cipherlab/rfid/ModuleTemperature;->ProtectTemperature:D

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lcom/cipherlab/rfid/ModuleTemperature;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public SetIneffective()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lcom/cipherlab/rfid/ModuleTemperature;->ModuleTemperature:D

    .line 36
    iput-wide v0, p0, Lcom/cipherlab/rfid/ModuleTemperature;->ProtectTemperature:D

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/cipherlab/rfid/ModuleTemperature;->ModuleTemperature:D

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/cipherlab/rfid/ModuleTemperature;->ProtectTemperature:D

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 24
    iget-wide v0, p0, Lcom/cipherlab/rfid/ModuleTemperature;->ModuleTemperature:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 25
    iget-wide v0, p0, Lcom/cipherlab/rfid/ModuleTemperature;->ProtectTemperature:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
