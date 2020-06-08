.class public Lcom/uhf/api/cls/R2000_calibration$TestFre_DATA;
.super Ljava/lang/Object;
.source "R2000_calibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/R2000_calibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TestFre_DATA"
.end annotation


# instance fields
.field freq:I

.field reserved:I

.field final synthetic this$0:Lcom/uhf/api/cls/R2000_calibration;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/R2000_calibration;II)V
    .registers 4

    .line 362
    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$TestFre_DATA;->this$0:Lcom/uhf/api/cls/R2000_calibration;

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput p2, p0, Lcom/uhf/api/cls/R2000_calibration$TestFre_DATA;->reserved:I

    .line 364
    iput p3, p0, Lcom/uhf/api/cls/R2000_calibration$TestFre_DATA;->freq:I

    return-void
.end method


# virtual methods
.method public ToByteData()[B
    .registers 3

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    iget v1, p0, Lcom/uhf/api/cls/R2000_calibration$TestFre_DATA;->reserved:I

    invoke-static {v1}, Lcom/uhf/api/cls/R2000_calibration;->intTolistbytes(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 372
    iget v1, p0, Lcom/uhf/api/cls/R2000_calibration$TestFre_DATA;->freq:I

    invoke-static {v1}, Lcom/uhf/api/cls/R2000_calibration;->intTolistbytes(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 373
    invoke-static {v0}, Lcom/uhf/api/cls/R2000_calibration;->ListBtobytes(Ljava/util/List;)[B

    move-result-object v0

    return-object v0
.end method
