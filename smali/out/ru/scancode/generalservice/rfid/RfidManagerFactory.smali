.class public Lru/scancode/generalservice/rfid/RfidManagerFactory;
.super Ljava/lang/Object;
.source "RfidManagerFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRfidManager(Landroid/content/Context;Ljava/lang/String;)Lru/scancode/generalservice/rfid/IRfidManager;
    .registers 4

    .line 11
    new-instance v0, Lru/scancode/generalservice/rfid/rfidmanagers/StubRfidManager;

    invoke-direct {v0, p0}, Lru/scancode/generalservice/rfid/rfidmanagers/StubRfidManager;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "rk25"

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 14
    new-instance v0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;

    invoke-direct {v0, p0}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;-><init>(Landroid/content/Context;)V

    goto :goto_24

    :cond_17
    const-string v1, "sd60"

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 16
    new-instance v0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;

    invoke-direct {v0, p0}, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;-><init>(Landroid/content/Context;)V

    :cond_24
    :goto_24
    return-object v0
.end method
