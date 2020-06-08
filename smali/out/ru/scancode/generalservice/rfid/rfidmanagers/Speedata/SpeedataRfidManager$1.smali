.class Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager$1;
.super Ljava/util/TimerTask;
.source "SpeedataRfidManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->openDevice(Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;


# direct methods
.method constructor <init>(Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager$1;->this$0:Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 139
    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager$1;->this$0:Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;

    const-string v1, "device connection timeout"

    invoke-static {v0, v1}, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->access$000(Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;Ljava/lang/String;)V

    return-void
.end method
