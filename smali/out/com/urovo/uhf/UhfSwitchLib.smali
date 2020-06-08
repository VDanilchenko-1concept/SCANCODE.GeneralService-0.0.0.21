.class public Lcom/urovo/uhf/UhfSwitchLib;
.super Ljava/lang/Object;
.source "UhfSwitchLib.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UhfSwitchLib"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "uhf_switch_jni"

    .line 27
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native uhf_switch_exit()I
.end method

.method public native uhf_switch_init()I
.end method
