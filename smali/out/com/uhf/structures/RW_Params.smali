.class public Lcom/uhf/structures/RW_Params;
.super Ljava/lang/Object;
.source "RW_Params.java"


# instance fields
.field public DataLen:I

.field public EPCData:[B

.field public EPCLen:I

.field public RSS:I

.field public ReadData:[B

.field public antennaPort:I

.field public status:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setAntennaPort(I)V
    .registers 2

    .line 18
    iput p1, p0, Lcom/uhf/structures/RW_Params;->antennaPort:I

    return-void
.end method

.method public setDataLen(I)V
    .registers 2

    .line 38
    iput p1, p0, Lcom/uhf/structures/RW_Params;->DataLen:I

    return-void
.end method

.method public setEPCData([B)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/uhf/structures/RW_Params;->EPCData:[B

    return-void
.end method

.method public setEPCLen(I)V
    .registers 2

    .line 33
    iput p1, p0, Lcom/uhf/structures/RW_Params;->EPCLen:I

    return-void
.end method

.method public setRSS(I)V
    .registers 2

    .line 43
    iput p1, p0, Lcom/uhf/structures/RW_Params;->RSS:I

    return-void
.end method

.method public setReadData([B)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/uhf/structures/RW_Params;->ReadData:[B

    return-void
.end method

.method public setStatus(I)V
    .registers 2

    .line 53
    iput p1, p0, Lcom/uhf/structures/RW_Params;->status:I

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 48
    iput p1, p0, Lcom/uhf/structures/RW_Params;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RW_Params{ReadData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uhf/structures/RW_Params;->ReadData:[B

    .line 61
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", EPCData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uhf/structures/RW_Params;->EPCData:[B

    .line 62
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", EPCLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uhf/structures/RW_Params;->EPCLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", DataLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uhf/structures/RW_Params;->DataLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", RSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uhf/structures/RW_Params;->RSS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uhf/structures/RW_Params;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uhf/structures/RW_Params;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
