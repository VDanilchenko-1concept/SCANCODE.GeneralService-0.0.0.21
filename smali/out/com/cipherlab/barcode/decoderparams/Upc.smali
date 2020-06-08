.class Lcom/cipherlab/barcode/decoderparams/Upc;
.super Ljava/lang/Object;
.source "Upc.java"

# interfaces
.implements Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;


# instance fields
.field public addon2:Lcom/cipherlab/barcode/decoder/AddonsType;

.field public addon5:Lcom/cipherlab/barcode/decoder/AddonsType;

.field public enable:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public transmitSystemNumber:Lcom/cipherlab/barcode/decoder/Preamble;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Upc;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 10
    sget-object v0, Lcom/cipherlab/barcode/decoder/AddonsType;->IgnoresAddons:Lcom/cipherlab/barcode/decoder/AddonsType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Upc;->addon2:Lcom/cipherlab/barcode/decoder/AddonsType;

    .line 11
    sget-object v0, Lcom/cipherlab/barcode/decoder/AddonsType;->IgnoresAddons:Lcom/cipherlab/barcode/decoder/AddonsType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Upc;->addon5:Lcom/cipherlab/barcode/decoder/AddonsType;

    .line 12
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Upc;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 13
    sget-object v0, Lcom/cipherlab/barcode/decoder/Preamble;->SysNumOnly:Lcom/cipherlab/barcode/decoder/Preamble;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Upc;->transmitSystemNumber:Lcom/cipherlab/barcode/decoder/Preamble;

    return-void
.end method


# virtual methods
.method public GetSymbologyType()Lcom/cipherlab/barcode/decoder/SymbologyType;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public SetIneffective()V
    .registers 2

    .line 33
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Upc;->enable:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 34
    sget-object v0, Lcom/cipherlab/barcode/decoder/AddonsType;->NotSupport:Lcom/cipherlab/barcode/decoder/AddonsType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Upc;->addon2:Lcom/cipherlab/barcode/decoder/AddonsType;

    .line 35
    sget-object v0, Lcom/cipherlab/barcode/decoder/AddonsType;->NotSupport:Lcom/cipherlab/barcode/decoder/AddonsType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Upc;->addon5:Lcom/cipherlab/barcode/decoder/AddonsType;

    .line 36
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Upc;->transmitCheckDigit:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 37
    sget-object v0, Lcom/cipherlab/barcode/decoder/Preamble;->NotSupport:Lcom/cipherlab/barcode/decoder/Preamble;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/Upc;->transmitSystemNumber:Lcom/cipherlab/barcode/decoder/Preamble;

    return-void
.end method
