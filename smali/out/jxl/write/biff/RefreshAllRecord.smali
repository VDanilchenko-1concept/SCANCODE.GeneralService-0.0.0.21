.class Ljxl/write/biff/RefreshAllRecord;
.super Ljxl/biff/WritableRecordData;
.source "RefreshAllRecord.java"


# instance fields
.field private data:[B

.field private refreshall:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 4

    .line 48
    sget-object v0, Ljxl/biff/Type;->REFRESHALL:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 50
    iput-boolean p1, p0, Ljxl/write/biff/RefreshAllRecord;->refreshall:Z

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 53
    iput-object v0, p0, Ljxl/write/biff/RefreshAllRecord;->data:[B

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    const/4 v1, 0x0

    .line 57
    invoke-static {p1, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    :cond_13
    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 2

    .line 68
    iget-object v0, p0, Ljxl/write/biff/RefreshAllRecord;->data:[B

    return-object v0
.end method
