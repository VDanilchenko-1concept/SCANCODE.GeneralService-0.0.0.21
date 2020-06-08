.class public Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;
.super Ljava/lang/Object;
.source "R2000_calibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/R2000_calibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TagLED_DATA"
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

.field tagpc:[B

.field final synthetic this$0:Lcom/uhf/api/cls/R2000_calibration;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/R2000_calibration;)V
    .registers 2

    .line 739
    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->this$0:Lcom/uhf/api/cls/R2000_calibration;

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/uhf/api/cls/R2000_calibration;[BI)V
    .registers 11

    .line 743
    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->this$0:Lcom/uhf/api/cls/R2000_calibration;

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 746
    aget-byte v0, p2, p1

    const/16 v1, 0x10

    and-int/2addr v0, v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_c5

    .line 750
    aget-byte v0, p2, v3

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    const/4 v4, 0x3

    .line 751
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v0, v5

    int-to-short v0, v0

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_26

    .line 754
    aget-byte v4, p2, v4

    iput v4, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtReadCount:I

    const/4 v4, 0x4

    :cond_26
    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_31

    add-int/lit8 v5, v4, 0x1

    .line 756
    aget-byte v4, p2, v4

    iput v4, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtLqi:I

    move v4, v5

    :cond_31
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_42

    add-int/lit8 v5, v4, 0x1

    .line 759
    aget-byte v4, p2, v4

    and-int/lit8 v4, v4, 0xf

    iput v4, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtAntenna:I

    if-nez v4, :cond_41

    .line 761
    iput v1, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtAntenna:I

    :cond_41
    move v4, v5

    :cond_42
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_64

    add-int/lit8 v5, v4, 0x1

    .line 765
    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v1

    iput v4, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtFrequency:I

    add-int/lit8 v6, v5, 0x1

    .line 766
    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    iput v4, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtFrequency:I

    add-int/lit8 v5, v6, 0x1

    .line 767
    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    iput v4, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtFrequency:I

    move v4, v5

    :cond_64
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_92

    add-int/lit8 v5, v4, 0x1

    .line 771
    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    iput v4, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtTsmp:I

    add-int/lit8 v6, v5, 0x1

    .line 772
    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v1, v5, 0x10

    or-int/2addr v1, v4

    iput v1, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtTsmp:I

    add-int/lit8 v4, v6, 0x1

    .line 773
    aget-byte v5, p2, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v1, v5

    iput v1, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtTsmp:I

    add-int/lit8 v5, v4, 0x1

    .line 774
    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    iput v1, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtTsmp:I

    move v4, v5

    :cond_92
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_9e

    add-int/lit8 v1, v4, 0x1

    .line 780
    aget-byte v1, p2, v1

    iput v1, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtPhase:I

    add-int/lit8 v4, v4, 0x2

    :cond_9e
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_a9

    add-int/lit8 v1, v4, 0x1

    .line 784
    aget-byte v4, p2, v4

    iput v4, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtPro:I

    move v4, v1

    :cond_a9
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_c6

    .line 789
    aget-byte v0, p2, v4

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v4, 0x1

    aget-byte v1, p2, v1

    or-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v4, v4, 0x2

    if-eqz v0, :cond_c3

    .line 793
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->BankData:[B

    .line 794
    invoke-static {p2, v4, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c3
    add-int/2addr v4, v0

    goto :goto_c6

    :cond_c5
    const/4 v4, 0x1

    :cond_c6
    :goto_c6
    new-array v0, v2, [B

    .line 800
    iput-object v0, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagpc:[B

    add-int/lit8 v1, v4, 0x1

    .line 801
    aget-byte v4, p2, v4

    aput-byte v4, v0, p1

    add-int/lit8 v4, v1, 0x1

    .line 802
    aget-byte v1, p2, v1

    aput-byte v1, v0, v3

    sub-int/2addr p3, v4

    sub-int/2addr p3, v2

    .line 803
    new-array p3, p3, [B

    iput-object p3, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagepc:[B

    move p3, v4

    .line 804
    :goto_dd
    iget-object v0, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagepc:[B

    array-length v1, v0

    add-int/2addr v1, v4

    if-lt p3, v1, :cond_f2

    new-array p3, v2, [B

    .line 806
    iput-object p3, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagcrc:[B

    add-int/lit8 v0, v4, 0x1

    .line 807
    aget-byte v1, p2, v4

    aput-byte v1, p3, p1

    .line 808
    aget-byte p1, p2, v0

    aput-byte p1, p3, v3

    return-void

    :cond_f2
    sub-int v1, p3, v4

    .line 805
    aget-byte v5, p2, p3

    aput-byte v5, v0, v1

    add-int/lit8 p3, p3, 0x1

    goto :goto_dd
.end method


# virtual methods
.method public Antenna()I
    .registers 2

    .line 718
    iget v0, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtAntenna:I

    return v0
.end method

.method public Data()[B
    .registers 2

    .line 731
    iget-object v0, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->BankData:[B

    return-object v0
.end method

.method public Frequency()I
    .registers 2

    .line 710
    iget v0, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtFrequency:I

    return v0
.end method

.method public Lqi()I
    .registers 2

    .line 706
    iget v0, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtLqi:I

    return v0
.end method

.method public Phase()I
    .registers 2

    .line 714
    iget v0, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtPhase:I

    return v0
.end method

.method public Protocol()I
    .registers 2

    .line 726
    iget v0, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtPro:I

    return v0
.end method

.method public ReadCount()I
    .registers 2

    .line 702
    iget v0, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtReadCount:I

    return v0
.end method

.method public TagEpc()[B
    .registers 2

    .line 736
    iget-object v0, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagepc:[B

    return-object v0
.end method

.method public Timestamp()I
    .registers 2

    .line 722
    iget v0, p0, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtTsmp:I

    return v0
.end method
