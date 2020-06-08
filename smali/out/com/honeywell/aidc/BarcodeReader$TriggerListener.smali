.class public interface abstract Lcom/honeywell/aidc/BarcodeReader$TriggerListener;
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
    name = "TriggerListener"
.end annotation


# virtual methods
.method public abstract onTriggerEvent(Lcom/honeywell/aidc/TriggerStateChangeEvent;)V
.end method
