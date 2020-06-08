.class final Lcom/honeywell/aidc/AidcManager$2;
.super Ljava/lang/Object;
.source "AidcManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/honeywell/aidc/AidcManager;->create(Landroid/content/Context;Lcom/honeywell/aidc/AidcManager$CreatedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$callback:Lcom/honeywell/aidc/AidcManager$CreatedCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/honeywell/aidc/AidcManager$CreatedCallback;)V
    .registers 3

    .line 254
    iput-object p1, p0, Lcom/honeywell/aidc/AidcManager$2;->val$appContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/honeywell/aidc/AidcManager$2;->val$callback:Lcom/honeywell/aidc/AidcManager$CreatedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    const-string p1, "Enter onServiceConnected"

    .line 264
    invoke-static {p1}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    .line 265
    invoke-static {p2}, Lcom/honeywell/IExecutor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/honeywell/IExecutor;

    move-result-object p1

    .line 266
    new-instance p2, Lcom/honeywell/aidc/AidcManager;

    iget-object v0, p0, Lcom/honeywell/aidc/AidcManager$2;->val$appContext:Landroid/content/Context;

    invoke-direct {p2, v0, p0, p1}, Lcom/honeywell/aidc/AidcManager;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Lcom/honeywell/IExecutor;)V

    .line 267
    iget-object p1, p0, Lcom/honeywell/aidc/AidcManager$2;->val$callback:Lcom/honeywell/aidc/AidcManager$CreatedCallback;

    invoke-interface {p1, p2}, Lcom/honeywell/aidc/AidcManager$CreatedCallback;->onCreated(Lcom/honeywell/aidc/AidcManager;)V

    const-string p1, "Exit onServiceConnected"

    .line 268
    invoke-static {p1}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    const-string p1, "Enter onServiceDisconnected"

    .line 258
    invoke-static {p1}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    const-string p1, "Exit onServiceDisconnected"

    .line 259
    invoke-static {p1}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    return-void
.end method
