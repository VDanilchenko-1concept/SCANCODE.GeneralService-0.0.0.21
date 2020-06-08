.class public final synthetic Lru/scancode/generalservice/scanner/IScannerManager$-CC;
.super Ljava/lang/Object;
.source "IScannerManager.java"


# direct methods
.method public static $default$getScannerSettings(Lru/scancode/generalservice/scanner/IScannerManager;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static $default$printScannerConfig(Lru/scancode/generalservice/scanner/IScannerManager;)V
    .registers 3
    .param p0, "_this"    # Lru/scancode/generalservice/scanner/IScannerManager;

    .line 18
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "Not implemented on this device. Default printScannerConfig method run"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$release(Lru/scancode/generalservice/scanner/IScannerManager;)V
    .registers 3
    .param p0, "_this"    # Lru/scancode/generalservice/scanner/IScannerManager;

    .line 14
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "Not implemented on this device. Default release method run"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$restoreScannerSettings(Lru/scancode/generalservice/scanner/IScannerManager;)V
    .registers 3
    .param p0, "_this"    # Lru/scancode/generalservice/scanner/IScannerManager;

    .line 33
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "Not implemented on this device. Default restoreScannerSettings method run"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$saveScannerSettings(Lru/scancode/generalservice/scanner/IScannerManager;)V
    .registers 3
    .param p0, "_this"    # Lru/scancode/generalservice/scanner/IScannerManager;

    .line 28
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "Not implemented on this device. Default saveScannerSettings method run"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$setServiceScannerSettings(Lru/scancode/generalservice/scanner/IScannerManager;)V
    .registers 3
    .param p0, "_this"    # Lru/scancode/generalservice/scanner/IScannerManager;

    .line 38
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "Not implemented on this device. Default setServiceScannerSettings method run"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
