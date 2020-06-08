.class public Lcom/cipherlab/barcode/ReaderManagerAPI;
.super Landroid/app/Application;
.source "ReaderManagerAPI.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cipherlab/barcode/ReaderManagerAPI$ReaderReadyRunnable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final APIVersion:Ljava/lang/String; = "1.1.29"

.field private static _instance:Lcom/cipherlab/barcode/ReaderManagerAPI;

.field private static context:Landroid/content/Context;

.field private static handler:Landroid/os/Handler;

.field private static handlerThread:Landroid/os/HandlerThread;

.field private static looper:Landroid/os/Looper;

.field static mReaderCallback:Lcom/cipherlab/barcodebase/ReaderCallback;

.field private static final myReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field public bindServiceFlag:Z

.field public conn:Landroid/content/ServiceConnection;

.field private mMyReaderReadyRunnable:Lcom/cipherlab/barcode/ReaderManagerAPI$ReaderReadyRunnable;

.field private mMyThread:Ljava/lang/Thread;

.field mReaderReadySemaphore:Ljava/lang/Object;

.field mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

.field protected m_rds:[Lcom/cipherlab/barcodebase/ReaderDataStruct;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 149
    new-instance v0, Lcom/cipherlab/barcode/ReaderManagerAPI$1;

    invoke-direct {v0}, Lcom/cipherlab/barcode/ReaderManagerAPI$1;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/ReaderManagerAPI;->myReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 68
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->bindServiceFlag:Z

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    .line 64
    iput-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mMyThread:Ljava/lang/Thread;

    .line 65
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mReaderReadySemaphore:Ljava/lang/Object;

    .line 66
    iput-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mMyReaderReadyRunnable:Lcom/cipherlab/barcode/ReaderManagerAPI$ReaderReadyRunnable;

    .line 1610
    new-instance v1, Lcom/cipherlab/barcode/ReaderManagerAPI$2;

    invoke-direct {v1, p0}, Lcom/cipherlab/barcode/ReaderManagerAPI$2;-><init>(Lcom/cipherlab/barcode/ReaderManagerAPI;)V

    iput-object v1, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->conn:Landroid/content/ServiceConnection;

    .line 70
    iget-object v1, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mMyReaderReadyRunnable:Lcom/cipherlab/barcode/ReaderManagerAPI$ReaderReadyRunnable;

    if-nez v1, :cond_39

    const-string v1, "ReaderManager"

    const-string v2, "Start ReaderReadyRunnable"

    .line 72
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v1, Lcom/cipherlab/barcode/ReaderManagerAPI$ReaderReadyRunnable;

    invoke-direct {v1, p0, v0}, Lcom/cipherlab/barcode/ReaderManagerAPI$ReaderReadyRunnable;-><init>(Lcom/cipherlab/barcode/ReaderManagerAPI;Lcom/cipherlab/barcode/ReaderManagerAPI$ReaderReadyRunnable;)V

    iput-object v1, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mMyReaderReadyRunnable:Lcom/cipherlab/barcode/ReaderManagerAPI$ReaderReadyRunnable;

    .line 76
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mMyReaderReadyRunnable:Lcom/cipherlab/barcode/ReaderManagerAPI$ReaderReadyRunnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mMyThread:Ljava/lang/Thread;

    .line 77
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_39
    return-void
.end method

.method public static GetExistInstance()Lcom/cipherlab/barcode/ReaderManagerAPI;
    .registers 1

    .line 114
    sget-object v0, Lcom/cipherlab/barcode/ReaderManagerAPI;->_instance:Lcom/cipherlab/barcode/ReaderManagerAPI;

    return-object v0
.end method

.method public static GetInstance(Landroid/content/Context;)Lcom/cipherlab/barcode/ReaderManagerAPI;
    .registers 5

    .line 83
    sput-object p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->context:Landroid/content/Context;

    .line 84
    sget-object v0, Lcom/cipherlab/barcode/ReaderManagerAPI;->_instance:Lcom/cipherlab/barcode/ReaderManagerAPI;

    if-nez v0, :cond_d

    .line 85
    new-instance v0, Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-direct {v0}, Lcom/cipherlab/barcode/ReaderManagerAPI;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/ReaderManagerAPI;->_instance:Lcom/cipherlab/barcode/ReaderManagerAPI;

    :cond_d
    const-string v0, "ReaderManager"

    const-string v1, "Version 1.1.29"

    .line 88
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_instance(ReaderManagerAPI) hashcode is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/cipherlab/barcode/ReaderManagerAPI;->_instance:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " handler is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/cipherlab/barcode/ReaderManagerAPI;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-object v1, Lcom/cipherlab/barcode/ReaderManagerAPI;->handler:Landroid/os/Handler;

    if-nez v1, :cond_6d

    const-string v1, "_instance(ReaderManagerAPI) create handler"

    .line 93
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MyNewThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/cipherlab/barcode/ReaderManagerAPI;->handlerThread:Landroid/os/HandlerThread;

    .line 96
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 100
    sget-object v0, Lcom/cipherlab/barcode/ReaderManagerAPI;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/cipherlab/barcode/ReaderManagerAPI;->looper:Landroid/os/Looper;

    .line 102
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/cipherlab/barcode/ReaderManagerAPI;->looper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/cipherlab/barcode/ReaderManagerAPI;->handler:Landroid/os/Handler;

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "sw.reader.barcodebaseapi.CALLBACK"

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    sget-object v1, Lcom/cipherlab/barcode/ReaderManagerAPI;->myReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    sget-object v3, Lcom/cipherlab/barcode/ReaderManagerAPI;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 109
    :cond_6d
    sget-object p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->_instance:Lcom/cipherlab/barcode/ReaderManagerAPI;

    return-object p0
.end method

.method static synthetic access$0()Landroid/content/Context;
    .registers 1

    .line 52
    sget-object v0, Lcom/cipherlab/barcode/ReaderManagerAPI;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public CopyProfile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 3052
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1, p2}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->CopyProfile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 3053
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 3056
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3057
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public CreateProfile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 2998
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->CreateProfileEx(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 2999
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 3002
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3003
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetActive()Z
    .registers 2

    .line 1452
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->GetReaderActive()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    .line 1455
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public GetActive(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Z
    .registers 3

    .line 2972
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->GetReaderActive_Profile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    move-exception p1

    .line 2975
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public GetAustralianPostal(Lcom/cipherlab/barcode/decoderparams/AustralianPostal;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 888
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadAustralianPostal(Lcom/cipherlab/barcode/decoderparams/AustralianPostal;)I

    move-result p1

    .line 889
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 891
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 892
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetAustralianPostal(Lcom/cipherlab/barcode/decoderparams/AustralianPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2417
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadAustralianPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/AustralianPostal;)I

    move-result p1

    .line 2418
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2420
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2421
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetAztec(Lcom/cipherlab/barcode/decoderparams/Aztec;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1130
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadAztec(Lcom/cipherlab/barcode/decoderparams/Aztec;)I

    move-result p1

    .line 1131
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1133
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1134
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetAztec(Lcom/cipherlab/barcode/decoderparams/Aztec;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2659
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadAztec_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Aztec;)I

    move-result p1

    .line 2660
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2662
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2663
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetBarcodeServiceVer()Ljava/lang/String;
    .registers 2

    .line 1559
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->GetServiceVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_d

    :catch_7
    move-exception v0

    .line 1562
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v0, ""

    :goto_d
    return-object v0
.end method

.method public GetChinese2Of5(Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadChinese2Of5(Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;)I

    move-result p1

    .line 360
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 362
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 363
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetChinese2Of5(Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1911
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadChinese2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;)I

    move-result p1

    .line 1912
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1914
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1915
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetCip39(Lcom/cipherlab/barcode/decoderparams/Cip39;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1226
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadCip39(Lcom/cipherlab/barcode/decoderparams/Cip39;)I

    move-result p1

    .line 1227
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1229
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1230
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetCip39(Lcom/cipherlab/barcode/decoderparams/Cip39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2755
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadCip39_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Cip39;)I

    move-result p1

    .line 2756
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2758
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2759
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetCodabar(Lcom/cipherlab/barcode/decoderparams/Codabar;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadCodabar(Lcom/cipherlab/barcode/decoderparams/Codabar;)I

    move-result p1

    .line 311
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 313
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 314
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetCodabar(Lcom/cipherlab/barcode/decoderparams/Codabar;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1862
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadCodabar_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Codabar;)I

    move-result p1

    .line 1863
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1865
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1866
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetCode11(Lcom/cipherlab/barcode/decoderparams/Code11;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadCode11(Lcom/cipherlab/barcode/decoderparams/Code11;)I

    move-result p1

    .line 285
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 287
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 288
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetCode11(Lcom/cipherlab/barcode/decoderparams/Code11;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1836
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadCode11_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code11;)I

    move-result p1

    .line 1837
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1839
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1840
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetCode128(Lcom/cipherlab/barcode/decoderparams/Code128;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadCode128(Lcom/cipherlab/barcode/decoderparams/Code128;)I

    move-result p1

    .line 335
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 337
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 338
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetCode128(Lcom/cipherlab/barcode/decoderparams/Code128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1886
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadCode128_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code128;)I

    move-result p1

    .line 1887
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1889
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1890
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetCode39(Lcom/cipherlab/barcode/decoderparams/Code39;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadCode39(Lcom/cipherlab/barcode/decoderparams/Code39;)I

    move-result p1

    .line 186
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 188
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 189
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetCode39(Lcom/cipherlab/barcode/decoderparams/Code39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1737
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadCode39_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code39;)I

    move-result p1

    .line 1738
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1740
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1741
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetCode93(Lcom/cipherlab/barcode/decoderparams/Code93;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadCode93(Lcom/cipherlab/barcode/decoderparams/Code93;)I

    move-result p1

    .line 260
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 262
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 263
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetCode93(Lcom/cipherlab/barcode/decoderparams/Code93;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1811
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadCode93_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code93;)I

    move-result p1

    .line 1812
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1814
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1815
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetComposite(Lcom/cipherlab/barcode/decoderparams/Composite;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 792
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadComposite(Lcom/cipherlab/barcode/decoderparams/Composite;)I

    move-result p1

    .line 793
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 795
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 796
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetComposite(Lcom/cipherlab/barcode/decoderparams/Composite;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2321
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadComposite_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Composite;)I

    move-result p1

    .line 2322
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2324
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2325
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetDataMatrix(Lcom/cipherlab/barcode/decoderparams/DataMatrix;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1033
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadDataMatrix(Lcom/cipherlab/barcode/decoderparams/DataMatrix;)I

    move-result p1

    .line 1034
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1036
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1037
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetDataMatrix(Lcom/cipherlab/barcode/decoderparams/DataMatrix;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2562
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadDataMatrix_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/DataMatrix;)I

    move-result p1

    .line 2563
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2565
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2566
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetDataOutputSettings(Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1480
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadOutputSettings(Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;)I

    move-result p1

    .line 1481
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1484
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1485
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetDataOutputSettings(Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2942
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadOutputSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;)I

    move-result p1

    .line 2943
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2946
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2947
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetDotCode(Lcom/cipherlab/barcode/decoderparams/DotCode;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1322
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadDotCode(Lcom/cipherlab/barcode/decoderparams/DotCode;)I

    move-result p1

    .line 1323
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1325
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1326
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetDotCode(Lcom/cipherlab/barcode/decoderparams/DotCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2851
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadDotCode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/DotCode;)I

    move-result p1

    .line 2852
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2854
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2855
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetDutchPostal(Lcom/cipherlab/barcode/decoderparams/DutchPostal;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 912
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadDutchPostal(Lcom/cipherlab/barcode/decoderparams/DutchPostal;)I

    move-result p1

    .line 913
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 915
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 916
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetDutchPostal(Lcom/cipherlab/barcode/decoderparams/DutchPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2441
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadDutchPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/DutchPostal;)I

    move-result p1

    .line 2442
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2444
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2445
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetEan13(Lcom/cipherlab/barcode/decoderparams/Ean13;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 633
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadEan13(Lcom/cipherlab/barcode/decoderparams/Ean13;)I

    move-result p1

    .line 634
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 636
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 637
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetEan13(Lcom/cipherlab/barcode/decoderparams/Ean13;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2185
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadEan13_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Ean13;)I

    move-result p1

    .line 2186
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2188
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2189
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetEan8(Lcom/cipherlab/barcode/decoderparams/Ean8;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 608
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadEan8(Lcom/cipherlab/barcode/decoderparams/Ean8;)I

    move-result p1

    .line 609
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 611
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 612
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetEan8(Lcom/cipherlab/barcode/decoderparams/Ean8;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2160
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadEan8_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Ean8;)I

    move-result p1

    .line 2161
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2163
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2164
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetFrenchPharmacode(Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1202
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadFrenchPharmacode(Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;)I

    move-result p1

    .line 1203
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1205
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1206
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetFrenchPharmacode(Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2731
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadFrenchPharmacode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;)I

    move-result p1

    .line 2732
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2734
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2735
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetGS1128(Lcom/cipherlab/barcode/decoderparams/GS1128;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 533
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadGS1128(Lcom/cipherlab/barcode/decoderparams/GS1128;)I

    move-result p1

    .line 534
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 536
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 537
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetGS1128(Lcom/cipherlab/barcode/decoderparams/GS1128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2085
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadGS1128_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1128;)I

    move-result p1

    .line 2086
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2088
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2089
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetGS1DataBar14(Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadGS1DataBar14(Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;)I

    move-result p1

    .line 459
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 461
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 462
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetGS1DataBar14(Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2010
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadGS1DataBar14_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;)I

    move-result p1

    .line 2011
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2013
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2014
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetGS1DataBarExpanded(Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 484
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadGS1DataBarExpanded(Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;)I

    move-result p1

    .line 485
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 487
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 488
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetGS1DataBarExpanded(Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2036
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadGS1DataBarExpanded_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;)I

    move-result p1

    .line 2037
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2039
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2040
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetGS1DataBarLimited(Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadGS1DataBarLimited(Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;)I

    move-result p1

    .line 509
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 511
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 512
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetGS1DataBarLimited(Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2060
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadGS1DataBarLimited_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;)I

    move-result p1

    .line 2061
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2063
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2064
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetHanxin(Lcom/cipherlab/barcode/decoderparams/Hanxin;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1274
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadHanxin(Lcom/cipherlab/barcode/decoderparams/Hanxin;)I

    move-result p1

    .line 1275
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1277
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1278
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetHanxin(Lcom/cipherlab/barcode/decoderparams/Hanxin;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2803
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadHanxin_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Hanxin;)I

    move-result p1

    .line 2804
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2806
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2807
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetISBT128(Lcom/cipherlab/barcode/decoderparams/ISBT128;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 558
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadISBT128(Lcom/cipherlab/barcode/decoderparams/ISBT128;)I

    move-result p1

    .line 559
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 561
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 562
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetISBT128(Lcom/cipherlab/barcode/decoderparams/ISBT128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2110
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadISBT128_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/ISBT128;)I

    move-result p1

    .line 2111
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2113
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2114
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetIndustrial2Of5(Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadIndustrial2Of5(Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;)I

    move-result p1

    .line 410
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 412
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 413
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetIndustrial2Of5(Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1961
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadIndustrial2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;)I

    move-result p1

    .line 1962
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1964
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1965
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetInterleaved2Of5(Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadInterleaved2Of5(Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;)I

    move-result p1

    .line 435
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 437
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 438
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetInterleaved2Of5(Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1986
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadInterleaved2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;)I

    move-result p1

    .line 1987
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1989
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1990
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetJapanPostal(Lcom/cipherlab/barcode/decoderparams/JapanPostal;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 864
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadJapanPostal(Lcom/cipherlab/barcode/decoderparams/JapanPostal;)I

    move-result p1

    .line 865
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 867
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 868
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetJapanPostal(Lcom/cipherlab/barcode/decoderparams/JapanPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2393
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadJapanPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/JapanPostal;)I

    move-result p1

    .line 2394
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2396
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2397
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetKorean3Of5(Lcom/cipherlab/barcode/decoderparams/Korean3Of5;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadKorean3Of5(Lcom/cipherlab/barcode/decoderparams/Korean3Of5;)I

    move-result p1

    .line 211
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 213
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 214
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetKorean3Of5(Lcom/cipherlab/barcode/decoderparams/Korean3Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1762
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadKorean3Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Korean3Of5;)I

    move-result p1

    .line 1763
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1765
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1766
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetLaetus(Lcom/cipherlab/barcode/decoderparams/Laetus;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1250
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadLaetus(Lcom/cipherlab/barcode/decoderparams/Laetus;)I

    move-result p1

    .line 1251
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1253
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1254
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetLaetus(Lcom/cipherlab/barcode/decoderparams/Laetus;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2779
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadLaetus_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Laetus;)I

    move-result p1

    .line 2780
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2782
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2783
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetLastError()Ljava/lang/String;
    .registers 2

    .line 1517
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->GetLastError()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_d

    :catch_7
    move-exception v0

    .line 1519
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v0, ""

    :goto_d
    return-object v0
.end method

.method public GetMRZ(Lcom/cipherlab/barcode/decoderparams/MRZ;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1298
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadMRZ(Lcom/cipherlab/barcode/decoderparams/MRZ;)I

    move-result p1

    .line 1299
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1301
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1302
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetMRZ(Lcom/cipherlab/barcode/decoderparams/MRZ;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2827
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadMRZ_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MRZ;)I

    move-result p1

    .line 2828
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2830
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2831
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetMatrix2Of5(Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadMatrix2Of5(Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;)I

    move-result p1

    .line 385
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 387
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 388
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetMatrix2Of5(Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1936
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadMatrix2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;)I

    move-result p1

    .line 1937
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1939
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1940
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetMaxiCode(Lcom/cipherlab/barcode/decoderparams/MaxiCode;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1058
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadMaxiCode(Lcom/cipherlab/barcode/decoderparams/MaxiCode;)I

    move-result p1

    .line 1059
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1061
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1062
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetMaxiCode(Lcom/cipherlab/barcode/decoderparams/MaxiCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2587
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadMaxiCode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MaxiCode;)I

    move-result p1

    .line 2588
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2590
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2591
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetMicroPDF417(Lcom/cipherlab/barcode/decoderparams/MicroPDF417;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1009
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadMicroPDF417(Lcom/cipherlab/barcode/decoderparams/MicroPDF417;)I

    move-result p1

    .line 1010
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1012
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1013
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetMicroPDF417(Lcom/cipherlab/barcode/decoderparams/MicroPDF417;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2538
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadMicroPDF417_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MicroPDF417;)I

    move-result p1

    .line 2539
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2541
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2542
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetMicroQR(Lcom/cipherlab/barcode/decoderparams/MicroQR;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1106
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadMicroQR(Lcom/cipherlab/barcode/decoderparams/MicroQR;)I

    move-result p1

    .line 1107
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1109
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1110
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetMicroQR(Lcom/cipherlab/barcode/decoderparams/MicroQR;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2635
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadMicroQR_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MicroQR;)I

    move-result p1

    .line 2636
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2638
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2639
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetMsi(Lcom/cipherlab/barcode/decoderparams/Msi;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 583
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadMsi(Lcom/cipherlab/barcode/decoderparams/Msi;)I

    move-result p1

    .line 584
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 586
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 587
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetMsi(Lcom/cipherlab/barcode/decoderparams/Msi;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2135
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadMsi_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Msi;)I

    move-result p1

    .line 2136
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2138
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2139
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetNotificationParams(Lcom/cipherlab/barcode/decoderparams/NotificationParams;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1419
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadNotificationSettings(Lcom/cipherlab/barcode/decoderparams/NotificationParams;)I

    move-result p1

    .line 1420
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1424
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1425
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetNotificationParams(Lcom/cipherlab/barcode/decoderparams/NotificationParams;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2913
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadNotificationSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/NotificationParams;)I

    move-result p1

    .line 2914
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2918
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2919
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetPDF417(Lcom/cipherlab/barcode/decoderparams/PDF417;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 985
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadPDF417(Lcom/cipherlab/barcode/decoderparams/PDF417;)I

    move-result p1

    .line 986
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 988
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 989
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetPDF417(Lcom/cipherlab/barcode/decoderparams/PDF417;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2514
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadPDF417_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/PDF417;)I

    move-result p1

    .line 2515
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2517
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2518
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetPlessey(Lcom/cipherlab/barcode/decoderparams/Plessey;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1154
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadPlessey(Lcom/cipherlab/barcode/decoderparams/Plessey;)I

    move-result p1

    .line 1155
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1157
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1158
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetPlessey(Lcom/cipherlab/barcode/decoderparams/Plessey;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2683
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadPlessey_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Plessey;)I

    move-result p1

    .line 2684
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2686
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2687
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetProfileList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cipherlab/barcode/decoderparams/ReaderProfile;",
            ">;"
        }
    .end annotation

    .line 3025
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->GetProfileList()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 3028
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public GetQRCode(Lcom/cipherlab/barcode/decoderparams/QRCode;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1082
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadQRCode(Lcom/cipherlab/barcode/decoderparams/QRCode;)I

    move-result p1

    .line 1083
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1085
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1086
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetQRCode(Lcom/cipherlab/barcode/decoderparams/QRCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2611
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadQRCode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/QRCode;)I

    move-result p1

    .line 2612
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2614
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2615
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetReaderCallbackState()Z
    .registers 2

    .line 1376
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->GetReaderCallbackState()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_c

    :catch_7
    move-exception v0

    .line 1378
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public GetReaderTypeFromService()Lcom/cipherlab/barcode/decoder/BcReaderType;
    .registers 3

    const/4 v0, 0x0

    .line 1545
    :try_start_1
    iget-object v1, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->GetScannerType()I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v1

    .line 1549
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1552
    :goto_c
    invoke-static {v0}, Lcom/cipherlab/barcode/decoder/BcReaderType;->valueOf(I)Lcom/cipherlab/barcode/decoder/BcReaderType;

    move-result-object v0

    return-object v0
.end method

.method public GetScannerVersion()Ljava/lang/String;
    .registers 2

    .line 1531
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->GetScannerVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_d

    :catch_7
    move-exception v0

    .line 1534
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v0, ""

    :goto_d
    return-object v0
.end method

.method public GetSymbologySwitch(Lcom/cipherlab/barcode/decoder/Decoders;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 733
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadDecodersSettings(Lcom/cipherlab/barcode/decoder/Decoders;)I

    move-result p1

    .line 734
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 736
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 737
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetSymbologySwitch(Lcom/cipherlab/barcode/decoder/Decoders;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2285
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadDecodersSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoder/Decoders;)I

    move-result p1

    .line 2286
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2288
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2289
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetTelepen(Lcom/cipherlab/barcode/decoderparams/Telepen;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1178
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadTelepen(Lcom/cipherlab/barcode/decoderparams/Telepen;)I

    move-result p1

    .line 1179
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1181
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1182
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetTelepen(Lcom/cipherlab/barcode/decoderparams/Telepen;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2707
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadTelepen_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Telepen;)I

    move-result p1

    .line 2708
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2710
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2711
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetTriopticCode39(Lcom/cipherlab/barcode/decoderparams/TriopticCode39;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadTriopticCode39(Lcom/cipherlab/barcode/decoderparams/TriopticCode39;)I

    move-result p1

    .line 236
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 238
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 239
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetTriopticCode39(Lcom/cipherlab/barcode/decoderparams/TriopticCode39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1787
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadTriopticCode39_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/TriopticCode39;)I

    move-result p1

    .line 1788
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1790
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1791
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetUKPostal(Lcom/cipherlab/barcode/decoderparams/UKPostal;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 840
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadUKPostal(Lcom/cipherlab/barcode/decoderparams/UKPostal;)I

    move-result p1

    .line 841
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 843
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 844
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetUKPostal(Lcom/cipherlab/barcode/decoderparams/UKPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2369
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadUKPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UKPostal;)I

    move-result p1

    .line 2370
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2372
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2373
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetUPUFICSPostal(Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 960
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadUPUFICSPostal(Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;)I

    move-result p1

    .line 961
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 963
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 964
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetUPUFICSPostal(Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2489
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadUPUFICSPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;)I

    move-result p1

    .line 2490
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2492
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2493
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetUSPSPostal(Lcom/cipherlab/barcode/decoderparams/USPSPostal;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 936
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadUSPSPostal(Lcom/cipherlab/barcode/decoderparams/USPSPostal;)I

    move-result p1

    .line 937
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 939
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 940
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetUSPSPostal(Lcom/cipherlab/barcode/decoderparams/USPSPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2465
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadUSPSPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/USPSPostal;)I

    move-result p1

    .line 2466
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2468
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2469
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetUSPostal(Lcom/cipherlab/barcode/decoderparams/USPostal;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 816
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadUSPostal(Lcom/cipherlab/barcode/decoderparams/USPostal;)I

    move-result p1

    .line 817
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 819
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 820
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetUSPostal(Lcom/cipherlab/barcode/decoderparams/USPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2345
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadUSPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/USPostal;)I

    move-result p1

    .line 2346
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2348
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2349
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetUccCoupon(Lcom/cipherlab/barcode/decoderparams/UccCoupon;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 768
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadUccCoupon(Lcom/cipherlab/barcode/decoderparams/UccCoupon;)I

    move-result p1

    .line 769
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 771
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 772
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetUccCoupon(Lcom/cipherlab/barcode/decoderparams/UccCoupon;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2297
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadUccCoupon_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UccCoupon;)I

    move-result p1

    .line 2298
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2300
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2301
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetUpcA(Lcom/cipherlab/barcode/decoderparams/UpcA;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 658
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadUpcA(Lcom/cipherlab/barcode/decoderparams/UpcA;)I

    move-result p1

    .line 659
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 661
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 662
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetUpcA(Lcom/cipherlab/barcode/decoderparams/UpcA;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2210
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadUpcA_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UpcA;)I

    move-result p1

    .line 2211
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2213
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2214
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetUpcE(Lcom/cipherlab/barcode/decoderparams/UpcE;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 683
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadUpcE(Lcom/cipherlab/barcode/decoderparams/UpcE;)I

    move-result p1

    .line 684
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 686
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 687
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetUpcE(Lcom/cipherlab/barcode/decoderparams/UpcE;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2235
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadUpcE_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UpcE;)I

    move-result p1

    .line 2236
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2238
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2239
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetUpcE1(Lcom/cipherlab/barcode/decoderparams/UpcE1;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 708
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadUpcE1(Lcom/cipherlab/barcode/decoderparams/UpcE1;)I

    move-result p1

    .line 709
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 711
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 712
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetUpcE1(Lcom/cipherlab/barcode/decoderparams/UpcE1;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2260
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadUpcE1_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UpcE1;)I

    move-result p1

    .line 2261
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2263
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2264
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetUserPreferences(Lcom/cipherlab/barcode/decoderparams/UserPreference;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 756
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadUserPreferenceSettings(Lcom/cipherlab/barcode/decoderparams/UserPreference;)I

    move-result p1

    .line 757
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 759
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 760
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public GetUserPreferences(Lcom/cipherlab/barcode/decoderparams/UserPreference;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2886
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ReadUserPreferenceSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UserPreference;)I

    move-result p1

    .line 2887
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2889
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2890
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public Intent_ReaderService_Connected()V
    .registers 3

    .line 1639
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mReaderReadySemaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 1641
    :try_start_3
    iget-object v1, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mReaderReadySemaphore:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1639
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public RemoveProfile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 3038
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->RemoveProfile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 3039
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 3042
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3043
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public Reset_Reader_To_Default()Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1390
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ResetToDefault()I

    move-result v0

    .line 1391
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v1

    aget-object v0, v1, v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    .line 1394
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1395
    sget-object v0, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object v0
.end method

.method public Reset_Reader_To_Default(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 2985
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->ResetToDefault_Profile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 2986
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2989
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2990
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetActive(Z)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    const-string v0, "ReaderManager"

    const-string v1, "SetActive()"

    .line 1435
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    :try_start_7
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->SetReaderActive(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception p1

    .line 1441
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1444
    :goto_11
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_OK:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetActive(ZLcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 5

    const-string v0, "ReaderManager"

    const-string v1, "SetActive()"

    .line 2955
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    :try_start_7
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1, p2}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->SetReaderActive_Profile(ZLcom/cipherlab/barcode/decoderparams/ReaderProfile;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception p1

    .line 2961
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2964
    :goto_11
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_OK:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetAustralianPostal(Lcom/cipherlab/barcode/decoderparams/AustralianPostal;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 900
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteAustralianPostal(Lcom/cipherlab/barcode/decoderparams/AustralianPostal;)I

    move-result p1

    .line 901
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 903
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 904
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetAustralianPostal(Lcom/cipherlab/barcode/decoderparams/AustralianPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2429
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteAustralianPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/AustralianPostal;)I

    move-result p1

    .line 2430
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2432
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2433
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetAztec(Lcom/cipherlab/barcode/decoderparams/Aztec;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1142
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteAztec(Lcom/cipherlab/barcode/decoderparams/Aztec;)I

    move-result p1

    .line 1143
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1145
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1146
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetAztec(Lcom/cipherlab/barcode/decoderparams/Aztec;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2671
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteAztec_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Aztec;)I

    move-result p1

    .line 2672
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2674
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2675
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetChinese2Of5(Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteChinese2Of5(Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;)I

    move-result p1

    .line 348
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 350
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 351
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetChinese2Of5(Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1899
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteChinese2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;)I

    move-result p1

    .line 1900
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1902
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1903
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetCip39(Lcom/cipherlab/barcode/decoderparams/Cip39;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1238
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteCip39(Lcom/cipherlab/barcode/decoderparams/Cip39;)I

    move-result p1

    .line 1239
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1241
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1242
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetCip39(Lcom/cipherlab/barcode/decoderparams/Cip39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2767
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteCip39_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Cip39;)I

    move-result p1

    .line 2768
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2770
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2771
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetCodabar(Lcom/cipherlab/barcode/decoderparams/Codabar;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteCodabar(Lcom/cipherlab/barcode/decoderparams/Codabar;)I

    move-result p1

    .line 299
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 301
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 302
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetCodabar(Lcom/cipherlab/barcode/decoderparams/Codabar;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1850
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteCodabar_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Codabar;)I

    move-result p1

    .line 1851
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1853
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1854
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetCode11(Lcom/cipherlab/barcode/decoderparams/Code11;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteCode11(Lcom/cipherlab/barcode/decoderparams/Code11;)I

    move-result p1

    .line 273
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 275
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 276
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetCode11(Lcom/cipherlab/barcode/decoderparams/Code11;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1824
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteCode11_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code11;)I

    move-result p1

    .line 1825
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1827
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1828
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetCode128(Lcom/cipherlab/barcode/decoderparams/Code128;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteCode128(Lcom/cipherlab/barcode/decoderparams/Code128;)I

    move-result p1

    .line 323
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 325
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 326
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetCode128(Lcom/cipherlab/barcode/decoderparams/Code128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1874
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteCode128_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code128;)I

    move-result p1

    .line 1875
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1877
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1878
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetCode39(Lcom/cipherlab/barcode/decoderparams/Code39;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteCode39(Lcom/cipherlab/barcode/decoderparams/Code39;)I

    move-result p1

    .line 174
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 176
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 177
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetCode39(Lcom/cipherlab/barcode/decoderparams/Code39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1725
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteCode39_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code39;)I

    move-result p1

    .line 1726
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1728
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1729
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetCode93(Lcom/cipherlab/barcode/decoderparams/Code93;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteCode93(Lcom/cipherlab/barcode/decoderparams/Code93;)I

    move-result p1

    .line 248
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 250
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 251
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetCode93(Lcom/cipherlab/barcode/decoderparams/Code93;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1799
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteCode93_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code93;)I

    move-result p1

    .line 1800
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1802
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1803
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetComposite(Lcom/cipherlab/barcode/decoderparams/Composite;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 804
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteComposite(Lcom/cipherlab/barcode/decoderparams/Composite;)I

    move-result p1

    .line 805
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 807
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 808
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetComposite(Lcom/cipherlab/barcode/decoderparams/Composite;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2333
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteComposite_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Composite;)I

    move-result p1

    .line 2334
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2336
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2337
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetDataMatrix(Lcom/cipherlab/barcode/decoderparams/DataMatrix;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1046
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteDataMatrix(Lcom/cipherlab/barcode/decoderparams/DataMatrix;)I

    move-result p1

    .line 1047
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1049
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1050
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetDataMatrix(Lcom/cipherlab/barcode/decoderparams/DataMatrix;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2575
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteDataMatrix_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/DataMatrix;)I

    move-result p1

    .line 2576
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2578
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2579
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetDataOutputSettings(Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1466
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteOutputSettings(Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;)I

    move-result p1

    .line 1467
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1470
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1471
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetDataOutputSettings(Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2928
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteOutputSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;)I

    move-result p1

    .line 2929
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2932
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2933
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetDotCode(Lcom/cipherlab/barcode/decoderparams/DotCode;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1334
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteDotCode(Lcom/cipherlab/barcode/decoderparams/DotCode;)I

    move-result p1

    .line 1335
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1337
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1338
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetDotCode(Lcom/cipherlab/barcode/decoderparams/DotCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2863
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteDotCode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/DotCode;)I

    move-result p1

    .line 2864
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2866
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2867
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetDutchPostal(Lcom/cipherlab/barcode/decoderparams/DutchPostal;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 924
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteDutchPostal(Lcom/cipherlab/barcode/decoderparams/DutchPostal;)I

    move-result p1

    .line 925
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 927
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 928
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetDutchPostal(Lcom/cipherlab/barcode/decoderparams/DutchPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2453
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteDutchPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/DutchPostal;)I

    move-result p1

    .line 2454
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2456
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2457
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetEan13(Lcom/cipherlab/barcode/decoderparams/Ean13;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 621
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteEan13(Lcom/cipherlab/barcode/decoderparams/Ean13;)I

    move-result p1

    .line 622
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 624
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 625
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetEan13(Lcom/cipherlab/barcode/decoderparams/Ean13;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2173
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteEan13_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Ean13;)I

    move-result p1

    .line 2174
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2176
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2177
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetEan8(Lcom/cipherlab/barcode/decoderparams/Ean8;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 596
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteEan8(Lcom/cipherlab/barcode/decoderparams/Ean8;)I

    move-result p1

    .line 597
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 599
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 600
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetEan8(Lcom/cipherlab/barcode/decoderparams/Ean8;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2148
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteEan8_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Ean8;)I

    move-result p1

    .line 2149
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2151
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2152
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetFrenchPharmacode(Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1214
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteFrenchPharmacode(Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;)I

    move-result p1

    .line 1215
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1217
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1218
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetFrenchPharmacode(Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2743
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteFrenchPharmacode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;)I

    move-result p1

    .line 2744
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2746
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2747
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetGS1128(Lcom/cipherlab/barcode/decoderparams/GS1128;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 521
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteGS1128(Lcom/cipherlab/barcode/decoderparams/GS1128;)I

    move-result p1

    .line 522
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 524
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 525
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetGS1128(Lcom/cipherlab/barcode/decoderparams/GS1128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2073
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteGS1128_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1128;)I

    move-result p1

    .line 2074
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2076
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2077
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetGS1DataBar14(Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteGS1DataBar14(Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;)I

    move-result p1

    .line 447
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 449
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 450
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetGS1DataBar14(Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1998
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteGS1DataBar14_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;)I

    move-result p1

    .line 1999
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2001
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2002
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetGS1DataBarExpanded(Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteGS1DataBarExpanded(Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;)I

    move-result p1

    .line 473
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 475
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 476
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetGS1DataBarExpanded(Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2024
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteGS1DataBarExpanded_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;)I

    move-result p1

    .line 2025
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2027
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2028
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetGS1DataBarLimited(Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 496
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteGS1DataBarLimited(Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;)I

    move-result p1

    .line 497
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 499
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 500
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetGS1DataBarLimited(Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2048
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteGS1DataBarLimited_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;)I

    move-result p1

    .line 2049
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2051
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2052
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetHanxin(Lcom/cipherlab/barcode/decoderparams/Hanxin;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1286
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteHanxin(Lcom/cipherlab/barcode/decoderparams/Hanxin;)I

    move-result p1

    .line 1287
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1289
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1290
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetHanxin(Lcom/cipherlab/barcode/decoderparams/Hanxin;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2815
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteHanxin_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Hanxin;)I

    move-result p1

    .line 2816
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2818
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2819
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetISBT128(Lcom/cipherlab/barcode/decoderparams/ISBT128;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 546
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteISBT128(Lcom/cipherlab/barcode/decoderparams/ISBT128;)I

    move-result p1

    .line 547
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 549
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 550
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetISBT128(Lcom/cipherlab/barcode/decoderparams/ISBT128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2098
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteISBT128_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/ISBT128;)I

    move-result p1

    .line 2099
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2101
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2102
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetIndustrial2Of5(Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteIndustrial2Of5(Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;)I

    move-result p1

    .line 398
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 400
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 401
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetIndustrial2Of5(Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1949
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteIndustrial2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;)I

    move-result p1

    .line 1950
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1952
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1953
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetInterleaved2Of5(Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteInterleaved2Of5(Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;)I

    move-result p1

    .line 423
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 425
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 426
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetInterleaved2Of5(Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1974
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteInterleaved2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;)I

    move-result p1

    .line 1975
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1977
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1978
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetJapanPostal(Lcom/cipherlab/barcode/decoderparams/JapanPostal;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 876
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteJapanPostal(Lcom/cipherlab/barcode/decoderparams/JapanPostal;)I

    move-result p1

    .line 877
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 879
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 880
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetJapanPostal(Lcom/cipherlab/barcode/decoderparams/JapanPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2405
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteJapanPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/JapanPostal;)I

    move-result p1

    .line 2406
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2408
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2409
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetKorean3Of5(Lcom/cipherlab/barcode/decoderparams/Korean3Of5;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteKorean3Of5(Lcom/cipherlab/barcode/decoderparams/Korean3Of5;)I

    move-result p1

    .line 199
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 201
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 202
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetKorean3Of5(Lcom/cipherlab/barcode/decoderparams/Korean3Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1750
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteKorean3Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Korean3Of5;)I

    move-result p1

    .line 1751
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1753
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1754
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetLaetus(Lcom/cipherlab/barcode/decoderparams/Laetus;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1262
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteLaetus(Lcom/cipherlab/barcode/decoderparams/Laetus;)I

    move-result p1

    .line 1263
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1265
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1266
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetLaetus(Lcom/cipherlab/barcode/decoderparams/Laetus;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2791
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteLaetus_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Laetus;)I

    move-result p1

    .line 2792
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2794
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2795
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetMRZ(Lcom/cipherlab/barcode/decoderparams/MRZ;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1310
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteMRZ(Lcom/cipherlab/barcode/decoderparams/MRZ;)I

    move-result p1

    .line 1311
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1313
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1314
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetMRZ(Lcom/cipherlab/barcode/decoderparams/MRZ;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2839
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteMRZ_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MRZ;)I

    move-result p1

    .line 2840
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2842
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2843
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetMatrix2Of5(Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteMatrix2Of5(Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;)I

    move-result p1

    .line 373
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 375
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 376
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetMatrix2Of5(Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1924
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteMatrix2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;)I

    move-result p1

    .line 1925
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1927
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1928
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetMaxiCode(Lcom/cipherlab/barcode/decoderparams/MaxiCode;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1070
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteMaxiCode(Lcom/cipherlab/barcode/decoderparams/MaxiCode;)I

    move-result p1

    .line 1071
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1073
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1074
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetMaxiCode(Lcom/cipherlab/barcode/decoderparams/MaxiCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2599
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteMaxiCode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MaxiCode;)I

    move-result p1

    .line 2600
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2602
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2603
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetMicroPDF417(Lcom/cipherlab/barcode/decoderparams/MicroPDF417;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1021
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteMicroPDF417(Lcom/cipherlab/barcode/decoderparams/MicroPDF417;)I

    move-result p1

    .line 1022
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1024
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1025
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetMicroPDF417(Lcom/cipherlab/barcode/decoderparams/MicroPDF417;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2550
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteMicroPDF417_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MicroPDF417;)I

    move-result p1

    .line 2551
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2553
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2554
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetMicroQR(Lcom/cipherlab/barcode/decoderparams/MicroQR;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1118
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteMicroQR(Lcom/cipherlab/barcode/decoderparams/MicroQR;)I

    move-result p1

    .line 1119
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1121
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1122
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetMicroQR(Lcom/cipherlab/barcode/decoderparams/MicroQR;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2647
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteMicroQR_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MicroQR;)I

    move-result p1

    .line 2648
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2650
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2651
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetMsi(Lcom/cipherlab/barcode/decoderparams/Msi;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 571
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteMsi(Lcom/cipherlab/barcode/decoderparams/Msi;)I

    move-result p1

    .line 572
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 574
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 575
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetMsi(Lcom/cipherlab/barcode/decoderparams/Msi;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2123
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteMsi_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Msi;)I

    move-result p1

    .line 2124
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2126
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2127
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetNotificationParams(Lcom/cipherlab/barcode/decoderparams/NotificationParams;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1404
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteNotificationSettings(Lcom/cipherlab/barcode/decoderparams/NotificationParams;)I

    move-result p1

    .line 1405
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1408
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1409
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetNotificationParams(Lcom/cipherlab/barcode/decoderparams/NotificationParams;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2899
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteNotificationSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/NotificationParams;)I

    move-result p1

    .line 2900
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2903
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2904
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetPDF417(Lcom/cipherlab/barcode/decoderparams/PDF417;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 997
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WritePDF417(Lcom/cipherlab/barcode/decoderparams/PDF417;)I

    move-result p1

    .line 998
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1000
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1001
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetPDF417(Lcom/cipherlab/barcode/decoderparams/PDF417;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2526
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WritePDF417_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/PDF417;)I

    move-result p1

    .line 2527
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2529
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2530
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetPlessey(Lcom/cipherlab/barcode/decoderparams/Plessey;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1166
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WritePlessey(Lcom/cipherlab/barcode/decoderparams/Plessey;)I

    move-result p1

    .line 1167
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1169
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1170
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetPlessey(Lcom/cipherlab/barcode/decoderparams/Plessey;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2695
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WritePlessey_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Plessey;)I

    move-result p1

    .line 2696
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2698
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2699
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetQRCode(Lcom/cipherlab/barcode/decoderparams/QRCode;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1094
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteQRCode(Lcom/cipherlab/barcode/decoderparams/QRCode;)I

    move-result p1

    .line 1095
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1097
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1098
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetQRCode(Lcom/cipherlab/barcode/decoderparams/QRCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2623
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteQRCode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/QRCode;)I

    move-result p1

    .line 2624
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2626
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2627
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetReaderCallback(Lcom/cipherlab/barcodebase/ReaderCallback;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1345
    sget-object v0, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    if-eqz p1, :cond_f

    .line 1351
    :try_start_4
    sput-object p1, Lcom/cipherlab/barcode/ReaderManagerAPI;->mReaderCallback:Lcom/cipherlab/barcodebase/ReaderCallback;

    .line 1352
    iget-object p1, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->SetReaderCallback(Z)V

    .line 1353
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_OK:Lcom/cipherlab/barcode/decoder/ClResult;

    goto :goto_21

    :cond_f
    const/4 p1, 0x0

    .line 1357
    sput-object p1, Lcom/cipherlab/barcode/ReaderManagerAPI;->mReaderCallback:Lcom/cipherlab/barcodebase/ReaderCallback;

    .line 1358
    iget-object p1, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->SetReaderCallback(Z)V

    .line 1359
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_OK:Lcom/cipherlab/barcode/decoder/ClResult;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1a} :catch_1b

    goto :goto_21

    :catch_1b
    move-exception p1

    .line 1362
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1363
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    :goto_21
    return-object p1
.end method

.method public SetSoftwareTriggerBool(Z)V
    .registers 3

    .line 1493
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->SetSoftwareTriggerBool(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p1

    .line 1495
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_a
    return-void
.end method

.method public SetSymbologySwitch(Lcom/cipherlab/barcode/decoder/Decoders;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 720
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteDecodersSettings(Lcom/cipherlab/barcode/decoder/Decoders;)I

    move-result p1

    .line 721
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 723
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 724
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetSymbologySwitch(Lcom/cipherlab/barcode/decoder/Decoders;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2272
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteDecodersSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoder/Decoders;)I

    move-result p1

    .line 2273
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2275
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2276
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetTelepen(Lcom/cipherlab/barcode/decoderparams/Telepen;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1190
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteTelepen(Lcom/cipherlab/barcode/decoderparams/Telepen;)I

    move-result p1

    .line 1191
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1193
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1194
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetTelepen(Lcom/cipherlab/barcode/decoderparams/Telepen;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2719
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteTelepen_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Telepen;)I

    move-result p1

    .line 2720
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2722
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2723
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetTriopticCode39(Lcom/cipherlab/barcode/decoderparams/TriopticCode39;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteTriopticCode39(Lcom/cipherlab/barcode/decoderparams/TriopticCode39;)I

    move-result p1

    .line 224
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 226
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 227
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetTriopticCode39(Lcom/cipherlab/barcode/decoderparams/TriopticCode39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1775
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteTriopticCode39_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/TriopticCode39;)I

    move-result p1

    .line 1776
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 1778
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1779
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetUKPostal(Lcom/cipherlab/barcode/decoderparams/UKPostal;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 852
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteUKPostal(Lcom/cipherlab/barcode/decoderparams/UKPostal;)I

    move-result p1

    .line 853
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 855
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 856
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetUKPostal(Lcom/cipherlab/barcode/decoderparams/UKPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2381
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteUKPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UKPostal;)I

    move-result p1

    .line 2382
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2384
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2385
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetUPUFICSPostal(Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 972
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteUPUFICSPostal(Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;)I

    move-result p1

    .line 973
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 975
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 976
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetUPUFICSPostal(Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2501
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteUPUFICSPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;)I

    move-result p1

    .line 2502
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2504
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2505
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetUSPSPostal(Lcom/cipherlab/barcode/decoderparams/USPSPostal;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 948
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteUSPSPostal(Lcom/cipherlab/barcode/decoderparams/USPSPostal;)I

    move-result p1

    .line 949
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 951
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 952
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetUSPSPostal(Lcom/cipherlab/barcode/decoderparams/USPSPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2477
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteUSPSPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/USPSPostal;)I

    move-result p1

    .line 2478
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2480
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2481
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetUSPostal(Lcom/cipherlab/barcode/decoderparams/USPostal;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 828
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteUSPostal(Lcom/cipherlab/barcode/decoderparams/USPostal;)I

    move-result p1

    .line 829
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 831
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 832
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetUSPostal(Lcom/cipherlab/barcode/decoderparams/USPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2357
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteUSPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/USPostal;)I

    move-result p1

    .line 2358
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2360
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2361
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetUccCoupon(Lcom/cipherlab/barcode/decoderparams/UccCoupon;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 780
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteUccCoupon(Lcom/cipherlab/barcode/decoderparams/UccCoupon;)I

    move-result p1

    .line 781
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 783
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 784
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetUccCoupon(Lcom/cipherlab/barcode/decoderparams/UccCoupon;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2309
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteUccCoupon_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UccCoupon;)I

    move-result p1

    .line 2310
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2312
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2313
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetUpcA(Lcom/cipherlab/barcode/decoderparams/UpcA;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 646
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteUpcA(Lcom/cipherlab/barcode/decoderparams/UpcA;)I

    move-result p1

    .line 647
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 649
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 650
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetUpcA(Lcom/cipherlab/barcode/decoderparams/UpcA;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2198
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteUpcA_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UpcA;)I

    move-result p1

    .line 2199
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2201
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2202
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetUpcE(Lcom/cipherlab/barcode/decoderparams/UpcE;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 671
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteUpcE(Lcom/cipherlab/barcode/decoderparams/UpcE;)I

    move-result p1

    .line 672
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 674
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 675
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetUpcE(Lcom/cipherlab/barcode/decoderparams/UpcE;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2223
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteUpcE_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UpcE;)I

    move-result p1

    .line 2224
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2226
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2227
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetUpcE1(Lcom/cipherlab/barcode/decoderparams/UpcE1;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 696
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteUpcE1(Lcom/cipherlab/barcode/decoderparams/UpcE1;)I

    move-result p1

    .line 697
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 699
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 700
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetUpcE1(Lcom/cipherlab/barcode/decoderparams/UpcE1;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2248
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteUpcE1_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UpcE1;)I

    move-result p1

    .line 2249
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2251
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2252
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetUserPreferences(Lcom/cipherlab/barcode/decoderparams/UserPreference;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 744
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteUserPreferenceSettings(Lcom/cipherlab/barcode/decoderparams/UserPreference;)I

    move-result p1

    .line 745
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 747
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 748
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public SetUserPreferences(Lcom/cipherlab/barcode/decoderparams/UserPreference;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2874
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p2, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->WriteUserPreferenceSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UserPreference;)I

    move-result p1

    .line 2875
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p2

    aget-object p1, p2, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 2877
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2878
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public UpdateProfile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 3011
    :try_start_0
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mService:Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;

    invoke-interface {v0, p1}, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;->UpdateProfile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I

    move-result p1

    .line 3012
    invoke-static {}, Lcom/cipherlab/barcode/decoder/ClResult;->values()[Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 3015
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3016
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1
.end method

.method public bindBReaderService()V
    .registers 5

    .line 1580
    iget-boolean v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->bindServiceFlag:Z

    if-nez v0, :cond_1d

    .line 1595
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1596
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.cipherlab.clbarcodeservice"

    const-string v3, "com.cipherlab.clbarcodeservice.MainService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1597
    sget-object v1, Lcom/cipherlab/barcode/ReaderManagerAPI;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->conn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_1d
    return-void
.end method

.method public deinit()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    const-string v0, "ReaderManager"

    const-string v1, "deinit()"

    .line 120
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget-object v1, Lcom/cipherlab/barcode/ReaderManagerAPI;->myReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    sget-object v1, Lcom/cipherlab/barcode/ReaderManagerAPI;->context:Landroid/content/Context;

    if-eqz v1, :cond_40

    sget-object v1, Lcom/cipherlab/barcode/ReaderManagerAPI;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_40

    const-string v1, "unregisterReceiver()"

    .line 124
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget-object v0, Lcom/cipherlab/barcode/ReaderManagerAPI;->context:Landroid/content/Context;

    sget-object v1, Lcom/cipherlab/barcode/ReaderManagerAPI;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 128
    sget-object v0, Lcom/cipherlab/barcode/ReaderManagerAPI;->looper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 129
    sget-object v0, Lcom/cipherlab/barcode/ReaderManagerAPI;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 130
    sput-object v2, Lcom/cipherlab/barcode/ReaderManagerAPI;->looper:Landroid/os/Looper;

    .line 131
    sput-object v2, Lcom/cipherlab/barcode/ReaderManagerAPI;->handlerThread:Landroid/os/HandlerThread;

    .line 132
    sput-object v2, Lcom/cipherlab/barcode/ReaderManagerAPI;->handler:Landroid/os/Handler;

    .line 134
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mMyReaderReadyRunnable:Lcom/cipherlab/barcode/ReaderManagerAPI$ReaderReadyRunnable;

    if-eqz v0, :cond_37

    .line 136
    invoke-virtual {v0}, Lcom/cipherlab/barcode/ReaderManagerAPI$ReaderReadyRunnable;->stopThread()V

    .line 139
    :cond_37
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mMyThread:Ljava/lang/Thread;

    if-eqz v0, :cond_40

    .line 140
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 141
    iput-object v2, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->mMyThread:Ljava/lang/Thread;

    .line 145
    :cond_40
    sput-object v2, Lcom/cipherlab/barcode/ReaderManagerAPI;->_instance:Lcom/cipherlab/barcode/ReaderManagerAPI;

    return-void
.end method

.method public unbindBReaderService()V
    .registers 3

    .line 1602
    iget-boolean v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->bindServiceFlag:Z

    if-eqz v0, :cond_15

    .line 1603
    sget-object v0, Lcom/cipherlab/barcode/ReaderManagerAPI;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 1604
    iput-boolean v0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->bindServiceFlag:Z

    const-string v0, "ReaderManager"

    const-string v1, "unbindBReaderService()"

    .line 1605
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return-void
.end method
