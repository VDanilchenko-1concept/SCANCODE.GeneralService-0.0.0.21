.class public final Ljxl/read/biff/Record;
.super Ljava/lang/Object;
.source "Record.java"


# static fields
.field static synthetic class$jxl$read$biff$Record:Ljava/lang/Class;

.field private static final logger:Lcommon/Logger;


# instance fields
.field private code:I

.field private continueRecords:Ljava/util/ArrayList;

.field private data:[B

.field private dataPos:I

.field private file:Ljxl/read/biff/File;

.field private length:I

.field private type:Ljxl/biff/Type;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    sget-object v0, Ljxl/read/biff/Record;->class$jxl$read$biff$Record:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "jxl.read.biff.Record"

    invoke-static {v0}, Ljxl/read/biff/Record;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/Record;->class$jxl$read$biff$Record:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/Record;->logger:Lcommon/Logger;

    return-void
.end method

.method constructor <init>([BILjxl/read/biff/File;)V
    .registers 6

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/Record;->code:I

    add-int/lit8 v0, p2, 0x2

    .line 80
    aget-byte v0, p1, v0

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/read/biff/Record;->length:I

    .line 81
    iput-object p3, p0, Ljxl/read/biff/Record;->file:Ljxl/read/biff/File;

    const/4 p1, 0x4

    .line 82
    invoke-virtual {p3, p1}, Ljxl/read/biff/File;->skip(I)V

    .line 83
    invoke-virtual {p3}, Ljxl/read/biff/File;->getPos()I

    move-result p1

    iput p1, p0, Ljxl/read/biff/Record;->dataPos:I

    .line 84
    iget-object p1, p0, Ljxl/read/biff/Record;->file:Ljxl/read/biff/File;

    iget p2, p0, Ljxl/read/biff/Record;->length:I

    invoke-virtual {p1, p2}, Ljxl/read/biff/File;->skip(I)V

    .line 85
    iget p1, p0, Ljxl/read/biff/Record;->code:I

    invoke-static {p1}, Ljxl/biff/Type;->getType(I)Ljxl/biff/Type;

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/Record;->type:Ljxl/biff/Type;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    .line 38
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addContinueRecord(Ljxl/read/biff/Record;)V
    .registers 3

    .line 177
    iget-object v0, p0, Ljxl/read/biff/Record;->continueRecords:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/read/biff/Record;->continueRecords:Ljava/util/ArrayList;

    .line 182
    :cond_b
    iget-object v0, p0, Ljxl/read/biff/Record;->continueRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCode()I
    .registers 2

    .line 156
    iget v0, p0, Ljxl/read/biff/Record;->code:I

    return v0
.end method

.method public getData()[B
    .registers 9

    .line 115
    iget-object v0, p0, Ljxl/read/biff/Record;->data:[B

    if-nez v0, :cond_10

    .line 117
    iget-object v0, p0, Ljxl/read/biff/Record;->file:Ljxl/read/biff/File;

    iget v1, p0, Ljxl/read/biff/Record;->dataPos:I

    iget v2, p0, Ljxl/read/biff/Record;->length:I

    invoke-virtual {v0, v1, v2}, Ljxl/read/biff/File;->read(II)[B

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/Record;->data:[B

    .line 121
    :cond_10
    iget-object v0, p0, Ljxl/read/biff/Record;->continueRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_57

    .line 124
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 125
    :goto_1d
    iget-object v5, p0, Ljxl/read/biff/Record;->continueRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3a

    .line 127
    iget-object v5, p0, Ljxl/read/biff/Record;->continueRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljxl/read/biff/Record;

    .line 128
    invoke-virtual {v5}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v5

    aput-object v5, v1, v3

    .line 129
    aget-object v5, v1, v3

    .line 130
    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 133
    :cond_3a
    iget-object v3, p0, Ljxl/read/biff/Record;->data:[B

    array-length v5, v3

    add-int/2addr v5, v4

    new-array v4, v5, [B

    .line 134
    array-length v5, v3

    invoke-static {v3, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    iget-object v3, p0, Ljxl/read/biff/Record;->data:[B

    array-length v3, v3

    const/4 v5, 0x0

    :goto_48
    if-ge v5, v0, :cond_55

    .line 138
    aget-object v6, v1, v5

    .line 139
    array-length v7, v6

    invoke-static {v6, v2, v4, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    array-length v6, v6

    add-int/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    .line 143
    :cond_55
    iput-object v4, p0, Ljxl/read/biff/Record;->data:[B

    .line 146
    :cond_57
    iget-object v0, p0, Ljxl/read/biff/Record;->data:[B

    return-object v0
.end method

.method public getLength()I
    .registers 2

    .line 105
    iget v0, p0, Ljxl/read/biff/Record;->length:I

    return v0
.end method

.method public getType()Ljxl/biff/Type;
    .registers 2

    .line 95
    iget-object v0, p0, Ljxl/read/biff/Record;->type:Ljxl/biff/Type;

    return-object v0
.end method

.method setType(Ljxl/biff/Type;)V
    .registers 2

    .line 167
    iput-object p1, p0, Ljxl/read/biff/Record;->type:Ljxl/biff/Type;

    return-void
.end method
