.class public Lcom/uhf/structures/AntennaPorts;
.super Ljava/lang/Object;
.source "AntennaPorts.java"


# instance fields
.field public antennaPort:I

.field public antennaStatus:I

.field public dwellTime:I

.field public numberInventoryCycles:I

.field public powerLevel:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAntennaPort()I
    .registers 2

    .line 47
    iget v0, p0, Lcom/uhf/structures/AntennaPorts;->antennaPort:I

    return v0
.end method

.method public getAntennaStatus()I
    .registers 2

    .line 52
    iget v0, p0, Lcom/uhf/structures/AntennaPorts;->antennaStatus:I

    return v0
.end method

.method public getDwellTime()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/uhf/structures/AntennaPorts;->dwellTime:I

    return v0
.end method

.method public getNumberInventoryCycles()I
    .registers 2

    .line 67
    iget v0, p0, Lcom/uhf/structures/AntennaPorts;->numberInventoryCycles:I

    return v0
.end method

.method public getPowerLevel()I
    .registers 2

    .line 57
    iget v0, p0, Lcom/uhf/structures/AntennaPorts;->powerLevel:I

    return v0
.end method

.method public setAntennaPort(I)V
    .registers 2

    .line 22
    iput p1, p0, Lcom/uhf/structures/AntennaPorts;->antennaPort:I

    return-void
.end method

.method public setAntennaStatus(I)V
    .registers 2

    .line 27
    iput p1, p0, Lcom/uhf/structures/AntennaPorts;->antennaStatus:I

    return-void
.end method

.method public setDwellTime(I)V
    .registers 2

    .line 37
    iput p1, p0, Lcom/uhf/structures/AntennaPorts;->dwellTime:I

    return-void
.end method

.method public setNumberInventoryCycles(I)V
    .registers 2

    .line 42
    iput p1, p0, Lcom/uhf/structures/AntennaPorts;->numberInventoryCycles:I

    return-void
.end method

.method public setPowerLevel(I)V
    .registers 2

    .line 32
    iput p1, p0, Lcom/uhf/structures/AntennaPorts;->powerLevel:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AntennaPorts{antennaPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uhf/structures/AntennaPorts;->antennaPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", antennaStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uhf/structures/AntennaPorts;->antennaStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", powerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uhf/structures/AntennaPorts;->powerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dwellTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uhf/structures/AntennaPorts;->dwellTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numberInventoryCycles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uhf/structures/AntennaPorts;->numberInventoryCycles:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
