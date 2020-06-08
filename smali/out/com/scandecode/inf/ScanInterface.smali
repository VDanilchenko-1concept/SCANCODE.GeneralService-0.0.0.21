.class public interface abstract Lcom/scandecode/inf/ScanInterface;
.super Ljava/lang/Object;
.source "ScanInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scandecode/inf/ScanInterface$OnScanListener;
    }
.end annotation


# virtual methods
.method public abstract getBarCode(Lcom/scandecode/inf/ScanInterface$OnScanListener;)V
.end method

.method public abstract initService(Ljava/lang/String;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract starScan()V
.end method

.method public abstract stopScan()V
.end method
