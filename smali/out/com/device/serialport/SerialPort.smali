.class public final Lcom/device/serialport/SerialPort;
.super Ljava/lang/Object;
.source "SerialPort.java"


# static fields
.field private static final IOCTRL_PMU_BARCODE_OFF:I = 0x6

.field private static final IOCTRL_PMU_BARCODE_ON:I = 0x5

.field public static final IOCTRL_PMU_RFID_OFF:I = 0x4

.field public static final IOCTRL_PMU_RFID_ON:I = 0x3

.field static final IOCTRL_PMU_RS232_OFF:I = 0x18

.field static final IOCTRL_PMU_RS232_ON:I = 0x17

.field private static final RETURNCODE_FAILURE:I = 0x1

.field private static final RETURNCODE_SUCCESS:I

.field private static device:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "serial_port_idata"

    .line 23
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeSerial()I
    .registers 3

    .line 131
    sget v0, Lcom/device/serialport/SerialPort;->device:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v1, :cond_12

    if-eq v0, v2, :cond_c

    goto :goto_1a

    :cond_c
    const/16 v0, 0x17

    .line 139
    invoke-static {v0}, Lcom/device/serialport/SerialPort;->ioctlFromJNI(I)I

    goto :goto_1a

    .line 136
    :cond_12
    invoke-static {v2}, Lcom/device/serialport/SerialPort;->ioctlFromJNI(I)I

    goto :goto_1a

    :cond_16
    const/4 v0, 0x5

    .line 133
    invoke-static {v0}, Lcom/device/serialport/SerialPort;->ioctlFromJNI(I)I

    .line 145
    :goto_1a
    invoke-static {}, Lcom/device/serialport/SerialPort;->exitFromJNI()I

    const/4 v0, 0x0

    return v0
.end method

.method private static native exitFromJNI()I
.end method

.method public static native getDevPath(I)Ljava/lang/String;
.end method

.method private native getReceiveArray([BI)I
.end method

.method private static native initFromJNI(III)I
.end method

.method public static native ioctlFromJNI(I)I
.end method

.method public static openSerial(III)I
    .registers 4

    .line 62
    invoke-static {p0, p1, p2}, Lcom/device/serialport/SerialPort;->initFromJNI(III)I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, -0x1

    if-ne v0, p1, :cond_9

    return p2

    .line 69
    :cond_9
    sput p0, Lcom/device/serialport/SerialPort;->device:I

    const/16 p0, 0x190

    .line 89
    invoke-static {p2, p0}, Lcom/device/serialport/SerialPort;->setArg(II)I

    const/4 p0, 0x0

    return p0
.end method

.method public static setArg(II)I
    .registers 2

    .line 118
    invoke-static {p0, p1}, Lcom/device/serialport/SerialPort;->setTimeArg(II)I

    move-result p0

    return p0
.end method

.method private static native setTimeArg(II)I
.end method

.method private native writeByteArrFromJNI([BI)I
.end method


# virtual methods
.method public SetPowerState(I)I
    .registers 2

    .line 122
    invoke-static {p1}, Lcom/device/serialport/SerialPort;->ioctlFromJNI(I)I

    move-result p1

    return p1
.end method

.method public getDevicePath(I)Ljava/lang/String;
    .registers 2

    .line 106
    invoke-static {p1}, Lcom/device/serialport/SerialPort;->getDevPath(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public read([B)I
    .registers 3

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v0}, Lcom/device/serialport/SerialPort;->getReceiveArray([BI)I

    move-result p1

    return p1
.end method

.method public read([BI)I
    .registers 3

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/device/serialport/SerialPort;->getReceiveArray([BI)I

    move-result p1

    return p1
.end method

.method public write([BI)I
    .registers 3

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/device/serialport/SerialPort;->writeByteArrFromJNI([BI)I

    move-result p1

    return p1
.end method
