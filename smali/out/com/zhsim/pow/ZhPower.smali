.class public Lcom/zhsim/pow/ZhPower;
.super Ljava/lang/Object;
.source "ZhPower.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "zhpow"

    .line 7
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native closefile(I)I
.end method

.method public native openfile(Ljava/lang/String;)I
.end method

.method public native powerup(I)I
.end method

.method public native writedata(I[B)I
.end method
