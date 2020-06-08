.class final enum Lcom/pow/api/cls/RfidPower$DeviceType;
.super Ljava/lang/Enum;
.source "RfidPower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pow/api/cls/RfidPower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pow/api/cls/RfidPower$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/pow/api/cls/RfidPower$DeviceType;

.field public static final enum supion_M_3:Lcom/pow/api/cls/RfidPower$DeviceType;

.field public static final enum supion_M_4:Lcom/pow/api/cls/RfidPower$DeviceType;

.field public static final enum supion_S_3:Lcom/pow/api/cls/RfidPower$DeviceType;

.field public static final enum supion_S_4:Lcom/pow/api/cls/RfidPower$DeviceType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 260
    new-instance v0, Lcom/pow/api/cls/RfidPower$DeviceType;

    const/4 v1, 0x0

    const-string v2, "supion_S_3"

    invoke-direct {v0, v2, v1}, Lcom/pow/api/cls/RfidPower$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$DeviceType;->supion_S_3:Lcom/pow/api/cls/RfidPower$DeviceType;

    .line 261
    new-instance v0, Lcom/pow/api/cls/RfidPower$DeviceType;

    const/4 v2, 0x1

    const-string v3, "supion_S_4"

    invoke-direct {v0, v3, v2}, Lcom/pow/api/cls/RfidPower$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$DeviceType;->supion_S_4:Lcom/pow/api/cls/RfidPower$DeviceType;

    .line 262
    new-instance v0, Lcom/pow/api/cls/RfidPower$DeviceType;

    const/4 v3, 0x2

    const-string v4, "supion_M_3"

    invoke-direct {v0, v4, v3}, Lcom/pow/api/cls/RfidPower$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$DeviceType;->supion_M_3:Lcom/pow/api/cls/RfidPower$DeviceType;

    .line 263
    new-instance v0, Lcom/pow/api/cls/RfidPower$DeviceType;

    const/4 v4, 0x3

    const-string v5, "supion_M_4"

    invoke-direct {v0, v5, v4}, Lcom/pow/api/cls/RfidPower$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pow/api/cls/RfidPower$DeviceType;->supion_M_4:Lcom/pow/api/cls/RfidPower$DeviceType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/pow/api/cls/RfidPower$DeviceType;

    .line 259
    sget-object v6, Lcom/pow/api/cls/RfidPower$DeviceType;->supion_S_3:Lcom/pow/api/cls/RfidPower$DeviceType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/pow/api/cls/RfidPower$DeviceType;->supion_S_4:Lcom/pow/api/cls/RfidPower$DeviceType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/pow/api/cls/RfidPower$DeviceType;->supion_M_3:Lcom/pow/api/cls/RfidPower$DeviceType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/pow/api/cls/RfidPower$DeviceType;->ENUM$VALUES:[Lcom/pow/api/cls/RfidPower$DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 259
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pow/api/cls/RfidPower$DeviceType;
    .registers 2

    .line 1
    const-class v0, Lcom/pow/api/cls/RfidPower$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pow/api/cls/RfidPower$DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/pow/api/cls/RfidPower$DeviceType;
    .registers 4

    .line 1
    sget-object v0, Lcom/pow/api/cls/RfidPower$DeviceType;->ENUM$VALUES:[Lcom/pow/api/cls/RfidPower$DeviceType;

    array-length v1, v0

    new-array v2, v1, [Lcom/pow/api/cls/RfidPower$DeviceType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
