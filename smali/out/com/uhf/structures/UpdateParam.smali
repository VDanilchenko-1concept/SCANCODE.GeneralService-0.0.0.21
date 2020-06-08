.class public Lcom/uhf/structures/UpdateParam;
.super Ljava/lang/Object;
.source "UpdateParam.java"


# instance fields
.field private chunkSize:I

.field private firmwareLen:I

.field private version:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChunkSize()I
    .registers 2

    .line 24
    iget v0, p0, Lcom/uhf/structures/UpdateParam;->chunkSize:I

    return v0
.end method

.method public setFirmwareLen(I)V
    .registers 2

    .line 20
    iput p1, p0, Lcom/uhf/structures/UpdateParam;->firmwareLen:I

    return-void
.end method

.method public setValue(I[B)V
    .registers 3

    .line 28
    iput p1, p0, Lcom/uhf/structures/UpdateParam;->chunkSize:I

    .line 29
    iput-object p2, p0, Lcom/uhf/structures/UpdateParam;->version:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateParam{version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uhf/structures/UpdateParam;->version:[B

    .line 35
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", chunkSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uhf/structures/UpdateParam;->chunkSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", firmwareLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uhf/structures/UpdateParam;->firmwareLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
