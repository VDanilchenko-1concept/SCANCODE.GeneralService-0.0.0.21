.class public abstract Lcom/honeywell/IExecutor$Stub;
.super Landroid/os/Binder;
.source "IExecutor.java"

# interfaces
.implements Lcom/honeywell/IExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/honeywell/IExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/honeywell/IExecutor$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.honeywell.IExecutor"

.field static final TRANSACTION_execute:I = 0x1

.field static final TRANSACTION_executeAsync:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.honeywell.IExecutor"

    .line 18
    invoke-virtual {p0, p0, v0}, Lcom/honeywell/IExecutor$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/honeywell/IExecutor;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.honeywell.IExecutor"

    .line 29
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 30
    instance-of v1, v0, Lcom/honeywell/IExecutor;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/honeywell/IExecutor;

    return-object v0

    .line 33
    :cond_13
    new-instance v0, Lcom/honeywell/IExecutor$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/honeywell/IExecutor$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "com.honeywell.IExecutor"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_35

    const/4 v3, 0x2

    if-eq p1, v3, :cond_17

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_13

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 45
    :cond_13
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 71
    :cond_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_29

    .line 74
    sget-object p1, Lcom/honeywell/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/honeywell/Message;

    .line 80
    :cond_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/honeywell/IExecutor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/honeywell/IExecutor;

    move-result-object p1

    .line 81
    invoke-virtual {p0, v0, p1}, Lcom/honeywell/IExecutor$Stub;->executeAsync(Lcom/honeywell/Message;Lcom/honeywell/IExecutor;)V

    return v2

    .line 50
    :cond_35
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_47

    .line 53
    sget-object p1, Lcom/honeywell/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/honeywell/Message;

    .line 58
    :cond_47
    invoke-virtual {p0, v0}, Lcom/honeywell/IExecutor$Stub;->execute(Lcom/honeywell/Message;)Lcom/honeywell/Message;

    move-result-object p1

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_57

    .line 61
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    invoke-virtual {p1, p3, v2}, Lcom/honeywell/Message;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5b

    :cond_57
    const/4 p1, 0x0

    .line 65
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5b
    return v2
.end method
