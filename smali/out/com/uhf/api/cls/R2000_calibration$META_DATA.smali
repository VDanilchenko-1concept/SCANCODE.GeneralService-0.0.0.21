.class public Lcom/uhf/api/cls/R2000_calibration$META_DATA;
.super Ljava/lang/Object;
.source "R2000_calibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/R2000_calibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "META_DATA"
.end annotation


# instance fields
.field public IsAntennaID:Z

.field public IsEmdData:Z

.field public IsFrequency:Z

.field public IsPro:Z

.field public IsRFU:Z

.field public IsRSSI:Z

.field public IsReadCnt:Z

.field public IsTimestamp:Z

.field final synthetic this$0:Lcom/uhf/api/cls/R2000_calibration;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/R2000_calibration;)V
    .registers 2

    .line 813
    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$META_DATA;->this$0:Lcom/uhf/api/cls/R2000_calibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetaflag()S
    .registers 3

    .line 826
    iget-boolean v0, p0, Lcom/uhf/api/cls/R2000_calibration$META_DATA;->IsReadCnt:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    int-to-short v0, v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 828
    :goto_8
    iget-boolean v1, p0, Lcom/uhf/api/cls/R2000_calibration$META_DATA;->IsRSSI:Z

    if-eqz v1, :cond_f

    or-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    .line 830
    :cond_f
    iget-boolean v1, p0, Lcom/uhf/api/cls/R2000_calibration$META_DATA;->IsAntennaID:Z

    if-eqz v1, :cond_16

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    .line 832
    :cond_16
    iget-boolean v1, p0, Lcom/uhf/api/cls/R2000_calibration$META_DATA;->IsFrequency:Z

    if-eqz v1, :cond_1d

    or-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    .line 834
    :cond_1d
    iget-boolean v1, p0, Lcom/uhf/api/cls/R2000_calibration$META_DATA;->IsTimestamp:Z

    if-eqz v1, :cond_24

    or-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    .line 836
    :cond_24
    iget-boolean v1, p0, Lcom/uhf/api/cls/R2000_calibration$META_DATA;->IsRFU:Z

    if-eqz v1, :cond_2b

    or-int/lit8 v0, v0, 0x20

    int-to-short v0, v0

    .line 838
    :cond_2b
    iget-boolean v1, p0, Lcom/uhf/api/cls/R2000_calibration$META_DATA;->IsPro:Z

    if-eqz v1, :cond_32

    or-int/lit8 v0, v0, 0x40

    int-to-short v0, v0

    .line 840
    :cond_32
    iget-boolean v1, p0, Lcom/uhf/api/cls/R2000_calibration$META_DATA;->IsEmdData:Z

    if-eqz v1, :cond_39

    or-int/lit16 v0, v0, 0x80

    int-to-short v0, v0

    :cond_39
    return v0
.end method
