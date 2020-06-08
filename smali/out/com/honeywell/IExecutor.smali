.class public interface abstract Lcom/honeywell/IExecutor;
.super Ljava/lang/Object;
.source "IExecutor.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/honeywell/IExecutor$Stub;
    }
.end annotation


# virtual methods
.method public abstract execute(Lcom/honeywell/Message;)Lcom/honeywell/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract executeAsync(Lcom/honeywell/Message;Lcom/honeywell/IExecutor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
