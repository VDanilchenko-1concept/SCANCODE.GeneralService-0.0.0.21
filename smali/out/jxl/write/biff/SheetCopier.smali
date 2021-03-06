.class Ljxl/write/biff/SheetCopier;
.super Ljava/lang/Object;
.source "SheetCopier.java"


# static fields
.field static synthetic class$jxl$write$biff$SheetCopier:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private autoFilter:Ljxl/biff/AutoFilter;

.field private buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

.field private chartOnly:Z

.field private columnBreaks:Ljava/util/ArrayList;

.field private columnFormats:Ljava/util/TreeSet;

.field private comboBox:Ljxl/biff/drawing/ComboBox;

.field private conditionalFormats:Ljava/util/ArrayList;

.field private dataValidation:Ljxl/biff/DataValidation;

.field private drawings:Ljava/util/ArrayList;

.field private fonts:Ljava/util/HashMap;

.field private formatRecords:Ljxl/biff/FormattingRecords;

.field private formats:Ljava/util/HashMap;

.field private fromSheet:Ljxl/read/biff/SheetImpl;

.field private hyperlinks:Ljava/util/ArrayList;

.field private images:Ljava/util/ArrayList;

.field private mergedCells:Ljxl/write/biff/MergedCells;

.field private numRows:I

.field private plsRecord:Ljxl/write/biff/PLSRecord;

.field private rowBreaks:Ljava/util/ArrayList;

.field private sheetWriter:Ljxl/write/biff/SheetWriter;

.field private toSheet:Ljxl/write/biff/WritableSheetImpl;

.field private workbookSettings:Ljxl/WorkbookSettings;

.field private xfRecords:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 86
    sget-object v0, Ljxl/write/biff/SheetCopier;->class$jxl$write$biff$SheetCopier:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "jxl.write.biff.SheetCopier"

    invoke-static {v0}, Ljxl/write/biff/SheetCopier;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/SheetCopier;->class$jxl$write$biff$SheetCopier:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/SheetCopier;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/Sheet;Ljxl/write/WritableSheet;)V
    .registers 3

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    check-cast p1, Ljxl/read/biff/SheetImpl;

    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    .line 120
    check-cast p2, Ljxl/write/biff/WritableSheetImpl;

    iput-object p2, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    .line 121
    invoke-virtual {p2}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/write/biff/WritableWorkbookImpl;->getSettings()Ljxl/WorkbookSettings;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->workbookSettings:Ljxl/WorkbookSettings;

    const/4 p1, 0x0

    .line 122
    iput-boolean p1, p0, Ljxl/write/biff/SheetCopier;->chartOnly:Z

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    .line 86
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

.method private copyCellFormat(Ljxl/format/CellFormat;)Ljxl/write/WritableCellFormat;
    .registers 7

    .line 870
    :try_start_0
    check-cast p1, Ljxl/biff/XFRecord;

    .line 871
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0, p1}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/format/CellFormat;)V

    .line 872
    iget-object v1, p0, Ljxl/write/biff/SheetCopier;->formatRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v1, v0}, Ljxl/biff/FormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 875
    invoke-virtual {p1}, Ljxl/biff/XFRecord;->getXFIndex()I

    move-result v1

    .line 876
    iget-object v2, p0, Ljxl/write/biff/SheetCopier;->xfRecords:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    invoke-virtual {p1}, Ljxl/biff/XFRecord;->getFontIndex()I

    move-result v1

    .line 879
    iget-object v2, p0, Ljxl/write/biff/SheetCopier;->fonts:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljxl/write/WritableCellFormat;->getFontIndex()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    invoke-virtual {p1}, Ljxl/biff/XFRecord;->getFormatRecord()I

    move-result p1

    .line 882
    iget-object v1, p0, Ljxl/write/biff/SheetCopier;->formats:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance p1, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljxl/write/WritableCellFormat;->getFormatRecord()I

    move-result v3

    invoke-direct {p1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catch Ljxl/biff/NumFormatRecordsException; {:try_start_0 .. :try_end_48} :catch_49

    return-object v0

    .line 888
    :catch_49
    sget-object p1, Ljxl/write/biff/SheetCopier;->logger:Lcommon/Logger;

    const-string v0, "Maximum number of format records exceeded.  Using default format."

    invoke-virtual {p1, v0}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 891
    sget-object p1, Ljxl/write/WritableWorkbook;->NORMAL_STYLE:Ljxl/write/WritableCellFormat;

    return-object p1
.end method

.method private deepCopyCell(Ljxl/Cell;)Ljxl/write/WritableCell;
    .registers 7

    .line 725
    invoke-direct {p0, p1}, Ljxl/write/biff/SheetCopier;->shallowCopyCell(Ljxl/Cell;)Ljxl/write/WritableCell;

    move-result-object v0

    if-nez v0, :cond_7

    return-object v0

    .line 732
    :cond_7
    instance-of v1, v0, Ljxl/write/biff/ReadFormulaRecord;

    if-eqz v1, :cond_9b

    .line 734
    move-object v1, v0

    check-cast v1, Ljxl/write/biff/ReadFormulaRecord;

    .line 735
    iget-object v2, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v2}, Ljxl/read/biff/SheetImpl;->getWorkbook()Ljxl/read/biff/WorkbookParser;

    move-result-object v2

    iget-object v3, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v3}, Ljxl/read/biff/SheetImpl;->getWorkbook()Ljxl/read/biff/WorkbookParser;

    move-result-object v3

    iget-object v4, p0, Ljxl/write/biff/SheetCopier;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1, v2, v3, v4}, Ljxl/write/biff/ReadFormulaRecord;->handleImportedCellReferences(Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_9b

    .line 744
    :try_start_24
    sget-object v0, Ljxl/write/biff/SheetCopier;->logger:Lcommon/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Formula "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljxl/write/biff/ReadFormulaRecord;->getFormula()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " in cell "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljxl/Cell;->getColumn()I

    move-result v1

    invoke-interface {p1}, Ljxl/Cell;->getRow()I

    move-result v3

    invoke-static {v1, v3}, Ljxl/biff/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " cannot be imported because it references another "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " sheet from the source workbook"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V
    :try_end_5c
    .catch Ljxl/biff/formula/FormulaException; {:try_start_24 .. :try_end_5c} :catch_5d

    goto :goto_8c

    :catch_5d
    move-exception v0

    .line 753
    sget-object v1, Ljxl/write/biff/SheetCopier;->logger:Lcommon/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Formula  in cell "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljxl/Cell;->getColumn()I

    move-result v3

    invoke-interface {p1}, Ljxl/Cell;->getRow()I

    move-result v4

    invoke-static {v3, v4}, Ljxl/biff/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " cannot be imported:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 760
    :goto_8c
    new-instance v0, Ljxl/write/Formula;

    invoke-interface {p1}, Ljxl/Cell;->getColumn()I

    move-result v1

    invoke-interface {p1}, Ljxl/Cell;->getRow()I

    move-result p1

    const-string v2, "\"ERROR\""

    invoke-direct {v0, v1, p1, v2}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 765
    :cond_9b
    invoke-interface {v0}, Ljxl/write/WritableCell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object p1

    .line 766
    move-object v1, p1

    check-cast v1, Ljxl/biff/XFRecord;

    invoke-virtual {v1}, Ljxl/biff/XFRecord;->getXFIndex()I

    move-result v1

    .line 767
    iget-object v2, p0, Ljxl/write/biff/SheetCopier;->xfRecords:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/write/WritableCellFormat;

    if-nez v1, :cond_b9

    .line 772
    invoke-direct {p0, p1}, Ljxl/write/biff/SheetCopier;->copyCellFormat(Ljxl/format/CellFormat;)Ljxl/write/WritableCellFormat;

    move-result-object v1

    .line 775
    :cond_b9
    invoke-interface {v0, v1}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    return-object v0
.end method

.method private importNames()V
    .registers 19

    move-object/from16 v0, p0

    .line 900
    iget-object v1, v0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v1}, Ljxl/read/biff/SheetImpl;->getWorkbook()Ljxl/read/biff/WorkbookParser;

    move-result-object v1

    .line 901
    iget-object v2, v0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v2}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v2

    .line 902
    iget-object v3, v0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v1, v3}, Ljxl/read/biff/WorkbookParser;->getIndex(Ljxl/Sheet;)I

    move-result v10

    .line 903
    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getNameRecords()[Ljxl/read/biff/NameRecord;

    move-result-object v11

    .line 904
    invoke-virtual {v2}, Ljxl/write/WritableWorkbook;->getRangeNames()[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 906
    :goto_1e
    array-length v3, v11

    if-ge v14, v3, :cond_8c

    .line 908
    aget-object v3, v11, v14

    invoke-virtual {v3}, Ljxl/read/biff/NameRecord;->getRanges()[Ljxl/read/biff/NameRecord$NameRange;

    move-result-object v15

    const/4 v9, 0x0

    .line 910
    :goto_28
    array-length v3, v15

    if-ge v9, v3, :cond_89

    .line 912
    aget-object v3, v15, v9

    invoke-virtual {v3}, Ljxl/read/biff/NameRecord$NameRange;->getExternalSheet()I

    move-result v3

    invoke-virtual {v1, v3}, Ljxl/read/biff/WorkbookParser;->getExternalSheetIndex(I)I

    move-result v3

    if-ne v10, v3, :cond_84

    .line 917
    aget-object v3, v11, v14

    invoke-virtual {v3}, Ljxl/read/biff/NameRecord;->getName()Ljava/lang/String;

    move-result-object v4

    .line 918
    invoke-static {v12, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_66

    .line 920
    iget-object v5, v0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    aget-object v3, v15, v9

    invoke-virtual {v3}, Ljxl/read/biff/NameRecord$NameRange;->getFirstColumn()I

    move-result v6

    aget-object v3, v15, v9

    invoke-virtual {v3}, Ljxl/read/biff/NameRecord$NameRange;->getFirstRow()I

    move-result v7

    aget-object v3, v15, v9

    invoke-virtual {v3}, Ljxl/read/biff/NameRecord$NameRange;->getLastColumn()I

    move-result v8

    aget-object v3, v15, v9

    invoke-virtual {v3}, Ljxl/read/biff/NameRecord$NameRange;->getLastRow()I

    move-result v16

    move-object v3, v2

    move/from16 v17, v9

    move/from16 v9, v16

    invoke-virtual/range {v3 .. v9}, Ljxl/write/WritableWorkbook;->addNameArea(Ljava/lang/String;Ljxl/write/WritableSheet;IIII)V

    goto :goto_86

    :cond_66
    move/from16 v17, v9

    .line 929
    sget-object v3, Ljxl/write/biff/SheetCopier;->logger:Lcommon/Logger;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Named range "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " is already present in the destination workbook"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_86

    :cond_84
    move/from16 v17, v9

    :goto_86
    add-int/lit8 v9, v17, 0x1

    goto :goto_28

    :cond_89
    add-int/lit8 v14, v14, 0x1

    goto :goto_1e

    :cond_8c
    return-void
.end method

.method private shallowCopyCell(Ljxl/Cell;)Ljxl/write/WritableCell;
    .registers 4

    .line 665
    invoke-interface {p1}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v0

    .line 668
    sget-object v1, Ljxl/CellType;->LABEL:Ljxl/CellType;

    if-ne v0, v1, :cond_11

    .line 670
    new-instance v0, Ljxl/write/Label;

    check-cast p1, Ljxl/LabelCell;

    invoke-direct {v0, p1}, Ljxl/write/Label;-><init>(Ljxl/LabelCell;)V

    goto/16 :goto_83

    .line 672
    :cond_11
    sget-object v1, Ljxl/CellType;->NUMBER:Ljxl/CellType;

    if-ne v0, v1, :cond_1e

    .line 674
    new-instance v0, Ljxl/write/Number;

    check-cast p1, Ljxl/NumberCell;

    invoke-direct {v0, p1}, Ljxl/write/Number;-><init>(Ljxl/NumberCell;)V

    goto/16 :goto_83

    .line 676
    :cond_1e
    sget-object v1, Ljxl/CellType;->DATE:Ljxl/CellType;

    if-ne v0, v1, :cond_2a

    .line 678
    new-instance v0, Ljxl/write/DateTime;

    check-cast p1, Ljxl/DateCell;

    invoke-direct {v0, p1}, Ljxl/write/DateTime;-><init>(Ljxl/DateCell;)V

    goto :goto_83

    .line 680
    :cond_2a
    sget-object v1, Ljxl/CellType;->BOOLEAN:Ljxl/CellType;

    if-ne v0, v1, :cond_36

    .line 682
    new-instance v0, Ljxl/write/Boolean;

    check-cast p1, Ljxl/BooleanCell;

    invoke-direct {v0, p1}, Ljxl/write/Boolean;-><init>(Ljxl/BooleanCell;)V

    goto :goto_83

    .line 684
    :cond_36
    sget-object v1, Ljxl/CellType;->NUMBER_FORMULA:Ljxl/CellType;

    if-ne v0, v1, :cond_42

    .line 686
    new-instance v0, Ljxl/write/biff/ReadNumberFormulaRecord;

    check-cast p1, Ljxl/biff/FormulaData;

    invoke-direct {v0, p1}, Ljxl/write/biff/ReadNumberFormulaRecord;-><init>(Ljxl/biff/FormulaData;)V

    goto :goto_83

    .line 688
    :cond_42
    sget-object v1, Ljxl/CellType;->STRING_FORMULA:Ljxl/CellType;

    if-ne v0, v1, :cond_4e

    .line 690
    new-instance v0, Ljxl/write/biff/ReadStringFormulaRecord;

    check-cast p1, Ljxl/biff/FormulaData;

    invoke-direct {v0, p1}, Ljxl/write/biff/ReadStringFormulaRecord;-><init>(Ljxl/biff/FormulaData;)V

    goto :goto_83

    .line 692
    :cond_4e
    sget-object v1, Ljxl/CellType;->BOOLEAN_FORMULA:Ljxl/CellType;

    if-ne v0, v1, :cond_5a

    .line 694
    new-instance v0, Ljxl/write/biff/ReadBooleanFormulaRecord;

    check-cast p1, Ljxl/biff/FormulaData;

    invoke-direct {v0, p1}, Ljxl/write/biff/ReadBooleanFormulaRecord;-><init>(Ljxl/biff/FormulaData;)V

    goto :goto_83

    .line 696
    :cond_5a
    sget-object v1, Ljxl/CellType;->DATE_FORMULA:Ljxl/CellType;

    if-ne v0, v1, :cond_66

    .line 698
    new-instance v0, Ljxl/write/biff/ReadDateFormulaRecord;

    check-cast p1, Ljxl/biff/FormulaData;

    invoke-direct {v0, p1}, Ljxl/write/biff/ReadDateFormulaRecord;-><init>(Ljxl/biff/FormulaData;)V

    goto :goto_83

    .line 700
    :cond_66
    sget-object v1, Ljxl/CellType;->FORMULA_ERROR:Ljxl/CellType;

    if-ne v0, v1, :cond_72

    .line 702
    new-instance v0, Ljxl/write/biff/ReadErrorFormulaRecord;

    check-cast p1, Ljxl/biff/FormulaData;

    invoke-direct {v0, p1}, Ljxl/write/biff/ReadErrorFormulaRecord;-><init>(Ljxl/biff/FormulaData;)V

    goto :goto_83

    .line 704
    :cond_72
    sget-object v1, Ljxl/CellType;->EMPTY:Ljxl/CellType;

    if-ne v0, v1, :cond_82

    .line 706
    invoke-interface {p1}, Ljxl/Cell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v0

    if-eqz v0, :cond_82

    .line 711
    new-instance v0, Ljxl/write/Blank;

    invoke-direct {v0, p1}, Ljxl/write/Blank;-><init>(Ljxl/Cell;)V

    goto :goto_83

    :cond_82
    const/4 v0, 0x0

    :goto_83
    return-object v0
.end method


# virtual methods
.method public copySheet()V
    .registers 10

    .line 211
    invoke-virtual {p0}, Ljxl/write/biff/SheetCopier;->shallowCopyCells()V

    .line 214
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getColumnInfos()[Ljxl/read/biff/ColumnInfoRecord;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 216
    :goto_b
    array-length v3, v0

    if-ge v2, v3, :cond_33

    .line 218
    aget-object v3, v0, v2

    .line 219
    invoke-virtual {v3}, Ljxl/read/biff/ColumnInfoRecord;->getStartColumn()I

    move-result v4

    :goto_14
    invoke-virtual {v3}, Ljxl/read/biff/ColumnInfoRecord;->getEndColumn()I

    move-result v5

    if-gt v4, v5, :cond_30

    .line 221
    new-instance v5, Ljxl/write/biff/ColumnInfoRecord;

    iget-object v6, p0, Ljxl/write/biff/SheetCopier;->formatRecords:Ljxl/biff/FormattingRecords;

    invoke-direct {v5, v3, v4, v6}, Ljxl/write/biff/ColumnInfoRecord;-><init>(Ljxl/read/biff/ColumnInfoRecord;ILjxl/biff/FormattingRecords;)V

    .line 223
    invoke-virtual {v3}, Ljxl/read/biff/ColumnInfoRecord;->getHidden()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljxl/write/biff/ColumnInfoRecord;->setHidden(Z)V

    .line 224
    iget-object v6, p0, Ljxl/write/biff/SheetCopier;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v6, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 229
    :cond_33
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getHyperlinks()[Ljxl/Hyperlink;

    move-result-object v0

    const/4 v2, 0x0

    .line 230
    :goto_3a
    array-length v3, v0

    if-ge v2, v3, :cond_4e

    .line 232
    new-instance v3, Ljxl/write/WritableHyperlink;

    aget-object v4, v0, v2

    iget-object v5, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-direct {v3, v4, v5}, Ljxl/write/WritableHyperlink;-><init>(Ljxl/Hyperlink;Ljxl/write/WritableSheet;)V

    .line 234
    iget-object v4, p0, Ljxl/write/biff/SheetCopier;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 238
    :cond_4e
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getMergedCells()[Ljxl/Range;

    move-result-object v0

    const/4 v2, 0x0

    .line 240
    :goto_55
    array-length v3, v0

    if-ge v2, v3, :cond_6b

    .line 242
    iget-object v3, p0, Ljxl/write/biff/SheetCopier;->mergedCells:Ljxl/write/biff/MergedCells;

    new-instance v4, Ljxl/biff/SheetRangeImpl;

    aget-object v5, v0, v2

    check-cast v5, Ljxl/biff/SheetRangeImpl;

    iget-object v6, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-direct {v4, v5, v6}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/biff/SheetRangeImpl;Ljxl/Sheet;)V

    invoke-virtual {v3, v4}, Ljxl/write/biff/MergedCells;->add(Ljxl/Range;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    :cond_6b
    const/4 v0, 0x1

    .line 248
    :try_start_6c
    iget-object v2, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v2}, Ljxl/read/biff/SheetImpl;->getRowProperties()[Ljxl/read/biff/RowRecord;

    move-result-object v2

    const/4 v3, 0x0

    .line 250
    :goto_73
    array-length v4, v2

    if-ge v3, v4, :cond_c2

    .line 252
    iget-object v4, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljxl/read/biff/RowRecord;->getRowNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljxl/write/biff/WritableSheetImpl;->getRowRecord(I)Ljxl/write/biff/RowRecord;

    move-result-object v4

    .line 253
    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljxl/read/biff/RowRecord;->hasDefaultFormat()Z

    move-result v5

    if-eqz v5, :cond_97

    iget-object v5, p0, Ljxl/write/biff/SheetCopier;->formatRecords:Ljxl/biff/FormattingRecords;

    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljxl/read/biff/RowRecord;->getXFIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljxl/biff/FormattingRecords;->getXFRecord(I)Ljxl/biff/XFRecord;

    move-result-object v5

    goto :goto_98

    :cond_97
    const/4 v5, 0x0

    .line 255
    :goto_98
    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljxl/read/biff/RowRecord;->getRowHeight()I

    move-result v6

    aget-object v7, v2, v3

    invoke-virtual {v7}, Ljxl/read/biff/RowRecord;->matchesDefaultFontHeight()Z

    move-result v7

    aget-object v8, v2, v3

    invoke-virtual {v8}, Ljxl/read/biff/RowRecord;->isCollapsed()Z

    move-result v8

    invoke-virtual {v4, v6, v7, v8, v5}, Ljxl/write/biff/RowRecord;->setRowDetails(IZZLjxl/biff/XFRecord;)V

    .line 259
    iget v4, p0, Ljxl/write/biff/SheetCopier;->numRows:I

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljxl/read/biff/RowRecord;->getRowNumber()I

    move-result v5

    add-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Ljxl/write/biff/SheetCopier;->numRows:I
    :try_end_bc
    .catch Ljxl/write/biff/RowsExceededException; {:try_start_6c .. :try_end_bc} :catch_bf

    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    .line 266
    :catch_bf
    invoke-static {v1}, Lcommon/Assert;->verify(Z)V

    .line 274
    :cond_c2
    iget-object v2, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v2}, Ljxl/read/biff/SheetImpl;->getRowPageBreaks()[I

    move-result-object v2

    if-eqz v2, :cond_dd

    const/4 v3, 0x0

    .line 278
    :goto_cb
    array-length v4, v2

    if-ge v3, v4, :cond_dd

    .line 280
    iget-object v4, p0, Ljxl/write/biff/SheetCopier;->rowBreaks:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Integer;

    aget v6, v2, v3

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_cb

    .line 284
    :cond_dd
    iget-object v2, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v2}, Ljxl/read/biff/SheetImpl;->getColumnPageBreaks()[I

    move-result-object v2

    if-eqz v2, :cond_f8

    const/4 v3, 0x0

    .line 288
    :goto_e6
    array-length v4, v2

    if-ge v3, v4, :cond_f8

    .line 290
    iget-object v4, p0, Ljxl/write/biff/SheetCopier;->columnBreaks:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Integer;

    aget v6, v2, v3

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_e6

    .line 295
    :cond_f8
    iget-object v2, p0, Ljxl/write/biff/SheetCopier;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v3, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v3}, Ljxl/read/biff/SheetImpl;->getCharts()[Ljxl/biff/drawing/Chart;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljxl/write/biff/SheetWriter;->setCharts([Ljxl/biff/drawing/Chart;)V

    .line 298
    iget-object v2, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v2}, Ljxl/read/biff/SheetImpl;->getDrawings()[Ljxl/biff/drawing/DrawingGroupObject;

    move-result-object v2

    const/4 v3, 0x0

    .line 299
    :goto_10a
    array-length v4, v2

    if-ge v3, v4, :cond_1b3

    .line 301
    aget-object v4, v2, v3

    instance-of v4, v4, Ljxl/biff/drawing/Drawing;

    if-eqz v4, :cond_130

    .line 303
    new-instance v4, Ljxl/write/WritableImage;

    aget-object v5, v2, v3

    iget-object v6, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v6}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v6

    invoke-virtual {v6}, Ljxl/write/biff/WritableWorkbookImpl;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljxl/write/WritableImage;-><init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;)V

    .line 305
    iget-object v5, p0, Ljxl/write/biff/SheetCopier;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v5, p0, Ljxl/write/biff/SheetCopier;->images:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1af

    .line 308
    :cond_130
    aget-object v4, v2, v3

    instance-of v4, v4, Ljxl/biff/drawing/Comment;

    if-eqz v4, :cond_172

    .line 310
    new-instance v4, Ljxl/biff/drawing/Comment;

    aget-object v5, v2, v3

    iget-object v6, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v6}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v6

    invoke-virtual {v6}, Ljxl/write/biff/WritableWorkbookImpl;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v6

    iget-object v7, p0, Ljxl/write/biff/SheetCopier;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v4, v5, v6, v7}, Ljxl/biff/drawing/Comment;-><init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 314
    iget-object v5, p0, Ljxl/write/biff/SheetCopier;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v5, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v4}, Ljxl/biff/drawing/Comment;->getColumn()I

    move-result v6

    invoke-virtual {v4}, Ljxl/biff/drawing/Comment;->getRow()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljxl/write/biff/WritableSheetImpl;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v5

    check-cast v5, Ljxl/write/biff/CellValue;

    .line 319
    invoke-virtual {v5}, Ljxl/write/biff/CellValue;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v6

    if-eqz v6, :cond_166

    const/4 v6, 0x1

    goto :goto_167

    :cond_166
    const/4 v6, 0x0

    :goto_167
    invoke-static {v6}, Lcommon/Assert;->verify(Z)V

    .line 320
    invoke-virtual {v5}, Ljxl/write/biff/CellValue;->getWritableCellFeatures()Ljxl/write/WritableCellFeatures;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljxl/write/WritableCellFeatures;->setCommentDrawing(Ljxl/biff/drawing/Comment;)V

    goto :goto_1af

    .line 322
    :cond_172
    aget-object v4, v2, v3

    instance-of v4, v4, Ljxl/biff/drawing/Button;

    if-eqz v4, :cond_191

    .line 324
    new-instance v4, Ljxl/biff/drawing/Button;

    aget-object v5, v2, v3

    iget-object v6, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v6}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v6

    invoke-virtual {v6}, Ljxl/write/biff/WritableWorkbookImpl;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v6

    iget-object v7, p0, Ljxl/write/biff/SheetCopier;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v4, v5, v6, v7}, Ljxl/biff/drawing/Button;-><init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 329
    iget-object v5, p0, Ljxl/write/biff/SheetCopier;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1af

    .line 331
    :cond_191
    aget-object v4, v2, v3

    instance-of v4, v4, Ljxl/biff/drawing/ComboBox;

    if-eqz v4, :cond_1af

    .line 333
    new-instance v4, Ljxl/biff/drawing/ComboBox;

    aget-object v5, v2, v3

    iget-object v6, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v6}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v6

    invoke-virtual {v6}, Ljxl/write/biff/WritableWorkbookImpl;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v6

    iget-object v7, p0, Ljxl/write/biff/SheetCopier;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v4, v5, v6, v7}, Ljxl/biff/drawing/ComboBox;-><init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 338
    iget-object v5, p0, Ljxl/write/biff/SheetCopier;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1af
    :goto_1af
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_10a

    .line 343
    :cond_1b3
    iget-object v2, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v2}, Ljxl/read/biff/SheetImpl;->getDataValidation()Ljxl/biff/DataValidation;

    move-result-object v2

    if-eqz v2, :cond_1e0

    .line 346
    new-instance v3, Ljxl/biff/DataValidation;

    iget-object v4, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v4}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v4

    iget-object v5, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v5}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v5

    iget-object v6, p0, Ljxl/write/biff/SheetCopier;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v3, v2, v4, v5, v6}, Ljxl/biff/DataValidation;-><init>(Ljxl/biff/DataValidation;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v3, p0, Ljxl/write/biff/SheetCopier;->dataValidation:Ljxl/biff/DataValidation;

    .line 350
    invoke-virtual {v3}, Ljxl/biff/DataValidation;->getComboBoxObjectId()I

    move-result v2

    if-eqz v2, :cond_1e0

    .line 353
    iget-object v3, p0, Ljxl/write/biff/SheetCopier;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/biff/drawing/ComboBox;

    iput-object v2, p0, Ljxl/write/biff/SheetCopier;->comboBox:Ljxl/biff/drawing/ComboBox;

    .line 358
    :cond_1e0
    iget-object v2, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v2}, Ljxl/read/biff/SheetImpl;->getConditionalFormats()[Ljxl/biff/ConditionalFormat;

    move-result-object v2

    .line 359
    array-length v3, v2

    if-lez v3, :cond_1f6

    .line 361
    :goto_1e9
    array-length v3, v2

    if-ge v1, v3, :cond_1f6

    .line 363
    iget-object v3, p0, Ljxl/write/biff/SheetCopier;->conditionalFormats:Ljava/util/ArrayList;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e9

    .line 368
    :cond_1f6
    iget-object v1, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v1}, Ljxl/read/biff/SheetImpl;->getAutoFilter()Ljxl/biff/AutoFilter;

    move-result-object v1

    iput-object v1, p0, Ljxl/write/biff/SheetCopier;->autoFilter:Ljxl/biff/AutoFilter;

    .line 371
    iget-object v1, p0, Ljxl/write/biff/SheetCopier;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v2, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v2}, Ljxl/read/biff/SheetImpl;->getWorkspaceOptions()Ljxl/biff/WorkspaceInformationRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/write/biff/SheetWriter;->setWorkspaceOptions(Ljxl/biff/WorkspaceInformationRecord;)V

    .line 374
    iget-object v1, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v1}, Ljxl/read/biff/SheetImpl;->getSheetBof()Ljxl/read/biff/BOFRecord;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isChart()Z

    move-result v1

    if-eqz v1, :cond_21c

    .line 376
    iput-boolean v0, p0, Ljxl/write/biff/SheetCopier;->chartOnly:Z

    .line 377
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {v0}, Ljxl/write/biff/SheetWriter;->setChartOnly()V

    .line 381
    :cond_21c
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getPLS()Ljxl/read/biff/PLSRecord;

    move-result-object v0

    if-eqz v0, :cond_245

    .line 383
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getWorkbookBof()Ljxl/read/biff/BOFRecord;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff7()Z

    move-result v0

    if-eqz v0, :cond_238

    .line 385
    sget-object v0, Ljxl/write/biff/SheetCopier;->logger:Lcommon/Logger;

    const-string v1, "Cannot copy Biff7 print settings record - ignoring"

    invoke-virtual {v0, v1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_245

    .line 389
    :cond_238
    new-instance v0, Ljxl/write/biff/PLSRecord;

    iget-object v1, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v1}, Ljxl/read/biff/SheetImpl;->getPLS()Ljxl/read/biff/PLSRecord;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/write/biff/PLSRecord;-><init>(Ljxl/read/biff/PLSRecord;)V

    iput-object v0, p0, Ljxl/write/biff/SheetCopier;->plsRecord:Ljxl/write/biff/PLSRecord;

    .line 394
    :cond_245
    :goto_245
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getButtonPropertySet()Ljxl/read/biff/ButtonPropertySetRecord;

    move-result-object v0

    if-eqz v0, :cond_25a

    .line 396
    new-instance v0, Ljxl/write/biff/ButtonPropertySetRecord;

    iget-object v1, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v1}, Ljxl/read/biff/SheetImpl;->getButtonPropertySet()Ljxl/read/biff/ButtonPropertySetRecord;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/write/biff/ButtonPropertySetRecord;-><init>(Ljxl/read/biff/ButtonPropertySetRecord;)V

    iput-object v0, p0, Ljxl/write/biff/SheetCopier;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    :cond_25a
    return-void
.end method

.method deepCopyCells()V
    .registers 8

    .line 825
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getRows()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_2b

    .line 830
    iget-object v3, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v3, v2}, Ljxl/read/biff/SheetImpl;->getRow(I)[Ljxl/Cell;

    move-result-object v3

    const/4 v4, 0x0

    .line 832
    :goto_11
    array-length v5, v3

    if-ge v4, v5, :cond_28

    .line 834
    aget-object v5, v3, v4

    .line 835
    invoke-direct {p0, v5}, Ljxl/write/biff/SheetCopier;->deepCopyCell(Ljxl/Cell;)Ljxl/write/WritableCell;

    move-result-object v5

    if-eqz v5, :cond_25

    .line 846
    :try_start_1c
    iget-object v6, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v6, v5}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V
    :try_end_21
    .catch Ljxl/write/WriteException; {:try_start_1c .. :try_end_21} :catch_22

    goto :goto_25

    .line 851
    :catch_22
    invoke-static {v1}, Lcommon/Assert;->verify(Z)V

    :cond_25
    :goto_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2b
    return-void
.end method

.method getAutoFilter()Ljxl/biff/AutoFilter;
    .registers 2

    .line 177
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->autoFilter:Ljxl/biff/AutoFilter;

    return-object v0
.end method

.method getButtonPropertySet()Ljxl/write/biff/ButtonPropertySetRecord;
    .registers 2

    .line 202
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    return-object v0
.end method

.method getComboBox()Ljxl/biff/drawing/ComboBox;
    .registers 2

    .line 187
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->comboBox:Ljxl/biff/drawing/ComboBox;

    return-object v0
.end method

.method getDataValidation()Ljxl/biff/DataValidation;
    .registers 2

    .line 182
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->dataValidation:Ljxl/biff/DataValidation;

    return-object v0
.end method

.method getPLSRecord()Ljxl/write/biff/PLSRecord;
    .registers 2

    .line 192
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->plsRecord:Ljxl/write/biff/PLSRecord;

    return-object v0
.end method

.method getRows()I
    .registers 2

    .line 946
    iget v0, p0, Ljxl/write/biff/SheetCopier;->numRows:I

    return v0
.end method

.method public importSheet()V
    .registers 16

    .line 406
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljxl/write/biff/SheetCopier;->xfRecords:Ljava/util/HashMap;

    .line 407
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljxl/write/biff/SheetCopier;->fonts:Ljava/util/HashMap;

    .line 408
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljxl/write/biff/SheetCopier;->formats:Ljava/util/HashMap;

    .line 410
    invoke-virtual {p0}, Ljxl/write/biff/SheetCopier;->deepCopyCells()V

    .line 413
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getColumnInfos()[Ljxl/read/biff/ColumnInfoRecord;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 415
    :goto_20
    array-length v3, v0

    if-ge v2, v3, :cond_69

    .line 417
    aget-object v3, v0, v2

    .line 418
    invoke-virtual {v3}, Ljxl/read/biff/ColumnInfoRecord;->getStartColumn()I

    move-result v4

    :goto_29
    invoke-virtual {v3}, Ljxl/read/biff/ColumnInfoRecord;->getEndColumn()I

    move-result v5

    if-gt v4, v5, :cond_66

    .line 420
    new-instance v5, Ljxl/write/biff/ColumnInfoRecord;

    invoke-direct {v5, v3, v4}, Ljxl/write/biff/ColumnInfoRecord;-><init>(Ljxl/read/biff/ColumnInfoRecord;I)V

    .line 421
    invoke-virtual {v5}, Ljxl/write/biff/ColumnInfoRecord;->getXfIndex()I

    move-result v6

    .line 422
    iget-object v7, p0, Ljxl/write/biff/SheetCopier;->xfRecords:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljxl/write/WritableCellFormat;

    if-nez v6, :cond_54

    .line 426
    iget-object v7, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v7, v4}, Ljxl/read/biff/SheetImpl;->getColumnView(I)Ljxl/CellView;

    move-result-object v7

    invoke-virtual {v7}, Ljxl/CellView;->getFormat()Ljxl/format/CellFormat;

    move-result-object v7

    .line 427
    invoke-direct {p0, v7}, Ljxl/write/biff/SheetCopier;->copyCellFormat(Ljxl/format/CellFormat;)Ljxl/write/WritableCellFormat;

    .line 430
    :cond_54
    invoke-virtual {v5, v6}, Ljxl/write/biff/ColumnInfoRecord;->setCellFormat(Ljxl/biff/XFRecord;)V

    .line 431
    invoke-virtual {v3}, Ljxl/read/biff/ColumnInfoRecord;->getHidden()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljxl/write/biff/ColumnInfoRecord;->setHidden(Z)V

    .line 432
    iget-object v6, p0, Ljxl/write/biff/SheetCopier;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v6, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 437
    :cond_69
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getHyperlinks()[Ljxl/Hyperlink;

    move-result-object v0

    const/4 v2, 0x0

    .line 438
    :goto_70
    array-length v3, v0

    if-ge v2, v3, :cond_84

    .line 440
    new-instance v3, Ljxl/write/WritableHyperlink;

    aget-object v4, v0, v2

    iget-object v5, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-direct {v3, v4, v5}, Ljxl/write/WritableHyperlink;-><init>(Ljxl/Hyperlink;Ljxl/write/WritableSheet;)V

    .line 442
    iget-object v4, p0, Ljxl/write/biff/SheetCopier;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_70

    .line 446
    :cond_84
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getMergedCells()[Ljxl/Range;

    move-result-object v0

    const/4 v2, 0x0

    .line 448
    :goto_8b
    array-length v3, v0

    if-ge v2, v3, :cond_a1

    .line 450
    iget-object v3, p0, Ljxl/write/biff/SheetCopier;->mergedCells:Ljxl/write/biff/MergedCells;

    new-instance v4, Ljxl/biff/SheetRangeImpl;

    aget-object v5, v0, v2

    check-cast v5, Ljxl/biff/SheetRangeImpl;

    iget-object v6, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-direct {v4, v5, v6}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/biff/SheetRangeImpl;Ljxl/Sheet;)V

    invoke-virtual {v3, v4}, Ljxl/write/biff/MergedCells;->add(Ljxl/Range;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8b

    :cond_a1
    const/4 v0, 0x1

    .line 456
    :try_start_a2
    iget-object v2, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v2}, Ljxl/read/biff/SheetImpl;->getRowProperties()[Ljxl/read/biff/RowRecord;

    move-result-object v2

    const/4 v3, 0x0

    .line 458
    :goto_a9
    array-length v4, v2

    if-ge v3, v4, :cond_109

    .line 460
    iget-object v4, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljxl/read/biff/RowRecord;->getRowNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljxl/write/biff/WritableSheetImpl;->getRowRecord(I)Ljxl/write/biff/RowRecord;

    move-result-object v4

    const/4 v5, 0x0

    .line 462
    aget-object v6, v2, v3

    .line 463
    invoke-virtual {v6}, Ljxl/read/biff/RowRecord;->hasDefaultFormat()Z

    move-result v7

    if-eqz v7, :cond_e5

    .line 465
    iget-object v5, p0, Ljxl/write/biff/SheetCopier;->xfRecords:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljxl/read/biff/RowRecord;->getXFIndex()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljxl/write/WritableCellFormat;

    if-nez v5, :cond_e5

    .line 470
    invoke-virtual {v6}, Ljxl/read/biff/RowRecord;->getRowNumber()I

    move-result v7

    .line 471
    iget-object v8, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v8, v7}, Ljxl/read/biff/SheetImpl;->getRowView(I)Ljxl/CellView;

    move-result-object v7

    invoke-virtual {v7}, Ljxl/CellView;->getFormat()Ljxl/format/CellFormat;

    move-result-object v7

    .line 472
    invoke-direct {p0, v7}, Ljxl/write/biff/SheetCopier;->copyCellFormat(Ljxl/format/CellFormat;)Ljxl/write/WritableCellFormat;

    .line 476
    :cond_e5
    invoke-virtual {v6}, Ljxl/read/biff/RowRecord;->getRowHeight()I

    move-result v7

    invoke-virtual {v6}, Ljxl/read/biff/RowRecord;->matchesDefaultFontHeight()Z

    move-result v8

    invoke-virtual {v6}, Ljxl/read/biff/RowRecord;->isCollapsed()Z

    move-result v6

    invoke-virtual {v4, v7, v8, v6, v5}, Ljxl/write/biff/RowRecord;->setRowDetails(IZZLjxl/biff/XFRecord;)V

    .line 480
    iget v4, p0, Ljxl/write/biff/SheetCopier;->numRows:I

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljxl/read/biff/RowRecord;->getRowNumber()I

    move-result v5

    add-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Ljxl/write/biff/SheetCopier;->numRows:I
    :try_end_103
    .catch Ljxl/write/biff/RowsExceededException; {:try_start_a2 .. :try_end_103} :catch_106

    add-int/lit8 v3, v3, 0x1

    goto :goto_a9

    .line 487
    :catch_106
    invoke-static {v1}, Lcommon/Assert;->verify(Z)V

    .line 495
    :cond_109
    iget-object v2, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v2}, Ljxl/read/biff/SheetImpl;->getRowPageBreaks()[I

    move-result-object v2

    if-eqz v2, :cond_124

    const/4 v3, 0x0

    .line 499
    :goto_112
    array-length v4, v2

    if-ge v3, v4, :cond_124

    .line 501
    iget-object v4, p0, Ljxl/write/biff/SheetCopier;->rowBreaks:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Integer;

    aget v6, v2, v3

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_112

    .line 505
    :cond_124
    iget-object v2, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v2}, Ljxl/read/biff/SheetImpl;->getColumnPageBreaks()[I

    move-result-object v2

    if-eqz v2, :cond_13f

    const/4 v3, 0x0

    .line 509
    :goto_12d
    array-length v4, v2

    if-ge v3, v4, :cond_13f

    .line 511
    iget-object v4, p0, Ljxl/write/biff/SheetCopier;->columnBreaks:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Integer;

    aget v6, v2, v3

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_12d

    .line 516
    :cond_13f
    iget-object v2, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v2}, Ljxl/read/biff/SheetImpl;->getCharts()[Ljxl/biff/drawing/Chart;

    move-result-object v2

    if-eqz v2, :cond_151

    .line 517
    array-length v2, v2

    if-lez v2, :cond_151

    .line 519
    sget-object v2, Ljxl/write/biff/SheetCopier;->logger:Lcommon/Logger;

    const-string v3, "Importing of charts is not supported"

    invoke-virtual {v2, v3}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 556
    :cond_151
    iget-object v2, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v2}, Ljxl/read/biff/SheetImpl;->getDrawings()[Ljxl/biff/drawing/DrawingGroupObject;

    move-result-object v2

    .line 560
    array-length v3, v2

    if-lez v3, :cond_16f

    iget-object v3, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v3}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v3

    invoke-virtual {v3}, Ljxl/write/biff/WritableWorkbookImpl;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v3

    if-nez v3, :cond_16f

    .line 563
    iget-object v3, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v3}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v3

    invoke-virtual {v3}, Ljxl/write/biff/WritableWorkbookImpl;->createDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    :cond_16f
    const/4 v3, 0x0

    .line 566
    :goto_170
    array-length v4, v2

    if-ge v3, v4, :cond_235

    .line 568
    aget-object v4, v2, v3

    instance-of v4, v4, Ljxl/biff/drawing/Drawing;

    if-eqz v4, :cond_1b2

    .line 570
    new-instance v4, Ljxl/write/WritableImage;

    aget-object v5, v2, v3

    invoke-interface {v5}, Ljxl/biff/drawing/DrawingGroupObject;->getX()D

    move-result-wide v6

    aget-object v5, v2, v3

    invoke-interface {v5}, Ljxl/biff/drawing/DrawingGroupObject;->getY()D

    move-result-wide v8

    aget-object v5, v2, v3

    invoke-interface {v5}, Ljxl/biff/drawing/DrawingGroupObject;->getWidth()D

    move-result-wide v10

    aget-object v5, v2, v3

    invoke-interface {v5}, Ljxl/biff/drawing/DrawingGroupObject;->getHeight()D

    move-result-wide v12

    aget-object v5, v2, v3

    invoke-interface {v5}, Ljxl/biff/drawing/DrawingGroupObject;->getImageData()[B

    move-result-object v14

    move-object v5, v4

    invoke-direct/range {v5 .. v14}, Ljxl/write/WritableImage;-><init>(DDDD[B)V

    .line 574
    iget-object v5, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v5}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljxl/write/biff/WritableWorkbookImpl;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 575
    iget-object v5, p0, Ljxl/write/biff/SheetCopier;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    iget-object v5, p0, Ljxl/write/biff/SheetCopier;->images:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_231

    .line 578
    :cond_1b2
    aget-object v4, v2, v3

    instance-of v4, v4, Ljxl/biff/drawing/Comment;

    if-eqz v4, :cond_1f4

    .line 580
    new-instance v4, Ljxl/biff/drawing/Comment;

    aget-object v5, v2, v3

    iget-object v6, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v6}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v6

    invoke-virtual {v6}, Ljxl/write/biff/WritableWorkbookImpl;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v6

    iget-object v7, p0, Ljxl/write/biff/SheetCopier;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v4, v5, v6, v7}, Ljxl/biff/drawing/Comment;-><init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 584
    iget-object v5, p0, Ljxl/write/biff/SheetCopier;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    iget-object v5, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v4}, Ljxl/biff/drawing/Comment;->getColumn()I

    move-result v6

    invoke-virtual {v4}, Ljxl/biff/drawing/Comment;->getRow()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljxl/write/biff/WritableSheetImpl;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v5

    check-cast v5, Ljxl/write/biff/CellValue;

    .line 589
    invoke-virtual {v5}, Ljxl/write/biff/CellValue;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v6

    if-eqz v6, :cond_1e8

    const/4 v6, 0x1

    goto :goto_1e9

    :cond_1e8
    const/4 v6, 0x0

    :goto_1e9
    invoke-static {v6}, Lcommon/Assert;->verify(Z)V

    .line 590
    invoke-virtual {v5}, Ljxl/write/biff/CellValue;->getWritableCellFeatures()Ljxl/write/WritableCellFeatures;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljxl/write/WritableCellFeatures;->setCommentDrawing(Ljxl/biff/drawing/Comment;)V

    goto :goto_231

    .line 592
    :cond_1f4
    aget-object v4, v2, v3

    instance-of v4, v4, Ljxl/biff/drawing/Button;

    if-eqz v4, :cond_213

    .line 594
    new-instance v4, Ljxl/biff/drawing/Button;

    aget-object v5, v2, v3

    iget-object v6, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v6}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v6

    invoke-virtual {v6}, Ljxl/write/biff/WritableWorkbookImpl;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v6

    iget-object v7, p0, Ljxl/write/biff/SheetCopier;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v4, v5, v6, v7}, Ljxl/biff/drawing/Button;-><init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 599
    iget-object v5, p0, Ljxl/write/biff/SheetCopier;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_231

    .line 601
    :cond_213
    aget-object v4, v2, v3

    instance-of v4, v4, Ljxl/biff/drawing/ComboBox;

    if-eqz v4, :cond_231

    .line 603
    new-instance v4, Ljxl/biff/drawing/ComboBox;

    aget-object v5, v2, v3

    iget-object v6, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v6}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v6

    invoke-virtual {v6}, Ljxl/write/biff/WritableWorkbookImpl;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v6

    iget-object v7, p0, Ljxl/write/biff/SheetCopier;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v4, v5, v6, v7}, Ljxl/biff/drawing/ComboBox;-><init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 608
    iget-object v5, p0, Ljxl/write/biff/SheetCopier;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_231
    :goto_231
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_170

    .line 613
    :cond_235
    iget-object v1, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v1}, Ljxl/read/biff/SheetImpl;->getDataValidation()Ljxl/biff/DataValidation;

    move-result-object v1

    if-eqz v1, :cond_262

    .line 616
    new-instance v2, Ljxl/biff/DataValidation;

    iget-object v3, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v3}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v3

    iget-object v4, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v4}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v4

    iget-object v5, p0, Ljxl/write/biff/SheetCopier;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v2, v1, v3, v4, v5}, Ljxl/biff/DataValidation;-><init>(Ljxl/biff/DataValidation;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v2, p0, Ljxl/write/biff/SheetCopier;->dataValidation:Ljxl/biff/DataValidation;

    .line 620
    invoke-virtual {v2}, Ljxl/biff/DataValidation;->getComboBoxObjectId()I

    move-result v1

    if-eqz v1, :cond_262

    .line 623
    iget-object v2, p0, Ljxl/write/biff/SheetCopier;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/drawing/ComboBox;

    iput-object v1, p0, Ljxl/write/biff/SheetCopier;->comboBox:Ljxl/biff/drawing/ComboBox;

    .line 628
    :cond_262
    iget-object v1, p0, Ljxl/write/biff/SheetCopier;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v2, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v2}, Ljxl/read/biff/SheetImpl;->getWorkspaceOptions()Ljxl/biff/WorkspaceInformationRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/write/biff/SheetWriter;->setWorkspaceOptions(Ljxl/biff/WorkspaceInformationRecord;)V

    .line 631
    iget-object v1, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v1}, Ljxl/read/biff/SheetImpl;->getSheetBof()Ljxl/read/biff/BOFRecord;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isChart()Z

    move-result v1

    if-eqz v1, :cond_280

    .line 633
    iput-boolean v0, p0, Ljxl/write/biff/SheetCopier;->chartOnly:Z

    .line 634
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {v0}, Ljxl/write/biff/SheetWriter;->setChartOnly()V

    .line 638
    :cond_280
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getPLS()Ljxl/read/biff/PLSRecord;

    move-result-object v0

    if-eqz v0, :cond_2a9

    .line 640
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getWorkbookBof()Ljxl/read/biff/BOFRecord;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff7()Z

    move-result v0

    if-eqz v0, :cond_29c

    .line 642
    sget-object v0, Ljxl/write/biff/SheetCopier;->logger:Lcommon/Logger;

    const-string v1, "Cannot copy Biff7 print settings record - ignoring"

    invoke-virtual {v0, v1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_2a9

    .line 646
    :cond_29c
    new-instance v0, Ljxl/write/biff/PLSRecord;

    iget-object v1, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v1}, Ljxl/read/biff/SheetImpl;->getPLS()Ljxl/read/biff/PLSRecord;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/write/biff/PLSRecord;-><init>(Ljxl/read/biff/PLSRecord;)V

    iput-object v0, p0, Ljxl/write/biff/SheetCopier;->plsRecord:Ljxl/write/biff/PLSRecord;

    .line 651
    :cond_2a9
    :goto_2a9
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getButtonPropertySet()Ljxl/read/biff/ButtonPropertySetRecord;

    move-result-object v0

    if-eqz v0, :cond_2be

    .line 653
    new-instance v0, Ljxl/write/biff/ButtonPropertySetRecord;

    iget-object v1, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v1}, Ljxl/read/biff/SheetImpl;->getButtonPropertySet()Ljxl/read/biff/ButtonPropertySetRecord;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/write/biff/ButtonPropertySetRecord;-><init>(Ljxl/read/biff/ButtonPropertySetRecord;)V

    iput-object v0, p0, Ljxl/write/biff/SheetCopier;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    .line 657
    :cond_2be
    invoke-direct {p0}, Ljxl/write/biff/SheetCopier;->importNames()V

    return-void
.end method

.method isChartOnly()Z
    .registers 2

    .line 197
    iget-boolean v0, p0, Ljxl/write/biff/SheetCopier;->chartOnly:Z

    return v0
.end method

.method setColumnBreaks(Ljava/util/ArrayList;)V
    .registers 2

    .line 152
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->columnBreaks:Ljava/util/ArrayList;

    return-void
.end method

.method setColumnFormats(Ljava/util/TreeSet;)V
    .registers 2

    .line 127
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->columnFormats:Ljava/util/TreeSet;

    return-void
.end method

.method setConditionalFormats(Ljava/util/ArrayList;)V
    .registers 2

    .line 172
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->conditionalFormats:Ljava/util/ArrayList;

    return-void
.end method

.method setDrawings(Ljava/util/ArrayList;)V
    .registers 2

    .line 162
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->drawings:Ljava/util/ArrayList;

    return-void
.end method

.method setFormatRecords(Ljxl/biff/FormattingRecords;)V
    .registers 2

    .line 132
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->formatRecords:Ljxl/biff/FormattingRecords;

    return-void
.end method

.method setHyperlinks(Ljava/util/ArrayList;)V
    .registers 2

    .line 137
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->hyperlinks:Ljava/util/ArrayList;

    return-void
.end method

.method setImages(Ljava/util/ArrayList;)V
    .registers 2

    .line 167
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->images:Ljava/util/ArrayList;

    return-void
.end method

.method setMergedCells(Ljxl/write/biff/MergedCells;)V
    .registers 2

    .line 142
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->mergedCells:Ljxl/write/biff/MergedCells;

    return-void
.end method

.method setRowBreaks(Ljava/util/ArrayList;)V
    .registers 2

    .line 147
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->rowBreaks:Ljava/util/ArrayList;

    return-void
.end method

.method setSheetWriter(Ljxl/write/biff/SheetWriter;)V
    .registers 2

    .line 157
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->sheetWriter:Ljxl/write/biff/SheetWriter;

    return-void
.end method

.method shallowCopyCells()V
    .registers 8

    .line 786
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getRows()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_2b

    .line 791
    iget-object v3, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v3, v2}, Ljxl/read/biff/SheetImpl;->getRow(I)[Ljxl/Cell;

    move-result-object v3

    const/4 v4, 0x0

    .line 793
    :goto_11
    array-length v5, v3

    if-ge v4, v5, :cond_28

    .line 795
    aget-object v5, v3, v4

    .line 796
    invoke-direct {p0, v5}, Ljxl/write/biff/SheetCopier;->shallowCopyCell(Ljxl/Cell;)Ljxl/write/WritableCell;

    move-result-object v5

    if-eqz v5, :cond_25

    .line 807
    :try_start_1c
    iget-object v6, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v6, v5}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V
    :try_end_21
    .catch Ljxl/write/WriteException; {:try_start_1c .. :try_end_21} :catch_22

    goto :goto_25

    .line 812
    :catch_22
    invoke-static {v1}, Lcommon/Assert;->verify(Z)V

    :cond_25
    :goto_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 816
    :cond_2b
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getRows()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/SheetCopier;->numRows:I

    return-void
.end method
