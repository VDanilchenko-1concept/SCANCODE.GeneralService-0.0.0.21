.class public Lcom/cipherlab/rfid/QValue;
.super Ljava/lang/Object;
.source "QValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/rfid/QValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Dynamic:Z

.field public Max:I

.field public Min:I

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Lcom/cipherlab/rfid/QValue$1;

    invoke-direct {v0}, Lcom/cipherlab/rfid/QValue$1;-><init>()V

    sput-object v0, Lcom/cipherlab/rfid/QValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/cipherlab/rfid/QValue;->Dynamic:Z

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/cipherlab/rfid/QValue;->value:I

    .line 18
    iput v0, p0, Lcom/cipherlab/rfid/QValue;->Min:I

    const/16 v0, 0xf

    .line 19
    iput v0, p0, Lcom/cipherlab/rfid/QValue;->Max:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/cipherlab/rfid/QValue;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public SetIneffective()V
    .registers 2

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/cipherlab/rfid/QValue;->Dynamic:Z

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/cipherlab/rfid/QValue;->value:I

    .line 47
    iput v0, p0, Lcom/cipherlab/rfid/QValue;->Min:I

    const/16 v0, 0xf

    .line 48
    iput v0, p0, Lcom/cipherlab/rfid/QValue;->Max:I

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-boolean v0, p0, Lcom/cipherlab/rfid/QValue;->Dynamic:Z

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/rfid/QValue;->value:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/rfid/QValue;->Min:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/cipherlab/rfid/QValue;->Max:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 30
    iget-boolean p2, p0, Lcom/cipherlab/rfid/QValue;->Dynamic:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 31
    iget p2, p0, Lcom/cipherlab/rfid/QValue;->value:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget p2, p0, Lcom/cipherlab/rfid/QValue;->Min:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget p2, p0, Lcom/cipherlab/rfid/QValue;->Max:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
