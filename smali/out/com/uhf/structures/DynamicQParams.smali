.class public Lcom/uhf/structures/DynamicQParams;
.super Ljava/lang/Object;
.source "DynamicQParams.java"


# instance fields
.field public maxQValue:I

.field public minQValue:I

.field public retryCount:I

.field public startQValue:I

.field public thresholdMultiplier:I

.field public toggleTarget:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 7

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/uhf/structures/DynamicQParams;->startQValue:I

    .line 21
    iput p2, p0, Lcom/uhf/structures/DynamicQParams;->minQValue:I

    .line 22
    iput p3, p0, Lcom/uhf/structures/DynamicQParams;->maxQValue:I

    .line 23
    iput p4, p0, Lcom/uhf/structures/DynamicQParams;->retryCount:I

    .line 24
    iput p5, p0, Lcom/uhf/structures/DynamicQParams;->toggleTarget:I

    .line 25
    iput p6, p0, Lcom/uhf/structures/DynamicQParams;->thresholdMultiplier:I

    return-void
.end method


# virtual methods
.method public setValue(IIIIII)V
    .registers 7

    .line 30
    iput p1, p0, Lcom/uhf/structures/DynamicQParams;->startQValue:I

    .line 31
    iput p2, p0, Lcom/uhf/structures/DynamicQParams;->minQValue:I

    .line 32
    iput p3, p0, Lcom/uhf/structures/DynamicQParams;->maxQValue:I

    .line 33
    iput p4, p0, Lcom/uhf/structures/DynamicQParams;->retryCount:I

    .line 34
    iput p5, p0, Lcom/uhf/structures/DynamicQParams;->toggleTarget:I

    .line 35
    iput p6, p0, Lcom/uhf/structures/DynamicQParams;->thresholdMultiplier:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DynamicQParams{startQValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uhf/structures/DynamicQParams;->startQValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minQValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uhf/structures/DynamicQParams;->minQValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxQValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uhf/structures/DynamicQParams;->maxQValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uhf/structures/DynamicQParams;->retryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toggleTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uhf/structures/DynamicQParams;->toggleTarget:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", thresholdMultiplier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uhf/structures/DynamicQParams;->thresholdMultiplier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
