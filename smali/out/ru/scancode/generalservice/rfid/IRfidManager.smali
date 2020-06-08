.class public interface abstract Lru/scancode/generalservice/rfid/IRfidManager;
.super Ljava/lang/Object;
.source "IRfidManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;
    }
.end annotation


# virtual methods
.method public abstract closeDevice()V
.end method

.method public abstract openDevice(Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;I)V
.end method

.method public abstract read(Ljava/lang/String;Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;)V
.end method

.method public abstract startScan(Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;)V
.end method

.method public abstract stopScan()V
.end method

.method public abstract write(Ljava/lang/String;IILjava/lang/String;ILru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;)V
.end method
