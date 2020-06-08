.class public Lcom/cipherlab/rfid/EPCFilter;
.super Ljava/lang/Object;
.source "EPCFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/rfid/EPCFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Enabled:I

.field public FilterMethod:Lcom/cipherlab/rfid/FilterMethod;

.field public Part1Value:Ljava/lang/String;

.field public Part2FromValue:Ljava/lang/String;

.field public Part2ToValue:Ljava/lang/String;

.field public StartBit:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Lcom/cipherlab/rfid/EPCFilter$1;

    invoke-direct {v0}, Lcom/cipherlab/rfid/EPCFilter$1;-><init>()V

    sput-object v0, Lcom/cipherlab/rfid/EPCFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/cipherlab/rfid/EPCFilter;->Enabled:I

    .line 19
    iput v0, p0, Lcom/cipherlab/rfid/EPCFilter;->StartBit:I

    .line 20
    sget-object v0, Lcom/cipherlab/rfid/FilterMethod;->Partition1:Lcom/cipherlab/rfid/FilterMethod;

    iput-object v0, p0, Lcom/cipherlab/rfid/EPCFilter;->FilterMethod:Lcom/cipherlab/rfid/FilterMethod;

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lcom/cipherlab/rfid/EPCFilter;->Part1Value:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/cipherlab/rfid/EPCFilter;->Part2FromValue:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/cipherlab/rfid/EPCFilter;->Part2ToValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Lcom/cipherlab/rfid/EPCFilter;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public SetIneffective()V
    .registers 2

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/cipherlab/rfid/EPCFilter;->Enabled:I

    .line 53
    iput v0, p0, Lcom/cipherlab/rfid/EPCFilter;->StartBit:I

    .line 54
    sget-object v0, Lcom/cipherlab/rfid/FilterMethod;->Partition1:Lcom/cipherlab/rfid/FilterMethod;

    iput-object v0, p0, Lcom/cipherlab/rfid/EPCFilter;->FilterMethod:Lcom/cipherlab/rfid/FilterMethod;

    const-string v0, ""

    .line 56
    iput-object v0, p0, Lcom/cipherlab/rfid/EPCFilter;->Part1Value:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/cipherlab/rfid/EPCFilter;->Part2FromValue:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/cipherlab/rfid/EPCFilter;->Part2ToValue:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/rfid/EPCFilter;->Enabled:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/rfid/EPCFilter;->StartBit:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/rfid/FilterMethod;

    iput-object v0, p0, Lcom/cipherlab/rfid/EPCFilter;->FilterMethod:Lcom/cipherlab/rfid/FilterMethod;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cipherlab/rfid/EPCFilter;->Part1Value:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cipherlab/rfid/EPCFilter;->Part2FromValue:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cipherlab/rfid/EPCFilter;->Part2ToValue:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 35
    iget p2, p0, Lcom/cipherlab/rfid/EPCFilter;->Enabled:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget p2, p0, Lcom/cipherlab/rfid/EPCFilter;->StartBit:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-object p2, p0, Lcom/cipherlab/rfid/EPCFilter;->FilterMethod:Lcom/cipherlab/rfid/FilterMethod;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 39
    iget-object p2, p0, Lcom/cipherlab/rfid/EPCFilter;->Part1Value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, Lcom/cipherlab/rfid/EPCFilter;->Part2FromValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object p2, p0, Lcom/cipherlab/rfid/EPCFilter;->Part2ToValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
