.class public Lru/scancode/generalservice/broadcastreceivers/ToggleRFIDScannerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ToggleRFIDScannerReceiver.java"


# static fields
.field private static final EXTRA_ENABLED:Ljava/lang/String; = "set_enable"

.field private static final EXTRA_REPLY:Ljava/lang/String; = "extra_reply"

.field private static final RFID_ADDRESS_EXTRA:Ljava/lang/String; = "RFID_ADDRESS_EXTRA"

.field private static final RFID_AREA_EXTRA:Ljava/lang/String; = "RFID_AREA_EXTRA"

.field private static final RFID_CONTENT_EXTRA:Ljava/lang/String; = "RFID_CONTENT_EXTRA"

.field private static final RFID_COUNT_EXTRA:Ljava/lang/String; = "RFID_COUNT_EXTRA"

.field private static final RFID_EPC:Ljava/lang/String; = "rfid_epc"

.field public static final RFID_READER:Ljava/lang/String; = "rfid_reader"

.field private static final RFID_READ_ALL_ACTION:Ljava/lang/String; = "rfid_read_all_action"

.field private static final RFID_READ_TAG_ACTION:Ljava/lang/String; = "rfid_read_tag_action"

.field private static final RFID_STOP_SCAN_ACTION:Ljava/lang/String; = "rfid_stop_scan_action"

.field public static final RFID_WRITE_ACTION:Ljava/lang/String; = "rfid_write_action"

.field private static final SET_REPLY_ACTION:Ljava/lang/String; = "set_reply_action"


# instance fields
.field private reply:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, ""

    .line 72
    iput-object v0, p0, Lru/scancode/generalservice/broadcastreceivers/ToggleRFIDScannerReceiver;->reply:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 81
    :cond_7
    invoke-static {}, Lru/scancode/generalservice/services/MainService;->getInstance()Lru/scancode/generalservice/services/MainService;

    move-result-object v0

    if-nez v0, :cond_19

    .line 83
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p1

    iget-object p2, p0, Lru/scancode/generalservice/broadcastreceivers/ToggleRFIDScannerReceiver;->reply:Ljava/lang/String;

    const-string v0, "service offline"

    invoke-virtual {p1, v0, p2}, Lru/scancode/generalservice/utils/App;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 87
    :cond_19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "set_reply_action"

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    sparse-switch v1, :sswitch_data_1a2

    goto :goto_68

    :sswitch_2e
    const-string v1, "rfid_reader"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_68

    const/4 p1, 0x1

    goto :goto_69

    :sswitch_38
    const-string v1, "rfid_write_action"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_68

    const/4 p1, 0x5

    goto :goto_69

    :sswitch_42
    const-string v1, "rfid_read_all_action"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_68

    const/4 p1, 0x4

    goto :goto_69

    :sswitch_4c
    const-string v1, "rfid_read_tag_action"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_68

    const/4 p1, 0x3

    goto :goto_69

    :sswitch_56
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_68

    const/4 p1, 0x0

    goto :goto_69

    :sswitch_5e
    const-string v1, "rfid_stop_scan_action"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_68

    const/4 p1, 0x2

    goto :goto_69

    :cond_68
    :goto_68
    const/4 p1, -0x1

    :goto_69
    const-string v1, "extra_reply"

    if-eqz p1, :cond_191

    const-string v2, "set_enable"

    if-eq p1, v7, :cond_172

    if-eq p1, v6, :cond_164

    const-string v1, "rfid_epc"

    if-eq p1, v5, :cond_14d

    if-eq p1, v4, :cond_13f

    if-eq p1, v3, :cond_7d

    goto/16 :goto_1a1

    .line 147
    :cond_7d
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p1

    const-string v2, "rfid_write_action in proccess..."

    invoke-virtual {p1, p0, v2}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a1

    const-string p1, "RFID_ADDRESS_EXTRA"

    .line 150
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a1

    const-string v2, "RFID_COUNT_EXTRA"

    .line 151
    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a1

    const-string v3, "RFID_CONTENT_EXTRA"

    .line 152
    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a1

    const-string v4, "RFID_AREA_EXTRA"

    .line 153
    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a1

    .line 155
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-virtual {p2, p1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 157
    invoke-virtual {p2, v2, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 158
    invoke-virtual {p2, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 160
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 162
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EPC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p0, v2}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p0, v2}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p0, v2}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p0, v2}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AREA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p0, v2}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    move v2, p1

    move v3, v5

    move v5, v6

    .line 168
    invoke-virtual/range {v0 .. v5}, Lru/scancode/generalservice/services/MainService;->writeRFIDTag(Ljava/lang/String;IILjava/lang/String;I)V

    goto :goto_1a1

    .line 140
    :cond_13f
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p1

    const-string p2, "rfid_read_all_action in proccess..."

    invoke-virtual {p1, p0, p2}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 142
    invoke-virtual {v0, p1}, Lru/scancode/generalservice/services/MainService;->commonReadUserData(Ljava/lang/String;)V

    goto :goto_1a1

    .line 128
    :cond_14d
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p1

    const-string v2, "rfid_read_tag_action in proccess..."

    invoke-virtual {p1, p0, v2}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a1

    .line 132
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-virtual {v0, p1}, Lru/scancode/generalservice/services/MainService;->commonReadUserData(Ljava/lang/String;)V

    goto :goto_1a1

    .line 117
    :cond_164
    invoke-virtual {p2, v2, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_16e

    .line 119
    invoke-virtual {v0}, Lru/scancode/generalservice/services/MainService;->stopRFIDScan()V

    goto :goto_1a1

    .line 122
    :cond_16e
    invoke-virtual {v0}, Lru/scancode/generalservice/services/MainService;->startRFIDScan()V

    goto :goto_1a1

    .line 102
    :cond_172
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/scancode/generalservice/broadcastreceivers/ToggleRFIDScannerReceiver;->reply:Ljava/lang/String;

    .line 104
    invoke-virtual {p2, v2, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_184

    .line 105
    iget-object p1, p0, Lru/scancode/generalservice/broadcastreceivers/ToggleRFIDScannerReceiver;->reply:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lru/scancode/generalservice/services/MainService;->turnOnRFIDScanner(Ljava/lang/String;)V

    goto :goto_1a1

    .line 107
    :cond_184
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p1

    const-string p2, "\u043e\u0442\u043a\u043b\u044e\u0447\u0435\u043d\u0438\u0435 \u0441\u043a\u0430\u043d\u0435\u0440\u0430 \u043f\u043e Intent\'\u0443 \u043e\u0442\u043a\u043b\u044e\u0447\u0435\u043d\u043e"

    invoke-virtual {p1, p0, p2}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Lru/scancode/generalservice/services/MainService;->turnOffRFIDScanner()V

    goto :goto_1a1

    .line 92
    :cond_191
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/scancode/generalservice/broadcastreceivers/ToggleRFIDScannerReceiver;->reply:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, p1}, Lru/scancode/generalservice/services/MainService;->setReply(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p1

    invoke-virtual {p1, p0, v2}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1a1
    :goto_1a1
    return-void

    :sswitch_data_1a2
    .sparse-switch
        -0x5eb12295 -> :sswitch_5e
        -0x5e657618 -> :sswitch_56
        -0x572dad2c -> :sswitch_4c
        -0x124a6d13 -> :sswitch_42
        -0x10f8a17a -> :sswitch_38
        0x70d710b3 -> :sswitch_2e
    .end sparse-switch
.end method
