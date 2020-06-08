.class public Lru/scancode/generalservice/scanner/ScannerManagerFactory;
.super Ljava/lang/Object;
.source "ScannerManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;)Lru/scancode/generalservice/scanner/readermanagers/BaseScannerManager;
    .registers 3

    .line 23
    sget-object v0, Lru/scancode/generalservice/scanner/ScannerManagerFactory$1;->$SwitchMap$ru$scancode$generalservice$scanner$ScannerManagerFactory$SCANNER_MODELS:[I

    invoke-virtual {p1}, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_3e

    const/4 p1, 0x0

    goto :goto_3c

    .line 54
    :pswitch_d
    new-instance p1, Lru/scancode/generalservice/scanner/readermanagers/EmulatorScannerManager;

    invoke-direct {p1, p0}, Lru/scancode/generalservice/scanner/readermanagers/EmulatorScannerManager;-><init>(Landroid/content/Context;)V

    goto :goto_3c

    .line 50
    :pswitch_13
    new-instance p1, Lru/scancode/generalservice/scanner/readermanagers/StubScannerManager;

    invoke-direct {p1, p0}, Lru/scancode/generalservice/scanner/readermanagers/StubScannerManager;-><init>(Landroid/content/Context;)V

    goto :goto_3c

    .line 46
    :pswitch_19
    new-instance p1, Lru/scancode/generalservice/scanner/readermanagers/seuic/SeuicReaderManager;

    invoke-direct {p1, p0}, Lru/scancode/generalservice/scanner/readermanagers/seuic/SeuicReaderManager;-><init>(Landroid/content/Context;)V

    goto :goto_3c

    .line 42
    :pswitch_1f
    new-instance p1, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;

    invoke-direct {p1, p0}, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandScannerManager;-><init>(Landroid/content/Context;)V

    goto :goto_3c

    .line 38
    :pswitch_25
    new-instance p1, Lru/scancode/generalservice/scanner/readermanagers/SpeedDataScannerManager;

    invoke-direct {p1, p0}, Lru/scancode/generalservice/scanner/readermanagers/SpeedDataScannerManager;-><init>(Landroid/content/Context;)V

    goto :goto_3c

    .line 34
    :pswitch_2b
    new-instance p1, Lru/scancode/generalservice/scanner/readermanagers/globalpos/GlobalPosScannerManager;

    invoke-direct {p1, p0}, Lru/scancode/generalservice/scanner/readermanagers/globalpos/GlobalPosScannerManager;-><init>(Landroid/content/Context;)V

    goto :goto_3c

    .line 30
    :pswitch_31
    new-instance p1, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellIntentScannerManager;

    invoke-direct {p1, p0}, Lru/scancode/generalservice/scanner/readermanagers/honeywell/HoneyWellIntentScannerManager;-><init>(Landroid/content/Context;)V

    goto :goto_3c

    .line 26
    :pswitch_37
    new-instance p1, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;

    invoke-direct {p1, p0}, Lru/scancode/generalservice/scanner/readermanagers/cipherlab/CipherLabScannerManager;-><init>(Landroid/content/Context;)V

    :goto_3c
    return-object p1

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_37
        :pswitch_31
        :pswitch_2b
        :pswitch_25
        :pswitch_1f
        :pswitch_19
        :pswitch_13
        :pswitch_d
    .end packed-switch
.end method
