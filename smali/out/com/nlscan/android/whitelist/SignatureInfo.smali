.class public Lcom/nlscan/android/whitelist/SignatureInfo;
.super Ljava/lang/Object;
.source "SignatureInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nlscan/android/whitelist/SignatureInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mId:I

.field private mPackageName:Ljava/lang/String;

.field private mSignature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 142
    new-instance v0, Lcom/nlscan/android/whitelist/SignatureInfo$1;

    invoke-direct {v0}, Lcom/nlscan/android/whitelist/SignatureInfo$1;-><init>()V

    sput-object v0, Lcom/nlscan/android/whitelist/SignatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/nlscan/android/whitelist/SignatureInfo;->mId:I

    .line 21
    iput-object p2, p0, Lcom/nlscan/android/whitelist/SignatureInfo;->mPackageName:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/nlscan/android/whitelist/SignatureInfo;->mSignature:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/nlscan/android/whitelist/SignatureInfo;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-direct {p0, p1}, Lcom/nlscan/android/whitelist/SignatureInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nlscan/android/whitelist/SignatureInfo;->mId:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nlscan/android/whitelist/SignatureInfo;->mPackageName:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nlscan/android/whitelist/SignatureInfo;->mSignature:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nlscan/android/whitelist/SignatureInfo;->mDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 124
    instance-of v0, p1, Lcom/nlscan/android/whitelist/SignatureInfo;

    if-eqz v0, :cond_21

    .line 126
    move-object v0, p1

    check-cast v0, Lcom/nlscan/android/whitelist/SignatureInfo;

    .line 127
    invoke-virtual {v0}, Lcom/nlscan/android/whitelist/SignatureInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {v0}, Lcom/nlscan/android/whitelist/SignatureInfo;->getSignature()Ljava/lang/String;

    move-result-object v0

    .line 130
    :try_start_f
    iget-object v2, p0, Lcom/nlscan/android/whitelist/SignatureInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 131
    iget-object v1, p0, Lcom/nlscan/android/whitelist/SignatureInfo;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1d} :catch_21

    if-eqz v0, :cond_21

    const/4 p1, 0x1

    return p1

    .line 137
    :catch_21
    :cond_21
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/nlscan/android/whitelist/SignatureInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 42
    iget v0, p0, Lcom/nlscan/android/whitelist/SignatureInfo;->mId:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/nlscan/android/whitelist/SignatureInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/nlscan/android/whitelist/SignatureInfo;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/nlscan/android/whitelist/SignatureInfo;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 47
    iput p1, p0, Lcom/nlscan/android/whitelist/SignatureInfo;->mId:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/nlscan/android/whitelist/SignatureInfo;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/nlscan/android/whitelist/SignatureInfo;->mSignature:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 113
    iget p2, p0, Lcom/nlscan/android/whitelist/SignatureInfo;->mId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-object p2, p0, Lcom/nlscan/android/whitelist/SignatureInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object p2, p0, Lcom/nlscan/android/whitelist/SignatureInfo;->mSignature:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object p2, p0, Lcom/nlscan/android/whitelist/SignatureInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
