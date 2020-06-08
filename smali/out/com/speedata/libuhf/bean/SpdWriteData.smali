.class public Lcom/speedata/libuhf/bean/SpdWriteData;
.super Ljava/lang/Object;
.source "SpdWriteData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/speedata/libuhf/bean/SpdWriteData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private EPCData:[B

.field private EPCLen:I

.field private RSS:I

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Lcom/speedata/libuhf/bean/SpdWriteData$1;

    invoke-direct {v0}, Lcom/speedata/libuhf/bean/SpdWriteData$1;-><init>()V

    sput-object v0, Lcom/speedata/libuhf/bean/SpdWriteData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/speedata/libuhf/bean/SpdWriteData;->EPCData:[B

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/speedata/libuhf/bean/SpdWriteData;->EPCLen:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/speedata/libuhf/bean/SpdWriteData;->RSS:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/speedata/libuhf/bean/SpdWriteData;->status:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getEPCData()[B
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/speedata/libuhf/bean/SpdWriteData;->EPCData:[B

    return-object v0
.end method

.method public getEPCLen()I
    .registers 2

    .line 48
    iget v0, p0, Lcom/speedata/libuhf/bean/SpdWriteData;->EPCLen:I

    return v0
.end method

.method public getRSS()I
    .registers 2

    .line 56
    iget v0, p0, Lcom/speedata/libuhf/bean/SpdWriteData;->RSS:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    .line 64
    iget v0, p0, Lcom/speedata/libuhf/bean/SpdWriteData;->status:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/speedata/libuhf/bean/SpdWriteData;->EPCData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/speedata/libuhf/bean/SpdWriteData;->EPCLen:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/speedata/libuhf/bean/SpdWriteData;->RSS:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/speedata/libuhf/bean/SpdWriteData;->status:I

    return-void
.end method

.method public setEPCData([B)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/speedata/libuhf/bean/SpdWriteData;->EPCData:[B

    return-void
.end method

.method public setEPCLen(I)V
    .registers 2

    .line 52
    iput p1, p0, Lcom/speedata/libuhf/bean/SpdWriteData;->EPCLen:I

    return-void
.end method

.method public setRSS(I)V
    .registers 2

    .line 60
    iput p1, p0, Lcom/speedata/libuhf/bean/SpdWriteData;->RSS:I

    return-void
.end method

.method public setStatus(I)V
    .registers 2

    .line 68
    iput p1, p0, Lcom/speedata/libuhf/bean/SpdWriteData;->status:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 78
    iget-object p2, p0, Lcom/speedata/libuhf/bean/SpdWriteData;->EPCData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 79
    iget p2, p0, Lcom/speedata/libuhf/bean/SpdWriteData;->EPCLen:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget p2, p0, Lcom/speedata/libuhf/bean/SpdWriteData;->RSS:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget p2, p0, Lcom/speedata/libuhf/bean/SpdWriteData;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
