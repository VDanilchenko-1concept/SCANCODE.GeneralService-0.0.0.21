.class public final enum Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;
.super Ljava/lang/Enum;
.source "abstrRfidManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "READMODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;

.field public static final enum ALL:Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;

.field public static final enum ONE:Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 17
    new-instance v0, Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;

    const/4 v1, 0x0

    const-string v2, "ONE"

    invoke-direct {v0, v2, v1}, Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;->ONE:Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;

    new-instance v0, Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;

    const/4 v2, 0x1

    const-string v3, "ALL"

    invoke-direct {v0, v3, v2}, Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;->ALL:Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;

    const/4 v3, 0x2

    new-array v3, v3, [Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;

    sget-object v4, Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;->ONE:Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;->$VALUES:[Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;
    .registers 2

    .line 17
    const-class v0, Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;

    return-object p0
.end method

.method public static values()[Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;
    .registers 1

    .line 17
    sget-object v0, Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;->$VALUES:[Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;

    invoke-virtual {v0}, [Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/scancode/generalservice/rfid/rfidmanagers/abstrRfidManager$READMODE;

    return-object v0
.end method
