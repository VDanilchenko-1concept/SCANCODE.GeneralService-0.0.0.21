.class Ljxl/read/biff/CalcModeRecord;
.super Ljxl/biff/RecordData;
.source "CalcModeRecord.java"


# static fields
.field static synthetic class$jxl$read$biff$CalcModeRecord:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private automatic:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    sget-object v0, Ljxl/read/biff/CalcModeRecord;->class$jxl$read$biff$CalcModeRecord:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "jxl.read.biff.CalcModeRecord"

    invoke-static {v0}, Ljxl/read/biff/CalcModeRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/CalcModeRecord;->class$jxl$read$biff$CalcModeRecord:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/CalcModeRecord;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .registers 5

    .line 49
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 50
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 51
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    aget-byte p1, p1, v2

    invoke-static {v1, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    if-ne p1, v2, :cond_14

    const/4 v0, 0x1

    .line 52
    :cond_14
    iput-boolean v0, p0, Ljxl/read/biff/CalcModeRecord;->automatic:Z

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
.method public isAutomatic()Z
    .registers 2

    .line 62
    iget-boolean v0, p0, Ljxl/read/biff/CalcModeRecord;->automatic:Z

    return v0
.end method
