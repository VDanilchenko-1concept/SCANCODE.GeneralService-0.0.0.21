.class public final synthetic Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/-$$Lambda$SpeedataRfidManager$aIqsoRN-UajWQ_Zgh0d-glj96mA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/speedata/libuhf/interfaces/OnSpdReadListener;


# instance fields
.field private final synthetic f$0:Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;


# direct methods
.method public synthetic constructor <init>(Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/-$$Lambda$SpeedataRfidManager$aIqsoRN-UajWQ_Zgh0d-glj96mA;->f$0:Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;

    return-void
.end method


# virtual methods
.method public final getReadData(Lcom/speedata/libuhf/bean/SpdReadData;)V
    .registers 3

    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/-$$Lambda$SpeedataRfidManager$aIqsoRN-UajWQ_Zgh0d-glj96mA;->f$0:Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;

    invoke-virtual {v0, p1}, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->lambda$new$0$SpeedataRfidManager(Lcom/speedata/libuhf/bean/SpdReadData;)V

    return-void
.end method
