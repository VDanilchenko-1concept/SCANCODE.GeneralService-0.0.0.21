.class public Ljxl/read/biff/CountryRecord;
.super Ljxl/biff/RecordData;
.source "CountryRecord.java"


# static fields
.field static synthetic class$jxl$read$biff$CountryRecord:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private language:I

.field private regionalSettings:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    sget-object v0, Ljxl/read/biff/CountryRecord;->class$jxl$read$biff$CountryRecord:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "jxl.read.biff.CountryRecord"

    invoke-static {v0}, Ljxl/read/biff/CountryRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/CountryRecord;->class$jxl$read$biff$CountryRecord:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/CountryRecord;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .registers 4

    .line 54
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 55
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 57
    aget-byte v0, p1, v0

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/CountryRecord;->language:I

    const/4 v0, 0x2

    .line 58
    aget-byte v0, p1, v0

    const/4 v1, 0x3

    aget-byte p1, p1, v1

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/read/biff/CountryRecord;->regionalSettings:I

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    .line 35
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


# virtual methods
.method public getLanguageCode()I
    .registers 2

    .line 68
    iget v0, p0, Ljxl/read/biff/CountryRecord;->language:I

    return v0
.end method

.method public getRegionalSettingsCode()I
    .registers 2

    .line 78
    iget v0, p0, Ljxl/read/biff/CountryRecord;->regionalSettings:I

    return v0
.end method
