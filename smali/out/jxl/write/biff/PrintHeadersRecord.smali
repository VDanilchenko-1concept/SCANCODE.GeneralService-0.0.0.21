.class Ljxl/write/biff/PrintHeadersRecord;
.super Ljxl/biff/WritableRecordData;
.source "PrintHeadersRecord.java"


# instance fields
.field private data:[B

.field private printHeaders:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 4

    .line 46
    sget-object v0, Ljxl/biff/Type;->PRINTHEADERS:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 47
    iput-boolean p1, p0, Ljxl/write/biff/PrintHeadersRecord;->printHeaders:Z

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 49
    iput-object v0, p0, Ljxl/write/biff/PrintHeadersRecord;->data:[B

    if-eqz p1, :cond_12

    const/4 p1, 0x0

    const/4 v1, 0x1

    aput-byte v1, v0, p1

    :cond_12
    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 2

    .line 64
    iget-object v0, p0, Ljxl/write/biff/PrintHeadersRecord;->data:[B

    return-object v0
.end method
