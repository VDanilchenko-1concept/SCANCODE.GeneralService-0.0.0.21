.class final Lcom/speedata/libuhf/bean/DynamicQParams$1;
.super Ljava/lang/Object;
.source "DynamicQParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/speedata/libuhf/bean/DynamicQParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/speedata/libuhf/bean/DynamicQParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/speedata/libuhf/bean/DynamicQParams;
    .registers 3

    .line 39
    new-instance v0, Lcom/speedata/libuhf/bean/DynamicQParams;

    invoke-direct {v0, p1}, Lcom/speedata/libuhf/bean/DynamicQParams;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Lcom/speedata/libuhf/bean/DynamicQParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/speedata/libuhf/bean/DynamicQParams;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/speedata/libuhf/bean/DynamicQParams;
    .registers 2

    .line 44
    new-array p1, p1, [Lcom/speedata/libuhf/bean/DynamicQParams;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Lcom/speedata/libuhf/bean/DynamicQParams$1;->newArray(I)[Lcom/speedata/libuhf/bean/DynamicQParams;

    move-result-object p1

    return-object p1
.end method
