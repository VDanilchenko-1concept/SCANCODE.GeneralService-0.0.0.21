.class public Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;
.super Ljava/lang/Object;
.source "R2000_calibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/R2000_calibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Tagtemperture_DATA"
.end annotation


# instance fields
.field BankData:[B

.field pvtAntenna:I

.field pvtFrequency:I

.field pvtLqi:I

.field pvtPhase:I

.field pvtPro:I

.field pvtReadCount:I

.field pvtTsmp:I

.field tagcrc:[B

.field tagepc:[B

.field taglen:I

.field tagpc:[B

.field temperdata:[B

.field final synthetic this$0:Lcom/uhf/api/cls/R2000_calibration;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/R2000_calibration;)V
    .registers 2

    .line 603
    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->this$0:Lcom/uhf/api/cls/R2000_calibration;

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/uhf/api/cls/R2000_calibration;[BI)V
    .registers 11

    .line 607
    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->this$0:Lcom/uhf/api/cls/R2000_calibration;

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    mul-int/lit8 p3, p3, 0x2

    .line 608
    new-array p3, p3, [B

    iput-object p3, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->temperdata:[B

    const/4 p3, 0x0

    .line 610
    aget-byte v0, p2, p3

    const/16 v1, 0x10

    and-int/2addr v0, v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v0, :cond_c8

    .line 614
    aget-byte v0, p2, v3

    shl-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    const/4 v4, 0x3

    .line 615
    aget-byte v5, p2, p1

    or-int/2addr v0, v5

    int-to-short v0, v0

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_29

    .line 618
    aget-byte v4, p2, v4

    iput v4, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtReadCount:I

    const/4 v4, 0x4

    :cond_29
    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_34

    add-int/lit8 v5, v4, 0x1

    .line 620
    aget-byte v4, p2, v4

    iput v4, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtLqi:I

    move v4, v5

    :cond_34
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_45

    add-int/lit8 v5, v4, 0x1

    .line 623
    aget-byte v4, p2, v4

    and-int/lit8 v4, v4, 0xf

    iput v4, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtAntenna:I

    if-nez v4, :cond_44

    .line 625
    iput v1, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtAntenna:I

    :cond_44
    move v4, v5

    :cond_45
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_67

    add-int/lit8 v5, v4, 0x1

    .line 629
    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v1

    iput v4, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtFrequency:I

    add-int/lit8 v6, v5, 0x1

    .line 630
    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    iput v4, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtFrequency:I

    add-int/lit8 v5, v6, 0x1

    .line 631
    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    iput v4, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtFrequency:I

    move v4, v5

    :cond_67
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_95

    add-int/lit8 v5, v4, 0x1

    .line 635
    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    iput v4, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtTsmp:I

    add-int/lit8 v6, v5, 0x1

    .line 636
    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v1, v5, 0x10

    or-int/2addr v1, v4

    iput v1, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtTsmp:I

    add-int/lit8 v4, v6, 0x1

    .line 637
    aget-byte v5, p2, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v1, v5

    iput v1, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtTsmp:I

    add-int/lit8 v5, v4, 0x1

    .line 638
    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    iput v1, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtTsmp:I

    move v4, v5

    :cond_95
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_a1

    add-int/lit8 v1, v4, 0x1

    .line 644
    aget-byte v1, p2, v1

    iput v1, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtPhase:I

    add-int/lit8 v4, v4, 0x2

    :cond_a1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_ac

    add-int/lit8 v1, v4, 0x1

    .line 648
    aget-byte v4, p2, v4

    iput v4, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtPro:I

    move v4, v1

    :cond_ac
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_c9

    .line 653
    aget-byte v0, p2, v4

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v4, 0x1

    aget-byte v1, p2, v1

    or-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v4, v4, 0x2

    if-eqz v0, :cond_c6

    .line 657
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->BankData:[B

    .line 658
    invoke-static {p2, v4, v1, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c6
    add-int/2addr v4, v0

    goto :goto_c9

    :cond_c8
    const/4 v4, 0x1

    :cond_c9
    :goto_c9
    move v0, v4

    .line 665
    :goto_ca
    iget-object v1, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->temperdata:[B

    array-length v5, v1

    add-int/2addr v5, v4

    if-lt v0, v5, :cond_10a

    add-int/lit8 v1, v0, 0x1

    .line 670
    aget-byte v0, p2, v0

    iput v0, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->taglen:I

    new-array v4, p1, [B

    .line 671
    iput-object v4, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->tagpc:[B

    add-int/lit8 v5, v1, 0x1

    .line 672
    aget-byte v1, p2, v1

    aput-byte v1, v4, p3

    add-int/lit8 v6, v5, 0x1

    .line 673
    aget-byte v1, p2, v5

    aput-byte v1, v4, v3

    sub-int/2addr v0, v2

    .line 674
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->tagepc:[B

    move v0, v6

    .line 675
    :goto_ec
    iget-object v1, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->tagepc:[B

    array-length v2, v1

    add-int/2addr v2, v6

    if-lt v0, v2, :cond_101

    new-array p1, p1, [B

    .line 677
    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->tagcrc:[B

    add-int/lit8 v0, v6, 0x1

    .line 678
    aget-byte v1, p2, v6

    aput-byte v1, p1, p3

    .line 679
    aget-byte p2, p2, v0

    aput-byte p2, p1, v3

    return-void

    :cond_101
    sub-int v2, v0, v6

    .line 676
    aget-byte v4, p2, v0

    aput-byte v4, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_ec

    :cond_10a
    sub-int v5, v0, v4

    .line 667
    aget-byte v6, p2, v0

    aput-byte v6, v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_ca
.end method


# virtual methods
.method public Antenna()I
    .registers 2

    .line 582
    iget v0, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtAntenna:I

    return v0
.end method

.method public Data()[B
    .registers 2

    .line 595
    iget-object v0, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->temperdata:[B

    return-object v0
.end method

.method public Frequency()I
    .registers 2

    .line 574
    iget v0, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtFrequency:I

    return v0
.end method

.method public Lqi()I
    .registers 2

    .line 570
    iget v0, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtLqi:I

    return v0
.end method

.method public Phase()I
    .registers 2

    .line 578
    iget v0, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtPhase:I

    return v0
.end method

.method public Protocol()I
    .registers 2

    .line 590
    iget v0, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtPro:I

    return v0
.end method

.method public ReadCount()I
    .registers 2

    .line 566
    iget v0, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtReadCount:I

    return v0
.end method

.method public TagEpc()[B
    .registers 2

    .line 600
    iget-object v0, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->tagepc:[B

    return-object v0
.end method

.method public Timestamp()I
    .registers 2

    .line 586
    iget v0, p0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtTsmp:I

    return v0
.end method
