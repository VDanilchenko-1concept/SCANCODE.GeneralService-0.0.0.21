.class public final enum Lcom/uhf/api/cls/R2000_calibration$Region;
.super Ljava/lang/Enum;
.source "R2000_calibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/R2000_calibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Region"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uhf/api/cls/R2000_calibration$Region;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/uhf/api/cls/R2000_calibration$Region;

.field public static final enum EU:Lcom/uhf/api/cls/R2000_calibration$Region;

.field public static final enum EU2:Lcom/uhf/api/cls/R2000_calibration$Region;

.field public static final enum EU3:Lcom/uhf/api/cls/R2000_calibration$Region;

.field public static final enum IN:Lcom/uhf/api/cls/R2000_calibration$Region;

.field public static final enum JP:Lcom/uhf/api/cls/R2000_calibration$Region;

.field public static final enum KR:Lcom/uhf/api/cls/R2000_calibration$Region;

.field public static final enum KR2:Lcom/uhf/api/cls/R2000_calibration$Region;

.field public static final enum NA:Lcom/uhf/api/cls/R2000_calibration$Region;

.field public static final enum OPEN:Lcom/uhf/api/cls/R2000_calibration$Region;

.field public static final enum PRC:Lcom/uhf/api/cls/R2000_calibration$Region;

.field public static final enum PRC2:Lcom/uhf/api/cls/R2000_calibration$Region;

.field public static final enum UNSPEC:Lcom/uhf/api/cls/R2000_calibration$Region;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 26
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$Region;

    const/4 v1, 0x0

    const-string v2, "UNSPEC"

    .line 29
    invoke-direct {v0, v2, v1, v1}, Lcom/uhf/api/cls/R2000_calibration$Region;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$Region;->UNSPEC:Lcom/uhf/api/cls/R2000_calibration$Region;

    .line 30
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$Region;

    const/4 v2, 0x1

    const-string v3, "NA"

    .line 33
    invoke-direct {v0, v3, v2, v2}, Lcom/uhf/api/cls/R2000_calibration$Region;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$Region;->NA:Lcom/uhf/api/cls/R2000_calibration$Region;

    .line 34
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$Region;

    const/4 v3, 0x2

    const-string v4, "EU"

    .line 37
    invoke-direct {v0, v4, v3, v3}, Lcom/uhf/api/cls/R2000_calibration$Region;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$Region;->EU:Lcom/uhf/api/cls/R2000_calibration$Region;

    .line 38
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$Region;

    const/4 v4, 0x3

    const-string v5, "KR"

    .line 41
    invoke-direct {v0, v5, v4, v4}, Lcom/uhf/api/cls/R2000_calibration$Region;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$Region;->KR:Lcom/uhf/api/cls/R2000_calibration$Region;

    .line 42
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$Region;

    const/4 v5, 0x4

    const-string v6, "IN"

    .line 45
    invoke-direct {v0, v6, v5, v5}, Lcom/uhf/api/cls/R2000_calibration$Region;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$Region;->IN:Lcom/uhf/api/cls/R2000_calibration$Region;

    .line 46
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$Region;

    const/4 v6, 0x5

    const-string v7, "JP"

    .line 49
    invoke-direct {v0, v7, v6, v6}, Lcom/uhf/api/cls/R2000_calibration$Region;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$Region;->JP:Lcom/uhf/api/cls/R2000_calibration$Region;

    .line 50
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$Region;

    const/4 v7, 0x6

    const-string v8, "PRC"

    .line 53
    invoke-direct {v0, v8, v7, v7}, Lcom/uhf/api/cls/R2000_calibration$Region;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$Region;->PRC:Lcom/uhf/api/cls/R2000_calibration$Region;

    .line 54
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$Region;

    const/4 v8, 0x7

    const-string v9, "EU2"

    .line 57
    invoke-direct {v0, v9, v8, v8}, Lcom/uhf/api/cls/R2000_calibration$Region;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$Region;->EU2:Lcom/uhf/api/cls/R2000_calibration$Region;

    .line 58
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$Region;

    const/16 v9, 0x8

    const-string v10, "EU3"

    .line 61
    invoke-direct {v0, v10, v9, v9}, Lcom/uhf/api/cls/R2000_calibration$Region;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$Region;->EU3:Lcom/uhf/api/cls/R2000_calibration$Region;

    .line 62
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$Region;

    const/16 v10, 0x9

    const-string v11, "KR2"

    .line 65
    invoke-direct {v0, v11, v10, v10}, Lcom/uhf/api/cls/R2000_calibration$Region;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$Region;->KR2:Lcom/uhf/api/cls/R2000_calibration$Region;

    .line 66
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$Region;

    const/16 v11, 0xa

    const-string v12, "PRC2"

    .line 69
    invoke-direct {v0, v12, v11, v11}, Lcom/uhf/api/cls/R2000_calibration$Region;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$Region;->PRC2:Lcom/uhf/api/cls/R2000_calibration$Region;

    .line 70
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$Region;

    const/16 v12, 0xb

    const-string v13, "OPEN"

    const/16 v14, 0xff

    .line 73
    invoke-direct {v0, v13, v12, v14}, Lcom/uhf/api/cls/R2000_calibration$Region;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$Region;->OPEN:Lcom/uhf/api/cls/R2000_calibration$Region;

    const/16 v13, 0xc

    new-array v13, v13, [Lcom/uhf/api/cls/R2000_calibration$Region;

    .line 24
    sget-object v14, Lcom/uhf/api/cls/R2000_calibration$Region;->UNSPEC:Lcom/uhf/api/cls/R2000_calibration$Region;

    aput-object v14, v13, v1

    sget-object v1, Lcom/uhf/api/cls/R2000_calibration$Region;->NA:Lcom/uhf/api/cls/R2000_calibration$Region;

    aput-object v1, v13, v2

    sget-object v1, Lcom/uhf/api/cls/R2000_calibration$Region;->EU:Lcom/uhf/api/cls/R2000_calibration$Region;

    aput-object v1, v13, v3

    sget-object v1, Lcom/uhf/api/cls/R2000_calibration$Region;->KR:Lcom/uhf/api/cls/R2000_calibration$Region;

    aput-object v1, v13, v4

    sget-object v1, Lcom/uhf/api/cls/R2000_calibration$Region;->IN:Lcom/uhf/api/cls/R2000_calibration$Region;

    aput-object v1, v13, v5

    sget-object v1, Lcom/uhf/api/cls/R2000_calibration$Region;->JP:Lcom/uhf/api/cls/R2000_calibration$Region;

    aput-object v1, v13, v6

    sget-object v1, Lcom/uhf/api/cls/R2000_calibration$Region;->PRC:Lcom/uhf/api/cls/R2000_calibration$Region;

    aput-object v1, v13, v7

    sget-object v1, Lcom/uhf/api/cls/R2000_calibration$Region;->EU2:Lcom/uhf/api/cls/R2000_calibration$Region;

    aput-object v1, v13, v8

    sget-object v1, Lcom/uhf/api/cls/R2000_calibration$Region;->EU3:Lcom/uhf/api/cls/R2000_calibration$Region;

    aput-object v1, v13, v9

    sget-object v1, Lcom/uhf/api/cls/R2000_calibration$Region;->KR2:Lcom/uhf/api/cls/R2000_calibration$Region;

    aput-object v1, v13, v10

    sget-object v1, Lcom/uhf/api/cls/R2000_calibration$Region;->PRC2:Lcom/uhf/api/cls/R2000_calibration$Region;

    aput-object v1, v13, v11

    aput-object v0, v13, v12

    sput-object v13, Lcom/uhf/api/cls/R2000_calibration$Region;->ENUM$VALUES:[Lcom/uhf/api/cls/R2000_calibration$Region;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 74
    iput p1, p0, Lcom/uhf/api/cls/R2000_calibration$Region;->value:I

    .line 76
    iput p3, p0, Lcom/uhf/api/cls/R2000_calibration$Region;->value:I

    return-void
.end method

.method static synthetic access$2(Lcom/uhf/api/cls/R2000_calibration$Region;)I
    .registers 1

    .line 74
    iget p0, p0, Lcom/uhf/api/cls/R2000_calibration$Region;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uhf/api/cls/R2000_calibration$Region;
    .registers 2

    .line 1
    const-class v0, Lcom/uhf/api/cls/R2000_calibration$Region;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uhf/api/cls/R2000_calibration$Region;

    return-object p0
.end method

.method public static values()[Lcom/uhf/api/cls/R2000_calibration$Region;
    .registers 4

    .line 1
    sget-object v0, Lcom/uhf/api/cls/R2000_calibration$Region;->ENUM$VALUES:[Lcom/uhf/api/cls/R2000_calibration$Region;

    array-length v1, v0

    new-array v2, v1, [Lcom/uhf/api/cls/R2000_calibration$Region;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
