.class public Lcom/uhf/structures/AtrParams;
.super Ljava/lang/Object;
.source "AtrParams.java"


# instance fields
.field public atr:[B

.field public atr_len:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(I[B)V
    .registers 3

    .line 16
    iput p1, p0, Lcom/uhf/structures/AtrParams;->atr_len:I

    .line 17
    iput-object p2, p0, Lcom/uhf/structures/AtrParams;->atr:[B

    return-void
.end method
