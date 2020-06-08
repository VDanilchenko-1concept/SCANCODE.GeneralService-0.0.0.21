.class public Ljxl/write/biff/FormulaRecord;
.super Ljxl/write/biff/CellValue;
.source "FormulaRecord.java"

# interfaces
.implements Ljxl/biff/FormulaData;


# static fields
.field static synthetic class$jxl$write$biff$FormulaRecord:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private copiedFrom:Ljxl/write/biff/CellValue;

.field private formulaBytes:[B

.field private formulaString:Ljava/lang/String;

.field private formulaToParse:Ljava/lang/String;

.field private parser:Ljxl/biff/formula/FormulaParser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    sget-object v0, Ljxl/write/biff/FormulaRecord;->class$jxl$write$biff$FormulaRecord:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "jxl.write.biff.FormulaRecord"

    invoke-static {v0}, Ljxl/write/biff/FormulaRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/FormulaRecord;->class$jxl$write$biff$FormulaRecord:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/FormulaRecord;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 5

    .line 84
    sget-object v0, Ljxl/biff/Type;->FORMULA2:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;II)V

    .line 85
    iput-object p3, p0, Ljxl/write/biff/FormulaRecord;->formulaToParse:Ljava/lang/String;

    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Ljxl/write/biff/FormulaRecord;->copiedFrom:Ljxl/write/biff/CellValue;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljxl/format/CellFormat;)V
    .registers 6

    .line 96
    sget-object v0, Ljxl/biff/Type;->FORMULA:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2, p4}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;IILjxl/format/CellFormat;)V

    .line 97
    iput-object p3, p0, Ljxl/write/biff/FormulaRecord;->formulaToParse:Ljava/lang/String;

    const/4 p1, 0x0

    .line 98
    iput-object p1, p0, Ljxl/write/biff/FormulaRecord;->copiedFrom:Ljxl/write/biff/CellValue;

    return-void
.end method

.method protected constructor <init>(IILjxl/write/biff/FormulaRecord;)V
    .registers 5

    .line 110
    sget-object v0, Ljxl/biff/Type;->FORMULA:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2, p3}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;IILjxl/write/biff/CellValue;)V

    .line 111
    iput-object p3, p0, Ljxl/write/biff/FormulaRecord;->copiedFrom:Ljxl/write/biff/CellValue;

    .line 112
    iget-object p1, p3, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B

    array-length p1, p1

    new-array p1, p1, [B

    iput-object p1, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B

    .line 113
    iget-object p2, p3, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B

    array-length p3, p1

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected constructor <init>(IILjxl/write/biff/ReadFormulaRecord;)V
    .registers 6

    .line 125
    sget-object v0, Ljxl/biff/Type;->FORMULA:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2, p3}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;IILjxl/write/biff/CellValue;)V

    .line 128
    :try_start_5
    iput-object p3, p0, Ljxl/write/biff/FormulaRecord;->copiedFrom:Ljxl/write/biff/CellValue;

    .line 129
    invoke-virtual {p3}, Ljxl/write/biff/ReadFormulaRecord;->getFormulaData()[B

    move-result-object p1

    .line 130
    array-length p2, p1

    const/16 p3, 0x10

    sub-int/2addr p2, p3

    new-array p2, p2, [B

    iput-object p2, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B

    const/4 v0, 0x0

    .line 131
    array-length v1, p2

    invoke-static {p1, p3, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_18
    .catch Ljxl/biff/formula/FormulaException; {:try_start_5 .. :try_end_18} :catch_19

    goto :goto_21

    :catch_19
    move-exception p1

    .line 137
    sget-object p2, Ljxl/write/biff/FormulaRecord;->logger:Lcommon/Logger;

    const-string p3, ""

    invoke-virtual {p2, p3, p1}, Lcommon/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_21
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    .line 49
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

.method private initialize(Ljxl/WorkbookSettings;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;)V
    .registers 8

    .line 153
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->copiedFrom:Ljxl/write/biff/CellValue;

    if-eqz v0, :cond_8

    .line 155
    invoke-direct {p0, p1, p2, p3}, Ljxl/write/biff/FormulaRecord;->initializeCopiedFormula(Ljxl/WorkbookSettings;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;)V

    return-void

    .line 159
    :cond_8
    new-instance v0, Ljxl/biff/formula/FormulaParser;

    iget-object v1, p0, Ljxl/write/biff/FormulaRecord;->formulaToParse:Ljava/lang/String;

    invoke-direct {v0, v1, p2, p3, p1}, Ljxl/biff/formula/FormulaParser;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    .line 163
    :try_start_11
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 164
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaString:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B
    :try_end_24
    .catch Ljxl/biff/formula/FormulaException; {:try_start_11 .. :try_end_24} :catch_25

    goto :goto_92

    :catch_25
    move-exception v0

    .line 169
    sget-object v1, Ljxl/write/biff/FormulaRecord;->logger:Lcommon/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " when parsing formula "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaToParse:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " in cell "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljxl/write/biff/FormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljxl/write/biff/FormulaRecord;->getColumn()I

    move-result v0

    invoke-virtual {p0}, Ljxl/write/biff/FormulaRecord;->getRow()I

    move-result v3

    invoke-static {v0, v3}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    :try_start_69
    const-string v0, "ERROR(1)"

    .line 178
    iput-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaToParse:Ljava/lang/String;

    .line 179
    new-instance v0, Ljxl/biff/formula/FormulaParser;

    iget-object v1, p0, Ljxl/write/biff/FormulaRecord;->formulaToParse:Ljava/lang/String;

    invoke-direct {v0, v1, p2, p3, p1}, Ljxl/biff/formula/FormulaParser;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    .line 180
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 181
    iget-object p1, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p1}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/FormulaRecord;->formulaString:Ljava/lang/String;

    .line 182
    iget-object p1, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p1}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B
    :try_end_89
    .catch Ljxl/biff/formula/FormulaException; {:try_start_69 .. :try_end_89} :catch_8a

    goto :goto_92

    :catch_8a
    move-exception p1

    .line 187
    sget-object p2, Ljxl/write/biff/FormulaRecord;->logger:Lcommon/Logger;

    const-string p3, ""

    invoke-virtual {p2, p3, p1}, Lcommon/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_92
    return-void
.end method

.method private initializeCopiedFormula(Ljxl/WorkbookSettings;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;)V
    .registers 11

    .line 205
    :try_start_0
    new-instance v6, Ljxl/biff/formula/FormulaParser;

    iget-object v1, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B

    move-object v0, v6

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v6, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    .line 206
    invoke-virtual {v6}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 207
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/FormulaRecord;->getColumn()I

    move-result v1

    iget-object v2, p0, Ljxl/write/biff/FormulaRecord;->copiedFrom:Ljxl/write/biff/CellValue;

    invoke-virtual {v2}, Ljxl/write/biff/CellValue;->getColumn()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Ljxl/write/biff/FormulaRecord;->getRow()I

    move-result v2

    iget-object v3, p0, Ljxl/write/biff/FormulaRecord;->copiedFrom:Ljxl/write/biff/CellValue;

    invoke-virtual {v3}, Ljxl/write/biff/CellValue;->getRow()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljxl/biff/formula/FormulaParser;->adjustRelativeCellReferences(II)V

    .line 210
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaString:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B
    :try_end_3c
    .catch Ljxl/biff/formula/FormulaException; {:try_start_0 .. :try_end_3c} :catch_3d

    goto :goto_66

    :catch_3d
    :try_start_3d
    const-string v0, "ERROR(1)"

    .line 218
    iput-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaToParse:Ljava/lang/String;

    .line 219
    new-instance v0, Ljxl/biff/formula/FormulaParser;

    iget-object v1, p0, Ljxl/write/biff/FormulaRecord;->formulaToParse:Ljava/lang/String;

    invoke-direct {v0, v1, p2, p3, p1}, Ljxl/biff/formula/FormulaParser;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    .line 220
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 221
    iget-object p1, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p1}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/FormulaRecord;->formulaString:Ljava/lang/String;

    .line 222
    iget-object p1, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p1}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B
    :try_end_5d
    .catch Ljxl/biff/formula/FormulaException; {:try_start_3d .. :try_end_5d} :catch_5e

    goto :goto_66

    :catch_5e
    move-exception p1

    .line 228
    sget-object p2, Ljxl/write/biff/FormulaRecord;->logger:Lcommon/Logger;

    const-string p3, ""

    invoke-virtual {p2, p3, p1}, Lcommon/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_66
    return-void
.end method


# virtual methods
.method columnInserted(Ljxl/Sheet;II)V
    .registers 6

    .line 336
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/FormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v1

    if-ne p1, v1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    invoke-virtual {v0, p2, p3, p1}, Ljxl/biff/formula/FormulaParser;->columnInserted(IIZ)V

    .line 337
    iget-object p1, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p1}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B

    return-void
.end method

.method columnRemoved(Ljxl/Sheet;II)V
    .registers 6

    .line 350
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/FormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v1

    if-ne p1, v1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    invoke-virtual {v0, p2, p3, p1}, Ljxl/biff/formula/FormulaParser;->columnRemoved(IIZ)V

    .line 351
    iget-object p1, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p1}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B

    return-void
.end method

.method public copyTo(II)Ljxl/write/WritableCell;
    .registers 3

    const/4 p1, 0x0

    .line 322
    invoke-static {p1}, Lcommon/Assert;->verify(Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getContents()Ljava/lang/String;
    .registers 2

    .line 285
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaString:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .registers 6

    .line 257
    invoke-super {p0}, Ljxl/write/biff/CellValue;->getData()[B

    move-result-object v0

    .line 258
    invoke-virtual {p0}, Ljxl/write/biff/FormulaRecord;->getFormulaData()[B

    move-result-object v1

    .line 259
    array-length v2, v1

    array-length v3, v0

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 260
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public getFormulaData()[B
    .registers 6

    .line 296
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B

    array-length v1, v0

    const/16 v2, 0x10

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 297
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x6

    .line 299
    aput-byte v2, v1, v0

    const/4 v0, 0x7

    const/16 v2, 0x40

    .line 300
    aput-byte v2, v1, v0

    const/16 v0, 0xc

    const/16 v2, -0x20

    .line 301
    aput-byte v2, v1, v0

    const/16 v0, 0xd

    const/4 v2, -0x4

    .line 302
    aput-byte v2, v1, v0

    const/16 v0, 0x8

    .line 304
    aget-byte v2, v1, v0

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 307
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B

    array-length v0, v0

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v1
.end method

.method public getType()Ljxl/CellType;
    .registers 2

    .line 273
    sget-object v0, Ljxl/CellType;->ERROR:Ljxl/CellType;

    return-object v0
.end method

.method rowInserted(Ljxl/Sheet;II)V
    .registers 6

    .line 364
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/FormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v1

    if-ne p1, v1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    invoke-virtual {v0, p2, p3, p1}, Ljxl/biff/formula/FormulaParser;->rowInserted(IIZ)V

    .line 365
    iget-object p1, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p1}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B

    return-void
.end method

.method rowRemoved(Ljxl/Sheet;II)V
    .registers 6

    .line 378
    iget-object v0, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/write/biff/FormulaRecord;->getSheet()Ljxl/write/biff/WritableSheetImpl;

    move-result-object v1

    if-ne p1, v1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    invoke-virtual {v0, p2, p3, p1}, Ljxl/biff/formula/FormulaParser;->rowRemoved(IIZ)V

    .line 379
    iget-object p1, p0, Ljxl/write/biff/FormulaRecord;->parser:Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p1}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/FormulaRecord;->formulaBytes:[B

    return-void
.end method

.method setCellDetails(Ljxl/biff/FormattingRecords;Ljxl/write/biff/SharedStrings;Ljxl/write/biff/WritableSheetImpl;)V
    .registers 5

    .line 245
    invoke-super {p0, p1, p2, p3}, Ljxl/write/biff/CellValue;->setCellDetails(Ljxl/biff/FormattingRecords;Ljxl/write/biff/SharedStrings;Ljxl/write/biff/WritableSheetImpl;)V

    .line 246
    invoke-virtual {p3}, Ljxl/write/biff/WritableSheetImpl;->getWorkbookSettings()Ljxl/WorkbookSettings;

    move-result-object p1

    invoke-virtual {p3}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object p2

    invoke-virtual {p3}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljxl/write/biff/FormulaRecord;->initialize(Ljxl/WorkbookSettings;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;)V

    .line 247
    invoke-virtual {p3}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljxl/write/biff/WritableWorkbookImpl;->addRCIRCell(Ljxl/write/biff/CellValue;)V

    return-void
.end method
