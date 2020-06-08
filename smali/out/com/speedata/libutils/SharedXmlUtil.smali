.class public Lcom/speedata/libutils/SharedXmlUtil;
.super Ljava/lang/Object;
.source "SharedXmlUtil.java"


# static fields
.field static lock:[B

.field public static mSharedXmlUtil:Lcom/speedata/libutils/SharedXmlUtil;


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mShared:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 24
    sput-object v0, Lcom/speedata/libutils/SharedXmlUtil;->lock:[B

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

    iput-object p1, p0, Lcom/speedata/libutils/SharedXmlUtil;->mShared:Landroid/content/SharedPreferences;

    .line 31
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/speedata/libutils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/speedata/libutils/SharedXmlUtil;
    .registers 4

    .line 57
    sget-object v0, Lcom/speedata/libutils/SharedXmlUtil;->lock:[B

    monitor-enter v0

    .line 58
    :try_start_3
    sget-object v1, Lcom/speedata/libutils/SharedXmlUtil;->mSharedXmlUtil:Lcom/speedata/libutils/SharedXmlUtil;

    if-nez v1, :cond_e

    .line 59
    new-instance v1, Lcom/speedata/libutils/SharedXmlUtil;

    invoke-direct {v1, p0, p1}, Lcom/speedata/libutils/SharedXmlUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/speedata/libutils/SharedXmlUtil;->mSharedXmlUtil:Lcom/speedata/libutils/SharedXmlUtil;

    .line 61
    :cond_e
    sget-object p0, Lcom/speedata/libutils/SharedXmlUtil;->mSharedXmlUtil:Lcom/speedata/libutils/SharedXmlUtil;

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 62
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .registers 4

    .line 200
    sget-object v0, Lcom/speedata/libutils/SharedXmlUtil;->lock:[B

    monitor-enter v0

    .line 201
    :try_start_3
    iget-object v1, p0, Lcom/speedata/libutils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 202
    iget-object p1, p0, Lcom/speedata/libutils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
    iget-object p1, p0, Lcom/speedata/libutils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 204
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

    .line 178
    sget-object v0, Lcom/speedata/libutils/SharedXmlUtil;->lock:[B

    monitor-enter v0

    .line 179
    :try_start_3
    iget-object v1, p0, Lcom/speedata/libutils/SharedXmlUtil;->mShared:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    monitor-exit v0

    return p1

    :catchall_b
    move-exception p1

    .line 180
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public read(Ljava/lang/String;I)I
    .registers 5

    .line 167
    sget-object v0, Lcom/speedata/libutils/SharedXmlUtil;->lock:[B

    monitor-enter v0

    .line 168
    :try_start_3
    iget-object v1, p0, Lcom/speedata/libutils/SharedXmlUtil;->mShared:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_b
    move-exception p1

    .line 169
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public read(Ljava/lang/String;J)J
    .registers 6

    .line 190
    sget-object v0, Lcom/speedata/libutils/SharedXmlUtil;->lock:[B

    monitor-enter v0

    .line 191
    :try_start_3
    iget-object v1, p0, Lcom/speedata/libutils/SharedXmlUtil;->mShared:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    :catchall_b
    move-exception p1

    .line 192
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/speedata/libutils/SharedXmlUtil;->mShared:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_b

    :catch_7
    move-exception p1

    .line 142
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b
    return-object p2
.end method

.method public read(Ljava/lang/String;Z)Z
    .registers 5

    .line 155
    sget-object v0, Lcom/speedata/libutils/SharedXmlUtil;->lock:[B

    monitor-enter v0

    .line 156
    :try_start_3
    iget-object v1, p0, Lcom/speedata/libutils/SharedXmlUtil;->mShared:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_b
    move-exception p1

    .line 157
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public write(Ljava/lang/String;F)V
    .registers 5

    .line 110
    sget-object v0, Lcom/speedata/libutils/SharedXmlUtil;->lock:[B

    monitor-enter v0

    .line 111
    :try_start_3
    iget-object v1, p0, Lcom/speedata/libutils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 112
    iget-object p1, p0, Lcom/speedata/libutils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    iget-object p1, p0, Lcom/speedata/libutils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 114
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

    .line 97
    sget-object v0, Lcom/speedata/libutils/SharedXmlUtil;->lock:[B

    monitor-enter v0

    .line 98
    :try_start_3
    iget-object v1, p0, Lcom/speedata/libutils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 99
    iget-object p1, p0, Lcom/speedata/libutils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    iget-object p1, p0, Lcom/speedata/libutils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 101
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

    .line 123
    sget-object v0, Lcom/speedata/libutils/SharedXmlUtil;->lock:[B

    monitor-enter v0

    .line 124
    :try_start_3
    iget-object v1, p0, Lcom/speedata/libutils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 125
    iget-object p1, p0, Lcom/speedata/libutils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    iget-object p1, p0, Lcom/speedata/libutils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 127
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

    .line 71
    sget-object v0, Lcom/speedata/libutils/SharedXmlUtil;->lock:[B

    monitor-enter v0

    .line 72
    :try_start_3
    iget-object v1, p0, Lcom/speedata/libutils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 73
    iget-object p1, p0, Lcom/speedata/libutils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    iget-object p1, p0, Lcom/speedata/libutils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 75
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

    .line 84
    sget-object v0, Lcom/speedata/libutils/SharedXmlUtil;->lock:[B

    monitor-enter v0

    .line 85
    :try_start_3
    iget-object v1, p0, Lcom/speedata/libutils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 86
    iget-object p1, p0, Lcom/speedata/libutils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    iget-object p1, p0, Lcom/speedata/libutils/SharedXmlUtil;->mEditor:Landroid/content/SharedPreferences$Editor;

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
