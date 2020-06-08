.class public Ljxl/write/biff/NumberFormatRecord;
.super Ljxl/biff/FormatRecord;
.source "NumberFormatRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;
    }
.end annotation


# static fields
.field static synthetic class$jxl$write$biff$NumberFormatRecord:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    sget-object v0, Ljxl/write/biff/NumberFormatRecord;->class$jxl$write$biff$NumberFormatRecord:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "jxl.write.biff.NumberFormatRecord"

    invoke-static {v0}, Ljxl/write/biff/NumberFormatRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/NumberFormatRecord;->class$jxl$write$biff$NumberFormatRecord:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/NumberFormatRecord;->logger:Lcommon/Logger;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 48
    invoke-direct {p0}, Ljxl/biff/FormatRecord;-><init>()V

    const-string v0, "E0"

    const-string v1, "E+0"

    .line 53
    invoke-virtual {p0, p1, v0, v1}, Ljxl/write/biff/NumberFormatRecord;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-direct {p0, p1}, Ljxl/write/biff/NumberFormatRecord;->trimInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Ljxl/write/biff/NumberFormatRecord;->setFormatString(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;)V
    .registers 4

    .line 68
    invoke-direct {p0}, Ljxl/biff/FormatRecord;-><init>()V

    const-string p2, "E0"

    const-string v0, "E+0"

    .line 73
    invoke-virtual {p0, p1, p2, v0}, Ljxl/write/biff/NumberFormatRecord;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Ljxl/write/biff/NumberFormatRecord;->setFormatString(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    .line 34
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private trimInvalidChars(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/16 v0, 0x23

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x30

    .line 88
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v1, v4, :cond_14

    if-ne v3, v4, :cond_14

    const-string p1, "#.###"

    return-object p1

    :cond_14
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_46

    if-eqz v3, :cond_46

    if-eq v1, v6, :cond_46

    if-eq v3, v6, :cond_46

    const v7, 0x7fffffff

    if-ne v1, v4, :cond_26

    const v1, 0x7fffffff

    :cond_26
    if-ne v3, v4, :cond_2b

    const v3, 0x7fffffff

    .line 103
    :cond_2b
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 105
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 106
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 107
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 112
    :cond_46
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 113
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 115
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_7b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_5b

    goto :goto_7b

    .line 122
    :cond_5b
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 125
    :cond_5f
    :goto_5f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v6

    if-le v1, v0, :cond_77

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x29

    if-eq v1, v2, :cond_5f

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_77

    goto :goto_5f

    .line 132
    :cond_77
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_7b
    :goto_7b
    return-object p1
.end method
