.class public final enum Lcom/cipherlab/barcode/decoder/SymbologyType;
.super Ljava/lang/Enum;
.source "SymbologyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/barcode/decoder/SymbologyType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AustralianPostal:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum Aztec:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum Chinese2Of5:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum Cip39:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum Codabar:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum Code11:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum Code128:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum Code39:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum Code93:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum Composite:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum DataMatrix:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum DotCode:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum DutchPostal:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum Ean13:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum Ean8:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum FrenchPharmacode:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum GS1128:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum GS1DataBar14:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum GS1DataBarExpanded:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum GS1DataBarLimited:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum Hanxin:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum ISBT128:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum Industrial2Of5:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum Interleaved2Of5:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum JapanPostal:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum Korean3Of5:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum Laetus:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum MRZ:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum Matrix2Of5:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum MaxiCode:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum MicroPDF417:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum MicroQR:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum Msi:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum PDF417:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum Plessey:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum QRCode:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum Telepen:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum TriopticCode39:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum UKPostal:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum UPUFICSPostal:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum USPSPostal:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum USPostal:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum UccCoupon:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum UpcA:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum UpcE:Lcom/cipherlab/barcode/decoder/SymbologyType;

.field public static final enum UpcE1:Lcom/cipherlab/barcode/decoder/SymbologyType;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 5
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/4 v1, 0x0

    const-string v2, "Codabar"

    invoke-direct {v0, v2, v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Codabar:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 6
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/4 v2, 0x1

    const-string v3, "Code11"

    invoke-direct {v0, v3, v2}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Code11:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 7
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/4 v3, 0x2

    const-string v4, "Code39"

    invoke-direct {v0, v4, v3}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Code39:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 8
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/4 v4, 0x3

    const-string v5, "TriopticCode39"

    invoke-direct {v0, v5, v4}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->TriopticCode39:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 9
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/4 v5, 0x4

    const-string v6, "Code93"

    invoke-direct {v0, v6, v5}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    .line 10
    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Code93:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 11
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/4 v6, 0x5

    const-string v7, "Code128"

    invoke-direct {v0, v7, v6}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Code128:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 12
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/4 v7, 0x6

    const-string v8, "GS1128"

    invoke-direct {v0, v8, v7}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->GS1128:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 13
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/4 v8, 0x7

    const-string v9, "ISBT128"

    invoke-direct {v0, v9, v8}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->ISBT128:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 14
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v9, 0x8

    const-string v10, "Chinese2Of5"

    invoke-direct {v0, v10, v9}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Chinese2Of5:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 15
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v10, 0x9

    const-string v11, "Industrial2Of5"

    invoke-direct {v0, v11, v10}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Industrial2Of5:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 16
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v11, 0xa

    const-string v12, "Interleaved2Of5"

    invoke-direct {v0, v12, v11}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Interleaved2Of5:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 17
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v12, 0xb

    const-string v13, "Matrix2Of5"

    invoke-direct {v0, v13, v12}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Matrix2Of5:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 18
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v13, 0xc

    const-string v14, "GS1DataBar14"

    invoke-direct {v0, v14, v13}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->GS1DataBar14:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 20
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v14, 0xd

    const-string v15, "GS1DataBarExpanded"

    invoke-direct {v0, v15, v14}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->GS1DataBarExpanded:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 21
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v15, 0xe

    const-string v14, "GS1DataBarLimited"

    invoke-direct {v0, v14, v15}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->GS1DataBarLimited:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 22
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v14, 0xf

    const-string v15, "Msi"

    invoke-direct {v0, v15, v14}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Msi:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 23
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v15, 0x10

    const-string v14, "Ean8"

    invoke-direct {v0, v14, v15}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Ean8:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 24
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v14, 0x11

    const-string v15, "Ean13"

    invoke-direct {v0, v15, v14}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Ean13:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 25
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v15, 0x12

    const-string v14, "UccCoupon"

    invoke-direct {v0, v14, v15}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->UccCoupon:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 26
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v14, 0x13

    const-string v15, "UpcA"

    invoke-direct {v0, v15, v14}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->UpcA:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 27
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v15, 0x14

    const-string v14, "UpcE"

    invoke-direct {v0, v14, v15}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->UpcE:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 28
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v14, 0x15

    const-string v15, "UpcE1"

    invoke-direct {v0, v15, v14}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->UpcE1:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 29
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const-string v15, "Composite"

    const/16 v14, 0x16

    invoke-direct {v0, v15, v14}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Composite:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 30
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const-string v14, "USPostal"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->USPostal:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 31
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const-string v14, "UKPostal"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->UKPostal:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 32
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const-string v14, "JapanPostal"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->JapanPostal:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 33
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const-string v14, "AustralianPostal"

    const/16 v15, 0x1a

    invoke-direct {v0, v14, v15}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->AustralianPostal:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 34
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const-string v14, "DutchPostal"

    const/16 v15, 0x1b

    invoke-direct {v0, v14, v15}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->DutchPostal:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 35
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const-string v14, "USPSPostal"

    const/16 v15, 0x1c

    invoke-direct {v0, v14, v15}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->USPSPostal:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 36
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const-string v14, "UPUFICSPostal"

    const/16 v15, 0x1d

    invoke-direct {v0, v14, v15}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->UPUFICSPostal:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 37
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const-string v14, "PDF417"

    const/16 v15, 0x1e

    invoke-direct {v0, v14, v15}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->PDF417:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 38
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const-string v14, "MicroPDF417"

    const/16 v15, 0x1f

    invoke-direct {v0, v14, v15}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->MicroPDF417:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 39
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const-string v14, "DataMatrix"

    const/16 v15, 0x20

    invoke-direct {v0, v14, v15}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->DataMatrix:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 40
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const-string v14, "MaxiCode"

    const/16 v15, 0x21

    invoke-direct {v0, v14, v15}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->MaxiCode:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 41
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const-string v14, "QRCode"

    const/16 v15, 0x22

    invoke-direct {v0, v14, v15}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->QRCode:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 42
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const-string v14, "MicroQR"

    const/16 v15, 0x23

    invoke-direct {v0, v14, v15}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->MicroQR:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 43
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const-string v14, "Aztec"

    const/16 v15, 0x24

    invoke-direct {v0, v14, v15}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Aztec:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 44
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const-string v14, "Korean3Of5"

    const/16 v15, 0x25

    invoke-direct {v0, v14, v15}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Korean3Of5:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 45
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const-string v14, "Plessey"

    const/16 v15, 0x26

    invoke-direct {v0, v14, v15}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    .line 46
    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Plessey:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 47
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const-string v14, "Telepen"

    const/16 v15, 0x27

    invoke-direct {v0, v14, v15}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Telepen:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 48
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const-string v14, "Cip39"

    const/16 v15, 0x28

    invoke-direct {v0, v14, v15}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Cip39:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 50
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const-string v14, "FrenchPharmacode"

    const/16 v15, 0x29

    invoke-direct {v0, v14, v15}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->FrenchPharmacode:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 51
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const-string v14, "Laetus"

    const/16 v15, 0x2a

    invoke-direct {v0, v14, v15}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Laetus:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 52
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const-string v14, "Hanxin"

    const/16 v15, 0x2b

    invoke-direct {v0, v14, v15}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->Hanxin:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 53
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const-string v14, "MRZ"

    const/16 v15, 0x2c

    invoke-direct {v0, v14, v15}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->MRZ:Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 54
    new-instance v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    const-string v14, "DotCode"

    const/16 v15, 0x2d

    invoke-direct {v0, v14, v15}, Lcom/cipherlab/barcode/decoder/SymbologyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->DotCode:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v14, 0x2e

    new-array v14, v14, [Lcom/cipherlab/barcode/decoder/SymbologyType;

    .line 4
    sget-object v15, Lcom/cipherlab/barcode/decoder/SymbologyType;->Codabar:Lcom/cipherlab/barcode/decoder/SymbologyType;

    aput-object v15, v14, v1

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Code11:Lcom/cipherlab/barcode/decoder/SymbologyType;

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Code39:Lcom/cipherlab/barcode/decoder/SymbologyType;

    aput-object v1, v14, v3

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->TriopticCode39:Lcom/cipherlab/barcode/decoder/SymbologyType;

    aput-object v1, v14, v4

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Code93:Lcom/cipherlab/barcode/decoder/SymbologyType;

    aput-object v1, v14, v5

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Code128:Lcom/cipherlab/barcode/decoder/SymbologyType;

    aput-object v1, v14, v6

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->GS1128:Lcom/cipherlab/barcode/decoder/SymbologyType;

    aput-object v1, v14, v7

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->ISBT128:Lcom/cipherlab/barcode/decoder/SymbologyType;

    aput-object v1, v14, v8

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Chinese2Of5:Lcom/cipherlab/barcode/decoder/SymbologyType;

    aput-object v1, v14, v9

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Industrial2Of5:Lcom/cipherlab/barcode/decoder/SymbologyType;

    aput-object v1, v14, v10

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Interleaved2Of5:Lcom/cipherlab/barcode/decoder/SymbologyType;

    aput-object v1, v14, v11

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Matrix2Of5:Lcom/cipherlab/barcode/decoder/SymbologyType;

    aput-object v1, v14, v12

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->GS1DataBar14:Lcom/cipherlab/barcode/decoder/SymbologyType;

    aput-object v1, v14, v13

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->GS1DataBarExpanded:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->GS1DataBarLimited:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Msi:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Ean8:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Ean13:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->UccCoupon:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0x12

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->UpcA:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0x13

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->UpcE:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0x14

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->UpcE1:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0x15

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Composite:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0x16

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->USPostal:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0x17

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->UKPostal:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0x18

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->JapanPostal:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0x19

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->AustralianPostal:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0x1a

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->DutchPostal:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0x1b

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->USPSPostal:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0x1c

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->UPUFICSPostal:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0x1d

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->PDF417:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0x1e

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->MicroPDF417:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0x1f

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->DataMatrix:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0x20

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->MaxiCode:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0x21

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->QRCode:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0x22

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->MicroQR:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0x23

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Aztec:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0x24

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Korean3Of5:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0x25

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Plessey:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0x26

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Telepen:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0x27

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Cip39:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0x28

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->FrenchPharmacode:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0x29

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Laetus:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0x2a

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Hanxin:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0x2b

    aput-object v1, v14, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->MRZ:Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/16 v2, 0x2c

    aput-object v1, v14, v2

    const/16 v1, 0x2d

    aput-object v0, v14, v1

    sput-object v14, Lcom/cipherlab/barcode/decoder/SymbologyType;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/SymbologyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/barcode/decoder/SymbologyType;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/barcode/decoder/SymbologyType;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/barcode/decoder/SymbologyType;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/barcode/decoder/SymbologyType;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/SymbologyType;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/barcode/decoder/SymbologyType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
