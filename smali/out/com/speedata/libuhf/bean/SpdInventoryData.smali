.class public Lcom/speedata/libuhf/bean/SpdInventoryData;
.super Ljava/lang/Object;
.source "SpdInventoryData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/speedata/libuhf/bean/SpdInventoryData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public epc:Ljava/lang/String;

.field public rssi:Ljava/lang/String;

.field public tid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Lcom/speedata/libuhf/bean/SpdInventoryData$1;

    invoke-direct {v0}, Lcom/speedata/libuhf/bean/SpdInventoryData$1;-><init>()V

    sput-object v0, Lcom/speedata/libuhf/bean/SpdInventoryData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/speedata/libuhf/bean/SpdInventoryData;->tid:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/speedata/libuhf/bean/SpdInventoryData;->epc:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/speedata/libuhf/bean/SpdInventoryData;->rssi:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/speedata/libuhf/bean/SpdInventoryData;->tid:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/speedata/libuhf/bean/SpdInventoryData;->epc:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/speedata/libuhf/bean/SpdInventoryData;->rssi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getEpc()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/speedata/libuhf/bean/SpdInventoryData;->epc:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/speedata/libuhf/bean/SpdInventoryData;->rssi:Ljava/lang/String;

    return-object v0
.end method

.method public getTid()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/speedata/libuhf/bean/SpdInventoryData;->tid:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/speedata/libuhf/bean/SpdInventoryData;->tid:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/speedata/libuhf/bean/SpdInventoryData;->epc:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/speedata/libuhf/bean/SpdInventoryData;->rssi:Ljava/lang/String;

    return-void
.end method

.method public setEpc(Ljava/lang/String;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/speedata/libuhf/bean/SpdInventoryData;->epc:Ljava/lang/String;

    return-void
.end method

.method public setRssi(Ljava/lang/String;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/speedata/libuhf/bean/SpdInventoryData;->rssi:Ljava/lang/String;

    return-void
.end method

.method public setTid(Ljava/lang/String;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/speedata/libuhf/bean/SpdInventoryData;->tid:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 47
    iget-object p2, p0, Lcom/speedata/libuhf/bean/SpdInventoryData;->tid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lcom/speedata/libuhf/bean/SpdInventoryData;->epc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object p2, p0, Lcom/speedata/libuhf/bean/SpdInventoryData;->rssi:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
