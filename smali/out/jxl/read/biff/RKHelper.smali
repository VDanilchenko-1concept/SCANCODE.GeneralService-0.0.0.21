.class final Ljxl/read/biff/RKHelper;
.super Ljava/lang/Object;
.source "RKHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDouble(I)D
    .registers 6

    and-int/lit8 v0, p0, 0x2

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    if-eqz v0, :cond_12

    shr-int/lit8 v0, p0, 0x2

    int-to-double v3, v0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_11

    .line 49
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v1

    :cond_11
    return-wide v3

    :cond_12
    and-int/lit8 v0, p0, -0x4

    int-to-long v3, v0

    const/16 v0, 0x20

    shl-long/2addr v3, v0

    .line 58
    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_21

    div-double/2addr v3, v1

    :cond_21
    return-wide v3
.end method
