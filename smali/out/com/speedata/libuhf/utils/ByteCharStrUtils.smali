.class public Lcom/speedata/libuhf/utils/ByteCharStrUtils;
.super Ljava/lang/Object;
.source "ByteCharStrUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsHex(Ljava/lang/String;)Z
    .registers 6

    .line 97
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 98
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    if-ge v2, v0, :cond_24

    aget-char v3, p0, v2

    const/16 v4, 0x30

    if-lt v3, v4, :cond_18

    const/16 v4, 0x39

    if-le v3, v4, :cond_20

    :cond_18
    const/16 v4, 0x41

    if-lt v3, v4, :cond_25

    const/16 v4, 0x46

    if-gt v3, v4, :cond_25

    :cond_20
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    goto :goto_c

    :cond_24
    move v1, v3

    :cond_25
    return v1
.end method

.method public static b2hexs([BI)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_3b

    .line 14
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_25

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19
    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3b
    return-object v0
.end method

.method public static c2hexs([CI)Ljava/lang/String;
    .registers 7

    mul-int/lit8 v0, p1, 0x2

    .line 26
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_5
    if-ge v2, p1, :cond_1a

    mul-int/lit8 v3, v2, 0x2

    .line 29
    aget-char v4, p0, v2

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    .line 30
    aget-char v4, p0, v2

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 33
    :cond_1a
    invoke-static {v1, v0}, Lcom/speedata/libuhf/utils/ByteCharStrUtils;->b2hexs([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static s2char(Ljava/lang/String;)[C
    .registers 10

    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    new-array v1, v0, [C

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-array v3, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v2, :cond_22

    add-int/lit8 v6, v5, 0x1

    .line 54
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v7

    aput-byte v7, v3, v5

    move v5, v6

    goto :goto_10

    :cond_22
    :goto_22
    if-ge v4, v0, :cond_4d

    mul-int/lit8 p0, v4, 0x4

    add-int/lit8 v2, p0, 0x0

    .line 58
    aget-byte v2, v3, v2

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    add-int/lit8 v5, p0, 0x1

    aget-byte v5, v3, v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v2, v5

    add-int/lit8 v5, p0, 0x2

    aget-byte v5, v3, v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v2, v5

    add-int/lit8 p0, p0, 0x3

    aget-byte p0, v3, p0

    and-int/lit8 p0, p0, 0xf

    or-int/2addr p0, v2

    int-to-char p0, p0

    aput-char p0, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_4d
    return-object v1
.end method

.method private static toByte(C)B
    .registers 2

    const-string v0, "0123456789ABCDEF"

    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .registers 8

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 71
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 72
    new-array v1, v0, [B

    .line 73
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    const/4 v4, 0x1

    if-ge v3, v0, :cond_2d

    mul-int/lit8 v5, v3, 0x2

    .line 76
    aget-char v6, p0, v5

    invoke-static {v6}, Lcom/speedata/libuhf/utils/ByteCharStrUtils;->toByte(C)B

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v4

    aget-char v4, p0, v5

    invoke-static {v4}, Lcom/speedata/libuhf/utils/ByteCharStrUtils;->toByte(C)B

    move-result v4

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 79
    :cond_2d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "----bytes--------"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v1, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "lei"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, v1, v4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static toHexString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    const/4 v1, 0x0

    .line 39
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 40
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_23
    return-object v0
.end method
