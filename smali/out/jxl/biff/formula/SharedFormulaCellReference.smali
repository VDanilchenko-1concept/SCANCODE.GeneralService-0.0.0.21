.class Ljxl/biff/formula/SharedFormulaCellReference;
.super Ljxl/biff/formula/Operand;
.source "SharedFormulaCellReference.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# static fields
.field static synthetic class$jxl$biff$formula$SharedFormulaCellReference:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private column:I

.field private columnRelative:Z

.field private relativeTo:Ljxl/Cell;

.field private row:I

.field private rowRelative:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    sget-object v0, Ljxl/biff/formula/SharedFormulaCellReference;->class$jxl$biff$formula$SharedFormulaCellReference:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "jxl.biff.formula.SharedFormulaCellReference"

    invoke-static {v0}, Ljxl/biff/formula/SharedFormulaCellReference;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/SharedFormulaCellReference;->class$jxl$biff$formula$SharedFormulaCellReference:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/SharedFormulaCellReference;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/Cell;)V
    .registers 2

    .line 70
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 71
    iput-object p1, p0, Ljxl/biff/formula/SharedFormulaCellReference;->relativeTo:Ljxl/Cell;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    .line 36
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
.method getBytes()[B
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 129
    sget-object v1, Ljxl/biff/formula/Token;->REF:Ljxl/biff/formula/Token;

    invoke-virtual {v1}, Ljxl/biff/formula/Token;->getCode()B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 131
    iget v1, p0, Ljxl/biff/formula/SharedFormulaCellReference;->row:I

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 133
    iget v1, p0, Ljxl/biff/formula/SharedFormulaCellReference;->column:I

    .line 135
    iget-boolean v2, p0, Ljxl/biff/formula/SharedFormulaCellReference;->columnRelative:Z

    if-eqz v2, :cond_1a

    or-int/lit16 v1, v1, 0x4000

    .line 140
    :cond_1a
    iget-boolean v2, p0, Ljxl/biff/formula/SharedFormulaCellReference;->rowRelative:Z

    if-eqz v2, :cond_22

    const v2, 0x8000

    or-int/2addr v1, v2

    :cond_22
    const/4 v2, 0x3

    .line 145
    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v0
.end method

.method public getColumn()I
    .registers 2

    .line 108
    iget v0, p0, Ljxl/biff/formula/SharedFormulaCellReference;->column:I

    return v0
.end method

.method public getRow()I
    .registers 2

    .line 113
    iget v0, p0, Ljxl/biff/formula/SharedFormulaCellReference;->row:I

    return v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .registers 4

    .line 118
    iget v0, p0, Ljxl/biff/formula/SharedFormulaCellReference;->column:I

    iget v1, p0, Ljxl/biff/formula/SharedFormulaCellReference;->row:I

    invoke-static {v0, v1, p1}, Ljxl/biff/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    return-void
.end method

.method handleImportedCellReferences()V
    .registers 1

    return-void
.end method

.method public read([BI)I
    .registers 5

    .line 85
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getShort(BB)S

    move-result v0

    iput v0, p0, Ljxl/biff/formula/SharedFormulaCellReference;->row:I

    add-int/lit8 v0, p2, 0x2

    .line 87
    aget-byte v0, p1, v0

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    and-int/lit16 p2, p1, 0xff

    int-to-byte p2, p2

    .line 89
    iput p2, p0, Ljxl/biff/formula/SharedFormulaCellReference;->column:I

    and-int/lit16 p2, p1, 0x4000

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_25

    const/4 p2, 0x1

    goto :goto_26

    :cond_25
    const/4 p2, 0x0

    .line 90
    :goto_26
    iput-boolean p2, p0, Ljxl/biff/formula/SharedFormulaCellReference;->columnRelative:Z

    const p2, 0x8000

    and-int/2addr p1, p2

    if-eqz p1, :cond_2f

    const/4 v0, 0x1

    .line 91
    :cond_2f
    iput-boolean v0, p0, Ljxl/biff/formula/SharedFormulaCellReference;->rowRelative:Z

    .line 93
    iget-boolean p1, p0, Ljxl/biff/formula/SharedFormulaCellReference;->columnRelative:Z

    if-eqz p1, :cond_42

    iget-object p1, p0, Ljxl/biff/formula/SharedFormulaCellReference;->relativeTo:Ljxl/Cell;

    if-eqz p1, :cond_42

    .line 95
    invoke-interface {p1}, Ljxl/Cell;->getColumn()I

    move-result p1

    iget p2, p0, Ljxl/biff/formula/SharedFormulaCellReference;->column:I

    add-int/2addr p1, p2

    iput p1, p0, Ljxl/biff/formula/SharedFormulaCellReference;->column:I

    .line 98
    :cond_42
    iget-boolean p1, p0, Ljxl/biff/formula/SharedFormulaCellReference;->rowRelative:Z

    if-eqz p1, :cond_53

    iget-object p1, p0, Ljxl/biff/formula/SharedFormulaCellReference;->relativeTo:Ljxl/Cell;

    if-eqz p1, :cond_53

    .line 100
    invoke-interface {p1}, Ljxl/Cell;->getRow()I

    move-result p1

    iget p2, p0, Ljxl/biff/formula/SharedFormulaCellReference;->row:I

    add-int/2addr p1, p2

    iput p1, p0, Ljxl/biff/formula/SharedFormulaCellReference;->row:I

    :cond_53
    const/4 p1, 0x4

    return p1
.end method
