.class public Lcom/speedata/libutils/excel/ExcelManager;
.super Ljava/lang/Object;
.source "ExcelManager.java"


# instance fields
.field private context:Landroid/content/Context;

.field private excelUtil:Lcom/speedata/libutils/excel/ExcelUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/speedata/libutils/excel/ExcelUtils;)V
    .registers 5

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/speedata/libutils/excel/ExcelManager;->context:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/speedata/libutils/excel/ExcelManager;->excelUtil:Lcom/speedata/libutils/excel/ExcelUtils;

    .line 38
    :try_start_7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    if-eq p1, p2, :cond_1f

    .line 39
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "---------------\u975e\u4e3b\u7ebf\u7a0b \u6267\u884cLooper.prepare---------------"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 42
    :cond_1f
    invoke-virtual {p0}, Lcom/speedata/libutils/excel/ExcelManager;->writeExcel()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_22} :catch_23

    goto :goto_33

    :catch_23
    move-exception p1

    .line 44
    iget-object p2, p0, Lcom/speedata/libutils/excel/ExcelManager;->context:Landroid/content/Context;

    const/4 v0, 0x1

    const-string v1, "\u751f\u6210Excel\u53d1\u751f\u5f02\u5e38"

    invoke-static {p2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 45
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_33
    return-void
.end method


# virtual methods
.method public getHeader()Ljxl/write/WritableCellFormat;
    .registers 6

    .line 94
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v1, Ljxl/write/WritableFont;->TIMES:Ljxl/write/WritableFont$FontName;

    iget-object v2, p0, Lcom/speedata/libutils/excel/ExcelManager;->excelUtil:Lcom/speedata/libutils/excel/ExcelUtils;

    invoke-virtual {v2}, Lcom/speedata/libutils/excel/ExcelUtils;->getFONT_TIMES()I

    move-result v2

    sget-object v3, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    iget-object v4, p0, Lcom/speedata/libutils/excel/ExcelManager;->excelUtil:Lcom/speedata/libutils/excel/ExcelUtils;

    .line 95
    invoke-virtual {v4}, Lcom/speedata/libutils/excel/ExcelUtils;->isFONT_BOLD()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;Z)V

    .line 97
    :try_start_15
    iget-object v1, p0, Lcom/speedata/libutils/excel/ExcelManager;->excelUtil:Lcom/speedata/libutils/excel/ExcelUtils;

    invoke-virtual {v1}, Lcom/speedata/libutils/excel/ExcelUtils;->getFONT_COLOR()Ljxl/format/Colour;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljxl/write/WritableFont;->setColour(Ljxl/format/Colour;)V
    :try_end_1e
    .catch Ljxl/write/WriteException; {:try_start_15 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception v1

    .line 99
    invoke-virtual {v1}, Ljxl/write/WriteException;->printStackTrace()V

    .line 101
    :goto_23
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 103
    :try_start_28
    iget-object v0, p0, Lcom/speedata/libutils/excel/ExcelManager;->excelUtil:Lcom/speedata/libutils/excel/ExcelUtils;

    invoke-virtual {v0}, Lcom/speedata/libutils/excel/ExcelUtils;->getFONT_ALIGNMENT()Ljxl/format/Alignment;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljxl/write/WritableCellFormat;->setAlignment(Ljxl/format/Alignment;)V

    .line 104
    iget-object v0, p0, Lcom/speedata/libutils/excel/ExcelManager;->excelUtil:Lcom/speedata/libutils/excel/ExcelUtils;

    invoke-virtual {v0}, Lcom/speedata/libutils/excel/ExcelUtils;->getFONT_VERTICAL()Ljxl/format/VerticalAlignment;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljxl/write/WritableCellFormat;->setVerticalAlignment(Ljxl/format/VerticalAlignment;)V

    .line 105
    iget-object v0, p0, Lcom/speedata/libutils/excel/ExcelManager;->excelUtil:Lcom/speedata/libutils/excel/ExcelUtils;

    invoke-virtual {v0}, Lcom/speedata/libutils/excel/ExcelUtils;->getBACKGROND_COLOR()Ljxl/format/Colour;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljxl/write/WritableCellFormat;->setBackground(Ljxl/format/Colour;)V

    .line 106
    sget-object v0, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v2, Ljxl/format/BorderLineStyle;->THIN:Ljxl/format/BorderLineStyle;

    invoke-virtual {v1, v0, v2}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V
    :try_end_4a
    .catch Ljxl/write/WriteException; {:try_start_28 .. :try_end_4a} :catch_4b

    goto :goto_4f

    :catch_4b
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljxl/write/WriteException;->printStackTrace()V

    :goto_4f
    return-object v1
.end method

.method public writeExcel()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/speedata/libutils/excel/ExcelManager;->excelUtil:Lcom/speedata/libutils/excel/ExcelUtils;

    invoke-virtual {v1}, Lcom/speedata/libutils/excel/ExcelUtils;->getWirteExcelPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 59
    invoke-static {v1}, Ljxl/Workbook;->createWorkbook(Ljava/io/OutputStream;)Ljxl/write/WritableWorkbook;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/speedata/libutils/excel/ExcelManager;->excelUtil:Lcom/speedata/libutils/excel/ExcelUtils;

    invoke-virtual {v1}, Lcom/speedata/libutils/excel/ExcelUtils;->getSHEET_NAME()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljxl/write/WritableWorkbook;->createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;

    move-result-object v1

    const/4 v3, 0x0

    .line 64
    :goto_20
    iget-object v4, p0, Lcom/speedata/libutils/excel/ExcelManager;->excelUtil:Lcom/speedata/libutils/excel/ExcelUtils;

    invoke-virtual {v4}, Lcom/speedata/libutils/excel/ExcelUtils;->getTitle_lsit()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_49

    .line 67
    new-instance v4, Ljxl/write/Label;

    iget-object v5, p0, Lcom/speedata/libutils/excel/ExcelManager;->excelUtil:Lcom/speedata/libutils/excel/ExcelUtils;

    invoke-virtual {v5}, Lcom/speedata/libutils/excel/ExcelUtils;->getTitle_lsit()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/speedata/libutils/excel/ExcelManager;->getHeader()Ljxl/write/WritableCellFormat;

    move-result-object v6

    invoke-direct {v4, v3, v2, v5, v6}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 69
    invoke-interface {v1, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_49
    const/4 v3, 0x0

    .line 73
    :goto_4a
    iget-object v4, p0, Lcom/speedata/libutils/excel/ExcelManager;->excelUtil:Lcom/speedata/libutils/excel/ExcelUtils;

    invoke-virtual {v4}, Lcom/speedata/libutils/excel/ExcelUtils;->getCONTENT_LIST()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_86

    .line 74
    iget-object v4, p0, Lcom/speedata/libutils/excel/ExcelManager;->excelUtil:Lcom/speedata/libutils/excel/ExcelUtils;

    invoke-virtual {v4}, Lcom/speedata/libutils/excel/ExcelUtils;->getCONTENT_LIST()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 76
    :goto_65
    array-length v6, v4

    if-ge v5, v6, :cond_77

    .line 77
    new-instance v6, Ljxl/write/Label;

    add-int/lit8 v7, v3, 0x1

    aget-object v8, v4, v5

    invoke-direct {v6, v5, v7, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 78
    invoke-interface {v1, v6}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_65

    .line 80
    :cond_77
    iget-object v4, p0, Lcom/speedata/libutils/excel/ExcelManager;->context:Landroid/content/Context;

    const/4 v5, 0x1

    const-string v6, "\u5199\u5165\u6210\u529f"

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    .line 84
    :cond_86
    invoke-virtual {v0}, Ljxl/write/WritableWorkbook;->write()V

    .line 86
    invoke-virtual {v0}, Ljxl/write/WritableWorkbook;->close()V

    return-void
.end method
