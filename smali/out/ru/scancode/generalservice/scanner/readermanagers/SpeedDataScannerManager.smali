.class public Lru/scancode/generalservice/scanner/readermanagers/SpeedDataScannerManager;
.super Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;
.source "SpeedDataScannerManager.java"


# static fields
.field private static final TRUE:Ljava/lang/String; = "true"

.field private static final UNKNOW:Ljava/lang/String; = "unknow"


# instance fields
.field private readerManager:Lcom/scandecode/ScanDecode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 25
    invoke-direct {p0, p1}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Lcom/scandecode/ScanDecode;

    invoke-direct {v0, p1}, Lcom/scandecode/ScanDecode;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/SpeedDataScannerManager;->readerManager:Lcom/scandecode/ScanDecode;

    const-string v1, "true"

    .line 29
    invoke-virtual {v0, v1}, Lcom/scandecode/ScanDecode;->initService(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/SpeedDataScannerManager;->readerManager:Lcom/scandecode/ScanDecode;

    new-instance v1, Lru/scancode/generalservice/scanner/readermanagers/-$$Lambda$SpeedDataScannerManager$Rmux1cQyF_q88V_kNDTeYO-00CU;

    invoke-direct {v1, p0, p1}, Lru/scancode/generalservice/scanner/readermanagers/-$$Lambda$SpeedDataScannerManager$Rmux1cQyF_q88V_kNDTeYO-00CU;-><init>(Lru/scancode/generalservice/scanner/readermanagers/SpeedDataScannerManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/scandecode/ScanDecode;->getBarCode(Lcom/scandecode/inf/ScanInterface$OnScanListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$SpeedDataScannerManager(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 32
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;

    invoke-direct {v0, p1, p2}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "unknow"

    .line 35
    invoke-virtual {v0, p1}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;->setType(Ljava/lang/String;)Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;

    move-result-object p1

    .line 36
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;->setLenght(I)Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager$SenderBuilder;->send()V

    return-void
.end method

.method public turnOff()V
    .registers 3

    .line 50
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "turnOff()"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/SpeedDataScannerManager;->readerManager:Lcom/scandecode/ScanDecode;

    invoke-virtual {v0}, Lcom/scandecode/ScanDecode;->onDestroy()V

    return-void
.end method

.method public turnOn()V
    .registers 3

    .line 44
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "turnOn()"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/SpeedDataScannerManager;->readerManager:Lcom/scandecode/ScanDecode;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Lcom/scandecode/ScanDecode;->initService(Ljava/lang/String;)V

    return-void
.end method
