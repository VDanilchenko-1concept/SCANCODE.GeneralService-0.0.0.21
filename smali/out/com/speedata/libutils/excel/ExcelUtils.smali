.class public Lcom/speedata/libutils/excel/ExcelUtils;
.super Ljava/lang/Object;
.source "ExcelUtils.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static mInstance:Lcom/speedata/libutils/excel/ExcelUtils;


# instance fields
.field BACKGROND_COLOR:Ljxl/format/Colour;

.field CONTENT_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field FONT_ALIGNMENT:Ljxl/format/Alignment;

.field FONT_BOLD:Z

.field FONT_COLOR:Ljxl/format/Colour;

.field FONT_TIMES:I

.field FONT_VERTICAL:Ljxl/format/VerticalAlignment;

.field SHEET_NAME:Ljava/lang/String;

.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field title_lsit:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field wirteExcelPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/speedata/libutils/excel/ExcelUtils;->title_lsit:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/speedata/libutils/excel/ExcelUtils;->CONTENT_LIST:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/testExcel.xls"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/speedata/libutils/excel/ExcelUtils;->wirteExcelPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/speedata/libutils/excel/ExcelUtils;->FONT_BOLD:Z

    const/16 v0, 0xa

    .line 45
    iput v0, p0, Lcom/speedata/libutils/excel/ExcelUtils;->FONT_TIMES:I

    .line 46
    sget-object v0, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    iput-object v0, p0, Lcom/speedata/libutils/excel/ExcelUtils;->FONT_COLOR:Ljxl/format/Colour;

    .line 47
    sget-object v0, Ljxl/format/Colour;->WHITE:Ljxl/format/Colour;

    iput-object v0, p0, Lcom/speedata/libutils/excel/ExcelUtils;->BACKGROND_COLOR:Ljxl/format/Colour;

    .line 48
    sget-object v0, Ljxl/format/Alignment;->CENTRE:Ljxl/format/Alignment;

    iput-object v0, p0, Lcom/speedata/libutils/excel/ExcelUtils;->FONT_ALIGNMENT:Ljxl/format/Alignment;

    .line 49
    sget-object v0, Ljxl/format/VerticalAlignment;->CENTRE:Ljxl/format/VerticalAlignment;

    iput-object v0, p0, Lcom/speedata/libutils/excel/ExcelUtils;->FONT_VERTICAL:Ljxl/format/VerticalAlignment;

    return-void
.end method

.method public static getInstance()Lcom/speedata/libutils/excel/ExcelUtils;
    .registers 2

    .line 57
    sget-object v0, Lcom/speedata/libutils/excel/ExcelUtils;->mInstance:Lcom/speedata/libutils/excel/ExcelUtils;

    if-nez v0, :cond_17

    .line 58
    const-class v0, Lcom/speedata/libutils/excel/ExcelUtils;

    monitor-enter v0

    .line 59
    :try_start_7
    sget-object v1, Lcom/speedata/libutils/excel/ExcelUtils;->mInstance:Lcom/speedata/libutils/excel/ExcelUtils;

    if-nez v1, :cond_12

    .line 60
    new-instance v1, Lcom/speedata/libutils/excel/ExcelUtils;

    invoke-direct {v1}, Lcom/speedata/libutils/excel/ExcelUtils;-><init>()V

    sput-object v1, Lcom/speedata/libutils/excel/ExcelUtils;->mInstance:Lcom/speedata/libutils/excel/ExcelUtils;

    .line 62
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 64
    :cond_17
    :goto_17
    sget-object v0, Lcom/speedata/libutils/excel/ExcelUtils;->mInstance:Lcom/speedata/libutils/excel/ExcelUtils;

    return-object v0
.end method


# virtual methods
.method public clearData()V
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/speedata/libutils/excel/ExcelUtils;->title_lsit:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 192
    iget-object v0, p0, Lcom/speedata/libutils/excel/ExcelUtils;->CONTENT_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public createExcel(Landroid/app/Activity;)Lcom/speedata/libutils/excel/ExcelUtils;
    .registers 4

    .line 183
    new-instance v0, Lcom/speedata/libutils/excel/ExcelManager;

    sget-object v1, Lcom/speedata/libutils/excel/ExcelUtils;->mInstance:Lcom/speedata/libutils/excel/ExcelUtils;

    invoke-direct {v0, p1, v1}, Lcom/speedata/libutils/excel/ExcelManager;-><init>(Landroid/content/Context;Lcom/speedata/libutils/excel/ExcelUtils;)V

    return-object p0
.end method

.method public getBACKGROND_COLOR()Ljxl/format/Colour;
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/speedata/libutils/excel/ExcelUtils;->BACKGROND_COLOR:Ljxl/format/Colour;

    return-object v0
.end method

.method public getCONTENT_LIST()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/speedata/libutils/excel/ExcelUtils;->CONTENT_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getContentList(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lcom/speedata/libutils/excel/ExcelUtils;->clearData()V

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 284
    invoke-static {p1}, Ljxl/Workbook;->getWorkbook(Ljava/io/File;)Ljxl/Workbook;

    move-result-object p1

    .line 285
    invoke-virtual {p1, p2}, Ljxl/Workbook;->getSheet(Ljava/lang/String;)Ljxl/Sheet;

    move-result-object p1

    .line 286
    invoke-interface {p1}, Ljxl/Sheet;->getColumns()I

    move-result p2

    .line 287
    invoke-interface {p1}, Ljxl/Sheet;->getRows()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput p2, v3, v2

    const/4 v2, 0x0

    aput v1, v3, v2

    .line 288
    const-class v4, Ljava/lang/String;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/String;

    const/4 v4, 0x0

    :goto_30
    if-ge v4, v1, :cond_47

    const/4 v5, 0x0

    :goto_33
    if-ge v5, p2, :cond_44

    .line 291
    aget-object v6, v3, v4

    invoke-interface {p1, v5, v4}, Ljxl/Sheet;->getCell(II)Ljxl/Cell;

    move-result-object v7

    invoke-interface {v7}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 296
    :cond_47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 298
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/speedata/libutils/excel/ExcelUtils;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public getFONT_ALIGNMENT()Ljxl/format/Alignment;
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/speedata/libutils/excel/ExcelUtils;->FONT_ALIGNMENT:Ljxl/format/Alignment;

    return-object v0
.end method

.method public getFONT_COLOR()Ljxl/format/Colour;
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/speedata/libutils/excel/ExcelUtils;->FONT_COLOR:Ljxl/format/Colour;

    return-object v0
.end method

.method public getFONT_TIMES()I
    .registers 2

    .line 117
    iget v0, p0, Lcom/speedata/libutils/excel/ExcelUtils;->FONT_TIMES:I

    return v0
.end method

.method public getFONT_VERTICAL()Ljxl/format/VerticalAlignment;
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/speedata/libutils/excel/ExcelUtils;->FONT_VERTICAL:Ljxl/format/VerticalAlignment;

    return-object v0
.end method

.method public getSHEET_NAME()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/speedata/libutils/excel/ExcelUtils;->SHEET_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle_lsit()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/speedata/libutils/excel/ExcelUtils;->title_lsit:Ljava/util/List;

    return-object v0
.end method

.method public getWirteExcelPath()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/speedata/libutils/excel/ExcelUtils;->wirteExcelPath:Ljava/lang/String;

    return-object v0
.end method

.method public isFONT_BOLD()Z
    .registers 2

    .line 101
    iget-boolean v0, p0, Lcom/speedata/libutils/excel/ExcelUtils;->FONT_BOLD:Z

    return v0
.end method

.method public setBACKGROND_COLOR(Ljxl/format/Colour;)Lcom/speedata/libutils/excel/ExcelUtils;
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/speedata/libutils/excel/ExcelUtils;->BACKGROND_COLOR:Ljxl/format/Colour;

    return-object p0
.end method

.method public setContent_list_Strings(Ljava/util/List;)Lcom/speedata/libutils/excel/ExcelUtils;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Lcom/speedata/libutils/excel/ExcelUtils;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/speedata/libutils/excel/ExcelUtils;->clearData()V

    const/4 v3, 0x0

    .line 203
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    .line 204
    :goto_11
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_253

    .line 205
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 206
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    .line 207
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 208
    array-length v9, v7

    const/4 v10, 0x0

    :goto_26
    if-ge v10, v9, :cond_230

    aget-object v0, v7, v10

    .line 209
    const-class v11, Lcom/speedata/libutils/excel/Excel;

    invoke-virtual {v0, v11}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_210

    .line 211
    const-class v11, Lcom/speedata/libutils/excel/Excel;

    invoke-virtual {v0, v11}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lcom/speedata/libutils/excel/Excel;

    .line 212
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "-------Field = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "  |  ignore = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-interface {v11}, Lcom/speedata/libutils/excel/Excel;->ignore()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, "  |  name = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-interface {v11}, Lcom/speedata/libutils/excel/Excel;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 212
    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 216
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "-----------"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 218
    iget-object v14, v1, Lcom/speedata/libutils/excel/ExcelUtils;->title_lsit:Ljava/util/List;

    invoke-interface {v11}, Lcom/speedata/libutils/excel/Excel;->name()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b4

    .line 219
    iget-object v14, v1, Lcom/speedata/libutils/excel/ExcelUtils;->title_lsit:Ljava/util/List;

    invoke-interface {v11}, Lcom/speedata/libutils/excel/Excel;->name()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b4
    const-string v11, "boolean"

    .line 222
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const/4 v15, 0x1

    if-eqz v14, :cond_de

    .line 223
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_fe

    .line 225
    :cond_de
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "get"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    :goto_fe
    :try_start_fe
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    new-array v14, v3, [Ljava/lang/Class;

    invoke-virtual {v13, v2, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 229
    invoke-virtual {v2, v15}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-string v13, "class java.lang.String"

    .line 230
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_120

    new-array v0, v3, [Ljava/lang/Object;

    .line 231
    invoke-virtual {v2, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22a

    :cond_120
    const-string v13, "int"

    .line 233
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_148

    new-array v11, v3, [Ljava/lang/Object;

    .line 234
    invoke-virtual {v2, v6, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 235
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22a

    :cond_148
    const-string v13, "double"

    .line 236
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_170

    new-array v11, v3, [Ljava/lang/Object;

    .line 237
    invoke-virtual {v2, v6, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22a

    :cond_170
    const-string v13, "long"

    .line 239
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_198

    new-array v11, v3, [Ljava/lang/Object;

    .line 240
    invoke-virtual {v2, v6, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22a

    .line 242
    :cond_198
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1bd

    new-array v11, v3, [Ljava/lang/Object;

    .line 243
    invoke-virtual {v2, v6, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 244
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22a

    :cond_1bd
    const-string v11, "float"

    .line 245
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e4

    new-array v11, v3, [Ljava/lang/Object;

    .line 246
    invoke-virtual {v2, v6, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 247
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22a

    :cond_1e4
    const-string v11, "class java.lang.Long"

    .line 248
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_22a

    new-array v11, v3, [Ljava/lang/Object;

    .line 249
    invoke-virtual {v2, v6, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_20a
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_20a} :catch_20b

    goto :goto_22a

    :catch_20b
    move-exception v0

    .line 254
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22a

    .line 258
    :cond_210
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "-------Field no Annotation= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_22a
    :goto_22a
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p1

    goto/16 :goto_26

    .line 261
    :cond_230
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 262
    :goto_237
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_248

    .line 263
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_237

    .line 265
    :cond_248
    iget-object v2, v1, Lcom/speedata/libutils/excel/ExcelUtils;->CONTENT_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p1

    goto/16 :goto_11

    :cond_253
    return-object v1
.end method

.method public setFONT_ALIGNMENT(Ljxl/format/Alignment;)Lcom/speedata/libutils/excel/ExcelUtils;
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/speedata/libutils/excel/ExcelUtils;->FONT_ALIGNMENT:Ljxl/format/Alignment;

    return-object p0
.end method

.method public setFONT_BOLD(Z)Lcom/speedata/libutils/excel/ExcelUtils;
    .registers 2

    .line 111
    iput-boolean p1, p0, Lcom/speedata/libutils/excel/ExcelUtils;->FONT_BOLD:Z

    return-object p0
.end method

.method public setFONT_COLOR(Ljxl/format/Colour;)Lcom/speedata/libutils/excel/ExcelUtils;
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/speedata/libutils/excel/ExcelUtils;->FONT_COLOR:Ljxl/format/Colour;

    return-object p0
.end method

.method public setFONT_TIMES(I)Lcom/speedata/libutils/excel/ExcelUtils;
    .registers 2

    .line 126
    iput p1, p0, Lcom/speedata/libutils/excel/ExcelUtils;->FONT_TIMES:I

    return-object p0
.end method

.method public setFONT_VERTICAL(Ljxl/format/VerticalAlignment;)Lcom/speedata/libutils/excel/ExcelUtils;
    .registers 2

    .line 168
    iput-object p1, p0, Lcom/speedata/libutils/excel/ExcelUtils;->FONT_VERTICAL:Ljxl/format/VerticalAlignment;

    return-object p0
.end method

.method public setSHEET_NAME(Ljava/lang/String;)Lcom/speedata/libutils/excel/ExcelUtils;
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/speedata/libutils/excel/ExcelUtils;->SHEET_NAME:Ljava/lang/String;

    return-object p0
.end method

.method public setWirteExcelPath(Ljava/lang/String;)Lcom/speedata/libutils/excel/ExcelUtils;
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/speedata/libutils/excel/ExcelUtils;->wirteExcelPath:Ljava/lang/String;

    return-object p0
.end method
