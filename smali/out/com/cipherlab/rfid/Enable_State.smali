.class public final enum Lcom/cipherlab/rfid/Enable_State;
.super Ljava/lang/Enum;
.source "Enable_State.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/rfid/Enable_State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/rfid/Enable_State;

.field public static final enum FALSE:Lcom/cipherlab/rfid/Enable_State;

.field public static final enum TRUE:Lcom/cipherlab/rfid/Enable_State;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 4
    new-instance v0, Lcom/cipherlab/rfid/Enable_State;

    const/4 v1, 0x0

    const-string v2, "FALSE"

    invoke-direct {v0, v2, v1}, Lcom/cipherlab/rfid/Enable_State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/rfid/Enable_State;->FALSE:Lcom/cipherlab/rfid/Enable_State;

    .line 5
    new-instance v0, Lcom/cipherlab/rfid/Enable_State;

    const/4 v2, 0x1

    const-string v3, "TRUE"

    invoke-direct {v0, v3, v2}, Lcom/cipherlab/rfid/Enable_State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/rfid/Enable_State;->TRUE:Lcom/cipherlab/rfid/Enable_State;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/cipherlab/rfid/Enable_State;

    .line 3
    sget-object v4, Lcom/cipherlab/rfid/Enable_State;->FALSE:Lcom/cipherlab/rfid/Enable_State;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/cipherlab/rfid/Enable_State;->ENUM$VALUES:[Lcom/cipherlab/rfid/Enable_State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/rfid/Enable_State;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/rfid/Enable_State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/rfid/Enable_State;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/rfid/Enable_State;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/rfid/Enable_State;->ENUM$VALUES:[Lcom/cipherlab/rfid/Enable_State;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/rfid/Enable_State;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
