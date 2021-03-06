.class Ljxl/write/biff/RowRecord;
.super Ljxl/biff/WritableRecordData;
.source "RowRecord.java"


# static fields
.field static synthetic class$jxl$write$biff$RowRecord:Ljava/lang/Class; = null

.field private static defaultHeightIndicator:I = 0x0

.field private static final growSize:I = 0xa

.field private static final logger:Lcommon/Logger;

.field private static maxColumns:I = 0x0

.field private static final maxRKValue:I = 0x1fffffff

.field private static final minRKValue:I = -0x20000000


# instance fields
.field private cells:[Ljxl/write/biff/CellValue;

.field private collapsed:Z

.field private data:[B

.field private defaultFormat:Z

.field private matchesDefFontHeight:Z

.field private numColumns:I

.field private rowHeight:I

.field private rowNumber:I

.field private style:Ljxl/biff/XFRecord;

.field private xfIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    sget-object v0, Ljxl/write/biff/RowRecord;->class$jxl$write$biff$RowRecord:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "jxl.write.biff.RowRecord"

    invoke-static {v0}, Ljxl/write/biff/RowRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/RowRecord;->class$jxl$write$biff$RowRecord:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/RowRecord;->logger:Lcommon/Logger;

    const/16 v0, 0xff

    .line 105
    sput v0, Ljxl/write/biff/RowRecord;->defaultHeightIndicator:I

    const/16 v0, 0x100

    .line 110
    sput v0, Ljxl/write/biff/RowRecord;->maxColumns:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 119
    sget-object v0, Ljxl/biff/Type;->ROW:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 120
    iput p1, p0, Ljxl/write/biff/RowRecord;->rowNumber:I

    const/4 p1, 0x0

    new-array v0, p1, [Ljxl/write/biff/CellValue;

    .line 121
    iput-object v0, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    .line 122
    iput p1, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    .line 123
    sget v0, Ljxl/write/biff/RowRecord;->defaultHeightIndicator:I

    iput v0, p0, Ljxl/write/biff/RowRecord;->rowHeight:I

    .line 124
    iput-boolean p1, p0, Ljxl/write/biff/RowRecord;->collapsed:Z

    const/4 p1, 0x1

    .line 125
    iput-boolean p1, p0, Ljxl/write/biff/RowRecord;->matchesDefFontHeight:Z

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    .line 45
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

.method private writeIntegerValues(Ljava/util/ArrayList;Ljxl/write/biff/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 335
    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_17

    .line 338
    new-instance v0, Ljxl/write/biff/MulRKRecord;

    invoke-direct {v0, p1}, Ljxl/write/biff/MulRKRecord;-><init>(Ljava/util/List;)V

    .line 339
    invoke-virtual {p2, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_2b

    .line 344
    :cond_17
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 345
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 347
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/write/biff/CellValue;

    invoke-virtual {p2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_1b

    .line 352
    :cond_2b
    :goto_2b
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public addCell(Ljxl/write/biff/CellValue;)V
    .registers 7

    .line 197
    invoke-virtual {p1}, Ljxl/write/biff/CellValue;->getColumn()I

    move-result v0

    .line 199
    sget v1, Ljxl/write/biff/RowRecord;->maxColumns:I

    if-lt v0, v1, :cond_30

    .line 201
    sget-object v0, Ljxl/write/biff/RowRecord;->logger:Lcommon/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not add cell at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljxl/write/biff/CellValue;->getRow()I

    move-result v2

    invoke-virtual {p1}, Ljxl/write/biff/CellValue;->getColumn()I

    move-result p1

    invoke-static {v2, p1}, Ljxl/biff/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " because it exceeds the maximum column limit"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    return-void

    .line 211
    :cond_30
    iget-object v1, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    array-length v2, v1

    if-lt v0, v2, :cond_47

    .line 214
    array-length v2, v1

    add-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [Ljxl/write/biff/CellValue;

    iput-object v2, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    .line 215
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    :cond_47
    iget-object v1, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 221
    iget p1, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    return-void
.end method

.method decrementRow()V
    .registers 4

    .line 436
    iget v0, p0, Ljxl/write/biff/RowRecord;->rowNumber:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljxl/write/biff/RowRecord;->rowNumber:I

    const/4 v0, 0x0

    .line 437
    :goto_7
    iget-object v1, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    array-length v2, v1

    if-ge v0, v2, :cond_18

    .line 439
    aget-object v2, v1, v0

    if-eqz v2, :cond_15

    .line 441
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/CellValue;->decrementRow()V

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_18
    return-void
.end method

.method public getCell(I)Ljxl/write/biff/CellValue;
    .registers 3

    if-ltz p1, :cond_b

    .line 410
    iget v0, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    if-ge p1, v0, :cond_b

    iget-object v0, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    aget-object p1, v0, p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public getData()[B
    .registers 5

    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 364
    iget v2, p0, Ljxl/write/biff/RowRecord;->rowNumber:I

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 365
    iget v2, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    const/4 v3, 0x4

    invoke-static {v2, v1, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 366
    iget v2, p0, Ljxl/write/biff/RowRecord;->rowHeight:I

    const/4 v3, 0x6

    invoke-static {v2, v1, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 370
    iget-boolean v2, p0, Ljxl/write/biff/RowRecord;->collapsed:Z

    if-eqz v2, :cond_1d

    const/16 v2, 0x120

    goto :goto_1f

    :cond_1d
    const/16 v2, 0x100

    .line 375
    :goto_1f
    iget-boolean v3, p0, Ljxl/write/biff/RowRecord;->matchesDefFontHeight:Z

    if-nez v3, :cond_25

    or-int/lit8 v2, v2, 0x40

    .line 380
    :cond_25
    iget-boolean v3, p0, Ljxl/write/biff/RowRecord;->defaultFormat:Z

    if-eqz v3, :cond_30

    or-int/lit16 v2, v2, 0x80

    .line 383
    iget v3, p0, Ljxl/write/biff/RowRecord;->xfIndex:I

    shl-int/lit8 v0, v3, 0x10

    or-int/2addr v2, v0

    :cond_30
    const/16 v0, 0xc

    .line 386
    invoke-static {v2, v1, v0}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    return-object v1
.end method

.method public getMaxColumn()I
    .registers 2

    .line 398
    iget v0, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    return v0
.end method

.method public getRowHeight()I
    .registers 2

    .line 553
    iget v0, p0, Ljxl/write/biff/RowRecord;->rowHeight:I

    return v0
.end method

.method public getRowNumber()I
    .registers 2

    .line 187
    iget v0, p0, Ljxl/write/biff/RowRecord;->rowNumber:I

    return v0
.end method

.method getStyle()Ljxl/biff/XFRecord;
    .registers 2

    .line 586
    iget-object v0, p0, Ljxl/write/biff/RowRecord;->style:Ljxl/biff/XFRecord;

    return-object v0
.end method

.method hasDefaultFormat()Z
    .registers 2

    .line 596
    iget-boolean v0, p0, Ljxl/write/biff/RowRecord;->defaultFormat:Z

    return v0
.end method

.method incrementRow()V
    .registers 4

    .line 419
    iget v0, p0, Ljxl/write/biff/RowRecord;->rowNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/write/biff/RowRecord;->rowNumber:I

    const/4 v0, 0x0

    .line 421
    :goto_7
    iget-object v1, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    array-length v2, v1

    if-ge v0, v2, :cond_18

    .line 423
    aget-object v2, v1, v0

    if-eqz v2, :cond_15

    .line 425
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/CellValue;->incrementRow()V

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_18
    return-void
.end method

.method insertColumn(I)V
    .registers 6

    .line 455
    iget v0, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    if-lt p1, v0, :cond_5

    return-void

    .line 460
    :cond_5
    sget v1, Ljxl/write/biff/RowRecord;->maxColumns:I

    if-lt v0, v1, :cond_11

    .line 462
    sget-object p1, Ljxl/write/biff/RowRecord;->logger:Lcommon/Logger;

    const-string v0, "Could not insert column because maximum column limit has been reached"

    invoke-virtual {p1, v0}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    return-void

    .line 468
    :cond_11
    iget-object v1, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    .line 470
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_20

    .line 472
    array-length v0, v1

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [Ljxl/write/biff/CellValue;

    iput-object v0, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    goto :goto_25

    .line 476
    :cond_20
    array-length v0, v1

    new-array v0, v0, [Ljxl/write/biff/CellValue;

    iput-object v0, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    .line 480
    :goto_25
    iget-object v0, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 483
    iget-object v0, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 486
    :goto_35
    iget p1, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    if-gt v2, p1, :cond_47

    .line 488
    iget-object p1, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    aget-object v0, p1, v2

    if-eqz v0, :cond_44

    .line 490
    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljxl/write/biff/CellValue;->incrementColumn()V

    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_47
    add-int/lit8 p1, p1, 0x1

    .line 495
    iput p1, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    return-void
.end method

.method public isCollapsed()Z
    .registers 2

    .line 563
    iget-boolean v0, p0, Ljxl/write/biff/RowRecord;->collapsed:Z

    return v0
.end method

.method public isDefaultHeight()Z
    .registers 3

    .line 543
    iget v0, p0, Ljxl/write/biff/RowRecord;->rowHeight:I

    sget v1, Ljxl/write/biff/RowRecord;->defaultHeightIndicator:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method matchesDefaultFontHeight()Z
    .registers 2

    .line 606
    iget-boolean v0, p0, Ljxl/write/biff/RowRecord;->matchesDefFontHeight:Z

    return v0
.end method

.method rationalize(Ljxl/biff/IndexMapping;)V
    .registers 3

    .line 572
    iget-boolean v0, p0, Ljxl/write/biff/RowRecord;->defaultFormat:Z

    if-eqz v0, :cond_c

    .line 574
    iget v0, p0, Ljxl/write/biff/RowRecord;->xfIndex:I

    invoke-virtual {p1, v0}, Ljxl/biff/IndexMapping;->getNewIndex(I)I

    move-result p1

    iput p1, p0, Ljxl/write/biff/RowRecord;->xfIndex:I

    :cond_c
    return-void
.end method

.method public removeCell(I)V
    .registers 4

    .line 232
    iget v0, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    if-lt p1, v0, :cond_5

    return-void

    .line 237
    :cond_5
    iget-object v0, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    return-void
.end method

.method removeColumn(I)V
    .registers 6

    .line 507
    iget v0, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    if-lt p1, v0, :cond_5

    return-void

    .line 513
    :cond_5
    iget-object v0, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    .line 515
    array-length v1, v0

    new-array v1, v1, [Ljxl/write/biff/CellValue;

    iput-object v1, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    const/4 v2, 0x0

    .line 518
    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, p1, 0x1

    .line 521
    iget-object v2, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    iget v3, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    sub-int/2addr v3, v1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 524
    :goto_1a
    iget v0, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    if-ge p1, v0, :cond_2c

    .line 526
    iget-object v0, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    aget-object v1, v0, p1

    if-eqz v1, :cond_29

    .line 528
    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljxl/write/biff/CellValue;->decrementColumn()V

    :cond_29
    add-int/lit8 p1, p1, 0x1

    goto :goto_1a

    :cond_2c
    add-int/lit8 v0, v0, -0x1

    .line 533
    iput v0, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    return-void
.end method

.method public setCollapsed(Z)V
    .registers 2

    .line 177
    iput-boolean p1, p0, Ljxl/write/biff/RowRecord;->collapsed:Z

    return-void
.end method

.method setRowDetails(IZZLjxl/biff/XFRecord;)V
    .registers 5

    .line 158
    iput p1, p0, Ljxl/write/biff/RowRecord;->rowHeight:I

    .line 159
    iput-boolean p3, p0, Ljxl/write/biff/RowRecord;->collapsed:Z

    .line 160
    iput-boolean p2, p0, Ljxl/write/biff/RowRecord;->matchesDefFontHeight:Z

    if-eqz p4, :cond_13

    const/4 p1, 0x1

    .line 164
    iput-boolean p1, p0, Ljxl/write/biff/RowRecord;->defaultFormat:Z

    .line 165
    iput-object p4, p0, Ljxl/write/biff/RowRecord;->style:Ljxl/biff/XFRecord;

    .line 166
    invoke-virtual {p4}, Ljxl/biff/XFRecord;->getXFIndex()I

    move-result p1

    iput p1, p0, Ljxl/write/biff/RowRecord;->xfIndex:I

    :cond_13
    return-void
.end method

.method public setRowHeight(I)V
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_a

    const/4 p1, 0x1

    .line 137
    invoke-virtual {p0, p1}, Ljxl/write/biff/RowRecord;->setCollapsed(Z)V

    .line 138
    iput-boolean v0, p0, Ljxl/write/biff/RowRecord;->matchesDefFontHeight:Z

    goto :goto_e

    .line 142
    :cond_a
    iput p1, p0, Ljxl/write/biff/RowRecord;->rowHeight:I

    .line 143
    iput-boolean v0, p0, Ljxl/write/biff/RowRecord;->matchesDefFontHeight:Z

    :goto_e
    return-void
.end method

.method public write(Ljxl/write/biff/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    invoke-virtual {p1, p0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    return-void
.end method

.method public writeCells(Ljxl/write/biff/File;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 267
    :goto_7
    iget v3, p0, Ljxl/write/biff/RowRecord;->numColumns:I

    if-ge v2, v3, :cond_86

    .line 270
    iget-object v3, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    aget-object v4, v3, v2

    if-eqz v4, :cond_80

    .line 274
    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljxl/write/biff/CellValue;->getType()Ljxl/CellType;

    move-result-object v3

    sget-object v4, Ljxl/CellType;->NUMBER:Ljxl/CellType;

    if-ne v3, v4, :cond_4e

    .line 276
    iget-object v3, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    aget-object v3, v3, v2

    check-cast v3, Ljxl/write/Number;

    .line 277
    invoke-virtual {v3}, Ljxl/write/Number;->getValue()D

    move-result-wide v4

    invoke-virtual {v3}, Ljxl/write/Number;->getValue()D

    move-result-wide v6

    double-to-int v6, v6

    int-to-double v6, v6

    cmpl-double v8, v4, v6

    if-nez v8, :cond_4e

    invoke-virtual {v3}, Ljxl/write/Number;->getValue()D

    move-result-wide v4

    const-wide v6, 0x41bfffffff000000L    # 5.36870911E8

    cmpg-double v8, v4, v6

    if-gez v8, :cond_4e

    invoke-virtual {v3}, Ljxl/write/Number;->getValue()D

    move-result-wide v4

    const-wide/high16 v6, -0x3e40000000000000L    # -5.36870912E8

    cmpl-double v8, v4, v6

    if-lez v8, :cond_4e

    invoke-virtual {v3}, Ljxl/write/Number;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v3

    if-nez v3, :cond_4e

    const/4 v3, 0x1

    goto :goto_4f

    :cond_4e
    const/4 v3, 0x0

    :goto_4f
    if-eqz v3, :cond_59

    .line 289
    iget-object v3, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_83

    .line 295
    :cond_59
    invoke-direct {p0, v0, p1}, Ljxl/write/biff/RowRecord;->writeIntegerValues(Ljava/util/ArrayList;Ljxl/write/biff/File;)V

    .line 296
    iget-object v3, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 300
    iget-object v3, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljxl/write/biff/CellValue;->getType()Ljxl/CellType;

    move-result-object v3

    sget-object v4, Ljxl/CellType;->STRING_FORMULA:Ljxl/CellType;

    if-ne v3, v4, :cond_83

    .line 302
    new-instance v3, Ljxl/write/biff/StringRecord;

    iget-object v4, p0, Ljxl/write/biff/RowRecord;->cells:[Ljxl/write/biff/CellValue;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljxl/write/biff/CellValue;->getContents()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljxl/write/biff/StringRecord;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p1, v3}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_83

    .line 311
    :cond_80
    invoke-direct {p0, v0, p1}, Ljxl/write/biff/RowRecord;->writeIntegerValues(Ljava/util/ArrayList;Ljxl/write/biff/File;)V

    :cond_83
    :goto_83
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 316
    :cond_86
    invoke-direct {p0, v0, p1}, Ljxl/write/biff/RowRecord;->writeIntegerValues(Ljava/util/ArrayList;Ljxl/write/biff/File;)V

    return-void
.end method
