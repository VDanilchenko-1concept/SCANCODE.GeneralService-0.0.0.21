.class public interface abstract Lru/scancode/generalservice/scanner/IScannerManager;
.super Ljava/lang/Object;
.source "IScannerManager.java"


# virtual methods
.method public abstract getScannerSettings()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation
.end method

.method public abstract printScannerConfig()V
.end method

.method public abstract release()V
.end method

.method public abstract restoreScannerSettings()V
.end method

.method public abstract saveScannerSettings()V
.end method

.method public abstract setServiceScannerSettings()V
.end method

.method public abstract turnOff()V
.end method

.method public abstract turnOn()V
.end method
