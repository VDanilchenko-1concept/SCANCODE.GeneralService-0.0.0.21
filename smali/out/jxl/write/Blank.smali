.class public Ljxl/write/Blank;
.super Ljxl/write/biff/BlankRecord;
.source "Blank.java"

# interfaces
.implements Ljxl/write/WritableCell;


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 42
    invoke-direct {p0, p1, p2}, Ljxl/write/biff/BlankRecord;-><init>(II)V

    return-void
.end method

.method public constructor <init>(IILjxl/format/CellFormat;)V
    .registers 4

    .line 56
    invoke-direct {p0, p1, p2, p3}, Ljxl/write/biff/BlankRecord;-><init>(IILjxl/format/CellFormat;)V

    return-void
.end method

.method protected constructor <init>(IILjxl/write/Blank;)V
    .registers 4

    .line 80
    invoke-direct {p0, p1, p2, p3}, Ljxl/write/biff/BlankRecord;-><init>(IILjxl/write/biff/BlankRecord;)V

    return-void
.end method

.method public constructor <init>(Ljxl/Cell;)V
    .registers 2

    .line 67
    invoke-direct {p0, p1}, Ljxl/write/biff/BlankRecord;-><init>(Ljxl/Cell;)V

    return-void
.end method


# virtual methods
.method public copyTo(II)Ljxl/write/WritableCell;
    .registers 4

    .line 92
    new-instance v0, Ljxl/write/Blank;

    invoke-direct {v0, p1, p2, p0}, Ljxl/write/Blank;-><init>(IILjxl/write/Blank;)V

    return-object v0
.end method
