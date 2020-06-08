.class public final enum Lcom/cipherlab/rfid/DeviceEvent;
.super Ljava/lang/Enum;
.source "DeviceEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/rfid/DeviceEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/rfid/DeviceEvent;

.field public static final enum LowBattery:Lcom/cipherlab/rfid/DeviceEvent;

.field public static final enum OverTemperature:Lcom/cipherlab/rfid/DeviceEvent;

.field public static final enum PowerSavingMode:Lcom/cipherlab/rfid/DeviceEvent;

.field public static final enum ScannerFailure:Lcom/cipherlab/rfid/DeviceEvent;

.field public static final enum UnKnown:Lcom/cipherlab/rfid/DeviceEvent;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 5
    new-instance v0, Lcom/cipherlab/rfid/DeviceEvent;

    const/4 v1, 0x0

    const-string v2, "UnKnown"

    invoke-direct {v0, v2, v1, v1}, Lcom/cipherlab/rfid/DeviceEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/DeviceEvent;->UnKnown:Lcom/cipherlab/rfid/DeviceEvent;

    .line 6
    new-instance v0, Lcom/cipherlab/rfid/DeviceEvent;

    const/4 v2, 0x1

    const-string v3, "PowerSavingMode"

    invoke-direct {v0, v3, v2, v2}, Lcom/cipherlab/rfid/DeviceEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/DeviceEvent;->PowerSavingMode:Lcom/cipherlab/rfid/DeviceEvent;

    .line 7
    new-instance v0, Lcom/cipherlab/rfid/DeviceEvent;

    const/4 v3, 0x2

    const-string v4, "LowBattery"

    const/16 v5, 0x10

    invoke-direct {v0, v4, v3, v5}, Lcom/cipherlab/rfid/DeviceEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/DeviceEvent;->LowBattery:Lcom/cipherlab/rfid/DeviceEvent;

    .line 8
    new-instance v0, Lcom/cipherlab/rfid/DeviceEvent;

    const/4 v4, 0x3

    const-string v5, "ScannerFailure"

    const/16 v6, 0x40

    invoke-direct {v0, v5, v4, v6}, Lcom/cipherlab/rfid/DeviceEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/DeviceEvent;->ScannerFailure:Lcom/cipherlab/rfid/DeviceEvent;

    .line 9
    new-instance v0, Lcom/cipherlab/rfid/DeviceEvent;

    const/4 v5, 0x4

    const-string v6, "OverTemperature"

    const/16 v7, 0x4000

    invoke-direct {v0, v6, v5, v7}, Lcom/cipherlab/rfid/DeviceEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/DeviceEvent;->OverTemperature:Lcom/cipherlab/rfid/DeviceEvent;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/cipherlab/rfid/DeviceEvent;

    .line 3
    sget-object v7, Lcom/cipherlab/rfid/DeviceEvent;->UnKnown:Lcom/cipherlab/rfid/DeviceEvent;

    aput-object v7, v6, v1

    sget-object v1, Lcom/cipherlab/rfid/DeviceEvent;->PowerSavingMode:Lcom/cipherlab/rfid/DeviceEvent;

    aput-object v1, v6, v2

    sget-object v1, Lcom/cipherlab/rfid/DeviceEvent;->LowBattery:Lcom/cipherlab/rfid/DeviceEvent;

    aput-object v1, v6, v3

    sget-object v1, Lcom/cipherlab/rfid/DeviceEvent;->ScannerFailure:Lcom/cipherlab/rfid/DeviceEvent;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/cipherlab/rfid/DeviceEvent;->ENUM$VALUES:[Lcom/cipherlab/rfid/DeviceEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/cipherlab/rfid/DeviceEvent;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/cipherlab/rfid/DeviceEvent;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x10

    if-eq p0, v0, :cond_18

    const/16 v0, 0x40

    if-eq p0, v0, :cond_15

    const/16 v0, 0x4000

    if-eq p0, v0, :cond_12

    .line 34
    sget-object p0, Lcom/cipherlab/rfid/DeviceEvent;->UnKnown:Lcom/cipherlab/rfid/DeviceEvent;

    return-object p0

    .line 32
    :cond_12
    sget-object p0, Lcom/cipherlab/rfid/DeviceEvent;->OverTemperature:Lcom/cipherlab/rfid/DeviceEvent;

    return-object p0

    .line 30
    :cond_15
    sget-object p0, Lcom/cipherlab/rfid/DeviceEvent;->ScannerFailure:Lcom/cipherlab/rfid/DeviceEvent;

    return-object p0

    .line 28
    :cond_18
    sget-object p0, Lcom/cipherlab/rfid/DeviceEvent;->LowBattery:Lcom/cipherlab/rfid/DeviceEvent;

    return-object p0

    .line 26
    :cond_1b
    sget-object p0, Lcom/cipherlab/rfid/DeviceEvent;->PowerSavingMode:Lcom/cipherlab/rfid/DeviceEvent;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/rfid/DeviceEvent;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/rfid/DeviceEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/rfid/DeviceEvent;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/rfid/DeviceEvent;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/rfid/DeviceEvent;->ENUM$VALUES:[Lcom/cipherlab/rfid/DeviceEvent;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/rfid/DeviceEvent;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 20
    iget v0, p0, Lcom/cipherlab/rfid/DeviceEvent;->value:I

    return v0
.end method
