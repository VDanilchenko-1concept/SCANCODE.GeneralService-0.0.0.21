.class Ljxl/read/biff/BottomMarginRecord;
.super Ljxl/read/biff/MarginRecord;
.source "BottomMarginRecord.java"


# direct methods
.method constructor <init>(Ljxl/read/biff/Record;)V
    .registers 3

    .line 36
    sget-object v0, Ljxl/biff/Type;->BOTTOMMARGIN:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1}, Ljxl/read/biff/MarginRecord;-><init>(Ljxl/biff/Type;Ljxl/read/biff/Record;)V

    return-void
.end method
