.class Ljxl/write/biff/NineteenFourRecord;
.super Ljxl/biff/WritableRecordData;
.source "NineteenFourRecord.java"


# instance fields
.field private data:[B

.field private nineteenFourDate:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 4

    .line 49
    sget-object v0, Ljxl/biff/Type;->NINETEENFOUR:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 51
    iput-boolean p1, p0, Ljxl/write/biff/NineteenFourRecord;->nineteenFourDate:Z

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 52
    iput-object v0, p0, Ljxl/write/biff/NineteenFourRecord;->data:[B

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    const/4 v1, 0x0

    .line 56
    invoke-static {p1, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    :cond_13
    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 2

    .line 66
    iget-object v0, p0, Ljxl/write/biff/NineteenFourRecord;->data:[B

    return-object v0
.end method
