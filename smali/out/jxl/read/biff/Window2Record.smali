.class Ljxl/read/biff/Window2Record;
.super Ljxl/biff/RecordData;
.source "Window2Record.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/read/biff/Window2Record$Biff7;
    }
.end annotation


# static fields
.field public static final biff7:Ljxl/read/biff/Window2Record$Biff7;

.field static synthetic class$jxl$read$biff$Window2Record:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private displayZeroValues:Z

.field private frozenNotSplit:Z

.field private frozenPanes:Z

.field private normalMagnification:I

.field private pageBreakPreviewMagnification:I

.field private pageBreakPreviewMode:Z

.field private selected:Z

.field private showGridLines:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    sget-object v0, Ljxl/read/biff/Window2Record;->class$jxl$read$biff$Window2Record:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "jxl.read.biff.Window2Record"

    invoke-static {v0}, Ljxl/read/biff/Window2Record;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/Window2Record;->class$jxl$read$biff$Window2Record:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/Window2Record;->logger:Lcommon/Logger;

    .line 74
    new-instance v0, Ljxl/read/biff/Window2Record$Biff7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/read/biff/Window2Record$Biff7;-><init>(Ljxl/read/biff/Window2Record$1;)V

    sput-object v0, Ljxl/read/biff/Window2Record;->biff7:Ljxl/read/biff/Window2Record$Biff7;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .registers 6

    .line 83
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 84
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 86
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    aget-byte v3, p1, v2

    invoke-static {v1, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    and-int/lit16 v3, v1, 0x200

    if-eqz v3, :cond_17

    const/4 v3, 0x1

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    .line 88
    :goto_18
    iput-boolean v3, p0, Ljxl/read/biff/Window2Record;->selected:Z

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_20

    const/4 v3, 0x1

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    .line 89
    :goto_21
    iput-boolean v3, p0, Ljxl/read/biff/Window2Record;->showGridLines:Z

    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_29

    const/4 v3, 0x1

    goto :goto_2a

    :cond_29
    const/4 v3, 0x0

    .line 90
    :goto_2a
    iput-boolean v3, p0, Ljxl/read/biff/Window2Record;->frozenPanes:Z

    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_32

    const/4 v3, 0x1

    goto :goto_33

    :cond_32
    const/4 v3, 0x0

    .line 91
    :goto_33
    iput-boolean v3, p0, Ljxl/read/biff/Window2Record;->displayZeroValues:Z

    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_3b

    const/4 v3, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v3, 0x0

    .line 92
    :goto_3c
    iput-boolean v3, p0, Ljxl/read/biff/Window2Record;->frozenNotSplit:Z

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_43

    const/4 v0, 0x1

    .line 93
    :cond_43
    iput-boolean v0, p0, Ljxl/read/biff/Window2Record;->pageBreakPreviewMode:Z

    const/16 v0, 0xa

    .line 95
    aget-byte v0, p1, v0

    const/16 v1, 0xb

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/Window2Record;->pageBreakPreviewMagnification:I

    const/16 v0, 0xc

    .line 96
    aget-byte v0, p1, v0

    const/16 v1, 0xd

    aget-byte p1, p1, v1

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/read/biff/Window2Record;->normalMagnification:I

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/read/biff/Window2Record$Biff7;)V
    .registers 5

    .line 108
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 109
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 p2, 0x0

    .line 111
    aget-byte v0, p1, p2

    const/4 v1, 0x1

    aget-byte p1, p1, v1

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    and-int/lit16 v0, p1, 0x200

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 113
    :goto_18
    iput-boolean v0, p0, Ljxl/read/biff/Window2Record;->selected:Z

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 114
    :goto_21
    iput-boolean v0, p0, Ljxl/read/biff/Window2Record;->showGridLines:Z

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    .line 115
    :goto_2a
    iput-boolean v0, p0, Ljxl/read/biff/Window2Record;->frozenPanes:Z

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    .line 116
    :goto_33
    iput-boolean v0, p0, Ljxl/read/biff/Window2Record;->displayZeroValues:Z

    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_3b

    const/4 v0, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x0

    .line 117
    :goto_3c
    iput-boolean v0, p0, Ljxl/read/biff/Window2Record;->frozenNotSplit:Z

    and-int/lit16 p1, p1, 0x800

    if-eqz p1, :cond_43

    const/4 p2, 0x1

    .line 118
    :cond_43
    iput-boolean p2, p0, Ljxl/read/biff/Window2Record;->pageBreakPreviewMode:Z

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    .line 35
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
.method public getDisplayZeroValues()Z
    .registers 2

    .line 148
    iget-boolean v0, p0, Ljxl/read/biff/Window2Record;->displayZeroValues:Z

    return v0
.end method

.method public getFrozen()Z
    .registers 2

    .line 158
    iget-boolean v0, p0, Ljxl/read/biff/Window2Record;->frozenPanes:Z

    return v0
.end method

.method public getFrozenNotSplit()Z
    .registers 2

    .line 168
    iget-boolean v0, p0, Ljxl/read/biff/Window2Record;->frozenNotSplit:Z

    return v0
.end method

.method public getNormalMagnificaiton()I
    .registers 2

    .line 198
    iget v0, p0, Ljxl/read/biff/Window2Record;->normalMagnification:I

    return v0
.end method

.method public getPageBreakPreviewMagnificaiton()I
    .registers 2

    .line 188
    iget v0, p0, Ljxl/read/biff/Window2Record;->pageBreakPreviewMagnification:I

    return v0
.end method

.method public getShowGridLines()Z
    .registers 2

    .line 138
    iget-boolean v0, p0, Ljxl/read/biff/Window2Record;->showGridLines:Z

    return v0
.end method

.method public isPageBreakPreview()Z
    .registers 2

    .line 178
    iget-boolean v0, p0, Ljxl/read/biff/Window2Record;->pageBreakPreviewMode:Z

    return v0
.end method

.method public isSelected()Z
    .registers 2

    .line 128
    iget-boolean v0, p0, Ljxl/read/biff/Window2Record;->selected:Z

    return v0
.end method
