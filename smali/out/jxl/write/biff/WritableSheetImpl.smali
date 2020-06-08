.class Ljxl/write/biff/WritableSheetImpl;
.super Ljava/lang/Object;
.source "WritableSheetImpl.java"

# interfaces
.implements Ljxl/write/WritableSheet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/write/biff/WritableSheetImpl$ColumnInfoComparator;
    }
.end annotation


# static fields
.field static synthetic class$jxl$write$biff$WritableSheetImpl:Ljava/lang/Class; = null

.field private static final illegalSheetNameCharacters:[C

.field private static final imageTypes:[Ljava/lang/String;

.field private static logger:Lcommon/Logger; = null

.field private static final maxSheetNameLength:I = 0x1f

.field private static final numRowsPerSheet:I = 0x10000

.field private static final rowGrowSize:I = 0xa


# instance fields
.field private autoFilter:Ljxl/biff/AutoFilter;

.field private autosizedColumns:Ljava/util/TreeSet;

.field private buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

.field private chartOnly:Z

.field private columnBreaks:Ljava/util/ArrayList;

.field private columnFormats:Ljava/util/TreeSet;

.field private comboBox:Ljxl/biff/drawing/ComboBox;

.field private conditionalFormats:Ljava/util/ArrayList;

.field private dataValidation:Ljxl/biff/DataValidation;

.field private drawings:Ljava/util/ArrayList;

.field private drawingsModified:Z

.field private formatRecords:Ljxl/biff/FormattingRecords;

.field private hyperlinks:Ljava/util/ArrayList;

.field private images:Ljava/util/ArrayList;

.field private mergedCells:Ljxl/write/biff/MergedCells;

.field private name:Ljava/lang/String;

.field private numColumns:I

.field private numRows:I

.field private outputFile:Ljxl/write/biff/File;

.field private plsRecord:Ljxl/write/biff/PLSRecord;

.field private rowBreaks:Ljava/util/ArrayList;

.field private rows:[Ljxl/write/biff/RowRecord;

.field private settings:Ljxl/SheetSettings;

.field private sharedStrings:Ljxl/write/biff/SharedStrings;

.field private sheetWriter:Ljxl/write/biff/SheetWriter;

.field private validatedCells:Ljava/util/ArrayList;

.field private workbook:Ljxl/write/biff/WritableWorkbookImpl;

.field private workbookSettings:Ljxl/WorkbookSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 88
    sget-object v0, Ljxl/write/biff/WritableSheetImpl;->class$jxl$write$biff$WritableSheetImpl:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "jxl.write.biff.WritableSheetImpl"

    invoke-static {v0}, Ljxl/write/biff/WritableSheetImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/WritableSheetImpl;->class$jxl$write$biff$WritableSheetImpl:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/WritableSheetImpl;->logger:Lcommon/Logger;

    const/4 v0, 0x4

    new-array v0, v0, [C

    .line 246
    fill-array-data v0, :array_26

    sput-object v0, Ljxl/write/biff/WritableSheetImpl;->illegalSheetNameCharacters:[C

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "png"

    aput-object v2, v0, v1

    .line 252
    sput-object v0, Ljxl/write/biff/WritableSheetImpl;->imageTypes:[Ljava/lang/String;

    return-void

    nop

    :array_26
    .array-data 2
        0x2as
        0x3as
        0x3fs
        0x5cs
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljxl/write/biff/File;Ljxl/biff/FormattingRecords;Ljxl/write/biff/SharedStrings;Ljxl/WorkbookSettings;Ljxl/write/biff/WritableWorkbookImpl;)V
    .registers 7

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    invoke-direct {p0, p1}, Ljxl/write/biff/WritableSheetImpl;->validateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->name:Ljava/lang/String;

    .line 312
    iput-object p2, p0, Ljxl/write/biff/WritableSheetImpl;->outputFile:Ljxl/write/biff/File;

    const/4 p1, 0x0

    new-array p2, p1, [Ljxl/write/biff/RowRecord;

    .line 313
    iput-object p2, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    .line 314
    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    .line 315
    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->numColumns:I

    .line 316
    iput-boolean p1, p0, Ljxl/write/biff/WritableSheetImpl;->chartOnly:Z

    .line 317
    iput-object p6, p0, Ljxl/write/biff/WritableSheetImpl;->workbook:Ljxl/write/biff/WritableWorkbookImpl;

    .line 319
    iput-object p3, p0, Ljxl/write/biff/WritableSheetImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    .line 320
    iput-object p4, p0, Ljxl/write/biff/WritableSheetImpl;->sharedStrings:Ljxl/write/biff/SharedStrings;

    .line 321
    iput-object p5, p0, Ljxl/write/biff/WritableSheetImpl;->workbookSettings:Ljxl/WorkbookSettings;

    .line 322
    iput-boolean p1, p0, Ljxl/write/biff/WritableSheetImpl;->drawingsModified:Z

    .line 323
    new-instance p1, Ljava/util/TreeSet;

    new-instance p2, Ljxl/write/biff/WritableSheetImpl$ColumnInfoComparator;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljxl/write/biff/WritableSheetImpl$ColumnInfoComparator;-><init>(Ljxl/write/biff/WritableSheetImpl$1;)V

    invoke-direct {p1, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    .line 324
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->autosizedColumns:Ljava/util/TreeSet;

    .line 325
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    .line 326
    new-instance p1, Ljxl/write/biff/MergedCells;

    invoke-direct {p1, p0}, Ljxl/write/biff/MergedCells;-><init>(Ljxl/write/WritableSheet;)V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->mergedCells:Ljxl/write/biff/MergedCells;

    .line 327
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    .line 328
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    .line 329
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    .line 330
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->images:Ljava/util/ArrayList;

    .line 331
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->conditionalFormats:Ljava/util/ArrayList;

    .line 332
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->validatedCells:Ljava/util/ArrayList;

    .line 333
    new-instance p1, Ljxl/SheetSettings;

    invoke-direct {p1, p0}, Ljxl/SheetSettings;-><init>(Ljxl/Sheet;)V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    .line 336
    new-instance p1, Ljxl/write/biff/SheetWriter;

    iget-object p2, p0, Ljxl/write/biff/WritableSheetImpl;->outputFile:Ljxl/write/biff/File;

    iget-object p3, p0, Ljxl/write/biff/WritableSheetImpl;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {p1, p2, p0, p3}, Ljxl/write/biff/SheetWriter;-><init>(Ljxl/write/biff/File;Ljxl/write/biff/WritableSheetImpl;Ljxl/WorkbookSettings;)V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    return-void
.end method

.method private autosizeColumn(I)V
    .registers 11

    .line 2531
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableSheetImpl;->getColumnInfo(I)Ljxl/write/biff/ColumnInfoRecord;

    move-result-object v0

    .line 2532
    invoke-virtual {v0}, Ljxl/write/biff/ColumnInfoRecord;->getCellFormat()Ljxl/biff/XFRecord;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/biff/XFRecord;->getFont()Ljxl/format/Font;

    move-result-object v1

    .line 2533
    sget-object v2, Ljxl/write/WritableWorkbook;->NORMAL_STYLE:Ljxl/write/WritableCellFormat;

    invoke-virtual {v2}, Ljxl/write/WritableCellFormat;->getFont()Ljxl/format/Font;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2535
    :goto_14
    iget v5, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    if-ge v3, v5, :cond_5d

    const/4 v5, 0x0

    .line 2538
    iget-object v6, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v7, v6, v3

    if-eqz v7, :cond_25

    .line 2540
    aget-object v5, v6, v3

    invoke-virtual {v5, p1}, Ljxl/write/biff/RowRecord;->getCell(I)Ljxl/write/biff/CellValue;

    move-result-object v5

    :cond_25
    if-eqz v5, :cond_5a

    .line 2545
    invoke-interface {v5}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v6

    .line 2546
    invoke-interface {v5}, Ljxl/Cell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v5

    invoke-interface {v5}, Ljxl/format/CellFormat;->getFont()Ljxl/format/Font;

    move-result-object v5

    .line 2548
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    move-object v5, v1

    .line 2550
    :cond_3a
    invoke-interface {v5}, Ljxl/format/Font;->getPointSize()I

    move-result v7

    .line 2551
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 2553
    invoke-interface {v5}, Ljxl/format/Font;->isItalic()Z

    move-result v8

    if-nez v8, :cond_50

    invoke-interface {v5}, Ljxl/format/Font;->getBoldWeight()I

    move-result v5

    const/16 v8, 0x190

    if-le v5, v8, :cond_52

    :cond_50
    add-int/lit8 v6, v6, 0x2

    :cond_52
    mul-int v6, v6, v7

    mul-int/lit16 v6, v6, 0x100

    .line 2560
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 2563
    :cond_5d
    invoke-interface {v2}, Ljxl/format/Font;->getPointSize()I

    move-result p1

    div-int/2addr v4, p1

    invoke-virtual {v0, v4}, Ljxl/write/biff/ColumnInfoRecord;->setWidth(I)V

    return-void
.end method

.method private autosizeColumns()V
    .registers 3

    .line 2515
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->autosizedColumns:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2516
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2518
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2519
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Ljxl/write/biff/WritableSheetImpl;->autosizeColumn(I)V

    goto :goto_6

    :cond_1a
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    .line 88
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

.method private copyCells(Ljxl/Sheet;)V
    .registers 10

    .line 1419
    invoke-interface {p1}, Ljxl/Sheet;->getRows()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_be

    .line 1424
    invoke-interface {p1, v2}, Ljxl/Sheet;->getRow(I)[Ljxl/Cell;

    move-result-object v3

    const/4 v4, 0x0

    .line 1426
    :goto_d
    array-length v5, v3

    if-ge v4, v5, :cond_ba

    .line 1428
    aget-object v5, v3, v4

    .line 1429
    invoke-interface {v5}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v6

    .line 1438
    :try_start_16
    sget-object v7, Ljxl/CellType;->LABEL:Ljxl/CellType;

    if-ne v6, v7, :cond_26

    .line 1440
    new-instance v6, Ljxl/write/Label;

    check-cast v5, Ljxl/LabelCell;

    invoke-direct {v6, v5}, Ljxl/write/Label;-><init>(Ljxl/LabelCell;)V

    .line 1441
    invoke-virtual {p0, v6}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    goto/16 :goto_b6

    .line 1443
    :cond_26
    sget-object v7, Ljxl/CellType;->NUMBER:Ljxl/CellType;

    if-ne v6, v7, :cond_36

    .line 1445
    new-instance v6, Ljxl/write/Number;

    check-cast v5, Ljxl/NumberCell;

    invoke-direct {v6, v5}, Ljxl/write/Number;-><init>(Ljxl/NumberCell;)V

    .line 1446
    invoke-virtual {p0, v6}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    goto/16 :goto_b6

    .line 1448
    :cond_36
    sget-object v7, Ljxl/CellType;->DATE:Ljxl/CellType;

    if-ne v6, v7, :cond_46

    .line 1450
    new-instance v6, Ljxl/write/DateTime;

    check-cast v5, Ljxl/DateCell;

    invoke-direct {v6, v5}, Ljxl/write/DateTime;-><init>(Ljxl/DateCell;)V

    .line 1451
    invoke-virtual {p0, v6}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    goto/16 :goto_b6

    .line 1453
    :cond_46
    sget-object v7, Ljxl/CellType;->BOOLEAN:Ljxl/CellType;

    if-ne v6, v7, :cond_55

    .line 1455
    new-instance v6, Ljxl/write/Boolean;

    check-cast v5, Ljxl/BooleanCell;

    invoke-direct {v6, v5}, Ljxl/write/Boolean;-><init>(Ljxl/BooleanCell;)V

    .line 1456
    invoke-virtual {p0, v6}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    goto :goto_b6

    .line 1458
    :cond_55
    sget-object v7, Ljxl/CellType;->NUMBER_FORMULA:Ljxl/CellType;

    if-ne v6, v7, :cond_64

    .line 1460
    new-instance v6, Ljxl/write/biff/ReadNumberFormulaRecord;

    check-cast v5, Ljxl/biff/FormulaData;

    invoke-direct {v6, v5}, Ljxl/write/biff/ReadNumberFormulaRecord;-><init>(Ljxl/biff/FormulaData;)V

    .line 1462
    invoke-virtual {p0, v6}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    goto :goto_b6

    .line 1464
    :cond_64
    sget-object v7, Ljxl/CellType;->STRING_FORMULA:Ljxl/CellType;

    if-ne v6, v7, :cond_73

    .line 1466
    new-instance v6, Ljxl/write/biff/ReadStringFormulaRecord;

    check-cast v5, Ljxl/biff/FormulaData;

    invoke-direct {v6, v5}, Ljxl/write/biff/ReadStringFormulaRecord;-><init>(Ljxl/biff/FormulaData;)V

    .line 1468
    invoke-virtual {p0, v6}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    goto :goto_b6

    .line 1470
    :cond_73
    sget-object v7, Ljxl/CellType;->BOOLEAN_FORMULA:Ljxl/CellType;

    if-ne v6, v7, :cond_82

    .line 1472
    new-instance v6, Ljxl/write/biff/ReadBooleanFormulaRecord;

    check-cast v5, Ljxl/biff/FormulaData;

    invoke-direct {v6, v5}, Ljxl/write/biff/ReadBooleanFormulaRecord;-><init>(Ljxl/biff/FormulaData;)V

    .line 1474
    invoke-virtual {p0, v6}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    goto :goto_b6

    .line 1476
    :cond_82
    sget-object v7, Ljxl/CellType;->DATE_FORMULA:Ljxl/CellType;

    if-ne v6, v7, :cond_91

    .line 1478
    new-instance v6, Ljxl/write/biff/ReadDateFormulaRecord;

    check-cast v5, Ljxl/biff/FormulaData;

    invoke-direct {v6, v5}, Ljxl/write/biff/ReadDateFormulaRecord;-><init>(Ljxl/biff/FormulaData;)V

    .line 1480
    invoke-virtual {p0, v6}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    goto :goto_b6

    .line 1482
    :cond_91
    sget-object v7, Ljxl/CellType;->FORMULA_ERROR:Ljxl/CellType;

    if-ne v6, v7, :cond_a0

    .line 1484
    new-instance v6, Ljxl/write/biff/ReadErrorFormulaRecord;

    check-cast v5, Ljxl/biff/FormulaData;

    invoke-direct {v6, v5}, Ljxl/write/biff/ReadErrorFormulaRecord;-><init>(Ljxl/biff/FormulaData;)V

    .line 1486
    invoke-virtual {p0, v6}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    goto :goto_b6

    .line 1488
    :cond_a0
    sget-object v7, Ljxl/CellType;->EMPTY:Ljxl/CellType;

    if-ne v6, v7, :cond_b6

    .line 1490
    invoke-interface {v5}, Ljxl/Cell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v6

    if-eqz v6, :cond_b6

    .line 1495
    new-instance v6, Ljxl/write/Blank;

    invoke-direct {v6, v5}, Ljxl/write/Blank;-><init>(Ljxl/Cell;)V

    .line 1496
    invoke-virtual {p0, v6}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V
    :try_end_b2
    .catch Ljxl/write/WriteException; {:try_start_16 .. :try_end_b2} :catch_b3

    goto :goto_b6

    .line 1502
    :catch_b3
    invoke-static {v1}, Lcommon/Assert;->verify(Z)V

    :cond_b6
    :goto_b6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d

    :cond_ba
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_be
    return-void
.end method

.method private copyCells(Ljxl/write/WritableSheet;)V
    .registers 10

    .line 1519
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getRows()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_2e

    .line 1524
    invoke-interface {p1, v2}, Ljxl/write/WritableSheet;->getRow(I)[Ljxl/Cell;

    move-result-object v3

    const/4 v4, 0x0

    .line 1526
    :goto_d
    array-length v5, v3

    if-ge v4, v5, :cond_2b

    .line 1528
    aget-object v5, v3, v4

    .line 1532
    :try_start_12
    move-object v6, v5

    check-cast v6, Ljxl/write/WritableCell;

    invoke-interface {v5}, Ljxl/Cell;->getColumn()I

    move-result v7

    invoke-interface {v5}, Ljxl/Cell;->getRow()I

    move-result v5

    invoke-interface {v6, v7, v5}, Ljxl/write/WritableCell;->copyTo(II)Ljxl/write/WritableCell;

    move-result-object v5

    .line 1534
    invoke-virtual {p0, v5}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V
    :try_end_24
    .catch Ljxl/write/WriteException; {:try_start_12 .. :try_end_24} :catch_25

    goto :goto_28

    .line 1538
    :catch_25
    invoke-static {v1}, Lcommon/Assert;->verify(Z)V

    :goto_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_2e
    return-void
.end method

.method private getCharts()[Ljxl/biff/drawing/Chart;
    .registers 2

    .line 2083
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {v0}, Ljxl/write/biff/SheetWriter;->getCharts()[Ljxl/biff/drawing/Chart;

    move-result-object v0

    return-object v0
.end method

.method private getDrawings()[Ljxl/biff/drawing/DrawingGroupObject;
    .registers 3

    .line 2093
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljxl/biff/drawing/DrawingGroupObject;

    .line 2094
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljxl/biff/drawing/DrawingGroupObject;

    return-object v0
.end method

.method private getWorkspaceOptions()Ljxl/biff/WorkspaceInformationRecord;
    .registers 2

    .line 2123
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {v0}, Ljxl/write/biff/SheetWriter;->getWorkspaceOptions()Ljxl/biff/WorkspaceInformationRecord;

    move-result-object v0

    return-object v0
.end method

.method private validateName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 2388
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-le v0, v1, :cond_28

    .line 2390
    sget-object v0, Ljxl/write/biff/WritableSheetImpl;->logger:Lcommon/Logger;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Sheet name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " too long - truncating"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 2391
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2394
    :cond_28
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x27

    if-ne v0, v1, :cond_3c

    .line 2396
    sget-object v0, Ljxl/write/biff/WritableSheetImpl;->logger:Lcommon/Logger;

    const-string v1, "Sheet naming cannot start with \' - removing"

    invoke-virtual {v0, v1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 2397
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2400
    :cond_3c
    :goto_3c
    sget-object v0, Ljxl/write/biff/WritableSheetImpl;->illegalSheetNameCharacters:[C

    array-length v1, v0

    if-ge v2, v1, :cond_69

    .line 2402
    aget-char v0, v0, v2

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    if-eq p1, v0, :cond_65

    .line 2405
    sget-object p1, Ljxl/write/biff/WritableSheetImpl;->logger:Lcommon/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v3, Ljxl/write/biff/WritableSheetImpl;->illegalSheetNameCharacters:[C

    aget-char v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v3, " is not a valid character within a sheet name - replacing"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    :cond_65
    add-int/lit8 v2, v2, 0x1

    move-object p1, v0

    goto :goto_3c

    :cond_69
    return-object p1
.end method


# virtual methods
.method public addCell(Ljxl/write/WritableCell;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;,
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation

    .line 1028
    invoke-interface {p1}, Ljxl/write/WritableCell;->getType()Ljxl/CellType;

    move-result-object v0

    sget-object v1, Ljxl/CellType;->EMPTY:Ljxl/CellType;

    if-ne v0, v1, :cond_11

    if-eqz p1, :cond_11

    .line 1030
    invoke-interface {p1}, Ljxl/write/WritableCell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v0

    if-nez v0, :cond_11

    return-void

    .line 1038
    :cond_11
    move-object v0, p1

    check-cast v0, Ljxl/write/biff/CellValue;

    .line 1040
    invoke-virtual {v0}, Ljxl/write/biff/CellValue;->isReferenced()Z

    move-result v1

    if-nez v1, :cond_43

    .line 1045
    invoke-interface {p1}, Ljxl/write/WritableCell;->getRow()I

    move-result p1

    .line 1046
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableSheetImpl;->getRowRecord(I)Ljxl/write/biff/RowRecord;

    move-result-object v1

    .line 1047
    invoke-virtual {v1, v0}, Ljxl/write/biff/RowRecord;->addCell(Ljxl/write/biff/CellValue;)V

    add-int/lit8 p1, p1, 0x1

    .line 1050
    iget v2, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    .line 1051
    iget p1, p0, Ljxl/write/biff/WritableSheetImpl;->numColumns:I

    invoke-virtual {v1}, Ljxl/write/biff/RowRecord;->getMaxColumn()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->numColumns:I

    .line 1055
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->sharedStrings:Ljxl/write/biff/SharedStrings;

    invoke-virtual {v0, p1, v1, p0}, Ljxl/write/biff/CellValue;->setCellDetails(Ljxl/biff/FormattingRecords;Ljxl/write/biff/SharedStrings;Ljxl/write/biff/WritableSheetImpl;)V

    return-void

    .line 1042
    :cond_43
    new-instance p1, Ljxl/write/biff/JxlWriteException;

    sget-object v0, Ljxl/write/biff/JxlWriteException;->cellReferenced:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {p1, v0}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw p1
.end method

.method public addColumnPageBreak(I)V
    .registers 5

    .line 2059
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 2062
    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    if-nez v1, :cond_1d

    .line 2064
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_7

    const/4 v1, 0x1

    goto :goto_7

    :cond_1d
    if-nez v1, :cond_29

    .line 2072
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    return-void
.end method

.method addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V
    .registers 3

    .line 2421
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2422
    instance-of p1, p1, Ljxl/biff/drawing/Drawing;

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcommon/Assert;->verify(Z)V

    return-void
.end method

.method public addHyperlink(Ljxl/write/WritableHyperlink;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;,
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation

    .line 1820
    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getColumn()I

    move-result v0

    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getRow()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljxl/write/biff/WritableSheetImpl;->getCell(II)Ljxl/Cell;

    move-result-object v0

    .line 1823
    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->isFile()Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->isUNC()Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_3b

    .line 1835
    :cond_19
    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->isURL()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1837
    invoke-virtual {p1}, Ljxl/write/biff/HyperlinkRecord;->getContents()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_49

    .line 1840
    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_49

    .line 1847
    :cond_2e
    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->isLocation()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1849
    invoke-virtual {p1}, Ljxl/write/biff/HyperlinkRecord;->getContents()Ljava/lang/String;

    move-result-object v1

    goto :goto_49

    :cond_39
    const/4 v1, 0x0

    goto :goto_49

    .line 1825
    :cond_3b
    :goto_3b
    invoke-virtual {p1}, Ljxl/write/biff/HyperlinkRecord;->getContents()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_49

    .line 1828
    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1852
    :cond_49
    :goto_49
    invoke-interface {v0}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v2

    sget-object v3, Ljxl/CellType;->LABEL:Ljxl/CellType;

    if-ne v2, v3, :cond_5c

    .line 1854
    check-cast v0, Ljxl/write/Label;

    .line 1855
    invoke-virtual {v0, v1}, Ljxl/write/Label;->setString(Ljava/lang/String;)V

    .line 1856
    sget-object v1, Ljxl/write/WritableWorkbook;->HYPERLINK_STYLE:Ljxl/write/WritableCellFormat;

    invoke-virtual {v0, v1}, Ljxl/write/Label;->setCellFormat(Ljxl/format/CellFormat;)V

    goto :goto_6e

    .line 1860
    :cond_5c
    new-instance v0, Ljxl/write/Label;

    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getColumn()I

    move-result v2

    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getRow()I

    move-result v3

    sget-object v4, Ljxl/write/WritableWorkbook;->HYPERLINK_STYLE:Ljxl/write/WritableCellFormat;

    invoke-direct {v0, v2, v3, v1, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1862
    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    .line 1866
    :goto_6e
    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getRow()I

    move-result v0

    :goto_72
    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getLastRow()I

    move-result v1

    if-gt v0, v1, :cond_9f

    .line 1868
    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getColumn()I

    move-result v1

    :goto_7c
    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getLastColumn()I

    move-result v2

    if-gt v1, v2, :cond_9c

    .line 1870
    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getRow()I

    move-result v2

    if-eq v0, v2, :cond_99

    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getColumn()I

    move-result v2

    if-eq v1, v2, :cond_99

    .line 1873
    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v3, v2, v0

    if-eqz v3, :cond_99

    .line 1875
    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljxl/write/biff/RowRecord;->removeCell(I)V

    :cond_99
    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    :cond_9c
    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    .line 1881
    :cond_9f
    invoke-virtual {p1, p0}, Ljxl/write/biff/HyperlinkRecord;->initialize(Ljxl/write/WritableSheet;)V

    .line 1882
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addImage(Ljxl/write/WritableImage;)V
    .registers 9

    .line 2293
    invoke-virtual {p1}, Ljxl/write/WritableImage;->getImageFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_32

    .line 2298
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2e

    .line 2299
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1b

    add-int/2addr v3, v2

    .line 2300
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_1b
    const-string v0, ""

    :goto_1d
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2303
    :goto_1f
    sget-object v5, Ljxl/write/biff/WritableSheetImpl;->imageTypes:[Ljava/lang/String;

    array-length v6, v5

    if-ge v3, v6, :cond_35

    if-nez v4, :cond_35

    .line 2305
    aget-object v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    const/4 v4, 0x1

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_32
    const-string v0, "?"

    const/4 v4, 0x1

    :cond_35
    if-eqz v4, :cond_47

    .line 2318
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->workbook:Ljxl/write/biff/WritableWorkbookImpl;

    invoke-virtual {v0, p1}, Ljxl/write/biff/WritableWorkbookImpl;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 2319
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2320
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    .line 2324
    :cond_47
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v3, "Image type "

    invoke-direct {p1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2325
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " not supported.  Supported types are "

    .line 2326
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2327
    sget-object v0, Ljxl/write/biff/WritableSheetImpl;->imageTypes:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2328
    :goto_5d
    sget-object v0, Ljxl/write/biff/WritableSheetImpl;->imageTypes:[Ljava/lang/String;

    array-length v0, v0

    if-ge v2, v0, :cond_71

    const-string v0, ", "

    .line 2330
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2331
    sget-object v0, Ljxl/write/biff/WritableSheetImpl;->imageTypes:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 2333
    :cond_71
    sget-object v0, Ljxl/write/biff/WritableSheetImpl;->logger:Lcommon/Logger;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    :goto_7a
    return-void
.end method

.method public addRowPageBreak(I)V
    .registers 5

    .line 2034
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 2037
    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    if-nez v1, :cond_1d

    .line 2039
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_7

    const/4 v1, 0x1

    goto :goto_7

    :cond_1d
    if-nez v1, :cond_29

    .line 2047
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    return-void
.end method

.method addValidationCell(Ljxl/write/biff/CellValue;)V
    .registers 3

    .line 2478
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method checkMergedBorders()V
    .registers 8

    .line 2106
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    iget-object v3, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    iget-object v4, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    iget-object v5, p0, Ljxl/write/biff/WritableSheetImpl;->mergedCells:Ljxl/write/biff/MergedCells;

    iget-object v6, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual/range {v0 .. v6}, Ljxl/write/biff/SheetWriter;->setWriteData([Ljxl/write/biff/RowRecord;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljxl/write/biff/MergedCells;Ljava/util/TreeSet;)V

    .line 2112
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {p0}, Ljxl/write/biff/WritableSheetImpl;->getRows()I

    move-result v1

    invoke-virtual {p0}, Ljxl/write/biff/WritableSheetImpl;->getColumns()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljxl/write/biff/SheetWriter;->setDimensions(II)V

    .line 2113
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {v0}, Ljxl/write/biff/SheetWriter;->checkMergedBorders()V

    return-void
.end method

.method copy(Ljxl/Sheet;)V
    .registers 4

    .line 1552
    new-instance v0, Ljxl/SheetSettings;

    invoke-interface {p1}, Ljxl/Sheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljxl/SheetSettings;-><init>(Ljxl/SheetSettings;Ljxl/Sheet;)V

    iput-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    .line 1554
    new-instance v0, Ljxl/write/biff/SheetCopier;

    invoke-direct {v0, p1, p0}, Ljxl/write/biff/SheetCopier;-><init>(Ljxl/Sheet;Ljxl/write/WritableSheet;)V

    .line 1555
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setColumnFormats(Ljava/util/TreeSet;)V

    .line 1556
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setFormatRecords(Ljxl/biff/FormattingRecords;)V

    .line 1557
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setHyperlinks(Ljava/util/ArrayList;)V

    .line 1558
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->mergedCells:Ljxl/write/biff/MergedCells;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setMergedCells(Ljxl/write/biff/MergedCells;)V

    .line 1559
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setRowBreaks(Ljava/util/ArrayList;)V

    .line 1560
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setColumnBreaks(Ljava/util/ArrayList;)V

    .line 1561
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setSheetWriter(Ljxl/write/biff/SheetWriter;)V

    .line 1562
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setDrawings(Ljava/util/ArrayList;)V

    .line 1563
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setImages(Ljava/util/ArrayList;)V

    .line 1564
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->conditionalFormats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setConditionalFormats(Ljava/util/ArrayList;)V

    .line 1566
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->copySheet()V

    .line 1568
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getDataValidation()Ljxl/biff/DataValidation;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->dataValidation:Ljxl/biff/DataValidation;

    .line 1569
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getComboBox()Ljxl/biff/drawing/ComboBox;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->comboBox:Ljxl/biff/drawing/ComboBox;

    .line 1570
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getPLSRecord()Ljxl/write/biff/PLSRecord;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->plsRecord:Ljxl/write/biff/PLSRecord;

    .line 1571
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->isChartOnly()Z

    move-result p1

    iput-boolean p1, p0, Ljxl/write/biff/WritableSheetImpl;->chartOnly:Z

    .line 1572
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getButtonPropertySet()Ljxl/write/biff/ButtonPropertySetRecord;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    .line 1573
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getRows()I

    move-result p1

    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    .line 1574
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getAutoFilter()Ljxl/biff/AutoFilter;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->autoFilter:Ljxl/biff/AutoFilter;

    return-void
.end method

.method copy(Ljxl/write/WritableSheet;)V
    .registers 10

    .line 1584
    new-instance v0, Ljxl/SheetSettings;

    invoke-interface {p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljxl/SheetSettings;-><init>(Ljxl/SheetSettings;Ljxl/Sheet;)V

    iput-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    .line 1586
    invoke-direct {p0, p1}, Ljxl/write/biff/WritableSheetImpl;->copyCells(Ljxl/write/WritableSheet;)V

    .line 1589
    move-object v0, p1

    check-cast v0, Ljxl/write/biff/WritableSheetImpl;

    iget-object v1, v0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1590
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1592
    new-instance v2, Ljxl/write/biff/ColumnInfoRecord;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/write/biff/ColumnInfoRecord;

    invoke-direct {v2, v3}, Ljxl/write/biff/ColumnInfoRecord;-><init>(Ljxl/write/biff/ColumnInfoRecord;)V

    .line 1594
    iget-object v3, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v3, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 1598
    :cond_2e
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getMergedCells()[Ljxl/Range;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1600
    :goto_34
    array-length v4, v1

    if-ge v3, v4, :cond_48

    .line 1602
    iget-object v4, p0, Ljxl/write/biff/WritableSheetImpl;->mergedCells:Ljxl/write/biff/MergedCells;

    new-instance v5, Ljxl/biff/SheetRangeImpl;

    aget-object v6, v1, v3

    check-cast v6, Ljxl/biff/SheetRangeImpl;

    invoke-direct {v5, v6, p0}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/biff/SheetRangeImpl;Ljxl/Sheet;)V

    invoke-virtual {v4, v5}, Ljxl/write/biff/MergedCells;->add(Ljxl/Range;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 1608
    :cond_48
    :try_start_48
    check-cast p1, Ljxl/write/biff/WritableSheetImpl;

    iget-object p1, p1, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    const/4 v1, 0x0

    .line 1610
    :goto_4d
    array-length v3, p1

    if-ge v1, v3, :cond_7d

    .line 1612
    aget-object v3, p1, v1

    if-eqz v3, :cond_77

    .line 1614
    invoke-virtual {v3}, Ljxl/write/biff/RowRecord;->isDefaultHeight()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-virtual {v3}, Ljxl/write/biff/RowRecord;->isCollapsed()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 1618
    :cond_60
    invoke-virtual {p0, v1}, Ljxl/write/biff/WritableSheetImpl;->getRowRecord(I)Ljxl/write/biff/RowRecord;

    move-result-object v4

    .line 1619
    invoke-virtual {v3}, Ljxl/write/biff/RowRecord;->getRowHeight()I

    move-result v5

    invoke-virtual {v3}, Ljxl/write/biff/RowRecord;->matchesDefaultFontHeight()Z

    move-result v6

    invoke-virtual {v3}, Ljxl/write/biff/RowRecord;->isCollapsed()Z

    move-result v7

    invoke-virtual {v3}, Ljxl/write/biff/RowRecord;->getStyle()Ljxl/biff/XFRecord;

    move-result-object v3

    invoke-virtual {v4, v5, v6, v7, v3}, Ljxl/write/biff/RowRecord;->setRowDetails(IZZLjxl/biff/XFRecord;)V
    :try_end_77
    .catch Ljxl/write/biff/RowsExceededException; {:try_start_48 .. :try_end_77} :catch_7a

    :cond_77
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 1630
    :catch_7a
    invoke-static {v2}, Lcommon/Assert;->verify(Z)V

    .line 1640
    :cond_7d
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, v0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    .line 1643
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, v0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    .line 1646
    iget-object p1, v0, Ljxl/write/biff/WritableSheetImpl;->dataValidation:Ljxl/biff/DataValidation;

    if-eqz p1, :cond_9e

    .line 1649
    new-instance v1, Ljxl/biff/DataValidation;

    iget-object v3, p0, Ljxl/write/biff/WritableSheetImpl;->workbook:Ljxl/write/biff/WritableWorkbookImpl;

    iget-object v4, p0, Ljxl/write/biff/WritableSheetImpl;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v1, p1, v3, v3, v4}, Ljxl/biff/DataValidation;-><init>(Ljxl/biff/DataValidation;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->dataValidation:Ljxl/biff/DataValidation;

    .line 1656
    :cond_9e
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-direct {v0}, Ljxl/write/biff/WritableSheetImpl;->getCharts()[Ljxl/biff/drawing/Chart;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljxl/write/biff/SheetWriter;->setCharts([Ljxl/biff/drawing/Chart;)V

    .line 1659
    invoke-direct {v0}, Ljxl/write/biff/WritableSheetImpl;->getDrawings()[Ljxl/biff/drawing/DrawingGroupObject;

    move-result-object p1

    .line 1660
    :goto_ab
    array-length v1, p1

    if-ge v2, v1, :cond_ce

    .line 1662
    aget-object v1, p1, v2

    instance-of v1, v1, Ljxl/biff/drawing/Drawing;

    if-eqz v1, :cond_cb

    .line 1664
    new-instance v1, Ljxl/write/WritableImage;

    aget-object v3, p1, v2

    iget-object v4, p0, Ljxl/write/biff/WritableSheetImpl;->workbook:Ljxl/write/biff/WritableWorkbookImpl;

    invoke-virtual {v4}, Ljxl/write/biff/WritableWorkbookImpl;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljxl/write/WritableImage;-><init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;)V

    .line 1666
    iget-object v3, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1667
    iget-object v3, p0, Ljxl/write/biff/WritableSheetImpl;->images:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cb
    add-int/lit8 v2, v2, 0x1

    goto :goto_ab

    .line 1675
    :cond_ce
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-direct {v0}, Ljxl/write/biff/WritableSheetImpl;->getWorkspaceOptions()Ljxl/biff/WorkspaceInformationRecord;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljxl/write/biff/SheetWriter;->setWorkspaceOptions(Ljxl/biff/WorkspaceInformationRecord;)V

    .line 1678
    iget-object p1, v0, Ljxl/write/biff/WritableSheetImpl;->plsRecord:Ljxl/write/biff/PLSRecord;

    if-eqz p1, :cond_e4

    .line 1680
    new-instance p1, Ljxl/write/biff/PLSRecord;

    iget-object v1, v0, Ljxl/write/biff/WritableSheetImpl;->plsRecord:Ljxl/write/biff/PLSRecord;

    invoke-direct {p1, v1}, Ljxl/write/biff/PLSRecord;-><init>(Ljxl/write/biff/PLSRecord;)V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->plsRecord:Ljxl/write/biff/PLSRecord;

    .line 1684
    :cond_e4
    iget-object p1, v0, Ljxl/write/biff/WritableSheetImpl;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    if-eqz p1, :cond_f1

    .line 1686
    new-instance p1, Ljxl/write/biff/ButtonPropertySetRecord;

    iget-object v0, v0, Ljxl/write/biff/WritableSheetImpl;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    invoke-direct {p1, v0}, Ljxl/write/biff/ButtonPropertySetRecord;-><init>(Ljxl/write/biff/ButtonPropertySetRecord;)V

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    :cond_f1
    return-void
.end method

.method public findCell(Ljava/lang/String;)Ljxl/Cell;
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 440
    :goto_4
    invoke-virtual {p0}, Ljxl/write/biff/WritableSheetImpl;->getRows()I

    move-result v4

    if-ge v2, v4, :cond_2b

    if-nez v3, :cond_2b

    .line 442
    invoke-virtual {p0, v2}, Ljxl/write/biff/WritableSheetImpl;->getRow(I)[Ljxl/Cell;

    move-result-object v4

    const/4 v5, 0x0

    .line 443
    :goto_11
    array-length v6, v4

    if-ge v5, v6, :cond_28

    if-nez v3, :cond_28

    .line 445
    aget-object v6, v4, v5

    invoke-interface {v6}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 447
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

    .line 473
    :goto_4
    invoke-virtual {p0}, Ljxl/write/biff/WritableSheetImpl;->getRows()I

    move-result v4

    if-ge v2, v4, :cond_41

    if-nez v3, :cond_41

    .line 475
    invoke-virtual {p0, v2}, Ljxl/write/biff/WritableSheetImpl;->getRow(I)[Ljxl/Cell;

    move-result-object v4

    const/4 v5, 0x0

    .line 476
    :goto_11
    array-length v6, v4

    if-ge v5, v6, :cond_3e

    if-nez v3, :cond_3e

    .line 478
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

    .line 482
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

.method public getCell(II)Ljxl/Cell;
    .registers 3

    .line 363
    invoke-virtual {p0, p1, p2}, Ljxl/write/biff/WritableSheetImpl;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object p1

    return-object p1
.end method

.method public getCell(Ljava/lang/String;)Ljxl/Cell;
    .registers 3

    .line 350
    invoke-static {p1}, Ljxl/biff/CellReferenceHelper;->getColumn(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Ljxl/biff/CellReferenceHelper;->getRow(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ljxl/write/biff/WritableSheetImpl;->getCell(II)Ljxl/Cell;

    move-result-object p1

    return-object p1
.end method

.method public getColumn(I)[Ljxl/Cell;
    .registers 8

    .line 534
    iget v0, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ltz v0, :cond_1b

    if-nez v3, :cond_1b

    .line 538
    invoke-virtual {p0, p1, v0}, Ljxl/write/biff/WritableSheetImpl;->getCell(II)Ljxl/Cell;

    move-result-object v4

    invoke-interface {v4}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v4

    sget-object v5, Ljxl/CellType;->EMPTY:Ljxl/CellType;

    if-eq v4, v5, :cond_18

    const/4 v3, 0x1

    goto :goto_6

    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1b
    add-int/lit8 v1, v0, 0x1

    .line 549
    new-array v1, v1, [Ljxl/Cell;

    :goto_1f
    if-gt v2, v0, :cond_2a

    .line 553
    invoke-virtual {p0, p1, v2}, Ljxl/write/biff/WritableSheetImpl;->getCell(II)Ljxl/Cell;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_2a
    return-object v1
.end method

.method public getColumnFormat(I)Ljxl/format/CellFormat;
    .registers 2

    .line 2178
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableSheetImpl;->getColumnView(I)Ljxl/CellView;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/CellView;->getFormat()Ljxl/format/CellFormat;

    move-result-object p1

    return-object p1
.end method

.method getColumnInfo(I)Ljxl/write/biff/ColumnInfoRecord;
    .registers 7

    .line 1119
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    .line 1123
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    if-nez v2, :cond_1f

    .line 1125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/write/biff/ColumnInfoRecord;

    .line 1127
    invoke-virtual {v3}, Ljxl/write/biff/ColumnInfoRecord;->getColumn()I

    move-result v4

    if-lt v4, p1, :cond_9

    const/4 v2, 0x1

    goto :goto_9

    :cond_1f
    if-nez v2, :cond_22

    return-object v1

    .line 1138
    :cond_22
    invoke-virtual {v3}, Ljxl/write/biff/ColumnInfoRecord;->getColumn()I

    move-result v0

    if-ne v0, p1, :cond_29

    move-object v1, v3

    :cond_29
    return-object v1
.end method

.method public getColumnPageBreaks()[I
    .registers 5

    .line 2462
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 2464
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 2466
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_24
    return-object v0
.end method

.method public getColumnView(I)Ljxl/CellView;
    .registers 4

    .line 2266
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableSheetImpl;->getColumnInfo(I)Ljxl/write/biff/ColumnInfoRecord;

    move-result-object p1

    .line 2267
    new-instance v0, Ljxl/CellView;

    invoke-direct {v0}, Ljxl/CellView;-><init>()V

    if-eqz p1, :cond_2a

    .line 2271
    invoke-virtual {p1}, Ljxl/write/biff/ColumnInfoRecord;->getWidth()I

    move-result v1

    div-int/lit16 v1, v1, 0x100

    invoke-virtual {v0, v1}, Ljxl/CellView;->setDimension(I)V

    .line 2272
    invoke-virtual {p1}, Ljxl/write/biff/ColumnInfoRecord;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/CellView;->setSize(I)V

    .line 2273
    invoke-virtual {p1}, Ljxl/write/biff/ColumnInfoRecord;->getHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/CellView;->setHidden(Z)V

    .line 2274
    invoke-virtual {p1}, Ljxl/write/biff/ColumnInfoRecord;->getCellFormat()Ljxl/biff/XFRecord;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljxl/CellView;->setFormat(Ljxl/format/CellFormat;)V

    goto :goto_40

    .line 2278
    :cond_2a
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {p1}, Ljxl/SheetSettings;->getDefaultColumnWidth()I

    move-result p1

    div-int/lit16 p1, p1, 0x100

    invoke-virtual {v0, p1}, Ljxl/CellView;->setDimension(I)V

    .line 2279
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {p1}, Ljxl/SheetSettings;->getDefaultColumnWidth()I

    move-result p1

    mul-int/lit16 p1, p1, 0x100

    invoke-virtual {v0, p1}, Ljxl/CellView;->setSize(I)V

    :goto_40
    return-object v0
.end method

.method public getColumnWidth(I)I
    .registers 2

    .line 2191
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableSheetImpl;->getColumnView(I)Ljxl/CellView;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/CellView;->getDimension()I

    move-result p1

    return p1
.end method

.method public getColumns()I
    .registers 2

    .line 423
    iget v0, p0, Ljxl/write/biff/WritableSheetImpl;->numColumns:I

    return v0
.end method

.method getComboBox()Ljxl/biff/drawing/ComboBox;
    .registers 2

    .line 2489
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->comboBox:Ljxl/biff/drawing/ComboBox;

    return-object v0
.end method

.method public getDataValidation()Ljxl/biff/DataValidation;
    .registers 2

    .line 2507
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->dataValidation:Ljxl/biff/DataValidation;

    return-object v0
.end method

.method public getDrawing(I)Ljxl/Image;
    .registers 3

    .line 2366
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/Image;

    return-object p1
.end method

.method final getFooter()Ljxl/write/biff/FooterRecord;
    .registers 2

    .line 1707
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {v0}, Ljxl/write/biff/SheetWriter;->getFooter()Ljxl/write/biff/FooterRecord;

    move-result-object v0

    return-object v0
.end method

.method final getHeader()Ljxl/write/biff/HeaderRecord;
    .registers 2

    .line 1697
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {v0}, Ljxl/write/biff/SheetWriter;->getHeader()Ljxl/write/biff/HeaderRecord;

    move-result-object v0

    return-object v0
.end method

.method public getHyperlinks()[Ljxl/Hyperlink;
    .registers 4

    .line 1727
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljxl/Hyperlink;

    const/4 v1, 0x0

    .line 1729
    :goto_9
    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 1731
    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/Hyperlink;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1e
    return-object v0
.end method

.method public getImage(I)Ljxl/write/WritableImage;
    .registers 3

    .line 2355
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/write/WritableImage;

    return-object p1
.end method

.method public getMergedCells()[Ljxl/Range;
    .registers 2

    .line 1744
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->mergedCells:Ljxl/write/biff/MergedCells;

    invoke-virtual {v0}, Ljxl/write/biff/MergedCells;->getMergedCells()[Ljxl/Range;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 565
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfImages()I
    .registers 2

    .line 2344
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRow(I)[Ljxl/Cell;
    .registers 8

    .line 501
    iget v0, p0, Ljxl/write/biff/WritableSheetImpl;->numColumns:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ltz v0, :cond_1b

    if-nez v3, :cond_1b

    .line 504
    invoke-virtual {p0, v0, p1}, Ljxl/write/biff/WritableSheetImpl;->getCell(II)Ljxl/Cell;

    move-result-object v4

    invoke-interface {v4}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v4

    sget-object v5, Ljxl/CellType;->EMPTY:Ljxl/CellType;

    if-eq v4, v5, :cond_18

    const/4 v3, 0x1

    goto :goto_6

    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1b
    add-int/lit8 v1, v0, 0x1

    .line 515
    new-array v1, v1, [Ljxl/Cell;

    :goto_1f
    if-gt v2, v0, :cond_2a

    .line 519
    invoke-virtual {p0, v2, p1}, Ljxl/write/biff/WritableSheetImpl;->getCell(II)Ljxl/Cell;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_2a
    return-object v1
.end method

.method public getRowHeight(I)I
    .registers 2

    .line 2204
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableSheetImpl;->getRowView(I)Ljxl/CellView;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/CellView;->getDimension()I

    move-result p1

    return p1
.end method

.method getRowInfo(I)Ljxl/write/biff/RowRecord;
    .registers 4

    if-ltz p1, :cond_b

    .line 1103
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    array-length v1, v0

    if-le p1, v1, :cond_8

    goto :goto_b

    .line 1108
    :cond_8
    aget-object p1, v0, p1

    return-object p1

    :cond_b
    :goto_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRowPageBreaks()[I
    .registers 5

    .line 2446
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 2448
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 2450
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_24
    return-object v0
.end method

.method getRowRecord(I)Ljxl/write/biff/RowRecord;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation

    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_2b

    .line 1076
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    array-length v1, v0

    if-lt p1, v1, :cond_1b

    .line 1079
    array-length v1, v0

    add-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Ljxl/write/biff/RowRecord;

    iput-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    .line 1080
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1084
    :cond_1b
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v0, v0, p1

    if-nez v0, :cond_2a

    .line 1088
    new-instance v0, Ljxl/write/biff/RowRecord;

    invoke-direct {v0, p1}, Ljxl/write/biff/RowRecord;-><init>(I)V

    .line 1089
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    aput-object v0, v1, p1

    :cond_2a
    return-object v0

    .line 1070
    :cond_2b
    new-instance p1, Ljxl/write/biff/RowsExceededException;

    invoke-direct {p1}, Ljxl/write/biff/RowsExceededException;-><init>()V

    throw p1
.end method

.method public getRowView(I)Ljxl/CellView;
    .registers 4

    .line 2226
    new-instance v0, Ljxl/CellView;

    invoke-direct {v0}, Ljxl/CellView;-><init>()V

    .line 2230
    :try_start_5
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableSheetImpl;->getRowRecord(I)Ljxl/write/biff/RowRecord;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 2232
    invoke-virtual {p1}, Ljxl/write/biff/RowRecord;->isDefaultHeight()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_2c

    .line 2237
    :cond_12
    invoke-virtual {p1}, Ljxl/write/biff/RowRecord;->isCollapsed()Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 p1, 0x1

    .line 2239
    invoke-virtual {v0, p1}, Ljxl/CellView;->setHidden(Z)V

    goto :goto_3e

    .line 2243
    :cond_1d
    invoke-virtual {p1}, Ljxl/write/biff/RowRecord;->getRowHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/CellView;->setDimension(I)V

    .line 2244
    invoke-virtual {p1}, Ljxl/write/biff/RowRecord;->getRowHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljxl/CellView;->setSize(I)V

    goto :goto_3e

    .line 2234
    :cond_2c
    :goto_2c
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {p1}, Ljxl/SheetSettings;->getDefaultRowHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljxl/CellView;->setDimension(I)V

    .line 2235
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {p1}, Ljxl/SheetSettings;->getDefaultRowHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljxl/CellView;->setSize(I)V
    :try_end_3e
    .catch Ljxl/write/biff/RowsExceededException; {:try_start_5 .. :try_end_3e} :catch_3f

    :goto_3e
    return-object v0

    .line 2251
    :catch_3f
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {p1}, Ljxl/SheetSettings;->getDefaultRowHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljxl/CellView;->setDimension(I)V

    .line 2252
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {p1}, Ljxl/SheetSettings;->getDefaultRowHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljxl/CellView;->setSize(I)V

    return-object v0
.end method

.method public getRows()I
    .registers 2

    .line 413
    iget v0, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    return v0
.end method

.method public getSettings()Ljxl/SheetSettings;
    .registers 2

    .line 2015
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    return-object v0
.end method

.method getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;
    .registers 2

    .line 2166
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->workbook:Ljxl/write/biff/WritableWorkbookImpl;

    return-object v0
.end method

.method getWorkbookSettings()Ljxl/WorkbookSettings;
    .registers 2

    .line 2023
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->workbookSettings:Ljxl/WorkbookSettings;

    return-object v0
.end method

.method public getWritableCell(II)Ljxl/write/WritableCell;
    .registers 5

    .line 393
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    array-length v1, v0

    if-ge p2, v1, :cond_10

    aget-object v1, v0, p2

    if-eqz v1, :cond_10

    .line 395
    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Ljxl/write/biff/RowRecord;->getCell(I)Ljxl/write/biff/CellValue;

    move-result-object v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-nez v0, :cond_18

    .line 400
    new-instance v0, Ljxl/biff/EmptyCell;

    invoke-direct {v0, p1, p2}, Ljxl/biff/EmptyCell;-><init>(II)V

    :cond_18
    return-object v0
.end method

.method public getWritableCell(Ljava/lang/String;)Ljxl/write/WritableCell;
    .registers 3

    .line 378
    invoke-static {p1}, Ljxl/biff/CellReferenceHelper;->getColumn(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Ljxl/biff/CellReferenceHelper;->getRow(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ljxl/write/biff/WritableSheetImpl;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object p1

    return-object p1
.end method

.method public getWritableHyperlinks()[Ljxl/write/WritableHyperlink;
    .registers 4

    .line 1754
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljxl/write/WritableHyperlink;

    const/4 v1, 0x0

    .line 1756
    :goto_9
    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 1758
    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/write/WritableHyperlink;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1e
    return-object v0
.end method

.method importSheet(Ljxl/Sheet;)V
    .registers 4

    .line 2574
    new-instance v0, Ljxl/SheetSettings;

    invoke-interface {p1}, Ljxl/Sheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljxl/SheetSettings;-><init>(Ljxl/SheetSettings;Ljxl/Sheet;)V

    iput-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    .line 2576
    new-instance v0, Ljxl/write/biff/SheetCopier;

    invoke-direct {v0, p1, p0}, Ljxl/write/biff/SheetCopier;-><init>(Ljxl/Sheet;Ljxl/write/WritableSheet;)V

    .line 2577
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setColumnFormats(Ljava/util/TreeSet;)V

    .line 2578
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setFormatRecords(Ljxl/biff/FormattingRecords;)V

    .line 2579
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setHyperlinks(Ljava/util/ArrayList;)V

    .line 2580
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->mergedCells:Ljxl/write/biff/MergedCells;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setMergedCells(Ljxl/write/biff/MergedCells;)V

    .line 2581
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setRowBreaks(Ljava/util/ArrayList;)V

    .line 2582
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setColumnBreaks(Ljava/util/ArrayList;)V

    .line 2583
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setSheetWriter(Ljxl/write/biff/SheetWriter;)V

    .line 2584
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setDrawings(Ljava/util/ArrayList;)V

    .line 2585
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SheetCopier;->setImages(Ljava/util/ArrayList;)V

    .line 2587
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->importSheet()V

    .line 2589
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getDataValidation()Ljxl/biff/DataValidation;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->dataValidation:Ljxl/biff/DataValidation;

    .line 2590
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getComboBox()Ljxl/biff/drawing/ComboBox;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->comboBox:Ljxl/biff/drawing/ComboBox;

    .line 2591
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getPLSRecord()Ljxl/write/biff/PLSRecord;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->plsRecord:Ljxl/write/biff/PLSRecord;

    .line 2592
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->isChartOnly()Z

    move-result p1

    iput-boolean p1, p0, Ljxl/write/biff/WritableSheetImpl;->chartOnly:Z

    .line 2593
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getButtonPropertySet()Ljxl/write/biff/ButtonPropertySetRecord;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    .line 2594
    invoke-virtual {v0}, Ljxl/write/biff/SheetCopier;->getRows()I

    move-result p1

    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    return-void
.end method

.method public insertColumn(I)V
    .registers 6

    if-ltz p1, :cond_e6

    .line 666
    iget v0, p0, Ljxl/write/biff/WritableSheetImpl;->numColumns:I

    if-lt p1, v0, :cond_8

    goto/16 :goto_e6

    :cond_8
    const/4 v0, 0x0

    .line 672
    :goto_9
    iget v1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    if-ge v0, v1, :cond_1b

    .line 674
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v2, v1, v0

    if-eqz v2, :cond_18

    .line 676
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljxl/write/biff/RowRecord;->insertColumn(I)V

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 682
    :cond_1b
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 683
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 685
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/write/biff/HyperlinkRecord;

    .line 686
    invoke-virtual {v1, p1}, Ljxl/write/biff/HyperlinkRecord;->insertColumn(I)V

    goto :goto_21

    .line 690
    :cond_31
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 691
    :cond_37
    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 693
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/write/biff/ColumnInfoRecord;

    .line 695
    invoke-virtual {v1}, Ljxl/write/biff/ColumnInfoRecord;->getColumn()I

    move-result v2

    if-lt v2, p1, :cond_37

    .line 697
    invoke-virtual {v1}, Ljxl/write/biff/ColumnInfoRecord;->incrementColumn()V

    goto :goto_37

    .line 702
    :cond_4d
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->autosizedColumns:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-lez v0, :cond_87

    .line 704
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 705
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->autosizedColumns:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 706
    :goto_60
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_85

    .line 708
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 710
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, p1, :cond_81

    .line 712
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_60

    .line 716
    :cond_81
    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_60

    .line 719
    :cond_85
    iput-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->autosizedColumns:Ljava/util/TreeSet;

    .line 723
    :cond_87
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->dataValidation:Ljxl/biff/DataValidation;

    if-eqz v0, :cond_8e

    .line 725
    invoke-virtual {v0, p1}, Ljxl/biff/DataValidation;->insertColumn(I)V

    .line 729
    :cond_8e
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->mergedCells:Ljxl/write/biff/MergedCells;

    invoke-virtual {v0, p1}, Ljxl/write/biff/MergedCells;->insertColumn(I)V

    .line 732
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 733
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 734
    :goto_9e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 736
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, p1, :cond_b2

    add-int/lit8 v2, v2, 0x1

    .line 742
    :cond_b2
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9e

    .line 744
    :cond_bb
    iput-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    .line 747
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->conditionalFormats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 749
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/ConditionalFormat;

    .line 750
    invoke-virtual {v1, p1}, Ljxl/biff/ConditionalFormat;->insertColumn(I)V

    goto :goto_c3

    .line 754
    :cond_d3
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getFormulaAdjust()Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 756
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->workbook:Ljxl/write/biff/WritableWorkbookImpl;

    invoke-virtual {v0, p0, p1}, Ljxl/write/biff/WritableWorkbookImpl;->columnInserted(Ljxl/write/biff/WritableSheetImpl;I)V

    .line 759
    :cond_e0
    iget p1, p0, Ljxl/write/biff/WritableSheetImpl;->numColumns:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->numColumns:I

    :cond_e6
    :goto_e6
    return-void
.end method

.method public insertRow(I)V
    .registers 6

    if-ltz p1, :cond_b1

    .line 576
    iget v0, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    if-lt p1, v0, :cond_8

    goto/16 :goto_b1

    .line 582
    :cond_8
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    .line 584
    array-length v2, v1

    if-ne v0, v2, :cond_15

    .line 586
    array-length v0, v1

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [Ljxl/write/biff/RowRecord;

    iput-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    goto :goto_1a

    .line 590
    :cond_15
    array-length v0, v1

    new-array v0, v0, [Ljxl/write/biff/RowRecord;

    iput-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    .line 594
    :goto_1a
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 597
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 600
    :goto_2a
    iget v0, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    if-gt v2, v0, :cond_3c

    .line 602
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v1, v0, v2

    if-eqz v1, :cond_39

    .line 604
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljxl/write/biff/RowRecord;->incrementRow()V

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 610
    :cond_3c
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 611
    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 613
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/write/biff/HyperlinkRecord;

    .line 614
    invoke-virtual {v1, p1}, Ljxl/write/biff/HyperlinkRecord;->insertRow(I)V

    goto :goto_42

    .line 618
    :cond_52
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->dataValidation:Ljxl/biff/DataValidation;

    if-eqz v0, :cond_59

    .line 620
    invoke-virtual {v0, p1}, Ljxl/biff/DataValidation;->insertRow(I)V

    .line 624
    :cond_59
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->mergedCells:Ljxl/write/biff/MergedCells;

    invoke-virtual {v0, p1}, Ljxl/write/biff/MergedCells;->insertRow(I)V

    .line 627
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 628
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 629
    :goto_69
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_86

    .line 631
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, p1, :cond_7d

    add-int/lit8 v2, v2, 0x1

    .line 637
    :cond_7d
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_69

    .line 639
    :cond_86
    iput-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    .line 642
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->conditionalFormats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 644
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/ConditionalFormat;

    .line 645
    invoke-virtual {v1, p1}, Ljxl/biff/ConditionalFormat;->insertRow(I)V

    goto :goto_8e

    .line 649
    :cond_9e
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getFormulaAdjust()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 651
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->workbook:Ljxl/write/biff/WritableWorkbookImpl;

    invoke-virtual {v0, p0, p1}, Ljxl/write/biff/WritableWorkbookImpl;->rowInserted(Ljxl/write/biff/WritableSheetImpl;I)V

    .line 655
    :cond_ab
    iget p1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    :cond_b1
    :goto_b1
    return-void
.end method

.method isChartOnly()Z
    .registers 2

    .line 2214
    iget-boolean v0, p0, Ljxl/write/biff/WritableSheetImpl;->chartOnly:Z

    return v0
.end method

.method public isHidden()Z
    .registers 2

    .line 1190
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/SheetSettings;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isProtected()Z
    .registers 2

    .line 1717
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/SheetSettings;->isProtected()Z

    move-result v0

    return v0
.end method

.method public mergeCells(IIII)Ljxl/Range;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;,
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation

    if-lt p3, p1, :cond_4

    if-ge p4, p2, :cond_b

    .line 1903
    :cond_4
    sget-object v0, Ljxl/write/biff/WritableSheetImpl;->logger:Lcommon/Logger;

    const-string v1, "Cannot merge cells - top left and bottom right incorrectly specified"

    invoke-virtual {v0, v1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 1908
    :cond_b
    iget v0, p0, Ljxl/write/biff/WritableSheetImpl;->numColumns:I

    if-ge p3, v0, :cond_13

    iget v0, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    if-lt p4, v0, :cond_1b

    .line 1910
    :cond_13
    new-instance v0, Ljxl/write/Blank;

    invoke-direct {v0, p3, p4}, Ljxl/write/Blank;-><init>(II)V

    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    .line 1913
    :cond_1b
    new-instance v0, Ljxl/biff/SheetRangeImpl;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/Sheet;IIII)V

    .line 1914
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->mergedCells:Ljxl/write/biff/MergedCells;

    invoke-virtual {p1, v0}, Ljxl/write/biff/MergedCells;->add(Ljxl/Range;)V

    return-object v0
.end method

.method rationalize(Ljxl/biff/IndexMapping;Ljxl/biff/IndexMapping;Ljxl/biff/IndexMapping;)V
    .registers 8

    .line 2137
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2139
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/write/biff/ColumnInfoRecord;

    .line 2140
    invoke-virtual {v1, p1}, Ljxl/write/biff/ColumnInfoRecord;->rationalize(Ljxl/biff/IndexMapping;)V

    goto :goto_6

    :cond_16
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2144
    :goto_18
    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    array-length v3, v2

    if-ge v1, v3, :cond_29

    .line 2146
    aget-object v3, v2, v1

    if-eqz v3, :cond_26

    .line 2148
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljxl/write/biff/RowRecord;->rationalize(Ljxl/biff/IndexMapping;)V

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 2153
    :cond_29
    invoke-direct {p0}, Ljxl/write/biff/WritableSheetImpl;->getCharts()[Ljxl/biff/drawing/Chart;

    move-result-object v1

    .line 2154
    :goto_2d
    array-length v2, v1

    if-ge v0, v2, :cond_38

    .line 2156
    aget-object v2, v1, v0

    invoke-virtual {v2, p1, p2, p3}, Ljxl/biff/drawing/Chart;->rationalize(Ljxl/biff/IndexMapping;Ljxl/biff/IndexMapping;Ljxl/biff/IndexMapping;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_38
    return-void
.end method

.method public removeColumn(I)V
    .registers 6

    if-ltz p1, :cond_115

    .line 770
    iget v0, p0, Ljxl/write/biff/WritableSheetImpl;->numColumns:I

    if-lt p1, v0, :cond_8

    goto/16 :goto_115

    :cond_8
    const/4 v0, 0x0

    .line 776
    :goto_9
    iget v1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    if-ge v0, v1, :cond_1b

    .line 778
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v2, v1, v0

    if-eqz v2, :cond_18

    .line 780
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljxl/write/biff/RowRecord;->removeColumn(I)V

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 786
    :cond_1b
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 787
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 789
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/write/biff/HyperlinkRecord;

    .line 791
    invoke-virtual {v1}, Ljxl/write/biff/HyperlinkRecord;->getColumn()I

    move-result v2

    if-ne v2, p1, :cond_43

    invoke-virtual {v1}, Ljxl/write/biff/HyperlinkRecord;->getLastColumn()I

    move-result v2

    if-ne v2, p1, :cond_43

    .line 796
    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_21

    .line 800
    :cond_43
    invoke-virtual {v1, p1}, Ljxl/write/biff/HyperlinkRecord;->removeColumn(I)V

    goto :goto_21

    .line 805
    :cond_47
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->dataValidation:Ljxl/biff/DataValidation;

    if-eqz v0, :cond_4e

    .line 807
    invoke-virtual {v0, p1}, Ljxl/biff/DataValidation;->removeColumn(I)V

    .line 811
    :cond_4e
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->mergedCells:Ljxl/write/biff/MergedCells;

    invoke-virtual {v0, p1}, Ljxl/write/biff/MergedCells;->removeColumn(I)V

    .line 814
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 815
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 816
    :cond_5e
    :goto_5e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 818
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p1, :cond_5e

    if-le v2, p1, :cond_74

    add-int/lit8 v2, v2, -0x1

    .line 827
    :cond_74
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 831
    :cond_7d
    iput-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    .line 835
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 837
    :cond_86
    :goto_86
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 839
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/write/biff/ColumnInfoRecord;

    .line 841
    invoke-virtual {v2}, Ljxl/write/biff/ColumnInfoRecord;->getColumn()I

    move-result v3

    if-ne v3, p1, :cond_9a

    move-object v1, v2

    goto :goto_86

    .line 845
    :cond_9a
    invoke-virtual {v2}, Ljxl/write/biff/ColumnInfoRecord;->getColumn()I

    move-result v3

    if-le v3, p1, :cond_86

    .line 847
    invoke-virtual {v2}, Ljxl/write/biff/ColumnInfoRecord;->decrementColumn()V

    goto :goto_86

    :cond_a4
    if-eqz v1, :cond_ab

    .line 853
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 857
    :cond_ab
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->autosizedColumns:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-lez v0, :cond_ec

    .line 859
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 860
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->autosizedColumns:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 861
    :goto_be
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 863
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 865
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_d1

    goto :goto_be

    .line 869
    :cond_d1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, p1, :cond_e6

    .line 871
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_be

    .line 875
    :cond_e6
    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_be

    .line 878
    :cond_ea
    iput-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->autosizedColumns:Ljava/util/TreeSet;

    .line 882
    :cond_ec
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->conditionalFormats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_102

    .line 884
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/ConditionalFormat;

    .line 885
    invoke-virtual {v1, p1}, Ljxl/biff/ConditionalFormat;->removeColumn(I)V

    goto :goto_f2

    .line 889
    :cond_102
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getFormulaAdjust()Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 891
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->workbook:Ljxl/write/biff/WritableWorkbookImpl;

    invoke-virtual {v0, p0, p1}, Ljxl/write/biff/WritableWorkbookImpl;->columnRemoved(Ljxl/write/biff/WritableSheetImpl;I)V

    .line 894
    :cond_10f
    iget p1, p0, Ljxl/write/biff/WritableSheetImpl;->numColumns:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->numColumns:I

    :cond_115
    :goto_115
    return-void
.end method

.method removeDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V
    .registers 4

    .line 2432
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2433
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2434
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    .line 2435
    iput-boolean v1, p0, Ljxl/write/biff/WritableSheetImpl;->drawingsModified:Z

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 2436
    :goto_19
    invoke-static {v1}, Lcommon/Assert;->verify(Z)V

    return-void
.end method

.method public removeHyperlink(Ljxl/write/WritableHyperlink;)V
    .registers 3

    const/4 v0, 0x0

    .line 1778
    invoke-virtual {p0, p1, v0}, Ljxl/write/biff/WritableSheetImpl;->removeHyperlink(Ljxl/write/WritableHyperlink;Z)V

    return-void
.end method

.method public removeHyperlink(Ljxl/write/WritableHyperlink;Z)V
    .registers 5

    .line 1798
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-nez p2, :cond_33

    .line 1804
    iget-object p2, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    array-length p2, p2

    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getRow()I

    move-result v0

    if-le p2, v0, :cond_20

    iget-object p2, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getRow()I

    move-result v0

    aget-object p2, p2, v0

    if-eqz p2, :cond_20

    const/4 p2, 0x1

    goto :goto_21

    :cond_20
    const/4 p2, 0x0

    :goto_21
    invoke-static {p2}, Lcommon/Assert;->verify(Z)V

    .line 1805
    iget-object p2, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getRow()I

    move-result v0

    aget-object p2, p2, v0

    invoke-virtual {p1}, Ljxl/write/WritableHyperlink;->getColumn()I

    move-result p1

    invoke-virtual {p2, p1}, Ljxl/write/biff/RowRecord;->removeCell(I)V

    :cond_33
    return-void
.end method

.method public removeImage(Ljxl/write/WritableImage;)V
    .registers 3

    .line 2377
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2378
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 2379
    iput-boolean v0, p0, Ljxl/write/biff/WritableSheetImpl;->drawingsModified:Z

    .line 2380
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->workbook:Ljxl/write/biff/WritableWorkbookImpl;

    invoke-virtual {v0, p1}, Ljxl/write/biff/WritableWorkbookImpl;->removeDrawing(Ljxl/biff/drawing/Drawing;)V

    return-void
.end method

.method public removeRow(I)V
    .registers 6

    if-ltz p1, :cond_b7

    .line 905
    iget v0, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    if-lt p1, v0, :cond_8

    goto/16 :goto_b7

    .line 911
    :cond_8
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    .line 913
    array-length v1, v0

    new-array v1, v1, [Ljxl/write/biff/RowRecord;

    iput-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    const/4 v2, 0x0

    .line 916
    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, p1, 0x1

    .line 919
    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    iget v3, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    sub-int/2addr v3, v1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, p1

    .line 922
    :goto_1e
    iget v1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    if-ge v0, v1, :cond_30

    .line 924
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v2, v1, v0

    if-eqz v2, :cond_2d

    .line 926
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljxl/write/biff/RowRecord;->decrementRow()V

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 932
    :cond_30
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 933
    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 935
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/write/biff/HyperlinkRecord;

    .line 937
    invoke-virtual {v1}, Ljxl/write/biff/HyperlinkRecord;->getRow()I

    move-result v2

    if-ne v2, p1, :cond_52

    invoke-virtual {v1}, Ljxl/write/biff/HyperlinkRecord;->getLastRow()I

    move-result v2

    if-ne v2, p1, :cond_52

    .line 942
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_36

    .line 946
    :cond_52
    invoke-virtual {v1, p1}, Ljxl/write/biff/HyperlinkRecord;->removeRow(I)V

    goto :goto_36

    .line 951
    :cond_56
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->dataValidation:Ljxl/biff/DataValidation;

    if-eqz v0, :cond_5d

    .line 953
    invoke-virtual {v0, p1}, Ljxl/biff/DataValidation;->removeRow(I)V

    .line 957
    :cond_5d
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->mergedCells:Ljxl/write/biff/MergedCells;

    invoke-virtual {v0, p1}, Ljxl/write/biff/MergedCells;->removeRow(I)V

    .line 960
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 961
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 962
    :cond_6d
    :goto_6d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 964
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p1, :cond_6d

    if-le v2, p1, :cond_83

    add-int/lit8 v2, v2, -0x1

    .line 973
    :cond_83
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    .line 977
    :cond_8c
    iput-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    .line 980
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->conditionalFormats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_94
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 982
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/ConditionalFormat;

    .line 983
    invoke-virtual {v1, p1}, Ljxl/biff/ConditionalFormat;->removeRow(I)V

    goto :goto_94

    .line 987
    :cond_a4
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v0}, Ljxl/WorkbookSettings;->getFormulaAdjust()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 989
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->workbook:Ljxl/write/biff/WritableWorkbookImpl;

    invoke-virtual {v0, p0, p1}, Ljxl/write/biff/WritableWorkbookImpl;->rowRemoved(Ljxl/write/biff/WritableSheetImpl;I)V

    .line 1005
    :cond_b1
    iget p1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    :cond_b7
    :goto_b7
    return-void
.end method

.method public setColumnView(II)V
    .registers 4

    .line 1201
    new-instance v0, Ljxl/CellView;

    invoke-direct {v0}, Ljxl/CellView;-><init>()V

    mul-int/lit16 p2, p2, 0x100

    .line 1202
    invoke-virtual {v0, p2}, Ljxl/CellView;->setSize(I)V

    .line 1203
    invoke-virtual {p0, p1, v0}, Ljxl/write/biff/WritableSheetImpl;->setColumnView(ILjxl/CellView;)V

    return-void
.end method

.method public setColumnView(IILjxl/format/CellFormat;)V
    .registers 5

    .line 1216
    new-instance v0, Ljxl/CellView;

    invoke-direct {v0}, Ljxl/CellView;-><init>()V

    mul-int/lit16 p2, p2, 0x100

    .line 1217
    invoke-virtual {v0, p2}, Ljxl/CellView;->setSize(I)V

    .line 1218
    invoke-virtual {v0, p3}, Ljxl/CellView;->setFormat(Ljxl/format/CellFormat;)V

    .line 1219
    invoke-virtual {p0, p1, v0}, Ljxl/write/biff/WritableSheetImpl;->setColumnView(ILjxl/CellView;)V

    return-void
.end method

.method public setColumnView(ILjxl/CellView;)V
    .registers 7

    .line 1230
    invoke-virtual {p2}, Ljxl/CellView;->getFormat()Ljxl/format/CellFormat;

    move-result-object v0

    check-cast v0, Ljxl/biff/XFRecord;

    if-nez v0, :cond_14

    .line 1233
    invoke-virtual {p0}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/write/biff/WritableWorkbookImpl;->getStyles()Ljxl/write/biff/Styles;

    move-result-object v0

    .line 1234
    invoke-virtual {v0}, Ljxl/write/biff/Styles;->getNormalStyle()Ljxl/write/WritableCellFormat;

    move-result-object v0

    .line 1239
    :cond_14
    :try_start_14
    invoke-virtual {v0}, Ljxl/biff/XFRecord;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1241
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v1, v0}, Ljxl/biff/FormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 1244
    :cond_1f
    invoke-virtual {p2}, Ljxl/CellView;->depUsed()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p2}, Ljxl/CellView;->getDimension()I

    move-result v1

    mul-int/lit16 v1, v1, 0x100

    goto :goto_30

    :cond_2c
    invoke-virtual {p2}, Ljxl/CellView;->getSize()I

    move-result v1

    .line 1246
    :goto_30
    invoke-virtual {p2}, Ljxl/CellView;->isAutosize()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1248
    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->autosizedColumns:Ljava/util/TreeSet;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1251
    :cond_40
    new-instance v2, Ljxl/write/biff/ColumnInfoRecord;

    invoke-direct {v2, p1, v1, v0}, Ljxl/write/biff/ColumnInfoRecord;-><init>(IILjxl/biff/XFRecord;)V

    .line 1255
    invoke-virtual {p2}, Ljxl/CellView;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_4f

    const/4 v0, 0x1

    .line 1257
    invoke-virtual {v2, v0}, Ljxl/write/biff/ColumnInfoRecord;->setHidden(Z)V

    .line 1260
    :cond_4f
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 1262
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    .line 1266
    :cond_5d
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 1267
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_67
    .catch Ljxl/biff/NumFormatRecordsException; {:try_start_14 .. :try_end_67} :catch_68

    goto :goto_8a

    :catch_68
    nop

    .line 1272
    sget-object v0, Ljxl/write/biff/WritableSheetImpl;->logger:Lcommon/Logger;

    const-string v1, "Maximum number of format records exceeded.  Using default format."

    invoke-virtual {v0, v1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 1275
    new-instance v0, Ljxl/write/biff/ColumnInfoRecord;

    invoke-virtual {p2}, Ljxl/CellView;->getDimension()I

    move-result p2

    mul-int/lit16 p2, p2, 0x100

    sget-object v1, Ljxl/write/WritableWorkbook;->NORMAL_STYLE:Ljxl/write/WritableCellFormat;

    invoke-direct {v0, p1, p2, v1}, Ljxl/write/biff/ColumnInfoRecord;-><init>(IILjxl/biff/XFRecord;)V

    .line 1277
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8a

    .line 1279
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_8a
    :goto_8a
    return-void
.end method

.method setComboBox(Ljxl/biff/drawing/ComboBox;)V
    .registers 2

    .line 2499
    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->comboBox:Ljxl/biff/drawing/ComboBox;

    return-void
.end method

.method public setFooter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1957
    new-instance v0, Ljxl/HeaderFooter;

    invoke-direct {v0}, Ljxl/HeaderFooter;-><init>()V

    .line 1958
    invoke-virtual {v0}, Ljxl/HeaderFooter;->getLeft()Ljxl/HeaderFooter$Contents;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljxl/HeaderFooter$Contents;->append(Ljava/lang/String;)V

    .line 1959
    invoke-virtual {v0}, Ljxl/HeaderFooter;->getCentre()Ljxl/HeaderFooter$Contents;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljxl/HeaderFooter$Contents;->append(Ljava/lang/String;)V

    .line 1960
    invoke-virtual {v0}, Ljxl/HeaderFooter;->getRight()Ljxl/HeaderFooter$Contents;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljxl/HeaderFooter$Contents;->append(Ljava/lang/String;)V

    .line 1961
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {p1, v0}, Ljxl/SheetSettings;->setFooter(Ljxl/HeaderFooter;)V

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1940
    new-instance v0, Ljxl/HeaderFooter;

    invoke-direct {v0}, Ljxl/HeaderFooter;-><init>()V

    .line 1941
    invoke-virtual {v0}, Ljxl/HeaderFooter;->getLeft()Ljxl/HeaderFooter$Contents;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljxl/HeaderFooter$Contents;->append(Ljava/lang/String;)V

    .line 1942
    invoke-virtual {v0}, Ljxl/HeaderFooter;->getCentre()Ljxl/HeaderFooter$Contents;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljxl/HeaderFooter$Contents;->append(Ljava/lang/String;)V

    .line 1943
    invoke-virtual {v0}, Ljxl/HeaderFooter;->getRight()Ljxl/HeaderFooter$Contents;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljxl/HeaderFooter$Contents;->append(Ljava/lang/String;)V

    .line 1944
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {p1, v0}, Ljxl/SheetSettings;->setHeader(Ljxl/HeaderFooter;)V

    return-void
.end method

.method public setHidden(Z)V
    .registers 3

    .line 1159
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0, p1}, Ljxl/SheetSettings;->setHidden(Z)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 1148
    iput-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->name:Ljava/lang/String;

    return-void
.end method

.method public setPageSetup(Ljxl/format/PageOrientation;)V
    .registers 3

    .line 1972
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0, p1}, Ljxl/SheetSettings;->setOrientation(Ljxl/format/PageOrientation;)V

    return-void
.end method

.method public setPageSetup(Ljxl/format/PageOrientation;DD)V
    .registers 7

    .line 1985
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0, p1}, Ljxl/SheetSettings;->setOrientation(Ljxl/format/PageOrientation;)V

    .line 1986
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {p1, p2, p3}, Ljxl/SheetSettings;->setHeaderMargin(D)V

    .line 1987
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {p1, p4, p5}, Ljxl/SheetSettings;->setFooterMargin(D)V

    return-void
.end method

.method public setPageSetup(Ljxl/format/PageOrientation;Ljxl/format/PaperSize;DD)V
    .registers 8

    .line 2002
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0, p2}, Ljxl/SheetSettings;->setPaperSize(Ljxl/format/PaperSize;)V

    .line 2003
    iget-object p2, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {p2, p1}, Ljxl/SheetSettings;->setOrientation(Ljxl/format/PageOrientation;)V

    .line 2004
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {p1, p3, p4}, Ljxl/SheetSettings;->setHeaderMargin(D)V

    .line 2005
    iget-object p1, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {p1, p5, p6}, Ljxl/SheetSettings;->setFooterMargin(D)V

    return-void
.end method

.method public setProtected(Z)V
    .registers 3

    .line 1170
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0, p1}, Ljxl/SheetSettings;->setProtected(Z)V

    return-void
.end method

.method public setRowView(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation

    .line 1295
    new-instance v0, Ljxl/CellView;

    invoke-direct {v0}, Ljxl/CellView;-><init>()V

    .line 1296
    invoke-virtual {v0, p2}, Ljxl/CellView;->setSize(I)V

    const/4 p2, 0x0

    .line 1297
    invoke-virtual {v0, p2}, Ljxl/CellView;->setHidden(Z)V

    .line 1298
    invoke-virtual {p0, p1, v0}, Ljxl/write/biff/WritableSheetImpl;->setRowView(ILjxl/CellView;)V

    return-void
.end method

.method public setRowView(IIZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation

    .line 1331
    new-instance v0, Ljxl/CellView;

    invoke-direct {v0}, Ljxl/CellView;-><init>()V

    .line 1332
    invoke-virtual {v0, p2}, Ljxl/CellView;->setSize(I)V

    .line 1333
    invoke-virtual {v0, p3}, Ljxl/CellView;->setHidden(Z)V

    .line 1334
    invoke-virtual {p0, p1, v0}, Ljxl/write/biff/WritableSheetImpl;->setRowView(ILjxl/CellView;)V

    return-void
.end method

.method public setRowView(ILjxl/CellView;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation

    .line 1346
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableSheetImpl;->getRowRecord(I)Ljxl/write/biff/RowRecord;

    move-result-object v0

    .line 1348
    invoke-virtual {p2}, Ljxl/CellView;->getFormat()Ljxl/format/CellFormat;

    move-result-object v1

    check-cast v1, Ljxl/biff/XFRecord;

    if-eqz v1, :cond_20

    .line 1354
    :try_start_c
    invoke-virtual {v1}, Ljxl/biff/XFRecord;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_20

    .line 1356
    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v2, v1}, Ljxl/biff/FormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V
    :try_end_17
    .catch Ljxl/biff/NumFormatRecordsException; {:try_start_c .. :try_end_17} :catch_18

    goto :goto_20

    .line 1362
    :catch_18
    sget-object v1, Ljxl/write/biff/WritableSheetImpl;->logger:Lcommon/Logger;

    const-string v2, "Maximum number of format records exceeded.  Using default format."

    invoke-virtual {v1, v2}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 1368
    :cond_20
    :goto_20
    invoke-virtual {p2}, Ljxl/CellView;->getSize()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljxl/CellView;->isHidden()Z

    move-result p2

    invoke-virtual {v0, v2, v3, p2, v1}, Ljxl/write/biff/RowRecord;->setRowDetails(IZZLjxl/biff/XFRecord;)V

    .line 1370
    iget p2, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    add-int/lit8 p1, p1, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ljxl/write/biff/WritableSheetImpl;->numRows:I

    return-void
.end method

.method public setRowView(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation

    .line 1312
    new-instance v0, Ljxl/CellView;

    invoke-direct {v0}, Ljxl/CellView;-><init>()V

    .line 1313
    invoke-virtual {v0, p2}, Ljxl/CellView;->setHidden(Z)V

    .line 1314
    invoke-virtual {p0, p1, v0}, Ljxl/write/biff/WritableSheetImpl;->setRowView(ILjxl/CellView;)V

    return-void
.end method

.method public setSelected()V
    .registers 2

    .line 1179
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v0}, Ljxl/SheetSettings;->setSelected()V

    return-void
.end method

.method public unmergeCells(Ljxl/Range;)V
    .registers 3

    .line 1927
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->mergedCells:Ljxl/write/biff/MergedCells;

    invoke-virtual {v0, p1}, Ljxl/write/biff/MergedCells;->unmergeCells(Ljxl/Range;)V

    return-void
.end method

.method public write()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1382
    iget-boolean v0, p0, Ljxl/write/biff/WritableSheetImpl;->drawingsModified:Z

    .line 1383
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->workbook:Ljxl/write/biff/WritableWorkbookImpl;

    invoke-virtual {v1}, Ljxl/write/biff/WritableWorkbookImpl;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 1385
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->workbook:Ljxl/write/biff/WritableWorkbookImpl;

    invoke-virtual {v1}, Ljxl/write/biff/WritableWorkbookImpl;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/biff/drawing/DrawingGroup;->hasDrawingsOmitted()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1388
    :cond_15
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->autosizedColumns:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    if-lez v1, :cond_20

    .line 1390
    invoke-direct {p0}, Ljxl/write/biff/WritableSheetImpl;->autosizeColumns()V

    .line 1393
    :cond_20
    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v3, p0, Ljxl/write/biff/WritableSheetImpl;->rows:[Ljxl/write/biff/RowRecord;

    iget-object v4, p0, Ljxl/write/biff/WritableSheetImpl;->rowBreaks:Ljava/util/ArrayList;

    iget-object v5, p0, Ljxl/write/biff/WritableSheetImpl;->columnBreaks:Ljava/util/ArrayList;

    iget-object v6, p0, Ljxl/write/biff/WritableSheetImpl;->hyperlinks:Ljava/util/ArrayList;

    iget-object v7, p0, Ljxl/write/biff/WritableSheetImpl;->mergedCells:Ljxl/write/biff/MergedCells;

    iget-object v8, p0, Ljxl/write/biff/WritableSheetImpl;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual/range {v2 .. v8}, Ljxl/write/biff/SheetWriter;->setWriteData([Ljxl/write/biff/RowRecord;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljxl/write/biff/MergedCells;Ljava/util/TreeSet;)V

    .line 1399
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {p0}, Ljxl/write/biff/WritableSheetImpl;->getRows()I

    move-result v2

    invoke-virtual {p0}, Ljxl/write/biff/WritableSheetImpl;->getColumns()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljxl/write/biff/SheetWriter;->setDimensions(II)V

    .line 1400
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1, v2}, Ljxl/write/biff/SheetWriter;->setSettings(Ljxl/SheetSettings;)V

    .line 1401
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->plsRecord:Ljxl/write/biff/PLSRecord;

    invoke-virtual {v1, v2}, Ljxl/write/biff/SheetWriter;->setPLS(Ljxl/write/biff/PLSRecord;)V

    .line 1402
    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljxl/write/biff/SheetWriter;->setDrawings(Ljava/util/ArrayList;Z)V

    .line 1403
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    invoke-virtual {v0, v1}, Ljxl/write/biff/SheetWriter;->setButtonPropertySet(Ljxl/write/biff/ButtonPropertySetRecord;)V

    .line 1404
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->dataValidation:Ljxl/biff/DataValidation;

    iget-object v2, p0, Ljxl/write/biff/WritableSheetImpl;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljxl/write/biff/SheetWriter;->setDataValidation(Ljxl/biff/DataValidation;Ljava/util/ArrayList;)V

    .line 1405
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->conditionalFormats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljxl/write/biff/SheetWriter;->setConditionalFormats(Ljava/util/ArrayList;)V

    .line 1406
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v1, p0, Ljxl/write/biff/WritableSheetImpl;->autoFilter:Ljxl/biff/AutoFilter;

    invoke-virtual {v0, v1}, Ljxl/write/biff/SheetWriter;->setAutoFilter(Ljxl/biff/AutoFilter;)V

    .line 1408
    iget-object v0, p0, Ljxl/write/biff/WritableSheetImpl;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {v0}, Ljxl/write/biff/SheetWriter;->write()V

    return-void
.end method
