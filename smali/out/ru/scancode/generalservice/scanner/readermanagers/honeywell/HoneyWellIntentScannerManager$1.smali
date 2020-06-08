.class Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellIntentScannerManager$1;
.super Landroid/content/BroadcastReceiver;
.source "HoneyWellIntentScannerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellIntentScannerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellIntentScannerManager;


# direct methods
.method constructor <init>(Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellIntentScannerManager;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellIntentScannerManager$1;->this$0:Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellIntentScannerManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.honeywell.sample.action.BARCODE_DATA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    const/4 p1, 0x0

    const-string v0, "version"

    .line 51
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_67

    const-string v0, "codeId"

    .line 57
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "data"

    .line 58
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 63
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v2

    .line 64
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, p1

    .line 66
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    const/4 p1, 0x2

    invoke-static {v0}, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->getType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, p1

    const-string p1, "\u0412\u044b\u0441\u043b\u0430\u043d \u0428\u041a: %s, \u0434\u043b\u0438\u043d\u0430: %d, \u0442\u0438\u043f: %s"

    .line 63
    invoke-static {v3, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/String;)V

    .line 68
    new-instance p1, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;

    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellIntentScannerManager$1;->this$0:Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellIntentScannerManager;

    invoke-static {v1}, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellIntentScannerManager;->access$000(Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellIntentScannerManager;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1, p2}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;->setLenght(I)Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;

    move-result-object p1

    .line 70
    invoke-static {v0}, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->getType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;->setType(Ljava/lang/String;)Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;->send()V

    :cond_67
    return-void
.end method
