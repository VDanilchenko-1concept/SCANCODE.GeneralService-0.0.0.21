.class public Lcom/speedata/libuhf/bean/FixedQParams;
.super Ljava/lang/Object;
.source "FixedQParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/speedata/libuhf/bean/FixedQParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public qValue:I

.field public repeatUntiNoTags:I

.field public retryCount:I

.field public toggleTarget:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Lcom/speedata/libuhf/bean/FixedQParams$1;

    invoke-direct {v0}, Lcom/speedata/libuhf/bean/FixedQParams$1;-><init>()V

    sput-object v0, Lcom/speedata/libuhf/bean/FixedQParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/speedata/libuhf/bean/FixedQParams;->qValue:I

    .line 17
    iput p2, p0, Lcom/speedata/libuhf/bean/FixedQParams;->retryCount:I

    .line 18
    iput p3, p0, Lcom/speedata/libuhf/bean/FixedQParams;->toggleTarget:I

    .line 19
    iput p4, p0, Lcom/speedata/libuhf/bean/FixedQParams;->repeatUntiNoTags:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/speedata/libuhf/bean/FixedQParams;->qValue:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/speedata/libuhf/bean/FixedQParams;->retryCount:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/speedata/libuhf/bean/FixedQParams;->toggleTarget:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/speedata/libuhf/bean/FixedQParams;->repeatUntiNoTags:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/speedata/libuhf/bean/FixedQParams;->qValue:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/speedata/libuhf/bean/FixedQParams;->retryCount:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/speedata/libuhf/bean/FixedQParams;->toggleTarget:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/speedata/libuhf/bean/FixedQParams;->repeatUntiNoTags:I

    return-void
.end method

.method public setValue(IIII)V
    .registers 5

    .line 42
    iput p1, p0, Lcom/speedata/libuhf/bean/FixedQParams;->qValue:I

    .line 43
    iput p2, p0, Lcom/speedata/libuhf/bean/FixedQParams;->retryCount:I

    .line 44
    iput p3, p0, Lcom/speedata/libuhf/bean/FixedQParams;->toggleTarget:I

    .line 45
    iput p4, p0, Lcom/speedata/libuhf/bean/FixedQParams;->repeatUntiNoTags:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FixedQParams{qValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/speedata/libuhf/bean/FixedQParams;->qValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/speedata/libuhf/bean/FixedQParams;->retryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toggleTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/speedata/libuhf/bean/FixedQParams;->toggleTarget:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", repeatUntiNoTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/speedata/libuhf/bean/FixedQParams;->repeatUntiNoTags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 60
    iget p2, p0, Lcom/speedata/libuhf/bean/FixedQParams;->qValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget p2, p0, Lcom/speedata/libuhf/bean/FixedQParams;->retryCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget p2, p0, Lcom/speedata/libuhf/bean/FixedQParams;->toggleTarget:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget p2, p0, Lcom/speedata/libuhf/bean/FixedQParams;->repeatUntiNoTags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
