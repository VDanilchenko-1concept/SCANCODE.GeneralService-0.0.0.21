.class public abstract Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager;
.super Ljava/lang/Object;
.source "abstrRfidManager.java"

# interfaces
.implements Lru/scancode/generalservice/rfid/IRfidManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;
    }
.end annotation


# instance fields
.field protected callback:Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;

.field protected connect_timer:Ljava/util/Timer;

.field protected context:Landroid/content/Context;

.field protected currentReadMode:Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager;->connect_timer:Ljava/util/Timer;

    .line 23
    iput-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected sendConnected()V
    .registers 2

    .line 57
    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager;->callback:Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;

    if-eqz v0, :cond_7

    .line 58
    invoke-interface {v0}, Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;->onConnected()V

    :cond_7
    return-void
.end method

.method protected sendError(Ljava/lang/String;)V
    .registers 3

    .line 51
    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager;->callback:Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;

    if-eqz v0, :cond_7

    .line 52
    invoke-interface {v0, p1}, Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;->onError(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method protected sendGetRfidTag(Lru/scancode/generalservice/utils/RfidTag;)V
    .registers 3

    .line 27
    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager;->callback:Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;

    if-eqz v0, :cond_7

    .line 28
    invoke-interface {v0, p1}, Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;->onGetTag(Lru/scancode/generalservice/utils/RfidTag;)V

    :cond_7
    return-void
.end method

.method protected sendReadAllRfidTag(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/scancode/generalservice/utils/RfidTag;",
            ">;)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager;->callback:Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;

    if-eqz v0, :cond_7

    .line 40
    invoke-interface {v0, p1}, Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;->onReaded(Ljava/util/List;)V

    :cond_7
    return-void
.end method

.method protected sendReadRfidTag(Lru/scancode/generalservice/utils/RfidTag;)V
    .registers 3

    .line 33
    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager;->callback:Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;

    if-eqz v0, :cond_7

    .line 34
    invoke-interface {v0, p1}, Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;->onReaded(Lru/scancode/generalservice/utils/RfidTag;)V

    :cond_7
    return-void
.end method

.method protected sendWriteComplete()V
    .registers 2

    .line 45
    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager;->callback:Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;

    if-eqz v0, :cond_7

    .line 46
    invoke-interface {v0}, Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;->onWriteComplete()V

    :cond_7
    return-void
.end method

.method public synthetic write(Ljava/lang/String;IILjava/lang/String;ILru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lru/scancode/generalservice/rfid/IRfidManager$-CC;->$default$write(Lru/scancode/generalservice/rfid/IRfidManager;Ljava/lang/String;IILjava/lang/String;ILru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;)V

    return-void
.end method
