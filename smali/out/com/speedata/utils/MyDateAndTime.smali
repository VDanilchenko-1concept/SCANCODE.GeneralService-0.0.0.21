.class public Lcom/speedata/utils/MyDateAndTime;
.super Ljava/lang/Object;
.source "MyDateAndTime.java"


# instance fields
.field beforAMonth:Ljava/lang/String;

.field day:I

.field hour:I

.field min:I

.field month:I

.field second:I

.field year:I

.field yearAndMonth:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lcom/speedata/utils/MyDateAndTime;->yearAndMonth:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/speedata/utils/MyDateAndTime;->beforAMonth:Ljava/lang/String;

    return-void
.end method

.method public static GetItemId()I
    .registers 2

    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public static getBatchCode()Ljava/lang/String;
    .registers 2

    .line 87
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmssSSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 88
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMakerDate()Ljava/lang/String;
    .registers 2

    .line 94
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmssSSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 95
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeString()Ljava/lang/String;
    .registers 2

    .line 100
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 101
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 112
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 113
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeStringYMD()Ljava/lang/String;
    .registers 2

    .line 106
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 107
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static praseDateAndTime(Ljava/lang/String;)Lcom/speedata/utils/MyDateAndTime;
    .registers 9

    const-string v0, "-0"

    .line 126
    new-instance v1, Lcom/speedata/utils/MyDateAndTime;

    invoke-direct {v1}, Lcom/speedata/utils/MyDateAndTime;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0xa

    .line 129
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xb

    .line 130
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v5, ":"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 131
    array-length v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-lt v5, v7, :cond_f4

    array-length v5, p0

    if-ge v5, v7, :cond_2a

    goto/16 :goto_f4

    .line 135
    :cond_2a
    :try_start_2a
    aget-object v5, v3, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/speedata/utils/MyDateAndTime;->setYear(I)V

    const/4 v5, 0x1

    .line 136
    aget-object v7, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/speedata/utils/MyDateAndTime;->setMonth(I)V

    const/4 v7, 0x2

    .line 137
    aget-object v3, v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/speedata/utils/MyDateAndTime;->setDay(I)V

    .line 139
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/speedata/utils/MyDateAndTime;->setHour(I)V

    .line 140
    aget-object v2, p0, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/speedata/utils/MyDateAndTime;->setMin(I)V

    .line 141
    aget-object p0, p0, v7

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/speedata/utils/MyDateAndTime;->setSecond(I)V

    .line 142
    invoke-virtual {v1}, Lcom/speedata/utils/MyDateAndTime;->getMonth()I

    move-result p0

    if-gez p0, :cond_ae

    .line 143
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/speedata/utils/MyDateAndTime;->getYear()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/speedata/utils/MyDateAndTime;->getMonth()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/speedata/utils/MyDateAndTime;->setYearAndMonth(Ljava/lang/String;)V

    .line 144
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/speedata/utils/MyDateAndTime;->getYear()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/speedata/utils/MyDateAndTime;->getMonth()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v1}, Lcom/speedata/utils/MyDateAndTime;->getDay()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 144
    invoke-virtual {v1, p0}, Lcom/speedata/utils/MyDateAndTime;->setBeforAMonth(Ljava/lang/String;)V

    goto :goto_f3

    .line 147
    :cond_ae
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/speedata/utils/MyDateAndTime;->getYear()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/speedata/utils/MyDateAndTime;->getMonth()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/speedata/utils/MyDateAndTime;->setYearAndMonth(Ljava/lang/String;)V

    .line 148
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/speedata/utils/MyDateAndTime;->getYear()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/speedata/utils/MyDateAndTime;->getMonth()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v1}, Lcom/speedata/utils/MyDateAndTime;->getDay()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 148
    invoke-virtual {v1, p0}, Lcom/speedata/utils/MyDateAndTime;->setBeforAMonth(Ljava/lang/String;)V
    :try_end_f3
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_f3} :catch_f4

    :goto_f3
    return-object v1

    :catch_f4
    :cond_f4
    :goto_f4
    return-object v6
.end method


# virtual methods
.method public getBeforAMonth()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/speedata/utils/MyDateAndTime;->beforAMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getDay()I
    .registers 2

    .line 25
    iget v0, p0, Lcom/speedata/utils/MyDateAndTime;->day:I

    return v0
.end method

.method public getHour()I
    .registers 2

    .line 33
    iget v0, p0, Lcom/speedata/utils/MyDateAndTime;->hour:I

    return v0
.end method

.method public getMin()I
    .registers 2

    .line 41
    iget v0, p0, Lcom/speedata/utils/MyDateAndTime;->min:I

    return v0
.end method

.method public getMonth()I
    .registers 2

    .line 49
    iget v0, p0, Lcom/speedata/utils/MyDateAndTime;->month:I

    return v0
.end method

.method public getSecond()I
    .registers 2

    .line 57
    iget v0, p0, Lcom/speedata/utils/MyDateAndTime;->second:I

    return v0
.end method

.method public getYear()I
    .registers 2

    .line 65
    iget v0, p0, Lcom/speedata/utils/MyDateAndTime;->year:I

    return v0
.end method

.method public getYearAndMonth()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/speedata/utils/MyDateAndTime;->yearAndMonth:Ljava/lang/String;

    return-object v0
.end method

.method public setBeforAMonth(Ljava/lang/String;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/speedata/utils/MyDateAndTime;->beforAMonth:Ljava/lang/String;

    return-void
.end method

.method public setDay(I)V
    .registers 2

    .line 29
    iput p1, p0, Lcom/speedata/utils/MyDateAndTime;->day:I

    return-void
.end method

.method public setHour(I)V
    .registers 2

    .line 37
    iput p1, p0, Lcom/speedata/utils/MyDateAndTime;->hour:I

    return-void
.end method

.method public setMin(I)V
    .registers 2

    .line 45
    iput p1, p0, Lcom/speedata/utils/MyDateAndTime;->min:I

    return-void
.end method

.method public setMonth(I)V
    .registers 2

    .line 53
    iput p1, p0, Lcom/speedata/utils/MyDateAndTime;->month:I

    return-void
.end method

.method public setSecond(I)V
    .registers 2

    .line 61
    iput p1, p0, Lcom/speedata/utils/MyDateAndTime;->second:I

    return-void
.end method

.method public setYear(I)V
    .registers 2

    .line 69
    iput p1, p0, Lcom/speedata/utils/MyDateAndTime;->year:I

    return-void
.end method

.method public setYearAndMonth(Ljava/lang/String;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/speedata/utils/MyDateAndTime;->yearAndMonth:Ljava/lang/String;

    return-void
.end method
