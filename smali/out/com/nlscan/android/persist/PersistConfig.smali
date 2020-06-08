.class public Lcom/nlscan/android/persist/PersistConfig;
.super Ljava/lang/Object;
.source "PersistConfig.java"


# static fields
.field private static mInstance:Lcom/nlscan/android/persist/PersistConfig;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/nlscan/android/persist/PersistConfig;
    .registers 1

    .line 14
    sget-object v0, Lcom/nlscan/android/persist/PersistConfig;->mInstance:Lcom/nlscan/android/persist/PersistConfig;

    if-nez v0, :cond_b

    .line 15
    new-instance v0, Lcom/nlscan/android/persist/PersistConfig;

    invoke-direct {v0}, Lcom/nlscan/android/persist/PersistConfig;-><init>()V

    sput-object v0, Lcom/nlscan/android/persist/PersistConfig;->mInstance:Lcom/nlscan/android/persist/PersistConfig;

    .line 16
    :cond_b
    sget-object v0, Lcom/nlscan/android/persist/PersistConfig;->mInstance:Lcom/nlscan/android/persist/PersistConfig;

    return-object v0
.end method


# virtual methods
.method public getFloat(Ljava/lang/String;F)F
    .registers 3

    .line 35
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 3

    .line 25
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 4

    .line 30
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 21
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putFloat(Ljava/lang/String;F)Z
    .registers 3

    .line 55
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putInt(Ljava/lang/String;I)Z
    .registers 3

    .line 45
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putLong(Ljava/lang/String;J)Z
    .registers 4

    .line 50
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 40
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/String;)Z
    .registers 3

    .line 60
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
