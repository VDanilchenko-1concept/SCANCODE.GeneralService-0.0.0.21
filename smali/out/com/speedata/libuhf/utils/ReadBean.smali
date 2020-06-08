.class public Lcom/speedata/libuhf/utils/ReadBean;
.super Ljava/lang/Object;
.source "ReadBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/speedata/libuhf/utils/ReadBean$InfraredBean;,
        Lcom/speedata/libuhf/utils/ReadBean$ZigbeeBean;,
        Lcom/speedata/libuhf/utils/ReadBean$ScanBean;,
        Lcom/speedata/libuhf/utils/ReadBean$Sp433Bean;,
        Lcom/speedata/libuhf/utils/ReadBean$Lf2Bean;,
        Lcom/speedata/libuhf/utils/ReadBean$Lf1Bean;,
        Lcom/speedata/libuhf/utils/ReadBean$TempBean;,
        Lcom/speedata/libuhf/utils/ReadBean$DistBean;,
        Lcom/speedata/libuhf/utils/ReadBean$FingerBean;,
        Lcom/speedata/libuhf/utils/ReadBean$PasmBean;,
        Lcom/speedata/libuhf/utils/ReadBean$PrintBean;,
        Lcom/speedata/libuhf/utils/ReadBean$R6Bean;,
        Lcom/speedata/libuhf/utils/ReadBean$UhfBean;,
        Lcom/speedata/libuhf/utils/ReadBean$Id2Bean;
    }
.end annotation


# instance fields
.field private dist:Lcom/speedata/libuhf/utils/ReadBean$DistBean;

.field private finger:Lcom/speedata/libuhf/utils/ReadBean$FingerBean;

.field private id2:Lcom/speedata/libuhf/utils/ReadBean$Id2Bean;

.field private infrared:Lcom/speedata/libuhf/utils/ReadBean$InfraredBean;

.field private lf1:Lcom/speedata/libuhf/utils/ReadBean$Lf1Bean;

.field private lf2:Lcom/speedata/libuhf/utils/ReadBean$Lf2Bean;

.field private pasm:Lcom/speedata/libuhf/utils/ReadBean$PasmBean;

.field private print:Lcom/speedata/libuhf/utils/ReadBean$PrintBean;

.field private r6:Lcom/speedata/libuhf/utils/ReadBean$R6Bean;

.field private scan:Lcom/speedata/libuhf/utils/ReadBean$ScanBean;

.field private sp433:Lcom/speedata/libuhf/utils/ReadBean$Sp433Bean;

.field private temp:Lcom/speedata/libuhf/utils/ReadBean$TempBean;

.field private uhf:Lcom/speedata/libuhf/utils/ReadBean$UhfBean;

.field private zigbee:Lcom/speedata/libuhf/utils/ReadBean$ZigbeeBean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDist()Lcom/speedata/libuhf/utils/ReadBean$DistBean;
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/speedata/libuhf/utils/ReadBean;->dist:Lcom/speedata/libuhf/utils/ReadBean$DistBean;

    return-object v0
.end method

.method public getFinger()Lcom/speedata/libuhf/utils/ReadBean$FingerBean;
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/speedata/libuhf/utils/ReadBean;->finger:Lcom/speedata/libuhf/utils/ReadBean$FingerBean;

    return-object v0
.end method

.method public getId2()Lcom/speedata/libuhf/utils/ReadBean$Id2Bean;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/speedata/libuhf/utils/ReadBean;->id2:Lcom/speedata/libuhf/utils/ReadBean$Id2Bean;

    return-object v0
.end method

.method public getInfrared()Lcom/speedata/libuhf/utils/ReadBean$InfraredBean;
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/speedata/libuhf/utils/ReadBean;->infrared:Lcom/speedata/libuhf/utils/ReadBean$InfraredBean;

    return-object v0
.end method

.method public getLf1()Lcom/speedata/libuhf/utils/ReadBean$Lf1Bean;
    .registers 2

    .line 213
    iget-object v0, p0, Lcom/speedata/libuhf/utils/ReadBean;->lf1:Lcom/speedata/libuhf/utils/ReadBean$Lf1Bean;

    return-object v0
.end method

.method public getLf2()Lcom/speedata/libuhf/utils/ReadBean$Lf2Bean;
    .registers 2

    .line 221
    iget-object v0, p0, Lcom/speedata/libuhf/utils/ReadBean;->lf2:Lcom/speedata/libuhf/utils/ReadBean$Lf2Bean;

    return-object v0
.end method

.method public getPasm()Lcom/speedata/libuhf/utils/ReadBean$PasmBean;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/speedata/libuhf/utils/ReadBean;->pasm:Lcom/speedata/libuhf/utils/ReadBean$PasmBean;

    return-object v0
.end method

.method public getPrint()Lcom/speedata/libuhf/utils/ReadBean$PrintBean;
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/speedata/libuhf/utils/ReadBean;->print:Lcom/speedata/libuhf/utils/ReadBean$PrintBean;

    return-object v0
.end method

.method public getR6()Lcom/speedata/libuhf/utils/ReadBean$R6Bean;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/speedata/libuhf/utils/ReadBean;->r6:Lcom/speedata/libuhf/utils/ReadBean$R6Bean;

    return-object v0
.end method

.method public getScan()Lcom/speedata/libuhf/utils/ReadBean$ScanBean;
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/speedata/libuhf/utils/ReadBean;->scan:Lcom/speedata/libuhf/utils/ReadBean$ScanBean;

    return-object v0
.end method

.method public getSp433()Lcom/speedata/libuhf/utils/ReadBean$Sp433Bean;
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/speedata/libuhf/utils/ReadBean;->sp433:Lcom/speedata/libuhf/utils/ReadBean$Sp433Bean;

    return-object v0
.end method

.method public getTemp()Lcom/speedata/libuhf/utils/ReadBean$TempBean;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/speedata/libuhf/utils/ReadBean;->temp:Lcom/speedata/libuhf/utils/ReadBean$TempBean;

    return-object v0
.end method

.method public getUhf()Lcom/speedata/libuhf/utils/ReadBean$UhfBean;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/speedata/libuhf/utils/ReadBean;->uhf:Lcom/speedata/libuhf/utils/ReadBean$UhfBean;

    return-object v0
.end method

.method public getZigbee()Lcom/speedata/libuhf/utils/ReadBean$ZigbeeBean;
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/speedata/libuhf/utils/ReadBean;->zigbee:Lcom/speedata/libuhf/utils/ReadBean$ZigbeeBean;

    return-object v0
.end method

.method public setDist(Lcom/speedata/libuhf/utils/ReadBean$DistBean;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/speedata/libuhf/utils/ReadBean;->dist:Lcom/speedata/libuhf/utils/ReadBean$DistBean;

    return-void
.end method

.method public setFinger(Lcom/speedata/libuhf/utils/ReadBean$FingerBean;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lcom/speedata/libuhf/utils/ReadBean;->finger:Lcom/speedata/libuhf/utils/ReadBean$FingerBean;

    return-void
.end method

.method public setId2(Lcom/speedata/libuhf/utils/ReadBean$Id2Bean;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/speedata/libuhf/utils/ReadBean;->id2:Lcom/speedata/libuhf/utils/ReadBean$Id2Bean;

    return-void
.end method

.method public setInfrared(Lcom/speedata/libuhf/utils/ReadBean$InfraredBean;)V
    .registers 2

    .line 257
    iput-object p1, p0, Lcom/speedata/libuhf/utils/ReadBean;->infrared:Lcom/speedata/libuhf/utils/ReadBean$InfraredBean;

    return-void
.end method

.method public setLf1(Lcom/speedata/libuhf/utils/ReadBean$Lf1Bean;)V
    .registers 2

    .line 217
    iput-object p1, p0, Lcom/speedata/libuhf/utils/ReadBean;->lf1:Lcom/speedata/libuhf/utils/ReadBean$Lf1Bean;

    return-void
.end method

.method public setLf2(Lcom/speedata/libuhf/utils/ReadBean$Lf2Bean;)V
    .registers 2

    .line 225
    iput-object p1, p0, Lcom/speedata/libuhf/utils/ReadBean;->lf2:Lcom/speedata/libuhf/utils/ReadBean$Lf2Bean;

    return-void
.end method

.method public setPasm(Lcom/speedata/libuhf/utils/ReadBean$PasmBean;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/speedata/libuhf/utils/ReadBean;->pasm:Lcom/speedata/libuhf/utils/ReadBean$PasmBean;

    return-void
.end method

.method public setPrint(Lcom/speedata/libuhf/utils/ReadBean$PrintBean;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/speedata/libuhf/utils/ReadBean;->print:Lcom/speedata/libuhf/utils/ReadBean$PrintBean;

    return-void
.end method

.method public setR6(Lcom/speedata/libuhf/utils/ReadBean$R6Bean;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/speedata/libuhf/utils/ReadBean;->r6:Lcom/speedata/libuhf/utils/ReadBean$R6Bean;

    return-void
.end method

.method public setScan(Lcom/speedata/libuhf/utils/ReadBean$ScanBean;)V
    .registers 2

    .line 241
    iput-object p1, p0, Lcom/speedata/libuhf/utils/ReadBean;->scan:Lcom/speedata/libuhf/utils/ReadBean$ScanBean;

    return-void
.end method

.method public setSp433(Lcom/speedata/libuhf/utils/ReadBean$Sp433Bean;)V
    .registers 2

    .line 233
    iput-object p1, p0, Lcom/speedata/libuhf/utils/ReadBean;->sp433:Lcom/speedata/libuhf/utils/ReadBean$Sp433Bean;

    return-void
.end method

.method public setTemp(Lcom/speedata/libuhf/utils/ReadBean$TempBean;)V
    .registers 2

    .line 209
    iput-object p1, p0, Lcom/speedata/libuhf/utils/ReadBean;->temp:Lcom/speedata/libuhf/utils/ReadBean$TempBean;

    return-void
.end method

.method public setUhf(Lcom/speedata/libuhf/utils/ReadBean$UhfBean;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/speedata/libuhf/utils/ReadBean;->uhf:Lcom/speedata/libuhf/utils/ReadBean$UhfBean;

    return-void
.end method

.method public setZigbee(Lcom/speedata/libuhf/utils/ReadBean$ZigbeeBean;)V
    .registers 2

    .line 249
    iput-object p1, p0, Lcom/speedata/libuhf/utils/ReadBean;->zigbee:Lcom/speedata/libuhf/utils/ReadBean$ZigbeeBean;

    return-void
.end method
