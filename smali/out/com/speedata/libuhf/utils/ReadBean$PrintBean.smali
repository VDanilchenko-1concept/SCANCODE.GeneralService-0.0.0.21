.class public Lcom/speedata/libuhf/utils/ReadBean$PrintBean;
.super Ljava/lang/Object;
.source "ReadBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/speedata/libuhf/utils/ReadBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrintBean"
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

.field private powerType:Ljava/lang/String;

.field private serialPort:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBraut()I
    .registers 2

    .line 401
    iget v0, p0, Lcom/speedata/libuhf/utils/ReadBean$PrintBean;->braut:I

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

    .line 417
    iget-object v0, p0, Lcom/speedata/libuhf/utils/ReadBean$PrintBean;->gpio:Ljava/util/List;

    return-object v0
.end method

.method public getPowerType()Ljava/lang/String;
    .registers 2

    .line 409
    iget-object v0, p0, Lcom/speedata/libuhf/utils/ReadBean$PrintBean;->powerType:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialPort()Ljava/lang/String;
    .registers 2

    .line 393
    iget-object v0, p0, Lcom/speedata/libuhf/utils/ReadBean$PrintBean;->serialPort:Ljava/lang/String;

    return-object v0
.end method

.method public setBraut(I)V
    .registers 2

    .line 405
    iput p1, p0, Lcom/speedata/libuhf/utils/ReadBean$PrintBean;->braut:I

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

    .line 421
    iput-object p1, p0, Lcom/speedata/libuhf/utils/ReadBean$PrintBean;->gpio:Ljava/util/List;

    return-void
.end method

.method public setPowerType(Ljava/lang/String;)V
    .registers 2

    .line 413
    iput-object p1, p0, Lcom/speedata/libuhf/utils/ReadBean$PrintBean;->powerType:Ljava/lang/String;

    return-void
.end method

.method public setSerialPort(Ljava/lang/String;)V
    .registers 2

    .line 397
    iput-object p1, p0, Lcom/speedata/libuhf/utils/ReadBean$PrintBean;->serialPort:Ljava/lang/String;

    return-void
.end method
