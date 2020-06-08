.class public Ljxl/read/biff/SharedBooleanFormulaRecord;
.super Ljxl/read/biff/BaseSharedFormulaRecord;
.source "SharedBooleanFormulaRecord.java"

# interfaces
.implements Ljxl/BooleanCell;
.implements Ljxl/biff/FormulaData;
.implements Ljxl/BooleanFormulaCell;


# static fields
.field static synthetic class$jxl$read$biff$SharedBooleanFormulaRecord:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private value:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    sget-object v0, Ljxl/read/biff/SharedBooleanFormulaRecord;->class$jxl$read$biff$SharedBooleanFormulaRecord:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "jxl.read.biff.SharedBooleanFormulaRecord"

    invoke-static {v0}, Ljxl/read/biff/SharedBooleanFormulaRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/SharedBooleanFormulaRecord;->class$jxl$read$biff$SharedBooleanFormulaRecord:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/SharedBooleanFormulaRecord;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/read/biff/File;ZLjxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;)V
    .registers 15

    .line 74
    invoke-virtual {p2}, Ljxl/read/biff/File;->getPos()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v6}, Ljxl/read/biff/BaseSharedFormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;I)V

    .line 75
    iput-boolean p3, p0, Ljxl/read/biff/SharedBooleanFormulaRecord;->value:Z

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

    .line 99
    new-instance v0, Ljava/lang/Boolean;

    iget-boolean v1, p0, Ljxl/read/biff/SharedBooleanFormulaRecord;->value:Z

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormulaData()[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Ljxl/read/biff/SharedBooleanFormulaRecord;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getWorkbookBof()Ljxl/read/biff/BOFRecord;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 128
    new-instance v0, Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/read/biff/SharedBooleanFormulaRecord;->getTokens()[B

    move-result-object v2

    invoke-virtual {p0}, Ljxl/read/biff/SharedBooleanFormulaRecord;->getExternalSheet()Ljxl/biff/formula/ExternalSheet;

    move-result-object v4

    invoke-virtual {p0}, Ljxl/read/biff/SharedBooleanFormulaRecord;->getNameTable()Ljxl/biff/WorkbookMethods;

    move-result-object v5

    invoke-virtual {p0}, Ljxl/read/biff/SharedBooleanFormulaRecord;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/SheetImpl;->getWorkbook()Ljxl/read/biff/WorkbookParser;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v6

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    .line 132
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 133
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v0

    .line 135
    array-length v1, v0

    const/16 v2, 0x16

    add-int/2addr v1, v2

    new-array v3, v1, [B

    .line 138
    invoke-virtual {p0}, Ljxl/read/biff/SharedBooleanFormulaRecord;->getRow()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 139
    invoke-virtual {p0}, Ljxl/read/biff/SharedBooleanFormulaRecord;->getColumn()I

    move-result v4

    const/4 v6, 0x2

    invoke-static {v4, v3, v6}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 140
    invoke-virtual {p0}, Ljxl/read/biff/SharedBooleanFormulaRecord;->getXFIndex()I

    move-result v4

    const/4 v6, 0x4

    invoke-static {v4, v3, v6}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/4 v4, 0x1

    const/4 v6, 0x6

    .line 141
    aput-byte v4, v3, v6

    const/16 v7, 0x8

    .line 142
    iget-boolean v8, p0, Ljxl/read/biff/SharedBooleanFormulaRecord;->value:Z

    if-ne v8, v4, :cond_5d

    goto :goto_5e

    :cond_5d
    const/4 v4, 0x0

    :goto_5e
    int-to-byte v4, v4

    aput-byte v4, v3, v7

    const/16 v4, 0xc

    const/4 v7, -0x1

    .line 143
    aput-byte v7, v3, v4

    const/16 v4, 0xd

    .line 144
    aput-byte v7, v3, v4

    .line 147
    array-length v4, v0

    invoke-static {v0, v5, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    array-length v0, v0

    const/16 v2, 0x14

    invoke-static {v0, v3, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    sub-int/2addr v1, v6

    .line 151
    new-array v0, v1, [B

    .line 152
    invoke-static {v3, v6, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 123
    :cond_7b
    new-instance v0, Ljxl/biff/formula/FormulaException;

    sget-object v1, Ljxl/biff/formula/FormulaException;->BIFF8_SUPPORTED:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {v0, v1}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;)V

    throw v0
.end method

.method public getType()Ljxl/CellType;
    .registers 2

    .line 109
    sget-object v0, Ljxl/CellType;->BOOLEAN_FORMULA:Ljxl/CellType;

    return-object v0
.end method

.method public getValue()Z
    .registers 2

    .line 88
    iget-boolean v0, p0, Ljxl/read/biff/SharedBooleanFormulaRecord;->value:Z

    return v0
.end method
