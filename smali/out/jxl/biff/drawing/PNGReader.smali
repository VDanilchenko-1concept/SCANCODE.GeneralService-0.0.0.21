.class public Ljxl/biff/drawing/PNGReader;
.super Ljava/lang/Object;
.source "PNGReader.java"


# static fields
.field private static PNG_MAGIC_NUMBER:[B


# instance fields
.field private horizontalResolution:I

.field private ihdr:Ljxl/biff/drawing/Chunk;

.field private phys:Ljxl/biff/drawing/Chunk;

.field private pixelHeight:I

.field private pixelWidth:I

.field private pngData:[B

.field private resolutionUnit:I

.field private verticalResolution:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 39
    fill-array-data v0, :array_a

    sput-object v0, Ljxl/biff/drawing/PNGReader;->PNG_MAGIC_NUMBER:[B

    return-void

    :array_a
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method public constructor <init>([B)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Ljxl/biff/drawing/PNGReader;->pngData:[B

    return-void
.end method

.method private getInt(BBBB)I
    .registers 5

    and-int/lit16 p1, p1, 0xff

    and-int/lit16 p2, p2, 0xff

    and-int/lit16 p3, p3, 0xff

    and-int/lit16 p4, p4, 0xff

    shl-int/lit8 p1, p1, 0x18

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, p3, 0x8

    or-int/2addr p1, p2

    or-int/2addr p1, p4

    return p1
.end method

.method public static main([Ljava/lang/String;)V
    .registers 4

    .line 141
    :try_start_0
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p0, v1

    .line 144
    new-array p0, p0, [B

    .line 146
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 147
    invoke-virtual {v1, p0}, Ljava/io/FileInputStream;->read([B)I

    .line 148
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 149
    new-instance v0, Ljxl/biff/drawing/PNGReader;

    invoke-direct {v0, p0}, Ljxl/biff/drawing/PNGReader;-><init>([B)V

    .line 150
    invoke-virtual {v0}, Ljxl/biff/drawing/PNGReader;->read()V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_23

    goto :goto_27

    :catchall_23
    move-exception p0

    .line 154
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_27
    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .line 117
    iget v0, p0, Ljxl/biff/drawing/PNGReader;->pixelHeight:I

    return v0
.end method

.method public getHorizontalResolution()I
    .registers 3

    .line 128
    iget v0, p0, Ljxl/biff/drawing/PNGReader;->resolutionUnit:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget v0, p0, Ljxl/biff/drawing/PNGReader;->horizontalResolution:I

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public getVerticalResolution()I
    .registers 3

    .line 134
    iget v0, p0, Ljxl/biff/drawing/PNGReader;->resolutionUnit:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget v0, p0, Ljxl/biff/drawing/PNGReader;->verticalResolution:I

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 122
    iget v0, p0, Ljxl/biff/drawing/PNGReader;->pixelWidth:I

    return v0
.end method

.method read()V
    .registers 14

    .line 51
    sget-object v0, Ljxl/biff/drawing/PNGReader;->PNG_MAGIC_NUMBER:[B

    array-length v0, v0

    new-array v1, v0, [B

    .line 52
    iget-object v2, p0, Ljxl/biff/drawing/PNGReader;->pngData:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    sget-object v0, Ljxl/biff/drawing/PNGReader;->PNG_MAGIC_NUMBER:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    const/16 v0, 0x8

    const/16 v1, 0x8

    .line 60
    :goto_18
    iget-object v2, p0, Ljxl/biff/drawing/PNGReader;->pngData:[B

    array-length v4, v2

    if-ge v1, v4, :cond_68

    .line 62
    aget-byte v4, v2, v1

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, v2, v5

    add-int/lit8 v6, v1, 0x2

    aget-byte v6, v2, v6

    add-int/lit8 v7, v1, 0x3

    aget-byte v2, v2, v7

    invoke-direct {p0, v4, v5, v6, v2}, Ljxl/biff/drawing/PNGReader;->getInt(BBBB)I

    move-result v2

    .line 66
    iget-object v4, p0, Ljxl/biff/drawing/PNGReader;->pngData:[B

    add-int/lit8 v5, v1, 0x4

    aget-byte v5, v4, v5

    add-int/lit8 v6, v1, 0x5

    aget-byte v6, v4, v6

    add-int/lit8 v7, v1, 0x6

    aget-byte v7, v4, v7

    add-int/lit8 v8, v1, 0x7

    aget-byte v4, v4, v8

    invoke-static {v5, v6, v7, v4}, Ljxl/biff/drawing/ChunkType;->getChunkType(BBBB)Ljxl/biff/drawing/ChunkType;

    move-result-object v4

    .line 71
    sget-object v5, Ljxl/biff/drawing/ChunkType;->IHDR:Ljxl/biff/drawing/ChunkType;

    if-ne v4, v5, :cond_55

    .line 73
    new-instance v5, Ljxl/biff/drawing/Chunk;

    add-int/lit8 v6, v1, 0x8

    iget-object v7, p0, Ljxl/biff/drawing/PNGReader;->pngData:[B

    invoke-direct {v5, v6, v2, v4, v7}, Ljxl/biff/drawing/Chunk;-><init>(IILjxl/biff/drawing/ChunkType;[B)V

    iput-object v5, p0, Ljxl/biff/drawing/PNGReader;->ihdr:Ljxl/biff/drawing/Chunk;

    goto :goto_64

    .line 75
    :cond_55
    sget-object v5, Ljxl/biff/drawing/ChunkType;->PHYS:Ljxl/biff/drawing/ChunkType;

    if-ne v4, v5, :cond_64

    .line 77
    new-instance v5, Ljxl/biff/drawing/Chunk;

    add-int/lit8 v6, v1, 0x8

    iget-object v7, p0, Ljxl/biff/drawing/PNGReader;->pngData:[B

    invoke-direct {v5, v6, v2, v4, v7}, Ljxl/biff/drawing/Chunk;-><init>(IILjxl/biff/drawing/ChunkType;[B)V

    iput-object v5, p0, Ljxl/biff/drawing/PNGReader;->phys:Ljxl/biff/drawing/Chunk;

    :cond_64
    :goto_64
    add-int/lit8 v2, v2, 0xc

    add-int/2addr v1, v2

    goto :goto_18

    .line 84
    :cond_68
    iget-object v1, p0, Ljxl/biff/drawing/PNGReader;->ihdr:Ljxl/biff/drawing/Chunk;

    invoke-virtual {v1}, Ljxl/biff/drawing/Chunk;->getData()[B

    move-result-object v1

    .line 85
    aget-byte v2, v1, v3

    const/4 v4, 0x1

    aget-byte v5, v1, v4

    const/4 v6, 0x2

    aget-byte v7, v1, v6

    const/4 v8, 0x3

    aget-byte v9, v1, v8

    invoke-direct {p0, v2, v5, v7, v9}, Ljxl/biff/drawing/PNGReader;->getInt(BBBB)I

    move-result v2

    iput v2, p0, Ljxl/biff/drawing/PNGReader;->pixelWidth:I

    const/4 v2, 0x4

    .line 86
    aget-byte v5, v1, v2

    const/4 v7, 0x5

    aget-byte v9, v1, v7

    const/4 v10, 0x6

    aget-byte v11, v1, v10

    const/4 v12, 0x7

    aget-byte v1, v1, v12

    invoke-direct {p0, v5, v9, v11, v1}, Ljxl/biff/drawing/PNGReader;->getInt(BBBB)I

    move-result v1

    iput v1, p0, Ljxl/biff/drawing/PNGReader;->pixelHeight:I

    .line 88
    iget-object v1, p0, Ljxl/biff/drawing/PNGReader;->phys:Ljxl/biff/drawing/Chunk;

    if-eqz v1, :cond_b9

    .line 90
    invoke-virtual {v1}, Ljxl/biff/drawing/Chunk;->getData()[B

    move-result-object v1

    .line 91
    aget-byte v0, v1, v0

    iput v0, p0, Ljxl/biff/drawing/PNGReader;->resolutionUnit:I

    .line 92
    aget-byte v0, v1, v3

    aget-byte v3, v1, v4

    aget-byte v4, v1, v6

    aget-byte v5, v1, v8

    invoke-direct {p0, v0, v3, v4, v5}, Ljxl/biff/drawing/PNGReader;->getInt(BBBB)I

    move-result v0

    iput v0, p0, Ljxl/biff/drawing/PNGReader;->horizontalResolution:I

    .line 94
    aget-byte v0, v1, v2

    aget-byte v2, v1, v7

    aget-byte v3, v1, v10

    aget-byte v1, v1, v12

    invoke-direct {p0, v0, v2, v3, v1}, Ljxl/biff/drawing/PNGReader;->getInt(BBBB)I

    move-result v0

    iput v0, p0, Ljxl/biff/drawing/PNGReader;->verticalResolution:I

    :cond_b9
    return-void
.end method
