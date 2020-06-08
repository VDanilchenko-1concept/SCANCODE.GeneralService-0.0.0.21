.class public abstract Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;
.super Ljava/lang/Object;
.source "BaseScannerManager.java"

# interfaces
.implements Lru/scancode/generalservice/scanner/IScannerManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;
    }
.end annotation


# static fields
.field private static final EXTRA_BARCODE:Ljava/lang/String; = "extra_barcode"

.field private static final EXTRA_BARCODE_LEN:Ljava/lang/String; = "extra_barcode_len"

.field private static final EXTRA_BARCODE_TYPE:Ljava/lang/String; = "extra_barcode_type"


# instance fields
.field protected ctx:Landroid/content/Context;

.field protected sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;->ctx:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;->sp:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public synthetic getScannerSettings()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    invoke-static {p0}, Lru/scancode/generalservice/scanner/IScannerManager$-CC;->$default$getScannerSettings(Lru/scancode/generalservice/scanner/IScannerManager;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic printScannerConfig()V
    .registers 1

    invoke-static {p0}, Lru/scancode/generalservice/scanner/IScannerManager$-CC;->$default$printScannerConfig(Lru/scancode/generalservice/scanner/IScannerManager;)V

    return-void
.end method

.method public synthetic release()V
    .registers 1

    invoke-static {p0}, Lru/scancode/generalservice/scanner/IScannerManager$-CC;->$default$release(Lru/scancode/generalservice/scanner/IScannerManager;)V

    return-void
.end method

.method public synthetic restoreScannerSettings()V
    .registers 1

    invoke-static {p0}, Lru/scancode/generalservice/scanner/IScannerManager$-CC;->$default$restoreScannerSettings(Lru/scancode/generalservice/scanner/IScannerManager;)V

    return-void
.end method

.method public synthetic saveScannerSettings()V
    .registers 1

    invoke-static {p0}, Lru/scancode/generalservice/scanner/IScannerManager$-CC;->$default$saveScannerSettings(Lru/scancode/generalservice/scanner/IScannerManager;)V

    return-void
.end method

.method public synthetic setServiceScannerSettings()V
    .registers 1

    invoke-static {p0}, Lru/scancode/generalservice/scanner/IScannerManager$-CC;->$default$setServiceScannerSettings(Lru/scancode/generalservice/scanner/IScannerManager;)V

    return-void
.end method
