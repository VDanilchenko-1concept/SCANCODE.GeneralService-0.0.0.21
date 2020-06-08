.class public interface abstract Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;
.super Ljava/lang/Object;
.source "IRfidManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/scancode/generalservice/rfid/IRfidManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IRfidCallback"
.end annotation


# virtual methods
.method public abstract onConnected()V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onGetTag(Lru/scancode/generalservice/utils/RfidTag;)V
.end method

.method public abstract onReaded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/scancode/generalservice/utils/RfidTag;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReaded(Lru/scancode/generalservice/utils/RfidTag;)V
.end method

.method public abstract onWriteComplete()V
.end method
