.class Ljxl/write/biff/SharedStrings;
.super Ljava/lang/Object;
.source "SharedStrings.java"


# instance fields
.field private stringList:Ljava/util/ArrayList;

.field private strings:Ljava/util/HashMap;

.field private totalOccurrences:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljxl/write/biff/SharedStrings;->strings:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljxl/write/biff/SharedStrings;->stringList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Ljxl/write/biff/SharedStrings;->totalOccurrences:I

    return-void
.end method

.method private createContinueRecord(Ljava/lang/String;ILjxl/write/biff/File;)Ljxl/write/biff/SSTContinueRecord;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :cond_1
    :goto_1
    if-eqz p2, :cond_34

    .line 167
    new-instance v0, Ljxl/write/biff/SSTContinueRecord;

    invoke-direct {v0}, Ljxl/write/biff/SSTContinueRecord;-><init>()V

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq p2, v1, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_15

    goto :goto_24

    .line 175
    :cond_15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Ljxl/write/biff/SSTContinueRecord;->setFirstString(Ljava/lang/String;Z)I

    move-result p2

    goto :goto_29

    :cond_24
    :goto_24
    const/4 p2, 0x1

    .line 171
    invoke-virtual {v0, p1, p2}, Ljxl/write/biff/SSTContinueRecord;->setFirstString(Ljava/lang/String;Z)I

    move-result p2

    :goto_29
    if-eqz p2, :cond_1

    .line 181
    invoke-virtual {p3, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 182
    new-instance v0, Ljxl/write/biff/SSTContinueRecord;

    invoke-direct {v0}, Ljxl/write/biff/SSTContinueRecord;-><init>()V

    goto :goto_1

    :cond_34
    return-object v0
.end method


# virtual methods
.method public get(I)Ljava/lang/String;
    .registers 3

    .line 91
    iget-object v0, p0, Ljxl/write/biff/SharedStrings;->stringList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getIndex(Ljava/lang/String;)I
    .registers 4

    .line 69
    iget-object v0, p0, Ljxl/write/biff/SharedStrings;->strings:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1f

    .line 73
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Ljxl/write/biff/SharedStrings;->strings:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 74
    iget-object v1, p0, Ljxl/write/biff/SharedStrings;->strings:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v1, p0, Ljxl/write/biff/SharedStrings;->stringList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_1f
    iget p1, p0, Ljxl/write/biff/SharedStrings;->totalOccurrences:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljxl/write/biff/SharedStrings;->totalOccurrences:I

    .line 80
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public write(Ljxl/write/biff/File;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    new-instance v0, Ljxl/write/biff/SSTRecord;

    iget v1, p0, Ljxl/write/biff/SharedStrings;->totalOccurrences:I

    iget-object v2, p0, Ljxl/write/biff/SharedStrings;->stringList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljxl/write/biff/SSTRecord;-><init>(II)V

    .line 107
    new-instance v1, Ljxl/write/biff/ExtendedSSTRecord;

    iget-object v2, p0, Ljxl/write/biff/SharedStrings;->stringList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljxl/write/biff/ExtendedSSTRecord;-><init>(I)V

    .line 108
    invoke-virtual {v1}, Ljxl/write/biff/ExtendedSSTRecord;->getNumberOfStringsPerBucket()I

    move-result v2

    .line 110
    iget-object v3, p0, Ljxl/write/biff/SharedStrings;->stringList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v5

    const/4 v5, 0x0

    .line 112
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4e

    if-nez v4, :cond_4e

    .line 114
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    .line 116
    invoke-virtual {v0}, Ljxl/write/biff/SSTRecord;->getOffset()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    .line 117
    invoke-virtual {v0, v6}, Ljxl/write/biff/SSTRecord;->add(Ljava/lang/String;)I

    move-result v7

    .line 118
    rem-int v8, v5, v2

    if-nez v8, :cond_4a

    .line 119
    invoke-virtual {p1}, Ljxl/write/biff/File;->getPos()I

    move-result v8

    invoke-virtual {v1, v8, v4}, Ljxl/write/biff/ExtendedSSTRecord;->addString(II)V

    :cond_4a
    add-int/lit8 v5, v5, 0x1

    move v4, v7

    goto :goto_26

    .line 123
    :cond_4e
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    if-nez v4, :cond_59

    .line 125
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 128
    :cond_59
    invoke-direct {p0, v6, v4, p1}, Ljxl/write/biff/SharedStrings;->createContinueRecord(Ljava/lang/String;ILjxl/write/biff/File;)Ljxl/write/biff/SSTContinueRecord;

    move-result-object v0

    .line 133
    :cond_5d
    :goto_5d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 135
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 136
    invoke-virtual {v0}, Ljxl/write/biff/SSTContinueRecord;->getOffset()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    .line 137
    invoke-virtual {v0, v4}, Ljxl/write/biff/SSTContinueRecord;->add(Ljava/lang/String;)I

    move-result v7

    .line 138
    rem-int v8, v5, v2

    if-nez v8, :cond_7e

    .line 139
    invoke-virtual {p1}, Ljxl/write/biff/File;->getPos()I

    move-result v8

    invoke-virtual {v1, v8, v6}, Ljxl/write/biff/ExtendedSSTRecord;->addString(II)V

    :cond_7e
    add-int/lit8 v5, v5, 0x1

    if-eqz v7, :cond_5d

    .line 145
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 146
    invoke-direct {p0, v4, v7, p1}, Ljxl/write/biff/SharedStrings;->createContinueRecord(Ljava/lang/String;ILjxl/write/biff/File;)Ljxl/write/biff/SSTContinueRecord;

    move-result-object v0

    goto :goto_5d

    .line 150
    :cond_8a
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 153
    :cond_8d
    invoke-virtual {p1, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    return-void
.end method
