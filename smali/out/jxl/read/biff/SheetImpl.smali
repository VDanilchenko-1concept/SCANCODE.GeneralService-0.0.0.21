.class public Ljxl/read/biff/SheetImpl;
.super Ljava/lang/Object;
.source "SheetImpl.java"

# interfaces
.implements Ljxl/Sheet;


# static fields
.field static synthetic class$jxl$read$biff$SheetImpl:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private autoFilter:Ljxl/biff/AutoFilter;

.field private buttonPropertySet:Ljxl/read/biff/ButtonPropertySetRecord;

.field private cells:[[Ljxl/Cell;

.field private charts:Ljava/util/ArrayList;

.field private columnBreaks:[I

.field private columnInfos:[Ljxl/read/biff/ColumnInfoRecord;

.field private columnInfosArray:Ljava/util/ArrayList;

.field private columnInfosInitialized:Z

.field private conditionalFormats:Ljava/util/ArrayList;

.field private dataValidation:Ljxl/biff/DataValidation;

.field private drawings:Ljava/util/ArrayList;

.field private excelFile:Ljxl/read/biff/File;

.field private formattingRecords:Ljxl/biff/FormattingRecords;

.field private hidden:Z

.field private hyperlinks:Ljava/util/ArrayList;

.field private images:Ljava/util/ArrayList;

.field private localNames:Ljava/util/ArrayList;

.field private mergedCells:[Ljxl/Range;

.field private name:Ljava/lang/String;

.field private nineteenFour:Z

.field private numCols:I

.field private numRows:I

.field private plsRecord:Ljxl/read/biff/PLSRecord;

.field private rowBreaks:[I

.field private rowProperties:Ljava/util/ArrayList;

.field private rowRecords:[Ljxl/read/biff/RowRecord;

.field private rowRecordsInitialized:Z

.field private settings:Ljxl/SheetSettings;

.field private sharedFormulas:Ljava/util/ArrayList;

.field private sharedStrings:Ljxl/read/biff/SSTRecord;

.field private sheetBof:Ljxl/read/biff/BOFRecord;

.field private startPosition:I

.field private workbook:Ljxl/read/biff/WorkbookParser;

.field private workbookBof:Ljxl/read/biff/BOFRecord;

.field private workbookSettings:Ljxl/WorkbookSettings;

.field private workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    sget-object v0, Ljxl/read/biff/SheetImpl;->class$jxl$read$biff$SheetImpl:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "jxl.read.biff.SheetImpl"

    invoke-static {v0}, Ljxl/read/biff/SheetImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/SheetImpl;->class$jxl$read$biff$SheetImpl:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/SheetImpl;->logger:Lcommon/Logger;

    return-void
.end method

.method constructor <init>(Ljxl/read/biff/File;Ljxl/read/biff/SSTRecord;Ljxl/biff/FormattingRecords;Ljxl/read/biff/BOFRecord;Ljxl/read/biff/BOFRecord;ZLjxl/read/biff/WorkbookParser;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/read/biff/BiffException;
        }
    .end annotation

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p1, p0, Ljxl/read/biff/SheetImpl;->excelFile:Ljxl/read/biff/File;

    .line 272
    iput-object p2, p0, Ljxl/read/biff/SheetImpl;->sharedStrings:Ljxl/read/biff/SSTRecord;

    .line 273
    iput-object p3, p0, Ljxl/read/biff/SheetImpl;->formattingRecords:Ljxl/biff/FormattingRecords;

    .line 274
    iput-object p4, p0, Ljxl/read/biff/SheetImpl;->sheetBof:Ljxl/read/biff/BOFRecord;

    .line 275
    iput-object p5, p0, Ljxl/read/biff/SheetImpl;->workbookBof:Ljxl/read/biff/BOFRecord;

    .line 276
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Ljxl/read/biff/SheetImpl;->columnInfosArray:Ljava/util/ArrayList;

    .line 277
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Ljxl/read/biff/SheetImpl;->sharedFormulas:Ljava/util/ArrayList;

    .line 278
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Ljxl/read/biff/SheetImpl;->hyperlinks:Ljava/util/ArrayList;

    .line 279
    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Ljxl/read/biff/SheetImpl;->rowProperties:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 280
    iput-boolean p2, p0, Ljxl/read/biff/SheetImpl;->columnInfosInitialized:Z

    .line 281
    iput-boolean p2, p0, Ljxl/read/biff/SheetImpl;->rowRecordsInitialized:Z

    .line 282
    iput-boolean p6, p0, Ljxl/read/biff/SheetImpl;->nineteenFour:Z

    .line 283
    iput-object p7, p0, Ljxl/read/biff/SheetImpl;->workbook:Ljxl/read/biff/WorkbookParser;

    .line 284
    invoke-virtual {p7}, Ljxl/read/biff/WorkbookParser;->getSettings()Ljxl/WorkbookSettings;

    move-result-object p2

    iput-object p2, p0, Ljxl/read/biff/SheetImpl;->workbookSettings:Ljxl/WorkbookSettings;

    .line 287
    invoke-virtual {p1}, Ljxl/read/biff/File;->getPos()I

    move-result p2

    iput p2, p0, Ljxl/read/biff/SheetImpl;->startPosition:I

    .line 289
    iget-object p2, p0, Ljxl/read/biff/SheetImpl;->sheetBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {p2}, Ljxl/read/biff/BOFRecord;->isChart()Z

    move-result p2

    if-eqz p2, :cond_55

    .line 292
    iget p2, p0, Ljxl/read/biff/SheetImpl;->startPosition:I

    iget-object p3, p0, Ljxl/read/biff/SheetImpl;->sheetBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {p3}, Ljxl/read/biff/BOFRecord;->getLength()I

    move-result p3

    add-int/lit8 p3, p3, 0x4

    sub-int/2addr p2, p3

    iput p2, p0, Ljxl/read/biff/SheetImpl;->startPosition:I

    :cond_55
    const/4 p2, 0x1

    const/4 p3, 0x1

    :cond_57
    :goto_57
    if-lt p3, p2, :cond_76

    .line 300
    invoke-virtual {p1}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p4

    .line 303
    invoke-virtual {p4}, Ljxl/read/biff/Record;->getCode()I

    move-result p5

    sget-object p6, Ljxl/biff/Type;->EOF:Ljxl/biff/Type;

    iget p6, p6, Ljxl/biff/Type;->value:I

    if-ne p5, p6, :cond_69

    add-int/lit8 p3, p3, -0x1

    .line 308
    :cond_69
    invoke-virtual {p4}, Ljxl/read/biff/Record;->getCode()I

    move-result p4

    sget-object p5, Ljxl/biff/Type;->BOF:Ljxl/biff/Type;

    iget p5, p5, Ljxl/biff/Type;->value:I

    if-ne p4, p5, :cond_57

    add-int/lit8 p3, p3, 0x1

    goto :goto_57

    :cond_76
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    .line 66
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

.method private initializeImages()V
    .registers 5

    .line 1093
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->images:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    return-void

    .line 1098
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/read/biff/SheetImpl;->images:Ljava/util/ArrayList;

    .line 1099
    invoke-virtual {p0}, Ljxl/read/biff/SheetImpl;->getDrawings()[Ljxl/biff/drawing/DrawingGroupObject;

    move-result-object v0

    const/4 v1, 0x0

    .line 1101
    :goto_11
    array-length v2, v0

    if-ge v1, v2, :cond_24

    .line 1103
    aget-object v2, v0, v1

    instance-of v2, v2, Ljxl/biff/drawing/Drawing;

    if-eqz v2, :cond_21

    .line 1105
    iget-object v2, p0, Ljxl/read/biff/SheetImpl;->images:Ljava/util/ArrayList;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_24
    return-void
.end method


# virtual methods
.method addLocalName(Ljxl/read/biff/NameRecord;)V
    .registers 3

    .line 1135
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->localNames:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/read/biff/SheetImpl;->localNames:Ljava/util/ArrayList;

    .line 1140
    :cond_b
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->localNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final clear()V
    .registers 3

    const/4 v0, 0x0

    .line 638
    move-object v1, v0

    check-cast v1, [[Ljxl/Cell;

    iput-object v1, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    .line 639
    iput-object v0, p0, Ljxl/read/biff/SheetImpl;->mergedCells:[Ljxl/Range;

    .line 640
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->columnInfosArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 641
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->sharedFormulas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 642
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 643
    iput-boolean v0, p0, Ljxl/read/biff/SheetImpl;->columnInfosInitialized:Z

    .line 645
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getGCDisabled()Z

    move-result v0

    if-nez v0, :cond_25

    .line 647
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_25
    return-void
.end method

.method public findCell(Ljava/lang/String;)Ljxl/Cell;
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 369
    :goto_4
    invoke-virtual {p0}, Ljxl/read/biff/SheetImpl;->getRows()I

    move-result v4

    if-ge v2, v4, :cond_2b

    if-nez v3, :cond_2b

    .line 371
    invoke-virtual {p0, v2}, Ljxl/read/biff/SheetImpl;->getRow(I)[Ljxl/Cell;

    move-result-object v4

    const/4 v5, 0x0

    .line 372
    :goto_11
    array-length v6, v4

    if-ge v5, v6, :cond_28

    if-nez v3, :cond_28

    .line 374
    aget-object v6, v4, v5

    invoke-interface {v6}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 376
    aget-object v1, v4, v5

    const/4 v3, 0x1

    :cond_25
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_2b
    return-object v1
.end method

.method public findLabelCell(Ljava/lang/String;)Ljxl/LabelCell;
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 402
    :goto_4
    invoke-virtual {p0}, Ljxl/read/biff/SheetImpl;->getRows()I

    move-result v4

    if-ge v2, v4, :cond_41

    if-nez v3, :cond_41

    .line 404
    invoke-virtual {p0, v2}, Ljxl/read/biff/SheetImpl;->getRow(I)[Ljxl/Cell;

    move-result-object v4

    const/4 v5, 0x0

    .line 405
    :goto_11
    array-length v6, v4

    if-ge v5, v6, :cond_3e

    if-nez v3, :cond_3e

    .line 407
    aget-object v6, v4, v5

    invoke-interface {v6}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v6

    sget-object v7, Ljxl/CellType;->LABEL:Ljxl/CellType;

    if-eq v6, v7, :cond_2a

    aget-object v6, v4, v5

    invoke-interface {v6}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v6

    sget-object v7, Ljxl/CellType;->STRING_FORMULA:Ljxl/CellType;

    if-ne v6, v7, :cond_3b

    :cond_2a
    aget-object v6, v4, v5

    invoke-interface {v6}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 411
    aget-object v1, v4, v5

    check-cast v1, Ljxl/LabelCell;

    const/4 v3, 0x1

    :cond_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_41
    return-object v1
.end method

.method public getAutoFilter()Ljxl/biff/AutoFilter;
    .registers 2

    .line 1163
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->autoFilter:Ljxl/biff/AutoFilter;

    return-object v0
.end method

.method public getButtonPropertySet()Ljxl/read/biff/ButtonPropertySetRecord;
    .registers 2

    .line 1054
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->buttonPropertySet:Ljxl/read/biff/ButtonPropertySetRecord;

    return-object v0
.end method

.method public getCell(II)Ljxl/Cell;
    .registers 5

    .line 339
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    if-nez v0, :cond_7

    .line 341
    invoke-virtual {p0}, Ljxl/read/biff/SheetImpl;->readSheet()V

    .line 344
    :cond_7
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    aget-object v0, v0, p2

    aget-object v0, v0, p1

    if-nez v0, :cond_1a

    .line 348
    new-instance v0, Ljxl/biff/EmptyCell;

    invoke-direct {v0, p1, p2}, Ljxl/biff/EmptyCell;-><init>(II)V

    .line 349
    iget-object v1, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    aget-object p2, v1, p2

    aput-object v0, p2, p1

    :cond_1a
    return-object v0
.end method

.method public getCell(Ljava/lang/String;)Ljxl/Cell;
    .registers 3

    .line 324
    invoke-static {p1}, Ljxl/biff/CellReferenceHelper;->getColumn(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Ljxl/biff/CellReferenceHelper;->getRow(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ljxl/read/biff/SheetImpl;->getCell(II)Ljxl/Cell;

    move-result-object p1

    return-object p1
.end method

.method public final getCharts()[Ljxl/biff/drawing/Chart;
    .registers 5

    .line 852
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->charts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Ljxl/biff/drawing/Chart;

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_18

    .line 856
    iget-object v3, p0, Ljxl/read/biff/SheetImpl;->charts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/biff/drawing/Chart;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_18
    return-object v1
.end method

.method public getColumn(I)[Ljxl/Cell;
    .registers 7

    .line 506
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    if-nez v0, :cond_7

    .line 508
    invoke-virtual {p0}, Ljxl/read/biff/SheetImpl;->readSheet()V

    .line 513
    :cond_7
    iget v0, p0, Ljxl/read/biff/SheetImpl;->numRows:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_d
    if-ltz v0, :cond_1e

    if-nez v3, :cond_1e

    .line 516
    iget-object v4, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    aget-object v4, v4, v0

    aget-object v4, v4, p1

    if-eqz v4, :cond_1b

    const/4 v3, 0x1

    goto :goto_d

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_1e
    add-int/lit8 v1, v0, 0x1

    .line 527
    new-array v1, v1, [Ljxl/Cell;

    :goto_22
    if-gt v2, v0, :cond_2d

    .line 531
    invoke-virtual {p0, p1, v2}, Ljxl/read/biff/SheetImpl;->getCell(II)Ljxl/Cell;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_2d
    return-object v1
.end method

.method public getColumnFormat(I)Ljxl/format/CellFormat;
    .registers 2

    .line 925
    invoke-virtual {p0, p1}, Ljxl/read/biff/SheetImpl;->getColumnView(I)Ljxl/CellView;

    move-result-object p1

    .line 926
    invoke-virtual {p1}, Ljxl/CellView;->getFormat()Ljxl/format/CellFormat;

    move-result-object p1

    return-object p1
.end method

.method public getColumnInfo(I)Ljxl/read/biff/ColumnInfoRecord;
    .registers 8

    .line 576
    iget-boolean v0, p0, Ljxl/read/biff/SheetImpl;->columnInfosInitialized:Z

    if-nez v0, :cond_3f

    .line 579
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->columnInfosArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 581
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3d

    .line 583
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/read/biff/ColumnInfoRecord;

    const/4 v3, 0x0

    .line 585
    invoke-virtual {v1}, Ljxl/read/biff/ColumnInfoRecord;->getStartColumn()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 586
    iget-object v4, p0, Ljxl/read/biff/SheetImpl;->columnInfos:[Ljxl/read/biff/ColumnInfoRecord;

    array-length v4, v4

    sub-int/2addr v4, v2

    invoke-virtual {v1}, Ljxl/read/biff/ColumnInfoRecord;->getEndColumn()I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v4, v3

    :goto_2d
    if-gt v4, v2, :cond_36

    .line 590
    iget-object v5, p0, Ljxl/read/biff/SheetImpl;->columnInfos:[Ljxl/read/biff/ColumnInfoRecord;

    aput-object v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_36
    if-ge v2, v3, :cond_a

    .line 595
    iget-object v2, p0, Ljxl/read/biff/SheetImpl;->columnInfos:[Ljxl/read/biff/ColumnInfoRecord;

    aput-object v1, v2, v3

    goto :goto_a

    .line 599
    :cond_3d
    iput-boolean v2, p0, Ljxl/read/biff/SheetImpl;->columnInfosInitialized:Z

    .line 602
    :cond_3f
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->columnInfos:[Ljxl/read/biff/ColumnInfoRecord;

    array-length v1, v0

    if-ge p1, v1, :cond_47

    aget-object p1, v0, p1

    goto :goto_48

    :cond_47
    const/4 p1, 0x0

    :goto_48
    return-object p1
.end method

.method public getColumnInfos()[Ljxl/read/biff/ColumnInfoRecord;
    .registers 4

    .line 613
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->columnInfosArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljxl/read/biff/ColumnInfoRecord;

    const/4 v1, 0x0

    .line 614
    :goto_9
    iget-object v2, p0, Ljxl/read/biff/SheetImpl;->columnInfosArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 616
    iget-object v2, p0, Ljxl/read/biff/SheetImpl;->columnInfosArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/read/biff/ColumnInfoRecord;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1e
    return-object v0
.end method

.method public final getColumnPageBreaks()[I
    .registers 2

    .line 842
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->columnBreaks:[I

    return-object v0
.end method

.method public getColumnView(I)Ljxl/CellView;
    .registers 4

    .line 950
    invoke-virtual {p0, p1}, Ljxl/read/biff/SheetImpl;->getColumnInfo(I)Ljxl/read/biff/ColumnInfoRecord;

    move-result-object p1

    .line 951
    new-instance v0, Ljxl/CellView;

    invoke-direct {v0}, Ljxl/CellView;-><init>()V

    if-eqz p1, :cond_30

    .line 955
    invoke-virtual {p1}, Ljxl/read/biff/ColumnInfoRecord;->getWidth()I

    move-result v1

    div-int/lit16 v1, v1, 0x100

    invoke-virtual {v0, v1}, Ljxl/CellView;->setDimension(I)V

    .line 956
    invoke-virtual {p1}, Ljxl/read/biff/ColumnInfoRecord;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/CellView;->setSize(I)V

    .line 957
    invoke-virtual {p1}, Ljxl/read/biff/ColumnInfoRecord;->getHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/CellView;->setHidden(Z)V

    .line 958
    iget-object v1, p0, Ljxl/read/biff/SheetImpl;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {p1}, Ljxl/read/biff/ColumnInfoRecord;->getXFIndex()I

    move-result p1

    invoke-virtual {v1, p1}, Ljxl/biff/FormattingRecords;->getXFRecord(I)Ljxl/biff/XFRecord;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljxl/CellView;->setFormat(Ljxl/format/CellFormat;)V

    goto :goto_44

    .line 962
    :cond_30
    iget-object p1, p0, Ljxl/read/biff/SheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {p1}, Ljxl/SheetSettings;->getDefaultColumnWidth()I

    move-result p1

    invoke-virtual {v0, p1}, Ljxl/CellView;->setDimension(I)V

    .line 963
    iget-object p1, p0, Ljxl/read/biff/SheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {p1}, Ljxl/SheetSettings;->getDefaultColumnWidth()I

    move-result p1

    mul-int/lit16 p1, p1, 0x100

    invoke-virtual {v0, p1}, Ljxl/CellView;->setSize(I)V

    :goto_44
    return-object v0
.end method

.method public getColumnWidth(I)I
    .registers 2

    .line 938
    invoke-virtual {p0, p1}, Ljxl/read/biff/SheetImpl;->getColumnView(I)Ljxl/CellView;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/CellView;->getSize()I

    move-result p1

    div-int/lit16 p1, p1, 0x100

    return p1
.end method

.method public getColumns()I
    .registers 2

    .line 446
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    if-nez v0, :cond_7

    .line 448
    invoke-virtual {p0}, Ljxl/read/biff/SheetImpl;->readSheet()V

    .line 451
    :cond_7
    iget v0, p0, Ljxl/read/biff/SheetImpl;->numCols:I

    return v0
.end method

.method public getConditionalFormats()[Ljxl/biff/ConditionalFormat;
    .registers 3

    .line 1150
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->conditionalFormats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljxl/biff/ConditionalFormat;

    .line 1152
    iget-object v1, p0, Ljxl/read/biff/SheetImpl;->conditionalFormats:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljxl/biff/ConditionalFormat;

    return-object v0
.end method

.method public getDataValidation()Ljxl/biff/DataValidation;
    .registers 2

    .line 790
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->dataValidation:Ljxl/biff/DataValidation;

    return-object v0
.end method

.method public getDrawing(I)Ljxl/Image;
    .registers 3

    .line 1080
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->images:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    .line 1082
    invoke-direct {p0}, Ljxl/read/biff/SheetImpl;->initializeImages()V

    .line 1085
    :cond_7
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/Image;

    return-object p1
.end method

.method public getDrawingData()Ljxl/biff/drawing/DrawingData;
    .registers 12

    .line 1115
    new-instance v10, Ljxl/read/biff/SheetReader;

    iget-object v1, p0, Ljxl/read/biff/SheetImpl;->excelFile:Ljxl/read/biff/File;

    iget-object v2, p0, Ljxl/read/biff/SheetImpl;->sharedStrings:Ljxl/read/biff/SSTRecord;

    iget-object v3, p0, Ljxl/read/biff/SheetImpl;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v4, p0, Ljxl/read/biff/SheetImpl;->sheetBof:Ljxl/read/biff/BOFRecord;

    iget-object v5, p0, Ljxl/read/biff/SheetImpl;->workbookBof:Ljxl/read/biff/BOFRecord;

    iget-boolean v6, p0, Ljxl/read/biff/SheetImpl;->nineteenFour:Z

    iget-object v7, p0, Ljxl/read/biff/SheetImpl;->workbook:Ljxl/read/biff/WorkbookParser;

    iget v8, p0, Ljxl/read/biff/SheetImpl;->startPosition:I

    move-object v0, v10

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Ljxl/read/biff/SheetReader;-><init>(Ljxl/read/biff/File;Ljxl/read/biff/SSTRecord;Ljxl/biff/FormattingRecords;Ljxl/read/biff/BOFRecord;Ljxl/read/biff/BOFRecord;ZLjxl/read/biff/WorkbookParser;ILjxl/read/biff/SheetImpl;)V

    .line 1124
    invoke-virtual {v10}, Ljxl/read/biff/SheetReader;->read()V

    .line 1125
    invoke-virtual {v10}, Ljxl/read/biff/SheetReader;->getDrawingData()Ljxl/biff/drawing/DrawingData;

    move-result-object v0

    return-object v0
.end method

.method public final getDrawings()[Ljxl/biff/drawing/DrawingGroupObject;
    .registers 3

    .line 868
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljxl/biff/drawing/DrawingGroupObject;

    .line 869
    iget-object v1, p0, Ljxl/read/biff/SheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljxl/biff/drawing/DrawingGroupObject;

    return-object v0
.end method

.method public getHyperlinks()[Ljxl/Hyperlink;
    .registers 4

    .line 742
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljxl/Hyperlink;

    const/4 v1, 0x0

    .line 744
    :goto_9
    iget-object v2, p0, Ljxl/read/biff/SheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 746
    iget-object v2, p0, Ljxl/read/biff/SheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/Hyperlink;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1e
    return-object v0
.end method

.method public getMergedCells()[Ljxl/Range;
    .registers 2

    .line 759
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->mergedCells:[Ljxl/Range;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    new-array v0, v0, [Ljxl/Range;

    :cond_7
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 543
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfImages()I
    .registers 2

    .line 1064
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->images:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    .line 1066
    invoke-direct {p0}, Ljxl/read/biff/SheetImpl;->initializeImages()V

    .line 1069
    :cond_7
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPLS()Ljxl/read/biff/PLSRecord;
    .registers 2

    .line 1044
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->plsRecord:Ljxl/read/biff/PLSRecord;

    return-object v0
.end method

.method public getRow(I)[Ljxl/Cell;
    .registers 7

    .line 465
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    if-nez v0, :cond_7

    .line 467
    invoke-virtual {p0}, Ljxl/read/biff/SheetImpl;->readSheet()V

    .line 472
    :cond_7
    iget v0, p0, Ljxl/read/biff/SheetImpl;->numCols:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_d
    if-ltz v0, :cond_1e

    if-nez v3, :cond_1e

    .line 475
    iget-object v4, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    aget-object v4, v4, p1

    aget-object v4, v4, v0

    if-eqz v4, :cond_1b

    const/4 v3, 0x1

    goto :goto_d

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_1e
    add-int/lit8 v1, v0, 0x1

    .line 486
    new-array v1, v1, [Ljxl/Cell;

    :goto_22
    if-gt v2, v0, :cond_2d

    .line 490
    invoke-virtual {p0, v2, p1}, Ljxl/read/biff/SheetImpl;->getCell(II)Ljxl/Cell;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_2d
    return-object v1
.end method

.method public getRowHeight(I)I
    .registers 2

    .line 979
    invoke-virtual {p0, p1}, Ljxl/read/biff/SheetImpl;->getRowView(I)Ljxl/CellView;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/CellView;->getDimension()I

    move-result p1

    return p1
.end method

.method getRowInfo(I)Ljxl/read/biff/RowRecord;
    .registers 7

    .line 802
    iget-boolean v0, p0, Ljxl/read/biff/SheetImpl;->rowRecordsInitialized:Z

    if-nez v0, :cond_2d

    .line 804
    invoke-virtual {p0}, Ljxl/read/biff/SheetImpl;->getRows()I

    move-result v0

    new-array v0, v0, [Ljxl/read/biff/RowRecord;

    iput-object v0, p0, Ljxl/read/biff/SheetImpl;->rowRecords:[Ljxl/read/biff/RowRecord;

    .line 805
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->rowProperties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 809
    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 811
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/read/biff/RowRecord;

    .line 812
    invoke-virtual {v1}, Ljxl/read/biff/RowRecord;->getRowNumber()I

    move-result v2

    .line 813
    iget-object v3, p0, Ljxl/read/biff/SheetImpl;->rowRecords:[Ljxl/read/biff/RowRecord;

    array-length v4, v3

    if-ge v2, v4, :cond_12

    .line 815
    aput-object v1, v3, v2

    goto :goto_12

    :cond_2a
    const/4 v0, 0x1

    .line 819
    iput-boolean v0, p0, Ljxl/read/biff/SheetImpl;->rowRecordsInitialized:Z

    .line 822
    :cond_2d
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->rowRecords:[Ljxl/read/biff/RowRecord;

    array-length v1, v0

    if-ge p1, v1, :cond_35

    aget-object p1, v0, p1

    goto :goto_36

    :cond_35
    const/4 p1, 0x0

    :goto_36
    return-object p1
.end method

.method public final getRowPageBreaks()[I
    .registers 2

    .line 832
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->rowBreaks:[I

    return-object v0
.end method

.method public getRowProperties()[Ljxl/read/biff/RowRecord;
    .registers 5

    .line 774
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->rowProperties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Ljxl/read/biff/RowRecord;

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_18

    .line 777
    iget-object v3, p0, Ljxl/read/biff/SheetImpl;->rowProperties:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/read/biff/RowRecord;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_18
    return-object v1
.end method

.method public getRowView(I)Ljxl/CellView;
    .registers 4

    .line 991
    invoke-virtual {p0, p1}, Ljxl/read/biff/SheetImpl;->getRowInfo(I)Ljxl/read/biff/RowRecord;

    move-result-object p1

    .line 993
    new-instance v0, Ljxl/CellView;

    invoke-direct {v0}, Ljxl/CellView;-><init>()V

    if-eqz p1, :cond_34

    .line 997
    invoke-virtual {p1}, Ljxl/read/biff/RowRecord;->getRowHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/CellView;->setDimension(I)V

    .line 998
    invoke-virtual {p1}, Ljxl/read/biff/RowRecord;->getRowHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/CellView;->setSize(I)V

    .line 999
    invoke-virtual {p1}, Ljxl/read/biff/RowRecord;->isCollapsed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/CellView;->setHidden(Z)V

    .line 1000
    invoke-virtual {p1}, Ljxl/read/biff/RowRecord;->hasDefaultFormat()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1002
    iget-object v1, p0, Ljxl/read/biff/SheetImpl;->formattingRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {p1}, Ljxl/read/biff/RowRecord;->getXFIndex()I

    move-result p1

    invoke-virtual {v1, p1}, Ljxl/biff/FormattingRecords;->getXFRecord(I)Ljxl/biff/XFRecord;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljxl/CellView;->setFormat(Ljxl/format/CellFormat;)V

    goto :goto_46

    .line 1007
    :cond_34
    iget-object p1, p0, Ljxl/read/biff/SheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {p1}, Ljxl/SheetSettings;->getDefaultRowHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljxl/CellView;->setDimension(I)V

    .line 1008
    iget-object p1, p0, Ljxl/read/biff/SheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {p1}, Ljxl/SheetSettings;->getDefaultRowHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljxl/CellView;->setSize(I)V

    :cond_46
    :goto_46
    return-object v0
.end method

.method public getRows()I
    .registers 2

    .line 429
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    if-nez v0, :cond_7

    .line 431
    invoke-virtual {p0}, Ljxl/read/biff/SheetImpl;->readSheet()V

    .line 434
    :cond_7
    iget v0, p0, Ljxl/read/biff/SheetImpl;->numRows:I

    return v0
.end method

.method public getSettings()Ljxl/SheetSettings;
    .registers 2

    .line 902
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->settings:Ljxl/SheetSettings;

    return-object v0
.end method

.method public getSheetBof()Ljxl/read/biff/BOFRecord;
    .registers 2

    .line 1022
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->sheetBof:Ljxl/read/biff/BOFRecord;

    return-object v0
.end method

.method public getWorkbook()Ljxl/read/biff/WorkbookParser;
    .registers 2

    .line 913
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->workbook:Ljxl/read/biff/WorkbookParser;

    return-object v0
.end method

.method public getWorkbookBof()Ljxl/read/biff/BOFRecord;
    .registers 2

    .line 1033
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->workbookBof:Ljxl/read/biff/BOFRecord;

    return-object v0
.end method

.method public getWorkspaceOptions()Ljxl/biff/WorkspaceInformationRecord;
    .registers 2

    .line 892
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    return-object v0
.end method

.method public isHidden()Z
    .registers 2

    .line 564
    iget-boolean v0, p0, Ljxl/read/biff/SheetImpl;->hidden:Z

    return v0
.end method

.method public isProtected()Z
    .registers 2

    .line 881
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/SheetSettings;->isProtected()Z

    move-result v0

    return v0
.end method

.method final readSheet()V
    .registers 13

    .line 659
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->sheetBof:Ljxl/read/biff/BOFRecord;

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isWorksheet()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    .line 661
    iput v1, p0, Ljxl/read/biff/SheetImpl;->numRows:I

    .line 662
    iput v1, p0, Ljxl/read/biff/SheetImpl;->numCols:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 663
    fill-array-data v0, :array_112

    const-class v2, Ljxl/Cell;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljxl/Cell;

    iput-object v0, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    .line 667
    :cond_1d
    new-instance v0, Ljxl/read/biff/SheetReader;

    iget-object v3, p0, Ljxl/read/biff/SheetImpl;->excelFile:Ljxl/read/biff/File;

    iget-object v4, p0, Ljxl/read/biff/SheetImpl;->sharedStrings:Ljxl/read/biff/SSTRecord;

    iget-object v5, p0, Ljxl/read/biff/SheetImpl;->formattingRecords:Ljxl/biff/FormattingRecords;

    iget-object v6, p0, Ljxl/read/biff/SheetImpl;->sheetBof:Ljxl/read/biff/BOFRecord;

    iget-object v7, p0, Ljxl/read/biff/SheetImpl;->workbookBof:Ljxl/read/biff/BOFRecord;

    iget-boolean v8, p0, Ljxl/read/biff/SheetImpl;->nineteenFour:Z

    iget-object v9, p0, Ljxl/read/biff/SheetImpl;->workbook:Ljxl/read/biff/WorkbookParser;

    iget v10, p0, Ljxl/read/biff/SheetImpl;->startPosition:I

    move-object v2, v0

    move-object v11, p0

    invoke-direct/range {v2 .. v11}, Ljxl/read/biff/SheetReader;-><init>(Ljxl/read/biff/File;Ljxl/read/biff/SSTRecord;Ljxl/biff/FormattingRecords;Ljxl/read/biff/BOFRecord;Ljxl/read/biff/BOFRecord;ZLjxl/read/biff/WorkbookParser;ILjxl/read/biff/SheetImpl;)V

    .line 676
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->read()V

    .line 679
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getNumRows()I

    move-result v2

    iput v2, p0, Ljxl/read/biff/SheetImpl;->numRows:I

    .line 680
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getNumCols()I

    move-result v2

    iput v2, p0, Ljxl/read/biff/SheetImpl;->numCols:I

    .line 681
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getCells()[[Ljxl/Cell;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->cells:[[Ljxl/Cell;

    .line 682
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getRowProperties()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->rowProperties:Ljava/util/ArrayList;

    .line 683
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getColumnInfosArray()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->columnInfosArray:Ljava/util/ArrayList;

    .line 684
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getHyperlinks()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->hyperlinks:Ljava/util/ArrayList;

    .line 685
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getConditionalFormats()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->conditionalFormats:Ljava/util/ArrayList;

    .line 686
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getAutoFilter()Ljxl/biff/AutoFilter;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->autoFilter:Ljxl/biff/AutoFilter;

    .line 687
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getCharts()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->charts:Ljava/util/ArrayList;

    .line 688
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getDrawings()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->drawings:Ljava/util/ArrayList;

    .line 689
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getDataValidation()Ljxl/biff/DataValidation;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->dataValidation:Ljxl/biff/DataValidation;

    .line 690
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getMergedCells()[Ljxl/Range;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->mergedCells:[Ljxl/Range;

    .line 691
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getSettings()Ljxl/SheetSettings;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->settings:Ljxl/SheetSettings;

    .line 692
    iget-boolean v3, p0, Ljxl/read/biff/SheetImpl;->hidden:Z

    invoke-virtual {v2, v3}, Ljxl/SheetSettings;->setHidden(Z)V

    .line 693
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getRowBreaks()[I

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->rowBreaks:[I

    .line 694
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getColumnBreaks()[I

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->columnBreaks:[I

    .line 695
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getWorkspaceOptions()Ljxl/biff/WorkspaceInformationRecord;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    .line 696
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getPLS()Ljxl/read/biff/PLSRecord;

    move-result-object v2

    iput-object v2, p0, Ljxl/read/biff/SheetImpl;->plsRecord:Ljxl/read/biff/PLSRecord;

    .line 697
    invoke-virtual {v0}, Ljxl/read/biff/SheetReader;->getButtonPropertySet()Ljxl/read/biff/ButtonPropertySetRecord;

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/SheetImpl;->buttonPropertySet:Ljxl/read/biff/ButtonPropertySetRecord;

    .line 701
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getGCDisabled()Z

    move-result v0

    if-nez v0, :cond_b3

    .line 703
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 706
    :cond_b3
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->columnInfosArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d4

    .line 708
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->columnInfosArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/read/biff/ColumnInfoRecord;

    .line 710
    invoke-virtual {v0}, Ljxl/read/biff/ColumnInfoRecord;->getEndColumn()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljxl/read/biff/ColumnInfoRecord;

    iput-object v0, p0, Ljxl/read/biff/SheetImpl;->columnInfos:[Ljxl/read/biff/ColumnInfoRecord;

    goto :goto_d8

    :cond_d4
    new-array v0, v1, [Ljxl/read/biff/ColumnInfoRecord;

    .line 714
    iput-object v0, p0, Ljxl/read/biff/SheetImpl;->columnInfos:[Ljxl/read/biff/ColumnInfoRecord;

    .line 718
    :goto_d8
    iget-object v0, p0, Ljxl/read/biff/SheetImpl;->localNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_110

    .line 720
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e0
    :goto_e0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_110

    .line 722
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/read/biff/NameRecord;

    .line 723
    invoke-virtual {v2}, Ljxl/read/biff/NameRecord;->getBuiltInName()Ljxl/biff/BuiltInName;

    move-result-object v3

    sget-object v4, Ljxl/biff/BuiltInName;->PRINT_AREA:Ljxl/biff/BuiltInName;

    if-ne v3, v4, :cond_e0

    .line 725
    invoke-virtual {v2}, Ljxl/read/biff/NameRecord;->getRanges()[Ljxl/read/biff/NameRecord$NameRange;

    move-result-object v2

    aget-object v2, v2, v1

    .line 726
    iget-object v3, p0, Ljxl/read/biff/SheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v2}, Ljxl/read/biff/NameRecord$NameRange;->getFirstColumn()I

    move-result v4

    invoke-virtual {v2}, Ljxl/read/biff/NameRecord$NameRange;->getFirstRow()I

    move-result v5

    invoke-virtual {v2}, Ljxl/read/biff/NameRecord$NameRange;->getLastColumn()I

    move-result v6

    invoke-virtual {v2}, Ljxl/read/biff/NameRecord$NameRange;->getLastRow()I

    move-result v2

    invoke-virtual {v3, v4, v5, v6, v2}, Ljxl/SheetSettings;->setPrintArea(IIII)V

    goto :goto_e0

    :cond_110
    return-void

    nop

    :array_112
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method final setHidden(Z)V
    .registers 2

    .line 629
    iput-boolean p1, p0, Ljxl/read/biff/SheetImpl;->hidden:Z

    return-void
.end method

.method final setName(Ljava/lang/String;)V
    .registers 2

    .line 553
    iput-object p1, p0, Ljxl/read/biff/SheetImpl;->name:Ljava/lang/String;

    return-void
.end method
