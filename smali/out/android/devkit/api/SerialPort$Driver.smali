.class public Landroid/devkit/api/SerialPort$Driver;
.super Ljava/lang/Object;
.source "SerialPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/devkit/api/SerialPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Driver"
.end annotation


# instance fields
.field private mDeviceRoot:Ljava/lang/String;

.field mDevices:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mDriverName:Ljava/lang/String;

.field final synthetic this$0:Landroid/devkit/api/SerialPort;


# direct methods
.method public constructor <init>(Landroid/devkit/api/SerialPort;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 92
    iput-object p1, p0, Landroid/devkit/api/SerialPort$Driver;->this$0:Landroid/devkit/api/SerialPort;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 98
    iput-object p1, p0, Landroid/devkit/api/SerialPort$Driver;->mDevices:Ljava/util/Vector;

    .line 93
    iput-object p2, p0, Landroid/devkit/api/SerialPort$Driver;->mDriverName:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Landroid/devkit/api/SerialPort$Driver;->mDeviceRoot:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDevices()Ljava/util/Vector;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Landroid/devkit/api/SerialPort$Driver;->mDevices:Ljava/util/Vector;

    if-nez v0, :cond_48

    .line 101
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/devkit/api/SerialPort$Driver;->mDevices:Ljava/util/Vector;

    .line 102
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 105
    :goto_17
    array-length v2, v0

    if-lt v1, v2, :cond_1b

    goto :goto_48

    .line 106
    :cond_1b
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/devkit/api/SerialPort$Driver;->mDeviceRoot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found new device: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SerialPort"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v2, p0, Landroid/devkit/api/SerialPort$Driver;->mDevices:Ljava/util/Vector;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 112
    :cond_48
    :goto_48
    iget-object v0, p0, Landroid/devkit/api/SerialPort$Driver;->mDevices:Ljava/util/Vector;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Landroid/devkit/api/SerialPort$Driver;->mDriverName:Ljava/lang/String;

    return-object v0
.end method
