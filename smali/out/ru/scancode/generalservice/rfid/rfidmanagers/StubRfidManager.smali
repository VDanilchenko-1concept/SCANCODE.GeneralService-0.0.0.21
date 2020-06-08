.class public Lru/scancode/generalservice/rfid/rfidmanagers/StubRfidManager;
.super Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager;
.source "StubRfidManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 10
    invoke-direct {p0, p1}, Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public closeDevice()V
    .registers 1

    return-void
.end method

.method public openDevice(Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;I)V
    .registers 3

    .line 15
    invoke-interface {p1}, Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;->onConnected()V

    return-void
.end method

.method public read(Ljava/lang/String;Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;)V
    .registers 3

    return-void
.end method

.method public startScan(Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;)V
    .registers 2

    return-void
.end method

.method public stopScan()V
    .registers 1

    return-void
.end method
