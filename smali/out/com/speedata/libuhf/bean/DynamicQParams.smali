.class public Lcom/speedata/libuhf/bean/DynamicQParams;
.super Ljava/lang/Object;
.source "DynamicQParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/speedata/libuhf/bean/DynamicQParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public maxQValue:I

.field public minQValue:I

.field public retryCount:I

.field public startQValue:I

.field public thresholdMultiplier:I

.field public toggleTarget:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Lcom/speedata/libuhf/bean/DynamicQParams$1;

    invoke-direct {v0}, Lcom/speedata/libuhf/bean/DynamicQParams$1;-><init>()V

    sput-object v0, Lcom/speedata/libuhf/bean/DynamicQParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 7

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->startQValue:I

    .line 20
    iput p2, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->minQValue:I

    .line 21
    iput p3, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->maxQValue:I

    .line 22
    iput p4, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->retryCount:I

    .line 23
    iput p5, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->toggleTarget:I

    .line 24
    iput p6, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->thresholdMultiplier:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->startQValue:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->minQValue:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->maxQValue:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->retryCount:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->toggleTarget:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->thresholdMultiplier:I

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

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->startQValue:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->minQValue:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->maxQValue:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->retryCount:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->toggleTarget:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->thresholdMultiplier:I

    return-void
.end method

.method public setValue(IIIIII)V
    .registers 7

    .line 49
    iput p1, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->startQValue:I

    .line 50
    iput p2, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->minQValue:I

    .line 51
    iput p3, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->maxQValue:I

    .line 52
    iput p4, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->retryCount:I

    .line 53
    iput p5, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->toggleTarget:I

    .line 54
    iput p6, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->thresholdMultiplier:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DynamicQParams{startQValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->startQValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minQValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->minQValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxQValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->maxQValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->retryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toggleTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->toggleTarget:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", thresholdMultiplier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->thresholdMultiplier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 69
    iget p2, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->startQValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget p2, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->minQValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget p2, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->maxQValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget p2, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->retryCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget p2, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->toggleTarget:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget p2, p0, Lcom/speedata/libuhf/bean/DynamicQParams;->thresholdMultiplier:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
