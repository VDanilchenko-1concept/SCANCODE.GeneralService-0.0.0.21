.class Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager$2;
.super Ljava/util/TimerTask;
.source "CipherLabRfidManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->openDevice(Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;I)V
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

    .line 207
    iput-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager$2;->this$0:Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 210
    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager$2;->this$0:Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;

    const-string v1, "device connection timeout"

    invoke-static {v0, v1}, Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;->access$1100(Lru/scancode/generalservice/rfid/rfidmanagers/cipherlab/CipherLabRfidManager;Ljava/lang/String;)V

    return-void
.end method
