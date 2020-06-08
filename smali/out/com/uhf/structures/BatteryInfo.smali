.class public Lcom/uhf/structures/BatteryInfo;
.super Ljava/lang/Object;
.source "BatteryInfo.java"


# instance fields
.field public statue:I

.field public voltage:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(II)V
    .registers 3

    .line 10
    iput p1, p0, Lcom/uhf/structures/BatteryInfo;->statue:I

    .line 11
    iput p2, p0, Lcom/uhf/structures/BatteryInfo;->voltage:I

    return-void
.end method
