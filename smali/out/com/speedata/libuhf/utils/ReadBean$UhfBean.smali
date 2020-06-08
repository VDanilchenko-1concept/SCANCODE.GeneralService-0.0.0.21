.class public Lcom/speedata/libuhf/utils/ReadBean$UhfBean;
.super Ljava/lang/Object;
.source "ReadBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/speedata/libuhf/utils/ReadBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UhfBean"
.end annotation


# instance fields
.field private braut:I

.field private gpio:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private module:Ljava/lang/String;

.field private powerType:Ljava/lang/String;

.field private serialPort:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBraut()I
    .registers 2

    .line 315
    iget v0, p0, Lcom/speedata/libuhf/utils/ReadBean$UhfBean;->braut:I

    return v0
.end method

.method public getGpio()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/speedata/libuhf/utils/ReadBean$UhfBean;->gpio:Ljava/util/List;

    return-object v0
.end method

.method public getModule()Ljava/lang/String;
    .registers 2

    .line 331
    iget-object v0, p0, Lcom/speedata/libuhf/utils/ReadBean$UhfBean;->module:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerType()Ljava/lang/String;
    .registers 2

    .line 323
    iget-object v0, p0, Lcom/speedata/libuhf/utils/ReadBean$UhfBean;->powerType:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialPort()Ljava/lang/String;
    .registers 2

    .line 307
    iget-object v0, p0, Lcom/speedata/libuhf/utils/ReadBean$UhfBean;->serialPort:Ljava/lang/String;

    return-object v0
.end method

.method public setBraut(I)V
    .registers 2

    .line 319
    iput p1, p0, Lcom/speedata/libuhf/utils/ReadBean$UhfBean;->braut:I

    return-void
.end method

.method public setGpio(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 343
    iput-object p1, p0, Lcom/speedata/libuhf/utils/ReadBean$UhfBean;->gpio:Ljava/util/List;

    return-void
.end method

.method public setModule(Ljava/lang/String;)V
    .registers 2

    .line 335
    iput-object p1, p0, Lcom/speedata/libuhf/utils/ReadBean$UhfBean;->module:Ljava/lang/String;

    return-void
.end method

.method public setPowerType(Ljava/lang/String;)V
    .registers 2

    .line 327
    iput-object p1, p0, Lcom/speedata/libuhf/utils/ReadBean$UhfBean;->powerType:Ljava/lang/String;

    return-void
.end method

.method public setSerialPort(Ljava/lang/String;)V
    .registers 2

    .line 311
    iput-object p1, p0, Lcom/speedata/libuhf/utils/ReadBean$UhfBean;->serialPort:Ljava/lang/String;

    return-void
.end method
