.class public abstract Lcom/speedata/bean/BaseBean;
.super Ljava/lang/Object;
.source "BaseBean.java"


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

.field private name:Ljava/lang/String;

.field private powerType:Ljava/lang/String;

.field private resetGpio:I

.field private serialPort:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBraut()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/speedata/bean/BaseBean;->braut:I

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

    .line 78
    iget-object v0, p0, Lcom/speedata/bean/BaseBean;->gpio:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/speedata/bean/BaseBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerType()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/speedata/bean/BaseBean;->powerType:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialPort()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/speedata/bean/BaseBean;->serialPort:Ljava/lang/String;

    return-object v0
.end method

.method public setBraut(I)V
    .registers 2

    .line 66
    iput p1, p0, Lcom/speedata/bean/BaseBean;->braut:I

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

    .line 82
    iput-object p1, p0, Lcom/speedata/bean/BaseBean;->gpio:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)Lcom/speedata/bean/BaseBean;
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/speedata/bean/BaseBean;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setPowerType(Ljava/lang/String;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/speedata/bean/BaseBean;->powerType:Ljava/lang/String;

    return-void
.end method

.method public setSerialPort(Ljava/lang/String;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/speedata/bean/BaseBean;->serialPort:Ljava/lang/String;

    return-void
.end method
