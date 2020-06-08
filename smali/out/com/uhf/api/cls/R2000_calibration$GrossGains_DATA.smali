.class public Lcom/uhf/api/cls/R2000_calibration$GrossGains_DATA;
.super Ljava/lang/Object;
.source "R2000_calibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/R2000_calibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GrossGains_DATA"
.end annotation


# instance fields
.field Lad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/uhf/api/cls/R2000_calibration;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/R2000_calibration;I)V
    .registers 3

    .line 503
    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$GrossGains_DATA;->this$0:Lcom/uhf/api/cls/R2000_calibration;

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$GrossGains_DATA;->Lad:Ljava/util/List;

    .line 505
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/uhf/api/cls/R2000_calibration;[B)V
    .registers 5

    .line 508
    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$GrossGains_DATA;->this$0:Lcom/uhf/api/cls/R2000_calibration;

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$GrossGains_DATA;->Lad:Ljava/util/List;

    const/4 p1, 0x0

    .line 513
    :goto_d
    array-length v0, p2

    if-lt p1, v0, :cond_11

    return-void

    :cond_11
    add-int/lit8 p1, p1, 0x1

    .line 516
    invoke-static {p2, p1}, Lcom/uhf/api/cls/R2000_calibration;->bytesToint([BI)I

    move-result v0

    .line 517
    iget-object v1, p0, Lcom/uhf/api/cls/R2000_calibration$GrossGains_DATA;->Lad:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x4

    goto :goto_d
.end method


# virtual methods
.method public AddTo(I)V
    .registers 3

    .line 523
    iget-object v0, p0, Lcom/uhf/api/cls/R2000_calibration$GrossGains_DATA;->Lad:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 525
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method public LAD()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/uhf/api/cls/R2000_calibration$GrossGains_DATA;->Lad:Ljava/util/List;

    return-object v0
.end method

.method public ToByteData()[B
    .registers 4

    .line 530
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 532
    iget-object v1, p0, Lcom/uhf/api/cls/R2000_calibration$GrossGains_DATA;->Lad:Ljava/util/List;

    if-eqz v1, :cond_31

    const/4 v1, 0x0

    .line 534
    :goto_a
    iget-object v2, p0, Lcom/uhf/api/cls/R2000_calibration$GrossGains_DATA;->Lad:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_13

    goto :goto_31

    :cond_13
    int-to-byte v2, v1

    .line 536
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    iget-object v2, p0, Lcom/uhf/api/cls/R2000_calibration$GrossGains_DATA;->Lad:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/uhf/api/cls/R2000_calibration;->intTolistbytes(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 541
    :cond_31
    :goto_31
    invoke-static {v0}, Lcom/uhf/api/cls/R2000_calibration;->ListBtobytes(Ljava/util/List;)[B

    move-result-object v0

    return-object v0
.end method
