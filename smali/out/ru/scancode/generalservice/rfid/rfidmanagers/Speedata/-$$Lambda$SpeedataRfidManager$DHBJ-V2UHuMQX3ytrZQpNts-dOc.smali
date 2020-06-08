.class public final synthetic Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/-$$Lambda$SpeedataRfidManager$DHBJ-V2UHuMQX3ytrZQpNts-dOc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/speedata/libuhf/interfaces/OnSpdInventoryListener;


# instance fields
.field private final synthetic f$0:Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;


# direct methods
.method public synthetic constructor <init>(Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/-$$Lambda$SpeedataRfidManager$DHBJ-V2UHuMQX3ytrZQpNts-dOc;->f$0:Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;

    return-void
.end method


# virtual methods
.method public final getInventoryData(Lcom/speedata/libuhf/bean/SpdInventoryData;)V
    .registers 3

    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/-$$Lambda$SpeedataRfidManager$DHBJ-V2UHuMQX3ytrZQpNts-dOc;->f$0:Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;

    invoke-virtual {v0, p1}, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->lambda$new$1$SpeedataRfidManager(Lcom/speedata/libuhf/bean/SpdInventoryData;)V

    return-void
.end method
