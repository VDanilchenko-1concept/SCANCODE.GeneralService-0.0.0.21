.class public Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;
.super Ljava/lang/Object;
.source "ReaderOutputConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public autoEnterChar:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

.field public autoEnterWay:Lcom/cipherlab/barcode/decoder/OutputEnterWay;

.field public clearPreviousData:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public enableKeyboardEmulation:Lcom/cipherlab/barcode/decoder/KeyboardEmulationType;

.field public keyEventCharDelay:I

.field public showCodeLen:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public showCodeType:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public szCharsetName:Ljava/lang/String;

.field public szCustomIntentAction:Ljava/lang/String;

.field public szCustomIntentDecodeData:Ljava/lang/String;

.field public szPrefixCode:Ljava/lang/String;

.field public szSuffixCode:Ljava/lang/String;

.field public useDelim:C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 89
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration$1;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration$1;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/cipherlab/barcode/decoder/KeyboardEmulationType;->InputMethod:Lcom/cipherlab/barcode/decoder/KeyboardEmulationType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->enableKeyboardEmulation:Lcom/cipherlab/barcode/decoder/KeyboardEmulationType;

    .line 29
    sget-object v0, Lcom/cipherlab/barcode/decoder/OutputEnterWay;->SuffixData:Lcom/cipherlab/barcode/decoder/OutputEnterWay;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->autoEnterWay:Lcom/cipherlab/barcode/decoder/OutputEnterWay;

    .line 30
    sget-object v0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;->Return:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->autoEnterChar:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    .line 31
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->showCodeType:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 32
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->showCodeLen:Lcom/cipherlab/barcode/decoder/Enable_State;

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->szPrefixCode:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->szSuffixCode:Ljava/lang/String;

    const/4 v1, 0x0

    .line 35
    iput-char v1, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->useDelim:C

    const-string v2, "utf-8"

    .line 36
    iput-object v2, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->szCharsetName:Ljava/lang/String;

    .line 37
    sget-object v2, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v2, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->clearPreviousData:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 38
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->szCustomIntentAction:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->szCustomIntentDecodeData:Ljava/lang/String;

    .line 40
    iput v1, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->keyEventCharDelay:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public SetIneffective()V
    .registers 4

    .line 50
    sget-object v0, Lcom/cipherlab/barcode/decoder/KeyboardEmulationType;->NotSupport:Lcom/cipherlab/barcode/decoder/KeyboardEmulationType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->enableKeyboardEmulation:Lcom/cipherlab/barcode/decoder/KeyboardEmulationType;

    .line 51
    sget-object v0, Lcom/cipherlab/barcode/decoder/OutputEnterWay;->NotSupport:Lcom/cipherlab/barcode/decoder/OutputEnterWay;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->autoEnterWay:Lcom/cipherlab/barcode/decoder/OutputEnterWay;

    .line 52
    sget-object v0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;->NotSupport:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->autoEnterChar:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    .line 53
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->showCodeType:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 54
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->showCodeLen:Lcom/cipherlab/barcode/decoder/Enable_State;

    const-string v0, ""

    .line 55
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->szPrefixCode:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->szSuffixCode:Ljava/lang/String;

    const/4 v1, 0x0

    .line 57
    iput-char v1, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->useDelim:C

    .line 58
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->szCharsetName:Ljava/lang/String;

    .line 59
    sget-object v2, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v2, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->clearPreviousData:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 60
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->szCustomIntentAction:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->szCustomIntentDecodeData:Ljava/lang/String;

    .line 62
    iput v1, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->keyEventCharDelay:I

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/KeyboardEmulationType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->enableKeyboardEmulation:Lcom/cipherlab/barcode/decoder/KeyboardEmulationType;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/OutputEnterWay;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->autoEnterWay:Lcom/cipherlab/barcode/decoder/OutputEnterWay;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->autoEnterChar:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->showCodeType:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->showCodeLen:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->szPrefixCode:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->szSuffixCode:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->useDelim:C

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->szCharsetName:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->clearPreviousData:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->szCustomIntentAction:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->szCustomIntentDecodeData:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->keyEventCharDelay:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 74
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->enableKeyboardEmulation:Lcom/cipherlab/barcode/decoder/KeyboardEmulationType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 75
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->autoEnterWay:Lcom/cipherlab/barcode/decoder/OutputEnterWay;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 76
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->autoEnterChar:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 77
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->showCodeType:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 78
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->showCodeLen:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 79
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->szPrefixCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->szSuffixCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-char p2, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->useDelim:C

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->szCharsetName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->clearPreviousData:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 84
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->szCustomIntentAction:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->szCustomIntentDecodeData:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/ReaderOutputConfiguration;->keyEventCharDelay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
