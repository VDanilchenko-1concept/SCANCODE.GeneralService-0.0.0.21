.class public final Lcom/honeywell/aidc/BarcodeFailureEvent;
.super Ljava/util/EventObject;
.source "BarcodeFailureEvent.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mTimestamp:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .line 28
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    const-string p1, "Enter constructor"

    .line 30
    invoke-static {p1}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "timestamp = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    .line 33
    iput-object p2, p0, Lcom/honeywell/aidc/BarcodeFailureEvent;->mTimestamp:Ljava/lang/String;

    const-string p1, "Exit constructor"

    .line 35
    invoke-static {p1}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getTimestamp()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/honeywell/aidc/BarcodeFailureEvent;->mTimestamp:Ljava/lang/String;

    return-object v0
.end method
