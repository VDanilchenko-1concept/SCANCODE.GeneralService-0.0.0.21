.class public Ljxl/read/biff/RowRecord;
.super Ljxl/biff/RecordData;
.source "RowRecord.java"


# static fields
.field static synthetic class$jxl$read$biff$RowRecord:Ljava/lang/Class; = null

.field private static final defaultHeightIndicator:I = 0xff

.field private static logger:Lcommon/Logger;


# instance fields
.field private collapsed:Z

.field private defaultFormat:Z

.field private matchesDefFontHeight:Z

.field private rowHeight:I

.field private rowNumber:I

.field private xfIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    sget-object v0, Ljxl/read/biff/RowRecord;->class$jxl$read$biff$RowRecord:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "jxl.read.biff.RowRecord"

    invoke-static {v0}, Ljxl/read/biff/RowRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/RowRecord;->class$jxl$read$biff$RowRecord:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/RowRecord;->logger:Lcommon/Logger;

    return-void
.end method

.method constructor <init>(Ljxl/read/biff/Record;)V
    .registers 8

    .line 74
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 76
    invoke-virtual {p0}, Ljxl/read/biff/RowRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 77
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    aget-byte v3, p1, v2

    invoke-static {v1, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, p0, Ljxl/read/biff/RowRecord;->rowNumber:I

    const/4 v1, 0x6

    .line 78
    aget-byte v1, p1, v1

    const/4 v3, 0x7

    aget-byte v3, p1, v3

    invoke-static {v1, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, p0, Ljxl/read/biff/RowRecord;->rowHeight:I

    const/16 v1, 0xc

    .line 80
    aget-byte v1, p1, v1

    const/16 v3, 0xd

    aget-byte v3, p1, v3

    const/16 v4, 0xe

    aget-byte v4, p1, v4

    const/16 v5, 0xf

    aget-byte p1, p1, v5

    invoke-static {v1, v3, v4, p1}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result p1

    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_3d

    const/4 v1, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x0

    .line 83
    :goto_3e
    iput-boolean v1, p0, Ljxl/read/biff/RowRecord;->collapsed:Z

    and-int/lit8 v1, p1, 0x40

    if-nez v1, :cond_46

    const/4 v1, 0x1

    goto :goto_47

    :cond_46
    const/4 v1, 0x0

    .line 84
    :goto_47
    iput-boolean v1, p0, Ljxl/read/biff/RowRecord;->matchesDefFontHeight:Z

    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_4e

    const/4 v0, 0x1

    .line 85
    :cond_4e
    iput-boolean v0, p0, Ljxl/read/biff/RowRecord;->defaultFormat:Z

    const/high16 v0, 0xfff0000

    and-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x10

    .line 86
    iput p1, p0, Ljxl/read/biff/RowRecord;->xfIndex:I

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    .line 35
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
.method public getRowHeight()I
    .registers 2

    .line 126
    iget v0, p0, Ljxl/read/biff/RowRecord;->rowHeight:I

    return v0
.end method

.method public getRowNumber()I
    .registers 2

    .line 116
    iget v0, p0, Ljxl/read/biff/RowRecord;->rowNumber:I

    return v0
.end method

.method public getXFIndex()I
    .registers 2

    .line 146
    iget v0, p0, Ljxl/read/biff/RowRecord;->xfIndex:I

    return v0
.end method

.method public hasDefaultFormat()Z
    .registers 2

    .line 156
    iget-boolean v0, p0, Ljxl/read/biff/RowRecord;->defaultFormat:Z

    return v0
.end method

.method public isCollapsed()Z
    .registers 2

    .line 136
    iget-boolean v0, p0, Ljxl/read/biff/RowRecord;->collapsed:Z

    return v0
.end method

.method isDefaultHeight()Z
    .registers 3

    .line 96
    iget v0, p0, Ljxl/read/biff/RowRecord;->rowHeight:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public matchesDefaultFontHeight()Z
    .registers 2

    .line 106
    iget-boolean v0, p0, Ljxl/read/biff/RowRecord;->matchesDefFontHeight:Z

    return v0
.end method
