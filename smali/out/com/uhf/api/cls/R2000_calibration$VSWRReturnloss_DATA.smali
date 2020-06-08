.class public Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;
.super Ljava/lang/Object;
.source "R2000_calibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/R2000_calibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VSWRReturnloss_DATA"
.end annotation


# instance fields
.field ants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field lifre:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field lires:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field power:I

.field regb:Lcom/uhf/api/cls/R2000_calibration$Region;

.field final synthetic this$0:Lcom/uhf/api/cls/R2000_calibration;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/R2000_calibration;I[I[ILcom/uhf/api/cls/R2000_calibration$Region;)V
    .registers 6

    .line 408
    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->this$0:Lcom/uhf/api/cls/R2000_calibration;

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->lifre:Ljava/util/List;

    .line 410
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->ants:Ljava/util/List;

    .line 412
    iget-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->lifre:Ljava/util/List;

    invoke-static {p3}, Lcom/uhf/api/cls/R2000_calibration;->intsTolistints([I)Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 413
    iget-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->ants:Ljava/util/List;

    invoke-static {p4}, Lcom/uhf/api/cls/R2000_calibration;->intsTolistints([I)Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 415
    iput p2, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->power:I

    .line 417
    iput-object p5, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->regb:Lcom/uhf/api/cls/R2000_calibration$Region;

    return-void
.end method

.method public constructor <init>(Lcom/uhf/api/cls/R2000_calibration;[B)V
    .registers 6

    .line 425
    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->this$0:Lcom/uhf/api/cls/R2000_calibration;

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->lifre:Ljava/util/List;

    .line 427
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->ants:Ljava/util/List;

    .line 428
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->lires:Ljava/util/List;

    const/4 p1, 0x0

    .line 429
    aget-byte p1, p2, p1

    shl-int/lit8 p1, p1, 0x8

    const/4 v0, 0x1

    aget-byte v0, p2, v0

    or-int/2addr p1, v0

    iput p1, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->power:I

    .line 430
    invoke-static {}, Lcom/uhf/api/cls/R2000_calibration$Region;->values()[Lcom/uhf/api/cls/R2000_calibration$Region;

    move-result-object p1

    const/4 v0, 0x3

    aget-byte v0, p2, v0

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->regb:Lcom/uhf/api/cls/R2000_calibration$Region;

    const/4 p1, 0x5

    .line 432
    :goto_31
    array-length v0, p2

    if-lt p1, v0, :cond_35

    return-void

    .line 434
    :cond_35
    iget-object v0, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->lifre:Ljava/util/List;

    aget-byte v1, p2, p1

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p2, v2

    or-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object v0, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->lires:Ljava/util/List;

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p2, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x4

    goto :goto_31
.end method


# virtual methods
.method public Ants()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->ants:Ljava/util/List;

    return-object v0
.end method

.method public LiFre()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->lifre:Ljava/util/List;

    return-object v0
.end method

.method public Lires()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->lires:Ljava/util/List;

    return-object v0
.end method

.method public Power()I
    .registers 2

    .line 404
    iget v0, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->power:I

    return v0
.end method

.method public Regb()Lcom/uhf/api/cls/R2000_calibration$Region;
    .registers 2

    .line 400
    iget-object v0, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->regb:Lcom/uhf/api/cls/R2000_calibration$Region;

    return-object v0
.end method

.method public ToByteData()[B
    .registers 6

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 443
    iget v1, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->power:I

    const v2, 0xff00

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    iget v1, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->power:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 445
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v4, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->regb:Lcom/uhf/api/cls/R2000_calibration$Region;

    invoke-static {v4}, Lcom/uhf/api/cls/R2000_calibration$Region;->access$2(Lcom/uhf/api/cls/R2000_calibration$Region;)I

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    iget-object v4, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->lifre:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_9f

    .line 449
    iget-object v3, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->lifre:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    :goto_4d
    iget-object v3, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->lifre:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_56

    goto :goto_a2

    .line 455
    :cond_56
    iget-object v3, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->lifre:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/high16 v4, 0xff0000

    and-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object v3, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->lifre:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/2addr v3, v2

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    iget-object v3, p0, Lcom/uhf/api/cls/R2000_calibration$VSWRReturnloss_DATA;->lifre:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 463
    :cond_9f
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    :goto_a2
    invoke-static {v0}, Lcom/uhf/api/cls/R2000_calibration;->ListBtobytes(Ljava/util/List;)[B

    move-result-object v0

    return-object v0
.end method
