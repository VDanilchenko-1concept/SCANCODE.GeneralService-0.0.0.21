.class public Lcom/speedata/libuhf/utils/ReadBean$R6Bean;
.super Ljava/lang/Object;
.source "ReadBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/speedata/libuhf/utils/ReadBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "R6Bean"
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

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBraut()I
    .registers 2

    .line 362
    iget v0, p0, Lcom/speedata/libuhf/utils/ReadBean$R6Bean;->braut:I

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

    .line 378
    iget-object v0, p0, Lcom/speedata/libuhf/utils/ReadBean$R6Bean;->gpio:Ljava/util/List;

    return-object v0
.end method

.method public getPowerType()Ljava/lang/String;
    .registers 2

    .line 370
    iget-object v0, p0, Lcom/speedata/libuhf/utils/ReadBean$R6Bean;->powerType:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialPort()Ljava/lang/String;
    .registers 2

    .line 354
    iget-object v0, p0, Lcom/speedata/libuhf/utils/ReadBean$R6Bean;->serialPort:Ljava/lang/String;

    return-object v0
.end method

.method public setBraut(I)V
    .registers 2

    .line 366
    iput p1, p0, Lcom/speedata/libuhf/utils/ReadBean$R6Bean;->braut:I

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

    .line 382
    iput-object p1, p0, Lcom/speedata/libuhf/utils/ReadBean$R6Bean;->gpio:Ljava/util/List;

    return-void
.end method

.method public setPowerType(Ljava/lang/String;)V
    .registers 2

    .line 374
    iput-object p1, p0, Lcom/speedata/libuhf/utils/ReadBean$R6Bean;->powerType:Ljava/lang/String;

    return-void
.end method

.method public setSerialPort(Ljava/lang/String;)V
    .registers 2

    .line 358
    iput-object p1, p0, Lcom/speedata/libuhf/utils/ReadBean$R6Bean;->serialPort:Ljava/lang/String;

    return-void
.end method
