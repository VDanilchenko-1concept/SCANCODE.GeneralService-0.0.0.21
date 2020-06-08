.class Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CipherLabRfidManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;


# direct methods
.method constructor <init>(Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager$1;->this$0:Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v1, "PackageName"

    .line 53
    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 54
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    .line 56
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "wrong package name: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/String;)V

    return-void

    .line 61
    :cond_38
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_16c

    goto :goto_6c

    :sswitch_44
    const-string p1, "com.cipherlab.rfidservice.GUN_Attached"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6c

    const/4 p1, 0x2

    goto :goto_6d

    :sswitch_4e
    const-string p1, "com.cipherlab.rfidservice.SERVICE_CONNECTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6c

    const/4 p1, 0x0

    goto :goto_6d

    :sswitch_58
    const-string p1, "com.cipherlab.rfidservice.GUN_Unattached"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6c

    const/4 p1, 0x3

    goto :goto_6d

    :sswitch_62
    const-string p1, "com.cipherlab.rfidservice.SERVICE_TAG_DATA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6c

    const/4 p1, 0x1

    goto :goto_6d

    :cond_6c
    :goto_6c
    const/4 p1, -0x1

    :goto_6d
    if-eqz p1, :cond_10e

    if-eq p1, v4, :cond_8d

    if-eq p1, v1, :cond_82

    if-eq p1, v2, :cond_77

    goto/16 :goto_16b

    .line 121
    :cond_77
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p1

    const-string p2, "gun unattached"

    invoke-virtual {p1, p2}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/String;)V

    goto/16 :goto_16b

    .line 118
    :cond_82
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p1

    const-string p2, "gun attached"

    invoke-virtual {p1, p2}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/String;)V

    goto/16 :goto_16b

    :cond_8d
    const-string p1, "response"

    .line 75
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16b

    .line 76
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_b7

    if-ne p1, v4, :cond_ac

    .line 79
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p2

    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager$1;->this$0:Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;

    invoke-static {v0, p1}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->access$500(Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/String;)V

    goto/16 :goto_16b

    .line 81
    :cond_ac
    iget-object p2, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager$1;->this$0:Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;

    invoke-static {p2, p1}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->access$500(Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->access$600(Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;Ljava/lang/String;)V

    goto/16 :goto_16b

    :cond_b7
    const-string p1, "type"

    .line 84
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16b

    .line 85
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "EPC"

    .line 87
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TID"

    .line 88
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    iget-object v3, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager$1;->this$0:Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;

    invoke-static {v3, v0}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->access$700(Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;Ljava/lang/String;)Lru/scancode/generalservice/utils/RfidTag;

    move-result-object v3

    const-string v5, ""

    if-eqz p1, :cond_f8

    if-eq p1, v4, :cond_f8

    if-eq p1, v2, :cond_df

    goto/16 :goto_16b

    :cond_df
    const-string p1, "ReadData"

    .line 100
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 101
    iget-object p2, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager$1;->this$0:Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;

    invoke-static {p2, v0}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->access$700(Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;Ljava/lang/String;)Lru/scancode/generalservice/utils/RfidTag;

    move-result-object p2

    if-nez p2, :cond_16b

    .line 103
    new-instance p2, Lru/scancode/generalservice/utils/RfidTag;

    invoke-direct {p2, v0, v5, v1, p1}, Lru/scancode/generalservice/utils/RfidTag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager$1;->this$0:Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;

    invoke-static {p1, p2}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->access$1000(Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;Lru/scancode/generalservice/utils/RfidTag;)V

    goto :goto_16b

    :cond_f8
    if-nez v3, :cond_16b

    .line 94
    new-instance p1, Lru/scancode/generalservice/utils/RfidTag;

    invoke-direct {p1, v0, v5, v1, v5}, Lru/scancode/generalservice/utils/RfidTag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object p2, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager$1;->this$0:Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;

    invoke-static {p2}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->access$800(Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object p2, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager$1;->this$0:Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;

    invoke-static {p2, p1}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->access$900(Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;Lru/scancode/generalservice/utils/RfidTag;)V

    goto :goto_16b

    .line 63
    :cond_10e
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p1

    const-string p2, "connected"

    invoke-virtual {p1, p0, p2}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager$1;->this$0:Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;

    invoke-static {p1}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->access$000(Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;)Ljava/util/Timer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 65
    iget-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager$1;->this$0:Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;

    invoke-static {p1}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->access$100(Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;)Ljava/util/Timer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Timer;->purge()I

    .line 67
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "rfidManager API version: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager$1;->this$0:Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;

    invoke-static {v0}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->access$200(Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;)Lcom/cipherlab/rfidapi/RfidManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cipherlab/rfidapi/RfidManager;->GetAPIVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager$1;->this$0:Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;

    invoke-static {p1}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->access$300(Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;)V

    .line 70
    iget-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager$1;->this$0:Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;

    invoke-static {p1, v4}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->access$400(Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;Z)V

    .line 71
    iget-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager$1;->this$0:Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;

    invoke-static {p1}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->access$200(Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;)Lcom/cipherlab/rfidapi/RfidManager;

    move-result-object p1

    sget-object p2, Lcom/cipherlab/rfid/WorkMode;->MultiTagMode:Lcom/cipherlab/rfid/WorkMode;

    invoke-virtual {p1, p2}, Lcom/cipherlab/rfidapi/RfidManager;->SetWorkMode(Lcom/cipherlab/rfid/WorkMode;)I

    .line 72
    iget-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager$1;->this$0:Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;

    invoke-static {p1}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->access$200(Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;)Lcom/cipherlab/rfidapi/RfidManager;

    move-result-object p1

    sget-object p2, Lcom/cipherlab/rfid/ScanMode;->Continuous:Lcom/cipherlab/rfid/ScanMode;

    invoke-virtual {p1, p2}, Lcom/cipherlab/rfidapi/RfidManager;->SetScanMode(Lcom/cipherlab/rfid/ScanMode;)I

    :cond_16b
    :goto_16b
    return-void

    :sswitch_data_16c
    .sparse-switch
        -0x4b46f506 -> :sswitch_62
        -0x31e8fca3 -> :sswitch_58
        0xd85a69e -> :sswitch_4e
        0x176825c4 -> :sswitch_44
    .end sparse-switch
.end method
