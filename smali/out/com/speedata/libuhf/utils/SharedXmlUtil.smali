.class public Lcom/speedata/libuhf/utils/SharedXmlUtil;
.super Ljava/lang/Object;
.source "SharedXmlUtil.java"


# static fields
.field static lock:[B

.field public static mSharedXmlUtil:Lcom/speedata/libuhf/utils/SharedXmlUtil;


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mShared:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 24
    sput-object v0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->lock:[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "uhf"

    const/4 v1, 0x4

    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mShared:Landroid/content/SharedPreferences;

    .line 38
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 29
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mShared:Landroid/content/SharedPreferences;

    .line 31
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/speedata/libuhf/utils/SharedXmlUtil;
    .registers 3

    .line 42
    sget-object v0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->lock:[B

    monitor-enter v0

    .line 43
    :try_start_3
    sget-object v1, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mSharedXmlUtil:Lcom/speedata/libuhf/utils/SharedXmlUtil;

    if-nez v1, :cond_e

    .line 44
    new-instance v1, Lcom/speedata/libuhf/utils/SharedXmlUtil;

    invoke-direct {v1, p0}, Lcom/speedata/libuhf/utils/SharedXmlUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mSharedXmlUtil:Lcom/speedata/libuhf/utils/SharedXmlUtil;

    .line 46
    :cond_e
    sget-object p0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mSharedXmlUtil:Lcom/speedata/libuhf/utils/SharedXmlUtil;

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 47
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/speedata/libuhf/utils/SharedXmlUtil;
    .registers 4

    .line 51
    sget-object v0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->lock:[B

    monitor-enter v0

    .line 52
    :try_start_3
    sget-object v1, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mSharedXmlUtil:Lcom/speedata/libuhf/utils/SharedXmlUtil;

    if-nez v1, :cond_e

    .line 53
    new-instance v1, Lcom/speedata/libuhf/utils/SharedXmlUtil;

    invoke-direct {v1, p0, p1}, Lcom/speedata/libuhf/utils/SharedXmlUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mSharedXmlUtil:Lcom/speedata/libuhf/utils/SharedXmlUtil;

    .line 55
    :cond_e
    sget-object p0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mSharedXmlUtil:Lcom/speedata/libuhf/utils/SharedXmlUtil;

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 56
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .registers 4

    .line 136
    sget-object v0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->lock:[B

    monitor-enter v0

    .line 137
    :try_start_3
    iget-object v1, p0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    iget-object p1, p0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    iget-object p1, p0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 140
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public read(Ljava/lang/String;F)F
    .registers 5

    .line 124
    sget-object v0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->lock:[B

    monitor-enter v0

    .line 125
    :try_start_3
    iget-object v1, p0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mShared:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    monitor-exit v0

    return p1

    :catchall_b
    move-exception p1

    .line 126
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public read(Ljava/lang/String;I)I
    .registers 5

    .line 118
    sget-object v0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->lock:[B

    monitor-enter v0

    .line 119
    :try_start_3
    iget-object v1, p0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mShared:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_b
    move-exception p1

    .line 120
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public read(Ljava/lang/String;J)J
    .registers 6

    .line 130
    sget-object v0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->lock:[B

    monitor-enter v0

    .line 131
    :try_start_3
    iget-object v1, p0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mShared:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    :catchall_b
    move-exception p1

    .line 132
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mShared:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_b

    :catch_7
    move-exception p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b
    return-object p2
.end method

.method public read(Ljava/lang/String;Z)Z
    .registers 5

    .line 112
    sget-object v0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->lock:[B

    monitor-enter v0

    .line 113
    :try_start_3
    iget-object v1, p0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mShared:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_b
    move-exception p1

    .line 114
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public write(Ljava/lang/String;F)V
    .registers 5

    .line 84
    sget-object v0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->lock:[B

    monitor-enter v0

    .line 85
    :try_start_3
    iget-object v1, p0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 86
    iget-object p1, p0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    iget-object p1, p0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 88
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public write(Ljava/lang/String;I)V
    .registers 5

    .line 76
    sget-object v0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->lock:[B

    monitor-enter v0

    .line 77
    :try_start_3
    iget-object v1, p0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 78
    iget-object p1, p0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    iget-object p1, p0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public write(Ljava/lang/String;J)V
    .registers 6

    .line 92
    sget-object v0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->lock:[B

    monitor-enter v0

    .line 93
    :try_start_3
    iget-object v1, p0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 94
    iget-object p1, p0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 95
    iget-object p1, p0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 96
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 60
    sget-object v0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->lock:[B

    monitor-enter v0

    .line 61
    :try_start_3
    iget-object v1, p0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 62
    iget-object p1, p0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 63
    iget-object p1, p0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public write(Ljava/lang/String;Z)V
    .registers 5

    .line 68
    sget-object v0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->lock:[B

    monitor-enter v0

    .line 69
    :try_start_3
    iget-object v1, p0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 70
    iget-object p1, p0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    iget-object p1, p0, Lcom/speedata/libuhf/utils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 72
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method
