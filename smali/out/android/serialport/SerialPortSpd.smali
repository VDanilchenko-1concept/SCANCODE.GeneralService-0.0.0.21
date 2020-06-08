.class public Landroid/serialport/SerialPortSpd;
.super Ljava/lang/Object;
.source "SerialPortSpd.java"


# static fields
.field public static final SERIAL_TTYG0:Ljava/lang/String; = "/dev/ttyG0"

.field public static final SERIAL_TTYG1:Ljava/lang/String; = "/dev/ttyG1"

.field public static final SERIAL_TTYG2:Ljava/lang/String; = "/dev/ttyG2"

.field public static final SERIAL_TTYG3:Ljava/lang/String; = "/dev/ttyG3"

.field public static final SERIAL_TTYHSL0:Ljava/lang/String; = "/dev/ttyHSL0"

.field public static final SERIAL_TTYHSL1:Ljava/lang/String; = "/dev/ttyHSL1"

.field public static final SERIAL_TTYHSL2:Ljava/lang/String; = "/dev/ttyHSL2"

.field public static final SERIAL_TTYMT0:Ljava/lang/String; = "/dev/ttyMT0"

.field public static final SERIAL_TTYMT1:Ljava/lang/String; = "/dev/ttyMT1"

.field public static final SERIAL_TTYMT2:Ljava/lang/String; = "/dev/ttyMT2"

.field public static final SERIAL_TTYMT3:Ljava/lang/String; = "/dev/ttyMT3"

.field public static final SERIAL_TTYUSB0:Ljava/lang/String; = "/dev/ttyUSB0"

.field public static final SERIAL_TTYUSB1:Ljava/lang/String; = "/dev/ttyUSB1"

.field public static final SERIAL_TTYUSB2:Ljava/lang/String; = "/dev/ttyUSB2"

.field public static final TAG:Ljava/lang/String; = "SerialPortNative"


# instance fields
.field private fdx:I

.field private logger:Lcom/speedata/libutils/MyLogger;

.field private str:Ljava/lang/String;

.field private timeout:I

.field private writelen:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "serial_port_spd"

    .line 378
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/speedata/libutils/MyLogger;->jLog()Lcom/speedata/libutils/MyLogger;

    move-result-object v0

    iput-object v0, p0, Landroid/serialport/SerialPortSpd;->logger:Lcom/speedata/libutils/MyLogger;

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Landroid/serialport/SerialPortSpd;->fdx:I

    const/16 v0, 0x64

    .line 209
    iput v0, p0, Landroid/serialport/SerialPortSpd;->timeout:I

    return-void
.end method

.method private native closeport(I)V
.end method

.method private isUTF8([B)Z
    .registers 7

    const-string v0, "SerialPortNative"

    const-string v1, "begian to set codeset"

    .line 328
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 329
    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_4e

    .line 330
    aget-byte v2, p1, v1

    if-gez v2, :cond_4b

    .line 331
    aget-byte v2, p1, v1

    ushr-int/lit8 v2, v2, 0x5

    const v3, 0x7fffffe

    const v4, 0x3fffffe

    if-ne v2, v3, :cond_2b

    add-int/lit8 v2, v1, 0x1

    .line 332
    array-length v3, p1

    if-ge v2, v3, :cond_2a

    aget-byte v2, p1, v2

    ushr-int/lit8 v2, v2, 0x6

    if-ne v2, v4, :cond_2a

    add-int/lit8 v1, v1, 0x2

    goto :goto_9

    :cond_2a
    return v0

    .line 338
    :cond_2b
    aget-byte v2, p1, v1

    ushr-int/lit8 v2, v2, 0x4

    const v3, 0xffffffe

    if-ne v2, v3, :cond_4a

    add-int/lit8 v2, v1, 0x2

    .line 339
    array-length v3, p1

    if-ge v2, v3, :cond_4a

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p1, v3

    ushr-int/lit8 v3, v3, 0x6

    if-ne v3, v4, :cond_4a

    aget-byte v2, p1, v2

    ushr-int/lit8 v2, v2, 0x6

    if-ne v2, v4, :cond_4a

    add-int/lit8 v1, v1, 0x3

    goto :goto_9

    :cond_4a
    return v0

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_4e
    const/4 p1, 0x1

    return p1
.end method

.method private native openport(Ljava/lang/String;IIII)I
.end method

.method private native readport(III)[B
.end method

.method private native setparam(IIIII)I
.end method

.method private native write_then_read(I[BIIIIII)[B
.end method

.method private native writeport(I[B)I
.end method


# virtual methods
.method public CloseSerial(I)V
    .registers 2

    .line 324
    invoke-direct {p0, p1}, Landroid/serialport/SerialPortSpd;->closeport(I)V

    return-void
.end method

.method public OpenSerial(Ljava/lang/String;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 66
    invoke-direct/range {v0 .. v5}, Landroid/serialport/SerialPortSpd;->openport(Ljava/lang/String;IIII)I

    move-result p1

    iput p1, p0, Landroid/serialport/SerialPortSpd;->fdx:I

    if-ltz p1, :cond_10

    return-void

    :cond_10
    const-string p1, "SerialPortNative"

    const-string p2, "native open returns null"

    .line 68
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method public OpenSerial(Ljava/lang/String;IIII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "open"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    invoke-direct/range {p0 .. p5}, Landroid/serialport/SerialPortSpd;->openport(Ljava/lang/String;IIII)I

    move-result p1

    iput p1, p0, Landroid/serialport/SerialPortSpd;->fdx:I

    if-ltz p1, :cond_10

    return-void

    :cond_10
    const-string p1, "SerialPortNative"

    const-string p2, "native open returns null"

    .line 87
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method public ReadSerial(II)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 222
    iget v0, p0, Landroid/serialport/SerialPortSpd;->timeout:I

    invoke-direct {p0, p1, p2, v0}, Landroid/serialport/SerialPortSpd;->readport(III)[B

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    if-nez v0, :cond_16

    const/16 v2, 0xa

    if-ge v1, v2, :cond_16

    .line 225
    iget v0, p0, Landroid/serialport/SerialPortSpd;->timeout:I

    invoke-direct {p0, p1, p2, v0}, Landroid/serialport/SerialPortSpd;->readport(III)[B

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_16
    if-eqz v0, :cond_34

    .line 229
    iget-object p1, p0, Landroid/serialport/SerialPortSpd;->logger:Lcom/speedata/libutils/MyLogger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "read---"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/speedata/libutils/DataConversionUtils;->byteArrayToStringLog([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/speedata/libutils/MyLogger;->d(Ljava/lang/Object;)V

    goto :goto_3b

    .line 231
    :cond_34
    iget-object p1, p0, Landroid/serialport/SerialPortSpd;->logger:Lcom/speedata/libutils/MyLogger;

    const-string p2, "read---null"

    invoke-virtual {p1, p2}, Lcom/speedata/libutils/MyLogger;->d(Ljava/lang/Object;)V

    :goto_3b
    return-object v0
.end method

.method public ReadSerial(III)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 246
    invoke-direct {p0, p1, p2, p3}, Landroid/serialport/SerialPortSpd;->readport(III)[B

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    if-nez v0, :cond_12

    const/16 v2, 0xa

    if-ge v1, v2, :cond_12

    .line 249
    invoke-direct {p0, p1, p2, p3}, Landroid/serialport/SerialPortSpd;->readport(III)[B

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    if-eqz v0, :cond_30

    .line 253
    iget-object p1, p0, Landroid/serialport/SerialPortSpd;->logger:Lcom/speedata/libutils/MyLogger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "read---"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, v0

    invoke-static {v0, p3}, Lcom/speedata/libutils/DataConversionUtils;->byteArrayToStringLog([BI)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/speedata/libutils/MyLogger;->d(Ljava/lang/Object;)V

    goto :goto_37

    .line 255
    :cond_30
    iget-object p1, p0, Landroid/serialport/SerialPortSpd;->logger:Lcom/speedata/libutils/MyLogger;

    const-string p2, "read---null"

    invoke-virtual {p1, p2}, Lcom/speedata/libutils/MyLogger;->d(Ljava/lang/Object;)V

    :goto_37
    return-object v0
.end method

.method public ReadSerial(IIZ)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 272
    iget v0, p0, Landroid/serialport/SerialPortSpd;->timeout:I

    invoke-direct {p0, p1, p2, v0}, Landroid/serialport/SerialPortSpd;->readport(III)[B

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    if-nez v0, :cond_16

    const/16 v2, 0xa

    if-ge v1, v2, :cond_16

    .line 275
    iget v0, p0, Landroid/serialport/SerialPortSpd;->timeout:I

    invoke-direct {p0, p1, p2, v0}, Landroid/serialport/SerialPortSpd;->readport(III)[B

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_16
    if-eqz v0, :cond_39

    .line 279
    iget-object p2, p0, Landroid/serialport/SerialPortSpd;->logger:Lcom/speedata/libutils/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-static {v0, v2}, Lcom/speedata/libutils/DataConversionUtils;->byteArrayToStringLog([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/speedata/libutils/MyLogger;->d(Ljava/lang/Object;)V

    if-eqz p3, :cond_40

    .line 281
    invoke-virtual {p0, p1}, Landroid/serialport/SerialPortSpd;->clearPortBuf(I)V

    goto :goto_40

    .line 284
    :cond_39
    iget-object p1, p0, Landroid/serialport/SerialPortSpd;->logger:Lcom/speedata/libutils/MyLogger;

    const-string p2, "read---null"

    invoke-virtual {p1, p2}, Lcom/speedata/libutils/MyLogger;->d(Ljava/lang/Object;)V

    :cond_40
    :goto_40
    return-object v0
.end method

.method public ReadSerialString(II)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v0, 0x32

    .line 304
    invoke-direct {p0, p1, p2, v0}, Landroid/serialport/SerialPortSpd;->readport(III)[B

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 308
    :cond_a
    invoke-direct {p0, p1}, Landroid/serialport/SerialPortSpd;->isUTF8([B)Z

    move-result p2

    const-string v0, "SerialPortNative"

    if-eqz p2, :cond_21

    .line 309
    new-instance p2, Ljava/lang/String;

    const-string v1, "utf8"

    invoke-direct {p2, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object p2, p0, Landroid/serialport/SerialPortSpd;->str:Ljava/lang/String;

    const-string p1, "is a utf8 string"

    .line 310
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 312
    :cond_21
    new-instance p2, Ljava/lang/String;

    const-string v1, "gbk"

    invoke-direct {p2, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object p2, p0, Landroid/serialport/SerialPortSpd;->str:Ljava/lang/String;

    const-string p1, "is a gbk string"

    .line 313
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :goto_2f
    iget-object p1, p0, Landroid/serialport/SerialPortSpd;->str:Ljava/lang/String;

    return-object p1
.end method

.method public WriteSerialByte(I[B)I
    .registers 6

    .line 143
    invoke-virtual {p0, p1}, Landroid/serialport/SerialPortSpd;->clearPortBuf(I)V

    .line 144
    iget-object v0, p0, Landroid/serialport/SerialPortSpd;->logger:Lcom/speedata/libutils/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--WriteSerialByte---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-static {p2}, Lcom/speedata/libutils/DataConversionUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Lcom/speedata/libutils/MyLogger;->d(Ljava/lang/Object;)V

    .line 146
    invoke-direct {p0, p1, p2}, Landroid/serialport/SerialPortSpd;->writeport(I[B)I

    move-result p1

    iput p1, p0, Landroid/serialport/SerialPortSpd;->writelen:I

    if-ltz p1, :cond_2d

    .line 148
    iget-object p1, p0, Landroid/serialport/SerialPortSpd;->logger:Lcom/speedata/libutils/MyLogger;

    const-string p2, "write success"

    invoke-virtual {p1, p2}, Lcom/speedata/libutils/MyLogger;->d(Ljava/lang/Object;)V

    goto :goto_34

    .line 150
    :cond_2d
    iget-object p1, p0, Landroid/serialport/SerialPortSpd;->logger:Lcom/speedata/libutils/MyLogger;

    const-string p2, "write failed"

    invoke-virtual {p1, p2}, Lcom/speedata/libutils/MyLogger;->e(Ljava/lang/Object;)V

    .line 152
    :goto_34
    iget p1, p0, Landroid/serialport/SerialPortSpd;->writelen:I

    return p1
.end method

.method public clearPortBuf(I)V
    .registers 4

    .line 357
    iget-object v0, p0, Landroid/serialport/SerialPortSpd;->logger:Lcom/speedata/libutils/MyLogger;

    const-string v1, "clearPortBuf---"

    invoke-virtual {v0, v1}, Lcom/speedata/libutils/MyLogger;->d(Ljava/lang/Object;)V

    .line 358
    invoke-virtual {p0, p1}, Landroid/serialport/SerialPortSpd;->clearportbuf(I)V

    return-void
.end method

.method public native clearportbuf(I)V
.end method

.method public getFd()I
    .registers 2

    .line 134
    iget v0, p0, Landroid/serialport/SerialPortSpd;->fdx:I

    return v0
.end method

.method public resetParam(II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 101
    invoke-direct/range {v0 .. v5}, Landroid/serialport/SerialPortSpd;->setparam(IIIII)I

    move-result p1

    iput p1, p0, Landroid/serialport/SerialPortSpd;->fdx:I

    if-ltz p1, :cond_10

    return-void

    :cond_10
    const-string p1, "SerialPortNative"

    const-string p2, "native setparam returns null"

    .line 103
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method public resetParam(IIIII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-direct/range {p0 .. p5}, Landroid/serialport/SerialPortSpd;->setparam(IIIII)I

    move-result p1

    iput p1, p0, Landroid/serialport/SerialPortSpd;->fdx:I

    if-ltz p1, :cond_9

    return-void

    :cond_9
    const-string p1, "SerialPortNative"

    const-string p2, "native setparam returns null"

    .line 123
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method public writeThenRead(I[BIII)[B
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    invoke-virtual {p0, p1}, Landroid/serialport/SerialPortSpd;->clearPortBuf(I)V

    .line 197
    iget-object v0, p0, Landroid/serialport/SerialPortSpd;->logger:Lcom/speedata/libutils/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--WriteSerialByte---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-static {p2}, Lcom/speedata/libutils/DataConversionUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Lcom/speedata/libutils/MyLogger;->d(Ljava/lang/Object;)V

    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 199
    invoke-direct/range {v0 .. v8}, Landroid/serialport/SerialPortSpd;->write_then_read(I[BIIIIII)[B

    move-result-object v0

    if-eqz v0, :cond_35

    .line 201
    iget-object v1, p0, Landroid/serialport/SerialPortSpd;->logger:Lcom/speedata/libutils/MyLogger;

    const-string v2, "write success"

    invoke-virtual {v1, v2}, Lcom/speedata/libutils/MyLogger;->d(Ljava/lang/Object;)V

    goto :goto_3c

    .line 203
    :cond_35
    iget-object v1, p0, Landroid/serialport/SerialPortSpd;->logger:Lcom/speedata/libutils/MyLogger;

    const-string v2, "write failed"

    invoke-virtual {v1, v2}, Lcom/speedata/libutils/MyLogger;->e(Ljava/lang/Object;)V

    :goto_3c
    return-object v0
.end method

.method public writeThenRead(I[BIIIIII)[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    invoke-virtual {p0, p1}, Landroid/serialport/SerialPortSpd;->clearPortBuf(I)V

    .line 172
    iget-object v0, p0, Landroid/serialport/SerialPortSpd;->logger:Lcom/speedata/libutils/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--WriteSerialByte---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-static {p2}, Lcom/speedata/libutils/DataConversionUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-virtual {v0, v1}, Lcom/speedata/libutils/MyLogger;->d(Ljava/lang/Object;)V

    .line 174
    invoke-direct/range {p0 .. p8}, Landroid/serialport/SerialPortSpd;->write_then_read(I[BIIIIII)[B

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 176
    iget-object p2, p0, Landroid/serialport/SerialPortSpd;->logger:Lcom/speedata/libutils/MyLogger;

    const-string p3, "write success"

    invoke-virtual {p2, p3}, Lcom/speedata/libutils/MyLogger;->d(Ljava/lang/Object;)V

    goto :goto_32

    .line 178
    :cond_2b
    iget-object p2, p0, Landroid/serialport/SerialPortSpd;->logger:Lcom/speedata/libutils/MyLogger;

    const-string p3, "write failed"

    invoke-virtual {p2, p3}, Lcom/speedata/libutils/MyLogger;->e(Ljava/lang/Object;)V

    :goto_32
    return-object p1
.end method
