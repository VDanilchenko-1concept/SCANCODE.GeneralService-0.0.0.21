.class public Landroid/devkit/api/SerialPort$LoopBuf;
.super Ljava/lang/Object;
.source "SerialPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/devkit/api/SerialPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoopBuf"
.end annotation


# instance fields
.field private LocalBuffer:[B

.field private endIndex:I

.field private lock:Ljava/lang/Object;

.field private startIndex:I

.field final synthetic this$0:Landroid/devkit/api/SerialPort;


# direct methods
.method public constructor <init>(Landroid/devkit/api/SerialPort;)V
    .registers 2

    .line 193
    iput-object p1, p0, Landroid/devkit/api/SerialPort$LoopBuf;->this$0:Landroid/devkit/api/SerialPort;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/devkit/api/SerialPort$LoopBuf;->lock:Ljava/lang/Object;

    const p1, 0x32000

    new-array p1, p1, [B

    .line 203
    iput-object p1, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    const/4 p1, 0x0

    .line 208
    iput p1, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    .line 213
    iput p1, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    return-void
.end method


# virtual methods
.method public GetFullPackBuf()[B
    .registers 16

    const/4 v0, 0x0

    .line 351
    :try_start_1
    iget-object v1, p0, Landroid/devkit/api/SerialPort$LoopBuf;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_153

    .line 353
    :try_start_4
    iget v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    .line 354
    iget v3, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    .line 359
    iget v4, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    iget v5, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    const/16 v6, 0x69

    const/16 v7, 0x6a

    const/16 v8, 0x55

    const/16 v9, 0x5a

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ge v4, v5, :cond_95

    .line 361
    :goto_18
    iget v4, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    sub-int/2addr v4, v11

    if-lt v2, v4, :cond_1f

    const/4 v4, 0x0

    goto :goto_33

    .line 363
    :cond_1f
    iget-object v4, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    aget-byte v4, v4, v2

    and-int/lit16 v4, v4, 0xff

    if-ne v4, v9, :cond_92

    iget-object v4, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    add-int/lit8 v5, v2, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    if-ne v4, v8, :cond_92

    move v3, v5

    const/4 v4, 0x1

    :goto_33
    if-eqz v4, :cond_81

    .line 376
    :goto_35
    iget v4, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    sub-int/2addr v4, v11

    if-lt v3, v4, :cond_3c

    const/4 v4, 0x0

    goto :goto_50

    .line 378
    :cond_3c
    iget-object v4, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    aget-byte v4, v4, v3

    and-int/lit16 v4, v4, 0xff

    if-ne v4, v7, :cond_6b

    iget-object v4, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    add-int/lit8 v5, v3, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    if-ne v4, v6, :cond_6b

    move v3, v5

    const/4 v4, 0x1

    :goto_50
    if-eqz v4, :cond_69

    sub-int v4, v3, v2

    add-int/2addr v4, v11

    .line 396
    new-array v5, v4, [B

    .line 397
    iget-object v6, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    invoke-static {v6, v2, v5, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v11

    .line 414
    iput v3, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    .line 415
    iget v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    if-le v3, v2, :cond_67

    .line 417
    iget v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    iput v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    .line 420
    :cond_67
    monitor-exit v1

    return-object v5

    .line 425
    :cond_69
    monitor-exit v1

    return-object v0

    .line 385
    :cond_6b
    iget-object v4, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    aget-byte v4, v4, v3

    and-int/lit16 v4, v4, 0xff

    if-ne v4, v9, :cond_7e

    iget-object v4, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    add-int/lit8 v5, v3, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    if-ne v4, v8, :cond_7e

    move v2, v3

    :cond_7e
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 431
    :cond_81
    iget-object v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    iget v3, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    if-eq v2, v9, :cond_90

    .line 433
    iget v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    add-int/2addr v2, v11

    iput v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    .line 436
    :cond_90
    monitor-exit v1

    return-object v0

    :cond_92
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 439
    :cond_95
    iget v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    iget v4, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    if-le v2, v4, :cond_14e

    .line 442
    iget-object v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    array-length v2, v2

    iget v4, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    sub-int/2addr v2, v4

    add-int/2addr v2, v11

    iget v4, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    add-int/2addr v2, v4

    add-int/2addr v2, v11

    new-array v4, v2, [B

    .line 443
    iget-object v5, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    iget v12, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    iget-object v13, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    array-length v13, v13

    iget v14, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    sub-int/2addr v13, v14

    invoke-static {v5, v12, v4, v10, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 444
    iget-object v5, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    iget-object v12, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    array-length v12, v12

    iget v13, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    sub-int/2addr v12, v13

    iget v13, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    add-int/2addr v13, v11

    invoke-static {v5, v10, v4, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    :goto_c4
    add-int/lit8 v12, v2, -0x2

    if-lt v5, v12, :cond_ca

    const/4 v2, 0x0

    goto :goto_da

    .line 449
    :cond_ca
    aget-byte v13, v4, v5

    and-int/lit16 v13, v13, 0xff

    if-ne v13, v9, :cond_14a

    add-int/lit8 v13, v5, 0x1

    aget-byte v14, v4, v13

    and-int/lit16 v14, v14, 0xff

    if-ne v14, v8, :cond_14a

    move v3, v13

    const/4 v2, 0x1

    :goto_da
    if-eqz v2, :cond_12a

    :goto_dc
    if-lt v3, v12, :cond_e0

    const/4 v2, 0x0

    goto :goto_f0

    .line 464
    :cond_e0
    aget-byte v2, v4, v3

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v7, :cond_118

    add-int/lit8 v2, v3, 0x1

    aget-byte v13, v4, v2

    and-int/lit16 v13, v13, 0xff

    if-ne v13, v6, :cond_118

    move v3, v2

    const/4 v2, 0x1

    :goto_f0
    if-eqz v2, :cond_116

    sub-int v2, v3, v5

    add-int/2addr v2, v11

    .line 482
    new-array v6, v2, [B

    .line 483
    invoke-static {v4, v5, v6, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 503
    iget v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    add-int/2addr v3, v11

    add-int/2addr v2, v3

    iput v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    .line 504
    iget-object v3, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    array-length v3, v3

    if-le v2, v3, :cond_114

    .line 506
    iget-object v3, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    array-length v3, v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v11

    iput v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    .line 507
    iget v3, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    if-le v2, v3, :cond_114

    .line 509
    iget v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    iput v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    .line 513
    :cond_114
    monitor-exit v1

    return-object v6

    .line 518
    :cond_116
    monitor-exit v1

    return-object v0

    .line 471
    :cond_118
    aget-byte v2, v4, v3

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v9, :cond_127

    add-int/lit8 v2, v3, 0x1

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v8, :cond_127

    move v5, v3

    :cond_127
    add-int/lit8 v3, v3, 0x1

    goto :goto_dc

    .line 524
    :cond_12a
    iget-object v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    iget v3, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    if-eq v2, v9, :cond_148

    .line 526
    iget v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    add-int/2addr v2, v11

    iput v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    .line 527
    iget-object v3, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    array-length v3, v3

    if-le v2, v3, :cond_148

    .line 529
    iput v10, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    .line 530
    iget v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    if-le v10, v2, :cond_148

    .line 532
    iget v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    iput v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    .line 537
    :cond_148
    monitor-exit v1

    return-object v0

    :cond_14a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_c4

    .line 542
    :cond_14e
    monitor-exit v1

    return-object v0

    :catchall_150
    move-exception v2

    .line 351
    monitor-exit v1
    :try_end_152
    .catchall {:try_start_4 .. :try_end_152} :catchall_150

    :try_start_152
    throw v2
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_153} :catch_153

    :catch_153
    move-exception v1

    .line 548
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public add([B)V
    .registers 9

    .line 247
    :try_start_0
    iget-object v0, p0, Landroid/devkit/api/SerialPort$LoopBuf;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_ca

    .line 249
    :try_start_3
    iget v1, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    iget v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    const/4 v3, 0x0

    if-gt v1, v2, :cond_70

    .line 251
    iget-object v1, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    sub-int/2addr v1, v2

    array-length v2, p1

    if-lt v1, v2, :cond_25

    .line 254
    iget-object v1, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    iget v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    array-length v4, p1

    invoke-static {p1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    iget v1, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    goto/16 :goto_c5

    .line 257
    :cond_25
    iget v1, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    iget-object v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iget v4, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    sub-int/2addr v2, v4

    add-int/2addr v1, v2

    array-length v2, p1

    if-lt v1, v2, :cond_50

    .line 260
    iget-object v1, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 261
    iget-object v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    iget v4, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    invoke-static {p1, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    iget-object v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    array-length v4, p1

    sub-int/2addr v4, v1

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    array-length p1, p1

    sub-int/2addr p1, v1

    iput p1, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    goto :goto_c5

    .line 268
    :cond_50
    iget-object v1, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    array-length v1, v1

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 269
    iget-object v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    iget-object v4, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    array-length v4, v4

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    iget v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    array-length v4, p1

    invoke-static {p1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    iget v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    array-length p1, p1

    add-int/2addr v2, p1

    iput v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    .line 272
    iput-object v1, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    goto :goto_c5

    .line 278
    :cond_70
    iget v1, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    iget v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    sub-int/2addr v1, v2

    array-length v2, p1

    if-lt v1, v2, :cond_87

    .line 281
    iget-object v1, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    iget v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    array-length v4, p1

    invoke-static {p1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    iget v1, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    goto :goto_c5

    .line 287
    :cond_87
    iget-object v1, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    array-length v1, v1

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    new-array v2, v1, [B

    .line 288
    iget-object v4, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    iget v5, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v3, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    iget v4, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    array-length v5, p1

    invoke-static {p1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    iget v3, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    array-length p1, p1

    add-int/2addr v3, p1

    iput v3, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    .line 291
    iget-object p1, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    iget v3, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    iget-object v4, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    array-length v4, v4

    iget v5, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    sub-int/2addr v4, v5

    sub-int v4, v1, v4

    iget-object v5, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    array-length v5, v5

    iget v6, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    sub-int/2addr v5, v6

    invoke-static {p1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    iget-object p1, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    array-length p1, p1

    iget v3, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    sub-int/2addr p1, v3

    sub-int/2addr v1, p1

    iput v1, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    .line 293
    iput-object v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    .line 247
    :goto_c5
    monitor-exit v0

    goto :goto_ce

    :catchall_c7
    move-exception p1

    monitor-exit v0
    :try_end_c9
    .catchall {:try_start_3 .. :try_end_c9} :catchall_c7

    :try_start_c9
    throw p1
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_ca} :catch_ca

    :catch_ca
    move-exception p1

    .line 300
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_ce
    return-void
.end method

.method public getBuf()[B
    .registers 9

    const/4 v0, 0x0

    .line 312
    :try_start_1
    iget-object v1, p0, Landroid/devkit/api/SerialPort$LoopBuf;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_58

    .line 315
    :try_start_4
    iget v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    iget v3, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_20

    .line 317
    iget v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    iget v3, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    .line 318
    iget-object v3, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    iget v5, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    iget v6, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    iget v7, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    sub-int/2addr v6, v7

    invoke-static {v3, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    monitor-exit v1

    return-object v2

    .line 321
    :cond_20
    iget v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    iget v3, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    if-le v2, v3, :cond_53

    .line 324
    iget-object v2, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    array-length v2, v2

    iget v3, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [B

    .line 325
    iget-object v3, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    iget v5, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    iget-object v6, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    array-length v6, v6

    iget v7, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    sub-int/2addr v6, v7

    invoke-static {v3, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    iget-object v3, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    iget-object v5, p0, Landroid/devkit/api/SerialPort$LoopBuf;->LocalBuffer:[B

    array-length v5, v5

    iget v6, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    monitor-exit v1

    return-object v2

    .line 332
    :cond_53
    monitor-exit v1

    return-object v0

    :catchall_55
    move-exception v2

    .line 312
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_4 .. :try_end_57} :catchall_55

    :try_start_57
    throw v2
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_58} :catch_58

    :catch_58
    move-exception v1

    .line 338
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public getEndIndex()I
    .registers 2

    .line 226
    iget v0, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    return v0
.end method

.method public getStartIndex()I
    .registers 2

    .line 221
    iget v0, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    return v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 216
    iput v0, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    iput v0, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    return-void
.end method

.method public setEndIndex(I)V
    .registers 2

    .line 236
    iput p1, p0, Landroid/devkit/api/SerialPort$LoopBuf;->endIndex:I

    return-void
.end method

.method public setStartIndex(I)V
    .registers 2

    .line 231
    iput p1, p0, Landroid/devkit/api/SerialPort$LoopBuf;->startIndex:I

    return-void
.end method
