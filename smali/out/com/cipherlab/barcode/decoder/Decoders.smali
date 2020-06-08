.class public Lcom/cipherlab/barcode/decoder/Decoders;
.super Ljava/lang/Object;
.source "Decoders.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/barcode/decoder/Decoders;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public enableAustrailianPostal:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableAztec:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableChinese2Of5:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableCip39:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableCodabar:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableCode11:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableCode128:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableCode39:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableCode93:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableCompositeCC_AB:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableCompositeCC_C:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableCompositeTlc39:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableDataMatrix:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableDotCode:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableDutchPostal:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableEanJan13:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableEanJan8:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableFrenchPharmacode:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableGs1128:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableGs1DataBar14:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableGs1DataBarExpanded:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableGs1DataBarLimited:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableGs1DatabarToUpcEan:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableHanxin:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableIndustrial2Of5:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableInterleaved2Of5:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableIsbt128:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableJapanPostal:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableKorean3Of5:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableLaetus:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableMRZ:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableMatrix2Of5:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableMaxiCode:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableMicroPDF417:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableMicroQR:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableMsi:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enablePDF417:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enablePlessey:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableQRcode:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableTelepen:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableTriopticCode39:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableUKPostal:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableUPUFICSPostal:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableUSPSPostal:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableUSPlanet:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableUSPostnet:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableUccCoupon:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableUpcA:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableUpcE:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableUpcE1:Lcom/cipherlab/barcode/decoder/Enable_State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 237
    new-instance v0, Lcom/cipherlab/barcode/decoder/Decoders$1;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoder/Decoders$1;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/decoder/Decoders;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableAustrailianPostal:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 11
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableAztec:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 12
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCompositeCC_C:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 13
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableDataMatrix:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 14
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableDutchPostal:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 15
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableGs1DataBar14:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 16
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableGs1DataBarExpanded:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 17
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableGs1DataBarLimited:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 18
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableJapanPostal:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 19
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableMatrix2Of5:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 20
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableMaxiCode:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 21
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableMicroQR:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 22
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enablePDF417:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 23
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableQRcode:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 24
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUKPostal:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 25
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUSPostnet:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 26
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUSPlanet:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 27
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCode11:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 28
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCode39:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 29
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCode93:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 30
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCode128:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 31
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCodabar:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 32
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableChinese2Of5:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 33
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableEanJan8:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 34
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableEanJan13:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 35
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableGs1128:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 36
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableGs1DatabarToUpcEan:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 37
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableIsbt128:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 38
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableIndustrial2Of5:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 39
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableInterleaved2Of5:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 40
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableMsi:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 41
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUpcA:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 42
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUpcE:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 43
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableTriopticCode39:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 44
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCompositeTlc39:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 45
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCompositeCC_AB:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 46
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableKorean3Of5:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 47
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableMicroPDF417:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 48
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUpcE1:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 49
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUccCoupon:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 50
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUPUFICSPostal:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 51
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUSPSPostal:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 52
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enablePlessey:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 53
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableTelepen:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 54
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCip39:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 55
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableLaetus:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 56
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableHanxin:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 57
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableFrenchPharmacode:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 58
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableMRZ:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 59
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableDotCode:Lcom/cipherlab/barcode/decoder/Enable_State;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoder/Decoders;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public SetIneffective()V
    .registers 2

    .line 116
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableAustrailianPostal:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 117
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableAztec:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 118
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCompositeCC_AB:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 119
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCompositeCC_C:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 120
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCompositeTlc39:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 121
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableDataMatrix:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 122
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableDutchPostal:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 123
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableGs1DataBar14:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 124
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableGs1DataBarExpanded:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 125
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableGs1DataBarLimited:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 126
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableJapanPostal:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 127
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableMatrix2Of5:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 128
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableMaxiCode:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 129
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableMicroPDF417:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 130
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableMicroQR:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 131
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enablePDF417:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 132
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableQRcode:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 133
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableTriopticCode39:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 134
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUccCoupon:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 135
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUKPostal:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 136
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUPUFICSPostal:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 137
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUSPostnet:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 138
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUSPlanet:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 139
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUSPSPostal:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 140
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableKorean3Of5:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 141
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCode11:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 142
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCode39:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 143
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCode93:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 144
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCode128:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 145
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCodabar:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 146
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableChinese2Of5:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 147
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableEanJan8:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 148
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableEanJan13:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 149
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableGs1128:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 150
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableGs1DatabarToUpcEan:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 151
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableIsbt128:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 152
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableIndustrial2Of5:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 153
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableInterleaved2Of5:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 154
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableMsi:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 155
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUpcA:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 156
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUpcE:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 157
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUpcE1:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 158
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enablePlessey:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 159
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableTelepen:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 160
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCip39:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 161
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableLaetus:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 162
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableHanxin:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 163
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableFrenchPharmacode:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 164
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableMRZ:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 165
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableDotCode:Lcom/cipherlab/barcode/decoder/Enable_State;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableAustrailianPostal:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableAztec:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCompositeCC_C:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableDataMatrix:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableDutchPostal:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableGs1DataBar14:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableGs1DataBarExpanded:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableGs1DataBarLimited:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableJapanPostal:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableMatrix2Of5:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableMaxiCode:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableMicroQR:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enablePDF417:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableQRcode:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUKPostal:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUSPostnet:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUSPlanet:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCode11:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCode39:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCode93:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCode128:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCodabar:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableChinese2Of5:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableEanJan8:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableEanJan13:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableGs1128:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableGs1DatabarToUpcEan:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableIsbt128:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableIndustrial2Of5:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableInterleaved2Of5:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableMsi:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUpcA:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUpcE:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableTriopticCode39:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCompositeTlc39:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCompositeCC_AB:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableKorean3Of5:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableMicroPDF417:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUpcE1:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUccCoupon:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUPUFICSPostal:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUSPSPostal:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enablePlessey:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableTelepen:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCip39:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableLaetus:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableHanxin:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableFrenchPharmacode:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableMRZ:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object p1, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableDotCode:Lcom/cipherlab/barcode/decoder/Enable_State;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 184
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableAustrailianPostal:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 185
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableAztec:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 186
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCompositeCC_C:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 187
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableDataMatrix:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 188
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableDutchPostal:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 189
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableGs1DataBar14:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 190
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableGs1DataBarExpanded:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 191
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableGs1DataBarLimited:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 192
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableJapanPostal:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 193
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableMatrix2Of5:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 194
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableMaxiCode:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 195
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableMicroQR:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 196
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enablePDF417:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 197
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableQRcode:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 198
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUKPostal:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 199
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUSPostnet:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 200
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUSPlanet:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 201
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCode11:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 202
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCode39:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 203
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCode93:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 204
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCode128:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 205
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCodabar:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 206
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableChinese2Of5:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 207
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableEanJan8:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 208
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableEanJan13:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 209
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableGs1128:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 210
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableGs1DatabarToUpcEan:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 211
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableIsbt128:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 212
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableIndustrial2Of5:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 213
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableInterleaved2Of5:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 214
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableMsi:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 215
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUpcA:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 216
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUpcE:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 217
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableTriopticCode39:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 218
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCompositeTlc39:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 219
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCompositeCC_AB:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 220
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableKorean3Of5:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 221
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableMicroPDF417:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 222
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUpcE1:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 223
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUccCoupon:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 224
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUPUFICSPostal:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 225
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableUSPSPostal:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 226
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enablePlessey:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 227
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableTelepen:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 228
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableCip39:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 229
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableLaetus:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 230
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableHanxin:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 231
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableFrenchPharmacode:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 232
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableMRZ:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 233
    iget-object p2, p0, Lcom/cipherlab/barcode/decoder/Decoders;->enableDotCode:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
