.class public Lru/scancode/generalservice/scanner/readermanagers/EmulatorScannerManager;
.super Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;
.source "EmulatorScannerManager.java"


# static fields
.field private static final MSG_STUB:Ljava/lang/String; = "This is Emulator!"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 17
    invoke-direct {p0, p1}, Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0}, Lru/scancode/generalservice/scanner/readermanagers/EmulatorScannerManager;->detectModel()Ljava/lang/String;

    return-void
.end method

.method private detectModel()Ljava/lang/String;
    .registers 3

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Model: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public printScannerConfig()V
    .registers 3

    .line 39
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "This is Emulator!"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public turnOff()V
    .registers 3

    .line 34
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "turnOff()"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public turnOn()V
    .registers 3

    .line 29
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "turnOn()"

    invoke-virtual {v0, p0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
