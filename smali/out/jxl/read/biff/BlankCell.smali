.class public Ljxl/read/biff/BlankCell;
.super Ljxl/read/biff/CellValue;
.source "BlankCell.java"


# direct methods
.method constructor <init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V
    .registers 4

    .line 40
    invoke-direct {p0, p1, p2, p3}, Ljxl/read/biff/CellValue;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public getType()Ljxl/CellType;
    .registers 2

    .line 60
    sget-object v0, Ljxl/CellType;->EMPTY:Ljxl/CellType;

    return-object v0
.end method
