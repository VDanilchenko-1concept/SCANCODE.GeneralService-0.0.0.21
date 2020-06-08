.class public Lcom/cipherlab/rfid/EPCEncodingScheme;
.super Ljava/lang/Object;
.source "EPCEncodingScheme.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/rfid/EPCEncodingScheme;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ADI:Z

.field public CPI:Z

.field public CPI96:Z

.field public GDTI113:Z

.field public GDTI174:Z

.field public GDTI96:Z

.field public GIAI202:Z

.field public GIAI96:Z

.field public GID96:Z

.field public GRAI170:Z

.field public GRAI96:Z

.field public GSRN96:Z

.field public GSRNP:Z

.field public SGCN96:Z

.field public SGLN195:Z

.field public SGLN96:Z

.field public SGTIN198:Z

.field public SGTIN96:Z

.field public SSCC96:Z

.field public USDoD96:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 113
    new-instance v0, Lcom/cipherlab/rfid/EPCEncodingScheme$1;

    invoke-direct {v0}, Lcom/cipherlab/rfid/EPCEncodingScheme$1;-><init>()V

    sput-object v0, Lcom/cipherlab/rfid/EPCEncodingScheme;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GDTI96:Z

    .line 32
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GSRN96:Z

    .line 33
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GSRNP:Z

    .line 34
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->USDoD96:Z

    .line 35
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->SGTIN96:Z

    .line 36
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->SSCC96:Z

    .line 37
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->SGLN96:Z

    .line 38
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GRAI96:Z

    .line 39
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GIAI96:Z

    .line 40
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GID96:Z

    .line 41
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->SGTIN198:Z

    .line 42
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GRAI170:Z

    .line 43
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GIAI202:Z

    .line 44
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->SGLN195:Z

    .line 45
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GDTI113:Z

    .line 46
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->ADI:Z

    .line 47
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->CPI96:Z

    .line 48
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->CPI:Z

    .line 49
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GDTI174:Z

    .line 50
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->SGCN96:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p0, p1}, Lcom/cipherlab/rfid/EPCEncodingScheme;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public SetIneffective()V
    .registers 2

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GDTI96:Z

    .line 92
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GSRN96:Z

    .line 93
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GSRNP:Z

    .line 94
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->USDoD96:Z

    .line 95
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->SGTIN96:Z

    .line 96
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->SSCC96:Z

    .line 97
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->SGLN96:Z

    .line 98
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GRAI96:Z

    .line 99
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GIAI96:Z

    .line 100
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GID96:Z

    .line 101
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->SGTIN198:Z

    .line 102
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GRAI170:Z

    .line 103
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GIAI202:Z

    .line 104
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->SGLN195:Z

    .line 105
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GDTI113:Z

    .line 106
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->ADI:Z

    .line 107
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->CPI96:Z

    .line 108
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->CPI:Z

    .line 109
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GDTI174:Z

    .line 110
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->SGCN96:Z

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GDTI96:Z

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GSRN96:Z

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GSRNP:Z

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->USDoD96:Z

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->SGTIN96:Z

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, 0x1

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    :goto_42
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->SSCC96:Z

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v0, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v0, 0x0

    :goto_4d
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->SGLN96:Z

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_57

    const/4 v0, 0x1

    goto :goto_58

    :cond_57
    const/4 v0, 0x0

    :goto_58
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GRAI96:Z

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_62

    const/4 v0, 0x1

    goto :goto_63

    :cond_62
    const/4 v0, 0x0

    :goto_63
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GIAI96:Z

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6d

    const/4 v0, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v0, 0x0

    :goto_6e
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GID96:Z

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_78

    const/4 v0, 0x1

    goto :goto_79

    :cond_78
    const/4 v0, 0x0

    :goto_79
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->SGTIN198:Z

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_83

    const/4 v0, 0x1

    goto :goto_84

    :cond_83
    const/4 v0, 0x0

    :goto_84
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GRAI170:Z

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_8e

    const/4 v0, 0x1

    goto :goto_8f

    :cond_8e
    const/4 v0, 0x0

    :goto_8f
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GIAI202:Z

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_99

    const/4 v0, 0x1

    goto :goto_9a

    :cond_99
    const/4 v0, 0x0

    :goto_9a
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->SGLN195:Z

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_a4

    const/4 v0, 0x1

    goto :goto_a5

    :cond_a4
    const/4 v0, 0x0

    :goto_a5
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GDTI113:Z

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_af

    const/4 v0, 0x1

    goto :goto_b0

    :cond_af
    const/4 v0, 0x0

    :goto_b0
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->ADI:Z

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_ba

    const/4 v0, 0x1

    goto :goto_bb

    :cond_ba
    const/4 v0, 0x0

    :goto_bb
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->CPI96:Z

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_c5

    const/4 v0, 0x1

    goto :goto_c6

    :cond_c5
    const/4 v0, 0x0

    :goto_c6
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->CPI:Z

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_d0

    const/4 v0, 0x1

    goto :goto_d1

    :cond_d0
    const/4 v0, 0x0

    :goto_d1
    iput-boolean v0, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GDTI174:Z

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_da

    goto :goto_db

    :cond_da
    const/4 v1, 0x0

    :goto_db
    iput-boolean v1, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->SGCN96:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 61
    iget-boolean p2, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GDTI96:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 62
    iget-boolean p2, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GSRN96:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 63
    iget-boolean p2, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GSRNP:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 64
    iget-boolean p2, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->USDoD96:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 65
    iget-boolean p2, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->SGTIN96:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 66
    iget-boolean p2, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->SSCC96:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 67
    iget-boolean p2, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->SGLN96:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 68
    iget-boolean p2, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GRAI96:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 69
    iget-boolean p2, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GIAI96:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 70
    iget-boolean p2, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GID96:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 71
    iget-boolean p2, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->SGTIN198:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 72
    iget-boolean p2, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GRAI170:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 73
    iget-boolean p2, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GIAI202:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 74
    iget-boolean p2, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->SGLN195:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 75
    iget-boolean p2, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GDTI113:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 76
    iget-boolean p2, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->ADI:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 77
    iget-boolean p2, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->CPI96:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 78
    iget-boolean p2, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->CPI:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 79
    iget-boolean p2, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->GDTI174:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 80
    iget-boolean p2, p0, Lcom/cipherlab/rfid/EPCEncodingScheme;->SGCN96:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
