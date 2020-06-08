.class public Lcom/cipherlab/barcode/decoderparams/UserPreference;
.super Ljava/lang/Object;
.source "UserPreference.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/barcode/decoderparams/UserPreference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public addonSecurityLevel:I

.field public aimerMode:Lcom/cipherlab/barcode/decoder/AimerMode;

.field public centerDecoding:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public centerDecodingTolerance:I

.field public decodingAimingPattern:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public decodingIllumination:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public decodingIlluminationPowerLevel:Lcom/cipherlab/barcode/decoder/IlluminationPowerLevel;

.field public displayMode:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public interCharGapSize:Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

.field public laserOnTime:I

.field public negativeBarcodes:Lcom/cipherlab/barcode/decoder/InverseType;

.field public pickListMode:Lcom/cipherlab/barcode/decoder/Enable_State;

.field public redundancyLevel:Lcom/cipherlab/barcode/decoder/RedundancyLevel;

.field public scanAngle:Lcom/cipherlab/barcode/decoder/ScanAngleType;

.field public securityLevel:Lcom/cipherlab/barcode/decoder/SecurityLevel;

.field public timeoutAimMode:I

.field public timeoutBetweenSameSymbol:I

.field public timeoutPresentationMode:I

.field public transmitCodeIdChar:Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;

.field public triggerMode:Lcom/cipherlab/barcode/decoder/TriggerType;

.field public triggerPresentationMode:Lcom/cipherlab/barcode/decoder/Enable_State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 130
    new-instance v0, Lcom/cipherlab/barcode/decoderparams/UserPreference$1;

    invoke-direct {v0}, Lcom/cipherlab/barcode/decoderparams/UserPreference$1;-><init>()V

    sput-object v0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 12
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->addonSecurityLevel:I

    .line 13
    sget-object v0, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->displayMode:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/16 v0, 0xbb8

    .line 14
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->laserOnTime:I

    .line 15
    sget-object v1, Lcom/cipherlab/barcode/decoder/InverseType;->RegularOnly:Lcom/cipherlab/barcode/decoder/InverseType;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->negativeBarcodes:Lcom/cipherlab/barcode/decoder/InverseType;

    .line 16
    sget-object v1, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->pickListMode:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 17
    sget-object v1, Lcom/cipherlab/barcode/decoder/RedundancyLevel;->One:Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->redundancyLevel:Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    .line 18
    sget-object v1, Lcom/cipherlab/barcode/decoder/ScanAngleType;->Wide:Lcom/cipherlab/barcode/decoder/ScanAngleType;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->scanAngle:Lcom/cipherlab/barcode/decoder/ScanAngleType;

    .line 19
    sget-object v1, Lcom/cipherlab/barcode/decoder/SecurityLevel;->Zero:Lcom/cipherlab/barcode/decoder/SecurityLevel;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->securityLevel:Lcom/cipherlab/barcode/decoder/SecurityLevel;

    const/16 v1, 0x3e8

    .line 20
    iput v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->timeoutBetweenSameSymbol:I

    .line 21
    sget-object v1, Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;->None:Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->transmitCodeIdChar:Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;

    .line 22
    sget-object v1, Lcom/cipherlab/barcode/decoder/TriggerType;->LevelMode:Lcom/cipherlab/barcode/decoder/TriggerType;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->triggerMode:Lcom/cipherlab/barcode/decoder/TriggerType;

    .line 23
    sget-object v1, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->decodingIllumination:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 24
    sget-object v1, Lcom/cipherlab/barcode/decoder/Enable_State;->TRUE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->decodingAimingPattern:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 25
    sget-object v1, Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;->Normal:Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->interCharGapSize:Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

    const v1, 0xdbba0

    .line 26
    iput v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->timeoutPresentationMode:I

    .line 27
    sget-object v1, Lcom/cipherlab/barcode/decoder/IlluminationPowerLevel;->Ten:Lcom/cipherlab/barcode/decoder/IlluminationPowerLevel;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->decodingIlluminationPowerLevel:Lcom/cipherlab/barcode/decoder/IlluminationPowerLevel;

    .line 28
    sget-object v1, Lcom/cipherlab/barcode/decoder/AimerMode;->TypicalAimer:Lcom/cipherlab/barcode/decoder/AimerMode;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->aimerMode:Lcom/cipherlab/barcode/decoder/AimerMode;

    .line 29
    sget-object v1, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->centerDecoding:Lcom/cipherlab/barcode/decoder/Enable_State;

    const/4 v1, 0x0

    .line 30
    iput v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->centerDecodingTolerance:I

    .line 33
    sget-object v1, Lcom/cipherlab/barcode/decoder/Enable_State;->FALSE:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->triggerPresentationMode:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 35
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->timeoutAimMode:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-virtual {p0, p1}, Lcom/cipherlab/barcode/decoderparams/UserPreference;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public Compare(Lcom/cipherlab/barcode/decoderparams/UserPreference;)Z
    .registers 4

    .line 177
    iget v0, p1, Lcom/cipherlab/barcode/decoderparams/UserPreference;->addonSecurityLevel:I

    iget v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->addonSecurityLevel:I

    if-ne v0, v1, :cond_80

    .line 178
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/UserPreference;->displayMode:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->displayMode:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_80

    .line 179
    iget v0, p1, Lcom/cipherlab/barcode/decoderparams/UserPreference;->laserOnTime:I

    iget v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->laserOnTime:I

    if-ne v0, v1, :cond_80

    .line 180
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/UserPreference;->negativeBarcodes:Lcom/cipherlab/barcode/decoder/InverseType;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->negativeBarcodes:Lcom/cipherlab/barcode/decoder/InverseType;

    if-ne v0, v1, :cond_80

    .line 181
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/UserPreference;->pickListMode:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->pickListMode:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_80

    .line 182
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/UserPreference;->redundancyLevel:Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->redundancyLevel:Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    if-ne v0, v1, :cond_80

    .line 183
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/UserPreference;->scanAngle:Lcom/cipherlab/barcode/decoder/ScanAngleType;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->scanAngle:Lcom/cipherlab/barcode/decoder/ScanAngleType;

    if-ne v0, v1, :cond_80

    .line 184
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/UserPreference;->securityLevel:Lcom/cipherlab/barcode/decoder/SecurityLevel;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->securityLevel:Lcom/cipherlab/barcode/decoder/SecurityLevel;

    if-ne v0, v1, :cond_80

    .line 185
    iget v0, p1, Lcom/cipherlab/barcode/decoderparams/UserPreference;->timeoutBetweenSameSymbol:I

    iget v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->timeoutBetweenSameSymbol:I

    if-ne v0, v1, :cond_80

    .line 186
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/UserPreference;->transmitCodeIdChar:Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->transmitCodeIdChar:Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;

    if-ne v0, v1, :cond_80

    .line 187
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/UserPreference;->triggerMode:Lcom/cipherlab/barcode/decoder/TriggerType;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->triggerMode:Lcom/cipherlab/barcode/decoder/TriggerType;

    if-ne v0, v1, :cond_80

    .line 188
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/UserPreference;->decodingIllumination:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->decodingIllumination:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_80

    .line 189
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/UserPreference;->decodingAimingPattern:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->decodingAimingPattern:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_80

    .line 190
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/UserPreference;->interCharGapSize:Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->interCharGapSize:Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

    if-ne v0, v1, :cond_80

    .line 191
    iget v0, p1, Lcom/cipherlab/barcode/decoderparams/UserPreference;->timeoutPresentationMode:I

    iget v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->timeoutPresentationMode:I

    if-ne v0, v1, :cond_80

    .line 192
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/UserPreference;->decodingIlluminationPowerLevel:Lcom/cipherlab/barcode/decoder/IlluminationPowerLevel;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->decodingIlluminationPowerLevel:Lcom/cipherlab/barcode/decoder/IlluminationPowerLevel;

    if-ne v0, v1, :cond_80

    .line 193
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/UserPreference;->aimerMode:Lcom/cipherlab/barcode/decoder/AimerMode;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->aimerMode:Lcom/cipherlab/barcode/decoder/AimerMode;

    if-ne v0, v1, :cond_80

    .line 194
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/UserPreference;->centerDecoding:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->centerDecoding:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_80

    .line 195
    iget v0, p1, Lcom/cipherlab/barcode/decoderparams/UserPreference;->centerDecodingTolerance:I

    iget v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->centerDecodingTolerance:I

    if-ne v0, v1, :cond_80

    .line 196
    iget-object v0, p1, Lcom/cipherlab/barcode/decoderparams/UserPreference;->triggerPresentationMode:Lcom/cipherlab/barcode/decoder/Enable_State;

    iget-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->triggerPresentationMode:Lcom/cipherlab/barcode/decoder/Enable_State;

    if-ne v0, v1, :cond_80

    .line 197
    iget p1, p1, Lcom/cipherlab/barcode/decoderparams/UserPreference;->timeoutAimMode:I

    iget v0, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->timeoutAimMode:I

    if-ne p1, v0, :cond_80

    const/4 p1, 0x1

    goto :goto_81

    :cond_80
    const/4 p1, 0x0

    :goto_81
    return p1
.end method

.method public SetIneffective()V
    .registers 3

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->addonSecurityLevel:I

    .line 66
    sget-object v1, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->displayMode:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 67
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->laserOnTime:I

    .line 68
    sget-object v1, Lcom/cipherlab/barcode/decoder/InverseType;->NotSupport:Lcom/cipherlab/barcode/decoder/InverseType;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->negativeBarcodes:Lcom/cipherlab/barcode/decoder/InverseType;

    .line 69
    sget-object v1, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->pickListMode:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 70
    sget-object v1, Lcom/cipherlab/barcode/decoder/RedundancyLevel;->NotSupport:Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->redundancyLevel:Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    .line 71
    sget-object v1, Lcom/cipherlab/barcode/decoder/ScanAngleType;->NotSupport:Lcom/cipherlab/barcode/decoder/ScanAngleType;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->scanAngle:Lcom/cipherlab/barcode/decoder/ScanAngleType;

    .line 72
    sget-object v1, Lcom/cipherlab/barcode/decoder/SecurityLevel;->NotSupport:Lcom/cipherlab/barcode/decoder/SecurityLevel;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->securityLevel:Lcom/cipherlab/barcode/decoder/SecurityLevel;

    .line 73
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->timeoutBetweenSameSymbol:I

    .line 74
    sget-object v1, Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;->NotSupport:Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->transmitCodeIdChar:Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;

    .line 75
    sget-object v1, Lcom/cipherlab/barcode/decoder/TriggerType;->NotSupport:Lcom/cipherlab/barcode/decoder/TriggerType;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->triggerMode:Lcom/cipherlab/barcode/decoder/TriggerType;

    .line 76
    sget-object v1, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->decodingIllumination:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 77
    sget-object v1, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->decodingAimingPattern:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 78
    sget-object v1, Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;->NotSupport:Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->interCharGapSize:Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

    .line 79
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->timeoutPresentationMode:I

    .line 80
    sget-object v1, Lcom/cipherlab/barcode/decoder/IlluminationPowerLevel;->NotSupport:Lcom/cipherlab/barcode/decoder/IlluminationPowerLevel;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->decodingIlluminationPowerLevel:Lcom/cipherlab/barcode/decoder/IlluminationPowerLevel;

    .line 81
    sget-object v1, Lcom/cipherlab/barcode/decoder/AimerMode;->NotSupport:Lcom/cipherlab/barcode/decoder/AimerMode;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->aimerMode:Lcom/cipherlab/barcode/decoder/AimerMode;

    .line 82
    sget-object v1, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->centerDecoding:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 83
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->centerDecodingTolerance:I

    .line 86
    sget-object v1, Lcom/cipherlab/barcode/decoder/Enable_State;->NotSupport:Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->triggerPresentationMode:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 88
    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->timeoutAimMode:I

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->addonSecurityLevel:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->displayMode:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->laserOnTime:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/InverseType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->negativeBarcodes:Lcom/cipherlab/barcode/decoder/InverseType;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->pickListMode:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->redundancyLevel:Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/ScanAngleType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->scanAngle:Lcom/cipherlab/barcode/decoder/ScanAngleType;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/SecurityLevel;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->securityLevel:Lcom/cipherlab/barcode/decoder/SecurityLevel;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->timeoutBetweenSameSymbol:I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->transmitCodeIdChar:Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/TriggerType;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->triggerMode:Lcom/cipherlab/barcode/decoder/TriggerType;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->decodingIllumination:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->decodingAimingPattern:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->interCharGapSize:Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->timeoutPresentationMode:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/IlluminationPowerLevel;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->decodingIlluminationPowerLevel:Lcom/cipherlab/barcode/decoder/IlluminationPowerLevel;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/AimerMode;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->aimerMode:Lcom/cipherlab/barcode/decoder/AimerMode;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->centerDecoding:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->centerDecodingTolerance:I

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/cipherlab/barcode/decoder/Enable_State;

    iput-object v0, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->triggerPresentationMode:Lcom/cipherlab/barcode/decoder/Enable_State;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->timeoutAimMode:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 99
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->addonSecurityLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->displayMode:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 101
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->laserOnTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->negativeBarcodes:Lcom/cipherlab/barcode/decoder/InverseType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 103
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->pickListMode:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 104
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->redundancyLevel:Lcom/cipherlab/barcode/decoder/RedundancyLevel;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 105
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->scanAngle:Lcom/cipherlab/barcode/decoder/ScanAngleType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 106
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->securityLevel:Lcom/cipherlab/barcode/decoder/SecurityLevel;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 107
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->timeoutBetweenSameSymbol:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->transmitCodeIdChar:Lcom/cipherlab/barcode/decoder/TransmitCodeIDType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 109
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->triggerMode:Lcom/cipherlab/barcode/decoder/TriggerType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 110
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->decodingIllumination:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 111
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->decodingAimingPattern:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 112
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->interCharGapSize:Lcom/cipherlab/barcode/decoder/InterCharacterGapSize;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 113
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->timeoutPresentationMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->decodingIlluminationPowerLevel:Lcom/cipherlab/barcode/decoder/IlluminationPowerLevel;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 115
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->aimerMode:Lcom/cipherlab/barcode/decoder/AimerMode;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 116
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->centerDecoding:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 117
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->centerDecodingTolerance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object p2, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->triggerPresentationMode:Lcom/cipherlab/barcode/decoder/Enable_State;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 122
    iget p2, p0, Lcom/cipherlab/barcode/decoderparams/UserPreference;->timeoutAimMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
