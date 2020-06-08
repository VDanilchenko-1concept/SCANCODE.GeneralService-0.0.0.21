.class public interface abstract Lcom/honeywell/aidc/BarcodeReader$BarcodeListener;
.super Ljava/lang/Object;
.source "BarcodeReader.java"

# interfaces
.implements Ljava/util/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/honeywell/aidc/BarcodeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BarcodeListener"
.end annotation


# virtual methods
.method public abstract onBarcodeEvent(Lcom/honeywell/aidc/BarcodeReadEvent;)V
.end method

.method public abstract onFailureEvent(Lcom/honeywell/aidc/BarcodeFailureEvent;)V
.end method
