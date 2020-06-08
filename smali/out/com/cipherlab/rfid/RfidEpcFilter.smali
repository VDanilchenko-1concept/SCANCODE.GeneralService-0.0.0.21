.class public Lcom/cipherlab/rfid/RfidEpcFilter;
.super Ljava/lang/Object;
.source "RfidEpcFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/rfid/RfidEpcFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public EPCPattern1:Ljava/lang/String;

.field public EPCPattern2:Ljava/lang/String;

.field public Enable:B

.field public PatternLength_LSB:B

.field public PatternLength_MSB:B

.field public Scheme:B

.field public Startbit_LSB:B

.field public Startbit_MSB:B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Lcom/cipherlab/rfid/RfidEpcFilter$1;

    invoke-direct {v0}, Lcom/cipherlab/rfid/RfidEpcFilter$1;-><init>()V

    sput-object v0, Lcom/cipherlab/rfid/RfidEpcFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-byte v0, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->Enable:B

    .line 20
    iput-byte v0, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->Startbit_MSB:B

    .line 21
    iput-byte v0, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->Startbit_LSB:B

    .line 22
    iput-byte v0, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->PatternLength_MSB:B

    .line 23
    iput-byte v0, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->PatternLength_LSB:B

    const/16 v0, 0x30

    .line 24
    iput-byte v0, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->Scheme:B

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->EPCPattern1:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->EPCPattern2:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p0, p1}, Lcom/cipherlab/rfid/RfidEpcFilter;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public SetIneffective()V
    .registers 2

    const/4 v0, 0x0

    .line 38
    iput-byte v0, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->Enable:B

    .line 39
    iput-byte v0, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->Startbit_MSB:B

    .line 40
    iput-byte v0, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->Startbit_LSB:B

    .line 41
    iput-byte v0, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->PatternLength_MSB:B

    .line 42
    iput-byte v0, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->PatternLength_LSB:B

    const/16 v0, 0x30

    .line 43
    iput-byte v0, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->Scheme:B

    const-string v0, ""

    .line 44
    iput-object v0, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->EPCPattern1:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->EPCPattern2:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->Enable:B

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->Startbit_MSB:B

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->Startbit_LSB:B

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->PatternLength_MSB:B

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->PatternLength_LSB:B

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->Scheme:B

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->EPCPattern1:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->EPCPattern2:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 51
    iget-byte p2, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->Enable:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 52
    iget-byte p2, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->Startbit_MSB:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 53
    iget-byte p2, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->Startbit_LSB:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 54
    iget-byte p2, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->PatternLength_MSB:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 55
    iget-byte p2, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->PatternLength_LSB:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 56
    iget-byte p2, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->Scheme:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 57
    iget-object p2, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->EPCPattern1:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object p2, p0, Lcom/cipherlab/rfid/RfidEpcFilter;->EPCPattern2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
