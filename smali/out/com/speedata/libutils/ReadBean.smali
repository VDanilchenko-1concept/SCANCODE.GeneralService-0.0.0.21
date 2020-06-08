.class public Lcom/speedata/libutils/ReadBean;
.super Ljava/lang/Object;
.source "ReadBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/speedata/libutils/ReadBean$InfraredBean;,
        Lcom/speedata/libutils/ReadBean$ZigbeeBean;,
        Lcom/speedata/libutils/ReadBean$ScanBean;,
        Lcom/speedata/libutils/ReadBean$Sp433Bean;,
        Lcom/speedata/libutils/ReadBean$Lf2Bean;,
        Lcom/speedata/libutils/ReadBean$Lf1Bean;,
        Lcom/speedata/libutils/ReadBean$TempBean;,
        Lcom/speedata/libutils/ReadBean$DistBean;,
        Lcom/speedata/libutils/ReadBean$FingerBean;,
        Lcom/speedata/libutils/ReadBean$PasmBean;,
        Lcom/speedata/libutils/ReadBean$PrintBean;,
        Lcom/speedata/libutils/ReadBean$R6Bean;,
        Lcom/speedata/libutils/ReadBean$UhfBean;,
        Lcom/speedata/libutils/ReadBean$Id2Bean;
    }
.end annotation


# instance fields
.field private dist:Lcom/speedata/libutils/ReadBean$DistBean;

.field private finger:Lcom/speedata/libutils/ReadBean$FingerBean;

.field private id2:Lcom/speedata/libutils/ReadBean$Id2Bean;

.field private infrared:Lcom/speedata/libutils/ReadBean$InfraredBean;

.field private lf1:Lcom/speedata/libutils/ReadBean$Lf1Bean;

.field private lf2:Lcom/speedata/libutils/ReadBean$Lf2Bean;

.field private pasm:Lcom/speedata/libutils/ReadBean$PasmBean;

.field private print:Lcom/speedata/libutils/ReadBean$PrintBean;

.field private r6:Lcom/speedata/libutils/ReadBean$R6Bean;

.field private scan:Lcom/speedata/libutils/ReadBean$ScanBean;

.field private sp433:Lcom/speedata/libutils/ReadBean$Sp433Bean;

.field private temp:Lcom/speedata/libutils/ReadBean$TempBean;

.field private uhf:Lcom/speedata/libutils/ReadBean$UhfBean;

.field private zigbee:Lcom/speedata/libutils/ReadBean$ZigbeeBean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDist()Lcom/speedata/libutils/ReadBean$DistBean;
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/speedata/libutils/ReadBean;->dist:Lcom/speedata/libutils/ReadBean$DistBean;

    return-object v0
.end method

.method public getFinger()Lcom/speedata/libutils/ReadBean$FingerBean;
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/speedata/libutils/ReadBean;->finger:Lcom/speedata/libutils/ReadBean$FingerBean;

    return-object v0
.end method

.method public getId2()Lcom/speedata/libutils/ReadBean$Id2Bean;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/speedata/libutils/ReadBean;->id2:Lcom/speedata/libutils/ReadBean$Id2Bean;

    return-object v0
.end method

.method public getInfrared()Lcom/speedata/libutils/ReadBean$InfraredBean;
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/speedata/libutils/ReadBean;->infrared:Lcom/speedata/libutils/ReadBean$InfraredBean;

    return-object v0
.end method

.method public getLf1()Lcom/speedata/libutils/ReadBean$Lf1Bean;
    .registers 2

    .line 213
    iget-object v0, p0, Lcom/speedata/libutils/ReadBean;->lf1:Lcom/speedata/libutils/ReadBean$Lf1Bean;

    return-object v0
.end method

.method public getLf2()Lcom/speedata/libutils/ReadBean$Lf2Bean;
    .registers 2

    .line 221
    iget-object v0, p0, Lcom/speedata/libutils/ReadBean;->lf2:Lcom/speedata/libutils/ReadBean$Lf2Bean;

    return-object v0
.end method

.method public getPasm()Lcom/speedata/libutils/ReadBean$PasmBean;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/speedata/libutils/ReadBean;->pasm:Lcom/speedata/libutils/ReadBean$PasmBean;

    return-object v0
.end method

.method public getPrint()Lcom/speedata/libutils/ReadBean$PrintBean;
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/speedata/libutils/ReadBean;->print:Lcom/speedata/libutils/ReadBean$PrintBean;

    return-object v0
.end method

.method public getR6()Lcom/speedata/libutils/ReadBean$R6Bean;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/speedata/libutils/ReadBean;->r6:Lcom/speedata/libutils/ReadBean$R6Bean;

    return-object v0
.end method

.method public getScan()Lcom/speedata/libutils/ReadBean$ScanBean;
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/speedata/libutils/ReadBean;->scan:Lcom/speedata/libutils/ReadBean$ScanBean;

    return-object v0
.end method

.method public getSp433()Lcom/speedata/libutils/ReadBean$Sp433Bean;
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/speedata/libutils/ReadBean;->sp433:Lcom/speedata/libutils/ReadBean$Sp433Bean;

    return-object v0
.end method

.method public getTemp()Lcom/speedata/libutils/ReadBean$TempBean;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/speedata/libutils/ReadBean;->temp:Lcom/speedata/libutils/ReadBean$TempBean;

    return-object v0
.end method

.method public getUhf()Lcom/speedata/libutils/ReadBean$UhfBean;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/speedata/libutils/ReadBean;->uhf:Lcom/speedata/libutils/ReadBean$UhfBean;

    return-object v0
.end method

.method public getZigbee()Lcom/speedata/libutils/ReadBean$ZigbeeBean;
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/speedata/libutils/ReadBean;->zigbee:Lcom/speedata/libutils/ReadBean$ZigbeeBean;

    return-object v0
.end method

.method public setDist(Lcom/speedata/libutils/ReadBean$DistBean;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/speedata/libutils/ReadBean;->dist:Lcom/speedata/libutils/ReadBean$DistBean;

    return-void
.end method

.method public setFinger(Lcom/speedata/libutils/ReadBean$FingerBean;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lcom/speedata/libutils/ReadBean;->finger:Lcom/speedata/libutils/ReadBean$FingerBean;

    return-void
.end method

.method public setId2(Lcom/speedata/libutils/ReadBean$Id2Bean;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/speedata/libutils/ReadBean;->id2:Lcom/speedata/libutils/ReadBean$Id2Bean;

    return-void
.end method

.method public setInfrared(Lcom/speedata/libutils/ReadBean$InfraredBean;)V
    .registers 2

    .line 257
    iput-object p1, p0, Lcom/speedata/libutils/ReadBean;->infrared:Lcom/speedata/libutils/ReadBean$InfraredBean;

    return-void
.end method

.method public setLf1(Lcom/speedata/libutils/ReadBean$Lf1Bean;)V
    .registers 2

    .line 217
    iput-object p1, p0, Lcom/speedata/libutils/ReadBean;->lf1:Lcom/speedata/libutils/ReadBean$Lf1Bean;

    return-void
.end method

.method public setLf2(Lcom/speedata/libutils/ReadBean$Lf2Bean;)V
    .registers 2

    .line 225
    iput-object p1, p0, Lcom/speedata/libutils/ReadBean;->lf2:Lcom/speedata/libutils/ReadBean$Lf2Bean;

    return-void
.end method

.method public setPasm(Lcom/speedata/libutils/ReadBean$PasmBean;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/speedata/libutils/ReadBean;->pasm:Lcom/speedata/libutils/ReadBean$PasmBean;

    return-void
.end method

.method public setPrint(Lcom/speedata/libutils/ReadBean$PrintBean;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/speedata/libutils/ReadBean;->print:Lcom/speedata/libutils/ReadBean$PrintBean;

    return-void
.end method

.method public setR6(Lcom/speedata/libutils/ReadBean$R6Bean;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/speedata/libutils/ReadBean;->r6:Lcom/speedata/libutils/ReadBean$R6Bean;

    return-void
.end method

.method public setScan(Lcom/speedata/libutils/ReadBean$ScanBean;)V
    .registers 2

    .line 241
    iput-object p1, p0, Lcom/speedata/libutils/ReadBean;->scan:Lcom/speedata/libutils/ReadBean$ScanBean;

    return-void
.end method

.method public setSp433(Lcom/speedata/libutils/ReadBean$Sp433Bean;)V
    .registers 2

    .line 233
    iput-object p1, p0, Lcom/speedata/libutils/ReadBean;->sp433:Lcom/speedata/libutils/ReadBean$Sp433Bean;

    return-void
.end method

.method public setTemp(Lcom/speedata/libutils/ReadBean$TempBean;)V
    .registers 2

    .line 209
    iput-object p1, p0, Lcom/speedata/libutils/ReadBean;->temp:Lcom/speedata/libutils/ReadBean$TempBean;

    return-void
.end method

.method public setUhf(Lcom/speedata/libutils/ReadBean$UhfBean;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/speedata/libutils/ReadBean;->uhf:Lcom/speedata/libutils/ReadBean$UhfBean;

    return-void
.end method

.method public setZigbee(Lcom/speedata/libutils/ReadBean$ZigbeeBean;)V
    .registers 2

    .line 249
    iput-object p1, p0, Lcom/speedata/libutils/ReadBean;->zigbee:Lcom/speedata/libutils/ReadBean$ZigbeeBean;

    return-void
.end method
