.class public Lcom/example/scarx/idcardreader/SimpleInterface;
.super Ljava/lang/Object;
.source "SimpleInterface.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "SimpleJni"

    .line 5
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native IOCTL_UHF_POWER_OFF()Z
.end method

.method public static native IOCTL_UHF_POWER_ON()Z
.end method
