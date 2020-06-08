.class public Lcom/speedata/utils/MD5Utils;
.super Ljava/lang/Object;
.source "MD5Utils.java"


# static fields
.field private static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 14
    fill-array-data v0, :array_a

    sput-object v0, Lcom/speedata/utils/MD5Utils;->HEX_DIGITS:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2

    .line 18
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "/init.rc"

    invoke-static {v0}, Lcom/speedata/utils/MD5Utils;->md5sum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static md5sum(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 36
    :try_start_6
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string p0, "MD5"

    .line 37
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 38
    :goto_11
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1c

    const/4 v4, 0x0

    .line 39
    invoke-virtual {p0, v1, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_11

    .line 41
    :cond_1c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 42
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/speedata/utils/MD5Utils;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    .line 43
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2b} :catch_30

    if-eqz v1, :cond_2e

    goto :goto_2f

    :cond_2e
    move-object v0, p0

    :goto_2f
    return-object v0

    .line 45
    :catch_30
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "error"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .registers 5

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 23
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_27

    .line 24
    sget-object v2, Lcom/speedata/utils/MD5Utils;->HEX_DIGITS:[C

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    sget-object v2, Lcom/speedata/utils/MD5Utils;->HEX_DIGITS:[C

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 27
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
