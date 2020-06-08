.class public Landroid/misc/DeviceManager;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/misc/DeviceManager;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getUSBMode()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isExternalSDEnable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isHomeKeyEnable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isRecentsEnable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isSettingButtonEnable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isStatusBarEnable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setADBEnable(Z)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setExternalSDEnable(Z)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setHomeKeyEnable(ZLjava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public setIMEI(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setMEID(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setRecentsEnable(Z)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setSerialNo(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setSettingButtonEnable(Z)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setStatusBarEnable(Z)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setTime(J)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public setUSBMode(I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
