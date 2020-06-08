.class public final synthetic Lru/scancode/generalservice/scanner/readermanagers/-$$Lambda$SpeedDataScannerManager$Rmux1cQyF_q88V_kNDTeYO-00CU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/scandecode/inf/ScanInterface$OnScanListener;


# instance fields
.field private final synthetic f$0:Lru/scancode/generalservice/scanner/readermanagers/SpeedDataScannerManager;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lru/scancode/generalservice/scanner/readermanagers/SpeedDataScannerManager;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/scancode/generalservice/scanner/readermanagers/-$$Lambda$SpeedDataScannerManager$Rmux1cQyF_q88V_kNDTeYO-00CU;->f$0:Lru/scancode/generalservice/scanner/readermanagers/SpeedDataScannerManager;

    iput-object p2, p0, Lru/scancode/generalservice/scanner/readermanagers/-$$Lambda$SpeedDataScannerManager$Rmux1cQyF_q88V_kNDTeYO-00CU;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getBarcode(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lru/scancode/generalservice/scanner/readermanagers/-$$Lambda$SpeedDataScannerManager$Rmux1cQyF_q88V_kNDTeYO-00CU;->f$0:Lru/scancode/generalservice/scanner/readermanagers/SpeedDataScannerManager;

    iget-object v1, p0, Lru/scancode/generalservice/scanner/readermanagers/-$$Lambda$SpeedDataScannerManager$Rmux1cQyF_q88V_kNDTeYO-00CU;->f$1:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lru/scancode/generalservice/scanner/readermanagers/SpeedDataScannerManager;->lambda$new$0$SpeedDataScannerManager(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
