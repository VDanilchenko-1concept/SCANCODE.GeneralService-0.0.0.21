.class public Lorg/apache/commons/lang3/SerializationUtils;
.super Ljava/lang/Object;
.source "SerializationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clone(Ljava/io/Serializable;)Ljava/io/Serializable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 81
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/lang3/SerializationUtils;->serialize(Ljava/io/Serializable;)[B

    move-result-object v0

    .line 82
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 84
    :try_start_d
    new-instance v0, Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_1a} :catch_32
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1a} :catch_29

    .line 92
    :try_start_1a
    invoke-virtual {v0}, Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/Serializable;
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_24

    .line 95
    :try_start_20
    invoke-virtual {v0}, Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;->close()V
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_20 .. :try_end_23} :catch_32
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_29

    return-object p0

    :catchall_24
    move-exception p0

    .line 84
    :try_start_25
    invoke-virtual {v0}, Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_28

    :catchall_28
    :try_start_28
    throw p0
    :try_end_29
    .catch Ljava/lang/ClassNotFoundException; {:try_start_28 .. :try_end_29} :catch_32
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_29} :catch_29

    :catch_29
    move-exception p0

    .line 98
    new-instance v0, Lorg/apache/commons/lang3/SerializationException;

    const-string v1, "IOException while reading or closing cloned object data"

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_32
    move-exception p0

    .line 96
    new-instance v0, Lorg/apache/commons/lang3/SerializationException;

    const-string v1, "ClassNotFoundException while reading cloned object data"

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static deserialize(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "The InputStream must not be null"

    .line 191
    invoke-static {v1, v2, v0}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :try_start_d
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_12} :catch_21
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_1f

    .line 194
    :try_start_12
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_1a

    .line 196
    :try_start_16
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_19
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_19} :catch_21
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1f

    return-object p0

    :catchall_1a
    move-exception p0

    .line 192
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1e

    :catchall_1e
    :try_start_1e
    throw p0
    :try_end_1f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1e .. :try_end_1f} :catch_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1f} :catch_1f

    :catch_1f
    move-exception p0

    goto :goto_22

    :catch_21
    move-exception p0

    .line 197
    :goto_22
    new-instance v0, Lorg/apache/commons/lang3/SerializationException;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static deserialize([B)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "The byte[] must not be null"

    .line 222
    invoke-static {v1, v2, v0}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 223
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/apache/commons/lang3/SerializationUtils;->deserialize(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static roundtrip(Ljava/io/Serializable;)Ljava/io/Serializable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 115
    invoke-static {p0}, Lorg/apache/commons/lang3/SerializationUtils;->serialize(Ljava/io/Serializable;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/lang3/SerializationUtils;->deserialize([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/Serializable;

    return-object p0
.end method

.method public static serialize(Ljava/io/Serializable;Ljava/io/OutputStream;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "The OutputStream must not be null"

    .line 136
    invoke-static {v1, v2, v0}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 137
    :try_start_d
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_1e

    .line 138
    :try_start_12
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_19

    .line 139
    :try_start_15
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_1e

    return-void

    :catchall_19
    move-exception p0

    .line 137
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1d

    :catchall_1d
    :try_start_1d
    throw p0
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception p0

    .line 140
    new-instance p1, Lorg/apache/commons/lang3/SerializationException;

    invoke-direct {p1, p0}, Lorg/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static serialize(Ljava/io/Serializable;)[B
    .registers 3

    .line 153
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 154
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/SerializationUtils;->serialize(Ljava/io/Serializable;Ljava/io/OutputStream;)V

    .line 155
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
