.class public Ljxl/demo/CSV;
.super Ljava/lang/Object;
.source "CSV.java"


# direct methods
.method public constructor <init>(Ljxl/Workbook;Ljava/io/OutputStream;Ljava/lang/String;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_d

    const-string v0, "UnicodeBig"

    .line 52
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    const-string p3, "UTF8"

    .line 59
    :cond_f
    :try_start_f
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p2, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 60
    new-instance p2, Ljava/io/BufferedWriter;

    invoke-direct {p2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 62
    :goto_1b
    invoke-virtual {p1}, Ljxl/Workbook;->getNumberOfSheets()I

    move-result v1

    if-ge v0, v1, :cond_9a

    .line 64
    invoke-virtual {p1, v0}, Ljxl/Workbook;->getSheet(I)Ljxl/Sheet;

    move-result-object v1

    if-eqz p4, :cond_31

    .line 66
    invoke-interface {v1}, Ljxl/Sheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/SheetSettings;->isHidden()Z

    move-result v2

    if-nez v2, :cond_97

    .line 68
    :cond_31
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "*** "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v1}, Ljxl/Sheet;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " ****"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V

    const/4 v2, 0x0

    .line 73
    :goto_52
    invoke-interface {v1}, Ljxl/Sheet;->getRows()I

    move-result v3

    if-ge v2, v3, :cond_97

    .line 75
    invoke-interface {v1, v2}, Ljxl/Sheet;->getRow(I)[Ljxl/Cell;

    move-result-object v3

    .line 77
    array-length v4, v3

    if-lez v4, :cond_91

    if-eqz p4, :cond_69

    .line 79
    aget-object v4, v3, p3

    invoke-interface {v4}, Ljxl/Cell;->isHidden()Z

    move-result v4

    if-nez v4, :cond_72

    .line 81
    :cond_69
    aget-object v4, v3, p3

    invoke-interface {v4}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :cond_72
    const/4 v4, 0x1

    .line 86
    :goto_73
    array-length v5, v3

    if-ge v4, v5, :cond_91

    const/16 v5, 0x2c

    .line 88
    invoke-virtual {p2, v5}, Ljava/io/BufferedWriter;->write(I)V

    if-eqz p4, :cond_85

    .line 89
    aget-object v5, v3, v4

    invoke-interface {v5}, Ljxl/Cell;->isHidden()Z

    move-result v5

    if-nez v5, :cond_8e

    .line 91
    :cond_85
    aget-object v5, v3, v4

    invoke-interface {v5}, Ljxl/Cell;->getContents()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :cond_8e
    add-int/lit8 v4, v4, 0x1

    goto :goto_73

    .line 97
    :cond_91
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    :cond_97
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 101
    :cond_9a
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->flush()V

    .line 102
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->close()V
    :try_end_a0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_a0} :catch_a1

    goto :goto_ab

    :catch_a1
    move-exception p1

    .line 106
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_ab
    return-void
.end method