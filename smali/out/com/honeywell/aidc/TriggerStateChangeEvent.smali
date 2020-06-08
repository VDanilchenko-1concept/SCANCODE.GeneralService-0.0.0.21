.class public final Lcom/honeywell/aidc/TriggerStateChangeEvent;
.super Ljava/util/EventObject;
.source "TriggerStateChangeEvent.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mState:Z


# direct methods
.method constructor <init>(Ljava/lang/Object;Z)V
    .registers 4

    .line 29
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    const-string p1, "Enter constructor"

    .line 31
    invoke-static {p1}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_17

    const-string v0, "pressed"

    goto :goto_19

    :cond_17
    const-string v0, "released"

    :goto_19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    .line 34
    iput-boolean p2, p0, Lcom/honeywell/aidc/TriggerStateChangeEvent;->mState:Z

    const-string p1, "Exit constructor"

    .line 36
    invoke-static {p1}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getState()Z
    .registers 2

    .line 45
    iget-boolean v0, p0, Lcom/honeywell/aidc/TriggerStateChangeEvent;->mState:Z

    return v0
.end method
