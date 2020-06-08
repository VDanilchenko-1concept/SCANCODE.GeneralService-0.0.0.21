.class public interface abstract Lcom/cipherlab/barcodebase/ReaderCallback;
.super Ljava/lang/Object;
.source "ReaderCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cipherlab/barcodebase/ReaderCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDecodeComplete(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
