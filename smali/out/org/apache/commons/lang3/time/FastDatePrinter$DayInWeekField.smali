.class Lorg/apache/commons/lang3/time/FastDatePrinter$DayInWeekField;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"

# interfaces
.implements Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DayInWeekField"
.end annotation


# instance fields
.field private final mRule:Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;)V
    .registers 2

    .line 1257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1258
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$DayInWeekField;->mRule:Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1274
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$DayInWeekField;->mRule:Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;->appendTo(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x7

    .line 1268
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 1269
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$DayInWeekField;->mRule:Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    const/4 v2, 0x1

    if-ne p2, v2, :cond_b

    goto :goto_d

    :cond_b
    add-int/lit8 v0, p2, -0x1

    :goto_d
    invoke-interface {v1, p1, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;->appendTo(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public estimateLength()I
    .registers 2

    .line 1263
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$DayInWeekField;->mRule:Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    invoke-interface {v0}, Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;->estimateLength()I

    move-result v0

    return v0
.end method
