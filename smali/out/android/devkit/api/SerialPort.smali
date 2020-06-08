.class public Landroid/devkit/api/SerialPort;
.super Ljava/lang/Object;
.source "SerialPort.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/devkit/api/SerialPort$Driver;,
        Landroid/devkit/api/SerialPort$LoopBuf;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SerialPort"

.field private static mLoopBuf:Landroid/devkit/api/SerialPort$LoopBuf;


# instance fields
.field private mDrivers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/devkit/api/SerialPort$Driver;",
            ">;"
        }
    .end annotation
.end field

.field private mFd:Ljava/io/FileDescriptor;

.field private mFileInputStream:Ljava/io/FileInputStream;

.field private mFileOutputStream:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "DevKitApi"

    .line 186
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Landroid/devkit/api/SerialPort;->mDrivers:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Landroid/devkit/api/SerialPort;->mDrivers:Ljava/util/Vector;

    .line 50
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-nez p1, :cond_5a

    .line 57
    :cond_17
    :try_start_17
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    const-string v1, "/system/bin/su"

    invoke-virtual {p1, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 666 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "exit\n"

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 61
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    move-result p1

    if-nez p1, :cond_8d

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_8d

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p1
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_58} :catch_93

    if-eqz p1, :cond_8d

    .line 71
    :cond_5a
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3}, Landroid/devkit/api/SerialPort;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Landroid/devkit/api/SerialPort;->mFd:Ljava/io/FileDescriptor;

    if-eqz p1, :cond_80

    .line 77
    new-instance p1, Landroid/devkit/api/SerialPort$LoopBuf;

    invoke-direct {p1, p0}, Landroid/devkit/api/SerialPort$LoopBuf;-><init>(Landroid/devkit/api/SerialPort;)V

    sput-object p1, Landroid/devkit/api/SerialPort;->mLoopBuf:Landroid/devkit/api/SerialPort$LoopBuf;

    .line 78
    new-instance p1, Ljava/io/FileInputStream;

    iget-object p2, p0, Landroid/devkit/api/SerialPort;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p1, p0, Landroid/devkit/api/SerialPort;->mFileInputStream:Ljava/io/FileInputStream;

    .line 79
    new-instance p1, Ljava/io/FileOutputStream;

    iget-object p2, p0, Landroid/devkit/api/SerialPort;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p1, p0, Landroid/devkit/api/SerialPort;->mFileOutputStream:Ljava/io/FileOutputStream;

    return-void

    :cond_80
    const-string p1, "SerialPort"

    const-string p2, "native open returns null"

    .line 73
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 63
    :cond_8d
    :try_start_8d
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    throw p1
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_93} :catch_93

    :catch_93
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    throw p1
.end method

.method private static native open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
.end method


# virtual methods
.method public native close()V
.end method

.method public getAllDevices()[Ljava/lang/String;
    .registers 9

    .line 142
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 146
    :try_start_5
    invoke-virtual {p0}, Landroid/devkit/api/SerialPort;->getDrivers()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 147
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_4e

    .line 148
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/devkit/api/SerialPort$Driver;

    .line 149
    invoke-virtual {v2}, Landroid/devkit/api/SerialPort$Driver;->getDevices()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 150
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_29

    goto :goto_d

    .line 151
    :cond_29
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "%s (%s)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    .line 152
    invoke-virtual {v2}, Landroid/devkit/api/SerialPort$Driver;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 153
    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_49} :catch_4a

    goto :goto_22

    :catch_4a
    move-exception v1

    .line 157
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 159
    :goto_4e
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getAllDevicesPath()[Ljava/lang/String;
    .registers 5

    .line 163
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 167
    :try_start_5
    invoke-virtual {p0}, Landroid/devkit/api/SerialPort;->getDrivers()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 168
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_3b

    .line 169
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/devkit/api/SerialPort$Driver;

    .line 170
    invoke-virtual {v2}, Landroid/devkit/api/SerialPort$Driver;->getDevices()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 171
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_29

    goto :goto_d

    .line 172
    :cond_29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_36} :catch_37

    goto :goto_22

    :catch_37
    move-exception v1

    .line 177
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 179
    :goto_3b
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method getDrivers()Ljava/util/Vector;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Landroid/devkit/api/SerialPort$Driver;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Landroid/devkit/api/SerialPort;->mDrivers:Ljava/util/Vector;

    if-nez v0, :cond_73

    .line 123
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/devkit/api/SerialPort;->mDrivers:Ljava/util/Vector;

    .line 124
    new-instance v0, Ljava/io/LineNumberReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/proc/tty/drivers"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 126
    :cond_17
    :goto_17
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_21

    .line 136
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->close()V

    goto :goto_73

    :cond_21
    const/4 v2, 0x0

    const/16 v3, 0x15

    .line 129
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, " +"

    .line 130
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 131
    array-length v3, v1

    const/4 v4, 0x5

    if-lt v3, v4, :cond_17

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    const-string v4, "serial"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Found new driver "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    add-int/lit8 v4, v4, -0x4

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SerialPort"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v3, p0, Landroid/devkit/api/SerialPort;->mDrivers:Ljava/util/Vector;

    new-instance v4, Landroid/devkit/api/SerialPort$Driver;

    array-length v5, v1

    add-int/lit8 v5, v5, -0x4

    aget-object v1, v1, v5

    invoke-direct {v4, p0, v2, v1}, Landroid/devkit/api/SerialPort$Driver;-><init>(Landroid/devkit/api/SerialPort;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 138
    :cond_73
    :goto_73
    iget-object v0, p0, Landroid/devkit/api/SerialPort;->mDrivers:Ljava/util/Vector;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    .line 84
    iget-object v0, p0, Landroid/devkit/api/SerialPort;->mFileInputStream:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public getLoopBuf()Landroid/devkit/api/SerialPort$LoopBuf;
    .registers 2

    .line 190
    sget-object v0, Landroid/devkit/api/SerialPort;->mLoopBuf:Landroid/devkit/api/SerialPort$LoopBuf;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/devkit/api/SerialPort;->mFileOutputStream:Ljava/io/FileOutputStream;

    return-object v0
.end method
