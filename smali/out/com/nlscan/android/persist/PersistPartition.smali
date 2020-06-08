.class public Lcom/nlscan/android/persist/PersistPartition;
.super Ljava/lang/Object;
.source "PersistPartition.java"


# static fields
.field public static final PERMISSION_READ_WRITE_PERSIST_PARTITION:Ljava/lang/String; = "android.permission.READ_WRITE_PERSIST_PARTITION"

.field private static mInstance:Lcom/nlscan/android/persist/PersistPartition;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/nlscan/android/persist/PersistPartition;
    .registers 1

    .line 16
    sget-object v0, Lcom/nlscan/android/persist/PersistPartition;->mInstance:Lcom/nlscan/android/persist/PersistPartition;

    if-nez v0, :cond_b

    .line 17
    new-instance v0, Lcom/nlscan/android/persist/PersistPartition;

    invoke-direct {v0}, Lcom/nlscan/android/persist/PersistPartition;-><init>()V

    sput-object v0, Lcom/nlscan/android/persist/PersistPartition;->mInstance:Lcom/nlscan/android/persist/PersistPartition;

    .line 18
    :cond_b
    sget-object v0, Lcom/nlscan/android/persist/PersistPartition;->mInstance:Lcom/nlscan/android/persist/PersistPartition;

    return-object v0
.end method


# virtual methods
.method public deleteDir(Ljava/lang/String;)Z
    .registers 3

    .line 83
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .registers 3

    .line 73
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fileExists(Ljava/lang/String;)Z
    .registers 3

    .line 93
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readFileBytes(Ljava/lang/String;)[B
    .registers 3

    .line 39
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readFileContent(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 29
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeFileBytes(Ljava/lang/String;[BZ)Z
    .registers 4

    .line 63
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeFileContent(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4

    .line 51
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
