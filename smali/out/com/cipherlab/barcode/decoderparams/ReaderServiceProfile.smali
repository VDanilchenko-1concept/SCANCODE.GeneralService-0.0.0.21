.class public Lcom/cipherlab/barcode/decoderparams/ReaderServiceProfile;
.super Ljava/lang/Object;
.source "ReaderServiceProfile.java"


# instance fields
.field public bProfileEnable:Z

.field public sPackage:Ljava/lang/String;

.field public sProfile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    if-eqz p1, :cond_11

    const-string p1, "Default"

    .line 9
    iput-object p1, p0, Lcom/cipherlab/barcode/decoderparams/ReaderServiceProfile;->sProfile:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderServiceProfile;->sPackage:Ljava/lang/String;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/cipherlab/barcode/decoderparams/ReaderServiceProfile;->bProfileEnable:Z

    goto :goto_18

    .line 15
    :cond_11
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderServiceProfile;->sProfile:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderServiceProfile;->sPackage:Ljava/lang/String;

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/cipherlab/barcode/decoderparams/ReaderServiceProfile;->bProfileEnable:Z

    :goto_18
    return-void
.end method
