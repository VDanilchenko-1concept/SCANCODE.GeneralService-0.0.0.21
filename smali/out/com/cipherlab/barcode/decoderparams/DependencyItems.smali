.class public Lcom/cipherlab/barcode/decoderparams/DependencyItems;
.super Ljava/lang/Object;
.source "DependencyItems.java"


# instance fields
.field public oneAddons:Lcom/cipherlab/barcode/decoder/AddonsType;

.field public oneConvertUpcToEan:Lcom/cipherlab/barcode/decoder/Enable_State;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/cipherlab/barcode/decoder/AddonsType;->IgnoresAddons:Lcom/cipherlab/barcode/decoder/AddonsType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/DependencyItems;->oneAddons:Lcom/cipherlab/barcode/decoder/AddonsType;

    .line 15
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/DependencyItems;->oneConvertUpcToEan:Lcom/cipherlab/barcode/decoder/Enable_State;

    return-void
.end method
