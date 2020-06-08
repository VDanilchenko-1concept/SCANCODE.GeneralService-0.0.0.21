.class public Landroid/devkit/api/Misc;
.super Ljava/lang/Object;
.source "Misc.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "DevKitApi"

    .line 108
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fingerEnable(Z)V
    .registers 1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    .line 85
    invoke-static {p0}, Landroid/devkit/api/Misc;->nativeFingerEnable(I)I

    goto :goto_b

    :cond_7
    const/4 p0, 0x0

    .line 87
    invoke-static {p0}, Landroid/devkit/api/Misc;->nativeFingerEnable(I)I

    :goto_b
    return-void
.end method

.method public static idcardEnable(Z)V
    .registers 1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    .line 61
    invoke-static {p0}, Landroid/devkit/api/Misc;->nativeIDCardEnable(I)I

    goto :goto_b

    :cond_7
    const/4 p0, 0x0

    .line 63
    invoke-static {p0}, Landroid/devkit/api/Misc;->nativeIDCardEnable(I)I

    :goto_b
    return-void
.end method

.method private static native nativeFingerEnable(I)I
.end method

.method private static native nativeIDCardEnable(I)I
.end method

.method private static native nativePrinterEnable(I)I
.end method

.method public static native nativeReadMode()I
.end method

.method private static native nativeScanEnable(I)I
.end method

.method private static native nativeScanRts(I)I
.end method

.method private static native nativeScanTrig(I)I
.end method

.method private static native nativeSmartcardEnable(I)I
.end method

.method private static native nativeUhfEnable(I)I
.end method

.method public static native nativeUsbMode(I)I
.end method

.method public static printerEnable(Z)V
    .registers 1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    .line 29
    invoke-static {p0}, Landroid/devkit/api/Misc;->nativePrinterEnable(I)I

    goto :goto_b

    :cond_7
    const/4 p0, 0x0

    .line 31
    invoke-static {p0}, Landroid/devkit/api/Misc;->nativePrinterEnable(I)I

    :goto_b
    return-void
.end method

.method public static scanEnable(Z)V
    .registers 1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    .line 53
    invoke-static {p0}, Landroid/devkit/api/Misc;->nativeScanEnable(I)I

    goto :goto_b

    :cond_7
    const/4 p0, 0x0

    .line 55
    invoke-static {p0}, Landroid/devkit/api/Misc;->nativeScanEnable(I)I

    :goto_b
    return-void
.end method

.method public static scanRts(Z)V
    .registers 1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    .line 37
    invoke-static {p0}, Landroid/devkit/api/Misc;->nativeScanRts(I)I

    goto :goto_b

    :cond_7
    const/4 p0, 0x0

    .line 39
    invoke-static {p0}, Landroid/devkit/api/Misc;->nativeScanRts(I)I

    :goto_b
    return-void
.end method

.method public static scanTrig(Z)V
    .registers 1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    .line 45
    invoke-static {p0}, Landroid/devkit/api/Misc;->nativeScanTrig(I)I

    goto :goto_b

    :cond_7
    const/4 p0, 0x0

    .line 47
    invoke-static {p0}, Landroid/devkit/api/Misc;->nativeScanTrig(I)I

    :goto_b
    return-void
.end method

.method public static smartcardEnable(Z)V
    .registers 1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    .line 77
    invoke-static {p0}, Landroid/devkit/api/Misc;->nativeSmartcardEnable(I)I

    goto :goto_b

    :cond_7
    const/4 p0, 0x0

    .line 79
    invoke-static {p0}, Landroid/devkit/api/Misc;->nativeSmartcardEnable(I)I

    :goto_b
    return-void
.end method

.method public static uhfEnable(Z)V
    .registers 1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    .line 69
    invoke-static {p0}, Landroid/devkit/api/Misc;->nativeUhfEnable(I)I

    goto :goto_b

    :cond_7
    const/4 p0, 0x0

    .line 71
    invoke-static {p0}, Landroid/devkit/api/Misc;->nativeUhfEnable(I)I

    :goto_b
    return-void
.end method
