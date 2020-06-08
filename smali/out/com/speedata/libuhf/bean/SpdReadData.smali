.class public Lcom/speedata/libuhf/bean/SpdReadData;
.super Ljava/lang/Object;
.source "SpdReadData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/speedata/libuhf/bean/SpdReadData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DataLen:I

.field private EPCData:[B

.field private EPCLen:I

.field private RSS:I

.field private ReadData:[B

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lcom/speedata/libuhf/bean/SpdReadData$1;

    invoke-direct {v0}, Lcom/speedata/libuhf/bean/SpdReadData$1;-><init>()V

    sput-object v0, Lcom/speedata/libuhf/bean/SpdReadData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/speedata/libuhf/bean/SpdReadData;->ReadData:[B

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/speedata/libuhf/bean/SpdReadData;->EPCData:[B

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/speedata/libuhf/bean/SpdReadData;->EPCLen:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/speedata/libuhf/bean/SpdReadData;->DataLen:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/speedata/libuhf/bean/SpdReadData;->RSS:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/speedata/libuhf/bean/SpdReadData;->status:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDataLen()I
    .registers 2

    .line 68
    iget v0, p0, Lcom/speedata/libuhf/bean/SpdReadData;->DataLen:I

    return v0
.end method

.method public getEPCData()[B
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/speedata/libuhf/bean/SpdReadData;->EPCData:[B

    return-object v0
.end method

.method public getEPCLen()I
    .registers 2

    .line 60
    iget v0, p0, Lcom/speedata/libuhf/bean/SpdReadData;->EPCLen:I

    return v0
.end method

.method public getRSS()I
    .registers 2

    .line 76
    iget v0, p0, Lcom/speedata/libuhf/bean/SpdReadData;->RSS:I

    return v0
.end method

.method public getReadData()[B
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/speedata/libuhf/bean/SpdReadData;->ReadData:[B

    return-object v0
.end method

.method public getStatus()I
    .registers 2

    .line 84
    iget v0, p0, Lcom/speedata/libuhf/bean/SpdReadData;->status:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/speedata/libuhf/bean/SpdReadData;->ReadData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 114
    iget-object v0, p0, Lcom/speedata/libuhf/bean/SpdReadData;->EPCData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/speedata/libuhf/bean/SpdReadData;->EPCLen:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/speedata/libuhf/bean/SpdReadData;->DataLen:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/speedata/libuhf/bean/SpdReadData;->RSS:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/speedata/libuhf/bean/SpdReadData;->status:I

    return-void
.end method

.method public setDataLen(I)V
    .registers 2

    .line 72
    iput p1, p0, Lcom/speedata/libuhf/bean/SpdReadData;->DataLen:I

    return-void
.end method

.method public setEPCData([B)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/speedata/libuhf/bean/SpdReadData;->EPCData:[B

    return-void
.end method

.method public setEPCLen(I)V
    .registers 2

    .line 64
    iput p1, p0, Lcom/speedata/libuhf/bean/SpdReadData;->EPCLen:I

    return-void
.end method

.method public setRSS(I)V
    .registers 2

    .line 80
    iput p1, p0, Lcom/speedata/libuhf/bean/SpdReadData;->RSS:I

    return-void
.end method

.method public setReadData([B)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/speedata/libuhf/bean/SpdReadData;->ReadData:[B

    return-void
.end method

.method public setStatus(I)V
    .registers 2

    .line 88
    iput p1, p0, Lcom/speedata/libuhf/bean/SpdReadData;->status:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 98
    iget-object p2, p0, Lcom/speedata/libuhf/bean/SpdReadData;->ReadData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 99
    iget-object p2, p0, Lcom/speedata/libuhf/bean/SpdReadData;->EPCData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 100
    iget p2, p0, Lcom/speedata/libuhf/bean/SpdReadData;->EPCLen:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget p2, p0, Lcom/speedata/libuhf/bean/SpdReadData;->DataLen:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget p2, p0, Lcom/speedata/libuhf/bean/SpdReadData;->RSS:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget p2, p0, Lcom/speedata/libuhf/bean/SpdReadData;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
