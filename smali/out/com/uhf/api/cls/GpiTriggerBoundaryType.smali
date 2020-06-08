.class public final enum Lcom/uhf/api/cls/GpiTriggerBoundaryType;
.super Ljava/lang/Enum;
.source "GpiTriggerBoundaryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uhf/api/cls/GpiTriggerBoundaryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/uhf/api/cls/GpiTriggerBoundaryType;

.field public static final enum GPITriggerBoundary_None:Lcom/uhf/api/cls/GpiTriggerBoundaryType;

.field public static final enum GPITriggerBoundary_StartInventory:Lcom/uhf/api/cls/GpiTriggerBoundaryType;

.field public static final enum GPITriggerBoundary_StopInventory:Lcom/uhf/api/cls/GpiTriggerBoundaryType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 4
    new-instance v0, Lcom/uhf/api/cls/GpiTriggerBoundaryType;

    const/4 v1, 0x0

    const-string v2, "GPITriggerBoundary_None"

    invoke-direct {v0, v2, v1}, Lcom/uhf/api/cls/GpiTriggerBoundaryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uhf/api/cls/GpiTriggerBoundaryType;->GPITriggerBoundary_None:Lcom/uhf/api/cls/GpiTriggerBoundaryType;

    .line 5
    new-instance v0, Lcom/uhf/api/cls/GpiTriggerBoundaryType;

    const/4 v2, 0x1

    const-string v3, "GPITriggerBoundary_StartInventory"

    invoke-direct {v0, v3, v2}, Lcom/uhf/api/cls/GpiTriggerBoundaryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uhf/api/cls/GpiTriggerBoundaryType;->GPITriggerBoundary_StartInventory:Lcom/uhf/api/cls/GpiTriggerBoundaryType;

    .line 6
    new-instance v0, Lcom/uhf/api/cls/GpiTriggerBoundaryType;

    const/4 v3, 0x2

    const-string v4, "GPITriggerBoundary_StopInventory"

    invoke-direct {v0, v4, v3}, Lcom/uhf/api/cls/GpiTriggerBoundaryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uhf/api/cls/GpiTriggerBoundaryType;->GPITriggerBoundary_StopInventory:Lcom/uhf/api/cls/GpiTriggerBoundaryType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/uhf/api/cls/GpiTriggerBoundaryType;

    .line 3
    sget-object v5, Lcom/uhf/api/cls/GpiTriggerBoundaryType;->GPITriggerBoundary_None:Lcom/uhf/api/cls/GpiTriggerBoundaryType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/uhf/api/cls/GpiTriggerBoundaryType;->GPITriggerBoundary_StartInventory:Lcom/uhf/api/cls/GpiTriggerBoundaryType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/uhf/api/cls/GpiTriggerBoundaryType;->ENUM$VALUES:[Lcom/uhf/api/cls/GpiTriggerBoundaryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uhf/api/cls/GpiTriggerBoundaryType;
    .registers 2

    .line 1
    const-class v0, Lcom/uhf/api/cls/GpiTriggerBoundaryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uhf/api/cls/GpiTriggerBoundaryType;

    return-object p0
.end method

.method public static values()[Lcom/uhf/api/cls/GpiTriggerBoundaryType;
    .registers 4

    .line 1
    sget-object v0, Lcom/uhf/api/cls/GpiTriggerBoundaryType;->ENUM$VALUES:[Lcom/uhf/api/cls/GpiTriggerBoundaryType;

    array-length v1, v0

    new-array v2, v1, [Lcom/uhf/api/cls/GpiTriggerBoundaryType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
