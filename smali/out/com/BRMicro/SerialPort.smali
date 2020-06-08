.class public Lcom/BRMicro/SerialPort;
.super Ljava/lang/Object;
.source "SerialPort.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SerialPort"


# instance fields
.field private mFd:Ljava/io/FileDescriptor;

.field private mFileInputStream:Ljava/io/FileInputStream;

.field private mFileOutputStream:Ljava/io/FileOutputStream;

.field private trig_on:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "devapi"

    .line 105
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "SerialPort"

    .line 106
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/BRMicro/SerialPort;->trig_on:Z

    return-void
.end method


# virtual methods
.method public native power3v3off()V
.end method

.method public native power3v3on()V
.end method

.method public printer_poweroff()V
    .registers 1

    return-void
.end method

.method public printer_poweron()V
    .registers 1

    return-void
.end method

.method public psam_poweroff()V
    .registers 1

    .line 57
    invoke-virtual {p0}, Lcom/BRMicro/SerialPort;->psampoweroff()V

    return-void
.end method

.method public psam_poweron()V
    .registers 1

    .line 54
    invoke-virtual {p0}, Lcom/BRMicro/SerialPort;->psampoweron()V

    return-void
.end method

.method public native psampoweroff()V
.end method

.method public native psampoweron()V
.end method

.method public native rfidPoweroff()V
.end method

.method public native rfidPoweron()V
.end method

.method public scaner_poweroff()V
    .registers 1

    .line 65
    invoke-virtual {p0}, Lcom/BRMicro/SerialPort;->scanerpoweroff()V

    return-void
.end method

.method public scaner_poweron()V
    .registers 1

    .line 61
    invoke-virtual {p0}, Lcom/BRMicro/SerialPort;->scanerpoweron()V

    .line 62
    invoke-virtual {p0}, Lcom/BRMicro/SerialPort;->scaner_trigoff()V

    return-void
.end method

.method public scaner_trig_stat()Z
    .registers 2

    .line 77
    iget-boolean v0, p0, Lcom/BRMicro/SerialPort;->trig_on:Z

    return v0
.end method

.method public scaner_trigoff()V
    .registers 2

    .line 73
    invoke-virtual {p0}, Lcom/BRMicro/SerialPort;->scanertrigeroff()V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/BRMicro/SerialPort;->trig_on:Z

    return-void
.end method

.method public scaner_trigon()V
    .registers 2

    .line 69
    invoke-virtual {p0}, Lcom/BRMicro/SerialPort;->scanertrigeron()V

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/BRMicro/SerialPort;->trig_on:Z

    return-void
.end method

.method public native scanerpoweroff()V
.end method

.method public native scanerpoweron()V
.end method

.method public native scanertrigeroff()V
.end method

.method public native scanertrigeron()V
.end method

.method public switch2Channel(I)V
    .registers 2

    .line 81
    invoke-virtual {p0, p1}, Lcom/BRMicro/SerialPort;->switch2channel(I)V

    return-void
.end method

.method public native switch2channel(I)V
.end method

.method public native usbOTGpowerOff()V
.end method

.method public native usbOTGpowerOn()V
.end method

.method public zigbee_poweron()V
    .registers 1

    .line 45
    invoke-virtual {p0}, Lcom/BRMicro/SerialPort;->zigbeepoweron()V

    return-void
.end method

.method public native zigbeepoweroff()V
.end method

.method public native zigbeepoweron()V
.end method
