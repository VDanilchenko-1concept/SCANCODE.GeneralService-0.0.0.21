.class final Lcom/speedata/libuhf/bean/SpdWriteData$1;
.super Ljava/lang/Object;
.source "SpdWriteData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/speedata/libuhf/bean/SpdWriteData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/speedata/libuhf/bean/SpdWriteData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/speedata/libuhf/bean/SpdWriteData;
    .registers 3

    .line 30
    new-instance v0, Lcom/speedata/libuhf/bean/SpdWriteData;

    invoke-direct {v0, p1}, Lcom/speedata/libuhf/bean/SpdWriteData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 27
    invoke-virtual {p0, p1}, Lcom/speedata/libuhf/bean/SpdWriteData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/speedata/libuhf/bean/SpdWriteData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/speedata/libuhf/bean/SpdWriteData;
    .registers 2

    .line 35
    new-array p1, p1, [Lcom/speedata/libuhf/bean/SpdWriteData;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 27
    invoke-virtual {p0, p1}, Lcom/speedata/libuhf/bean/SpdWriteData$1;->newArray(I)[Lcom/speedata/libuhf/bean/SpdWriteData;

    move-result-object p1

    return-object p1
.end method
