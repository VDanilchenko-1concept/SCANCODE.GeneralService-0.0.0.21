.class Lcom/scandecode/ScanDecode$1;
.super Landroid/content/BroadcastReceiver;
.source "ScanDecode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scandecode/ScanDecode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scandecode/ScanDecode;


# direct methods
.method constructor <init>(Lcom/scandecode/ScanDecode;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/scandecode/ScanDecode$1;->this$0:Lcom/scandecode/ScanDecode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 190
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.se4500.onDecodeComplete"

    .line 191
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const-string p1, "se4500"

    .line 192
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 194
    iget-object p2, p0, Lcom/scandecode/ScanDecode$1;->this$0:Lcom/scandecode/ScanDecode;

    invoke-static {p2}, Lcom/scandecode/ScanDecode;->access$000(Lcom/scandecode/ScanDecode;)Lcom/scandecode/inf/ScanInterface$OnScanListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/scandecode/inf/ScanInterface$OnScanListener;->getBarcode(Ljava/lang/String;)V

    :cond_1d
    return-void
.end method
