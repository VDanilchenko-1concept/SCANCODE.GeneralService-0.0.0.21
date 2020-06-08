.class public Lcom/speedata/libutils/ReadBean$PasmBean;
.super Lcom/speedata/bean/BaseBean;
.source "ReadBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/speedata/libutils/ReadBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PasmBean"
.end annotation


# instance fields
.field private resetGpio:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 285
    invoke-direct {p0}, Lcom/speedata/bean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getResetGpio()I
    .registers 2

    .line 290
    iget v0, p0, Lcom/speedata/libutils/ReadBean$PasmBean;->resetGpio:I

    return v0
.end method

.method public setResetGpio(I)V
    .registers 2

    .line 294
    iput p1, p0, Lcom/speedata/libutils/ReadBean$PasmBean;->resetGpio:I

    return-void
.end method
