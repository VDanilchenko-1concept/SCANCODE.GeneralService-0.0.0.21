.class public final synthetic Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/-$$Lambda$SpeedataRfidManager$oTq21DkzjBJwVelwfkPKo3fDpNA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;


# direct methods
.method public synthetic constructor <init>(Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/-$$Lambda$SpeedataRfidManager$oTq21DkzjBJwVelwfkPKo3fDpNA;->f$0:Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/-$$Lambda$SpeedataRfidManager$oTq21DkzjBJwVelwfkPKo3fDpNA;->f$0:Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;

    invoke-virtual {v0}, Lru/scancode/generalservice/rfid/rfidmanagers/Speedata/SpeedataRfidManager;->lambda$readUserData$2$SpeedataRfidManager()V

    return-void
.end method
