.class public final enum Landroid/serialport/DeviceControlSpd$PowerType;
.super Ljava/lang/Enum;
.source "DeviceControlSpd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/serialport/DeviceControlSpd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PowerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/serialport/DeviceControlSpd$PowerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/serialport/DeviceControlSpd$PowerType;

.field public static final enum EXPAND:Landroid/serialport/DeviceControlSpd$PowerType;

.field public static final enum EXPAND2:Landroid/serialport/DeviceControlSpd$PowerType;

.field public static final enum GAOTONG_MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

.field public static final enum MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

.field public static final enum MAIN_AND_EXPAND:Landroid/serialport/DeviceControlSpd$PowerType;

.field public static final enum MAIN_AND_EXPAND2:Landroid/serialport/DeviceControlSpd$PowerType;

.field public static final enum NEW_MAIN:Landroid/serialport/DeviceControlSpd$PowerType;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 47
    new-instance v0, Landroid/serialport/DeviceControlSpd$PowerType;

    const/4 v1, 0x0

    const-string v2, "MAIN"

    invoke-direct {v0, v2, v1}, Landroid/serialport/DeviceControlSpd$PowerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    .line 51
    new-instance v0, Landroid/serialport/DeviceControlSpd$PowerType;

    const/4 v2, 0x1

    const-string v3, "EXPAND"

    invoke-direct {v0, v3, v2}, Landroid/serialport/DeviceControlSpd$PowerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/serialport/DeviceControlSpd$PowerType;->EXPAND:Landroid/serialport/DeviceControlSpd$PowerType;

    .line 55
    new-instance v0, Landroid/serialport/DeviceControlSpd$PowerType;

    const/4 v3, 0x2

    const-string v4, "MAIN_AND_EXPAND"

    invoke-direct {v0, v4, v3}, Landroid/serialport/DeviceControlSpd$PowerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN_AND_EXPAND:Landroid/serialport/DeviceControlSpd$PowerType;

    .line 59
    new-instance v0, Landroid/serialport/DeviceControlSpd$PowerType;

    const/4 v4, 0x3

    const-string v5, "NEW_MAIN"

    invoke-direct {v0, v5, v4}, Landroid/serialport/DeviceControlSpd$PowerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/serialport/DeviceControlSpd$PowerType;->NEW_MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    .line 63
    new-instance v0, Landroid/serialport/DeviceControlSpd$PowerType;

    const/4 v5, 0x4

    const-string v6, "EXPAND2"

    invoke-direct {v0, v6, v5}, Landroid/serialport/DeviceControlSpd$PowerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/serialport/DeviceControlSpd$PowerType;->EXPAND2:Landroid/serialport/DeviceControlSpd$PowerType;

    .line 67
    new-instance v0, Landroid/serialport/DeviceControlSpd$PowerType;

    const/4 v6, 0x5

    const-string v7, "MAIN_AND_EXPAND2"

    invoke-direct {v0, v7, v6}, Landroid/serialport/DeviceControlSpd$PowerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN_AND_EXPAND2:Landroid/serialport/DeviceControlSpd$PowerType;

    .line 71
    new-instance v0, Landroid/serialport/DeviceControlSpd$PowerType;

    const/4 v7, 0x6

    const-string v8, "GAOTONG_MAIN"

    invoke-direct {v0, v8, v7}, Landroid/serialport/DeviceControlSpd$PowerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/serialport/DeviceControlSpd$PowerType;->GAOTONG_MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    const/4 v8, 0x7

    new-array v8, v8, [Landroid/serialport/DeviceControlSpd$PowerType;

    .line 43
    sget-object v9, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    aput-object v9, v8, v1

    sget-object v1, Landroid/serialport/DeviceControlSpd$PowerType;->EXPAND:Landroid/serialport/DeviceControlSpd$PowerType;

    aput-object v1, v8, v2

    sget-object v1, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN_AND_EXPAND:Landroid/serialport/DeviceControlSpd$PowerType;

    aput-object v1, v8, v3

    sget-object v1, Landroid/serialport/DeviceControlSpd$PowerType;->NEW_MAIN:Landroid/serialport/DeviceControlSpd$PowerType;

    aput-object v1, v8, v4

    sget-object v1, Landroid/serialport/DeviceControlSpd$PowerType;->EXPAND2:Landroid/serialport/DeviceControlSpd$PowerType;

    aput-object v1, v8, v5

    sget-object v1, Landroid/serialport/DeviceControlSpd$PowerType;->MAIN_AND_EXPAND2:Landroid/serialport/DeviceControlSpd$PowerType;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Landroid/serialport/DeviceControlSpd$PowerType;->$VALUES:[Landroid/serialport/DeviceControlSpd$PowerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/serialport/DeviceControlSpd$PowerType;
    .registers 2

    .line 43
    const-class v0, Landroid/serialport/DeviceControlSpd$PowerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/serialport/DeviceControlSpd$PowerType;

    return-object p0
.end method

.method public static values()[Landroid/serialport/DeviceControlSpd$PowerType;
    .registers 1

    .line 43
    sget-object v0, Landroid/serialport/DeviceControlSpd$PowerType;->$VALUES:[Landroid/serialport/DeviceControlSpd$PowerType;

    invoke-virtual {v0}, [Landroid/serialport/DeviceControlSpd$PowerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/serialport/DeviceControlSpd$PowerType;

    return-object v0
.end method
