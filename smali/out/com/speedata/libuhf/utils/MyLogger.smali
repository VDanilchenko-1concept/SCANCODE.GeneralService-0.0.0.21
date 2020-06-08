.class public Lcom/speedata/libuhf/utils/MyLogger;
.super Ljava/lang/Object;
.source "MyLogger.java"


# static fields
.field private static final JAMES:Ljava/lang/String; = "@XU@"

.field private static final KESEN:Ljava/lang/String; = "@BAIRU@"

.field private static jlog:Lcom/speedata/libuhf/utils/MyLogger; = null

.field private static klog:Lcom/speedata/libuhf/utils/MyLogger; = null

.field private static logFlag:Z = true

.field private static final logLevel:I = 0x2

.field private static sLoggerTable:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/speedata/libuhf/utils/MyLogger;",
            ">;"
        }
    .end annotation
.end field

.field public static final tag:Ljava/lang/String; = "SPEEDATA"


# instance fields
.field private mClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/speedata/libuhf/utils/MyLogger;->sLoggerTable:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/speedata/libuhf/utils/MyLogger;->mClassName:Ljava/lang/String;

    return-void
.end method

.method private getFunctionName()Ljava/lang/String;
    .registers 8

    .line 69
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 73
    :cond_c
    array-length v2, v0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_87

    aget-object v4, v0, v3

    .line 74
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v5

    if-eqz v5, :cond_19

    goto :goto_3c

    .line 77
    :cond_19
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    goto :goto_3c

    .line 80
    :cond_2a
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    :goto_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 83
    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/speedata/libuhf/utils/MyLogger;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_87
    return-object v1
.end method

.method private static getLogger(Ljava/lang/String;)Lcom/speedata/libuhf/utils/MyLogger;
    .registers 3

    .line 31
    sget-object v0, Lcom/speedata/libuhf/utils/MyLogger;->sLoggerTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedata/libuhf/utils/MyLogger;

    if-nez v0, :cond_14

    .line 33
    new-instance v0, Lcom/speedata/libuhf/utils/MyLogger;

    invoke-direct {v0, p0}, Lcom/speedata/libuhf/utils/MyLogger;-><init>(Ljava/lang/String;)V

    .line 34
    sget-object v1, Lcom/speedata/libuhf/utils/MyLogger;->sLoggerTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-object v0
.end method

.method public static jLog()Lcom/speedata/libuhf/utils/MyLogger;
    .registers 2

    .line 57
    sget-object v0, Lcom/speedata/libuhf/utils/MyLogger;->jlog:Lcom/speedata/libuhf/utils/MyLogger;

    if-nez v0, :cond_d

    .line 58
    new-instance v0, Lcom/speedata/libuhf/utils/MyLogger;

    const-string v1, "@XU@"

    invoke-direct {v0, v1}, Lcom/speedata/libuhf/utils/MyLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/speedata/libuhf/utils/MyLogger;->jlog:Lcom/speedata/libuhf/utils/MyLogger;

    .line 60
    :cond_d
    sget-object v0, Lcom/speedata/libuhf/utils/MyLogger;->jlog:Lcom/speedata/libuhf/utils/MyLogger;

    return-object v0
.end method

.method public static kLog()Lcom/speedata/libuhf/utils/MyLogger;
    .registers 2

    .line 45
    sget-object v0, Lcom/speedata/libuhf/utils/MyLogger;->klog:Lcom/speedata/libuhf/utils/MyLogger;

    if-nez v0, :cond_d

    .line 46
    new-instance v0, Lcom/speedata/libuhf/utils/MyLogger;

    const-string v1, "@BAIRU@"

    invoke-direct {v0, v1}, Lcom/speedata/libuhf/utils/MyLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/speedata/libuhf/utils/MyLogger;->klog:Lcom/speedata/libuhf/utils/MyLogger;

    .line 48
    :cond_d
    sget-object v0, Lcom/speedata/libuhf/utils/MyLogger;->klog:Lcom/speedata/libuhf/utils/MyLogger;

    return-object v0
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .registers 5

    .line 115
    sget-boolean v0, Lcom/speedata/libuhf/utils/MyLogger;->logFlag:Z

    if-eqz v0, :cond_2b

    .line 117
    invoke-direct {p0}, Lcom/speedata/libuhf/utils/MyLogger;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPEEDATA"

    if-eqz v0, :cond_24

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 121
    :cond_24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :goto_2b
    return-void
.end method

.method public e(Ljava/lang/Exception;)V
    .registers 4

    .line 187
    sget-boolean v0, Lcom/speedata/libuhf/utils/MyLogger;->logFlag:Z

    if-eqz v0, :cond_b

    const-string v0, "SPEEDATA"

    const-string v1, "error"

    .line 189
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .registers 5

    .line 169
    sget-boolean v0, Lcom/speedata/libuhf/utils/MyLogger;->logFlag:Z

    if-eqz v0, :cond_2b

    .line 171
    invoke-direct {p0}, Lcom/speedata/libuhf/utils/MyLogger;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPEEDATA"

    if-eqz v0, :cond_24

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 175
    :cond_24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :goto_2b
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 201
    sget-boolean v0, Lcom/speedata/libuhf/utils/MyLogger;->logFlag:Z

    if-eqz v0, :cond_40

    .line 202
    invoke-direct {p0}, Lcom/speedata/libuhf/utils/MyLogger;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{Thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/speedata/libuhf/utils/MyLogger;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":] "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SPEEDATA"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_40
    return-void
.end method

.method public i(Ljava/lang/Object;)V
    .registers 5

    .line 96
    sget-boolean v0, Lcom/speedata/libuhf/utils/MyLogger;->logFlag:Z

    if-eqz v0, :cond_2b

    .line 98
    invoke-direct {p0}, Lcom/speedata/libuhf/utils/MyLogger;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPEEDATA"

    if-eqz v0, :cond_24

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 102
    :cond_24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :goto_2b
    return-void
.end method

.method public setLogFlag(Z)V
    .registers 2

    .line 209
    sput-boolean p1, Lcom/speedata/libuhf/utils/MyLogger;->logFlag:Z

    return-void
.end method

.method public v(Ljava/lang/Object;)V
    .registers 5

    .line 133
    sget-boolean v0, Lcom/speedata/libuhf/utils/MyLogger;->logFlag:Z

    if-eqz v0, :cond_2b

    .line 135
    invoke-direct {p0}, Lcom/speedata/libuhf/utils/MyLogger;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPEEDATA"

    if-eqz v0, :cond_24

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 139
    :cond_24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :goto_2b
    return-void
.end method

.method public w(Ljava/lang/Object;)V
    .registers 5

    .line 151
    sget-boolean v0, Lcom/speedata/libuhf/utils/MyLogger;->logFlag:Z

    if-eqz v0, :cond_2b

    .line 153
    invoke-direct {p0}, Lcom/speedata/libuhf/utils/MyLogger;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPEEDATA"

    if-eqz v0, :cond_24

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 157
    :cond_24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :goto_2b
    return-void
.end method
