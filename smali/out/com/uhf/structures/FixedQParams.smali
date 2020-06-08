.class public Lcom/uhf/structures/FixedQParams;
.super Ljava/lang/Object;
.source "FixedQParams.java"


# instance fields
.field public qValue:I

.field public repeatUntiNoTags:I

.field public retryCount:I

.field public toggleTarget:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/uhf/structures/FixedQParams;->qValue:I

    .line 19
    iput p2, p0, Lcom/uhf/structures/FixedQParams;->retryCount:I

    .line 20
    iput p3, p0, Lcom/uhf/structures/FixedQParams;->toggleTarget:I

    .line 21
    iput p4, p0, Lcom/uhf/structures/FixedQParams;->repeatUntiNoTags:I

    return-void
.end method


# virtual methods
.method public setValue(IIII)V
    .registers 5

    .line 26
    iput p1, p0, Lcom/uhf/structures/FixedQParams;->qValue:I

    .line 27
    iput p2, p0, Lcom/uhf/structures/FixedQParams;->retryCount:I

    .line 28
    iput p3, p0, Lcom/uhf/structures/FixedQParams;->toggleTarget:I

    .line 29
    iput p4, p0, Lcom/uhf/structures/FixedQParams;->repeatUntiNoTags:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FixedQParams{qValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uhf/structures/FixedQParams;->qValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uhf/structures/FixedQParams;->retryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toggleTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uhf/structures/FixedQParams;->toggleTarget:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", repeatUntiNoTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uhf/structures/FixedQParams;->repeatUntiNoTags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
