.class Ljxl/biff/formula/StringParseItem;
.super Ljxl/biff/formula/ParseItem;
.source "StringParseItem.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljxl/biff/formula/ParseItem;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustRelativeCellReferences(II)V
    .registers 3

    return-void
.end method

.method columnInserted(IIZ)V
    .registers 4

    return-void
.end method

.method columnRemoved(IIZ)V
    .registers 4

    return-void
.end method

.method getBytes()[B
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method getString(Ljava/lang/StringBuffer;)V
    .registers 2

    return-void
.end method

.method handleImportedCellReferences()V
    .registers 1

    return-void
.end method

.method rowInserted(IIZ)V
    .registers 4

    return-void
.end method

.method rowRemoved(IIZ)V
    .registers 4

    return-void
.end method
