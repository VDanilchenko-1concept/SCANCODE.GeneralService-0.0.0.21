.class public Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;
.super Ljava/lang/Object;
.source "BaseScannerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SenderBuilder"
.end annotation


# instance fields
.field ctx:Landroid/content/Context;

.field intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;->ctx:Landroid/content/Context;

    .line 44
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;->intent:Landroid/content/Intent;

    const-string v0, "barcode_reader"

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    iget-object p1, p0, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;->intent:Landroid/content/Intent;

    const-string v0, "extra_barcode"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public send()V
    .registers 3

    .line 62
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 63
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "Barcode was send via Intent action: barcode_reader"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setLenght(I)Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;
    .registers 4

    .line 57
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;->intent:Landroid/content/Intent;

    const-string v1, "extra_barcode_len"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;
    .registers 4

    .line 51
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;->intent:Landroid/content/Intent;

    const-string v1, "extra_barcode_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method
