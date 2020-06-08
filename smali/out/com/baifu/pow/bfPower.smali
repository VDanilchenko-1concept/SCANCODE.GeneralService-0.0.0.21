.class public Lcom/baifu/pow/bfPower;
.super Ljava/lang/Object;
.source "bfPower.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "baifuJni"

    .line 6
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native Bfpowdown()I
.end method

.method public static native Bfpowup()I
.end method
