.class public Lcom/honeywell/aidc/SignatureParameters;
.super Ljava/lang/Object;
.source "SignatureParameters.java"


# instance fields
.field private mAspectRatio:I

.field private mBinarized:Z

.field private mHeight:I

.field private mHorizontalOffset:I

.field private mResolution:I

.field private mVerticalOffset:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIIIZ)V
    .registers 8

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/honeywell/aidc/SignatureParameters;->mAspectRatio:I

    .line 46
    iput p2, p0, Lcom/honeywell/aidc/SignatureParameters;->mHorizontalOffset:I

    .line 47
    iput p3, p0, Lcom/honeywell/aidc/SignatureParameters;->mVerticalOffset:I

    .line 48
    iput p4, p0, Lcom/honeywell/aidc/SignatureParameters;->mWidth:I

    .line 49
    iput p5, p0, Lcom/honeywell/aidc/SignatureParameters;->mHeight:I

    .line 50
    iput p6, p0, Lcom/honeywell/aidc/SignatureParameters;->mResolution:I

    .line 51
    iput-boolean p7, p0, Lcom/honeywell/aidc/SignatureParameters;->mBinarized:Z

    return-void
.end method


# virtual methods
.method public getAspectRatio()I
    .registers 2

    .line 60
    iget v0, p0, Lcom/honeywell/aidc/SignatureParameters;->mAspectRatio:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 146
    iget v0, p0, Lcom/honeywell/aidc/SignatureParameters;->mHeight:I

    return v0
.end method

.method public getHorizontalOffset()I
    .registers 2

    .line 79
    iget v0, p0, Lcom/honeywell/aidc/SignatureParameters;->mHorizontalOffset:I

    return v0
.end method

.method public getResolution()I
    .registers 2

    .line 165
    iget v0, p0, Lcom/honeywell/aidc/SignatureParameters;->mResolution:I

    return v0
.end method

.method public getVerticalOffset()I
    .registers 2

    .line 98
    iget v0, p0, Lcom/honeywell/aidc/SignatureParameters;->mVerticalOffset:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 127
    iget v0, p0, Lcom/honeywell/aidc/SignatureParameters;->mWidth:I

    return v0
.end method

.method public isBinarized()Z
    .registers 2

    .line 185
    iget-boolean v0, p0, Lcom/honeywell/aidc/SignatureParameters;->mBinarized:Z

    return v0
.end method

.method public setAspectRatio(I)V
    .registers 2

    .line 70
    iput p1, p0, Lcom/honeywell/aidc/SignatureParameters;->mAspectRatio:I

    return-void
.end method

.method public setBinarized(Z)V
    .registers 2

    .line 176
    iput-boolean p1, p0, Lcom/honeywell/aidc/SignatureParameters;->mBinarized:Z

    return-void
.end method

.method public setHeight(I)V
    .registers 2

    .line 137
    iput p1, p0, Lcom/honeywell/aidc/SignatureParameters;->mHeight:I

    return-void
.end method

.method public setHorizontalOffset(I)V
    .registers 2

    .line 89
    iput p1, p0, Lcom/honeywell/aidc/SignatureParameters;->mHorizontalOffset:I

    return-void
.end method

.method public setResolution(I)V
    .registers 2

    .line 156
    iput p1, p0, Lcom/honeywell/aidc/SignatureParameters;->mResolution:I

    return-void
.end method

.method public setVerticalOffset(I)V
    .registers 2

    .line 108
    iput p1, p0, Lcom/honeywell/aidc/SignatureParameters;->mVerticalOffset:I

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    .line 118
    iput p1, p0, Lcom/honeywell/aidc/SignatureParameters;->mWidth:I

    return-void
.end method
