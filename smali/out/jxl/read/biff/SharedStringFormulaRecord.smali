.class public Ljxl/read/biff/SharedStringFormulaRecord;
.super Ljxl/read/biff/BaseSharedFormulaRecord;
.source "SharedStringFormulaRecord.java"

# interfaces
.implements Ljxl/LabelCell;
.implements Ljxl/biff/FormulaData;
.implements Ljxl/StringFormulaCell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/read/biff/SharedStringFormulaRecord$EmptyString;
    }
.end annotation


# static fields
.field protected static final EMPTY_STRING:Ljxl/read/biff/SharedStringFormulaRecord$EmptyString;

.field static synthetic class$jxl$read$biff$SharedStringFormulaRecord:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 49
    sget-object v0, Ljxl/read/biff/SharedStringFormulaRecord;->class$jxl$read$biff$SharedStringFormulaRecord:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "jxl.read.biff.SharedStringFormulaRecord"

    invoke-static {v0}, Ljxl/read/biff/SharedStringFormulaRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/SharedStringFormulaRecord;->class$jxl$read$biff$SharedStringFormulaRecord:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/SharedStringFormulaRecord;->logger:Lcommon/Logger;

    .line 60
    new-instance v0, Ljxl/read/biff/SharedStringFormulaRecord$EmptyString;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/read/biff/SharedStringFormulaRecord$EmptyString;-><init>(Ljxl/read/biff/SharedStringFormulaRecord$1;)V

    sput-object v0, Ljxl/read/biff/SharedStringFormulaRecord;->EMPTY_STRING:Ljxl/read/biff/SharedStringFormulaRecord$EmptyString;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/read/biff/File;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;)V
    .registers 15

    .line 81
    invoke-virtual {p2}, Ljxl/read/biff/File;->getPos()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Ljxl/read/biff/BaseSharedFormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;I)V

    .line 82
    invoke-virtual {p2}, Ljxl/read/biff/File;->getPos()I

    move-result p1

    .line 85
    invoke-virtual {p2}, Ljxl/read/biff/File;->getPos()I

    move-result p3

    .line 89
    invoke-virtual {p2}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p4

    const/4 p5, 0x0

    const/4 p6, 0x0

    .line 91
    :goto_1b
    invoke-virtual {p4}, Ljxl/read/biff/Record;->getType()Ljxl/biff/Type;

    move-result-object v0

    sget-object v1, Ljxl/biff/Type;->STRING:Ljxl/biff/Type;

    const/4 v2, 0x4

    if-eq v0, v1, :cond_2d

    if-ge p6, v2, :cond_2d

    .line 93
    invoke-virtual {p2}, Ljxl/read/biff/File;->next()Ljxl/read/biff/Record;

    move-result-object p4

    add-int/lit8 p6, p6, 0x1

    goto :goto_1b

    :cond_2d
    const/4 v0, 0x1

    if-ge p6, v2, :cond_32

    const/4 p6, 0x1

    goto :goto_33

    :cond_32
    const/4 p6, 0x0

    .line 96
    :goto_33
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, " @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p1}, Lcommon/Assert;->verify(ZLjava/lang/String;)V

    .line 98
    invoke-virtual {p4}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    .line 99
    aget-byte p4, p1, p5

    aget-byte p6, p1, v0

    invoke-static {p4, p6}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p4

    .line 103
    array-length p6, p1

    add-int/lit8 v1, p4, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne p6, v1, :cond_5c

    const/4 v2, 0x2

    goto :goto_61

    .line 110
    :cond_5c
    aget-byte p6, p1, v3

    if-ne p6, v0, :cond_61

    const/4 p5, 0x1

    :cond_61
    :goto_61
    if-nez p5, :cond_6a

    .line 125
    invoke-static {p1, p4, v2, p7}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/SharedStringFormulaRecord;->value:Ljava/lang/String;

    goto :goto_70

    .line 129
    :cond_6a
    invoke-static {p1, p4, v2}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/SharedStringFormulaRecord;->value:Ljava/lang/String;

    .line 134
    :goto_70
    invoke-virtual {p2, p3}, Ljxl/read/biff/File;->setPos(I)V

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/read/biff/File;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;Ljxl/read/biff/SharedStringFormulaRecord$EmptyString;)V
    .registers 15

    .line 156
    invoke-virtual {p2}, Ljxl/read/biff/File;->getPos()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Ljxl/read/biff/BaseSharedFormulaRecord;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;I)V

    const-string p1, ""

    .line 158
    iput-object p1, p0, Ljxl/read/biff/SharedStringFormulaRecord;->value:Ljava/lang/String;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    .line 50
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
    .registers 2

    .line 178
    iget-object v0, p0, Ljxl/read/biff/SharedStringFormulaRecord;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getFormulaData()[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 200
    invoke-virtual {p0}, Ljxl/read/biff/SharedStringFormulaRecord;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getWorkbookBof()Ljxl/read/biff/BOFRecord;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 207
    new-instance v0, Ljxl/biff/formula/FormulaParser;

    invoke-virtual {p0}, Ljxl/read/biff/SharedStringFormulaRecord;->getTokens()[B

    move-result-object v2

    invoke-virtual {p0}, Ljxl/read/biff/SharedStringFormulaRecord;->getExternalSheet()Ljxl/biff/formula/ExternalSheet;

    move-result-object v4

    invoke-virtual {p0}, Ljxl/read/biff/SharedStringFormulaRecord;->getNameTable()Ljxl/biff/WorkbookMethods;

    move-result-object v5

    invoke-virtual {p0}, Ljxl/read/biff/SharedStringFormulaRecord;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/SheetImpl;->getWorkbook()Ljxl/read/biff/WorkbookParser;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v6

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    .line 211
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 212
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getBytes()[B

    move-result-object v0

    .line 214
    array-length v1, v0

    const/16 v2, 0x16

    add-int/2addr v1, v2

    new-array v3, v1, [B

    .line 217
    invoke-virtual {p0}, Ljxl/read/biff/SharedStringFormulaRecord;->getRow()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 218
    invoke-virtual {p0}, Ljxl/read/biff/SharedStringFormulaRecord;->getColumn()I

    move-result v4

    const/4 v6, 0x2

    invoke-static {v4, v3, v6}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 219
    invoke-virtual {p0}, Ljxl/read/biff/SharedStringFormulaRecord;->getXFIndex()I

    move-result v4

    const/4 v6, 0x4

    invoke-static {v4, v3, v6}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/4 v4, 0x6

    .line 223
    aput-byte v5, v3, v4

    const/16 v6, 0xc

    const/4 v7, -0x1

    .line 224
    aput-byte v7, v3, v6

    const/16 v6, 0xd

    .line 225
    aput-byte v7, v3, v6

    .line 228
    array-length v6, v0

    invoke-static {v0, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    array-length v0, v0

    const/16 v2, 0x14

    invoke-static {v0, v3, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    sub-int/2addr v1, v4

    .line 232
    new-array v0, v1, [B

    .line 233
    invoke-static {v3, v4, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 202
    :cond_6f
    new-instance v0, Ljxl/biff/formula/FormulaException;

    sget-object v1, Ljxl/biff/formula/FormulaException;->BIFF8_SUPPORTED:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {v0, v1}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;)V

    throw v0
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    .line 168
    iget-object v0, p0, Ljxl/read/biff/SharedStringFormulaRecord;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljxl/CellType;
    .registers 2

    .line 188
    sget-object v0, Ljxl/CellType;->STRING_FORMULA:Ljxl/CellType;

    return-object v0
.end method
