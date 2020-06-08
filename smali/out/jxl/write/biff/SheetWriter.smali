.class final Ljxl/write/biff/SheetWriter;
.super Ljava/lang/Object;
.source "SheetWriter.java"


# static fields
.field static synthetic class$jxl$write$biff$SheetWriter:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private autoFilter:Ljxl/biff/AutoFilter;

.field private buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

.field private chartOnly:Z

.field private columnBreaks:Ljava/util/ArrayList;

.field private columnFormats:Ljava/util/TreeSet;

.field private conditionalFormats:Ljava/util/ArrayList;

.field private dataValidation:Ljxl/biff/DataValidation;

.field private drawingWriter:Ljxl/biff/drawing/SheetDrawingWriter;

.field private footer:Ljxl/write/biff/FooterRecord;

.field private header:Ljxl/write/biff/HeaderRecord;

.field private hyperlinks:Ljava/util/ArrayList;

.field private mergedCells:Ljxl/write/biff/MergedCells;

.field private numCols:I

.field private numRows:I

.field private outputFile:Ljxl/write/biff/File;

.field private plsRecord:Ljxl/write/biff/PLSRecord;

.field private rowBreaks:Ljava/util/ArrayList;

.field private rows:[Ljxl/write/biff/RowRecord;

.field private settings:Ljxl/SheetSettings;

.field private sheet:Ljxl/write/biff/WritableSheetImpl;

.field private validatedCells:Ljava/util/ArrayList;

.field private workbookSettings:Ljxl/WorkbookSettings;

.field private workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    sget-object v0, Ljxl/write/biff/SheetWriter;->class$jxl$write$biff$SheetWriter:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "jxl.write.biff.SheetWriter"

    invoke-static {v0}, Ljxl/write/biff/SheetWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/SheetWriter;->class$jxl$write$biff$SheetWriter:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/SheetWriter;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/write/biff/File;Ljxl/write/biff/WritableSheetImpl;Ljxl/WorkbookSettings;)V
    .registers 4

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    .line 184
    iput-object p2, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    .line 185
    new-instance p1, Ljxl/biff/WorkspaceInformationRecord;

    invoke-direct {p1}, Ljxl/biff/WorkspaceInformationRecord;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    .line 186
    iput-object p3, p0, Ljxl/write/biff/SheetWriter;->workbookSettings:Ljxl/WorkbookSettings;

    const/4 p1, 0x0

    .line 187
    iput-boolean p1, p0, Ljxl/write/biff/SheetWriter;->chartOnly:Z

    .line 188
    new-instance p1, Ljxl/biff/drawing/SheetDrawingWriter;

    invoke-direct {p1, p3}, Ljxl/biff/drawing/SheetDrawingWriter;-><init>(Ljxl/WorkbookSettings;)V

    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->drawingWriter:Ljxl/biff/drawing/SheetDrawingWriter;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    .line 65
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

.method private getColumn(I)[Ljxl/Cell;
    .registers 8

    .line 989
    iget v0, p0, Ljxl/write/biff/SheetWriter;->numRows:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ltz v0, :cond_1d

    if-nez v3, :cond_1d

    .line 993
    iget-object v4, p0, Ljxl/write/biff/SheetWriter;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v5, v4, v0

    if-eqz v5, :cond_1a

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Ljxl/write/biff/RowRecord;->getCell(I)Ljxl/write/biff/CellValue;

    move-result-object v4

    if-eqz v4, :cond_1a

    const/4 v3, 0x1

    goto :goto_6

    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1d
    add-int/lit8 v1, v0, 0x1

    .line 1005
    new-array v1, v1, [Ljxl/Cell;

    :goto_21
    if-gt v2, v0, :cond_36

    .line 1009
    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v4, v3, v2

    if-eqz v4, :cond_30

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljxl/write/biff/RowRecord;->getCell(I)Ljxl/write/biff/CellValue;

    move-result-object v3

    goto :goto_31

    :cond_30
    const/4 v3, 0x0

    :goto_31
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_36
    return-object v1
.end method

.method private writeDataValidation()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1080
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    if-eqz v0, :cond_14

    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_14

    .line 1083
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v0, v1}, Ljxl/biff/DataValidation;->write(Ljxl/write/biff/File;)V

    return-void

    .line 1087
    :cond_14
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    if-nez v0, :cond_76

    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_76

    .line 1089
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getComboBox()Ljxl/biff/drawing/ComboBox;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getComboBox()Ljxl/biff/drawing/ComboBox;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/biff/drawing/ComboBox;->getObjectId()I

    move-result v0

    goto :goto_34

    :cond_33
    const/4 v0, -0x1

    .line 1091
    :goto_34
    new-instance v1, Ljxl/biff/DataValidation;

    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v2}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v2

    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v3}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v3

    iget-object v4, p0, Ljxl/write/biff/SheetWriter;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v1, v0, v2, v3, v4}, Ljxl/biff/DataValidation;-><init>(ILjxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v1, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    .line 1096
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1098
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/write/biff/CellValue;

    .line 1099
    invoke-virtual {v1}, Ljxl/write/biff/CellValue;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v1

    .line 1100
    new-instance v2, Ljxl/biff/DataValiditySettingsRecord;

    invoke-virtual {v1}, Ljxl/CellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v1

    invoke-direct {v2, v1}, Ljxl/biff/DataValiditySettingsRecord;-><init>(Ljxl/biff/DVParser;)V

    .line 1102
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    invoke-virtual {v1, v2}, Ljxl/biff/DataValidation;->add(Ljxl/biff/DataValiditySettingsRecord;)V

    goto :goto_4f

    .line 1104
    :cond_6e
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v0, v1}, Ljxl/biff/DataValidation;->write(Ljxl/write/biff/File;)V

    return-void

    .line 1109
    :cond_76
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 1111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/write/biff/CellValue;

    .line 1112
    invoke-virtual {v1}, Ljxl/write/biff/CellValue;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v1

    .line 1113
    new-instance v2, Ljxl/biff/DataValiditySettingsRecord;

    invoke-virtual {v1}, Ljxl/CellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v1

    invoke-direct {v2, v1}, Ljxl/biff/DataValiditySettingsRecord;-><init>(Ljxl/biff/DVParser;)V

    .line 1115
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    invoke-virtual {v1, v2}, Ljxl/biff/DataValidation;->add(Ljxl/biff/DataValiditySettingsRecord;)V

    goto :goto_7c

    .line 1117
    :cond_9b
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v0, v1}, Ljxl/biff/DataValidation;->write(Ljxl/write/biff/File;)V

    return-void
.end method


# virtual methods
.method checkMergedBorders()V
    .registers 14

    .line 706
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->mergedCells:Ljxl/write/biff/MergedCells;

    invoke-virtual {v0}, Ljxl/write/biff/MergedCells;->getMergedCells()[Ljxl/Range;

    move-result-object v0

    .line 707
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 708
    :goto_c
    array-length v3, v0

    if-ge v2, v3, :cond_39e

    .line 710
    aget-object v3, v0, v2

    .line 711
    invoke-interface {v3}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v4

    .line 712
    invoke-interface {v4}, Ljxl/Cell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v5

    check-cast v5, Ljxl/biff/XFRecord;

    if-eqz v5, :cond_39a

    .line 714
    invoke-virtual {v5}, Ljxl/biff/XFRecord;->hasBorders()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_39a

    invoke-virtual {v5}, Ljxl/biff/XFRecord;->isRead()Z

    move-result v6

    if-nez v6, :cond_39a

    .line 720
    :try_start_2a
    new-instance v6, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v6, v5}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 721
    invoke-interface {v3}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v3

    .line 723
    sget-object v8, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v9, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v10, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v6, v8, v9, v10}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 724
    sget-object v8, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    sget-object v9, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v5, v9}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v9

    sget-object v10, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v10

    invoke-virtual {v6, v8, v9, v10}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 727
    sget-object v8, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    sget-object v9, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v5, v9}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v9

    sget-object v10, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v10

    invoke-virtual {v6, v8, v9, v10}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 731
    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v8

    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v9

    if-ne v8, v9, :cond_79

    .line 733
    sget-object v8, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    sget-object v9, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v5, v9}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v9

    sget-object v10, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v10

    invoke-virtual {v6, v8, v9, v10}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 738
    :cond_79
    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v8

    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v9

    if-ne v8, v9, :cond_94

    .line 740
    sget-object v8, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    sget-object v9, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v5, v9}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v9

    sget-object v10, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v10

    invoke-virtual {v6, v8, v9, v10}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 745
    :cond_94
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_a2

    .line 748
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljxl/write/biff/CellXFRecord;

    goto :goto_a5

    .line 752
    :cond_a2
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    :goto_a5
    move-object v8, v4

    check-cast v8, Ljxl/write/WritableCell;

    invoke-interface {v8, v6}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    .line 757
    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v6

    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v8

    if-le v6, v8, :cond_177

    .line 760
    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v6

    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v8

    if-eq v6, v8, :cond_111

    .line 762
    new-instance v6, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v6, v5}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 763
    sget-object v8, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v10, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v11, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 764
    sget-object v8, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    sget-object v10, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v10

    sget-object v11, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v11

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 767
    sget-object v8, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    sget-object v10, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v10

    sget-object v11, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v11

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 771
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-eq v8, v9, :cond_fc

    .line 774
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljxl/write/biff/CellXFRecord;

    goto :goto_ff

    .line 778
    :cond_fc
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    :goto_ff
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    new-instance v10, Ljxl/write/Blank;

    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v11

    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v12

    invoke-direct {v10, v11, v12, v6}, Ljxl/write/Blank;-><init>(IILjxl/format/CellFormat;)V

    invoke-virtual {v8, v10}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    .line 787
    :cond_111
    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v6

    add-int/2addr v6, v7

    :goto_116
    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v8

    if-ge v6, v8, :cond_177

    .line 789
    new-instance v8, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v8, v5}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 790
    sget-object v10, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v11, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v12, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v8, v10, v11, v12}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 791
    sget-object v10, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    sget-object v11, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v11

    sget-object v12, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v5, v12}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v12

    invoke-virtual {v8, v10, v11, v12}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 795
    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v10

    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v11

    if-ne v10, v11, :cond_156

    .line 797
    sget-object v10, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    sget-object v11, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v11

    sget-object v12, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v5, v12}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v12

    invoke-virtual {v8, v10, v11, v12}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 802
    :cond_156
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-eq v10, v9, :cond_163

    .line 805
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljxl/write/biff/CellXFRecord;

    goto :goto_166

    .line 809
    :cond_163
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    :goto_166
    iget-object v10, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    new-instance v11, Ljxl/write/Blank;

    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v12

    invoke-direct {v11, v12, v6, v8}, Ljxl/write/Blank;-><init>(IILjxl/format/CellFormat;)V

    invoke-virtual {v10, v11}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_116

    .line 817
    :cond_177
    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v6

    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v8

    if-le v6, v8, :cond_28e

    .line 819
    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v6

    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v8

    if-eq v6, v8, :cond_1dd

    .line 822
    new-instance v6, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v6, v5}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 823
    sget-object v8, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v10, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v11, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 824
    sget-object v8, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    sget-object v10, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v10

    sget-object v11, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v11

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 827
    sget-object v8, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    sget-object v10, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v10

    sget-object v11, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v11

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 830
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-eq v8, v9, :cond_1c8

    .line 833
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljxl/write/biff/CellXFRecord;

    goto :goto_1cb

    .line 837
    :cond_1c8
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    :goto_1cb
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    new-instance v10, Ljxl/write/Blank;

    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v11

    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v12

    invoke-direct {v10, v11, v12, v6}, Ljxl/write/Blank;-><init>(IILjxl/format/CellFormat;)V

    invoke-virtual {v8, v10}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    .line 845
    :cond_1dd
    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v6

    add-int/2addr v6, v7

    .line 846
    :goto_1e2
    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v8

    if-ge v6, v8, :cond_228

    .line 848
    new-instance v8, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v8, v5}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 849
    sget-object v10, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v11, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v12, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v8, v10, v11, v12}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 850
    sget-object v10, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    sget-object v11, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v11

    sget-object v12, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v5, v12}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v12

    invoke-virtual {v8, v10, v11, v12}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 854
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-eq v10, v9, :cond_214

    .line 857
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljxl/write/biff/CellXFRecord;

    goto :goto_217

    .line 861
    :cond_214
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    :goto_217
    iget-object v10, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    new-instance v11, Ljxl/write/Blank;

    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v12

    invoke-direct {v11, v12, v6, v8}, Ljxl/write/Blank;-><init>(IILjxl/format/CellFormat;)V

    invoke-virtual {v10, v11}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1e2

    .line 868
    :cond_228
    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v6

    add-int/2addr v6, v7

    .line 869
    :goto_22d
    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v8

    if-ge v6, v8, :cond_28e

    .line 871
    new-instance v8, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v8, v5}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 872
    sget-object v10, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v11, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v12, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v8, v10, v11, v12}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 873
    sget-object v10, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    sget-object v11, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v11

    sget-object v12, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v5, v12}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v12

    invoke-virtual {v8, v10, v11, v12}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 877
    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v10

    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v11

    if-ne v10, v11, :cond_26d

    .line 879
    sget-object v10, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    sget-object v11, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v11

    sget-object v12, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v5, v12}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v12

    invoke-virtual {v8, v10, v11, v12}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 884
    :cond_26d
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-eq v10, v9, :cond_27a

    .line 887
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljxl/write/biff/CellXFRecord;

    goto :goto_27d

    .line 891
    :cond_27a
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    :goto_27d
    iget-object v10, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    new-instance v11, Ljxl/write/Blank;

    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v12

    invoke-direct {v11, v6, v12, v8}, Ljxl/write/Blank;-><init>(IILjxl/format/CellFormat;)V

    invoke-virtual {v10, v11}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_22d

    .line 899
    :cond_28e
    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v6

    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v8

    if-gt v6, v8, :cond_2a2

    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v6

    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v8

    if-le v6, v8, :cond_39a

    .line 903
    :cond_2a2
    new-instance v6, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v6, v5}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 904
    sget-object v8, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v10, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v11, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 905
    sget-object v8, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    sget-object v10, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v10

    sget-object v11, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v11

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 908
    sget-object v8, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    sget-object v10, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v10

    sget-object v11, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v11

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 912
    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v8

    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v10

    if-ne v8, v10, :cond_2ed

    .line 914
    sget-object v8, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    sget-object v10, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v10

    sget-object v11, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v11

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 919
    :cond_2ed
    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v8

    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v10

    if-ne v8, v10, :cond_308

    .line 921
    sget-object v8, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    sget-object v10, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v10

    sget-object v11, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v11

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 926
    :cond_308
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-eq v8, v9, :cond_315

    .line 929
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljxl/write/biff/CellXFRecord;

    goto :goto_318

    .line 933
    :cond_315
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    :goto_318
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    new-instance v10, Ljxl/write/Blank;

    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v11

    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v12

    invoke-direct {v10, v11, v12, v6}, Ljxl/write/Blank;-><init>(IILjxl/format/CellFormat;)V

    invoke-virtual {v8, v10}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    .line 941
    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v6

    add-int/2addr v6, v7

    .line 942
    :goto_32f
    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v7

    if-ge v6, v7, :cond_39a

    .line 944
    new-instance v7, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v7, v5}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 945
    sget-object v8, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v10, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v11, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v7, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 946
    sget-object v8, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    sget-object v10, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v10

    sget-object v11, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v11

    invoke-virtual {v7, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 950
    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v8

    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v10

    if-ne v8, v10, :cond_36f

    .line 952
    sget-object v8, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    sget-object v10, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v10

    sget-object v11, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v11

    invoke-virtual {v7, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 957
    :cond_36f
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-eq v8, v9, :cond_37c

    .line 960
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljxl/write/biff/CellXFRecord;

    goto :goto_37f

    .line 964
    :cond_37c
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 967
    :goto_37f
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    new-instance v10, Ljxl/write/Blank;

    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v11

    invoke-direct {v10, v6, v11, v7}, Ljxl/write/Blank;-><init>(IILjxl/format/CellFormat;)V

    invoke-virtual {v8, v10}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V
    :try_end_38d
    .catch Ljxl/write/WriteException; {:try_start_2a .. :try_end_38d} :catch_390

    add-int/lit8 v6, v6, 0x1

    goto :goto_32f

    :catch_390
    move-exception v3

    .line 974
    sget-object v4, Ljxl/write/biff/SheetWriter;->logger:Lcommon/Logger;

    invoke-virtual {v3}, Ljxl/write/WriteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    :cond_39a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c

    :cond_39e
    return-void
.end method

.method getCharts()[Ljxl/biff/drawing/Chart;
    .registers 2

    .line 695
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->drawingWriter:Ljxl/biff/drawing/SheetDrawingWriter;

    invoke-virtual {v0}, Ljxl/biff/drawing/SheetDrawingWriter;->getCharts()[Ljxl/biff/drawing/Chart;

    move-result-object v0

    return-object v0
.end method

.method final getFooter()Ljxl/write/biff/FooterRecord;
    .registers 2

    .line 595
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->footer:Ljxl/write/biff/FooterRecord;

    return-object v0
.end method

.method final getHeader()Ljxl/write/biff/HeaderRecord;
    .registers 2

    .line 585
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->header:Ljxl/write/biff/HeaderRecord;

    return-object v0
.end method

.method getWorkspaceOptions()Ljxl/biff/WorkspaceInformationRecord;
    .registers 2

    .line 650
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    return-object v0
.end method

.method setAutoFilter(Ljxl/biff/AutoFilter;)V
    .registers 2

    .line 1072
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->autoFilter:Ljxl/biff/AutoFilter;

    return-void
.end method

.method setButtonPropertySet(Ljxl/write/biff/ButtonPropertySetRecord;)V
    .registers 2

    .line 1040
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    return-void
.end method

.method setChartOnly()V
    .registers 2

    const/4 v0, 0x1

    .line 1020
    iput-boolean v0, p0, Ljxl/write/biff/SheetWriter;->chartOnly:Z

    return-void
.end method

.method setCharts([Ljxl/biff/drawing/Chart;)V
    .registers 3

    .line 674
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->drawingWriter:Ljxl/biff/drawing/SheetDrawingWriter;

    invoke-virtual {v0, p1}, Ljxl/biff/drawing/SheetDrawingWriter;->setCharts([Ljxl/biff/drawing/Chart;)V

    return-void
.end method

.method setConditionalFormats(Ljava/util/ArrayList;)V
    .registers 2

    .line 1062
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->conditionalFormats:Ljava/util/ArrayList;

    return-void
.end method

.method setDataValidation(Ljxl/biff/DataValidation;Ljava/util/ArrayList;)V
    .registers 3

    .line 1051
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    .line 1052
    iput-object p2, p0, Ljxl/write/biff/SheetWriter;->validatedCells:Ljava/util/ArrayList;

    return-void
.end method

.method setDimensions(II)V
    .registers 3

    .line 628
    iput p1, p0, Ljxl/write/biff/SheetWriter;->numRows:I

    .line 629
    iput p2, p0, Ljxl/write/biff/SheetWriter;->numCols:I

    return-void
.end method

.method setDrawings(Ljava/util/ArrayList;Z)V
    .registers 4

    .line 685
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->drawingWriter:Ljxl/biff/drawing/SheetDrawingWriter;

    invoke-virtual {v0, p1, p2}, Ljxl/biff/drawing/SheetDrawingWriter;->setDrawings(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method setPLS(Ljxl/write/biff/PLSRecord;)V
    .registers 2

    .line 1030
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->plsRecord:Ljxl/write/biff/PLSRecord;

    return-void
.end method

.method setSettings(Ljxl/SheetSettings;)V
    .registers 2

    .line 640
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    return-void
.end method

.method setWorkspaceOptions(Ljxl/biff/WorkspaceInformationRecord;)V
    .registers 2

    if-eqz p1, :cond_4

    .line 662
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    :cond_4
    return-void
.end method

.method setWriteData([Ljxl/write/biff/RowRecord;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljxl/write/biff/MergedCells;Ljava/util/TreeSet;)V
    .registers 7

    .line 611
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->rows:[Ljxl/write/biff/RowRecord;

    .line 612
    iput-object p2, p0, Ljxl/write/biff/SheetWriter;->rowBreaks:Ljava/util/ArrayList;

    .line 613
    iput-object p3, p0, Ljxl/write/biff/SheetWriter;->columnBreaks:Ljava/util/ArrayList;

    .line 614
    iput-object p4, p0, Ljxl/write/biff/SheetWriter;->hyperlinks:Ljava/util/ArrayList;

    .line 615
    iput-object p5, p0, Ljxl/write/biff/SheetWriter;->mergedCells:Ljxl/write/biff/MergedCells;

    .line 616
    iput-object p6, p0, Ljxl/write/biff/SheetWriter;->columnFormats:Ljava/util/TreeSet;

    return-void
.end method

.method public write()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->rows:[Ljxl/write/biff/RowRecord;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 204
    iget-boolean v0, p0, Ljxl/write/biff/SheetWriter;->chartOnly:Z

    if-eqz v0, :cond_18

    .line 206
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->drawingWriter:Ljxl/biff/drawing/SheetDrawingWriter;

    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v0, v1}, Ljxl/biff/drawing/SheetDrawingWriter;->write(Ljxl/write/biff/File;)V

    return-void

    .line 210
    :cond_18
    new-instance v0, Ljxl/write/biff/BOFRecord;

    sget-object v3, Ljxl/write/biff/BOFRecord;->sheet:Ljxl/write/biff/BOFRecord$SheetBOF;

    invoke-direct {v0, v3}, Ljxl/write/biff/BOFRecord;-><init>(Ljxl/write/biff/BOFRecord$SheetBOF;)V

    .line 211
    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 214
    iget v0, p0, Ljxl/write/biff/SheetWriter;->numRows:I

    div-int/lit8 v3, v0, 0x20

    mul-int/lit8 v4, v3, 0x20

    sub-int/2addr v0, v4

    if-eqz v0, :cond_2f

    add-int/lit8 v3, v3, 0x1

    .line 220
    :cond_2f
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v0}, Ljxl/write/biff/File;->getPos()I

    move-result v0

    .line 224
    new-instance v4, Ljxl/write/biff/IndexRecord;

    iget v5, p0, Ljxl/write/biff/SheetWriter;->numRows:I

    invoke-direct {v4, v2, v5, v3}, Ljxl/write/biff/IndexRecord;-><init>(III)V

    .line 225
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v5, v4}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 227
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getAutomaticFormulaCalculation()Z

    move-result v5

    if-eqz v5, :cond_56

    .line 229
    new-instance v5, Ljxl/write/biff/CalcModeRecord;

    sget-object v6, Ljxl/write/biff/CalcModeRecord;->automatic:Ljxl/write/biff/CalcModeRecord$CalcMode;

    invoke-direct {v5, v6}, Ljxl/write/biff/CalcModeRecord;-><init>(Ljxl/write/biff/CalcModeRecord$CalcMode;)V

    .line 230
    iget-object v6, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v6, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_62

    .line 234
    :cond_56
    new-instance v5, Ljxl/write/biff/CalcModeRecord;

    sget-object v6, Ljxl/write/biff/CalcModeRecord;->manual:Ljxl/write/biff/CalcModeRecord$CalcMode;

    invoke-direct {v5, v6}, Ljxl/write/biff/CalcModeRecord;-><init>(Ljxl/write/biff/CalcModeRecord$CalcMode;)V

    .line 235
    iget-object v6, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v6, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 238
    :goto_62
    new-instance v5, Ljxl/write/biff/CalcCountRecord;

    const/16 v6, 0x64

    invoke-direct {v5, v6}, Ljxl/write/biff/CalcCountRecord;-><init>(I)V

    .line 239
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 241
    new-instance v5, Ljxl/write/biff/RefModeRecord;

    invoke-direct {v5}, Ljxl/write/biff/RefModeRecord;-><init>()V

    .line 242
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 244
    new-instance v5, Ljxl/write/biff/IterationRecord;

    invoke-direct {v5, v2}, Ljxl/write/biff/IterationRecord;-><init>(Z)V

    .line 245
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 247
    new-instance v5, Ljxl/write/biff/DeltaRecord;

    const-wide v7, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-direct {v5, v7, v8}, Ljxl/write/biff/DeltaRecord;-><init>(D)V

    .line 248
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 250
    new-instance v5, Ljxl/write/biff/SaveRecalcRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getRecalculateFormulasBeforeSave()Z

    move-result v7

    invoke-direct {v5, v7}, Ljxl/write/biff/SaveRecalcRecord;-><init>(Z)V

    .line 252
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 254
    new-instance v5, Ljxl/write/biff/PrintHeadersRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getPrintHeaders()Z

    move-result v7

    invoke-direct {v5, v7}, Ljxl/write/biff/PrintHeadersRecord;-><init>(Z)V

    .line 256
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 258
    new-instance v5, Ljxl/write/biff/PrintGridLinesRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getPrintGridLines()Z

    move-result v7

    invoke-direct {v5, v7}, Ljxl/write/biff/PrintGridLinesRecord;-><init>(Z)V

    .line 260
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 262
    new-instance v5, Ljxl/write/biff/GridSetRecord;

    invoke-direct {v5, v1}, Ljxl/write/biff/GridSetRecord;-><init>(Z)V

    .line 263
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 265
    new-instance v5, Ljxl/write/biff/GuttersRecord;

    invoke-direct {v5}, Ljxl/write/biff/GuttersRecord;-><init>()V

    .line 266
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 268
    new-instance v5, Ljxl/write/biff/DefaultRowHeightRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getDefaultRowHeight()I

    move-result v7

    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v8}, Ljxl/SheetSettings;->getDefaultRowHeight()I

    move-result v8

    const/16 v9, 0xff

    if-eq v8, v9, :cond_e9

    const/4 v8, 0x1

    goto :goto_ea

    :cond_e9
    const/4 v8, 0x0

    :goto_ea
    invoke-direct {v5, v7, v8}, Ljxl/write/biff/DefaultRowHeightRecord;-><init>(IZ)V

    .line 272
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 274
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getFitToPages()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljxl/biff/WorkspaceInformationRecord;->setFitToPages(Z)V

    .line 275
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    invoke-virtual {v5, v7}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 277
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->rowBreaks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_132

    .line 279
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->rowBreaks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v7, v5, [I

    const/4 v8, 0x0

    :goto_115
    if-ge v8, v5, :cond_128

    .line 283
    iget-object v9, p0, Ljxl/write/biff/SheetWriter;->rowBreaks:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_115

    .line 286
    :cond_128
    new-instance v5, Ljxl/write/biff/HorizontalPageBreaksRecord;

    invoke-direct {v5, v7}, Ljxl/write/biff/HorizontalPageBreaksRecord;-><init>([I)V

    .line 287
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 290
    :cond_132
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->columnBreaks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_160

    .line 292
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->columnBreaks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v7, v5, [I

    const/4 v8, 0x0

    :goto_143
    if-ge v8, v5, :cond_156

    .line 296
    iget-object v9, p0, Ljxl/write/biff/SheetWriter;->columnBreaks:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_143

    .line 299
    :cond_156
    new-instance v5, Ljxl/write/biff/VerticalPageBreaksRecord;

    invoke-direct {v5, v7}, Ljxl/write/biff/VerticalPageBreaksRecord;-><init>([I)V

    .line 300
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 303
    :cond_160
    new-instance v5, Ljxl/write/biff/HeaderRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getHeader()Ljxl/HeaderFooter;

    move-result-object v7

    invoke-virtual {v7}, Ljxl/HeaderFooter;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljxl/write/biff/HeaderRecord;-><init>(Ljava/lang/String;)V

    .line 304
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 306
    new-instance v5, Ljxl/write/biff/FooterRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getFooter()Ljxl/HeaderFooter;

    move-result-object v7

    invoke-virtual {v7}, Ljxl/HeaderFooter;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljxl/write/biff/FooterRecord;-><init>(Ljava/lang/String;)V

    .line 307
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 309
    new-instance v5, Ljxl/write/biff/HorizontalCentreRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->isHorizontalCentre()Z

    move-result v7

    invoke-direct {v5, v7}, Ljxl/write/biff/HorizontalCentreRecord;-><init>(Z)V

    .line 311
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 313
    new-instance v5, Ljxl/write/biff/VerticalCentreRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->isVerticalCentre()Z

    move-result v7

    invoke-direct {v5, v7}, Ljxl/write/biff/VerticalCentreRecord;-><init>(Z)V

    .line 315
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 318
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getLeftMargin()D

    move-result-wide v7

    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getDefaultWidthMargin()D

    move-result-wide v9

    cmpl-double v5, v7, v9

    if-eqz v5, :cond_1c8

    .line 320
    new-instance v5, Ljxl/write/biff/LeftMarginRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getLeftMargin()D

    move-result-wide v7

    invoke-direct {v5, v7, v8}, Ljxl/write/biff/LeftMarginRecord;-><init>(D)V

    .line 321
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 324
    :cond_1c8
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getRightMargin()D

    move-result-wide v7

    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getDefaultWidthMargin()D

    move-result-wide v9

    cmpl-double v5, v7, v9

    if-eqz v5, :cond_1e8

    .line 326
    new-instance v5, Ljxl/write/biff/RightMarginRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getRightMargin()D

    move-result-wide v7

    invoke-direct {v5, v7, v8}, Ljxl/write/biff/RightMarginRecord;-><init>(D)V

    .line 327
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 330
    :cond_1e8
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getTopMargin()D

    move-result-wide v7

    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getDefaultHeightMargin()D

    move-result-wide v9

    cmpl-double v5, v7, v9

    if-eqz v5, :cond_208

    .line 332
    new-instance v5, Ljxl/write/biff/TopMarginRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getTopMargin()D

    move-result-wide v7

    invoke-direct {v5, v7, v8}, Ljxl/write/biff/TopMarginRecord;-><init>(D)V

    .line 333
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 336
    :cond_208
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getBottomMargin()D

    move-result-wide v7

    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getDefaultHeightMargin()D

    move-result-wide v9

    cmpl-double v5, v7, v9

    if-eqz v5, :cond_228

    .line 338
    new-instance v5, Ljxl/write/biff/BottomMarginRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getBottomMargin()D

    move-result-wide v7

    invoke-direct {v5, v7, v8}, Ljxl/write/biff/BottomMarginRecord;-><init>(D)V

    .line 339
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 342
    :cond_228
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->plsRecord:Ljxl/write/biff/PLSRecord;

    if-eqz v5, :cond_231

    .line 344
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 347
    :cond_231
    new-instance v5, Ljxl/write/biff/SetupRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-direct {v5, v7}, Ljxl/write/biff/SetupRecord;-><init>(Ljxl/SheetSettings;)V

    .line 348
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 350
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->isProtected()Z

    move-result v5

    if-eqz v5, :cond_2a6

    .line 352
    new-instance v5, Ljxl/write/biff/ProtectRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->isProtected()Z

    move-result v7

    invoke-direct {v5, v7}, Ljxl/write/biff/ProtectRecord;-><init>(Z)V

    .line 353
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 355
    new-instance v5, Ljxl/write/biff/ScenarioProtectRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->isProtected()Z

    move-result v7

    invoke-direct {v5, v7}, Ljxl/write/biff/ScenarioProtectRecord;-><init>(Z)V

    .line 357
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 359
    new-instance v5, Ljxl/write/biff/ObjectProtectRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->isProtected()Z

    move-result v7

    invoke-direct {v5, v7}, Ljxl/write/biff/ObjectProtectRecord;-><init>(Z)V

    .line 361
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 363
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getPassword()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_28e

    .line 365
    new-instance v5, Ljxl/write/biff/PasswordRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljxl/write/biff/PasswordRecord;-><init>(Ljava/lang/String;)V

    .line 366
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_2a6

    .line 368
    :cond_28e
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getPasswordHash()I

    move-result v5

    if-eqz v5, :cond_2a6

    .line 370
    new-instance v5, Ljxl/write/biff/PasswordRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getPasswordHash()I

    move-result v7

    invoke-direct {v5, v7}, Ljxl/write/biff/PasswordRecord;-><init>(I)V

    .line 371
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 375
    :cond_2a6
    :goto_2a6
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v5}, Ljxl/write/biff/File;->getPos()I

    move-result v5

    invoke-virtual {v4, v5}, Ljxl/write/biff/IndexRecord;->setDataStartPosition(I)V

    .line 376
    new-instance v5, Ljxl/write/biff/DefaultColumnWidth;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getDefaultColumnWidth()I

    move-result v7

    invoke-direct {v5, v7}, Ljxl/write/biff/DefaultColumnWidth;-><init>(I)V

    .line 378
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 381
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v5}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v5

    invoke-virtual {v5}, Ljxl/write/biff/WritableWorkbookImpl;->getStyles()Ljxl/write/biff/Styles;

    move-result-object v5

    invoke-virtual {v5}, Ljxl/write/biff/Styles;->getNormalStyle()Ljxl/write/WritableCellFormat;

    move-result-object v5

    .line 383
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v7}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v7

    invoke-virtual {v7}, Ljxl/write/biff/WritableWorkbookImpl;->getStyles()Ljxl/write/biff/Styles;

    move-result-object v7

    invoke-virtual {v7}, Ljxl/write/biff/Styles;->getDefaultDateFormat()Ljxl/write/WritableCellFormat;

    move-result-object v7

    .line 388
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2e1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_330

    .line 390
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljxl/write/biff/ColumnInfoRecord;

    .line 393
    invoke-virtual {v9}, Ljxl/write/biff/ColumnInfoRecord;->getColumn()I

    move-result v10

    const/16 v11, 0x100

    if-ge v10, v11, :cond_2fa

    .line 395
    iget-object v10, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v10, v9}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 398
    :cond_2fa
    invoke-virtual {v9}, Ljxl/write/biff/ColumnInfoRecord;->getCellFormat()Ljxl/biff/XFRecord;

    move-result-object v10

    if-eq v10, v5, :cond_2e1

    .line 400
    invoke-virtual {v9}, Ljxl/write/biff/ColumnInfoRecord;->getColumn()I

    move-result v12

    if-ge v12, v11, :cond_2e1

    .line 403
    invoke-virtual {v9}, Ljxl/write/biff/ColumnInfoRecord;->getColumn()I

    move-result v9

    invoke-direct {p0, v9}, Ljxl/write/biff/SheetWriter;->getColumn(I)[Ljxl/Cell;

    move-result-object v9

    const/4 v11, 0x0

    .line 405
    :goto_30f
    array-length v12, v9

    if-ge v11, v12, :cond_2e1

    .line 407
    aget-object v12, v9, v11

    if-eqz v12, :cond_32d

    aget-object v12, v9, v11

    invoke-interface {v12}, Ljxl/Cell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v12

    if-eq v12, v5, :cond_326

    aget-object v12, v9, v11

    invoke-interface {v12}, Ljxl/Cell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v12

    if-ne v12, v7, :cond_32d

    .line 413
    :cond_326
    aget-object v12, v9, v11

    check-cast v12, Ljxl/write/WritableCell;

    invoke-interface {v12, v10}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    :cond_32d
    add-int/lit8 v11, v11, 0x1

    goto :goto_30f

    .line 420
    :cond_330
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->autoFilter:Ljxl/biff/AutoFilter;

    if-eqz v5, :cond_339

    .line 422
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v5, v7}, Ljxl/biff/AutoFilter;->write(Ljxl/write/biff/File;)V

    .line 425
    :cond_339
    new-instance v5, Ljxl/write/biff/DimensionRecord;

    iget v7, p0, Ljxl/write/biff/SheetWriter;->numRows:I

    iget v8, p0, Ljxl/write/biff/SheetWriter;->numCols:I

    invoke-direct {v5, v7, v8}, Ljxl/write/biff/DimensionRecord;-><init>(II)V

    .line 426
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    const/4 v5, 0x0

    :goto_348
    if-ge v5, v3, :cond_3b9

    .line 431
    new-instance v7, Ljxl/write/biff/DBCellRecord;

    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v8}, Ljxl/write/biff/File;->getPos()I

    move-result v8

    invoke-direct {v7, v8}, Ljxl/write/biff/DBCellRecord;-><init>(I)V

    .line 433
    iget v8, p0, Ljxl/write/biff/SheetWriter;->numRows:I

    mul-int/lit8 v9, v5, 0x20

    sub-int/2addr v8, v9

    const/16 v10, 0x20

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v10, v9

    const/4 v11, 0x1

    :goto_362
    add-int v12, v9, v8

    if-ge v10, v12, :cond_382

    .line 439
    iget-object v12, p0, Ljxl/write/biff/SheetWriter;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v13, v12, v10

    if-eqz v13, :cond_37f

    .line 441
    aget-object v12, v12, v10

    iget-object v13, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v12, v13}, Ljxl/write/biff/RowRecord;->write(Ljxl/write/biff/File;)V

    if-eqz v11, :cond_37f

    .line 444
    iget-object v11, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v11}, Ljxl/write/biff/File;->getPos()I

    move-result v11

    invoke-virtual {v7, v11}, Ljxl/write/biff/DBCellRecord;->setCellOffset(I)V

    const/4 v11, 0x0

    :cond_37f
    add-int/lit8 v10, v10, 0x1

    goto :goto_362

    :cond_382
    :goto_382
    if-ge v9, v12, :cond_39f

    .line 453
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v8, v8, v9

    if-eqz v8, :cond_39c

    .line 455
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v8}, Ljxl/write/biff/File;->getPos()I

    move-result v8

    invoke-virtual {v7, v8}, Ljxl/write/biff/DBCellRecord;->addCellRowPosition(I)V

    .line 456
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v8, v8, v9

    iget-object v10, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v8, v10}, Ljxl/write/biff/RowRecord;->writeCells(Ljxl/write/biff/File;)V

    :cond_39c
    add-int/lit8 v9, v9, 0x1

    goto :goto_382

    .line 461
    :cond_39f
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v8}, Ljxl/write/biff/File;->getPos()I

    move-result v8

    invoke-virtual {v4, v8}, Ljxl/write/biff/IndexRecord;->addBlockPosition(I)V

    .line 465
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v8}, Ljxl/write/biff/File;->getPos()I

    move-result v8

    invoke-virtual {v7, v8}, Ljxl/write/biff/DBCellRecord;->setPosition(I)V

    .line 466
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v8, v7}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_348

    .line 470
    :cond_3b9
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getDrawingsDisabled()Z

    move-result v1

    if-nez v1, :cond_3c8

    .line 472
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->drawingWriter:Ljxl/biff/drawing/SheetDrawingWriter;

    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v1, v3}, Ljxl/biff/drawing/SheetDrawingWriter;->write(Ljxl/write/biff/File;)V

    .line 475
    :cond_3c8
    new-instance v1, Ljxl/write/biff/Window2Record;

    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-direct {v1, v3}, Ljxl/write/biff/Window2Record;-><init>(Ljxl/SheetSettings;)V

    .line 476
    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 479
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/SheetSettings;->getHorizontalFreeze()I

    move-result v1

    if-nez v1, :cond_3f3

    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/SheetSettings;->getVerticalFreeze()I

    move-result v1

    if-eqz v1, :cond_3e5

    goto :goto_3f3

    .line 525
    :cond_3e5
    new-instance v1, Ljxl/write/biff/SelectionRecord;

    sget-object v3, Ljxl/write/biff/SelectionRecord;->upperLeft:Ljxl/write/biff/SelectionRecord$PaneType;

    invoke-direct {v1, v3, v2, v2}, Ljxl/write/biff/SelectionRecord;-><init>(Ljxl/write/biff/SelectionRecord$PaneType;II)V

    .line 527
    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto/16 :goto_47b

    .line 482
    :cond_3f3
    :goto_3f3
    new-instance v1, Ljxl/write/biff/PaneRecord;

    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v3}, Ljxl/SheetSettings;->getHorizontalFreeze()I

    move-result v3

    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getVerticalFreeze()I

    move-result v5

    invoke-direct {v1, v3, v5}, Ljxl/write/biff/PaneRecord;-><init>(II)V

    .line 484
    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 487
    new-instance v1, Ljxl/write/biff/SelectionRecord;

    sget-object v3, Ljxl/write/biff/SelectionRecord;->upperLeft:Ljxl/write/biff/SelectionRecord$PaneType;

    invoke-direct {v1, v3, v2, v2}, Ljxl/write/biff/SelectionRecord;-><init>(Ljxl/write/biff/SelectionRecord$PaneType;II)V

    .line 489
    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 492
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/SheetSettings;->getHorizontalFreeze()I

    move-result v1

    if-eqz v1, :cond_42f

    .line 494
    new-instance v1, Ljxl/write/biff/SelectionRecord;

    sget-object v3, Ljxl/write/biff/SelectionRecord;->upperRight:Ljxl/write/biff/SelectionRecord$PaneType;

    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getHorizontalFreeze()I

    move-result v5

    invoke-direct {v1, v3, v5, v2}, Ljxl/write/biff/SelectionRecord;-><init>(Ljxl/write/biff/SelectionRecord$PaneType;II)V

    .line 496
    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 500
    :cond_42f
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/SheetSettings;->getVerticalFreeze()I

    move-result v1

    if-eqz v1, :cond_449

    .line 502
    new-instance v1, Ljxl/write/biff/SelectionRecord;

    sget-object v3, Ljxl/write/biff/SelectionRecord;->lowerLeft:Ljxl/write/biff/SelectionRecord$PaneType;

    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getVerticalFreeze()I

    move-result v5

    invoke-direct {v1, v3, v2, v5}, Ljxl/write/biff/SelectionRecord;-><init>(Ljxl/write/biff/SelectionRecord$PaneType;II)V

    .line 504
    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 508
    :cond_449
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/SheetSettings;->getHorizontalFreeze()I

    move-result v1

    if-eqz v1, :cond_471

    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/SheetSettings;->getVerticalFreeze()I

    move-result v1

    if-eqz v1, :cond_471

    .line 511
    new-instance v1, Ljxl/write/biff/SelectionRecord;

    sget-object v2, Ljxl/write/biff/SelectionRecord;->lowerRight:Ljxl/write/biff/SelectionRecord$PaneType;

    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v3}, Ljxl/SheetSettings;->getHorizontalFreeze()I

    move-result v3

    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getVerticalFreeze()I

    move-result v5

    invoke-direct {v1, v2, v3, v5}, Ljxl/write/biff/SelectionRecord;-><init>(Ljxl/write/biff/SelectionRecord$PaneType;II)V

    .line 515
    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 518
    :cond_471
    new-instance v1, Ljxl/write/biff/Weird1Record;

    invoke-direct {v1}, Ljxl/write/biff/Weird1Record;-><init>()V

    .line 519
    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 531
    :goto_47b
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/SheetSettings;->getZoomFactor()I

    move-result v1

    if-eq v1, v6, :cond_493

    .line 533
    new-instance v1, Ljxl/write/biff/SCLRecord;

    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v2}, Ljxl/SheetSettings;->getZoomFactor()I

    move-result v2

    invoke-direct {v1, v2}, Ljxl/write/biff/SCLRecord;-><init>(I)V

    .line 534
    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 538
    :cond_493
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->mergedCells:Ljxl/write/biff/MergedCells;

    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v1, v2}, Ljxl/write/biff/MergedCells;->write(Ljxl/write/biff/File;)V

    .line 541
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 543
    :goto_4a0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b2

    .line 545
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/write/WritableHyperlink;

    .line 546
    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v2}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_4a0

    .line 549
    :cond_4b2
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    if-eqz v1, :cond_4bb

    .line 551
    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 555
    :cond_4bb
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    if-nez v1, :cond_4c7

    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4ca

    .line 557
    :cond_4c7
    invoke-direct {p0}, Ljxl/write/biff/SheetWriter;->writeDataValidation()V

    .line 561
    :cond_4ca
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->conditionalFormats:Ljava/util/ArrayList;

    if-eqz v1, :cond_4ec

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4ec

    .line 563
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->conditionalFormats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4da
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4ec

    .line 565
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/biff/ConditionalFormat;

    .line 566
    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v3}, Ljxl/biff/ConditionalFormat;->write(Ljxl/write/biff/File;)V

    goto :goto_4da

    .line 570
    :cond_4ec
    new-instance v1, Ljxl/write/biff/EOFRecord;

    invoke-direct {v1}, Ljxl/write/biff/EOFRecord;-><init>()V

    .line 571
    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 575
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v4}, Ljxl/write/biff/IndexRecord;->getData()[B

    move-result-object v2

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, v2, v0}, Ljxl/write/biff/File;->setData([BI)V

    return-void
.end method
