.class public Lcom/uhf/structures/InventoryParams;
.super Ljava/lang/Object;
.source "InventoryParams.java"


# instance fields
.field public address:I

.field public inventoryArea:I

.field public len:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/uhf/structures/InventoryParams;->inventoryArea:I

    .line 12
    iput v0, p0, Lcom/uhf/structures/InventoryParams;->address:I

    .line 13
    iput v0, p0, Lcom/uhf/structures/InventoryParams;->len:I

    return-void
.end method


# virtual methods
.method public setValue(III)V
    .registers 4

    .line 17
    iput p1, p0, Lcom/uhf/structures/InventoryParams;->inventoryArea:I

    .line 18
    iput p2, p0, Lcom/uhf/structures/InventoryParams;->address:I

    .line 19
    iput p3, p0, Lcom/uhf/structures/InventoryParams;->len:I

    return-void
.end method
