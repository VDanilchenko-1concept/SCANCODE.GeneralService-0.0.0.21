.class public Ljxl/read/biff/SharedErrorFormulaRecord;
.super Ljxl/read/biff/BaseSharedFormulaRecord;
.source "SharedErrorFormulaRecord.java"

# interfaces
.implements Ljxl/ErrorCell;
.implements Ljxl/biff/FormulaData;
.implements Ljxl/ErrorFormulaCell;


# static fields
.field static synthetic class$jxl$read$biff$SharedErrorFormulaRecord:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private data:[B

.field private error:Ljxl/biff/formula/FormulaErrorCode;

.field private errorCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    sget-object v0, Ljxl/read/biff/SharedErrorFormulaRecord;->class$jxl$read$biff$SharedErrorFormulaRecord:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "jxl.read.biff.SharedErrorFormulaRecord"

    invoke-static {v0}, Ljxl/read/biff/SharedErrorFormulaRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/SharedErrorFormulaRecord;->class$jxl$read$biff$SharedErrorFormulaRecord:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/SharedErrorFormulaRecord;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/read/biff/File;ILjxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;)V
    .registers 15

    .line 83
    invoke-virtual {p2}, Ljxl/read/biff/File;->getPos()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v6}, Ljxl/read/biff/BaseSharedFormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;I)V

    .line 84
    iput p3, p0, Ljxl/read/biff/SharedErrorFormulaRecord;->errorCode:I

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    .line 47
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
.method public getContents()Ljava/lang/String;
    .registers 3

    .line 106
    iget-object v0, p0, Ljxl/read/biff/SharedErrorFormulaRecord;->error:Ljxl/biff/formula/FormulaErrorCode;

    if-nez v0, :cond_c

    .line 108
    iget v0, p0, Ljxl/read/biff/SharedErrorFormulaRecord;->errorCode:I

    invoke-static {v0}, Ljxl/biff/formula/FormulaErrorCode;->getErrorCode(I)Ljxl/biff/formula/FormulaErrorCode;

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/SharedErrorFormulaRecord;->error:Ljxl/biff/formula/FormulaErrorCode;

    .line 111
    :cond_c
    iget-object v0, p0, Ljxl/read/biff/SharedErrorFormulaRecord;->error:Ljxl/biff/formula/FormulaErrorCode;

    sget-object v1, Ljxl/biff/formula/FormulaErrorCode;->UNKNOWN:Ljxl/biff/formula/FormulaErrorCode;

    if-eq v0, v1, :cond_19

    iget-object v0, p0, Ljxl/read/biff/SharedErrorFormulaRecord;->error:Ljxl/biff/formula/FormulaErrorCode;

    invoke-virtual {v0}, Ljxl/biff/formula/FormulaErrorCode;->getDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_19
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ERROR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Ljxl/read/biff/SharedErrorFormulaRecord;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2c
    return-object v0
.end method

.method public getErrorCode()I
    .registers 2

    .line 96
    iget v0, p0, Ljxl/read/biff/SharedErrorFormulaRecord;->errorCode:I

    return v0
.end method

.method public getFormulaData()[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Ljxl/read/biff/SharedErrorFormulaRecord;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getWorkbookBof()Ljxl/read/biff/BOFRecord;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 141
    new-instance v0, Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/read/biff/SharedErrorFormulaRecord;->getTokens()[B

    move-result-object v2

    invoke-virtual {p0}, Ljxl/read/biff/SharedErrorFormulaRecord;->getExternalSheet()Ljxl/biff/formula/ExternalSheet;

    move-result-object v4

    invoke-virtual {p0}, Ljxl/read/biff/SharedErrorFormulaRecord;->getNameTable()Ljxl/biff/WorkbookMethods;

    move-result-object v5

    invoke-virtual {p0}, Ljxl/read/biff/SharedErrorFormulaRecord;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/SheetImpl;->getWorkbook()Ljxl/read/biff/WorkbookParser;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v6

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    .line 145
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 146
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v0

    .line 148
    array-length v1, v0

    const/16 v2, 0x16

    add-int/2addr v1, v2

    new-array v3, v1, [B

    .line 151
    invoke-virtual {p0}, Ljxl/read/biff/SharedErrorFormulaRecord;->getRow()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 152
    invoke-virtual {p0}, Ljxl/read/biff/SharedErrorFormulaRecord;->getColumn()I

    move-result v4

    const/4 v6, 0x2

    invoke-static {v4, v3, v6}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 153
    invoke-virtual {p0}, Ljxl/read/biff/SharedErrorFormulaRecord;->getXFIndex()I

    move-result v4

    const/4 v7, 0x4

    invoke-static {v4, v3, v7}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/4 v4, 0x6

    .line 155
    aput-byte v6, v3, v4

    const/16 v6, 0x8

    .line 156
    iget v7, p0, Ljxl/read/biff/SharedErrorFormulaRecord;->errorCode:I

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    const/16 v6, 0xc

    const/4 v7, -0x1

    .line 157
    aput-byte v7, v3, v6

    const/16 v6, 0xd

    .line 158
    aput-byte v7, v3, v6

    .line 161
    array-length v6, v0

    invoke-static {v0, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    array-length v0, v0

    const/16 v2, 0x14

    invoke-static {v0, v3, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    sub-int/2addr v1, v4

    .line 165
    new-array v0, v1, [B

    .line 166
    invoke-static {v3, v4, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 136
    :cond_76
    new-instance v0, Ljxl/biff/formula/FormulaException;

    sget-object v1, Ljxl/biff/formula/FormulaException;->BIFF8_SUPPORTED:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {v0, v1}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;)V

    throw v0
.end method

.method public getType()Ljxl/CellType;
    .registers 2

    .line 122
    sget-object v0, Ljxl/CellType;->FORMULA_ERROR:Ljxl/CellType;

    return-object v0
.end method
