.class Ljxl/write/biff/MMSRecord;
.super Ljxl/biff/WritableRecordData;
.source "MMSRecord.java"


# instance fields
.field private data:[B

.field private numMenuItemsAdded:B

.field private numMenuItemsDeleted:B


# direct methods
.method public constructor <init>(II)V
    .registers 5

    .line 51
    sget-object v0, Ljxl/biff/Type;->MMS:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    int-to-byte p1, p1

    .line 53
    iput-byte p1, p0, Ljxl/write/biff/MMSRecord;->numMenuItemsAdded:B

    int-to-byte p2, p2

    .line 54
    iput-byte p2, p0, Ljxl/write/biff/MMSRecord;->numMenuItemsDeleted:B

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 56
    iput-object v0, p0, Ljxl/write/biff/MMSRecord;->data:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    aput-byte p2, v0, p1

    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 2

    .line 69
    iget-object v0, p0, Ljxl/write/biff/MMSRecord;->data:[B

    return-object v0
.end method
