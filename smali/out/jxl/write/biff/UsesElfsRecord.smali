.class Ljxl/write/biff/UsesElfsRecord;
.super Ljxl/biff/WritableRecordData;
.source "UsesElfsRecord.java"


# instance fields
.field private data:[B

.field private usesElfs:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 45
    sget-object v0, Ljxl/biff/Type;->USESELFS:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Ljxl/write/biff/UsesElfsRecord;->usesElfs:Z

    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 49
    iput-object v1, p0, Ljxl/write/biff/UsesElfsRecord;->data:[B

    if-eqz v0, :cond_12

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    :cond_12
    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 2

    .line 64
    iget-object v0, p0, Ljxl/write/biff/UsesElfsRecord;->data:[B

    return-object v0
.end method
