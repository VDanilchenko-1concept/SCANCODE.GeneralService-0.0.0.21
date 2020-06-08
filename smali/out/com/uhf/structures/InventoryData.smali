.class public Lcom/uhf/structures/InventoryData;
.super Ljava/lang/Object;
.source "InventoryData.java"


# instance fields
.field public EPC_Data:[B

.field public RSSI:I

.field public antennaPortNum:I

.field public data:[B

.field public dataLength:I

.field public epcLength:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x42

    new-array v1, v0, [B

    .line 15
    iput-object v1, p0, Lcom/uhf/structures/InventoryData;->EPC_Data:[B

    new-array v0, v0, [B

    .line 16
    iput-object v0, p0, Lcom/uhf/structures/InventoryData;->data:[B

    return-void
.end method


# virtual methods
.method public setAntennaPortNum(I)V
    .registers 2

    .line 29
    iput p1, p0, Lcom/uhf/structures/InventoryData;->antennaPortNum:I

    return-void
.end method

.method public setData([B)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/uhf/structures/InventoryData;->data:[B

    return-void
.end method

.method public setDataLength(I)V
    .registers 2

    .line 54
    iput p1, p0, Lcom/uhf/structures/InventoryData;->dataLength:I

    return-void
.end method

.method public setEPC_Data([B)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/uhf/structures/InventoryData;->EPC_Data:[B

    return-void
.end method

.method public setEpcLength(I)V
    .registers 2

    .line 49
    iput p1, p0, Lcom/uhf/structures/InventoryData;->epcLength:I

    return-void
.end method

.method public setRSSI(I)V
    .registers 2

    .line 34
    iput p1, p0, Lcom/uhf/structures/InventoryData;->RSSI:I

    return-void
.end method

.method public setValue(II[B)V
    .registers 4

    .line 22
    iput p1, p0, Lcom/uhf/structures/InventoryData;->RSSI:I

    .line 23
    iput-object p3, p0, Lcom/uhf/structures/InventoryData;->EPC_Data:[B

    .line 24
    iput p2, p0, Lcom/uhf/structures/InventoryData;->epcLength:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InventoryData{antennaPortNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uhf/structures/InventoryData;->antennaPortNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", RSSI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uhf/structures/InventoryData;->RSSI:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", EPC_Data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uhf/structures/InventoryData;->EPC_Data:[B

    .line 63
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", TID_Data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uhf/structures/InventoryData;->data:[B

    .line 64
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", epcLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uhf/structures/InventoryData;->epcLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tidLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uhf/structures/InventoryData;->dataLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
