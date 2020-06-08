.class public final Lcom/honeywell/aidc/BarcodeReadEvent;
.super Ljava/util/EventObject;
.source "BarcodeReadEvent.java"


# static fields
.field private static final NUM_CORNERS:I = 0x4

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mAimId:Ljava/lang/String;

.field private mBounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mCharset:Ljava/lang/String;

.field private mCodeId:Ljava/lang/String;

.field private mData:Ljava/lang/String;

.field private mTimestamp:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 49
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    const-string p1, "Enter constructor"

    .line 51
    invoke-static {p1}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "data = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "charset = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "codeid = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "aimid = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "timestamp = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    .line 58
    iput-object p2, p0, Lcom/honeywell/aidc/BarcodeReadEvent;->mData:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/honeywell/aidc/BarcodeReadEvent;->mCharset:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/honeywell/aidc/BarcodeReadEvent;->mCodeId:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcom/honeywell/aidc/BarcodeReadEvent;->mAimId:Ljava/lang/String;

    .line 62
    iput-object p6, p0, Lcom/honeywell/aidc/BarcodeReadEvent;->mTimestamp:Ljava/lang/String;

    .line 63
    invoke-direct {p0, p7}, Lcom/honeywell/aidc/BarcodeReadEvent;->parseBounds(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/honeywell/aidc/BarcodeReadEvent;->mBounds:Ljava/util/List;

    const-string p1, "Exit constructor"

    .line 65
    invoke-static {p1}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private parseBounds(Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_61

    const-string v1, ";"

    .line 144
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 145
    array-length v1, p1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_61

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v2, :cond_59

    .line 148
    aget-object v5, p1, v4

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 149
    array-length v7, v5

    const/4 v8, 0x2

    if-ne v7, v8, :cond_56

    const/4 v7, 0x1

    .line 151
    :try_start_23
    new-instance v8, Landroid/graphics/Point;

    aget-object v9, v5, v3

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aget-object v10, v5, v7

    .line 152
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 151
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_37} :catch_38

    goto :goto_56

    .line 154
    :catch_38
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could Not Parse Barcode Bounds "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v5, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v5, v7

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    :cond_56
    :goto_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 159
    :cond_59
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-eq p1, v2, :cond_60

    goto :goto_61

    :cond_60
    move-object v0, v1

    :cond_61
    :goto_61
    return-object v0
.end method


# virtual methods
.method public getAimId()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/honeywell/aidc/BarcodeReadEvent;->mAimId:Ljava/lang/String;

    return-object v0
.end method

.method public getBarcodeBounds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/honeywell/aidc/BarcodeReadEvent;->mBounds:Ljava/util/List;

    return-object v0
.end method

.method public getBarcodeData()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/honeywell/aidc/BarcodeReadEvent;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/honeywell/aidc/BarcodeReadEvent;->mCharset:Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public getCodeId()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/honeywell/aidc/BarcodeReadEvent;->mCodeId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/honeywell/aidc/BarcodeReadEvent;->mTimestamp:Ljava/lang/String;

    return-object v0
.end method
