.class Ljxl/biff/formula/NameRange;
.super Ljxl/biff/formula/Operand;
.source "NameRange.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# instance fields
.field private index:I

.field private name:Ljava/lang/String;

.field private nameTable:Ljxl/biff/WorkbookMethods;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljxl/biff/WorkbookMethods;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 64
    iput-object p1, p0, Ljxl/biff/formula/NameRange;->name:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Ljxl/biff/formula/NameRange;->nameTable:Ljxl/biff/WorkbookMethods;

    .line 67
    invoke-interface {p2, p1}, Ljxl/biff/WorkbookMethods;->getNameIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ljxl/biff/formula/NameRange;->index:I

    if-ltz p1, :cond_14

    add-int/lit8 p1, p1, 0x1

    .line 74
    iput p1, p0, Ljxl/biff/formula/NameRange;->index:I

    return-void

    .line 71
    :cond_14
    new-instance p1, Ljxl/biff/formula/FormulaException;

    sget-object p2, Ljxl/biff/formula/FormulaException;->CELL_NAME_NOT_FOUND:Ljxl/biff/formula/FormulaException$FormulaMessage;

    iget-object v0, p0, Ljxl/biff/formula/NameRange;->name:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljxl/biff/WorkbookMethods;)V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 52
    iput-object p1, p0, Ljxl/biff/formula/NameRange;->nameTable:Ljxl/biff/WorkbookMethods;

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    .line 53
    :goto_a
    invoke-static {p1}, Lcommon/Assert;->verify(Z)V

    return-void
.end method


# virtual methods
.method getBytes()[B
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 101
    sget-object v1, Ljxl/biff/formula/Token;->NAMED_RANGE:Ljxl/biff/formula/Token;

    invoke-virtual {v1}, Ljxl/biff/formula/Token;->getCode()B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 103
    iget v1, p0, Ljxl/biff/formula/NameRange;->index:I

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .registers 3

    .line 116
    iget-object v0, p0, Ljxl/biff/formula/NameRange;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method handleImportedCellReferences()V
    .registers 1

    .line 127
    invoke-virtual {p0}, Ljxl/biff/formula/NameRange;->setInvalid()V

    return-void
.end method

.method public read([BI)I
    .registers 4

    .line 86
    aget-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/biff/formula/NameRange;->index:I

    .line 88
    iget-object p2, p0, Ljxl/biff/formula/NameRange;->nameTable:Ljxl/biff/WorkbookMethods;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p2, p1}, Ljxl/biff/WorkbookMethods;->getName(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/formula/NameRange;->name:Ljava/lang/String;

    const/4 p1, 0x4

    return p1
.end method
