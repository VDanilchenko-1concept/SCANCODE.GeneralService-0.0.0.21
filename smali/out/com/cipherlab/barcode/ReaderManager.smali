.class public Lcom/cipherlab/barcode/ReaderManager;
.super Ljava/lang/Object;
.source "ReaderManager.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$cipherlab$barcode$decoder$SymbologyType:[I

.field private static _instance:Lcom/cipherlab/barcode/ReaderManager;

.field private static mContext:Landroid/content/Context;

.field private static mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;


# instance fields
.field mMyReaderManagerSemaphore:Ljava/lang/Object;


# direct methods
.method static synthetic $SWITCH_TABLE$com$cipherlab$barcode$decoder$SymbologyType()[I
    .registers 3

    .line 27
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->$SWITCH_TABLE$com$cipherlab$barcode$decoder$SymbologyType:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Lcom/cipherlab/barcode/decoder/SymbologyType;->values()[Lcom/cipherlab/barcode/decoder/SymbologyType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->AustralianPostal:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_16} :catch_16

    :catch_16
    :try_start_16
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Aztec:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_20} :catch_20

    :catch_20
    :try_start_20
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Chinese2Of5:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Cip39:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_34} :catch_34

    :catch_34
    :try_start_34
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Codabar:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3d
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Code11:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_46} :catch_46

    :catch_46
    :try_start_46
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Code128:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_4f} :catch_4f

    :catch_4f
    :try_start_4f
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Code39:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_58} :catch_58

    :catch_58
    :try_start_58
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Code93:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_61} :catch_61

    :catch_61
    :try_start_61
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Composite:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_6b} :catch_6b

    :catch_6b
    :try_start_6b
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->DataMatrix:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_75} :catch_75

    :catch_75
    :try_start_75
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->DotCode:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_7f} :catch_7f

    :catch_7f
    :try_start_7f
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->DutchPostal:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_89} :catch_89

    :catch_89
    :try_start_89
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Ean13:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_93} :catch_93

    :catch_93
    :try_start_93
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Ean8:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_9d} :catch_9d

    :catch_9d
    :try_start_9d
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->FrenchPharmacode:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a7} :catch_a7

    :catch_a7
    :try_start_a7
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->GS1128:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a7 .. :try_end_b0} :catch_b0

    :catch_b0
    :try_start_b0
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->GS1DataBar14:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_ba
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b0 .. :try_end_ba} :catch_ba

    :catch_ba
    :try_start_ba
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->GS1DataBarExpanded:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_c4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ba .. :try_end_c4} :catch_c4

    :catch_c4
    :try_start_c4
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->GS1DataBarLimited:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c4 .. :try_end_ce} :catch_ce

    :catch_ce
    :try_start_ce
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Hanxin:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ce .. :try_end_d8} :catch_d8

    :catch_d8
    :try_start_d8
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->ISBT128:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_e2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d8 .. :try_end_e2} :catch_e2

    :catch_e2
    :try_start_e2
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Industrial2Of5:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_ec
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e2 .. :try_end_ec} :catch_ec

    :catch_ec
    :try_start_ec
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Interleaved2Of5:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_f6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ec .. :try_end_f6} :catch_f6

    :catch_f6
    :try_start_f6
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->JapanPostal:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_100
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f6 .. :try_end_100} :catch_100

    :catch_100
    :try_start_100
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Korean3Of5:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_10a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_100 .. :try_end_10a} :catch_10a

    :catch_10a
    :try_start_10a
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Laetus:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_114
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10a .. :try_end_114} :catch_114

    :catch_114
    :try_start_114
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->MRZ:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_11e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_114 .. :try_end_11e} :catch_11e

    :catch_11e
    :try_start_11e
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Matrix2Of5:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_128
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11e .. :try_end_128} :catch_128

    :catch_128
    :try_start_128
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->MaxiCode:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_132
    .catch Ljava/lang/NoSuchFieldError; {:try_start_128 .. :try_end_132} :catch_132

    :catch_132
    :try_start_132
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->MicroPDF417:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_13c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_132 .. :try_end_13c} :catch_13c

    :catch_13c
    :try_start_13c
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->MicroQR:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_146
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13c .. :try_end_146} :catch_146

    :catch_146
    :try_start_146
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Msi:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_150
    .catch Ljava/lang/NoSuchFieldError; {:try_start_146 .. :try_end_150} :catch_150

    :catch_150
    :try_start_150
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->PDF417:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_15a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_150 .. :try_end_15a} :catch_15a

    :catch_15a
    :try_start_15a
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Plessey:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_164
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15a .. :try_end_164} :catch_164

    :catch_164
    :try_start_164
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->QRCode:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_16e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_164 .. :try_end_16e} :catch_16e

    :catch_16e
    :try_start_16e
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->Telepen:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_178
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16e .. :try_end_178} :catch_178

    :catch_178
    :try_start_178
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->TriopticCode39:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_181
    .catch Ljava/lang/NoSuchFieldError; {:try_start_178 .. :try_end_181} :catch_181

    :catch_181
    :try_start_181
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->UKPostal:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_18b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_181 .. :try_end_18b} :catch_18b

    :catch_18b
    :try_start_18b
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->UPUFICSPostal:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_195
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18b .. :try_end_195} :catch_195

    :catch_195
    :try_start_195
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->USPSPostal:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_19f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_195 .. :try_end_19f} :catch_19f

    :catch_19f
    :try_start_19f
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->USPostal:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_1a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19f .. :try_end_1a9} :catch_1a9

    :catch_1a9
    :try_start_1a9
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->UccCoupon:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_1b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a9 .. :try_end_1b3} :catch_1b3

    :catch_1b3
    :try_start_1b3
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->UpcA:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_1bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b3 .. :try_end_1bd} :catch_1bd

    :catch_1bd
    :try_start_1bd
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->UpcE:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_1c7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1bd .. :try_end_1c7} :catch_1c7

    :catch_1c7
    :try_start_1c7
    sget-object v1, Lcom/cipherlab/barcode/decoder/SymbologyType;->UpcE1:Lcom/cipherlab/barcode/decoder/SymbologyType;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_1d1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c7 .. :try_end_1d1} :catch_1d1

    :catch_1d1
    sput-object v0, Lcom/cipherlab/barcode/ReaderManager;->$SWITCH_TABLE$com$cipherlab$barcode$decoder$SymbologyType:[I

    return-object v0
.end method

.method protected constructor <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cipherlab/barcode/ReaderManager;->mMyReaderManagerSemaphore:Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetInstance(Landroid/content/Context;)Lcom/cipherlab/barcode/ReaderManagerAPI;

    move-result-object v0

    sput-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    .line 40
    invoke-direct {p0}, Lcom/cipherlab/barcode/ReaderManager;->isReaderServiceRunning()Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    if-eqz v0, :cond_28

    const-string v0, "ReaderManager"

    const-string v1, "bindBReaderService...."

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0}, Lcom/cipherlab/barcode/ReaderManagerAPI;->bindBReaderService()V

    :cond_28
    return-void
.end method

.method private Get_AustralianPostal(Lcom/cipherlab/barcode/decoderparams/AustralianPostal;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 723
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetAustralianPostal(Lcom/cipherlab/barcode/decoderparams/AustralianPostal;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_AustralianPostal(Lcom/cipherlab/barcode/decoderparams/AustralianPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1690
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetAustralianPostal(Lcom/cipherlab/barcode/decoderparams/AustralianPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Aztec(Lcom/cipherlab/barcode/decoderparams/Aztec;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 823
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetAztec(Lcom/cipherlab/barcode/decoderparams/Aztec;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Aztec(Lcom/cipherlab/barcode/decoderparams/Aztec;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1790
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetAztec(Lcom/cipherlab/barcode/decoderparams/Aztec;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Chinese2Of5(Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 558
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetChinese2Of5(Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Chinese2Of5(Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1525
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetChinese2Of5(Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Cip39(Lcom/cipherlab/barcode/decoderparams/Cip39;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 873
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetCip39(Lcom/cipherlab/barcode/decoderparams/Cip39;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Cip39(Lcom/cipherlab/barcode/decoderparams/Cip39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1840
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetCip39(Lcom/cipherlab/barcode/decoderparams/Cip39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Codabar(Lcom/cipherlab/barcode/decoderparams/Codabar;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 518
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetCodabar(Lcom/cipherlab/barcode/decoderparams/Codabar;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Codabar(Lcom/cipherlab/barcode/decoderparams/Codabar;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1485
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetCodabar(Lcom/cipherlab/barcode/decoderparams/Codabar;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Code11(Lcom/cipherlab/barcode/decoderparams/Code11;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 508
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetCode11(Lcom/cipherlab/barcode/decoderparams/Code11;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Code11(Lcom/cipherlab/barcode/decoderparams/Code11;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1475
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetCode11(Lcom/cipherlab/barcode/decoderparams/Code11;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Code128(Lcom/cipherlab/barcode/decoderparams/Code128;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 528
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetCode128(Lcom/cipherlab/barcode/decoderparams/Code128;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Code128(Lcom/cipherlab/barcode/decoderparams/Code128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1495
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetCode128(Lcom/cipherlab/barcode/decoderparams/Code128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Code39(Lcom/cipherlab/barcode/decoderparams/Code39;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 468
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetCode39(Lcom/cipherlab/barcode/decoderparams/Code39;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Code39(Lcom/cipherlab/barcode/decoderparams/Code39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1435
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetCode39(Lcom/cipherlab/barcode/decoderparams/Code39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Code93(Lcom/cipherlab/barcode/decoderparams/Code93;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 498
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetCode93(Lcom/cipherlab/barcode/decoderparams/Code93;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Code93(Lcom/cipherlab/barcode/decoderparams/Code93;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1465
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetCode93(Lcom/cipherlab/barcode/decoderparams/Code93;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Composite(Lcom/cipherlab/barcode/decoderparams/Composite;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 683
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetComposite(Lcom/cipherlab/barcode/decoderparams/Composite;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Composite(Lcom/cipherlab/barcode/decoderparams/Composite;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1650
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetComposite(Lcom/cipherlab/barcode/decoderparams/Composite;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_DataMatrix(Lcom/cipherlab/barcode/decoderparams/DataMatrix;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 783
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetDataMatrix(Lcom/cipherlab/barcode/decoderparams/DataMatrix;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_DataMatrix(Lcom/cipherlab/barcode/decoderparams/DataMatrix;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1750
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetDataMatrix(Lcom/cipherlab/barcode/decoderparams/DataMatrix;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_DotCode(Lcom/cipherlab/barcode/decoderparams/DotCode;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 913
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetDotCode(Lcom/cipherlab/barcode/decoderparams/DotCode;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_DotCode(Lcom/cipherlab/barcode/decoderparams/DotCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1880
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetDotCode(Lcom/cipherlab/barcode/decoderparams/DotCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_DutchPostal(Lcom/cipherlab/barcode/decoderparams/DutchPostal;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 733
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetDutchPostal(Lcom/cipherlab/barcode/decoderparams/DutchPostal;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_DutchPostal(Lcom/cipherlab/barcode/decoderparams/DutchPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1700
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetDutchPostal(Lcom/cipherlab/barcode/decoderparams/DutchPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Ean13(Lcom/cipherlab/barcode/decoderparams/Ean13;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 639
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetEan13(Lcom/cipherlab/barcode/decoderparams/Ean13;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Ean13(Lcom/cipherlab/barcode/decoderparams/Ean13;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1606
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetEan13(Lcom/cipherlab/barcode/decoderparams/Ean13;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Ean8(Lcom/cipherlab/barcode/decoderparams/Ean8;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 629
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetEan8(Lcom/cipherlab/barcode/decoderparams/Ean8;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Ean8(Lcom/cipherlab/barcode/decoderparams/Ean8;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1596
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetEan8(Lcom/cipherlab/barcode/decoderparams/Ean8;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_FrenchPharmacode(Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 863
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetFrenchPharmacode(Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_FrenchPharmacode(Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1830
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetFrenchPharmacode(Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_GS1128(Lcom/cipherlab/barcode/decoderparams/GS1128;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 538
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetGS1128(Lcom/cipherlab/barcode/decoderparams/GS1128;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_GS1128(Lcom/cipherlab/barcode/decoderparams/GS1128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1505
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetGS1128(Lcom/cipherlab/barcode/decoderparams/GS1128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_GS1DataBar14(Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 588
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetGS1DataBar14(Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_GS1DataBar14(Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1555
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetGS1DataBar14(Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_GS1DataBarExpanded(Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 598
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetGS1DataBarExpanded(Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_GS1DataBarExpanded(Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1565
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetGS1DataBarExpanded(Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_GS1DataBarLimited(Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 609
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetGS1DataBarLimited(Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_GS1DataBarLimited(Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1576
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetGS1DataBarLimited(Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Hanxin(Lcom/cipherlab/barcode/decoderparams/Hanxin;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 893
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetHanxin(Lcom/cipherlab/barcode/decoderparams/Hanxin;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Hanxin(Lcom/cipherlab/barcode/decoderparams/Hanxin;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1860
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetHanxin(Lcom/cipherlab/barcode/decoderparams/Hanxin;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_ISBT128(Lcom/cipherlab/barcode/decoderparams/ISBT128;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 548
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetISBT128(Lcom/cipherlab/barcode/decoderparams/ISBT128;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_ISBT128(Lcom/cipherlab/barcode/decoderparams/ISBT128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1515
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetISBT128(Lcom/cipherlab/barcode/decoderparams/ISBT128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Industrial2Of5(Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 568
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetIndustrial2Of5(Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Industrial2Of5(Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1535
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetIndustrial2Of5(Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Interleaved2Of5(Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 578
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetInterleaved2Of5(Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Interleaved2Of5(Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1545
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetInterleaved2Of5(Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_JapanPostal(Lcom/cipherlab/barcode/decoderparams/JapanPostal;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 713
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetJapanPostal(Lcom/cipherlab/barcode/decoderparams/JapanPostal;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_JapanPostal(Lcom/cipherlab/barcode/decoderparams/JapanPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1680
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetJapanPostal(Lcom/cipherlab/barcode/decoderparams/JapanPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Korean3Of5(Lcom/cipherlab/barcode/decoderparams/Korean3Of5;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 488
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetKorean3Of5(Lcom/cipherlab/barcode/decoderparams/Korean3Of5;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Korean3Of5(Lcom/cipherlab/barcode/decoderparams/Korean3Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1455
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetKorean3Of5(Lcom/cipherlab/barcode/decoderparams/Korean3Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Laetus(Lcom/cipherlab/barcode/decoderparams/Laetus;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 883
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetLaetus(Lcom/cipherlab/barcode/decoderparams/Laetus;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Laetus(Lcom/cipherlab/barcode/decoderparams/Laetus;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1850
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetLaetus(Lcom/cipherlab/barcode/decoderparams/Laetus;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_MRZ(Lcom/cipherlab/barcode/decoderparams/MRZ;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 903
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetMRZ(Lcom/cipherlab/barcode/decoderparams/MRZ;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_MRZ(Lcom/cipherlab/barcode/decoderparams/MRZ;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1870
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetMRZ(Lcom/cipherlab/barcode/decoderparams/MRZ;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Matrix2Of5(Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 679
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetMatrix2Of5(Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Matrix2Of5(Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1646
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetMatrix2Of5(Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_MaxiCode(Lcom/cipherlab/barcode/decoderparams/MaxiCode;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 793
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetMaxiCode(Lcom/cipherlab/barcode/decoderparams/MaxiCode;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_MaxiCode(Lcom/cipherlab/barcode/decoderparams/MaxiCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1760
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetMaxiCode(Lcom/cipherlab/barcode/decoderparams/MaxiCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_MicroPDF417(Lcom/cipherlab/barcode/decoderparams/MicroPDF417;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 773
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetMicroPDF417(Lcom/cipherlab/barcode/decoderparams/MicroPDF417;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_MicroPDF417(Lcom/cipherlab/barcode/decoderparams/MicroPDF417;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1740
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetMicroPDF417(Lcom/cipherlab/barcode/decoderparams/MicroPDF417;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_MicroQR(Lcom/cipherlab/barcode/decoderparams/MicroQR;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 813
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetMicroQR(Lcom/cipherlab/barcode/decoderparams/MicroQR;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_MicroQR(Lcom/cipherlab/barcode/decoderparams/MicroQR;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1780
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetMicroQR(Lcom/cipherlab/barcode/decoderparams/MicroQR;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Msi(Lcom/cipherlab/barcode/decoderparams/Msi;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 619
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetMsi(Lcom/cipherlab/barcode/decoderparams/Msi;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Msi(Lcom/cipherlab/barcode/decoderparams/Msi;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1586
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetMsi(Lcom/cipherlab/barcode/decoderparams/Msi;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_PDF417(Lcom/cipherlab/barcode/decoderparams/PDF417;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 763
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetPDF417(Lcom/cipherlab/barcode/decoderparams/PDF417;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_PDF417(Lcom/cipherlab/barcode/decoderparams/PDF417;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1730
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetPDF417(Lcom/cipherlab/barcode/decoderparams/PDF417;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Plessey(Lcom/cipherlab/barcode/decoderparams/Plessey;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 843
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetPlessey(Lcom/cipherlab/barcode/decoderparams/Plessey;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Plessey(Lcom/cipherlab/barcode/decoderparams/Plessey;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1810
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetPlessey(Lcom/cipherlab/barcode/decoderparams/Plessey;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_QRCode(Lcom/cipherlab/barcode/decoderparams/QRCode;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 803
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetQRCode(Lcom/cipherlab/barcode/decoderparams/QRCode;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_QRCode(Lcom/cipherlab/barcode/decoderparams/QRCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1770
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetQRCode(Lcom/cipherlab/barcode/decoderparams/QRCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Telepen(Lcom/cipherlab/barcode/decoderparams/Telepen;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 853
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetTelepen(Lcom/cipherlab/barcode/decoderparams/Telepen;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_Telepen(Lcom/cipherlab/barcode/decoderparams/Telepen;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1820
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetTelepen(Lcom/cipherlab/barcode/decoderparams/Telepen;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_TriopticCode39(Lcom/cipherlab/barcode/decoderparams/TriopticCode39;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 478
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetTriopticCode39(Lcom/cipherlab/barcode/decoderparams/TriopticCode39;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_TriopticCode39(Lcom/cipherlab/barcode/decoderparams/TriopticCode39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1445
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetTriopticCode39(Lcom/cipherlab/barcode/decoderparams/TriopticCode39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_UKPostal(Lcom/cipherlab/barcode/decoderparams/UKPostal;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 703
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetUKPostal(Lcom/cipherlab/barcode/decoderparams/UKPostal;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_UKPostal(Lcom/cipherlab/barcode/decoderparams/UKPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1670
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetUKPostal(Lcom/cipherlab/barcode/decoderparams/UKPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_UPUFICSPostal(Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 753
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetUPUFICSPostal(Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_UPUFICSPostal(Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1720
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetUPUFICSPostal(Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_USPSPostal(Lcom/cipherlab/barcode/decoderparams/USPSPostal;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 743
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetUSPSPostal(Lcom/cipherlab/barcode/decoderparams/USPSPostal;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_USPSPostal(Lcom/cipherlab/barcode/decoderparams/USPSPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1710
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetUSPSPostal(Lcom/cipherlab/barcode/decoderparams/USPSPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_USPostal(Lcom/cipherlab/barcode/decoderparams/USPostal;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 693
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetUSPostal(Lcom/cipherlab/barcode/decoderparams/USPostal;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_USPostal(Lcom/cipherlab/barcode/decoderparams/USPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1660
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetUSPostal(Lcom/cipherlab/barcode/decoderparams/USPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_UccCoupon(Lcom/cipherlab/barcode/decoderparams/UccCoupon;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 833
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetUccCoupon(Lcom/cipherlab/barcode/decoderparams/UccCoupon;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_UccCoupon(Lcom/cipherlab/barcode/decoderparams/UccCoupon;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1800
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetUccCoupon(Lcom/cipherlab/barcode/decoderparams/UccCoupon;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_UpcA(Lcom/cipherlab/barcode/decoderparams/UpcA;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 649
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetUpcA(Lcom/cipherlab/barcode/decoderparams/UpcA;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_UpcA(Lcom/cipherlab/barcode/decoderparams/UpcA;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1616
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetUpcA(Lcom/cipherlab/barcode/decoderparams/UpcA;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_UpcE(Lcom/cipherlab/barcode/decoderparams/UpcE;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 659
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetUpcE(Lcom/cipherlab/barcode/decoderparams/UpcE;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_UpcE(Lcom/cipherlab/barcode/decoderparams/UpcE;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1626
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetUpcE(Lcom/cipherlab/barcode/decoderparams/UpcE;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_UpcE1(Lcom/cipherlab/barcode/decoderparams/UpcE1;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 669
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetUpcE1(Lcom/cipherlab/barcode/decoderparams/UpcE1;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Get_UpcE1(Lcom/cipherlab/barcode/decoderparams/UpcE1;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1636
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetUpcE1(Lcom/cipherlab/barcode/decoderparams/UpcE1;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method public static InitInstance(Landroid/content/Context;)Lcom/cipherlab/barcode/ReaderManager;
    .registers 3

    .line 69
    sput-object p0, Lcom/cipherlab/barcode/ReaderManager;->mContext:Landroid/content/Context;

    .line 70
    sget-object p0, Lcom/cipherlab/barcode/ReaderManager;->_instance:Lcom/cipherlab/barcode/ReaderManager;

    const-string v0, "ReaderManager"

    if-nez p0, :cond_10

    .line 72
    new-instance p0, Lcom/cipherlab/barcode/ReaderManager;

    invoke-direct {p0}, Lcom/cipherlab/barcode/ReaderManager;-><init>()V

    sput-object p0, Lcom/cipherlab/barcode/ReaderManager;->_instance:Lcom/cipherlab/barcode/ReaderManager;

    goto :goto_20

    .line 74
    :cond_10
    sget-object p0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    iget-boolean p0, p0, Lcom/cipherlab/barcode/ReaderManagerAPI;->bindServiceFlag:Z

    if-eqz p0, :cond_20

    .line 80
    sget-object p0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {p0}, Lcom/cipherlab/barcode/ReaderManagerAPI;->Intent_ReaderService_Connected()V

    const-string p0, "[InitInstance] Broadcast Intent_READERSERVICE_CONNECTED"

    .line 82
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_20
    :goto_20
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "_instance(ReaderManager) hashcode is "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cipherlab/barcode/ReaderManager;->_instance:Lcom/cipherlab/barcode/ReaderManager;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "_instance(ReaderManager) is "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cipherlab/barcode/ReaderManager;->_instance:Lcom/cipherlab/barcode/ReaderManager;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget-object p0, Lcom/cipherlab/barcode/ReaderManager;->_instance:Lcom/cipherlab/barcode/ReaderManager;

    return-object p0
.end method

.method private Set_AustralianPostal(Lcom/cipherlab/barcode/decoderparams/AustralianPostal;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 728
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetAustralianPostal(Lcom/cipherlab/barcode/decoderparams/AustralianPostal;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_AustralianPostal(Lcom/cipherlab/barcode/decoderparams/AustralianPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1695
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetAustralianPostal(Lcom/cipherlab/barcode/decoderparams/AustralianPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Aztec(Lcom/cipherlab/barcode/decoderparams/Aztec;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 828
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetAztec(Lcom/cipherlab/barcode/decoderparams/Aztec;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Aztec(Lcom/cipherlab/barcode/decoderparams/Aztec;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1795
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetAztec(Lcom/cipherlab/barcode/decoderparams/Aztec;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Chinese2Of5(Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 553
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetChinese2Of5(Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Chinese2Of5(Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1520
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetChinese2Of5(Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Cip39(Lcom/cipherlab/barcode/decoderparams/Cip39;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 878
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetCip39(Lcom/cipherlab/barcode/decoderparams/Cip39;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Cip39(Lcom/cipherlab/barcode/decoderparams/Cip39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1845
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetCip39(Lcom/cipherlab/barcode/decoderparams/Cip39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Codabar(Lcom/cipherlab/barcode/decoderparams/Codabar;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 513
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetCodabar(Lcom/cipherlab/barcode/decoderparams/Codabar;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Codabar(Lcom/cipherlab/barcode/decoderparams/Codabar;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1480
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetCodabar(Lcom/cipherlab/barcode/decoderparams/Codabar;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Code11(Lcom/cipherlab/barcode/decoderparams/Code11;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 503
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetCode11(Lcom/cipherlab/barcode/decoderparams/Code11;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Code11(Lcom/cipherlab/barcode/decoderparams/Code11;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1470
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetCode11(Lcom/cipherlab/barcode/decoderparams/Code11;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Code128(Lcom/cipherlab/barcode/decoderparams/Code128;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 523
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetCode128(Lcom/cipherlab/barcode/decoderparams/Code128;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Code128(Lcom/cipherlab/barcode/decoderparams/Code128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1490
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetCode128(Lcom/cipherlab/barcode/decoderparams/Code128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Code39(Lcom/cipherlab/barcode/decoderparams/Code39;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 463
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetCode39(Lcom/cipherlab/barcode/decoderparams/Code39;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Code39(Lcom/cipherlab/barcode/decoderparams/Code39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1430
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetCode39(Lcom/cipherlab/barcode/decoderparams/Code39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Code93(Lcom/cipherlab/barcode/decoderparams/Code93;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 493
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetCode93(Lcom/cipherlab/barcode/decoderparams/Code93;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Code93(Lcom/cipherlab/barcode/decoderparams/Code93;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1460
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetCode93(Lcom/cipherlab/barcode/decoderparams/Code93;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Composite(Lcom/cipherlab/barcode/decoderparams/Composite;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 688
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetComposite(Lcom/cipherlab/barcode/decoderparams/Composite;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Composite(Lcom/cipherlab/barcode/decoderparams/Composite;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1655
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetComposite(Lcom/cipherlab/barcode/decoderparams/Composite;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_DataMatrix(Lcom/cipherlab/barcode/decoderparams/DataMatrix;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 788
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetDataMatrix(Lcom/cipherlab/barcode/decoderparams/DataMatrix;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_DataMatrix(Lcom/cipherlab/barcode/decoderparams/DataMatrix;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1755
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetDataMatrix(Lcom/cipherlab/barcode/decoderparams/DataMatrix;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_DotCode(Lcom/cipherlab/barcode/decoderparams/DotCode;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 918
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetDotCode(Lcom/cipherlab/barcode/decoderparams/DotCode;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_DotCode(Lcom/cipherlab/barcode/decoderparams/DotCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1885
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetDotCode(Lcom/cipherlab/barcode/decoderparams/DotCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_DutchPostal(Lcom/cipherlab/barcode/decoderparams/DutchPostal;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 738
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetDutchPostal(Lcom/cipherlab/barcode/decoderparams/DutchPostal;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_DutchPostal(Lcom/cipherlab/barcode/decoderparams/DutchPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1705
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetDutchPostal(Lcom/cipherlab/barcode/decoderparams/DutchPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Ean13(Lcom/cipherlab/barcode/decoderparams/Ean13;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 634
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetEan13(Lcom/cipherlab/barcode/decoderparams/Ean13;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Ean13(Lcom/cipherlab/barcode/decoderparams/Ean13;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1601
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetEan13(Lcom/cipherlab/barcode/decoderparams/Ean13;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Ean8(Lcom/cipherlab/barcode/decoderparams/Ean8;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 624
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetEan8(Lcom/cipherlab/barcode/decoderparams/Ean8;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Ean8(Lcom/cipherlab/barcode/decoderparams/Ean8;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1591
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetEan8(Lcom/cipherlab/barcode/decoderparams/Ean8;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_FrenchPharmacode(Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 868
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetFrenchPharmacode(Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_FrenchPharmacode(Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1835
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetFrenchPharmacode(Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_GS1128(Lcom/cipherlab/barcode/decoderparams/GS1128;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 533
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetGS1128(Lcom/cipherlab/barcode/decoderparams/GS1128;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_GS1128(Lcom/cipherlab/barcode/decoderparams/GS1128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1500
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetGS1128(Lcom/cipherlab/barcode/decoderparams/GS1128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_GS1DataBar14(Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 583
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetGS1DataBar14(Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_GS1DataBar14(Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1550
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetGS1DataBar14(Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_GS1DataBarExpanded(Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 593
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetGS1DataBarExpanded(Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_GS1DataBarExpanded(Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1560
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetGS1DataBarExpanded(Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_GS1DataBarLimited(Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 604
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetGS1DataBarLimited(Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_GS1DataBarLimited(Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1571
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetGS1DataBarLimited(Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Hanxin(Lcom/cipherlab/barcode/decoderparams/Hanxin;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 898
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetHanxin(Lcom/cipherlab/barcode/decoderparams/Hanxin;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Hanxin(Lcom/cipherlab/barcode/decoderparams/Hanxin;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1865
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetHanxin(Lcom/cipherlab/barcode/decoderparams/Hanxin;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_ISBT128(Lcom/cipherlab/barcode/decoderparams/ISBT128;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 543
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetISBT128(Lcom/cipherlab/barcode/decoderparams/ISBT128;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_ISBT128(Lcom/cipherlab/barcode/decoderparams/ISBT128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1510
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetISBT128(Lcom/cipherlab/barcode/decoderparams/ISBT128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Industrial2Of5(Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 563
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetIndustrial2Of5(Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Industrial2Of5(Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1530
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetIndustrial2Of5(Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Interleaved2Of5(Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 573
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetInterleaved2Of5(Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Interleaved2Of5(Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1540
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetInterleaved2Of5(Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_JapanPostal(Lcom/cipherlab/barcode/decoderparams/JapanPostal;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 718
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetJapanPostal(Lcom/cipherlab/barcode/decoderparams/JapanPostal;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_JapanPostal(Lcom/cipherlab/barcode/decoderparams/JapanPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1685
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetJapanPostal(Lcom/cipherlab/barcode/decoderparams/JapanPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Korean3Of5(Lcom/cipherlab/barcode/decoderparams/Korean3Of5;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 483
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetKorean3Of5(Lcom/cipherlab/barcode/decoderparams/Korean3Of5;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Korean3Of5(Lcom/cipherlab/barcode/decoderparams/Korean3Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1450
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetKorean3Of5(Lcom/cipherlab/barcode/decoderparams/Korean3Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Laetus(Lcom/cipherlab/barcode/decoderparams/Laetus;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 888
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetLaetus(Lcom/cipherlab/barcode/decoderparams/Laetus;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Laetus(Lcom/cipherlab/barcode/decoderparams/Laetus;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1855
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetLaetus(Lcom/cipherlab/barcode/decoderparams/Laetus;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_MRZ(Lcom/cipherlab/barcode/decoderparams/MRZ;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 908
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetMRZ(Lcom/cipherlab/barcode/decoderparams/MRZ;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_MRZ(Lcom/cipherlab/barcode/decoderparams/MRZ;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1875
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetMRZ(Lcom/cipherlab/barcode/decoderparams/MRZ;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Matrix2Of5(Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 674
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetMatrix2Of5(Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Matrix2Of5(Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1641
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetMatrix2Of5(Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_MaxiCode(Lcom/cipherlab/barcode/decoderparams/MaxiCode;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 798
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetMaxiCode(Lcom/cipherlab/barcode/decoderparams/MaxiCode;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_MaxiCode(Lcom/cipherlab/barcode/decoderparams/MaxiCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1765
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetMaxiCode(Lcom/cipherlab/barcode/decoderparams/MaxiCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_MicroPDF417(Lcom/cipherlab/barcode/decoderparams/MicroPDF417;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 778
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetMicroPDF417(Lcom/cipherlab/barcode/decoderparams/MicroPDF417;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_MicroPDF417(Lcom/cipherlab/barcode/decoderparams/MicroPDF417;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1745
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetMicroPDF417(Lcom/cipherlab/barcode/decoderparams/MicroPDF417;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_MicroQR(Lcom/cipherlab/barcode/decoderparams/MicroQR;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 818
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetMicroQR(Lcom/cipherlab/barcode/decoderparams/MicroQR;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_MicroQR(Lcom/cipherlab/barcode/decoderparams/MicroQR;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1785
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetMicroQR(Lcom/cipherlab/barcode/decoderparams/MicroQR;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Msi(Lcom/cipherlab/barcode/decoderparams/Msi;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 614
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetMsi(Lcom/cipherlab/barcode/decoderparams/Msi;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Msi(Lcom/cipherlab/barcode/decoderparams/Msi;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1581
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetMsi(Lcom/cipherlab/barcode/decoderparams/Msi;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_PDF417(Lcom/cipherlab/barcode/decoderparams/PDF417;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 768
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetPDF417(Lcom/cipherlab/barcode/decoderparams/PDF417;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_PDF417(Lcom/cipherlab/barcode/decoderparams/PDF417;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1735
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetPDF417(Lcom/cipherlab/barcode/decoderparams/PDF417;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Plessey(Lcom/cipherlab/barcode/decoderparams/Plessey;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 848
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetPlessey(Lcom/cipherlab/barcode/decoderparams/Plessey;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Plessey(Lcom/cipherlab/barcode/decoderparams/Plessey;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1815
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetPlessey(Lcom/cipherlab/barcode/decoderparams/Plessey;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_QRCode(Lcom/cipherlab/barcode/decoderparams/QRCode;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 808
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetQRCode(Lcom/cipherlab/barcode/decoderparams/QRCode;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_QRCode(Lcom/cipherlab/barcode/decoderparams/QRCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1775
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetQRCode(Lcom/cipherlab/barcode/decoderparams/QRCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Telepen(Lcom/cipherlab/barcode/decoderparams/Telepen;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 858
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetTelepen(Lcom/cipherlab/barcode/decoderparams/Telepen;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_Telepen(Lcom/cipherlab/barcode/decoderparams/Telepen;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1825
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetTelepen(Lcom/cipherlab/barcode/decoderparams/Telepen;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_TriopticCode39(Lcom/cipherlab/barcode/decoderparams/TriopticCode39;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 473
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetTriopticCode39(Lcom/cipherlab/barcode/decoderparams/TriopticCode39;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_TriopticCode39(Lcom/cipherlab/barcode/decoderparams/TriopticCode39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1440
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetTriopticCode39(Lcom/cipherlab/barcode/decoderparams/TriopticCode39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_UKPostal(Lcom/cipherlab/barcode/decoderparams/UKPostal;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 708
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetUKPostal(Lcom/cipherlab/barcode/decoderparams/UKPostal;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_UKPostal(Lcom/cipherlab/barcode/decoderparams/UKPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1675
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetUKPostal(Lcom/cipherlab/barcode/decoderparams/UKPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_UPUFICSPostal(Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 758
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetUPUFICSPostal(Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_UPUFICSPostal(Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1725
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetUPUFICSPostal(Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_USPSPostal(Lcom/cipherlab/barcode/decoderparams/USPSPostal;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 748
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetUSPSPostal(Lcom/cipherlab/barcode/decoderparams/USPSPostal;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_USPSPostal(Lcom/cipherlab/barcode/decoderparams/USPSPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1715
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetUSPSPostal(Lcom/cipherlab/barcode/decoderparams/USPSPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_USPostal(Lcom/cipherlab/barcode/decoderparams/USPostal;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 698
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetUSPostal(Lcom/cipherlab/barcode/decoderparams/USPostal;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_USPostal(Lcom/cipherlab/barcode/decoderparams/USPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1665
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetUSPostal(Lcom/cipherlab/barcode/decoderparams/USPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_UccCoupon(Lcom/cipherlab/barcode/decoderparams/UccCoupon;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 838
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetUccCoupon(Lcom/cipherlab/barcode/decoderparams/UccCoupon;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_UccCoupon(Lcom/cipherlab/barcode/decoderparams/UccCoupon;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1805
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetUccCoupon(Lcom/cipherlab/barcode/decoderparams/UccCoupon;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_UpcA(Lcom/cipherlab/barcode/decoderparams/UpcA;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 644
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetUpcA(Lcom/cipherlab/barcode/decoderparams/UpcA;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_UpcA(Lcom/cipherlab/barcode/decoderparams/UpcA;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1611
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetUpcA(Lcom/cipherlab/barcode/decoderparams/UpcA;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_UpcE(Lcom/cipherlab/barcode/decoderparams/UpcE;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 654
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetUpcE(Lcom/cipherlab/barcode/decoderparams/UpcE;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_UpcE(Lcom/cipherlab/barcode/decoderparams/UpcE;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1621
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetUpcE(Lcom/cipherlab/barcode/decoderparams/UpcE;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_UpcE1(Lcom/cipherlab/barcode/decoderparams/UpcE1;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 664
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetUpcE1(Lcom/cipherlab/barcode/decoderparams/UpcE1;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private Set_UpcE1(Lcom/cipherlab/barcode/decoderparams/UpcE1;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1631
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetUpcE1(Lcom/cipherlab/barcode/decoderparams/UpcE1;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method private isReaderServiceRunning()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public CopyProfile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 2079
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->CopyProfile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method public CreateProfile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 2030
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->CreateProfile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method public GetActive()Z
    .registers 2

    .line 1067
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetActive()Z

    move-result v0

    return v0
.end method

.method public GetActive(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Z
    .registers 3

    .line 2009
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetActive(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Z

    move-result p1

    return p1
.end method

.method public GetBarcodeAPIVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "1.1.29"

    return-object v0
.end method

.method public GetLastError()Ljava/lang/String;
    .registers 2

    .line 1114
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetLastError()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetProfileList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cipherlab/barcode/decoderparams/ReaderProfile;",
            ">;"
        }
    .end annotation

    .line 2053
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetProfileList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public GetReaderCallbackStatus()Z
    .registers 6

    .line 1104
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManager;->mMyReaderManagerSemaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 1105
    :try_start_3
    sget-object v1, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetReaderCallbackState()Z

    move-result v1

    const-string v2, "ReaderManager"

    .line 1106
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetReaderCallbackStatus() + bRetVal = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    monitor-exit v0

    return v1

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public GetReaderType()Lcom/cipherlab/barcode/decoder/BcReaderType;
    .registers 2

    .line 98
    sget-object v0, Lcom/cipherlab/barcode/decoder/BcReaderType;->None:Lcom/cipherlab/barcode/decoder/BcReaderType;

    .line 99
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetReaderTypeFromService()Lcom/cipherlab/barcode/decoder/BcReaderType;

    move-result-object v0

    return-object v0
.end method

.method public GetScannerVersion()Ljava/lang/String;
    .registers 2

    .line 1071
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetScannerVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Get_BarcodeServiceVer()Ljava/lang/String;
    .registers 2

    .line 154
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetBarcodeServiceVer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Get_Decoders_Status(Lcom/cipherlab/barcode/decoder/Decoders;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 944
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetSymbologySwitch(Lcom/cipherlab/barcode/decoder/Decoders;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method public Get_Decoders_Status(Lcom/cipherlab/barcode/decoder/Decoders;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1911
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetSymbologySwitch(Lcom/cipherlab/barcode/decoder/Decoders;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method public Get_NotificationParams(Lcom/cipherlab/barcode/decoderparams/NotificationParams;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 996
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetNotificationParams(Lcom/cipherlab/barcode/decoderparams/NotificationParams;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method public Get_NotificationParams(Lcom/cipherlab/barcode/decoderparams/NotificationParams;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1963
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetNotificationParams(Lcom/cipherlab/barcode/decoderparams/NotificationParams;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method public Get_ReaderOutputConfiguration(Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1022
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetDataOutputSettings(Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method public Get_ReaderOutputConfiguration(Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1989
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetDataOutputSettings(Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method public Get_Symbology(Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Get_Symbology type is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;->GetSymbologyType()Lcom/cipherlab/barcode/decoder/SymbologyType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-static {}, Lcom/cipherlab/barcode/ReaderManager;->$SWITCH_TABLE$com$cipherlab$barcode$decoder$SymbologyType()[I

    move-result-object v0

    invoke-interface {p1}, Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;->GetSymbologyType()Lcom/cipherlab/barcode/decoder/SymbologyType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16e

    .line 457
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->Err_NotSupport:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1

    .line 455
    :pswitch_2b
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/DotCode;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_DotCode(Lcom/cipherlab/barcode/decoderparams/DotCode;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 453
    :pswitch_32
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/MRZ;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_MRZ(Lcom/cipherlab/barcode/decoderparams/MRZ;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 451
    :pswitch_39
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Hanxin;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_Hanxin(Lcom/cipherlab/barcode/decoderparams/Hanxin;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 449
    :pswitch_40
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Laetus;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_Laetus(Lcom/cipherlab/barcode/decoderparams/Laetus;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 447
    :pswitch_47
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_FrenchPharmacode(Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 445
    :pswitch_4e
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Cip39;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_Cip39(Lcom/cipherlab/barcode/decoderparams/Cip39;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 443
    :pswitch_55
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Telepen;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_Telepen(Lcom/cipherlab/barcode/decoderparams/Telepen;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 441
    :pswitch_5c
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Plessey;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_Plessey(Lcom/cipherlab/barcode/decoderparams/Plessey;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 373
    :pswitch_63
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Korean3Of5;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_Korean3Of5(Lcom/cipherlab/barcode/decoderparams/Korean3Of5;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 439
    :pswitch_6a
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Aztec;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_Aztec(Lcom/cipherlab/barcode/decoderparams/Aztec;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 437
    :pswitch_71
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/MicroQR;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_MicroQR(Lcom/cipherlab/barcode/decoderparams/MicroQR;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 435
    :pswitch_78
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/QRCode;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_QRCode(Lcom/cipherlab/barcode/decoderparams/QRCode;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 433
    :pswitch_7f
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/MaxiCode;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_MaxiCode(Lcom/cipherlab/barcode/decoderparams/MaxiCode;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 431
    :pswitch_86
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/DataMatrix;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_DataMatrix(Lcom/cipherlab/barcode/decoderparams/DataMatrix;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 429
    :pswitch_8d
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/MicroPDF417;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_MicroPDF417(Lcom/cipherlab/barcode/decoderparams/MicroPDF417;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 427
    :pswitch_94
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/PDF417;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_PDF417(Lcom/cipherlab/barcode/decoderparams/PDF417;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 425
    :pswitch_9b
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_UPUFICSPostal(Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 423
    :pswitch_a2
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/USPSPostal;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_USPSPostal(Lcom/cipherlab/barcode/decoderparams/USPSPostal;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 421
    :pswitch_a9
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/DutchPostal;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_DutchPostal(Lcom/cipherlab/barcode/decoderparams/DutchPostal;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 419
    :pswitch_b0
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_AustralianPostal(Lcom/cipherlab/barcode/decoderparams/AustralianPostal;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 417
    :pswitch_b7
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/JapanPostal;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_JapanPostal(Lcom/cipherlab/barcode/decoderparams/JapanPostal;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 415
    :pswitch_be
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/UKPostal;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_UKPostal(Lcom/cipherlab/barcode/decoderparams/UKPostal;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 413
    :pswitch_c5
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/USPostal;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_USPostal(Lcom/cipherlab/barcode/decoderparams/USPostal;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 411
    :pswitch_cc
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Composite;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_Composite(Lcom/cipherlab/barcode/decoderparams/Composite;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 409
    :pswitch_d3
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/UpcE1;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_UpcE1(Lcom/cipherlab/barcode/decoderparams/UpcE1;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 407
    :pswitch_da
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/UpcE;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_UpcE(Lcom/cipherlab/barcode/decoderparams/UpcE;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 405
    :pswitch_e1
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/UpcA;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_UpcA(Lcom/cipherlab/barcode/decoderparams/UpcA;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 391
    :pswitch_e8
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/UccCoupon;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_UccCoupon(Lcom/cipherlab/barcode/decoderparams/UccCoupon;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 403
    :pswitch_ef
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Ean13;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_Ean13(Lcom/cipherlab/barcode/decoderparams/Ean13;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 401
    :pswitch_f6
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Ean8;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_Ean8(Lcom/cipherlab/barcode/decoderparams/Ean8;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 399
    :pswitch_fd
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Msi;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_Msi(Lcom/cipherlab/barcode/decoderparams/Msi;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 397
    :pswitch_104
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_GS1DataBarLimited(Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 395
    :pswitch_10b
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_GS1DataBarExpanded(Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 393
    :pswitch_112
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_GS1DataBar14(Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 389
    :pswitch_119
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_Matrix2Of5(Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 387
    :pswitch_120
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_Interleaved2Of5(Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 385
    :pswitch_127
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_Industrial2Of5(Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 383
    :pswitch_12e
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_Chinese2Of5(Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 381
    :pswitch_135
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ISBT128;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_ISBT128(Lcom/cipherlab/barcode/decoderparams/ISBT128;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 379
    :pswitch_13c
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/GS1128;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_GS1128(Lcom/cipherlab/barcode/decoderparams/GS1128;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 377
    :pswitch_143
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Code128;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_Code128(Lcom/cipherlab/barcode/decoderparams/Code128;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 375
    :pswitch_14a
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Code93;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_Code93(Lcom/cipherlab/barcode/decoderparams/Code93;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 371
    :pswitch_151
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/TriopticCode39;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_TriopticCode39(Lcom/cipherlab/barcode/decoderparams/TriopticCode39;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 369
    :pswitch_158
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Code39;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_Code39(Lcom/cipherlab/barcode/decoderparams/Code39;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 367
    :pswitch_15f
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Code11;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_Code11(Lcom/cipherlab/barcode/decoderparams/Code11;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 365
    :pswitch_166
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Codabar;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Get_Codabar(Lcom/cipherlab/barcode/decoderparams/Codabar;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_16e
    .packed-switch 0x1
        :pswitch_166
        :pswitch_15f
        :pswitch_158
        :pswitch_151
        :pswitch_14a
        :pswitch_143
        :pswitch_13c
        :pswitch_135
        :pswitch_12e
        :pswitch_127
        :pswitch_120
        :pswitch_119
        :pswitch_112
        :pswitch_10b
        :pswitch_104
        :pswitch_fd
        :pswitch_f6
        :pswitch_ef
        :pswitch_e8
        :pswitch_e1
        :pswitch_da
        :pswitch_d3
        :pswitch_cc
        :pswitch_c5
        :pswitch_be
        :pswitch_b7
        :pswitch_b0
        :pswitch_a9
        :pswitch_a2
        :pswitch_9b
        :pswitch_94
        :pswitch_8d
        :pswitch_86
        :pswitch_7f
        :pswitch_78
        :pswitch_71
        :pswitch_6a
        :pswitch_63
        :pswitch_5c
        :pswitch_55
        :pswitch_4e
        :pswitch_47
        :pswitch_40
        :pswitch_39
        :pswitch_32
        :pswitch_2b
    .end packed-switch
.end method

.method public Get_Symbology(Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 5

    .line 1327
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Get_Symbology type is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;->GetSymbologyType()Lcom/cipherlab/barcode/decoder/SymbologyType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    invoke-static {}, Lcom/cipherlab/barcode/ReaderManager;->$SWITCH_TABLE$com$cipherlab$barcode$decoder$SymbologyType()[I

    move-result-object v0

    invoke-interface {p1}, Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;->GetSymbologyType()Lcom/cipherlab/barcode/decoder/SymbologyType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16e

    .line 1424
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->Err_NotSupport:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1

    .line 1422
    :pswitch_2b
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/DotCode;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_DotCode(Lcom/cipherlab/barcode/decoderparams/DotCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1420
    :pswitch_32
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/MRZ;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_MRZ(Lcom/cipherlab/barcode/decoderparams/MRZ;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1418
    :pswitch_39
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Hanxin;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_Hanxin(Lcom/cipherlab/barcode/decoderparams/Hanxin;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1416
    :pswitch_40
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Laetus;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_Laetus(Lcom/cipherlab/barcode/decoderparams/Laetus;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1414
    :pswitch_47
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_FrenchPharmacode(Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1412
    :pswitch_4e
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Cip39;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_Cip39(Lcom/cipherlab/barcode/decoderparams/Cip39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1410
    :pswitch_55
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Telepen;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_Telepen(Lcom/cipherlab/barcode/decoderparams/Telepen;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1408
    :pswitch_5c
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Plessey;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_Plessey(Lcom/cipherlab/barcode/decoderparams/Plessey;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1340
    :pswitch_63
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Korean3Of5;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_Korean3Of5(Lcom/cipherlab/barcode/decoderparams/Korean3Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1406
    :pswitch_6a
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Aztec;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_Aztec(Lcom/cipherlab/barcode/decoderparams/Aztec;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1404
    :pswitch_71
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/MicroQR;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_MicroQR(Lcom/cipherlab/barcode/decoderparams/MicroQR;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1402
    :pswitch_78
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/QRCode;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_QRCode(Lcom/cipherlab/barcode/decoderparams/QRCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1400
    :pswitch_7f
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/MaxiCode;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_MaxiCode(Lcom/cipherlab/barcode/decoderparams/MaxiCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1398
    :pswitch_86
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/DataMatrix;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_DataMatrix(Lcom/cipherlab/barcode/decoderparams/DataMatrix;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1396
    :pswitch_8d
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/MicroPDF417;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_MicroPDF417(Lcom/cipherlab/barcode/decoderparams/MicroPDF417;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1394
    :pswitch_94
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/PDF417;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_PDF417(Lcom/cipherlab/barcode/decoderparams/PDF417;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1392
    :pswitch_9b
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_UPUFICSPostal(Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1390
    :pswitch_a2
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/USPSPostal;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_USPSPostal(Lcom/cipherlab/barcode/decoderparams/USPSPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1388
    :pswitch_a9
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/DutchPostal;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_DutchPostal(Lcom/cipherlab/barcode/decoderparams/DutchPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1386
    :pswitch_b0
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_AustralianPostal(Lcom/cipherlab/barcode/decoderparams/AustralianPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1384
    :pswitch_b7
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/JapanPostal;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_JapanPostal(Lcom/cipherlab/barcode/decoderparams/JapanPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1382
    :pswitch_be
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/UKPostal;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_UKPostal(Lcom/cipherlab/barcode/decoderparams/UKPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1380
    :pswitch_c5
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/USPostal;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_USPostal(Lcom/cipherlab/barcode/decoderparams/USPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1378
    :pswitch_cc
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Composite;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_Composite(Lcom/cipherlab/barcode/decoderparams/Composite;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1376
    :pswitch_d3
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/UpcE1;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_UpcE1(Lcom/cipherlab/barcode/decoderparams/UpcE1;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1374
    :pswitch_da
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/UpcE;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_UpcE(Lcom/cipherlab/barcode/decoderparams/UpcE;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1372
    :pswitch_e1
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/UpcA;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_UpcA(Lcom/cipherlab/barcode/decoderparams/UpcA;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1358
    :pswitch_e8
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/UccCoupon;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_UccCoupon(Lcom/cipherlab/barcode/decoderparams/UccCoupon;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1370
    :pswitch_ef
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Ean13;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_Ean13(Lcom/cipherlab/barcode/decoderparams/Ean13;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1368
    :pswitch_f6
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Ean8;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_Ean8(Lcom/cipherlab/barcode/decoderparams/Ean8;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1366
    :pswitch_fd
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Msi;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_Msi(Lcom/cipherlab/barcode/decoderparams/Msi;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1364
    :pswitch_104
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_GS1DataBarLimited(Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1362
    :pswitch_10b
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_GS1DataBarExpanded(Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1360
    :pswitch_112
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_GS1DataBar14(Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1356
    :pswitch_119
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_Matrix2Of5(Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1354
    :pswitch_120
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_Interleaved2Of5(Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1352
    :pswitch_127
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_Industrial2Of5(Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1350
    :pswitch_12e
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_Chinese2Of5(Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1348
    :pswitch_135
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ISBT128;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_ISBT128(Lcom/cipherlab/barcode/decoderparams/ISBT128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1346
    :pswitch_13c
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/GS1128;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_GS1128(Lcom/cipherlab/barcode/decoderparams/GS1128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1344
    :pswitch_143
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Code128;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_Code128(Lcom/cipherlab/barcode/decoderparams/Code128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1342
    :pswitch_14a
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Code93;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_Code93(Lcom/cipherlab/barcode/decoderparams/Code93;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1338
    :pswitch_151
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/TriopticCode39;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_TriopticCode39(Lcom/cipherlab/barcode/decoderparams/TriopticCode39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1336
    :pswitch_158
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Code39;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_Code39(Lcom/cipherlab/barcode/decoderparams/Code39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1334
    :pswitch_15f
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Code11;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_Code11(Lcom/cipherlab/barcode/decoderparams/Code11;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1332
    :pswitch_166
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Codabar;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Get_Codabar(Lcom/cipherlab/barcode/decoderparams/Codabar;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_16e
    .packed-switch 0x1
        :pswitch_166
        :pswitch_15f
        :pswitch_158
        :pswitch_151
        :pswitch_14a
        :pswitch_143
        :pswitch_13c
        :pswitch_135
        :pswitch_12e
        :pswitch_127
        :pswitch_120
        :pswitch_119
        :pswitch_112
        :pswitch_10b
        :pswitch_104
        :pswitch_fd
        :pswitch_f6
        :pswitch_ef
        :pswitch_e8
        :pswitch_e1
        :pswitch_da
        :pswitch_d3
        :pswitch_cc
        :pswitch_c5
        :pswitch_be
        :pswitch_b7
        :pswitch_b0
        :pswitch_a9
        :pswitch_a2
        :pswitch_9b
        :pswitch_94
        :pswitch_8d
        :pswitch_86
        :pswitch_7f
        :pswitch_78
        :pswitch_71
        :pswitch_6a
        :pswitch_63
        :pswitch_5c
        :pswitch_55
        :pswitch_4e
        :pswitch_47
        :pswitch_40
        :pswitch_39
        :pswitch_32
        :pswitch_2b
    .end packed-switch
.end method

.method public Get_UserPreferences(Lcom/cipherlab/barcode/decoderparams/UserPreference;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 970
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetUserPreferences(Lcom/cipherlab/barcode/decoderparams/UserPreference;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method public Get_UserPreferences(Lcom/cipherlab/barcode/decoderparams/UserPreference;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1937
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->GetUserPreferences(Lcom/cipherlab/barcode/decoderparams/UserPreference;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method public Release()V
    .registers 2

    .line 126
    invoke-direct {p0}, Lcom/cipherlab/barcode/ReaderManager;->isReaderServiceRunning()Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    if-eqz v0, :cond_21

    .line 128
    invoke-virtual {v0}, Lcom/cipherlab/barcode/ReaderManagerAPI;->unbindBReaderService()V

    .line 130
    :try_start_d
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0}, Lcom/cipherlab/barcode/ReaderManagerAPI;->deinit()V
    :try_end_12
    .catch Ljava/security/InvalidParameterException; {:try_start_d .. :try_end_12} :catch_1d
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_12} :catch_18
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_13

    goto :goto_21

    :catch_13
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    :catch_18
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_21

    :catch_1d
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/security/InvalidParameterException;->printStackTrace()V

    .line 142
    :cond_21
    :goto_21
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->_instance:Lcom/cipherlab/barcode/ReaderManager;

    if-eqz v0, :cond_30

    .line 144
    :try_start_25
    invoke-virtual {v0}, Ljava/lang/Object;->finalize()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2d
    const/4 v0, 0x0

    .line 148
    sput-object v0, Lcom/cipherlab/barcode/ReaderManager;->_instance:Lcom/cipherlab/barcode/ReaderManager;

    :cond_30
    return-void
.end method

.method public RemoveProfile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 2066
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->RemoveProfile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method public ResetReaderToDefault()Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 2

    .line 1047
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0}, Lcom/cipherlab/barcode/ReaderManagerAPI;->Reset_Reader_To_Default()Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object v0

    return-object v0
.end method

.method public ResetReaderToDefault(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 2017
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->Reset_Reader_To_Default(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method public SetActive(Z)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1057
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetActive(Z)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method public SetActive(ZLcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1999
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetActive(ZLcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method public SetReaderCallback(Lcom/cipherlab/barcodebase/ReaderCallback;)V
    .registers 6

    .line 1094
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManager;->mMyReaderManagerSemaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 1095
    :try_start_3
    sget-object v1, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v1, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetReaderCallback(Lcom/cipherlab/barcodebase/ReaderCallback;)Lcom/cipherlab/barcode/decoder/ClResult;

    const-string v1, "ReaderManager"

    .line 1096
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SetReaderCallback() readerCallback = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public Set_Decoders_Status(Lcom/cipherlab/barcode/decoder/Decoders;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 931
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetSymbologySwitch(Lcom/cipherlab/barcode/decoder/Decoders;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method public Set_Decoders_Status(Lcom/cipherlab/barcode/decoder/Decoders;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1898
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetSymbologySwitch(Lcom/cipherlab/barcode/decoder/Decoders;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method public Set_NotificationParams(Lcom/cipherlab/barcode/decoderparams/NotificationParams;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 983
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetNotificationParams(Lcom/cipherlab/barcode/decoderparams/NotificationParams;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method public Set_NotificationParams(Lcom/cipherlab/barcode/decoderparams/NotificationParams;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1950
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetNotificationParams(Lcom/cipherlab/barcode/decoderparams/NotificationParams;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method public Set_ReaderOutputConfiguration(Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 1009
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetDataOutputSettings(Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method public Set_ReaderOutputConfiguration(Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1976
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetDataOutputSettings(Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method public Set_Symbology(Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set_Symbology type is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;->GetSymbologyType()Lcom/cipherlab/barcode/decoder/SymbologyType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {}, Lcom/cipherlab/barcode/ReaderManager;->$SWITCH_TABLE$com$cipherlab$barcode$decoder$SymbologyType()[I

    move-result-object v0

    invoke-interface {p1}, Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;->GetSymbologyType()Lcom/cipherlab/barcode/decoder/SymbologyType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16e

    .line 304
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->Err_NotSupport:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1

    .line 302
    :pswitch_2b
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/DotCode;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_DotCode(Lcom/cipherlab/barcode/decoderparams/DotCode;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 300
    :pswitch_32
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/MRZ;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_MRZ(Lcom/cipherlab/barcode/decoderparams/MRZ;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 298
    :pswitch_39
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Hanxin;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_Hanxin(Lcom/cipherlab/barcode/decoderparams/Hanxin;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 296
    :pswitch_40
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Laetus;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_Laetus(Lcom/cipherlab/barcode/decoderparams/Laetus;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 294
    :pswitch_47
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_FrenchPharmacode(Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 292
    :pswitch_4e
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Cip39;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_Cip39(Lcom/cipherlab/barcode/decoderparams/Cip39;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 290
    :pswitch_55
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Telepen;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_Telepen(Lcom/cipherlab/barcode/decoderparams/Telepen;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 288
    :pswitch_5c
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Plessey;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_Plessey(Lcom/cipherlab/barcode/decoderparams/Plessey;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 286
    :pswitch_63
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Korean3Of5;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_Korean3Of5(Lcom/cipherlab/barcode/decoderparams/Korean3Of5;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 284
    :pswitch_6a
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Aztec;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_Aztec(Lcom/cipherlab/barcode/decoderparams/Aztec;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 282
    :pswitch_71
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/MicroQR;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_MicroQR(Lcom/cipherlab/barcode/decoderparams/MicroQR;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 280
    :pswitch_78
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/QRCode;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_QRCode(Lcom/cipherlab/barcode/decoderparams/QRCode;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 278
    :pswitch_7f
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/MaxiCode;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_MaxiCode(Lcom/cipherlab/barcode/decoderparams/MaxiCode;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 276
    :pswitch_86
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/DataMatrix;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_DataMatrix(Lcom/cipherlab/barcode/decoderparams/DataMatrix;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 274
    :pswitch_8d
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/MicroPDF417;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_MicroPDF417(Lcom/cipherlab/barcode/decoderparams/MicroPDF417;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 272
    :pswitch_94
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/PDF417;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_PDF417(Lcom/cipherlab/barcode/decoderparams/PDF417;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 270
    :pswitch_9b
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_UPUFICSPostal(Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 268
    :pswitch_a2
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/USPSPostal;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_USPSPostal(Lcom/cipherlab/barcode/decoderparams/USPSPostal;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 266
    :pswitch_a9
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/DutchPostal;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_DutchPostal(Lcom/cipherlab/barcode/decoderparams/DutchPostal;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 264
    :pswitch_b0
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_AustralianPostal(Lcom/cipherlab/barcode/decoderparams/AustralianPostal;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 262
    :pswitch_b7
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/JapanPostal;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_JapanPostal(Lcom/cipherlab/barcode/decoderparams/JapanPostal;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 260
    :pswitch_be
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/UKPostal;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_UKPostal(Lcom/cipherlab/barcode/decoderparams/UKPostal;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 258
    :pswitch_c5
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/USPostal;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_USPostal(Lcom/cipherlab/barcode/decoderparams/USPostal;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 256
    :pswitch_cc
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Composite;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_Composite(Lcom/cipherlab/barcode/decoderparams/Composite;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 254
    :pswitch_d3
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/UpcE1;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_UpcE1(Lcom/cipherlab/barcode/decoderparams/UpcE1;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 252
    :pswitch_da
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/UpcE;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_UpcE(Lcom/cipherlab/barcode/decoderparams/UpcE;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 250
    :pswitch_e1
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/UpcA;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_UpcA(Lcom/cipherlab/barcode/decoderparams/UpcA;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 242
    :pswitch_e8
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/UccCoupon;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_UccCoupon(Lcom/cipherlab/barcode/decoderparams/UccCoupon;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 248
    :pswitch_ef
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Ean13;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_Ean13(Lcom/cipherlab/barcode/decoderparams/Ean13;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 246
    :pswitch_f6
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Ean8;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_Ean8(Lcom/cipherlab/barcode/decoderparams/Ean8;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 244
    :pswitch_fd
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Msi;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_Msi(Lcom/cipherlab/barcode/decoderparams/Msi;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 240
    :pswitch_104
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_GS1DataBarLimited(Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 238
    :pswitch_10b
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_GS1DataBarExpanded(Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 236
    :pswitch_112
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_GS1DataBar14(Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 220
    :pswitch_119
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_Matrix2Of5(Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 234
    :pswitch_120
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_Interleaved2Of5(Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 232
    :pswitch_127
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_Industrial2Of5(Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 230
    :pswitch_12e
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_Chinese2Of5(Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 228
    :pswitch_135
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ISBT128;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_ISBT128(Lcom/cipherlab/barcode/decoderparams/ISBT128;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 226
    :pswitch_13c
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/GS1128;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_GS1128(Lcom/cipherlab/barcode/decoderparams/GS1128;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 224
    :pswitch_143
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Code128;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_Code128(Lcom/cipherlab/barcode/decoderparams/Code128;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 222
    :pswitch_14a
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Code93;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_Code93(Lcom/cipherlab/barcode/decoderparams/Code93;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 218
    :pswitch_151
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/TriopticCode39;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_TriopticCode39(Lcom/cipherlab/barcode/decoderparams/TriopticCode39;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 216
    :pswitch_158
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Code39;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_Code39(Lcom/cipherlab/barcode/decoderparams/Code39;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 214
    :pswitch_15f
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Code11;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_Code11(Lcom/cipherlab/barcode/decoderparams/Code11;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 212
    :pswitch_166
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Codabar;

    invoke-direct {p0, p1}, Lcom/cipherlab/barcode/ReaderManager;->Set_Codabar(Lcom/cipherlab/barcode/decoderparams/Codabar;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_16e
    .packed-switch 0x1
        :pswitch_166
        :pswitch_15f
        :pswitch_158
        :pswitch_151
        :pswitch_14a
        :pswitch_143
        :pswitch_13c
        :pswitch_135
        :pswitch_12e
        :pswitch_127
        :pswitch_120
        :pswitch_119
        :pswitch_112
        :pswitch_10b
        :pswitch_104
        :pswitch_fd
        :pswitch_f6
        :pswitch_ef
        :pswitch_e8
        :pswitch_e1
        :pswitch_da
        :pswitch_d3
        :pswitch_cc
        :pswitch_c5
        :pswitch_be
        :pswitch_b7
        :pswitch_b0
        :pswitch_a9
        :pswitch_a2
        :pswitch_9b
        :pswitch_94
        :pswitch_8d
        :pswitch_86
        :pswitch_7f
        :pswitch_78
        :pswitch_71
        :pswitch_6a
        :pswitch_63
        :pswitch_5c
        :pswitch_55
        :pswitch_4e
        :pswitch_47
        :pswitch_40
        :pswitch_39
        :pswitch_32
        :pswitch_2b
    .end packed-switch
.end method

.method public Set_Symbology(Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 5

    .line 1174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set_Symbology type is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;->GetSymbologyType()Lcom/cipherlab/barcode/decoder/SymbologyType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    invoke-static {}, Lcom/cipherlab/barcode/ReaderManager;->$SWITCH_TABLE$com$cipherlab$barcode$decoder$SymbologyType()[I

    move-result-object v0

    invoke-interface {p1}, Lcom/cipherlab/barcode/decoderparams/SymbologyInterface;->GetSymbologyType()Lcom/cipherlab/barcode/decoder/SymbologyType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cipherlab/barcode/decoder/SymbologyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16e

    .line 1271
    sget-object p1, Lcom/cipherlab/barcode/decoder/ClResult;->Err_NotSupport:Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p1

    .line 1269
    :pswitch_2b
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/DotCode;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_DotCode(Lcom/cipherlab/barcode/decoderparams/DotCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1267
    :pswitch_32
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/MRZ;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_MRZ(Lcom/cipherlab/barcode/decoderparams/MRZ;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1265
    :pswitch_39
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Hanxin;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_Hanxin(Lcom/cipherlab/barcode/decoderparams/Hanxin;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1263
    :pswitch_40
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Laetus;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_Laetus(Lcom/cipherlab/barcode/decoderparams/Laetus;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1261
    :pswitch_47
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_FrenchPharmacode(Lcom/cipherlab/barcode/decoderparams/FrenchPharmacode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1259
    :pswitch_4e
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Cip39;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_Cip39(Lcom/cipherlab/barcode/decoderparams/Cip39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1257
    :pswitch_55
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Telepen;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_Telepen(Lcom/cipherlab/barcode/decoderparams/Telepen;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1255
    :pswitch_5c
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Plessey;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_Plessey(Lcom/cipherlab/barcode/decoderparams/Plessey;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1253
    :pswitch_63
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Korean3Of5;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_Korean3Of5(Lcom/cipherlab/barcode/decoderparams/Korean3Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1251
    :pswitch_6a
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Aztec;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_Aztec(Lcom/cipherlab/barcode/decoderparams/Aztec;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1249
    :pswitch_71
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/MicroQR;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_MicroQR(Lcom/cipherlab/barcode/decoderparams/MicroQR;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1247
    :pswitch_78
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/QRCode;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_QRCode(Lcom/cipherlab/barcode/decoderparams/QRCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1245
    :pswitch_7f
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/MaxiCode;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_MaxiCode(Lcom/cipherlab/barcode/decoderparams/MaxiCode;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1243
    :pswitch_86
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/DataMatrix;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_DataMatrix(Lcom/cipherlab/barcode/decoderparams/DataMatrix;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1241
    :pswitch_8d
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/MicroPDF417;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_MicroPDF417(Lcom/cipherlab/barcode/decoderparams/MicroPDF417;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1239
    :pswitch_94
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/PDF417;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_PDF417(Lcom/cipherlab/barcode/decoderparams/PDF417;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1237
    :pswitch_9b
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_UPUFICSPostal(Lcom/cipherlab/barcode/decoderparams/UPUFICSPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1235
    :pswitch_a2
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/USPSPostal;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_USPSPostal(Lcom/cipherlab/barcode/decoderparams/USPSPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1233
    :pswitch_a9
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/DutchPostal;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_DutchPostal(Lcom/cipherlab/barcode/decoderparams/DutchPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1231
    :pswitch_b0
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/AustralianPostal;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_AustralianPostal(Lcom/cipherlab/barcode/decoderparams/AustralianPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1229
    :pswitch_b7
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/JapanPostal;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_JapanPostal(Lcom/cipherlab/barcode/decoderparams/JapanPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1227
    :pswitch_be
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/UKPostal;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_UKPostal(Lcom/cipherlab/barcode/decoderparams/UKPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1225
    :pswitch_c5
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/USPostal;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_USPostal(Lcom/cipherlab/barcode/decoderparams/USPostal;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1223
    :pswitch_cc
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Composite;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_Composite(Lcom/cipherlab/barcode/decoderparams/Composite;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1221
    :pswitch_d3
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/UpcE1;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_UpcE1(Lcom/cipherlab/barcode/decoderparams/UpcE1;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1219
    :pswitch_da
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/UpcE;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_UpcE(Lcom/cipherlab/barcode/decoderparams/UpcE;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1217
    :pswitch_e1
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/UpcA;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_UpcA(Lcom/cipherlab/barcode/decoderparams/UpcA;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1209
    :pswitch_e8
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/UccCoupon;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_UccCoupon(Lcom/cipherlab/barcode/decoderparams/UccCoupon;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1215
    :pswitch_ef
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Ean13;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_Ean13(Lcom/cipherlab/barcode/decoderparams/Ean13;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1213
    :pswitch_f6
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Ean8;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_Ean8(Lcom/cipherlab/barcode/decoderparams/Ean8;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1211
    :pswitch_fd
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Msi;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_Msi(Lcom/cipherlab/barcode/decoderparams/Msi;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1207
    :pswitch_104
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_GS1DataBarLimited(Lcom/cipherlab/barcode/decoderparams/GS1DataBarLimited;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1205
    :pswitch_10b
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_GS1DataBarExpanded(Lcom/cipherlab/barcode/decoderparams/GS1DataBarExpanded;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1203
    :pswitch_112
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_GS1DataBar14(Lcom/cipherlab/barcode/decoderparams/GS1DataBar14;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1187
    :pswitch_119
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_Matrix2Of5(Lcom/cipherlab/barcode/decoderparams/Matrix2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1201
    :pswitch_120
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_Interleaved2Of5(Lcom/cipherlab/barcode/decoderparams/Interleaved2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1199
    :pswitch_127
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_Industrial2Of5(Lcom/cipherlab/barcode/decoderparams/Industrial2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1197
    :pswitch_12e
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_Chinese2Of5(Lcom/cipherlab/barcode/decoderparams/Chinese2Of5;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1195
    :pswitch_135
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/ISBT128;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_ISBT128(Lcom/cipherlab/barcode/decoderparams/ISBT128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1193
    :pswitch_13c
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/GS1128;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_GS1128(Lcom/cipherlab/barcode/decoderparams/GS1128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1191
    :pswitch_143
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Code128;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_Code128(Lcom/cipherlab/barcode/decoderparams/Code128;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1189
    :pswitch_14a
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Code93;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_Code93(Lcom/cipherlab/barcode/decoderparams/Code93;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1185
    :pswitch_151
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/TriopticCode39;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_TriopticCode39(Lcom/cipherlab/barcode/decoderparams/TriopticCode39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1183
    :pswitch_158
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Code39;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_Code39(Lcom/cipherlab/barcode/decoderparams/Code39;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1181
    :pswitch_15f
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Code11;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_Code11(Lcom/cipherlab/barcode/decoderparams/Code11;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    .line 1179
    :pswitch_166
    check-cast p1, Lcom/cipherlab/barcode/decoderparams/Codabar;

    invoke-direct {p0, p1, p2}, Lcom/cipherlab/barcode/ReaderManager;->Set_Codabar(Lcom/cipherlab/barcode/decoderparams/Codabar;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_16e
    .packed-switch 0x1
        :pswitch_166
        :pswitch_15f
        :pswitch_158
        :pswitch_151
        :pswitch_14a
        :pswitch_143
        :pswitch_13c
        :pswitch_135
        :pswitch_12e
        :pswitch_127
        :pswitch_120
        :pswitch_119
        :pswitch_112
        :pswitch_10b
        :pswitch_104
        :pswitch_fd
        :pswitch_f6
        :pswitch_ef
        :pswitch_e8
        :pswitch_e1
        :pswitch_da
        :pswitch_d3
        :pswitch_cc
        :pswitch_c5
        :pswitch_be
        :pswitch_b7
        :pswitch_b0
        :pswitch_a9
        :pswitch_a2
        :pswitch_9b
        :pswitch_94
        :pswitch_8d
        :pswitch_86
        :pswitch_7f
        :pswitch_78
        :pswitch_71
        :pswitch_6a
        :pswitch_63
        :pswitch_5c
        :pswitch_55
        :pswitch_4e
        :pswitch_47
        :pswitch_40
        :pswitch_39
        :pswitch_32
        :pswitch_2b
    .end packed-switch
.end method

.method public Set_UserPreferences(Lcom/cipherlab/barcode/decoderparams/UserPreference;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 957
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetUserPreferences(Lcom/cipherlab/barcode/decoderparams/UserPreference;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method public Set_UserPreferences(Lcom/cipherlab/barcode/decoderparams/UserPreference;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1924
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1, p2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetUserPreferences(Lcom/cipherlab/barcode/decoderparams/UserPreference;Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method

.method public SoftScanTrigger()V
    .registers 4

    .line 108
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManager;->mMyReaderManagerSemaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_3
    sget-object v1, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetSoftwareTriggerBool(Z)V

    .line 108
    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public SoftwareTriggerAndGetDataFromKeyboardEmulation()V
    .registers 4

    .line 1086
    iget-object v0, p0, Lcom/cipherlab/barcode/ReaderManager;->mMyReaderManagerSemaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 1087
    :try_start_3
    sget-object v1, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cipherlab/barcode/ReaderManagerAPI;->SetSoftwareTriggerBool(Z)V

    .line 1086
    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public UpdateProfile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 3

    .line 2043
    sget-object v0, Lcom/cipherlab/barcode/ReaderManager;->mReaderManagerAPI:Lcom/cipherlab/barcode/ReaderManagerAPI;

    invoke-virtual {v0, p1}, Lcom/cipherlab/barcode/ReaderManagerAPI;->UpdateProfile(Lcom/cipherlab/barcode/decoderparams/ReaderProfile;)Lcom/cipherlab/barcode/decoder/ClResult;

    move-result-object p1

    return-object p1
.end method
