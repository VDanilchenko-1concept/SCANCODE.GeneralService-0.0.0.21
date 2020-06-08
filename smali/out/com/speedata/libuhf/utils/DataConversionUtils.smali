.class public Lcom/speedata/libuhf/utils/DataConversionUtils;
.super Ljava/lang/Object;
.source "DataConversionUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HexString2Bytes(Ljava/lang/String;)[B
    .registers 6

    const-string v0, " "

    const-string v1, ""

    .line 25
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 26
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " src= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    .line 29
    :goto_2b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_44

    mul-int/lit8 v3, v2, 0x2

    .line 30
    aget-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, v1, v3

    invoke-static {v4, v3}, Lcom/speedata/libuhf/utils/DataConversionUtils;->uniteBytes(BB)B

    move-result v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_44
    return-object v0
.end method

.method public static ascToHex(C)B
    .registers 2

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_32

    packed-switch p0, :pswitch_data_4a

    packed-switch p0, :pswitch_data_5a

    goto :goto_30

    :pswitch_b
    const/16 v0, 0xf

    goto :goto_30

    :pswitch_e
    const/16 v0, 0xe

    goto :goto_30

    :pswitch_11
    const/16 v0, 0xd

    goto :goto_30

    :pswitch_14
    const/16 v0, 0xc

    goto :goto_30

    :pswitch_17
    const/16 v0, 0xb

    goto :goto_30

    :pswitch_1a
    const/16 v0, 0xa

    goto :goto_30

    :pswitch_1d
    const/16 v0, 0x9

    goto :goto_30

    :pswitch_20
    const/16 v0, 0x8

    goto :goto_30

    :pswitch_23
    const/4 v0, 0x7

    goto :goto_30

    :pswitch_25
    const/4 v0, 0x6

    goto :goto_30

    :pswitch_27
    const/4 v0, 0x5

    goto :goto_30

    :pswitch_29
    const/4 v0, 0x4

    goto :goto_30

    :pswitch_2b
    const/4 v0, 0x3

    goto :goto_30

    :pswitch_2d
    const/4 v0, 0x2

    goto :goto_30

    :pswitch_2f
    const/4 v0, 0x1

    :goto_30
    :pswitch_30
    return v0

    nop

    :pswitch_data_32
    .packed-switch 0x30
        :pswitch_30
        :pswitch_2f
        :pswitch_2d
        :pswitch_2b
        :pswitch_29
        :pswitch_27
        :pswitch_25
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch

    :pswitch_data_4a
    .packed-switch 0x41
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch

    :pswitch_data_5a
    .packed-switch 0x61
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method private static btoi(B)I
    .registers 1

    if-gez p0, :cond_4

    add-int/lit16 p0, p0, 0x100

    :cond_4
    return p0
.end method

.method public static byteArrayToAscii([B)Ljava/lang/String;
    .registers 6

    .line 127
    array-length v0, p0

    .line 128
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    new-array v2, v0, [C

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_13

    .line 132
    aget-byte v4, p0, v3

    int-to-char v4, v4

    aput-char v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 134
    :cond_13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static byteArrayToInt([B)I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 172
    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_15

    .line 173
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x8

    .line 174
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    shl-int v2, v3, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_15
    return v1
.end method

.method public static byteArrayToInt([BZ)I
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    const/4 p1, 0x0

    .line 150
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_29

    .line 151
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x8

    .line 152
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int v1, v2, v1

    add-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 155
    :cond_17
    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    :goto_1a
    if-ltz p1, :cond_28

    mul-int/lit8 v1, p1, 0x8

    .line 157
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int v1, v2, v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1a

    :cond_28
    move p1, v0

    :cond_29
    return p1
.end method

.method public static byteArrayToString([B)Ljava/lang/String;
    .registers 7

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_2d

    .line 86
    array-length v1, p0

    if-gtz v1, :cond_b

    goto :goto_2d

    :cond_b
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 89
    :goto_d
    array-length v3, p0

    if-ge v2, v3, :cond_28

    .line 90
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 91
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 92
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_22

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    :cond_22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 97
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2d
    :goto_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static byteArrayToStringLog([BI)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    const-string v1, ""

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p1, :cond_29

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aget-byte v4, p0, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v1, v0

    const-string v4, "%02x "

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_29
    return-object v1
.end method

.method public static cutBytes([BII)[B
    .registers 5

    .line 188
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 189
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static execCmd([B)[B
    .registers 1

    .line 235
    invoke-static {p0}, Lcom/speedata/libuhf/utils/DataConversionUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p0

    .line 236
    invoke-static {p0}, Lcom/speedata/libuhf/utils/DataConversionUtils;->packageCommand(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentTime(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 199
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 200
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefautCurrentTime()Ljava/lang/String;
    .registers 2

    .line 210
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 211
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .registers 6

    .line 67
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 68
    new-array v1, v0, [B

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_28

    mul-int/lit8 v3, v2, 0x2

    .line 72
    aget-char v4, p0, v3

    invoke-static {v4}, Lcom/speedata/libuhf/utils/DataConversionUtils;->toByte(C)B

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    aget-char v3, p0, v3

    invoke-static {v3}, Lcom/speedata/libuhf/utils/DataConversionUtils;->toByte(C)B

    move-result v3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_28
    return-object v1
.end method

.method public static intToByteArray1(I)[B
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static packageCommand(Ljava/lang/String;)[B
    .registers 10

    .line 250
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    .line 256
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v1, :cond_25

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    :cond_25
    if-ne v2, v3, :cond_38

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    :cond_38
    :goto_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "3226"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ff"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 267
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_6a
    if-ge v4, v0, :cond_7b

    add-int/lit8 v6, v4, 0x2

    .line 272
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x10

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    xor-int/2addr v5, v4

    move v4, v6

    goto :goto_6a

    .line 275
    :cond_7b
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    const/4 v1, 0x0

    .line 278
    :goto_91
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_b5

    .line 279
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "3"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    goto :goto_91

    .line 281
    :cond_b5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "02"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "03"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 283
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 286
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v4, 0x0

    :goto_d4
    if-ge v2, v0, :cond_fb

    .line 288
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/speedata/libuhf/utils/DataConversionUtils;->ascToHex(C)B

    move-result v5

    aput-byte v5, v1, v4

    .line 289
    aget-byte v5, v1, v4

    shl-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 290
    aget-byte v5, v1, v4

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/speedata/libuhf/utils/DataConversionUtils;->ascToHex(C)B

    move-result v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/2addr v4, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_d4

    :cond_fb
    return-object v1
.end method

.method private reverseOrder(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    const/4 v1, 0x0

    .line 396
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 397
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v3

    goto :goto_3

    :cond_2a
    return-object v0
.end method

.method private static toByte(C)B
    .registers 2

    const-string v0, "0123456789ABCDEF"

    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public static uniteBytes(BB)B
    .registers 8

    const-string v0, "0x"

    const/4 v1, 0x0

    .line 45
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x1

    new-array v5, v4, [B

    aput-byte p0, v5, v1

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Byte;->decode(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    shl-int/lit8 p0, p0, 0x4

    int-to-byte p0, p0

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    new-array v3, v4, [B

    aput-byte p1, v3, v1

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Byte;->decode(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_47} :catch_4a

    xor-int/2addr p0, p1

    int-to-byte p0, p0

    return p0

    :catch_4a
    return v1
.end method


# virtual methods
.method protected unsigned4BytesToInt([BI)J
    .registers 6

    .line 377
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    .line 378
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x2

    .line 379
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p2, p2, 0x3

    .line 380
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p2, v0, 0x18

    shl-int/lit8 v0, v1, 0x10

    or-int/2addr p2, v0

    shl-int/lit8 v0, v2, 0x8

    or-int/2addr p2, v0

    or-int/2addr p1, p2

    int-to-long p1, p1

    const-wide v0, 0xffffffffL

    and-long/2addr p1, v0

    return-wide p1
.end method
