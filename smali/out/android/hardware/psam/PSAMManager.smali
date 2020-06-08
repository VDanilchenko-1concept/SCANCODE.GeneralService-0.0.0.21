.class public Landroid/hardware/psam/PSAMManager;
.super Ljava/lang/Object;
.source "PSAMManager.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/hardware/psam/PSAMManager;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized close()Landroid/psam/PSAMResult;
    .registers 2

    monitor-enter p0

    .line 55
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public isPSAMReady()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized open()Landroid/psam/PSAMResult;
    .registers 2

    monitor-enter p0

    .line 45
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized powerOff()Landroid/psam/PSAMResult;
    .registers 2

    monitor-enter p0

    .line 77
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized powerOn()Landroid/psam/PSAMResult;
    .registers 2

    monitor-enter p0

    .line 35
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized sendCommand([BI)Landroid/psam/PSAMResult;
    .registers 3

    monitor-enter p0

    .line 67
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1
.end method
