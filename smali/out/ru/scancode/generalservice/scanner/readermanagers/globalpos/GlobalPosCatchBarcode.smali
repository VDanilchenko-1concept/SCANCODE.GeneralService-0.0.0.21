.class public Lru/scancode/generalservice/scanner/readermanagers/globalpos/GlobalPosCatchBarcode;
.super Landroid/content/BroadcastReceiver;
.source "GlobalPosCatchBarcode.java"


# static fields
.field private static final EXTRA_BARCODE:Ljava/lang/String; = "Scan_context"

.field private static final EXTRA_KEYCODE:Ljava/lang/String; = "Scan_Keycode"

.field private static final EXTRA_TYPE:Ljava/lang/String; = "Scan_type"

.field private static final SCANSERVICE:Ljava/lang/String; = "com.android.scanservice.scancontext"

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.scanservice.scancontext"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "Scan_context"

    .line 40
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "unknown"

    if-eqz v1, :cond_21

    .line 41
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_21
    move-object v0, v2

    :goto_22
    const-string v1, "Scan_type"

    .line 44
    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 45
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    :cond_2e
    new-instance p2, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;

    invoke-direct {p2, p1, v0}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2, v2}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;->setType(Ljava/lang/String;)Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;

    move-result-object p1

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;->setLenght(I)Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;->send()V

    :cond_42
    return-void
.end method
