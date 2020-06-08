.class public Lcom/example/gpio/MainActivity;
.super Ljava/lang/Object;
.source "MainActivity.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "em_gpio_jni"

    .line 13
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getGpioMode(I)I
.end method

.method public static native gpioInit()Z
.end method

.method public static native gpioUnInit()Z
.end method

.method public static native setGpioDataHigh(I)Z
.end method

.method public static native setGpioDataLow(I)Z
.end method

.method public static native setGpioInput(I)Z
.end method

.method public static native setGpioMode(I)Z
.end method

.method public static native setGpioOutput(I)Z
.end method
