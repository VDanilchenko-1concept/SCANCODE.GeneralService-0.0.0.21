.class public Lcom/lsc/gpio/Scan;
.super Ljava/lang/Object;
.source "Scan.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Scan"


# instance fields
.field private mFd:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "scan_jni"

    .line 41
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/lsc/gpio/Scan;->open()I

    move-result v0

    iput v0, p0, Lcom/lsc/gpio/Scan;->mFd:I

    if-ltz v0, :cond_c

    return-void

    :cond_c
    const-string v0, "Scan"

    const-string v1, "native open returns null"

    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method private native close(I)V
.end method

.method private native ctrl(II)I
.end method

.method public static native open()I
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 24
    iget v0, p0, Lcom/lsc/gpio/Scan;->mFd:I

    invoke-direct {p0, v0}, Lcom/lsc/gpio/Scan;->close(I)V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/lsc/gpio/Scan;->mFd:I

    return-void
.end method

.method public ctrl(I)I
    .registers 4

    .line 29
    iget v0, p0, Lcom/lsc/gpio/Scan;->mFd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const-string p1, "Scan"

    const-string v0, "scan has closed"

    .line 30
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 33
    :cond_d
    invoke-direct {p0, v0, p1}, Lcom/lsc/gpio/Scan;->ctrl(II)I

    move-result p1

    return p1
.end method
