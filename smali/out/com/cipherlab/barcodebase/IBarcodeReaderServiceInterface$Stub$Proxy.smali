.class Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBarcodeReaderServiceInterface.java"

# interfaces
.implements Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 6446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6448
    iput-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public ApplyProfile()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11849
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11850
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11852
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11853
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11854
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1f

    .line 11857
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11858
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_1f
    move-exception v2

    .line 11857
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11858
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11859
    throw v2
.end method

.method public CopyProfile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8906
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8907
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8910
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 8912
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8913
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 8916
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 8919
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8920
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 8923
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8925
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x73

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8926
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8927
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 8930
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 8930
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8932
    throw p1
.end method

.method public CreateProfile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8577
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8578
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8581
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8582
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8583
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p3, :cond_19

    const/4 p3, 0x1

    goto :goto_1a

    :cond_19
    const/4 p3, 0x0

    .line 8584
    :goto_1a
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8585
    iget-object p3, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x64

    invoke-interface {p3, v2, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8586
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8587
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p3
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_36

    if-eqz p3, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    .line 8590
    :goto_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_36
    move-exception p1

    .line 8590
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8592
    throw p1
.end method

.method public CreateProfileEx(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8817
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8818
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8821
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 8823
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8824
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 8827
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8829
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6f

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8830
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8831
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 8834
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 8834
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8836
    throw p1
.end method

.method public DetectReaderReady()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11865
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11866
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11869
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11870
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xda

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11871
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11872
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_26

    if-eqz v2, :cond_1f

    const/4 v4, 0x1

    .line 11875
    :cond_1f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_26
    move-exception v2

    .line 11875
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11877
    throw v2
.end method

.method public GetLastError()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8526
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8527
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8530
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8531
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8532
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8533
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_23

    .line 8536
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_23
    move-exception v2

    .line 8536
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8538
    throw v2
.end method

.method public GetProfileList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cipherlab/barcode/decoderparams/ReaderProfile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8841
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8842
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8845
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8846
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x70

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8847
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8848
    sget-object v2, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_25

    .line 8851
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_25
    move-exception v2

    .line 8851
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8853
    throw v2
.end method

.method public GetReaderActive()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 6523
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6524
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6525
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6526
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_25

    if-eqz v2, :cond_1e

    const/4 v4, 0x1

    .line 6529
    :cond_1e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_25
    move-exception v2

    .line 6529
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6531
    throw v2
.end method

.method public GetReaderActive_Profile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8959
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8960
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8963
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 8965
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8966
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 8969
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8971
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x75

    invoke-interface {p1, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8972
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8973
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_34

    if-eqz p1, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    .line 8976
    :goto_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8977
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_34
    move-exception p1

    .line 8976
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8977
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8978
    throw p1
.end method

.method public GetReaderCallbackState()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8509
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8510
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8513
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8514
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8515
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8516
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_26

    if-eqz v2, :cond_1f

    const/4 v4, 0x1

    .line 8519
    :cond_1f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_26
    move-exception v2

    .line 8519
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8521
    throw v2
.end method

.method public GetScannerType()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6596
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 6599
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6600
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6601
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6602
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_23

    .line 6605
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_23
    move-exception v2

    .line 6605
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6607
    throw v2
.end method

.method public GetScannerVersion()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8543
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8544
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8547
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8548
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x62

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8549
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8550
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_23

    .line 8553
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_23
    move-exception v2

    .line 8553
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8555
    throw v2
.end method

.method public GetServiceVersion()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8389
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8393
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8394
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8395
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8396
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_23

    .line 8399
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_23
    move-exception v2

    .line 8399
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8401
    throw v2
.end method

.method public ReadAustralianPostal(Lcom/cipherlab/barcode/decoderparams/AustralianPostal;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6741
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6742
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 6745
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6746
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6747
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6748
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6749
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 6750
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 6754
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6755
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 6754
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6755
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6756
    throw p1
.end method

.method public ReadAustralianPostal_Profile(Lcom/cipherlab/barcode/decoderparams/AustralianPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9274
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 9276
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9277
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9280
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9282
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x80

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9283
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9284
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 9285
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 9286
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 9290
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 9290
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9292
    throw p1
.end method

.method public ReadAustralianPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/AustralianPostal;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12149
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 12151
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12152
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12155
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12157
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe4

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12158
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12159
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 12160
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 12161
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 12165
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 12165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12167
    throw p1
.end method

.method public ReadAztec(Lcom/cipherlab/barcode/decoderparams/Aztec;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6785
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6786
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 6789
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6790
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6791
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6792
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6793
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 6794
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Aztec;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 6798
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 6798
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6800
    throw p1
.end method

.method public ReadAztec_Profile(Lcom/cipherlab/barcode/decoderparams/Aztec;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9328
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9332
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 9334
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9335
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9338
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9340
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x82

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9341
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9342
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 9343
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 9344
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Aztec;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 9348
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 9348
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9350
    throw p1
.end method

.method public ReadAztec_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Aztec;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12204
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12207
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 12209
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12210
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12213
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12215
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe6

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12216
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12217
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 12218
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 12219
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/Aztec;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 12223
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 12223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12225
    throw p1
.end method

.method public ReadChinese2Of5(Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6829
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6830
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 6833
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6834
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6835
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6836
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6837
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 6838
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 6842
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 6842
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6844
    throw p1
.end method

.method public ReadChinese2Of5_Profile(Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9387
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9390
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 9392
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9393
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9396
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9398
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x84

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9399
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9400
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 9401
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 9402
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 9406
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 9406
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9408
    throw p1
.end method

.method public ReadChinese2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12265
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 12267
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12268
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12271
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12273
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe8

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12274
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12275
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 12276
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 12277
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 12281
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 12281
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12283
    throw p1
.end method

.method public ReadCip39(Lcom/cipherlab/barcode/decoderparams/Cip39;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8622
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8625
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8626
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8627
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8628
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8629
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 8630
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Cip39;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 8634
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8635
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 8634
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8635
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8636
    throw p1
.end method

.method public ReadCip39_Profile(Lcom/cipherlab/barcode/decoderparams/Cip39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11590
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11591
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11594
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 11596
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11597
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11600
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11602
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd0

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11603
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11604
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 11605
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 11606
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Cip39;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 11610
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 11610
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11612
    throw p1
.end method

.method public ReadCip39_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Cip39;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14465
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14466
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 14469
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 14471
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14472
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 14475
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14477
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x134

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14478
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14479
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 14480
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 14481
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/Cip39;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 14485
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 14485
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14487
    throw p1
.end method

.method public ReadCodabar(Lcom/cipherlab/barcode/decoderparams/Codabar;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6873
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6874
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 6877
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6878
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6879
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6880
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6881
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 6882
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Codabar;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 6886
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 6886
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6888
    throw p1
.end method

.method public ReadCodabar_Profile(Lcom/cipherlab/barcode/decoderparams/Codabar;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9445
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9448
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 9450
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9451
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9454
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9456
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x86

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9457
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9458
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 9459
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 9460
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Codabar;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 9464
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 9464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9466
    throw p1
.end method

.method public ReadCodabar_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Codabar;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12323
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 12325
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12326
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12329
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12331
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xea

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12332
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12333
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 12334
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 12335
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/Codabar;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 12339
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 12339
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12341
    throw p1
.end method

.method public ReadCode11(Lcom/cipherlab/barcode/decoderparams/Code11;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6917
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6918
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 6921
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6922
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6923
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6924
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6925
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 6926
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Code11;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 6930
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 6930
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6932
    throw p1
.end method

.method public ReadCode11_Profile(Lcom/cipherlab/barcode/decoderparams/Code11;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9502
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9503
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9506
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 9508
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9509
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9512
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9514
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x88

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9515
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9516
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 9517
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 9518
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Code11;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 9522
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 9522
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9524
    throw p1
.end method

.method public ReadCode11_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code11;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12381
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 12383
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12384
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12387
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12389
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xec

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12390
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12391
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 12392
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 12393
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/Code11;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 12397
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 12397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12399
    throw p1
.end method

.method public ReadCode128(Lcom/cipherlab/barcode/decoderparams/Code128;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6961
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6962
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 6965
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6966
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6967
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6968
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6969
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 6970
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Code128;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 6974
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 6974
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6976
    throw p1
.end method

.method public ReadCode128_Profile(Lcom/cipherlab/barcode/decoderparams/Code128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9560
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9561
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9564
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 9566
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9567
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9570
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9572
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8a

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9573
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9574
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 9575
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 9576
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Code128;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 9580
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 9580
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9582
    throw p1
.end method

.method public ReadCode128_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code128;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12436
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12439
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 12441
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12442
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12445
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12447
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xee

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12448
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12449
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 12450
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 12451
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/Code128;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 12455
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 12455
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12457
    throw p1
.end method

.method public ReadCode39(Lcom/cipherlab/barcode/decoderparams/Code39;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7005
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7006
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7009
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7010
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7011
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7012
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7013
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 7014
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Code39;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 7018
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 7018
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7020
    throw p1
.end method

.method public ReadCode39_Profile(Lcom/cipherlab/barcode/decoderparams/Code39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9619
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9622
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 9624
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9625
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9628
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9630
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8c

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9631
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9632
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 9633
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 9634
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Code39;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 9638
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 9638
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9640
    throw p1
.end method

.method public ReadCode39_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code39;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12497
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 12499
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12500
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12503
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12505
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf0

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12506
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12507
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 12508
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 12509
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/Code39;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 12513
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 12513
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12515
    throw p1
.end method

.method public ReadCode93(Lcom/cipherlab/barcode/decoderparams/Code93;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7049
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7050
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7053
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7054
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7055
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7056
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7057
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 7058
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Code93;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 7062
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7063
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 7062
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7063
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7064
    throw p1
.end method

.method public ReadCode93_Profile(Lcom/cipherlab/barcode/decoderparams/Code93;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9676
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9677
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9680
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 9682
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9683
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9686
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9688
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8e

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9689
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9690
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 9691
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 9692
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Code93;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 9696
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 9696
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9698
    throw p1
.end method

.method public ReadCode93_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code93;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12552
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12555
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 12557
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12558
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12561
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12563
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12564
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12565
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 12566
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 12567
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/Code93;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 12571
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 12571
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12573
    throw p1
.end method

.method public ReadComposite(Lcom/cipherlab/barcode/decoderparams/Composite;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7093
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7094
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7097
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7098
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7099
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7100
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7101
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 7102
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Composite;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 7106
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 7106
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7108
    throw p1
.end method

.method public ReadComposite_Profile(Lcom/cipherlab/barcode/decoderparams/Composite;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9734
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9735
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9738
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 9740
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9741
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9744
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9746
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x90

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9747
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9748
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 9749
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 9750
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Composite;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 9754
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9755
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 9754
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9755
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9756
    throw p1
.end method

.method public ReadComposite_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Composite;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12609
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12613
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 12615
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12616
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12619
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12621
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf4

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12622
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12623
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 12624
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 12625
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/Composite;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 12629
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 12629
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12631
    throw p1
.end method

.method public ReadDataMatrix(Lcom/cipherlab/barcode/decoderparams/DataMatrix;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7141
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7142
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7143
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7144
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7145
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 7146
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 7150
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 7150
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7152
    throw p1
.end method

.method public ReadDataMatrix_Profile(Lcom/cipherlab/barcode/decoderparams/DataMatrix;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9792
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9793
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9796
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 9798
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9799
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9802
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9804
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x92

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9805
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9806
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 9807
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 9808
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 9812
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 9812
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9814
    throw p1
.end method

.method public ReadDataMatrix_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/DataMatrix;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12667
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12668
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12671
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 12673
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12674
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12677
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12679
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf6

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12680
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12681
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 12682
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 12683
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 12687
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 12687
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12688
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12689
    throw p1
.end method

.method public ReadDecodersSettings(Lcom/cipherlab/barcode/decoder/Decoders;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6637
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 6640
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6641
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6642
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6643
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6644
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 6645
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoder/Decoders;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 6649
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6650
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 6649
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6650
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6651
    throw p1
.end method

.method public ReadDecodersSettings_Profile(Lcom/cipherlab/barcode/decoder/Decoders;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9216
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 9218
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9219
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9222
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9224
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7e

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9225
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9226
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 9227
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 9228
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoder/Decoders;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 9232
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 9232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9234
    throw p1
.end method

.method public ReadDecodersSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoder/Decoders;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12087
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12088
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12091
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 12093
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12094
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12097
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12099
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12100
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12101
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 12102
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 12103
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoder/Decoders;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 12107
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 12107
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12109
    throw p1
.end method

.method public ReadDotCode(Lcom/cipherlab/barcode/decoderparams/DotCode;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14748
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14749
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 14752
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14753
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14754
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14755
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 14756
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 14757
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/DotCode;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 14761
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 14761
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14763
    throw p1
.end method

.method public ReadDotCode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/DotCode;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14799
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14800
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 14803
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 14805
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14806
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 14809
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14811
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x140

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14812
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14813
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 14814
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 14815
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/DotCode;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 14819
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 14819
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14821
    throw p1
.end method

.method public ReadDutchPostal(Lcom/cipherlab/barcode/decoderparams/DutchPostal;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7181
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7185
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7186
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7187
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7188
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7189
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 7190
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/DutchPostal;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 7194
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 7194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7196
    throw p1
.end method

.method public ReadDutchPostal_Profile(Lcom/cipherlab/barcode/decoderparams/DutchPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9850
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9851
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9854
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 9856
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9857
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9860
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9862
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x94

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9863
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9864
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 9865
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 9866
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/DutchPostal;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 9870
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 9870
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9872
    throw p1
.end method

.method public ReadDutchPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/DutchPostal;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12725
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12726
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12729
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 12731
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12732
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12735
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12737
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf8

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12738
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12739
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 12740
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 12741
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/DutchPostal;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 12745
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 12745
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12747
    throw p1
.end method

.method public ReadEan13(Lcom/cipherlab/barcode/decoderparams/Ean13;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7226
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7229
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7230
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7231
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7232
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7233
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 7234
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Ean13;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 7238
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 7238
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7240
    throw p1
.end method

.method public ReadEan13_Profile(Lcom/cipherlab/barcode/decoderparams/Ean13;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9908
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9909
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9912
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 9914
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9915
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9918
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9920
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x96

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9921
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9922
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 9923
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 9924
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Ean13;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 9928
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 9928
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9930
    throw p1
.end method

.method public ReadEan13_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Ean13;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12783
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12784
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12787
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 12789
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12790
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12793
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12795
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfa

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12796
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12797
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 12798
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 12799
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/Ean13;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 12803
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 12803
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12805
    throw p1
.end method

.method public ReadEan8(Lcom/cipherlab/barcode/decoderparams/Ean8;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7273
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7274
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7275
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7276
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7277
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 7278
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Ean8;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 7282
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 7282
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7284
    throw p1
.end method

.method public ReadEan8_Profile(Lcom/cipherlab/barcode/decoderparams/Ean8;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9966
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9967
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9970
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 9972
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9973
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9976
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9978
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x98

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9979
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9980
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 9981
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 9982
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Ean8;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 9986
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 9986
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9988
    throw p1
.end method

.method public ReadEan8_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Ean8;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12841
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12842
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12845
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 12847
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12848
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12851
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12853
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfc

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12854
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12855
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 12856
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 12857
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/Ean8;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 12861
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 12861
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12863
    throw p1
.end method

.method public ReadFrenchPharmacode(Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8753
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8754
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8757
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8758
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8759
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8760
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8761
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 8762
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 8766
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 8766
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8768
    throw p1
.end method

.method public ReadFrenchPharmacode_Profile(Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11764
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11765
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11768
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 11770
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11771
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11774
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11776
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd6

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11777
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11778
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 11779
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 11780
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 11784
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11785
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 11784
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11785
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11786
    throw p1
.end method

.method public ReadFrenchPharmacode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14639
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14640
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 14643
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 14645
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14646
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 14649
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14651
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13a

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14652
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14653
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 14654
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 14655
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 14659
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 14659
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14661
    throw p1
.end method

.method public ReadGS1128(Lcom/cipherlab/barcode/decoderparams/GS1128;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7313
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7317
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7318
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7319
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7320
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7321
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 7322
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/GS1128;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 7326
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 7326
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7328
    throw p1
.end method

.method public ReadGS1128_Profile(Lcom/cipherlab/barcode/decoderparams/GS1128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10024
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10025
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10028
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 10030
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10031
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10034
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10036
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9a

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10037
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10038
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 10039
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 10040
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/GS1128;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 10044
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10045
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 10044
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10045
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10046
    throw p1
.end method

.method public ReadGS1128_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1128;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12899
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12900
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12903
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 12905
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12906
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12909
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12911
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfe

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12912
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12913
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 12914
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 12915
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/GS1128;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 12919
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 12919
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12921
    throw p1
.end method

.method public ReadGS1DataBar14(Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7358
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7361
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7362
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7363
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7364
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7365
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 7366
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 7370
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 7370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7372
    throw p1
.end method

.method public ReadGS1DataBar14_Profile(Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10082
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10083
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10086
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 10088
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10089
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10092
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10094
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9c

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10095
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10096
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 10097
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 10098
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 10102
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 10102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10104
    throw p1
.end method

.method public ReadGS1DataBar14_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12957
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12958
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12961
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 12963
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12964
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12967
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12969
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x100

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12970
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12971
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 12972
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 12973
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 12977
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12978
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 12977
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12978
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12979
    throw p1
.end method

.method public ReadGS1DataBarExpanded(Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7402
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7405
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7406
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7407
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7408
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7409
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 7410
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 7414
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 7414
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7416
    throw p1
.end method

.method public ReadGS1DataBarExpanded_Profile(Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10144
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 10146
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10147
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10150
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10152
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9e

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10153
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10154
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 10155
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 10156
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 10160
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 10160
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10162
    throw p1
.end method

.method public ReadGS1DataBarExpanded_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13015
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13016
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13019
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 13021
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13022
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13025
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13027
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x102

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13028
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13029
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 13030
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 13031
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 13035
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 13035
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13037
    throw p1
.end method

.method public ReadGS1DataBarLimited(Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7445
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7449
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7450
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7451
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7452
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7453
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 7454
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 7458
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 7458
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7460
    throw p1
.end method

.method public ReadGS1DataBarLimited_Profile(Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10202
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 10204
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10205
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10208
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10210
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa0

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10211
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10212
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 10213
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 10214
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 10218
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 10218
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10220
    throw p1
.end method

.method public ReadGS1DataBarLimited_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13073
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13074
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13077
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 13079
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13080
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13083
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13085
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x104

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13086
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13087
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 13088
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 13089
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 13093
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 13093
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13095
    throw p1
.end method

.method public ReadHanxin(Lcom/cipherlab/barcode/decoderparams/Hanxin;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8709
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8710
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8713
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8714
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8715
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8716
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8717
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 8718
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Hanxin;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 8722
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8723
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 8722
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8723
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8724
    throw p1
.end method

.method public ReadHanxin_Profile(Lcom/cipherlab/barcode/decoderparams/Hanxin;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11706
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11707
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11710
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 11712
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11713
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11716
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11718
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd4

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11719
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11720
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 11721
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 11722
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Hanxin;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 11726
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11727
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 11726
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11727
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11728
    throw p1
.end method

.method public ReadHanxin_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Hanxin;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14581
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14582
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 14585
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 14587
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14588
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 14591
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14593
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x138

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14594
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14595
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 14596
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 14597
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/Hanxin;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 14601
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 14601
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14603
    throw p1
.end method

.method public ReadISBT128(Lcom/cipherlab/barcode/decoderparams/ISBT128;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7577
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7578
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7581
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7582
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7583
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7584
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7585
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 7586
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/ISBT128;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 7590
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 7590
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7592
    throw p1
.end method

.method public ReadISBT128_Profile(Lcom/cipherlab/barcode/decoderparams/ISBT128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10376
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 10378
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10379
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10382
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10384
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa6

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10385
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10386
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 10387
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 10388
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/ISBT128;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 10392
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 10392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10394
    throw p1
.end method

.method public ReadISBT128_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/ISBT128;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13247
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13248
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13251
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 13253
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13254
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13257
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13259
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10a

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13260
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13261
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 13262
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 13263
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/ISBT128;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 13267
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 13267
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13269
    throw p1
.end method

.method public ReadIndustrial2Of5(Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7489
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7490
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7493
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7494
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7495
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7496
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7497
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 7498
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 7502
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 7502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7504
    throw p1
.end method

.method public ReadIndustrial2Of5_Profile(Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10260
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 10262
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10263
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10266
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10268
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa2

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10269
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10270
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 10271
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 10272
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 10276
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 10276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10278
    throw p1
.end method

.method public ReadIndustrial2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13135
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 13137
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13138
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13141
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13143
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x106

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13144
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13145
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 13146
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 13147
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 13151
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 13151
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13153
    throw p1
.end method

.method public ReadInterleaved2Of5(Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7533
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7534
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7537
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7538
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7539
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7540
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7541
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 7542
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 7546
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7547
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 7546
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7547
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7548
    throw p1
.end method

.method public ReadInterleaved2Of5_Profile(Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10318
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 10320
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10321
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10324
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10326
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa4

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10327
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10328
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 10329
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 10330
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 10334
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 10334
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10336
    throw p1
.end method

.method public ReadInterleaved2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13189
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13193
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 13195
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13196
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13199
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13201
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x108

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13202
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13203
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 13204
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 13205
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 13209
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 13209
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13211
    throw p1
.end method

.method public ReadJapanPostal(Lcom/cipherlab/barcode/decoderparams/JapanPostal;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7622
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7625
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7626
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7627
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7628
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7629
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 7630
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/JapanPostal;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 7634
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7635
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 7634
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7635
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7636
    throw p1
.end method

.method public ReadJapanPostal_Profile(Lcom/cipherlab/barcode/decoderparams/JapanPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10431
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10434
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 10436
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10437
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10440
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10442
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa8

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10443
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10444
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 10445
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 10446
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/JapanPostal;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 10450
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 10450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10452
    throw p1
.end method

.method public ReadJapanPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/JapanPostal;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13309
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 13311
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13312
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13315
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13317
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10c

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13318
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13319
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 13320
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 13321
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/JapanPostal;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 13325
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 13325
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13327
    throw p1
.end method

.method public ReadKorean3Of5(Lcom/cipherlab/barcode/decoderparams/Korean3Of5;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7665
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7666
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7669
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7670
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7671
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7672
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7673
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 7674
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Korean3Of5;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 7678
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 7678
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7680
    throw p1
.end method

.method public ReadKorean3Of5_Profile(Lcom/cipherlab/barcode/decoderparams/Korean3Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10489
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10492
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 10494
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10495
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10498
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10500
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xaa

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10501
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10502
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 10503
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 10504
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Korean3Of5;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 10508
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 10508
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10510
    throw p1
.end method

.method public ReadKorean3Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Korean3Of5;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13364
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13367
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 13369
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13370
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13373
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13375
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10e

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13376
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13377
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 13378
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 13379
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/Korean3Of5;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 13383
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 13383
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13385
    throw p1
.end method

.method public ReadLaetus(Lcom/cipherlab/barcode/decoderparams/Laetus;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8665
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8666
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8669
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8670
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x68

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8671
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8672
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8673
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 8674
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Laetus;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 8678
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 8678
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8680
    throw p1
.end method

.method public ReadLaetus_Profile(Lcom/cipherlab/barcode/decoderparams/Laetus;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11648
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11649
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11652
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 11654
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11655
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11658
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11660
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd2

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11661
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11662
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 11663
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 11664
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Laetus;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 11668
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 11668
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11670
    throw p1
.end method

.method public ReadLaetus_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Laetus;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14523
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14524
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 14527
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 14529
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14530
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 14533
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14535
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x136

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14536
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14537
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 14538
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 14539
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/Laetus;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 14543
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 14543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14545
    throw p1
.end method

.method public ReadMRZ(Lcom/cipherlab/barcode/decoderparams/MRZ;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8797
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8798
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8801
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8802
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8803
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8804
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8805
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 8806
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/MRZ;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 8810
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 8810
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8812
    throw p1
.end method

.method public ReadMRZ_Profile(Lcom/cipherlab/barcode/decoderparams/MRZ;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11822
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11823
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11826
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 11828
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11829
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11832
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11834
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd8

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11835
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11836
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 11837
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 11838
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/MRZ;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 11842
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 11842
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11844
    throw p1
.end method

.method public ReadMRZ_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MRZ;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14697
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14698
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 14701
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 14703
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14704
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 14707
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14709
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13c

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14710
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14711
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 14712
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 14713
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/MRZ;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 14717
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14718
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 14717
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14718
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14719
    throw p1
.end method

.method public ReadMatrix2Of5(Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7709
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7710
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7713
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7714
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7715
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7716
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7717
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 7718
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 7722
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7723
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 7722
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7723
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7724
    throw p1
.end method

.method public ReadMatrix2Of5_Profile(Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10547
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10550
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 10552
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10553
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10556
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10558
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xac

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10559
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10560
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 10561
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 10562
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 10566
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 10566
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10568
    throw p1
.end method

.method public ReadMatrix2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13422
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13425
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 13427
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13428
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13431
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13433
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x110

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13434
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13435
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 13436
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 13437
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 13441
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 13441
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13443
    throw p1
.end method

.method public ReadMaxiCode(Lcom/cipherlab/barcode/decoderparams/MaxiCode;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7753
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7754
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7757
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7758
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7759
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7760
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7761
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 7762
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/MaxiCode;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 7766
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 7766
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7768
    throw p1
.end method

.method public ReadMaxiCode_Profile(Lcom/cipherlab/barcode/decoderparams/MaxiCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10604
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10605
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10608
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 10610
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10611
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10614
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10616
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xae

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10617
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10618
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 10619
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 10620
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/MaxiCode;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 10624
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 10624
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10626
    throw p1
.end method

.method public ReadMaxiCode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MaxiCode;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13479
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13483
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 13485
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13486
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13489
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13491
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x112

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13492
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13493
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 13494
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 13495
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/MaxiCode;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 13499
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 13499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13501
    throw p1
.end method

.method public ReadMicroPDF417(Lcom/cipherlab/barcode/decoderparams/MicroPDF417;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7797
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7798
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7801
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7802
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7803
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7804
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7805
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 7806
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/MicroPDF417;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 7810
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 7810
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7811
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7812
    throw p1
.end method

.method public ReadMicroPDF417_Profile(Lcom/cipherlab/barcode/decoderparams/MicroPDF417;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10662
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10663
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10666
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 10668
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10669
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10672
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10674
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb0

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10675
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10676
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 10677
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 10678
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/MicroPDF417;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 10682
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 10682
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10684
    throw p1
.end method

.method public ReadMicroPDF417_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MicroPDF417;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13537
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13538
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13541
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 13543
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13544
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13547
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13549
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x114

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13550
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13551
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 13552
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 13553
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/MicroPDF417;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 13557
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 13557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13559
    throw p1
.end method

.method public ReadMicroQR(Lcom/cipherlab/barcode/decoderparams/MicroQR;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7841
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7842
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7845
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7846
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7847
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7848
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7849
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 7850
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/MicroQR;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 7854
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 7854
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7856
    throw p1
.end method

.method public ReadMicroQR_Profile(Lcom/cipherlab/barcode/decoderparams/MicroQR;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10720
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10721
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10724
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 10726
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10727
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10730
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10732
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb2

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10733
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10734
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 10735
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 10736
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/MicroQR;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 10740
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 10740
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10742
    throw p1
.end method

.method public ReadMicroQR_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MicroQR;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13596
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13599
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 13601
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13602
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13605
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13607
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x116

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13608
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13609
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 13610
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 13611
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/MicroQR;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 13615
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13616
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 13615
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13616
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13617
    throw p1
.end method

.method public ReadMsi(Lcom/cipherlab/barcode/decoderparams/Msi;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7885
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7886
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7889
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7890
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7891
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7892
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7893
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 7894
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Msi;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 7898
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7899
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 7898
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7899
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7900
    throw p1
.end method

.method public ReadMsi_Profile(Lcom/cipherlab/barcode/decoderparams/Msi;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10778
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10779
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10782
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 10784
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10785
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10788
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10790
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb4

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10791
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10792
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 10793
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 10794
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Msi;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 10798
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 10798
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10800
    throw p1
.end method

.method public ReadMsi_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Msi;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13653
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13654
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13657
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 13659
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13660
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13663
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13665
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x118

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13666
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13667
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 13668
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 13669
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/Msi;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 13673
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 13673
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13675
    throw p1
.end method

.method public ReadNotificationSettings(Lcom/cipherlab/barcode/decoderparams/NotificationParams;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6484
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6485
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 6488
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6489
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6490
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6491
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6492
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_24

    .line 6493
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/NotificationParams;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2b

    .line 6497
    :cond_24
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2b
    move-exception p1

    .line 6497
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6499
    throw p1
.end method

.method public ReadNotificationSettings_Profile(Lcom/cipherlab/barcode/decoderparams/NotificationParams;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9038
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9039
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9042
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 9044
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9045
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9048
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9050
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x78

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9051
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9052
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 9053
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 9054
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/NotificationParams;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 9058
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 9058
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9060
    throw p1
.end method

.method public ReadNotificationSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/NotificationParams;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11913
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11914
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11917
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 11919
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11920
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11923
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11925
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdc

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11926
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11927
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 11928
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 11929
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/NotificationParams;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 11933
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11934
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 11933
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11934
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11935
    throw p1
.end method

.method public ReadOutputSettings(Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6560
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6561
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 6564
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6565
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6566
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6567
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6568
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_24

    .line 6569
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2b

    .line 6573
    :cond_24
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2b
    move-exception p1

    .line 6573
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6575
    throw p1
.end method

.method public ReadOutputSettings_Profile(Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9096
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9097
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9100
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 9102
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9103
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9106
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9108
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7a

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9109
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9110
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 9111
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 9112
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 9116
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 9116
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9118
    throw p1
.end method

.method public ReadOutputSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11971
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11972
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11975
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 11977
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11978
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11981
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11983
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xde

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11984
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11985
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 11986
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 11987
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 11991
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 11991
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11993
    throw p1
.end method

.method public ReadPDF417(Lcom/cipherlab/barcode/decoderparams/PDF417;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7929
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7930
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7933
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7934
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7935
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7936
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7937
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 7938
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/PDF417;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 7942
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 7942
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7944
    throw p1
.end method

.method public ReadPDF417_Profile(Lcom/cipherlab/barcode/decoderparams/PDF417;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10836
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10837
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10840
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 10842
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10843
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10846
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10848
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb6

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10849
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10850
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 10851
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 10852
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/PDF417;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 10856
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 10856
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10858
    throw p1
.end method

.method public ReadPDF417_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/PDF417;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13711
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13712
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13715
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 13717
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13718
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13721
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13723
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11a

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13724
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13725
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 13726
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 13727
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/PDF417;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 13731
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 13731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13733
    throw p1
.end method

.method public ReadPlessey(Lcom/cipherlab/barcode/decoderparams/Plessey;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8431
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8434
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8435
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8436
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8437
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8438
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 8439
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Plessey;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 8443
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 8443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8445
    throw p1
.end method

.method public ReadPlessey_Profile(Lcom/cipherlab/barcode/decoderparams/Plessey;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11474
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11475
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11478
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 11480
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11481
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11484
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11486
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcc

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11487
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11488
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 11489
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 11490
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Plessey;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 11494
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 11494
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11496
    throw p1
.end method

.method public ReadPlessey_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Plessey;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14349
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 14353
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 14355
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14356
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 14359
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14361
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x130

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14362
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14363
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 14364
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 14365
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/Plessey;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 14369
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 14369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14371
    throw p1
.end method

.method public ReadQRCode(Lcom/cipherlab/barcode/decoderparams/QRCode;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7973
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7974
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7977
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7978
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7979
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7980
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7981
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 7982
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/QRCode;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 7986
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 7986
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7988
    throw p1
.end method

.method public ReadQRCode_Profile(Lcom/cipherlab/barcode/decoderparams/QRCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10894
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10895
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10898
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 10900
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10901
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10904
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10906
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb8

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10907
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10908
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 10909
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 10910
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/QRCode;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 10914
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 10914
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10916
    throw p1
.end method

.method public ReadQRCode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/QRCode;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13769
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13770
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13773
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 13775
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13776
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13779
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13781
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11c

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13782
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13783
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 13784
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 13785
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/QRCode;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 13789
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13790
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 13789
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13790
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13791
    throw p1
.end method

.method public ReadTelepen(Lcom/cipherlab/barcode/decoderparams/Telepen;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8474
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8475
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8478
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8479
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8480
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8481
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8482
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 8483
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Telepen;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 8487
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 8487
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8489
    throw p1
.end method

.method public ReadTelepen_Profile(Lcom/cipherlab/barcode/decoderparams/Telepen;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11532
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11533
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11536
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 11538
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11539
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11542
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11544
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xce

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11545
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11546
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 11547
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 11548
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/Telepen;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 11552
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 11552
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11554
    throw p1
.end method

.method public ReadTelepen_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Telepen;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14408
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 14411
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 14413
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14414
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 14417
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14419
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x132

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14420
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14421
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 14422
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 14423
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/Telepen;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 14427
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 14427
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14429
    throw p1
.end method

.method public ReadTriopticCode39(Lcom/cipherlab/barcode/decoderparams/TriopticCode39;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8017
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8018
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8021
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8022
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8023
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8024
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8025
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 8026
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/TriopticCode39;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 8030
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8031
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 8030
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8031
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8032
    throw p1
.end method

.method public ReadTriopticCode39_Profile(Lcom/cipherlab/barcode/decoderparams/TriopticCode39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10952
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10956
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 10958
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10959
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10962
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10964
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xba

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10965
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10966
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 10967
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 10968
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/TriopticCode39;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 10972
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 10972
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10974
    throw p1
.end method

.method public ReadTriopticCode39_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/TriopticCode39;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13828
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13831
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 13833
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13834
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13837
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13839
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11e

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13840
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13841
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 13842
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 13843
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/TriopticCode39;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 13847
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 13847
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13849
    throw p1
.end method

.method public ReadUKPostal(Lcom/cipherlab/barcode/decoderparams/UKPostal;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8109
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8110
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8111
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8112
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8113
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 8114
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/UKPostal;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 8118
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 8118
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8120
    throw p1
.end method

.method public ReadUKPostal_Profile(Lcom/cipherlab/barcode/decoderparams/UKPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11068
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11069
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11072
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 11074
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11075
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11078
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11080
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbe

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11081
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11082
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 11083
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 11084
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/UKPostal;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 11088
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 11088
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11090
    throw p1
.end method

.method public ReadUKPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UKPostal;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13943
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13944
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13947
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 13949
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13950
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13953
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13955
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x122

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13956
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13957
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 13958
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 13959
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/UKPostal;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 13963
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 13963
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13965
    throw p1
.end method

.method public ReadUPUFICSPostal(Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8285
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8286
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x55

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8287
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8288
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8289
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 8290
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 8294
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 8294
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8296
    throw p1
.end method

.method public ReadUPUFICSPostal_Profile(Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11304
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 11306
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11307
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11310
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11312
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc6

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11313
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11314
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 11315
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 11316
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 11320
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 11320
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11322
    throw p1
.end method

.method public ReadUPUFICSPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14175
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 14179
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 14181
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14182
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 14185
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14187
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12a

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14188
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14189
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 14190
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 14191
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 14195
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 14195
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14197
    throw p1
.end method

.method public ReadUSPSPostal(Lcom/cipherlab/barcode/decoderparams/USPSPostal;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8369
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8370
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8373
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8374
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x59

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8375
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8376
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8377
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 8378
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/USPSPostal;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 8382
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 8382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8384
    throw p1
.end method

.method public ReadUSPSPostal_Profile(Lcom/cipherlab/barcode/decoderparams/USPSPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11416
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11420
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 11422
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11423
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11426
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11428
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xca

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11429
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11430
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 11431
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 11432
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/USPSPostal;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 11436
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 11436
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11438
    throw p1
.end method

.method public ReadUSPSPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/USPSPostal;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14292
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 14295
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 14297
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14298
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 14301
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14303
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12e

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14304
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14305
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 14306
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 14307
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/USPSPostal;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 14311
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 14311
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14313
    throw p1
.end method

.method public ReadUSPostal(Lcom/cipherlab/barcode/decoderparams/USPostal;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8329
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8330
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x57

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8331
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8332
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8333
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 8334
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/USPostal;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 8338
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 8338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8340
    throw p1
.end method

.method public ReadUSPostal_Profile(Lcom/cipherlab/barcode/decoderparams/USPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11358
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11362
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 11364
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11365
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11368
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11370
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc8

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11371
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11372
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 11373
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 11374
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/USPostal;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 11378
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 11378
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11380
    throw p1
.end method

.method public ReadUSPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/USPostal;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 14237
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 14239
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14240
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 14243
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14245
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12c

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14246
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14247
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 14248
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 14249
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/USPostal;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 14253
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 14253
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14255
    throw p1
.end method

.method public ReadUccCoupon(Lcom/cipherlab/barcode/decoderparams/UccCoupon;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8061
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8062
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8065
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8066
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8067
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8068
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8069
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 8070
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/UccCoupon;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 8074
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8075
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 8074
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8075
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8076
    throw p1
.end method

.method public ReadUccCoupon_Profile(Lcom/cipherlab/barcode/decoderparams/UccCoupon;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11010
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11011
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11014
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 11016
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11017
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11020
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11022
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbc

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11023
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11024
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 11025
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 11026
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/UccCoupon;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 11030
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11031
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 11030
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11031
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11032
    throw p1
.end method

.method public ReadUccCoupon_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UccCoupon;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13885
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13886
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13889
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 13891
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13892
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13895
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13897
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x120

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13898
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13899
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 13900
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 13901
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/UccCoupon;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 13905
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 13905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13907
    throw p1
.end method

.method public ReadUpcA(Lcom/cipherlab/barcode/decoderparams/UpcA;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8153
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8154
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8155
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8156
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8157
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 8158
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/UpcA;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 8162
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 8162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8164
    throw p1
.end method

.method public ReadUpcA_Profile(Lcom/cipherlab/barcode/decoderparams/UpcA;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11130
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 11132
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11133
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11136
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11138
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc0

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11139
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11140
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 11141
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 11142
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/UpcA;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 11146
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 11146
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11148
    throw p1
.end method

.method public ReadUpcA_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UpcA;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14002
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 14005
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 14007
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14008
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 14011
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14013
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x124

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14014
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14015
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 14016
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 14017
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/UpcA;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 14021
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14022
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 14021
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14022
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14023
    throw p1
.end method

.method public ReadUpcE(Lcom/cipherlab/barcode/decoderparams/UpcE;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8194
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8197
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8198
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8199
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8200
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8201
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 8202
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/UpcE;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 8206
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 8206
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8208
    throw p1
.end method

.method public ReadUpcE1(Lcom/cipherlab/barcode/decoderparams/UpcE1;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8241
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8242
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x53

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8243
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8244
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8245
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 8246
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/UpcE1;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 8250
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 8250
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8252
    throw p1
.end method

.method public ReadUpcE1_Profile(Lcom/cipherlab/barcode/decoderparams/UpcE1;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11246
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 11248
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11249
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11252
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11254
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc4

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11255
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11256
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 11257
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 11258
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/UpcE1;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 11262
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 11262
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11264
    throw p1
.end method

.method public ReadUpcE1_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UpcE1;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 14121
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 14123
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14124
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 14127
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14129
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x128

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14130
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14131
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 14132
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 14133
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/UpcE1;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 14137
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 14137
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14139
    throw p1
.end method

.method public ReadUpcE_Profile(Lcom/cipherlab/barcode/decoderparams/UpcE;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11188
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 11190
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11191
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11194
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11196
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc2

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11197
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11198
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 11199
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 11200
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/UpcE;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 11204
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 11204
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11206
    throw p1
.end method

.method public ReadUpcE_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UpcE;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14059
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14060
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 14063
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 14065
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14066
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 14069
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14071
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x126

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14072
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14073
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 14074
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 14075
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/UpcE;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 14079
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 14079
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14081
    throw p1
.end method

.method public ReadUserPreferenceSettings(Lcom/cipherlab/barcode/decoderparams/UserPreference;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6681
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 6684
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6685
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6686
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6687
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6688
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    .line 6689
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/UserPreference;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2c

    .line 6693
    :cond_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2c
    move-exception p1

    .line 6693
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6695
    throw p1
.end method

.method public ReadUserPreferenceSettings_Profile(Lcom/cipherlab/barcode/decoderparams/UserPreference;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9158
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    const/4 v3, 0x1

    .line 9160
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9161
    invoke-virtual {p2, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9164
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9166
    :goto_1b
    iget-object p2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7c

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9167
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9168
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 9169
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 9170
    invoke-virtual {p1, v1}, Lcom/cipherlab/barcode/decoderparams/UserPreference;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 9174
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p2

    :catchall_39
    move-exception p1

    .line 9174
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9176
    throw p1
.end method

.method public ReadUserPreferenceSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UserPreference;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12029
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12030
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12033
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 12035
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12036
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12039
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12041
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe0

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12042
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12043
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 12044
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    .line 12045
    invoke-virtual {p2, v1}, Lcom/cipherlab/barcode/decoderparams/UserPreference;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_39

    .line 12049
    :cond_32
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_39
    move-exception p1

    .line 12049
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12051
    throw p1
.end method

.method public RemoveProfile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8882
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8883
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8886
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 8888
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8889
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 8892
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8894
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x72

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8895
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8896
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 8899
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 8899
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8901
    throw p1
.end method

.method public ResetToDefault()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6700
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6701
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 6704
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6705
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6706
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6707
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_23

    .line 6710
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6711
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_23
    move-exception v2

    .line 6710
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6711
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6712
    throw v2
.end method

.method public ResetToDefault_Profile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8983
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8984
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8987
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 8989
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8990
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 8993
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8995
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x76

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8996
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8997
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 9000
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 9000
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9002
    throw p1
.end method

.method public ResetToPorfileDefault()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8560
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8561
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8564
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8565
    iget-object v2, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8566
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8567
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_23

    .line 8570
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_23
    move-exception v2

    .line 8570
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8572
    throw v2
.end method

.method public SetReaderActive(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6504
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6505
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 6507
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 6508
    :goto_13
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6509
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6510
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_26

    .line 6513
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_26
    move-exception p1

    .line 6513
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6515
    throw p1
.end method

.method public SetReaderActive_Profile(ZLcom/cipherlab/barcode/decoderparams/ReaderProfile;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8937
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8938
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8940
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    .line 8941
    :goto_14
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_20

    .line 8943
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8944
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_23

    .line 8947
    :cond_20
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8949
    :goto_23
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x74

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8950
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_34

    .line 8953
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8954
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_34
    move-exception p1

    .line 8953
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8954
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8955
    throw p1
.end method

.method public SetReaderCallback(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8495
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8497
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 8498
    :goto_13
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8499
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5f

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8500
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_27

    .line 8503
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_27
    move-exception p1

    .line 8503
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8505
    throw p1
.end method

.method public SetSoftwareTriggerBool(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6580
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6581
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 6583
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 6584
    :goto_13
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6585
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6586
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_26

    .line 6589
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_26
    move-exception p1

    .line 6589
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6591
    throw p1
.end method

.method public UpdateProfile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8858
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8859
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8862
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 8864
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8865
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 8868
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8870
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x71

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8871
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8872
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 8875
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 8875
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8877
    throw p1
.end method

.method public WriteAustralianPostal(Lcom/cipherlab/barcode/decoderparams/AustralianPostal;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6717
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6718
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 6721
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 6723
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6724
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 6727
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6729
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6730
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6731
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 6734
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 6734
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6736
    throw p1
.end method

.method public WriteAustralianPostal_Profile(Lcom/cipherlab/barcode/decoderparams/AustralianPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9243
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 9245
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9246
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9249
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 9252
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9253
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 9256
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9258
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x7f

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9259
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9260
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 9263
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 9263
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9265
    throw p1
.end method

.method public WriteAustralianPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/AustralianPostal;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12118
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 12120
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12121
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12124
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 12127
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12128
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 12131
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12133
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xe3

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12134
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12135
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 12138
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 12138
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12140
    throw p1
.end method

.method public WriteAztec(Lcom/cipherlab/barcode/decoderparams/Aztec;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6761
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6762
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 6765
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 6767
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6768
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/Aztec;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 6771
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6773
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6774
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6775
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 6778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 6778
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6780
    throw p1
.end method

.method public WriteAztec_Profile(Lcom/cipherlab/barcode/decoderparams/Aztec;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9301
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 9303
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9304
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Aztec;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9307
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 9310
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9311
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 9314
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9316
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x81

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9317
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9318
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 9321
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 9321
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9323
    throw p1
.end method

.method public WriteAztec_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Aztec;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12176
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 12178
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12179
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12182
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 12185
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12186
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Aztec;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 12189
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12191
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xe5

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12192
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12193
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 12196
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 12196
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12198
    throw p1
.end method

.method public WriteChinese2Of5(Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6805
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6806
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 6809
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 6811
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6812
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 6815
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6817
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6818
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6819
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 6822
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 6822
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6824
    throw p1
.end method

.method public WriteChinese2Of5_Profile(Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9356
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9359
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 9361
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9362
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9365
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 9368
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9369
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 9372
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9374
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x83

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9375
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9376
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 9379
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 9379
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9381
    throw p1
.end method

.method public WriteChinese2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12234
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 12236
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12237
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12240
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 12243
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12244
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 12247
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12249
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xe7

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12250
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12251
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 12254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 12254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12256
    throw p1
.end method

.method public WriteCip39(Lcom/cipherlab/barcode/decoderparams/Cip39;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8601
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 8603
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8604
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/Cip39;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 8607
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8609
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x65

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8610
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8611
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 8614
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 8614
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8616
    throw p1
.end method

.method public WriteCip39_Profile(Lcom/cipherlab/barcode/decoderparams/Cip39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11559
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11560
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11563
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 11565
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11566
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Cip39;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11569
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 11572
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11573
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 11576
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11578
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xcf

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11579
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11580
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 11583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 11583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11585
    throw p1
.end method

.method public WriteCip39_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Cip39;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14434
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 14438
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 14440
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14441
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 14444
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 14447
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14448
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Cip39;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 14451
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14453
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x133

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14454
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14455
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 14458
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 14458
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14460
    throw p1
.end method

.method public WriteCodabar(Lcom/cipherlab/barcode/decoderparams/Codabar;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6849
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6850
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 6853
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 6855
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6856
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/Codabar;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 6859
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6861
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6862
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6863
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 6866
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6867
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 6866
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6867
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6868
    throw p1
.end method

.method public WriteCodabar_Profile(Lcom/cipherlab/barcode/decoderparams/Codabar;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9413
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9417
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 9419
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9420
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Codabar;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9423
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 9426
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9427
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 9430
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9432
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x85

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9433
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9434
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 9437
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 9437
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9439
    throw p1
.end method

.method public WriteCodabar_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Codabar;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12289
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12292
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 12294
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12295
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12298
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 12301
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12302
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Codabar;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 12305
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12307
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xe9

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12308
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12309
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 12312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 12312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12314
    throw p1
.end method

.method public WriteCode11(Lcom/cipherlab/barcode/decoderparams/Code11;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6893
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6894
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 6897
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 6899
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6900
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/Code11;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 6903
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6905
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6906
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6907
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 6910
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 6910
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6912
    throw p1
.end method

.method public WriteCode11_Profile(Lcom/cipherlab/barcode/decoderparams/Code11;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9471
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9472
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9475
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 9477
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9478
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Code11;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9481
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 9484
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9485
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 9488
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9490
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x87

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9491
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9492
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 9495
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 9495
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9497
    throw p1
.end method

.method public WriteCode11_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code11;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12346
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12350
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 12352
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12353
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12356
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 12359
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12360
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Code11;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 12363
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12365
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xeb

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12366
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12367
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 12370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 12370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12372
    throw p1
.end method

.method public WriteCode128(Lcom/cipherlab/barcode/decoderparams/Code128;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6937
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6938
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 6941
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 6943
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6944
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/Code128;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 6947
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6949
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6950
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6951
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 6954
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6955
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 6954
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6955
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6956
    throw p1
.end method

.method public WriteCode128_Profile(Lcom/cipherlab/barcode/decoderparams/Code128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9529
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9530
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9533
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 9535
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9536
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Code128;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9539
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 9542
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9543
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 9546
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9548
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x89

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9549
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9550
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 9553
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 9553
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9555
    throw p1
.end method

.method public WriteCode128_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code128;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12404
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12408
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 12410
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12411
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12414
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 12417
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12418
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Code128;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 12421
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12423
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xed

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12424
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12425
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 12428
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 12428
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12430
    throw p1
.end method

.method public WriteCode39(Lcom/cipherlab/barcode/decoderparams/Code39;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6981
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6982
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 6985
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 6987
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6988
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/Code39;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 6991
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6993
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6994
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6995
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 6998
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 6998
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7000
    throw p1
.end method

.method public WriteCode39_Profile(Lcom/cipherlab/barcode/decoderparams/Code39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9587
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9588
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9591
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 9593
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9594
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Code39;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9597
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 9600
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9601
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 9604
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9606
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x8b

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9607
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9608
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 9611
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9612
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 9611
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9612
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9613
    throw p1
.end method

.method public WriteCode39_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code39;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12463
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12466
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 12468
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12469
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12472
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 12475
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12476
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Code39;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 12479
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12481
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xef

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12482
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12483
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 12486
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 12486
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12488
    throw p1
.end method

.method public WriteCode93(Lcom/cipherlab/barcode/decoderparams/Code93;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7025
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7026
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7029
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 7031
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7032
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/Code93;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 7035
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7037
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7038
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7039
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 7042
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 7042
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7044
    throw p1
.end method

.method public WriteCode93_Profile(Lcom/cipherlab/barcode/decoderparams/Code93;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9645
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9646
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9649
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 9651
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9652
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Code93;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9655
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 9658
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9659
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 9662
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9664
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x8d

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9665
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9666
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 9669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 9669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9671
    throw p1
.end method

.method public WriteCode93_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Code93;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12524
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 12526
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12527
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12530
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 12533
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12534
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Code93;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 12537
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12539
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xf1

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12540
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12541
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 12544
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 12544
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12546
    throw p1
.end method

.method public WriteComposite(Lcom/cipherlab/barcode/decoderparams/Composite;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7069
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7070
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7073
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 7075
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7076
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/Composite;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 7079
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7081
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7082
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7083
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 7086
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7087
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 7086
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7087
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7088
    throw p1
.end method

.method public WriteComposite_Profile(Lcom/cipherlab/barcode/decoderparams/Composite;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9703
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9707
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 9709
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9710
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Composite;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9713
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 9716
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9717
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 9720
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9722
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x8f

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9723
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9724
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 9727
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 9727
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9729
    throw p1
.end method

.method public WriteComposite_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Composite;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12578
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12579
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12582
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 12584
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12585
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12588
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 12591
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12592
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Composite;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 12595
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12597
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xf3

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12598
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12599
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 12602
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12603
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 12602
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12603
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12604
    throw p1
.end method

.method public WriteDataMatrix(Lcom/cipherlab/barcode/decoderparams/DataMatrix;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7117
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 7119
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7120
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 7123
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7125
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7126
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7127
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 7130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 7130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7132
    throw p1
.end method

.method public WriteDataMatrix_Profile(Lcom/cipherlab/barcode/decoderparams/DataMatrix;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9761
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9762
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9765
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 9767
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9768
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9771
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 9774
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9775
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 9778
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9780
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x91

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9781
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9782
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 9785
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 9785
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9787
    throw p1
.end method

.method public WriteDataMatrix_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/DataMatrix;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12637
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12640
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 12642
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12643
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12646
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 12649
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12650
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/DataMatrix;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 12653
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12655
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xf5

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12656
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12657
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 12660
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 12660
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12662
    throw p1
.end method

.method public WriteDecodersSettings(Lcom/cipherlab/barcode/decoder/Decoders;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6612
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6613
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 6616
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 6618
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6619
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoder/Decoders;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 6622
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6624
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6625
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6626
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 6629
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 6629
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6631
    throw p1
.end method

.method public WriteDecodersSettings_Profile(Lcom/cipherlab/barcode/decoder/Decoders;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9181
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9185
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 9187
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9188
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoder/Decoders;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9191
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 9194
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9195
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 9198
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9200
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x7d

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9201
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9202
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 9205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 9205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9207
    throw p1
.end method

.method public WriteDecodersSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoder/Decoders;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12056
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12057
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12060
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 12062
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12063
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12066
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 12069
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12070
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoder/Decoders;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 12073
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12075
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xe1

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12076
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12077
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 12080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 12080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12082
    throw p1
.end method

.method public WriteDotCode(Lcom/cipherlab/barcode/decoderparams/DotCode;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14724
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14725
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 14728
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 14730
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14731
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/DotCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 14734
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14736
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13d

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14737
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14738
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 14741
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14742
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 14741
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14742
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14743
    throw p1
.end method

.method public WriteDotCode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/DotCode;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14768
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14769
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 14772
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 14774
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14775
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 14778
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 14781
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14782
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/DotCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 14785
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14787
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x13f

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14788
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14789
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 14792
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 14792
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14794
    throw p1
.end method

.method public WriteDutchPostal(Lcom/cipherlab/barcode/decoderparams/DutchPostal;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7161
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 7163
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7164
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/DutchPostal;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 7167
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7169
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7170
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7171
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 7174
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 7174
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7176
    throw p1
.end method

.method public WriteDutchPostal_Profile(Lcom/cipherlab/barcode/decoderparams/DutchPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9819
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9820
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9823
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 9825
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9826
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/DutchPostal;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9829
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 9832
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9833
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 9836
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9838
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x93

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9839
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9840
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 9843
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 9843
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9845
    throw p1
.end method

.method public WriteDutchPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/DutchPostal;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12694
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12695
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12698
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 12700
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12701
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12704
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 12707
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12708
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/DutchPostal;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 12711
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12713
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xf7

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12714
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12715
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 12718
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 12718
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12720
    throw p1
.end method

.method public WriteEan13(Lcom/cipherlab/barcode/decoderparams/Ean13;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7201
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7205
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 7207
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7208
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/Ean13;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 7211
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7213
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7214
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7215
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 7218
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 7218
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7220
    throw p1
.end method

.method public WriteEan13_Profile(Lcom/cipherlab/barcode/decoderparams/Ean13;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9877
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9878
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9881
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 9883
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9884
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Ean13;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9887
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 9890
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9891
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 9894
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9896
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x95

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9897
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9898
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 9901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 9901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9903
    throw p1
.end method

.method public WriteEan13_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Ean13;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12752
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12753
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12756
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 12758
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12759
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12762
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 12765
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12766
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Ean13;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 12769
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12771
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xf9

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12772
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12773
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 12776
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 12776
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12778
    throw p1
.end method

.method public WriteEan8(Lcom/cipherlab/barcode/decoderparams/Ean8;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7249
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 7251
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7252
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/Ean8;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 7255
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7257
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7258
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7259
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 7262
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 7262
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7264
    throw p1
.end method

.method public WriteEan8_Profile(Lcom/cipherlab/barcode/decoderparams/Ean8;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9935
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9936
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9939
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 9941
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9942
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Ean8;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9945
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 9948
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9949
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 9952
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9954
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x97

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9955
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9956
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 9959
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 9959
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9961
    throw p1
.end method

.method public WriteEan8_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Ean8;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12810
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12811
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12814
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 12816
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12817
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12820
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 12823
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12824
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Ean8;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 12827
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12829
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xfb

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12830
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12831
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 12834
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 12834
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12836
    throw p1
.end method

.method public WriteFrenchPharmacode(Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8729
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8730
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8733
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 8735
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8736
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 8739
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8741
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6b

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8742
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8743
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 8746
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 8746
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8748
    throw p1
.end method

.method public WriteFrenchPharmacode_Profile(Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11733
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11734
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11737
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 11739
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11740
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11743
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 11746
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11747
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 11750
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11752
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xd5

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11753
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11754
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 11757
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 11757
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11759
    throw p1
.end method

.method public WriteFrenchPharmacode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14608
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14609
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 14612
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 14614
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14615
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 14618
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 14621
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14622
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 14625
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14627
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x139

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14628
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14629
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 14632
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 14632
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14634
    throw p1
.end method

.method public WriteGS1128(Lcom/cipherlab/barcode/decoderparams/GS1128;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7289
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7293
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 7295
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7296
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/GS1128;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 7299
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7301
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7302
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7303
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 7306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 7306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7308
    throw p1
.end method

.method public WriteGS1128_Profile(Lcom/cipherlab/barcode/decoderparams/GS1128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9993
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9994
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9997
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 9999
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10000
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/GS1128;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10003
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 10006
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10007
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 10010
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10012
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x99

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10013
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10014
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 10017
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 10017
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10019
    throw p1
.end method

.method public WriteGS1128_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1128;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12868
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12869
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12872
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 12874
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12875
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12878
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 12881
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12882
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/GS1128;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 12885
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12887
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xfd

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12888
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12889
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 12892
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 12892
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12894
    throw p1
.end method

.method public WriteGS1DataBar14(Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7337
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 7339
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7340
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 7343
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7345
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7346
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7347
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 7350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 7350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7352
    throw p1
.end method

.method public WriteGS1DataBar14_Profile(Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10051
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10052
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10055
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 10057
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10058
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10061
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 10064
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10065
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 10068
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10070
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x9b

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10071
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10072
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 10075
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10076
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 10075
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10076
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10077
    throw p1
.end method

.method public WriteGS1DataBar14_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12926
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12927
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12930
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 12932
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12933
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12936
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 12939
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12940
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 12943
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12945
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xff

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12946
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12947
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 12950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 12950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12952
    throw p1
.end method

.method public WriteGS1DataBarExpanded(Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7381
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 7383
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7384
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 7387
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7389
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7390
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7391
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 7394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 7394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7396
    throw p1
.end method

.method public WriteGS1DataBarExpanded_Profile(Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10109
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10113
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 10115
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10116
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10119
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 10122
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10123
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 10126
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10128
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x9d

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10129
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10130
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 10133
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 10133
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10135
    throw p1
.end method

.method public WriteGS1DataBarExpanded_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12984
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12985
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12988
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 12990
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12991
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12994
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 12997
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12998
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 13001
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13003
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x101

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13004
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13005
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 13008
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 13008
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13010
    throw p1
.end method

.method public WriteGS1DataBarLimited(Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7422
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7425
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 7427
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7428
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 7431
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7433
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7434
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7435
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 7438
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 7438
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7440
    throw p1
.end method

.method public WriteGS1DataBarLimited_Profile(Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10171
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 10173
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10174
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10177
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 10180
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10181
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 10184
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10186
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x9f

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10187
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10188
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 10191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 10191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10193
    throw p1
.end method

.method public WriteGS1DataBarLimited_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13042
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13043
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13046
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 13048
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13049
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13052
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 13055
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13056
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 13059
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13061
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x103

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13062
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13063
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 13066
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 13066
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13068
    throw p1
.end method

.method public WriteHanxin(Lcom/cipherlab/barcode/decoderparams/Hanxin;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8685
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8686
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8689
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 8691
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8692
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/Hanxin;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 8695
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8697
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x69

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8698
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8699
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 8702
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 8702
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8704
    throw p1
.end method

.method public WriteHanxin_Profile(Lcom/cipherlab/barcode/decoderparams/Hanxin;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11675
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11676
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11679
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 11681
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11682
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Hanxin;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11685
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 11688
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11689
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 11692
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11694
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xd3

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11695
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11696
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 11699
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 11699
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11701
    throw p1
.end method

.method public WriteHanxin_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Hanxin;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14550
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 14554
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 14556
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14557
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 14560
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 14563
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14564
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Hanxin;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 14567
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14569
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x137

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14570
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14571
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 14574
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14575
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 14574
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14575
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14576
    throw p1
.end method

.method public WriteISBT128(Lcom/cipherlab/barcode/decoderparams/ISBT128;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7553
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7557
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 7559
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7560
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ISBT128;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 7563
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7565
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7566
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7567
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 7570
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 7570
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7572
    throw p1
.end method

.method public WriteISBT128_Profile(Lcom/cipherlab/barcode/decoderparams/ISBT128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10341
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10342
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10345
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 10347
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10348
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ISBT128;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10351
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 10354
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10355
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 10358
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10360
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xa5

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10361
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10362
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 10365
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 10365
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10367
    throw p1
.end method

.method public WriteISBT128_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/ISBT128;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13220
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 13222
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13223
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13226
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 13229
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13230
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ISBT128;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 13233
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13235
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x109

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13236
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13237
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 13240
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 13240
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13242
    throw p1
.end method

.method public WriteIndustrial2Of5(Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7465
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7466
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7469
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 7471
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7472
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 7475
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7477
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7478
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7479
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 7482
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 7482
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7484
    throw p1
.end method

.method public WriteIndustrial2Of5_Profile(Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10226
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10229
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 10231
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10232
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10235
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 10238
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10239
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 10242
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10244
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xa1

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10245
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10246
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 10249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 10249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10251
    throw p1
.end method

.method public WriteIndustrial2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13104
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 13106
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13107
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13110
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 13113
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13114
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 13117
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13119
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x105

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13120
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13121
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 13124
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 13124
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13126
    throw p1
.end method

.method public WriteInterleaved2Of5(Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7509
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7510
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7513
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 7515
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7516
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 7519
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7521
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7522
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7523
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 7526
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 7526
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7528
    throw p1
.end method

.method public WriteInterleaved2Of5_Profile(Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10284
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10287
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 10289
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10290
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10293
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 10296
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10297
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 10300
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10302
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xa3

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10303
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10304
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 10307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 10307
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10309
    throw p1
.end method

.method public WriteInterleaved2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13162
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 13164
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13165
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13168
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 13171
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13172
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 13175
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13177
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x107

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13178
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13179
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 13182
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 13182
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13184
    throw p1
.end method

.method public WriteJapanPostal(Lcom/cipherlab/barcode/decoderparams/JapanPostal;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7601
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 7603
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7604
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/JapanPostal;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 7607
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7609
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7610
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7611
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 7614
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 7614
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7616
    throw p1
.end method

.method public WriteJapanPostal_Profile(Lcom/cipherlab/barcode/decoderparams/JapanPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10399
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10403
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 10405
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10406
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/JapanPostal;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10409
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 10412
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10413
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 10416
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10418
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xa7

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10419
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10420
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 10423
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 10423
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10425
    throw p1
.end method

.method public WriteJapanPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/JapanPostal;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13278
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 13280
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13281
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13284
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 13287
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13288
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/JapanPostal;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 13291
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13293
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x10b

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13294
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13295
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 13298
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 13298
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13300
    throw p1
.end method

.method public WriteKorean3Of5(Lcom/cipherlab/barcode/decoderparams/Korean3Of5;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7641
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7642
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7645
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 7647
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7648
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/Korean3Of5;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 7651
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7653
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7654
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7655
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 7658
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 7658
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7660
    throw p1
.end method

.method public WriteKorean3Of5_Profile(Lcom/cipherlab/barcode/decoderparams/Korean3Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10461
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 10463
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10464
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Korean3Of5;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10467
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 10470
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10471
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 10474
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10476
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xa9

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10477
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10478
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 10481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 10481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10483
    throw p1
.end method

.method public WriteKorean3Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Korean3Of5;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13336
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 13338
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13339
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13342
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 13345
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13346
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Korean3Of5;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 13349
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13351
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x10d

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13352
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13353
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 13356
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 13356
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13358
    throw p1
.end method

.method public WriteLaetus(Lcom/cipherlab/barcode/decoderparams/Laetus;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8641
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8642
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8645
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 8647
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8648
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/Laetus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 8651
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8653
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x67

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8654
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8655
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 8658
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 8658
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8660
    throw p1
.end method

.method public WriteLaetus_Profile(Lcom/cipherlab/barcode/decoderparams/Laetus;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11617
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11621
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 11623
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11624
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Laetus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11627
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 11630
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11631
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 11634
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11636
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xd1

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11637
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11638
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 11641
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 11641
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11643
    throw p1
.end method

.method public WriteLaetus_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Laetus;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14492
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 14496
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 14498
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14499
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 14502
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 14505
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14506
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Laetus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 14509
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14511
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x135

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14512
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14513
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 14516
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 14516
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14518
    throw p1
.end method

.method public WriteMRZ(Lcom/cipherlab/barcode/decoderparams/MRZ;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8773
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8774
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8777
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 8779
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8780
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/MRZ;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 8783
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8785
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6d

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8786
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8787
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 8790
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8791
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 8790
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8791
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8792
    throw p1
.end method

.method public WriteMRZ_Profile(Lcom/cipherlab/barcode/decoderparams/MRZ;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11791
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11792
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11795
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 11797
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11798
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/MRZ;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11801
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 11804
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11805
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 11808
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11810
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xd7

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11811
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11812
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 11815
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 11815
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11817
    throw p1
.end method

.method public WriteMRZ_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MRZ;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14666
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14667
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 14670
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 14672
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14673
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 14676
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 14679
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14680
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/MRZ;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 14683
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14685
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x13b

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14686
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14687
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 14690
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 14690
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14692
    throw p1
.end method

.method public WriteMatrix2Of5(Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7685
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7686
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7689
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 7691
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7692
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 7695
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7697
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7698
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7699
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 7702
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 7702
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7704
    throw p1
.end method

.method public WriteMatrix2Of5_Profile(Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10515
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10516
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10519
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 10521
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10522
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10525
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 10528
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10529
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 10532
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10534
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xab

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10535
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10536
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 10539
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 10539
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10541
    throw p1
.end method

.method public WriteMatrix2Of5_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13394
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 13396
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13397
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13400
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 13403
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13404
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 13407
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13409
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x10f

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13410
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13411
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 13414
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 13414
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13416
    throw p1
.end method

.method public WriteMaxiCode(Lcom/cipherlab/barcode/decoderparams/MaxiCode;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7729
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7730
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7733
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 7735
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7736
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/MaxiCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 7739
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7741
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7742
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7743
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 7746
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 7746
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7748
    throw p1
.end method

.method public WriteMaxiCode_Profile(Lcom/cipherlab/barcode/decoderparams/MaxiCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10573
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10574
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10577
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 10579
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10580
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/MaxiCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10583
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 10586
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10587
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 10590
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10592
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xad

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10593
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10594
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 10597
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10598
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 10597
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10598
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10599
    throw p1
.end method

.method public WriteMaxiCode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MaxiCode;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13448
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13452
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 13454
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13455
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13458
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 13461
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13462
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/MaxiCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 13465
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13467
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x111

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13468
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13469
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 13472
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 13472
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13474
    throw p1
.end method

.method public WriteMicroPDF417(Lcom/cipherlab/barcode/decoderparams/MicroPDF417;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7773
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7774
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7777
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 7779
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7780
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/MicroPDF417;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 7783
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7785
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7786
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7787
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 7790
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7791
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 7790
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7791
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7792
    throw p1
.end method

.method public WriteMicroPDF417_Profile(Lcom/cipherlab/barcode/decoderparams/MicroPDF417;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10631
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10632
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10635
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 10637
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10638
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/MicroPDF417;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10641
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 10644
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10645
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 10648
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10650
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xaf

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10651
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10652
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 10655
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 10655
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10657
    throw p1
.end method

.method public WriteMicroPDF417_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MicroPDF417;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13506
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13510
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 13512
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13513
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13516
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 13519
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13520
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/MicroPDF417;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 13523
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13525
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x113

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13526
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13527
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 13530
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 13530
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13532
    throw p1
.end method

.method public WriteMicroQR(Lcom/cipherlab/barcode/decoderparams/MicroQR;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7817
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7818
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7821
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 7823
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7824
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/MicroQR;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 7827
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7829
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7830
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7831
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 7834
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 7834
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7836
    throw p1
.end method

.method public WriteMicroQR_Profile(Lcom/cipherlab/barcode/decoderparams/MicroQR;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10689
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10690
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10693
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 10695
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10696
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/MicroQR;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10699
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 10702
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10703
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 10706
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10708
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xb1

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10709
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10710
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 10713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 10713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10715
    throw p1
.end method

.method public WriteMicroQR_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/MicroQR;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13565
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13568
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 13570
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13571
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13574
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 13577
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13578
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/MicroQR;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 13581
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13583
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x115

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13584
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13585
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 13588
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 13588
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13590
    throw p1
.end method

.method public WriteMsi(Lcom/cipherlab/barcode/decoderparams/Msi;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7861
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7862
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7865
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 7867
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7868
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/Msi;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 7871
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7873
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7874
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7875
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 7878
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7879
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 7878
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7879
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7880
    throw p1
.end method

.method public WriteMsi_Profile(Lcom/cipherlab/barcode/decoderparams/Msi;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10747
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10748
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10751
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 10753
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10754
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Msi;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10757
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 10760
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10761
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 10764
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10766
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xb3

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10767
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10768
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 10771
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 10771
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10773
    throw p1
.end method

.method public WriteMsi_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Msi;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13622
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13623
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13626
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 13628
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13629
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13632
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 13635
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13636
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Msi;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 13639
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13641
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x117

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13642
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13643
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 13646
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 13646
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13648
    throw p1
.end method

.method public WriteNotificationSettings(Lcom/cipherlab/barcode/decoderparams/NotificationParams;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6460
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6461
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 6464
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 6466
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6467
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/NotificationParams;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 6470
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6472
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6473
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6474
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_2e

    .line 6477
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_2e
    move-exception p1

    .line 6477
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6479
    throw p1
.end method

.method public WriteNotificationSettings_Profile(Lcom/cipherlab/barcode/decoderparams/NotificationParams;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9007
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9008
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9011
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 9013
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9014
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/NotificationParams;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9017
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 9020
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9021
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 9024
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9026
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x77

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9027
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9028
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 9031
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9032
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 9031
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9032
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9033
    throw p1
.end method

.method public WriteNotificationSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/NotificationParams;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11882
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11883
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11886
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 11888
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11889
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11892
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 11895
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11896
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/NotificationParams;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 11899
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11901
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xdb

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11902
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11903
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 11906
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 11906
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11908
    throw p1
.end method

.method public WriteOutputSettings(Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6536
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6537
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 6540
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 6542
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6543
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 6546
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6548
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6549
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6550
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2f

    .line 6553
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_2f
    move-exception p1

    .line 6553
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6555
    throw p1
.end method

.method public WriteOutputSettings_Profile(Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9065
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9066
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9069
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 9071
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9072
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9075
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 9078
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9079
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 9082
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9084
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x79

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9085
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9086
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 9089
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 9089
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9091
    throw p1
.end method

.method public WriteOutputSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11940
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11941
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11944
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 11946
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11947
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11950
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 11953
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11954
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 11957
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11959
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xdd

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11960
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11961
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 11964
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 11964
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11966
    throw p1
.end method

.method public WritePDF417(Lcom/cipherlab/barcode/decoderparams/PDF417;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7905
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7906
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7909
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 7911
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7912
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/PDF417;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 7915
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7917
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7918
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7919
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 7922
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 7922
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7924
    throw p1
.end method

.method public WritePDF417_Profile(Lcom/cipherlab/barcode/decoderparams/PDF417;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10805
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10806
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10809
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 10811
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10812
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/PDF417;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10815
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 10818
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10819
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 10822
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10824
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xb5

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10825
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10826
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 10829
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 10829
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10831
    throw p1
.end method

.method public WritePDF417_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/PDF417;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13681
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13684
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 13686
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13687
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13690
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 13693
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13694
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/PDF417;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 13697
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13699
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x119

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13700
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13701
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 13704
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13705
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 13704
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13705
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13706
    throw p1
.end method

.method public WritePlessey(Lcom/cipherlab/barcode/decoderparams/Plessey;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8410
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 8412
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8413
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/Plessey;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 8416
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8418
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8419
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8420
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 8423
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 8423
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8425
    throw p1
.end method

.method public WritePlessey_Profile(Lcom/cipherlab/barcode/decoderparams/Plessey;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11443
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11447
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 11449
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11450
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Plessey;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11453
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 11456
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11457
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 11460
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11462
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xcb

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11463
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11464
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 11467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 11467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11469
    throw p1
.end method

.method public WritePlessey_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Plessey;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 14322
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 14324
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14325
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 14328
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 14331
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14332
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Plessey;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 14335
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14337
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x12f

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14338
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14339
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 14342
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 14342
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14344
    throw p1
.end method

.method public WriteQRCode(Lcom/cipherlab/barcode/decoderparams/QRCode;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7949
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7950
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7953
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 7955
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7956
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/QRCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 7959
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7961
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 7962
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7963
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 7966
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 7966
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7968
    throw p1
.end method

.method public WriteQRCode_Profile(Lcom/cipherlab/barcode/decoderparams/QRCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10863
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10864
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10867
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 10869
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10870
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/QRCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10873
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 10876
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10877
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 10880
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10882
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xb7

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10883
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10884
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 10887
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10888
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 10887
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10888
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10889
    throw p1
.end method

.method public WriteQRCode_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/QRCode;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13738
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13742
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 13744
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13745
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13748
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 13751
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13752
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/QRCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 13755
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13757
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x11b

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13758
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13759
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 13762
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 13762
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13764
    throw p1
.end method

.method public WriteTelepen(Lcom/cipherlab/barcode/decoderparams/Telepen;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8451
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8454
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 8456
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8457
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/Telepen;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 8460
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8462
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8463
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8464
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 8467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 8467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8469
    throw p1
.end method

.method public WriteTelepen_Profile(Lcom/cipherlab/barcode/decoderparams/Telepen;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11501
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11502
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11505
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 11507
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11508
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Telepen;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11511
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 11514
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11515
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 11518
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11520
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xcd

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11521
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11522
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 11525
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 11525
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11527
    throw p1
.end method

.method public WriteTelepen_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/Telepen;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 14380
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 14382
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14383
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 14386
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 14389
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14390
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/Telepen;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 14393
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14395
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x131

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14396
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14397
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 14400
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 14400
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14402
    throw p1
.end method

.method public WriteTriopticCode39(Lcom/cipherlab/barcode/decoderparams/TriopticCode39;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7993
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7994
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 7997
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 7999
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8000
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/TriopticCode39;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 8003
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8005
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8006
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8007
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 8010
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8011
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 8010
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8011
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8012
    throw p1
.end method

.method public WriteTriopticCode39_Profile(Lcom/cipherlab/barcode/decoderparams/TriopticCode39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10921
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10922
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10925
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 10927
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10928
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/TriopticCode39;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10931
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 10934
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10935
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 10938
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10940
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xb9

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10941
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10942
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 10945
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 10945
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10947
    throw p1
.end method

.method public WriteTriopticCode39_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/TriopticCode39;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13796
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13797
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13800
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 13802
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13803
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13806
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 13809
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13810
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/TriopticCode39;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 13813
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13815
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x11d

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13816
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13817
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 13820
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 13820
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13822
    throw p1
.end method

.method public WriteUKPostal(Lcom/cipherlab/barcode/decoderparams/UKPostal;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8081
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8082
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8085
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 8087
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8088
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/UKPostal;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 8091
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8093
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8094
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8095
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 8098
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 8098
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8100
    throw p1
.end method

.method public WriteUKPostal_Profile(Lcom/cipherlab/barcode/decoderparams/UKPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11037
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11038
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11041
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 11043
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11044
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/UKPostal;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11047
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 11050
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11051
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 11054
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11056
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xbd

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11057
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11058
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 11061
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 11061
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11063
    throw p1
.end method

.method public WriteUKPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UKPostal;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13912
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13913
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13916
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 13918
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13919
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13922
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 13925
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13926
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/UKPostal;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 13929
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13931
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x121

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13932
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13933
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 13936
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 13936
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13938
    throw p1
.end method

.method public WriteUPUFICSPostal(Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8261
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 8263
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8264
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 8267
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8269
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x54

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8270
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8271
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 8274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 8274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8276
    throw p1
.end method

.method public WriteUPUFICSPostal_Profile(Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11273
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 11275
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11276
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11279
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 11282
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11283
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 11286
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11288
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xc5

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11289
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11290
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 11293
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 11293
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11295
    throw p1
.end method

.method public WriteUPUFICSPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 14148
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 14150
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14151
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 14154
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 14157
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14158
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 14161
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14163
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x129

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14164
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14165
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 14168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 14168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14170
    throw p1
.end method

.method public WriteUSPSPostal(Lcom/cipherlab/barcode/decoderparams/USPSPostal;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8346
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8349
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 8351
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8352
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/USPSPostal;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 8355
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8357
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8358
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8359
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 8362
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 8362
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8364
    throw p1
.end method

.method public WriteUSPSPostal_Profile(Lcom/cipherlab/barcode/decoderparams/USPSPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11389
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 11391
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11392
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/USPSPostal;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11395
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 11398
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11399
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 11402
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11404
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xc9

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11405
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11406
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 11409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 11409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11411
    throw p1
.end method

.method public WriteUSPSPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/USPSPostal;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 14264
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 14266
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14267
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 14270
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 14273
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14274
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/USPSPostal;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 14277
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14279
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x12d

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14280
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14281
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 14284
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 14284
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14286
    throw p1
.end method

.method public WriteUSPostal(Lcom/cipherlab/barcode/decoderparams/USPostal;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8305
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 8307
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8308
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/USPostal;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 8311
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8313
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x56

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8314
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8315
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 8318
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 8318
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8320
    throw p1
.end method

.method public WriteUSPostal_Profile(Lcom/cipherlab/barcode/decoderparams/USPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11328
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11331
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 11333
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11334
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/USPostal;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11337
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 11340
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11341
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 11344
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11346
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xc7

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11347
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11348
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 11351
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 11351
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11353
    throw p1
.end method

.method public WriteUSPostal_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/USPostal;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 14206
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 14208
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14209
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 14212
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 14215
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14216
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/USPostal;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 14219
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14221
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x12b

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14222
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14223
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 14226
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 14226
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14228
    throw p1
.end method

.method public WriteUccCoupon(Lcom/cipherlab/barcode/decoderparams/UccCoupon;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8037
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8038
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8041
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 8043
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8044
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/UccCoupon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 8047
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8049
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4a

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8050
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8051
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 8054
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 8054
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8056
    throw p1
.end method

.method public WriteUccCoupon_Profile(Lcom/cipherlab/barcode/decoderparams/UccCoupon;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10979
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10980
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 10983
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 10985
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10986
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/UccCoupon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 10989
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 10992
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10993
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 10996
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10998
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xbb

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 10999
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11000
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 11003
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 11003
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11005
    throw p1
.end method

.method public WriteUccCoupon_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UccCoupon;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13854
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13855
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13858
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 13860
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13861
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13864
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 13867
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13868
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/UccCoupon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 13871
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13873
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x11f

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13874
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13875
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 13878
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13879
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 13878
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13879
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13880
    throw p1
.end method

.method public WriteUpcA(Lcom/cipherlab/barcode/decoderparams/UpcA;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8129
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 8131
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8132
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/UpcA;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 8135
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8137
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4e

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8138
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8139
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 8142
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 8142
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8144
    throw p1
.end method

.method public WriteUpcA_Profile(Lcom/cipherlab/barcode/decoderparams/UpcA;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11095
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11096
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11099
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 11101
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11102
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/UpcA;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11105
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 11108
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11109
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 11112
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11114
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xbf

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11115
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11116
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 11119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 11119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11121
    throw p1
.end method

.method public WriteUpcA_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UpcA;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13970
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13971
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 13974
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 13976
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13977
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 13980
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 13983
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13984
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/UpcA;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 13987
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13989
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x123

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 13990
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13991
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 13994
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 13994
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13996
    throw p1
.end method

.method public WriteUpcE(Lcom/cipherlab/barcode/decoderparams/UpcE;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8173
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 8175
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8176
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/UpcE;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 8179
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8181
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8182
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8183
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 8186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 8186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8188
    throw p1
.end method

.method public WriteUpcE1(Lcom/cipherlab/barcode/decoderparams/UpcE1;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8214
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 8217
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 8219
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8220
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/UpcE1;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 8223
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8225
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x52

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8226
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8227
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 8230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 8230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8232
    throw p1
.end method

.method public WriteUpcE1_Profile(Lcom/cipherlab/barcode/decoderparams/UpcE1;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11215
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 11217
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11218
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/UpcE1;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11221
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 11224
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11225
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 11228
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11230
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xc3

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11231
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11232
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 11235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 11235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11237
    throw p1
.end method

.method public WriteUpcE1_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UpcE1;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14086
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14087
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 14090
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 14092
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14093
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 14096
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 14099
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14100
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/UpcE1;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 14103
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14105
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x127

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14106
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14107
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 14110
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 14110
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14112
    throw p1
.end method

.method public WriteUpcE_Profile(Lcom/cipherlab/barcode/decoderparams/UpcE;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 11157
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 11159
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11160
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/UpcE;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 11163
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 11166
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11167
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 11170
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11172
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xc1

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 11173
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11174
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 11177
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 11177
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11179
    throw p1
.end method

.method public WriteUpcE_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UpcE;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14028
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14029
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 14032
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 14034
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14035
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 14038
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 14041
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14042
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/UpcE;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 14045
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14047
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x125

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14048
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14049
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 14052
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 14052
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14054
    throw p1
.end method

.method public WriteUserPreferenceSettings(Lcom/cipherlab/barcode/decoderparams/UserPreference;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6656
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6657
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 6660
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 6662
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6663
    invoke-virtual {p1, v0, v2}, Lcom/cipherlab/barcode/decoderparams/UserPreference;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 6666
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6668
    :goto_1b
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6669
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6670
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 6673
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_30
    move-exception p1

    .line 6673
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6675
    throw p1
.end method

.method public WriteUserPreferenceSettings_Profile(Lcom/cipherlab/barcode/decoderparams/UserPreference;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 9127
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 9129
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9130
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/UserPreference;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 9133
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 9136
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9137
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 9140
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9142
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x7b

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9143
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9144
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 9147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 9147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9149
    throw p1
.end method

.method public WriteUserPreferenceSettings_Profile_V2(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/UserPreference;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11998
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11999
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    .line 12002
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 12004
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12005
    invoke-virtual {p1, v0, v3}, Lcom/cipherlab/barcode/decoderparams/ReaderProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 12008
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    if-eqz p2, :cond_24

    .line 12011
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12012
    invoke-virtual {p2, v0, v3}, Lcom/cipherlab/barcode/decoderparams/UserPreference;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 12015
    :cond_24
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12017
    :goto_27
    iget-object p1, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xdf

    invoke-interface {p1, p2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 12018
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12019
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    .line 12022
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_3c
    move-exception p1

    .line 12022
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12024
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 6452
    iget-object v0, p0, Lcom/cipherlab/barcodebase/IBarcodeReaderServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.cipherlab.barcodebase.IBarcodeReaderServiceInterface"

    return-object v0
.end method
