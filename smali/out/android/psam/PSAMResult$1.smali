.class Landroid/psam/PSAMResult$1;
.super Ljava/lang/Object;
.source "PSAMResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/psam/PSAMResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/psam/PSAMResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/psam/PSAMResult;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/psam/PSAMResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/psam/PSAMResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/psam/PSAMResult;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/psam/PSAMResult$1;->newArray(I)[Landroid/psam/PSAMResult;

    move-result-object p1

    return-object p1
.end method