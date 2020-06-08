.class public Lru/scancode/generalservice/scanner/readermanagers/StubScannerManager;
.super Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;
.source "StubScannerManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 16
    invoke-direct {p0, p1}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-direct {p0}, Lru/scancode/generalservice/scanner/readermanagers/StubScannerManager;->detectModel()V

    return-void
.end method

.method private detectModel()V
    .registers 3

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Model: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public turnOff()V
    .registers 3

    .line 32
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "turnOff()"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public turnOn()V
    .registers 3

    .line 27
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "turnOn()"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
