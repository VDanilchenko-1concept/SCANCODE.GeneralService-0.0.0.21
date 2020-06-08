.class public Lcom/slr2000/power/Emgpio;
.super Ljava/lang/Object;
.source "Emgpio.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "Slr2000_jni"

    .line 12
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native poweroff()Z
.end method

.method public static native poweron()Z
.end method
