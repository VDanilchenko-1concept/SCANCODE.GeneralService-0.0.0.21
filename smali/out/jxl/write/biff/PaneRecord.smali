.class Ljxl/write/biff/PaneRecord;
.super Ljxl/biff/WritableRecordData;
.source "PaneRecord.java"


# static fields
.field private static final bottomLeftPane:I = 0x2

.field private static final bottomRightPane:I = 0x0

.field private static final topLeftPane:I = 0x3

.field private static final topRightPane:I = 0x1


# instance fields
.field private columnsVisible:I

.field private rowsVisible:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 56
    sget-object v0, Ljxl/biff/Type;->PANE:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 58
    iput p2, p0, Ljxl/write/biff/PaneRecord;->rowsVisible:I

    .line 59
    iput p1, p0, Ljxl/write/biff/PaneRecord;->columnsVisible:I

    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 6

    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 72
    iget v1, p0, Ljxl/write/biff/PaneRecord;->columnsVisible:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 75
    iget v1, p0, Ljxl/write/biff/PaneRecord;->rowsVisible:I

    const/4 v3, 0x2

    invoke-static {v1, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 78
    iget v1, p0, Ljxl/write/biff/PaneRecord;->rowsVisible:I

    if-lez v1, :cond_18

    const/4 v4, 0x4

    .line 80
    invoke-static {v1, v0, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 84
    :cond_18
    iget v1, p0, Ljxl/write/biff/PaneRecord;->columnsVisible:I

    if-lez v1, :cond_20

    const/4 v4, 0x6

    .line 86
    invoke-static {v1, v0, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    :cond_20
    const/4 v1, 0x3

    .line 92
    iget v4, p0, Ljxl/write/biff/PaneRecord;->rowsVisible:I

    if-lez v4, :cond_2b

    iget v4, p0, Ljxl/write/biff/PaneRecord;->columnsVisible:I

    if-nez v4, :cond_2b

    const/4 v2, 0x2

    goto :goto_3f

    .line 96
    :cond_2b
    iget v3, p0, Ljxl/write/biff/PaneRecord;->rowsVisible:I

    if-nez v3, :cond_35

    iget v3, p0, Ljxl/write/biff/PaneRecord;->columnsVisible:I

    if-lez v3, :cond_35

    const/4 v2, 0x1

    goto :goto_3f

    .line 100
    :cond_35
    iget v3, p0, Ljxl/write/biff/PaneRecord;->rowsVisible:I

    if-lez v3, :cond_3e

    iget v3, p0, Ljxl/write/biff/PaneRecord;->columnsVisible:I

    if-lez v3, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x3

    :goto_3f
    const/16 v1, 0x8

    .line 105
    invoke-static {v2, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v0
.end method
