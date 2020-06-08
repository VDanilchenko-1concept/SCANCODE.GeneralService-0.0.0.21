.class public final Lcom/honeywell/aidc/BarcodeReader;
.super Ljava/lang/Object;
.source "BarcodeReader.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/honeywell/aidc/BarcodeReader$TriggerListener;,
        Lcom/honeywell/aidc/BarcodeReader$BarcodeListener;
    }
.end annotation


# static fields
.field public static final BAD_READ_NOTIFICATION:Ljava/lang/String; = "badRead"

.field public static final CODABAR_CHECK_DIGIT_MODE_CHECK:Ljava/lang/String; = "check"

.field public static final CODABAR_CHECK_DIGIT_MODE_CHECK_AND_STRIP:Ljava/lang/String; = "checkAndStrip"

.field public static final CODABAR_CHECK_DIGIT_MODE_NO_CHECK:Ljava/lang/String; = "noCheck"

.field public static final CODE_11_CHECK_DIGIT_MODE_DOUBLE_DIGIT_CHECK:Ljava/lang/String; = "doubleDigitCheck"

.field public static final CODE_11_CHECK_DIGIT_MODE_DOUBLE_DIGIT_CHECK_AND_STRIP:Ljava/lang/String; = "doubleDigitCheckAndStrip"

.field public static final CODE_11_CHECK_DIGIT_MODE_SINGLE_DIGIT_CHECK:Ljava/lang/String; = "singleDigitCheck"

.field public static final CODE_11_CHECK_DIGIT_MODE_SINGLE_DIGIT_CHECK_AND_STRIP:Ljava/lang/String; = "singleDigitCheckAndStrip"

.field public static final CODE_39_CHECK_DIGIT_MODE_CHECK:Ljava/lang/String; = "check"

.field public static final CODE_39_CHECK_DIGIT_MODE_CHECK_AND_STRIP:Ljava/lang/String; = "checkAndStrip"

.field public static final CODE_39_CHECK_DIGIT_MODE_NO_CHECK:Ljava/lang/String; = "noCheck"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/honeywell/aidc/BarcodeReader;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_PROCESSOR_SYMBOLOGY_ID_AIM:Ljava/lang/String; = "aim"

.field public static final DATA_PROCESSOR_SYMBOLOGY_ID_HONEYWELL:Ljava/lang/String; = "honeywell"

.field public static final DATA_PROCESSOR_SYMBOLOGY_ID_NONE:Ljava/lang/String; = "none"

.field public static final DEC_ID_PROP_USE_ROI_DISABLE:Ljava/lang/String; = "Disable"

.field public static final DEC_ID_PROP_USE_ROI_DPM_AIMER_CENTERED:Ljava/lang/String; = "DPM, Aimer centered"

.field public static final DEC_ID_PROP_USE_ROI_KIOSK_OR_PRESENTATION:Ljava/lang/String; = "Kiosk/Presentation application"

.field public static final DEC_ID_PROP_USE_ROI_STANDARD:Ljava/lang/String; = "Standard"

.field public static final DEC_ID_PROP_USE_ROI_STANDARD_AIMER_CENTERED:Ljava/lang/String; = "Standard, Aimer centered"

.field public static final DIGIMARC_CONVERSION_CONVERT_TO_EQUIVALENT:Ljava/lang/String; = "convertToEquivalent"

.field public static final DIGIMARC_CONVERSION_NO_CONVERSION:Ljava/lang/String; = "noConversion"

.field public static final DIGIMARC_SCALE_BLOCKS_USE_BOTH_SCALE1_AND_SCALE3_BLOCKS:Ljava/lang/String; = "useBothScale1AndScale3Blocks"

.field public static final DIGIMARC_SCALE_BLOCKS_USE_SCALE1_BLOCKS:Ljava/lang/String; = "useScale1Blocks"

.field public static final DIGIMARC_SCALE_BLOCKS_USE_SCALE3_BLOCKS:Ljava/lang/String; = "useScale3Blocks"

.field public static final DPM_ENABLED_DOTPEEN_DECODING:Ljava/lang/String; = "dotpeen"

.field public static final DPM_ENABLED_NO_DPM_OPTIMIZATION:Ljava/lang/String; = "none"

.field public static final DPM_ENABLED_REFLECTIVE_DECODING:Ljava/lang/String; = "reflective"

.field public static final EANUCC_EMULATION_MODE_GS1_128_EMULATION:Ljava/lang/String; = "gs1128Emulation"

.field public static final EANUCC_EMULATION_MODE_GS1_CODE_EXPANSION_OFF:Ljava/lang/String; = "gs1CodeExpansionOff"

.field public static final EANUCC_EMULATION_MODE_GS1_DATABAR_EMULATION:Ljava/lang/String; = "gs1DatabarEmulation"

.field public static final EANUCC_EMULATION_MODE_GS1_EAN8_TO_EAN13_CONVERSION:Ljava/lang/String; = "gs1EAN8toEAN13Conversion"

.field public static final EANUCC_EMULATION_MODE_GS1_EMULATION_OFF:Ljava/lang/String; = "gs1EmulationOff"

.field public static final GOOD_READ_NOTIFICATION:Ljava/lang/String; = "goodRead"

.field public static final IMAGER_EXPOSURE_MODE_AUTO_EXPOSURE:Ljava/lang/String; = "autoExposure"

.field public static final IMAGER_EXPOSURE_MODE_AUTO_SENSOR:Ljava/lang/String; = "autoSensor"

.field public static final IMAGER_EXPOSURE_MODE_CONTEXT_SENSITIVE:Ljava/lang/String; = "contextSensitive"

.field public static final IMAGER_EXPOSURE_MODE_FIXED:Ljava/lang/String; = "fixed"

.field public static final IMAGER_SAMPLE_METHOD_CENTER:Ljava/lang/String; = "center"

.field public static final IMAGER_SAMPLE_METHOD_CENTER_WEIGHTED:Ljava/lang/String; = "centerWeighted"

.field public static final IMAGER_SAMPLE_METHOD_UNIFORM:Ljava/lang/String; = "uniform"

.field public static final INTERLEAVED_25_CHECK_DIGIT_MODE_CHECK:Ljava/lang/String; = "check"

.field public static final INTERLEAVED_25_CHECK_DIGIT_MODE_CHECK_AND_STRIP:Ljava/lang/String; = "checkAndStrip"

.field public static final INTERLEAVED_25_CHECK_DIGIT_MODE_NO_CHECK:Ljava/lang/String; = "noCheck"

.field public static final MSI_CHECK_DIGIT_MODE_DOUBLE_MOD_10_CHECK:Ljava/lang/String; = "doubleMod10Check"

.field public static final MSI_CHECK_DIGIT_MODE_DOUBLE_MOD_10_CHECK_AND_STRIP:Ljava/lang/String; = "doubleMod10CheckAndStrip"

.field public static final MSI_CHECK_DIGIT_MODE_NO_CHECK:Ljava/lang/String; = "noCheck"

.field public static final MSI_CHECK_DIGIT_MODE_SINGLE_MOD_10_CHECK:Ljava/lang/String; = "singleMod10Check"

.field public static final MSI_CHECK_DIGIT_MODE_SINGLE_MOD_10_CHECK_AND_STRIP:Ljava/lang/String; = "singleMod10CheckAndStrip"

.field public static final MSI_CHECK_DIGIT_MODE_SINGLE_MOD_11_PLUS_MOD_10_CHECK:Ljava/lang/String; = "singleMod11PlusMod10Check"

.field public static final MSI_CHECK_DIGIT_MODE_SINGLE_MOD_11_PLUS_MOD_10_CHECK_AND_STRIP:Ljava/lang/String; = "singleMod11PlusMod10CheckAndStrip"

.field public static final POSTAL_2D_MODE_AUSTRALIA:Ljava/lang/String; = "australia"

.field public static final POSTAL_2D_MODE_BPO:Ljava/lang/String; = "bpo"

.field public static final POSTAL_2D_MODE_CANADA:Ljava/lang/String; = "canada"

.field public static final POSTAL_2D_MODE_DUTCH:Ljava/lang/String; = "dutch"

.field public static final POSTAL_2D_MODE_INFOMAIL:Ljava/lang/String; = "infomail"

.field public static final POSTAL_2D_MODE_INFOMAIL_AND_BPO:Ljava/lang/String; = "infomailAndBpo"

.field public static final POSTAL_2D_MODE_JAPAN:Ljava/lang/String; = "japan"

.field public static final POSTAL_2D_MODE_NONE:Ljava/lang/String; = "none"

.field public static final POSTAL_2D_MODE_PLANET:Ljava/lang/String; = "planet"

.field public static final POSTAL_2D_MODE_PLANET_AND_POSTNET:Ljava/lang/String; = "planetAndPostnet"

.field public static final POSTAL_2D_MODE_PLANET_AND_POSTNET_AND_UPU:Ljava/lang/String; = "planetAndPostnetAndUpu"

.field public static final POSTAL_2D_MODE_PLANET_AND_POSTNET_AND_UPU_AND_USPS:Ljava/lang/String; = "planetAndPostnetAndUpuAndUsps"

.field public static final POSTAL_2D_MODE_PLANET_AND_POSTNET_AND_UPU_AND_USPS_PLUS_BNB:Ljava/lang/String; = "planetAndPostnetAndUpuAndUspsPlusBnB"

.field public static final POSTAL_2D_MODE_PLANET_AND_POSTNET_AND_UPU_PLUS_BNB:Ljava/lang/String; = "planetAndPostnetAndUpuPlusBnB"

.field public static final POSTAL_2D_MODE_PLANET_AND_POSTNET_AND_USPS:Ljava/lang/String; = "planetAndPostnetAndUsps"

.field public static final POSTAL_2D_MODE_PLANET_AND_POSTNET_AND_USPS_PLUS_BNB:Ljava/lang/String; = "planetAndPostnetAndUspsPlusBnB"

.field public static final POSTAL_2D_MODE_PLANET_AND_POSTNET_PLUS_BNB:Ljava/lang/String; = "planetAndPostnetPlusBnB"

.field public static final POSTAL_2D_MODE_PLANET_AND_UPU:Ljava/lang/String; = "planetAndUpu"

.field public static final POSTAL_2D_MODE_PLANET_AND_UPU_AND_USPS:Ljava/lang/String; = "planetAndUpuAndUsps"

.field public static final POSTAL_2D_MODE_PLANET_AND_USPS:Ljava/lang/String; = "planetAndUsps"

.field public static final POSTAL_2D_MODE_POSTNET:Ljava/lang/String; = "postnet"

.field public static final POSTAL_2D_MODE_POSTNET_AND_UPU:Ljava/lang/String; = "postnetAndUpu"

.field public static final POSTAL_2D_MODE_POSTNET_AND_UPU_AND_USPS:Ljava/lang/String; = "postnetAndUpuAndUsps"

.field public static final POSTAL_2D_MODE_POSTNET_AND_UPU_AND_USPS_PLUS_BNB:Ljava/lang/String; = "postnetAndUpuAndUspsPlusBnB"

.field public static final POSTAL_2D_MODE_POSTNET_AND_UPU_PLUS_BNB:Ljava/lang/String; = "postnetAndUpuPlusBnB"

.field public static final POSTAL_2D_MODE_POSTNET_AND_USPS:Ljava/lang/String; = "postnetAndUsps"

.field public static final POSTAL_2D_MODE_POSTNET_AND_USPS_PLUS_BNB:Ljava/lang/String; = "postnetAndUspsPlusBnB"

.field public static final POSTAL_2D_MODE_POSTNET_PLUS_BNB:Ljava/lang/String; = "postnetPlusBnB"

.field public static final POSTAL_2D_MODE_UPU:Ljava/lang/String; = "upu"

.field public static final POSTAL_2D_MODE_UPU_AND_USPS:Ljava/lang/String; = "upuAndUsps"

.field public static final POSTAL_2D_MODE_USPS:Ljava/lang/String; = "usps"

.field public static final POSTAL_OCR_MODE_INVERSE:Ljava/lang/String; = "inverseVideo"

.field public static final POSTAL_OCR_MODE_NORMAL:Ljava/lang/String; = "normalVideo"

.field public static final POSTAL_OCR_MODE_NORMAL_AND_INVERSE:Ljava/lang/String; = "normalAndInverseVideo"

.field public static final POSTAL_OCR_MODE_OFF:Ljava/lang/String; = "off"

.field public static final PROPERTY_AZTEC_ENABLED:Ljava/lang/String; = "DEC_AZTEC_ENABLED"

.field public static final PROPERTY_AZTEC_MAXIMUM_LENGTH:Ljava/lang/String; = "DEC_AZTEC_MAX_LENGTH"

.field public static final PROPERTY_AZTEC_MINIMUM_LENGTH:Ljava/lang/String; = "DEC_AZTEC_MIN_LENGTH"

.field public static final PROPERTY_CENTER_DECODE:Ljava/lang/String; = "DEC_WINDOW_MODE"

.field public static final PROPERTY_CHINA_POST_ENABLED:Ljava/lang/String; = "DEC_HK25_ENABLED"

.field public static final PROPERTY_CHINA_POST_MAXIMUM_LENGTH:Ljava/lang/String; = "DEC_HK25_MAX_LENGTH"

.field public static final PROPERTY_CHINA_POST_MINIMUM_LENGTH:Ljava/lang/String; = "DEC_HK25_MIN_LENGTH"

.field public static final PROPERTY_CODABAR_CHECK_DIGIT_MODE:Ljava/lang/String; = "DEC_CODABAR_CHECK_DIGIT_MODE"

.field public static final PROPERTY_CODABAR_CONCAT_ENABLED:Ljava/lang/String; = "DEC_CODABAR_CONCAT_ENABLED"

.field public static final PROPERTY_CODABAR_ENABLED:Ljava/lang/String; = "DEC_CODABAR_ENABLED"

.field public static final PROPERTY_CODABAR_MAXIMUM_LENGTH:Ljava/lang/String; = "DEC_CODABAR_MAX_LENGTH"

.field public static final PROPERTY_CODABAR_MINIMUM_LENGTH:Ljava/lang/String; = "DEC_CODABAR_MIN_LENGTH"

.field public static final PROPERTY_CODABAR_START_STOP_TRANSMIT_ENABLED:Ljava/lang/String; = "DEC_CODABAR_START_STOP_TRANSMIT"

.field public static final PROPERTY_CODABLOCK_A_ENABLED:Ljava/lang/String; = "DEC_CODABLOCK_A_ENABLED"

.field public static final PROPERTY_CODABLOCK_A_MAXIMUM_LENGTH:Ljava/lang/String; = "DEC_CODABLOCK_A_MAX_LENGTH"

.field public static final PROPERTY_CODABLOCK_A_MINIMUM_LENGTH:Ljava/lang/String; = "DEC_CODABLOCK_A_MIN_LENGTH"

.field public static final PROPERTY_CODABLOCK_F_ENABLED:Ljava/lang/String; = "DEC_CODABLOCK_F_ENABLED"

.field public static final PROPERTY_CODABLOCK_F_MAXIMUM_LENGTH:Ljava/lang/String; = "DEC_CODABLOCK_F_MAX_LENGTH"

.field public static final PROPERTY_CODABLOCK_F_MINIMUM_LENGTH:Ljava/lang/String; = "DEC_CODABLOCK_F_MIN_LENGTH"

.field public static final PROPERTY_CODE_11_CHECK_DIGIT_MODE:Ljava/lang/String; = "DEC_CODE11_CHECK_DIGIT_MODE"

.field public static final PROPERTY_CODE_11_ENABLED:Ljava/lang/String; = "DEC_CODE11_ENABLED"

.field public static final PROPERTY_CODE_11_MAXIMUM_LENGTH:Ljava/lang/String; = "DEC_CODE11_MAX_LENGTH"

.field public static final PROPERTY_CODE_11_MINIMUM_LENGTH:Ljava/lang/String; = "DEC_CODE11_MIN_LENGTH"

.field public static final PROPERTY_CODE_128_ENABLED:Ljava/lang/String; = "DEC_CODE128_ENABLED"

.field public static final PROPERTY_CODE_128_MAXIMUM_LENGTH:Ljava/lang/String; = "DEC_CODE128_MAX_LENGTH"

.field public static final PROPERTY_CODE_128_MINIMUM_LENGTH:Ljava/lang/String; = "DEC_CODE128_MIN_LENGTH"

.field public static final PROPERTY_CODE_128_SHORT_MARGIN:Ljava/lang/String; = "DEC_C128_SHORT_MARGIN"

.field public static final PROPERTY_CODE_39_BASE_32_ENABLED:Ljava/lang/String; = "DEC_CODE39_BASE32_ENABLED"

.field public static final PROPERTY_CODE_39_CHECK_DIGIT_MODE:Ljava/lang/String; = "DEC_CODE39_CHECK_DIGIT_MODE"

.field public static final PROPERTY_CODE_39_ENABLED:Ljava/lang/String; = "DEC_CODE39_ENABLED"

.field public static final PROPERTY_CODE_39_FULL_ASCII_ENABLED:Ljava/lang/String; = "DEC_CODE39_FULL_ASCII_ENABLED"

.field public static final PROPERTY_CODE_39_MAXIMUM_LENGTH:Ljava/lang/String; = "DEC_CODE39_MAX_LENGTH"

.field public static final PROPERTY_CODE_39_MINIMUM_LENGTH:Ljava/lang/String; = "DEC_CODE39_MIN_LENGTH"

.field public static final PROPERTY_CODE_39_START_STOP_TRANSMIT_ENABLED:Ljava/lang/String; = "DEC_CODE39_START_STOP_TRANSMIT"

.field public static final PROPERTY_CODE_93_ENABLED:Ljava/lang/String; = "DEC_CODE93_ENABLED"

.field public static final PROPERTY_CODE_93_MAXIMUM_LENGTH:Ljava/lang/String; = "DEC_CODE93_MAX_LENGTH"

.field public static final PROPERTY_CODE_93_MINIMUM_LENGTH:Ljava/lang/String; = "DEC_CODE93_MIN_LENGTH"

.field public static final PROPERTY_CODE_DOTCODE_ENABLED:Ljava/lang/String; = "DEC_DOTCODE_ENABLED"

.field public static final PROPERTY_CODE_DOTCODE_MAXIMUM_LENGTH:Ljava/lang/String; = "DEC_DOTCODE_MAX_LENGTH"

.field public static final PROPERTY_CODE_DOTCODE_MINIMUM_LENGTH:Ljava/lang/String; = "DEC_DOTCODE_MIN_LENGTH"

.field public static final PROPERTY_COMBINE_COMPOSITES:Ljava/lang/String; = "DEC_COMBINE_COMPOSITES"

.field public static final PROPERTY_COMPOSITE_ENABLED:Ljava/lang/String; = "DEC_COMPOSITE_ENABLED"

.field public static final PROPERTY_COMPOSITE_MAXIMUM_LENGTH:Ljava/lang/String; = "DEC_COMPOSITE_MAX_LENGTH"

.field public static final PROPERTY_COMPOSITE_MINIMUM_LENGTH:Ljava/lang/String; = "DEC_COMPOSITE_MIN_LENGTH"

.field public static final PROPERTY_COMPOSITE_WITH_UPC_ENABLED:Ljava/lang/String; = "DEC_COMPOSITE_WITH_UPC_ENABLED"

.field public static final PROPERTY_DATAMATRIX_ENABLED:Ljava/lang/String; = "DEC_DATAMATRIX_ENABLED"

.field public static final PROPERTY_DATAMATRIX_MAXIMUM_LENGTH:Ljava/lang/String; = "DEC_DATAMATRIX_MAX_LENGTH"

.field public static final PROPERTY_DATAMATRIX_MINIMUM_LENGTH:Ljava/lang/String; = "DEC_DATAMATRIX_MIN_LENGTH"

.field public static final PROPERTY_DATA_PROCESSOR_CHARSET:Ljava/lang/String; = "DPR_CHARSET"

.field public static final PROPERTY_DATA_PROCESSOR_DATA_INTENT:Ljava/lang/String; = "DPR_DATA_INTENT"

.field public static final PROPERTY_DATA_PROCESSOR_DATA_INTENT_ACTION:Ljava/lang/String; = "DPR_DATA_INTENT_ACTION"

.field public static final PROPERTY_DATA_PROCESSOR_DATA_INTENT_CATEGORY:Ljava/lang/String; = "DPR_DATA_INTENT_CATEGORY"

.field public static final PROPERTY_DATA_PROCESSOR_DATA_INTENT_CLASS_NAME:Ljava/lang/String; = "DPR_DATA_INTENT_CLASS_NAME"

.field public static final PROPERTY_DATA_PROCESSOR_DATA_INTENT_PACKAGE_NAME:Ljava/lang/String; = "DPR_DATA_INTENT_PACKAGE_NAME"

.field public static final PROPERTY_DATA_PROCESSOR_EDIT_DATA_PLUGIN:Ljava/lang/String; = "DPR_EDIT_DATA_PLUGIN"

.field public static final PROPERTY_DATA_PROCESSOR_LAUNCH_BROWSER:Ljava/lang/String; = "DPR_LAUNCH_BROWSER"

.field public static final PROPERTY_DATA_PROCESSOR_LAUNCH_EZ_CONFIG:Ljava/lang/String; = "DPR_LAUNCH_EZ_CONFIG"

.field public static final PROPERTY_DATA_PROCESSOR_PREFIX:Ljava/lang/String; = "DPR_PREFIX"

.field public static final PROPERTY_DATA_PROCESSOR_SCAN_TO_INTENT:Ljava/lang/String; = "DPR_SCAN_TO_INTENT"

.field public static final PROPERTY_DATA_PROCESSOR_SUFFIX:Ljava/lang/String; = "DPR_SUFFIX"

.field public static final PROPERTY_DATA_PROCESSOR_SYMBOLOGY_PREFIX:Ljava/lang/String; = "DPR_SYMBOLOGY_PREFIX"

.field public static final PROPERTY_DECODE_SECURITY_LEVEL:Ljava/lang/String; = "DEC_SECURITY_LEVEL"

.field public static final PROPERTY_DECODE_WINDOW_BOTTOM:Ljava/lang/String; = "DEC_WINDOW_BOTTOM"

.field public static final PROPERTY_DECODE_WINDOW_LEFT:Ljava/lang/String; = "DEC_WINDOW_LEFT"

.field public static final PROPERTY_DECODE_WINDOW_RIGHT:Ljava/lang/String; = "DEC_WINDOW_RIGHT"

.field public static final PROPERTY_DECODE_WINDOW_TOP:Ljava/lang/String; = "DEC_WINDOW_TOP"

.field public static final PROPERTY_DEC_CODE93_HIGH_DENSITY:Ljava/lang/String; = "DEC_CODE93_HIGH_DENSITY"

.field public static final PROPERTY_DEC_DPM_ENABLED:Ljava/lang/String; = "DEC_DPM_ENABLED"

.field public static final PROPERTY_DEC_ID_PROP_USE_ROI:Ljava/lang/String; = "DEC_ID_PROP_USE_ROI"

.field public static final PROPERTY_DIGIMARC_CONVERSION:Ljava/lang/String; = "DEC_DIGIMARC_CONVERSION"

.field public static final PROPERTY_DIGIMARC_ENABLED:Ljava/lang/String; = "DEC_DIGIMARC_ENABLED"

.field public static final PROPERTY_DIGIMARC_SCALE_BLOCKS:Ljava/lang/String; = "DEC_DIGIMARC_SCALE_BLOCKS"

.field public static final PROPERTY_DIGIMARC_SHAPE_DETECTION:Ljava/lang/String; = "DEC_DIGIMARC_SHAPE_DETECTION"

.field public static final PROPERTY_EANUCC_EMULATION_MODE:Ljava/lang/String; = "DEC_EANUCC_EMULATION_MODE"

.field public static final PROPERTY_EAN_13_ADDENDA_REQUIRED_ENABLED:Ljava/lang/String; = "DEC_EAN13_ADDENDA_REQUIRED"

.field public static final PROPERTY_EAN_13_ADDENDA_SEPARATOR_ENABLED:Ljava/lang/String; = "DEC_EAN13_ADDENDA_SEPARATOR"

.field public static final PROPERTY_EAN_13_CHECK_DIGIT_TRANSMIT_ENABLED:Ljava/lang/String; = "DEC_EAN13_CHECK_DIGIT_TRANSMIT"

.field public static final PROPERTY_EAN_13_ENABLED:Ljava/lang/String; = "DEC_EAN13_ENABLED"

.field public static final PROPERTY_EAN_13_FIVE_CHAR_ADDENDA_ENABLED:Ljava/lang/String; = "DEC_EAN13_5CHAR_ADDENDA_ENABLED"

.field public static final PROPERTY_EAN_13_TWO_CHAR_ADDENDA_ENABLED:Ljava/lang/String; = "DEC_EAN13_2CHAR_ADDENDA_ENABLED"

.field public static final PROPERTY_EAN_8_ADDENDA_REQUIRED_ENABLED:Ljava/lang/String; = "DEC_EAN8_ADDENDA_REQUIRED"

.field public static final PROPERTY_EAN_8_ADDENDA_SEPARATOR_ENABLED:Ljava/lang/String; = "DEC_EAN8_ADDENDA_SEPARATOR"

.field public static final PROPERTY_EAN_8_CHECK_DIGIT_TRANSMIT_ENABLED:Ljava/lang/String; = "DEC_EAN8_CHECK_DIGIT_TRANSMIT"

.field public static final PROPERTY_EAN_8_ENABLED:Ljava/lang/String; = "DEC_EAN8_ENABLED"

.field public static final PROPERTY_EAN_8_FIVE_CHAR_ADDENDA_ENABLED:Ljava/lang/String; = "DEC_EAN8_5CHAR_ADDENDA_ENABLED"

.field public static final PROPERTY_EAN_8_TWO_CHAR_ADDENDA_ENABLED:Ljava/lang/String; = "DEC_EAN8_2CHAR_ADDENDA_ENABLED"

.field public static final PROPERTY_GRIDMATRIX_ENABLED:Ljava/lang/String; = "DEC_GRIDMATRIX_ENABLED"

.field public static final PROPERTY_GRIDMATRIX_MAXIMUM_LENGTH:Ljava/lang/String; = "DEC_GRIDMATRIX_MAX_LENGTH"

.field public static final PROPERTY_GRIDMATRIX_MINIMUM_LENGTH:Ljava/lang/String; = "DEC_GRIDMATRIX_MIN_LENGTH"

.field public static final PROPERTY_GROUP_DATA_PROCESSING:Ljava/lang/String; = "DATA_PROCESSING_SETTINGS"

.field public static final PROPERTY_GROUP_IMAGER:Ljava/lang/String; = "IMAGER_SETTINGS"

.field public static final PROPERTY_GROUP_NOTIFICATION:Ljava/lang/String; = "NOTIFICATION_SETTINGS"

.field public static final PROPERTY_GROUP_SYMBOLOGY:Ljava/lang/String; = "SYMBOLOGY_SETTINGS"

.field public static final PROPERTY_GROUP_TRIGGER:Ljava/lang/String; = "TRIGGER_SETTINGS"

.field public static final PROPERTY_GS1_128_ENABLED:Ljava/lang/String; = "DEC_GS1_128_ENABLED"

.field public static final PROPERTY_GS1_128_MAXIMUM_LENGTH:Ljava/lang/String; = "DEC_GS1_128_MAX_LENGTH"

.field public static final PROPERTY_GS1_128_MINIMUM_LENGTH:Ljava/lang/String; = "DEC_GS1_128_MIN_LENGTH"

.field public static final PROPERTY_HAX_XIN_ENABLED:Ljava/lang/String; = "DEC_HANXIN_ENABLED"

.field public static final PROPERTY_HAX_XIN_MAXIMUM_LENGTH:Ljava/lang/String; = "DEC_HANXIN_MAX_LENGTH"

.field public static final PROPERTY_HAX_XIN_MINIMUM_LENGTH:Ljava/lang/String; = "DEC_HANXIN_MIN_LENGTH"

.field public static final PROPERTY_IATA_25_ENABLED:Ljava/lang/String; = "DEC_IATA25_ENABLED"

.field public static final PROPERTY_IATA_25_MAXIMUM_LENGTH:Ljava/lang/String; = "DEC_IATA25_MAX_LENGTH"

.field public static final PROPERTY_IATA_25_MINIMUM_LENGTH:Ljava/lang/String; = "DEC_IATA25_MIN_LENGTH"

.field public static final PROPERTY_IMAGER_EXPOSURE:Ljava/lang/String; = "IMG_EXPOSURE"

.field public static final PROPERTY_IMAGER_EXPOSURE_MODE:Ljava/lang/String; = "IMG_EXPOSURE_MODE"

.field public static final PROPERTY_IMAGER_GAIN:Ljava/lang/String; = "IMG_GAIN"

.field public static final PROPERTY_IMAGER_LIGHT_INTENSITY:Ljava/lang/String; = "IMG_ILLUM_INTENSITY"

.field public static final PROPERTY_IMAGER_MAXIMUM_EXPOSURE:Ljava/lang/String; = "IMG_MAX_EXPOSURE"

.field public static final PROPERTY_IMAGER_MAXIMUM_GAIN:Ljava/lang/String; = "IMG_MAX_GAIN"

.field public static final PROPERTY_IMAGER_REJECTION_LIMIT:Ljava/lang/String; = "IMG_REJECTION_LIMIT"

.field public static final PROPERTY_IMAGER_SAMPLE_METHOD:Ljava/lang/String; = "IMG_SAMPLE_METHOD"

.field public static final PROPERTY_IMAGER_TARGET_ACCEPTABLE_OFFSET:Ljava/lang/String; = "IMG_TARGET_ACCEPTABLE_OFFSET"

.field public static final PROPERTY_IMAGER_TARGET_PERCENTILE:Ljava/lang/String; = "IMG_TARGET_PERCENTILE"

.field public static final PROPERTY_IMAGER_TARGET_VALUE:Ljava/lang/String; = "IMG_TARGET_VALUE"

.field public static final PROPERTY_INTERLEAVED_25_CHECK_DIGIT_MODE:Ljava/lang/String; = "DEC_I25_CHECK_DIGIT_MODE"

.field public static final PROPERTY_INTERLEAVED_25_ENABLED:Ljava/lang/String; = "DEC_I25_ENABLED"

.field public static final PROPERTY_INTERLEAVED_25_MAXIMUM_LENGTH:Ljava/lang/String; = "DEC_I25_MAX_LENGTH"

.field public static final PROPERTY_INTERLEAVED_25_MINIMUM_LENGTH:Ljava/lang/String; = "DEC_I25_MIN_LENGTH"

.field public static final PROPERTY_ISBT_128_ENABLED:Ljava/lang/String; = "DEC_C128_ISBT_ENABLED"

.field public static final PROPERTY_KOREAN_POST_ENABLED:Ljava/lang/String; = "DEC_KOREA_POST_ENABLED"

.field public static final PROPERTY_KOREAN_POST_MAXIMUM_LENGTH:Ljava/lang/String; = "DEC_KOREA_POST_MAX_LENGTH"

.field public static final PROPERTY_KOREAN_POST_MINIMUM_LENGTH:Ljava/lang/String; = "DEC_KOREA_POST_MIN_LENGTH"

.field public static final PROPERTY_LINEAR_DAMAGE_IMPROVEMENTS:Ljava/lang/String; = "DEC_LINEAR_DAMAGE_IMPROVEMENTS"

.field public static final PROPERTY_MATRIX_25_ENABLED:Ljava/lang/String; = "DEC_M25_ENABLED"

.field public static final PROPERTY_MATRIX_25_MAXIMUM_LENGTH:Ljava/lang/String; = "DEC_M25_MAX_LENGTH"

.field public static final PROPERTY_MATRIX_25_MINIMUM_LENGTH:Ljava/lang/String; = "DEC_M25_MIN_LENGTH"

.field public static final PROPERTY_MAXICODE_ENABLED:Ljava/lang/String; = "DEC_MAXICODE_ENABLED"

.field public static final PROPERTY_MAXICODE_MAXIMUM_LENGTH:Ljava/lang/String; = "DEC_MAXICODE_MAX_LENGTH"

.field public static final PROPERTY_MAXICODE_MINIMUM_LENGTH:Ljava/lang/String; = "DEC_MAXICODE_MIN_LENGTH"

.field public static final PROPERTY_MICRO_PDF_417_ENABLED:Ljava/lang/String; = "DEC_MICROPDF_ENABLED"

.field public static final PROPERTY_MICRO_PDF_417_MAXIMUM_LENGTH:Ljava/lang/String; = "DEC_MICROPDF_MAX_LENGTH"

.field public static final PROPERTY_MICRO_PDF_417_MINIMUM_LENGTH:Ljava/lang/String; = "DEC_MICROPDF_MIN_LENGTH"

.field public static final PROPERTY_MSI_CHECK_DIGIT_MODE:Ljava/lang/String; = "DEC_MSI_CHECK_DIGIT_MODE"

.field public static final PROPERTY_MSI_ENABLED:Ljava/lang/String; = "DEC_MSI_ENABLED"

.field public static final PROPERTY_MSI_MAXIMUM_LENGTH:Ljava/lang/String; = "DEC_MSI_MAX_LENGTH"

.field public static final PROPERTY_MSI_MINIMUM_LENGTH:Ljava/lang/String; = "DEC_MSI_MIN_LENGTH"

.field public static final PROPERTY_MSI_OUT_OF_SPEC_SYMBOL:Ljava/lang/String; = "DEC_PROP_MSIP_OUT_OF_SPEC_SYMBOL"

.field public static final PROPERTY_MSI_SHORT_MARGIN:Ljava/lang/String; = "DEC_MSIP_SHORT_MARGIN"

.field public static final PROPERTY_NOTIFICATION_BAD_READ_ENABLED:Ljava/lang/String; = "NTF_BAD_READ_ENABLED"

.field public static final PROPERTY_NOTIFICATION_GOOD_READ_ENABLED:Ljava/lang/String; = "NTF_GOOD_READ_ENABLED"

.field public static final PROPERTY_NOTIFICATION_VIBRATE_ENABLED:Ljava/lang/String; = "NTF_VIBRATE_ENABLED"

.field public static final PROPERTY_OCR_ACTIVE_TEMPLATE:Ljava/lang/String; = "DEC_OCR_ACTIVE_TEMPLATES"

.field public static final PROPERTY_OCR_MODE:Ljava/lang/String; = "DEC_OCR_MODE"

.field public static final PROPERTY_OCR_TEMPLATE:Ljava/lang/String; = "DEC_OCR_TEMPLATE"

.field public static final PROPERTY_PDF_417_ENABLED:Ljava/lang/String; = "DEC_PDF417_ENABLED"

.field public static final PROPERTY_PDF_417_MAXIMUM_LENGTH:Ljava/lang/String; = "DEC_PDF417_MAX_LENGTH"

.field public static final PROPERTY_PDF_417_MINIMUM_LENGTH:Ljava/lang/String; = "DEC_PDF417_MIN_LENGTH"

.field public static final PROPERTY_POSTAL_2D_MODE:Ljava/lang/String; = "DEC_POSTAL_ENABLED"

.field public static final PROPERTY_POSTAL_2D_PLANET_CHECK_DIGIT_TRANSMIT_ENABLED:Ljava/lang/String; = "DEC_PLANETCODE_CHECK_DIGIT_TRANSMIT"

.field public static final PROPERTY_POSTAL_2D_POSTNET_CHECK_DIGIT_TRANSMIT_ENABLED:Ljava/lang/String; = "DEC_POSTNET_CHECK_DIGIT_TRANSMIT"

.field public static final PROPERTY_QR_CODE_ENABLED:Ljava/lang/String; = "DEC_QR_ENABLED"

.field public static final PROPERTY_QR_CODE_MAXIMUM_LENGTH:Ljava/lang/String; = "DEC_QR_MAX_LENGTH"

.field public static final PROPERTY_QR_CODE_MINIMUM_LENGTH:Ljava/lang/String; = "DEC_QR_MIN_LENGTH"

.field public static final PROPERTY_RSS_ENABLED:Ljava/lang/String; = "DEC_RSS_14_ENABLED"

.field public static final PROPERTY_RSS_EXPANDED_ENABLED:Ljava/lang/String; = "DEC_RSS_EXPANDED_ENABLED"

.field public static final PROPERTY_RSS_EXPANDED_MAXIMUM_LENGTH:Ljava/lang/String; = "DEC_RSS_EXPANDED_MAX_LENGTH"

.field public static final PROPERTY_RSS_EXPANDED_MINIMUM_LENGTH:Ljava/lang/String; = "DEC_RSS_EXPANDED_MIN_LENGTH"

.field public static final PROPERTY_RSS_LIMITED_ENABLED:Ljava/lang/String; = "DEC_RSS_LIMITED_ENABLED"

.field public static final PROPERTY_STANDARD_25_ENABLED:Ljava/lang/String; = "DEC_S25_ENABLED"

.field public static final PROPERTY_STANDARD_25_MAXIMUM_LENGTH:Ljava/lang/String; = "DEC_S25_MAX_LENGTH"

.field public static final PROPERTY_STANDARD_25_MINIMUM_LENGTH:Ljava/lang/String; = "DEC_S25_MIN_LENGTH"

.field public static final PROPERTY_TELEPEN_ENABLED:Ljava/lang/String; = "DEC_TELEPEN_ENABLED"

.field public static final PROPERTY_TELEPEN_MAXIMUM_LENGTH:Ljava/lang/String; = "DEC_TELEPEN_MAX_LENGTH"

.field public static final PROPERTY_TELEPEN_MINIMUM_LENGTH:Ljava/lang/String; = "DEC_TELEPEN_MIN_LENGTH"

.field public static final PROPERTY_TELEPEN_OLD_STYLE_ENABLED:Ljava/lang/String; = "DEC_TELEPEN_OLD_STYLE"

.field public static final PROPERTY_TLC_39_ENABLED:Ljava/lang/String; = "DEC_TLC39_ENABLED"

.field public static final PROPERTY_TRIGGER_AUTO_MODE_TIMEOUT:Ljava/lang/String; = "TRIG_AUTO_MODE_TIMEOUT"

.field public static final PROPERTY_TRIGGER_CONTROL_MODE:Ljava/lang/String; = "TRIG_CONTROL_MODE"

.field public static final PROPERTY_TRIGGER_SCAN_DELAY:Ljava/lang/String; = "TRIG_SCAN_DELAY"

.field public static final PROPERTY_TRIGGER_SCAN_MODE:Ljava/lang/String; = "TRIG_SCAN_MODE"

.field public static final PROPERTY_TRIGGER_SCAN_SAME_SYMBOL_TIMEOUT:Ljava/lang/String; = "TRIG_SCAN_SAME_SYMBOL_TIMEOUT"

.field public static final PROPERTY_TRIGGER_SCAN_SAME_SYMBOL_TIMEOUT_ENABLED:Ljava/lang/String; = "TRIG_SCAN_SAME_SYMBOL_TIMEOUT_ENABLED"

.field public static final PROPERTY_TRIOPTIC_ENABLED:Ljava/lang/String; = "DEC_TRIOPTIC_ENABLED"

.field public static final PROPERTY_UPC_A_ADDENDA_REQUIRED_ENABLED:Ljava/lang/String; = "DEC_UPCA_ADDENDA_REQUIRED"

.field public static final PROPERTY_UPC_A_ADDENDA_SEPARATOR_ENABLED:Ljava/lang/String; = "DEC_UPCA_ADDENDA_SEPARATOR"

.field public static final PROPERTY_UPC_A_CHECK_DIGIT_TRANSMIT_ENABLED:Ljava/lang/String; = "DEC_UPCA_CHECK_DIGIT_TRANSMIT"

.field public static final PROPERTY_UPC_A_COMBINE_COUPON_CODE_MODE_ENABLED:Ljava/lang/String; = "DEC_COMBINE_COUPON_CODES"

.field public static final PROPERTY_UPC_A_COUPON_CODE_MODE_ENABLED:Ljava/lang/String; = "DEC_COUPON_CODE_MODE"

.field public static final PROPERTY_UPC_A_ENABLE:Ljava/lang/String; = "DEC_UPCA_ENABLE"

.field public static final PROPERTY_UPC_A_FIVE_CHAR_ADDENDA_ENABLED:Ljava/lang/String; = "DEC_UPCA_5CHAR_ADDENDA_ENABLED"

.field public static final PROPERTY_UPC_A_NUMBER_SYSTEM_TRANSMIT_ENABLED:Ljava/lang/String; = "DEC_UPCA_NUMBER_SYSTEM_TRANSMIT"

.field public static final PROPERTY_UPC_A_TRANSLATE_EAN13:Ljava/lang/String; = "DEC_UPCA_TRANSLATE_TO_EAN13"

.field public static final PROPERTY_UPC_A_TWO_CHAR_ADDENDA_ENABLED:Ljava/lang/String; = "DEC_UPCA_2CHAR_ADDENDA_ENABLED"

.field public static final PROPERTY_UPC_E_ADDENDA_REQUIRED_ENABLED:Ljava/lang/String; = "DEC_UPCE_ADDENDA_REQUIRED"

.field public static final PROPERTY_UPC_E_ADDENDA_SEPARATOR_ENABLED:Ljava/lang/String; = "DEC_UPCE_ADDENDA_SEPARATOR"

.field public static final PROPERTY_UPC_E_CHECK_DIGIT_TRANSMIT_ENABLED:Ljava/lang/String; = "DEC_UPCE_CHECK_DIGIT_TRANSMIT"

.field public static final PROPERTY_UPC_E_E1_ENABLED:Ljava/lang/String; = "DEC_UPCE1_ENABLED"

.field public static final PROPERTY_UPC_E_ENABLED:Ljava/lang/String; = "DEC_UPCE0_ENABLED"

.field public static final PROPERTY_UPC_E_EXPAND_TO_UPC_A:Ljava/lang/String; = "DEC_UPCE_EXPAND"

.field public static final PROPERTY_UPC_E_FIVE_CHAR_ADDENDA_ENABLED:Ljava/lang/String; = "DEC_UPCE_5CHAR_ADDENDA_ENABLED"

.field public static final PROPERTY_UPC_E_NUMBER_SYSTEM_TRANSMIT_ENABLED:Ljava/lang/String; = "DEC_UPCE_NUMBER_SYSTEM_TRANSMIT"

.field public static final PROPERTY_UPC_E_TWO_CHAR_ADDENDA_ENABLED:Ljava/lang/String; = "DEC_UPCE_2CHAR_ADDENDA_ENABLED"

.field public static final PROPERTY_VIDEO_REVERSE_ENABLED:Ljava/lang/String; = "DEC_VIDEO_REVERSE_ENABLED"

.field public static final SHORT_MARGIN_DISABLED:Ljava/lang/String; = "disabled"

.field public static final SHORT_MARGIN_ENABLED:Ljava/lang/String; = "partial"

.field public static final SHORT_MARGIN_ENABLE_BOTH_ENDS:Ljava/lang/String; = "full"

.field public static final TRIGGER_CONTROL_MODE_AUTO_CONTROL:Ljava/lang/String; = "autoControl"

.field public static final TRIGGER_CONTROL_MODE_CLIENT_CONTROL:Ljava/lang/String; = "clientControl"

.field public static final TRIGGER_CONTROL_MODE_DISABLE:Ljava/lang/String; = "disable"

.field public static final TRIGGER_SCAN_MODE_CONTINUOUS:Ljava/lang/String; = "continuous"

.field public static final TRIGGER_SCAN_MODE_ONESHOT:Ljava/lang/String; = "oneShot"

.field public static final TRIGGER_SCAN_MODE_READ_ON_RELEASE:Ljava/lang/String; = "readOnRelease"

.field public static final TRIGGER_SCAN_MODE_READ_ON_SECOND_TRIGGER_PRESS:Ljava/lang/String; = "readOnSecondTriggerPress"

.field public static final VIDEO_REVERSE_ENABLED_BOTH:Ljava/lang/String; = "both"

.field public static final VIDEO_REVERSE_ENABLED_INVERSE:Ljava/lang/String; = "inverse"

.field public static final VIDEO_REVERSE_ENABLED_NORMAL:Ljava/lang/String; = "normal"

.field private static sListenerCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/honeywell/IExecutor;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mBarcodeReaderClosed:Z

.field private final mExecutor:Lcom/honeywell/IExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 2349
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/honeywell/aidc/BarcodeReader;->sListeners:Ljava/util/Map;

    .line 2351
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/honeywell/aidc/BarcodeReader;->sListenerCounts:Ljava/util/Map;

    .line 2356
    sget-object v0, Lcom/honeywell/aidc/BarcodeReader;->sListeners:Ljava/util/Map;

    const-class v1, Lcom/honeywell/aidc/BarcodeReader$BarcodeListener;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2357
    sget-object v0, Lcom/honeywell/aidc/BarcodeReader;->sListeners:Ljava/util/Map;

    const-class v1, Lcom/honeywell/aidc/BarcodeReader$TriggerListener;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2358
    sget-object v0, Lcom/honeywell/aidc/BarcodeReader;->sListenerCounts:Ljava/util/Map;

    const-class v1, Lcom/honeywell/aidc/BarcodeReader$BarcodeListener;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2359
    sget-object v0, Lcom/honeywell/aidc/BarcodeReader;->sListenerCounts:Ljava/util/Map;

    const-class v1, Lcom/honeywell/aidc/BarcodeReader$TriggerListener;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3187
    new-instance v0, Lcom/honeywell/aidc/BarcodeReader$2;

    invoke-direct {v0}, Lcom/honeywell/aidc/BarcodeReader$2;-><init>()V

    sput-object v0, Lcom/honeywell/aidc/BarcodeReader;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 3163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2353
    iput-boolean v0, p0, Lcom/honeywell/aidc/BarcodeReader;->mBarcodeReaderClosed:Z

    const-string v0, "Enter BarcodeReader constructor"

    .line 3164
    invoke-static {v0}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    .line 3166
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/honeywell/IExecutor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/honeywell/IExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/honeywell/aidc/BarcodeReader;->mExecutor:Lcom/honeywell/IExecutor;

    const-string p1, "Exit BarcodeReader constructor"

    .line 3168
    invoke-static {p1}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/honeywell/IExecutor;)V
    .registers 3

    .line 2368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2353
    iput-boolean v0, p0, Lcom/honeywell/aidc/BarcodeReader;->mBarcodeReaderClosed:Z

    const-string v0, "Enter BarcodeReader constructor"

    .line 2369
    invoke-static {v0}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    .line 2371
    iput-object p1, p0, Lcom/honeywell/aidc/BarcodeReader;->mExecutor:Lcom/honeywell/IExecutor;

    const-string p1, "Exit BarcodeReader constructor"

    .line 2373
    invoke-static {p1}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private addListener(Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2413
    iget-boolean v0, p0, Lcom/honeywell/aidc/BarcodeReader;->mBarcodeReaderClosed:Z

    if-nez v0, :cond_40

    .line 2418
    sget-object v0, Lcom/honeywell/aidc/BarcodeReader;->sListeners:Ljava/util/Map;

    monitor-enter v0

    .line 2419
    :try_start_7
    sget-object v1, Lcom/honeywell/aidc/BarcodeReader;->sListeners:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 2421
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/honeywell/IExecutor;

    if-nez v1, :cond_23

    .line 2423
    new-instance v2, Lcom/honeywell/aidc/BarcodeReader$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/honeywell/aidc/BarcodeReader$1;-><init>(Lcom/honeywell/aidc/BarcodeReader;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2450
    invoke-direct {p0, p2, p1, v2}, Lcom/honeywell/aidc/BarcodeReader;->incrementListeners(Ljava/lang/Class;Ljava/lang/Object;Lcom/honeywell/IExecutor;)V

    goto :goto_27

    .line 2452
    :cond_23
    invoke-direct {p0, p2, p1, v2}, Lcom/honeywell/aidc/BarcodeReader;->incrementListeners(Ljava/lang/Class;Ljava/lang/Object;Lcom/honeywell/IExecutor;)V

    move-object v2, v1

    .line 2455
    :cond_27
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_3d

    const-string p1, "scanner.addListener"

    .line 2457
    invoke-static {p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->build(Ljava/lang/String;)Lcom/honeywell/Message;

    move-result-object p1

    .line 2458
    iget-object p2, p1, Lcom/honeywell/Message;->extras:Ljava/util/Map;

    const-string v0, "listener"

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2459
    invoke-virtual {p0, p1}, Lcom/honeywell/aidc/BarcodeReader;->execute(Lcom/honeywell/Message;)Lcom/honeywell/Message;

    move-result-object p1

    .line 2460
    invoke-static {p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkRuntimeError(Lcom/honeywell/Message;)V

    return-void

    :catchall_3d
    move-exception p1

    .line 2455
    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p1

    .line 2414
    :cond_40
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "BarcodeReader is closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private decrementListeners(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 3217
    sget-object v0, Lcom/honeywell/aidc/BarcodeReader;->sListenerCounts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_30

    .line 3219
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_28

    .line 3221
    sget-object v1, Lcom/honeywell/aidc/BarcodeReader;->sListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_30

    .line 3223
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3224
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    :cond_28
    sub-int/2addr v1, v2

    .line 3227
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    :goto_30
    return-void
.end method

.method private getTypedProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/honeywell/aidc/UnsupportedPropertyException;
        }
    .end annotation

    if-eqz p1, :cond_5d

    .line 2932
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 2933
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2934
    invoke-virtual {p0, v0}, Lcom/honeywell/aidc/BarcodeReader;->getProperties(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    .line 2936
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 2940
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2944
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2941
    :cond_2b
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Property is not of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2937
    :cond_46
    new-instance p2, Lcom/honeywell/aidc/UnsupportedPropertyException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Property not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/honeywell/aidc/UnsupportedPropertyException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2929
    :cond_5d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameters cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private incrementListeners(Ljava/lang/Class;Ljava/lang/Object;Lcom/honeywell/IExecutor;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Lcom/honeywell/IExecutor;",
            ")V"
        }
    .end annotation

    .line 3201
    sget-object v0, Lcom/honeywell/aidc/BarcodeReader;->sListenerCounts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_34

    const/4 v1, 0x1

    if-eqz p3, :cond_22

    .line 3204
    sget-object v2, Lcom/honeywell/aidc/BarcodeReader;->sListeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_34

    .line 3206
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3207
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 3210
    :cond_22
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 3211
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    :goto_34
    return-void
.end method

.method private internalGetProperties(Ljava/util/Set;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2997
    invoke-direct {p0, p1, v0}, Lcom/honeywell/aidc/BarcodeReader;->internalGetProperties(Ljava/util/Set;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private internalGetProperties(Ljava/util/Set;Z)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3001
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3002
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3003
    invoke-interface {p1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p1

    const-string v2, "names"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_18

    const-string p1, "scanner.getDefaultProperties"

    goto :goto_1a

    :cond_18
    const-string p1, "scanner.getProperties"

    .line 3005
    :goto_1a
    invoke-static {p1, v1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->build(Ljava/lang/String;Ljava/util/Map;)Lcom/honeywell/Message;

    move-result-object p1

    .line 3006
    invoke-virtual {p0, p1}, Lcom/honeywell/aidc/BarcodeReader;->execute(Lcom/honeywell/Message;)Lcom/honeywell/Message;

    move-result-object p1

    .line 3007
    invoke-static {p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkRuntimeError(Lcom/honeywell/Message;)V

    .line 3010
    :try_start_25
    new-instance p2, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/honeywell/Message;->action:Ljava/lang/String;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "result"

    .line 3011
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "values"

    .line 3012
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3013
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 3014
    :goto_3c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 3015
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3016
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_4f} :catch_51

    goto :goto_3c

    :cond_50
    return-object v0

    :catch_51
    move-exception p1

    .line 3019
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "An error occurred while communicating with the scanner service."

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5b

    :goto_5a
    throw p2

    :goto_5b
    goto :goto_5a
.end method

.method private removeListener(Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2485
    sget-object v0, Lcom/honeywell/aidc/BarcodeReader;->sListeners:Ljava/util/Map;

    monitor-enter v0

    .line 2486
    :try_start_3
    sget-object v1, Lcom/honeywell/aidc/BarcodeReader;->sListeners:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/honeywell/IExecutor;

    if-nez v1, :cond_15

    .line 2488
    monitor-exit v0

    return-void

    .line 2490
    :cond_15
    invoke-direct {p0, p2, p1}, Lcom/honeywell/aidc/BarcodeReader;->decrementListeners(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2491
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2e

    const-string p1, "scanner.removeListener"

    .line 2492
    invoke-static {p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->build(Ljava/lang/String;)Lcom/honeywell/Message;

    move-result-object p1

    .line 2493
    iget-object p2, p1, Lcom/honeywell/Message;->extras:Ljava/util/Map;

    const-string v0, "listener"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2494
    invoke-virtual {p0, p1}, Lcom/honeywell/aidc/BarcodeReader;->execute(Lcom/honeywell/Message;)Lcom/honeywell/Message;

    move-result-object p1

    .line 2495
    invoke-static {p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkRuntimeError(Lcom/honeywell/Message;)V

    return-void

    :catchall_2e
    move-exception p1

    .line 2491
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p1
.end method

.method private setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    .line 2781
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2782
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2783
    invoke-virtual {p0, v0}, Lcom/honeywell/aidc/BarcodeReader;->setProperties(Ljava/util/Map;)V

    return-void

    .line 2778
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameters cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addBarcodeListener(Lcom/honeywell/aidc/BarcodeReader$BarcodeListener;)V
    .registers 3

    .line 2387
    const-class v0, Lcom/honeywell/aidc/BarcodeReader$BarcodeListener;

    invoke-direct {p0, p1, v0}, Lcom/honeywell/aidc/BarcodeReader;->addListener(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public addTriggerListener(Lcom/honeywell/aidc/BarcodeReader$TriggerListener;)V
    .registers 3

    .line 2401
    const-class v0, Lcom/honeywell/aidc/BarcodeReader$TriggerListener;

    invoke-direct {p0, p1, v0}, Lcom/honeywell/aidc/BarcodeReader;->addListener(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public aim(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/honeywell/aidc/ScannerNotClaimedException;,
            Lcom/honeywell/aidc/ScannerUnavailableException;
        }
    .end annotation

    .line 2590
    iget-boolean v0, p0, Lcom/honeywell/aidc/BarcodeReader;->mBarcodeReaderClosed:Z

    if-nez v0, :cond_1e

    .line 2594
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "scanner.aim"

    const-string v1, "state"

    invoke-static {v0, v1, p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/honeywell/Message;

    move-result-object p1

    .line 2595
    invoke-virtual {p0, p1}, Lcom/honeywell/aidc/BarcodeReader;->execute(Lcom/honeywell/Message;)Lcom/honeywell/Message;

    move-result-object p1

    .line 2596
    invoke-static {p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkScannerNotClaimedException(Lcom/honeywell/Message;)V

    .line 2597
    invoke-static {p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkScannerUnavailable(Lcom/honeywell/Message;)V

    .line 2598
    invoke-static {p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkRuntimeError(Lcom/honeywell/Message;)V

    return-void

    .line 2591
    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BarcodeReader is closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public captureImage()Landroid/graphics/Bitmap;
    .registers 3

    const-string v0, "scanner.captureImage"

    .line 3048
    invoke-static {v0}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->build(Ljava/lang/String;)Lcom/honeywell/Message;

    move-result-object v0

    .line 3049
    invoke-virtual {p0, v0}, Lcom/honeywell/aidc/BarcodeReader;->execute(Lcom/honeywell/Message;)Lcom/honeywell/Message;

    move-result-object v0

    .line 3050
    invoke-static {v0}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkRuntimeError(Lcom/honeywell/Message;)V

    .line 3052
    iget-object v0, v0, Lcom/honeywell/Message;->extras:Ljava/util/Map;

    const-string v1, "image"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public claim()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/honeywell/aidc/ScannerUnavailableException;
        }
    .end annotation

    .line 2541
    iget-boolean v0, p0, Lcom/honeywell/aidc/BarcodeReader;->mBarcodeReaderClosed:Z

    if-nez v0, :cond_15

    const-string v0, "scanner.claim"

    .line 2545
    invoke-static {v0}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->build(Ljava/lang/String;)Lcom/honeywell/Message;

    move-result-object v0

    .line 2546
    invoke-virtual {p0, v0}, Lcom/honeywell/aidc/BarcodeReader;->execute(Lcom/honeywell/Message;)Lcom/honeywell/Message;

    move-result-object v0

    .line 2547
    invoke-static {v0}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkScannerUnavailable(Lcom/honeywell/Message;)V

    .line 2548
    invoke-static {v0}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkRuntimeError(Lcom/honeywell/Message;)V

    return-void

    .line 2542
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BarcodeReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 3

    .line 2706
    iget-boolean v0, p0, Lcom/honeywell/aidc/BarcodeReader;->mBarcodeReaderClosed:Z

    if-nez v0, :cond_15

    const/4 v0, 0x1

    .line 2709
    iput-boolean v0, p0, Lcom/honeywell/aidc/BarcodeReader;->mBarcodeReaderClosed:Z

    const-string v0, "scanner.disconnect"

    .line 2711
    invoke-static {v0}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->build(Ljava/lang/String;)Lcom/honeywell/Message;

    move-result-object v0

    .line 2712
    invoke-virtual {p0, v0}, Lcom/honeywell/aidc/BarcodeReader;->execute(Lcom/honeywell/Message;)Lcom/honeywell/Message;

    move-result-object v0

    .line 2713
    invoke-static {v0}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkRuntimeError(Lcom/honeywell/Message;)V

    return-void

    .line 2707
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BarcodeReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decode(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/honeywell/aidc/ScannerNotClaimedException;,
            Lcom/honeywell/aidc/ScannerUnavailableException;
        }
    .end annotation

    .line 2565
    iget-boolean v0, p0, Lcom/honeywell/aidc/BarcodeReader;->mBarcodeReaderClosed:Z

    if-nez v0, :cond_1e

    .line 2569
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "scanner.decode"

    const-string v1, "state"

    invoke-static {v0, v1, p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/honeywell/Message;

    move-result-object p1

    .line 2570
    invoke-virtual {p0, p1}, Lcom/honeywell/aidc/BarcodeReader;->execute(Lcom/honeywell/Message;)Lcom/honeywell/Message;

    move-result-object p1

    .line 2571
    invoke-static {p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkScannerNotClaimedException(Lcom/honeywell/Message;)V

    .line 2572
    invoke-static {p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkScannerUnavailable(Lcom/honeywell/Message;)V

    .line 2573
    invoke-static {p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkRuntimeError(Lcom/honeywell/Message;)V

    return-void

    .line 2566
    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BarcodeReader is closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method execute(Lcom/honeywell/Message;)Lcom/honeywell/Message;
    .registers 4

    .line 3110
    :try_start_0
    iget-object v0, p0, Lcom/honeywell/aidc/BarcodeReader;->mExecutor:Lcom/honeywell/IExecutor;

    invoke-interface {v0, p1}, Lcom/honeywell/IExecutor;->execute(Lcom/honeywell/Message;)Lcom/honeywell/Message;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    move-exception p1

    .line 3112
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "An error occurred while communicating with the scanner service."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getAllDefaultProperties()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2989
    iget-boolean v0, p0, Lcom/honeywell/aidc/BarcodeReader;->mBarcodeReaderClosed:Z

    if-nez v0, :cond_f

    .line 2993
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/honeywell/aidc/BarcodeReader;->internalGetProperties(Ljava/util/Set;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 2990
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BarcodeReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAllProperties()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2976
    iget-boolean v0, p0, Lcom/honeywell/aidc/BarcodeReader;->mBarcodeReaderClosed:Z

    if-nez v0, :cond_e

    .line 2980
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v0}, Lcom/honeywell/aidc/BarcodeReader;->internalGetProperties(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 2977
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BarcodeReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBooleanProperty(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/honeywell/aidc/UnsupportedPropertyException;
        }
    .end annotation

    .line 2910
    const-class v0, Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lcom/honeywell/aidc/BarcodeReader;->getTypedProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getInfo()Lcom/honeywell/aidc/BarcodeReaderInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/honeywell/aidc/ScannerUnavailableException;
        }
    .end annotation

    .line 2500
    iget-boolean v0, p0, Lcom/honeywell/aidc/BarcodeReader;->mBarcodeReaderClosed:Z

    if-nez v0, :cond_35

    const-string v0, "scanner.getInfo"

    .line 2504
    invoke-static {v0}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->build(Ljava/lang/String;)Lcom/honeywell/Message;

    move-result-object v0

    .line 2505
    invoke-virtual {p0, v0}, Lcom/honeywell/aidc/BarcodeReader;->execute(Lcom/honeywell/Message;)Lcom/honeywell/Message;

    move-result-object v0

    .line 2506
    invoke-static {v0}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkScannerUnavailable(Lcom/honeywell/Message;)V

    .line 2507
    invoke-static {v0}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkRuntimeError(Lcom/honeywell/Message;)V

    .line 2510
    :try_start_14
    new-instance v1, Lorg/json/JSONObject;

    iget-object v0, v0, Lcom/honeywell/Message;->action:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    .line 2511
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "info"

    .line 2512
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2514
    invoke-static {v0}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->buildBarcodeReaderInfo(Lorg/json/JSONObject;)Lcom/honeywell/aidc/BarcodeReaderInfo;

    move-result-object v0
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_2b} :catch_2c

    return-object v0

    :catch_2c
    move-exception v0

    .line 2516
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to retrieve barcode reader info"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2501
    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BarcodeReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIntProperty(Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/honeywell/aidc/UnsupportedPropertyException;
        }
    .end annotation

    .line 2896
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, p1, v0}, Lcom/honeywell/aidc/BarcodeReader;->getTypedProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getProfileNames()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "Enter getProfileNames"

    .line 2812
    invoke-static {v0}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    .line 2814
    iget-boolean v0, p0, Lcom/honeywell/aidc/BarcodeReader;->mBarcodeReaderClosed:Z

    if-nez v0, :cond_54

    .line 2818
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "scanner.getProfileNames"

    .line 2819
    invoke-static {v1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->build(Ljava/lang/String;)Lcom/honeywell/Message;

    move-result-object v1

    .line 2820
    invoke-virtual {p0, v1}, Lcom/honeywell/aidc/BarcodeReader;->execute(Lcom/honeywell/Message;)Lcom/honeywell/Message;

    move-result-object v1

    .line 2821
    invoke-static {v1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkRuntimeError(Lcom/honeywell/Message;)V

    .line 2824
    :try_start_1b
    new-instance v2, Lorg/json/JSONObject;

    iget-object v1, v1, Lcom/honeywell/Message;->action:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    .line 2825
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "values"

    .line 2826
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 2827
    :goto_2f
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_45

    .line 2828
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "profile"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_42} :catch_4b

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_45
    const-string v1, "Exit getProfileNames"

    .line 2835
    invoke-static {v1}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    return-object v0

    :catch_4b
    move-exception v0

    .line 2831
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occurred while communicating with the scanner service."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2815
    :cond_54
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getProfileNames, BarcodeReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5d

    :goto_5c
    throw v0

    :goto_5d
    goto :goto_5c
.end method

.method public getProperties(Ljava/util/Set;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2957
    iget-boolean v0, p0, Lcom/honeywell/aidc/BarcodeReader;->mBarcodeReaderClosed:Z

    if-nez v0, :cond_1f

    if-eqz p1, :cond_17

    .line 2963
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2964
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    .line 2967
    :cond_12
    invoke-direct {p0, p1}, Lcom/honeywell/aidc/BarcodeReader;->internalGetProperties(Ljava/util/Set;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 2961
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Names set cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2958
    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BarcodeReader is closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSignature(Lcom/honeywell/aidc/SignatureParameters;)Lcom/honeywell/aidc/Signature;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/honeywell/aidc/ScannerNotClaimedException;,
            Lcom/honeywell/aidc/ScannerUnavailableException;
        }
    .end annotation

    .line 2638
    iget-boolean v0, p0, Lcom/honeywell/aidc/BarcodeReader;->mBarcodeReaderClosed:Z

    if-nez v0, :cond_b1

    .line 2642
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2643
    invoke-virtual {p1}, Lcom/honeywell/aidc/SignatureParameters;->getAspectRatio()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "aspectRatio"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2644
    invoke-virtual {p1}, Lcom/honeywell/aidc/SignatureParameters;->getHorizontalOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "horizontalOffset"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2645
    invoke-virtual {p1}, Lcom/honeywell/aidc/SignatureParameters;->getVerticalOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "verticalOffset"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2646
    invoke-virtual {p1}, Lcom/honeywell/aidc/SignatureParameters;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "width"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2647
    invoke-virtual {p1}, Lcom/honeywell/aidc/SignatureParameters;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2648
    invoke-virtual {p1}, Lcom/honeywell/aidc/SignatureParameters;->getResolution()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "resolution"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2649
    invoke-virtual {p1}, Lcom/honeywell/aidc/SignatureParameters;->isBinarized()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "binarized"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "scanner.getSignature"

    .line 2651
    invoke-static {p1, v0}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->build(Ljava/lang/String;Ljava/util/Map;)Lcom/honeywell/Message;

    move-result-object p1

    .line 2652
    invoke-virtual {p0, p1}, Lcom/honeywell/aidc/BarcodeReader;->execute(Lcom/honeywell/Message;)Lcom/honeywell/Message;

    move-result-object p1

    .line 2653
    invoke-static {p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkScannerNotClaimedException(Lcom/honeywell/Message;)V

    .line 2654
    invoke-static {p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkScannerUnavailable(Lcom/honeywell/Message;)V

    .line 2655
    invoke-static {p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkRuntimeError(Lcom/honeywell/Message;)V

    .line 2658
    :try_start_77
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/honeywell/Message;->action:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    .line 2659
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "guidance"

    .line 2660
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8a
    .catch Lorg/json/JSONException; {:try_start_77 .. :try_end_8a} :catch_a8

    const/4 v1, 0x0

    .line 2666
    iget-object v2, p1, Lcom/honeywell/Message;->extras:Ljava/util/Map;

    if-eqz v2, :cond_a2

    iget-object v2, p1, Lcom/honeywell/Message;->extras:Ljava/util/Map;

    const-string v3, "image"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 2667
    iget-object p1, p1, Lcom/honeywell/Message;->extras:Ljava/util/Map;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 2670
    :cond_a2
    new-instance p1, Lcom/honeywell/aidc/Signature;

    invoke-direct {p1, v0, v1}, Lcom/honeywell/aidc/Signature;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-object p1

    :catch_a8
    move-exception p1

    .line 2662
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "An error occurred while communicating with the scanner service."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 2639
    :cond_b1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BarcodeReader is closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStringProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/honeywell/aidc/UnsupportedPropertyException;
        }
    .end annotation

    .line 2924
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/honeywell/aidc/BarcodeReader;->getTypedProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public light(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/honeywell/aidc/ScannerNotClaimedException;,
            Lcom/honeywell/aidc/ScannerUnavailableException;
        }
    .end annotation

    .line 2615
    iget-boolean v0, p0, Lcom/honeywell/aidc/BarcodeReader;->mBarcodeReaderClosed:Z

    if-nez v0, :cond_1e

    .line 2619
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "scanner.light"

    const-string v1, "state"

    invoke-static {v0, v1, p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/honeywell/Message;

    move-result-object p1

    .line 2620
    invoke-virtual {p0, p1}, Lcom/honeywell/aidc/BarcodeReader;->execute(Lcom/honeywell/Message;)Lcom/honeywell/Message;

    move-result-object p1

    .line 2621
    invoke-static {p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkScannerNotClaimedException(Lcom/honeywell/Message;)V

    .line 2622
    invoke-static {p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkScannerUnavailable(Lcom/honeywell/Message;)V

    .line 2623
    invoke-static {p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkRuntimeError(Lcom/honeywell/Message;)V

    return-void

    .line 2616
    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BarcodeReader is closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadProfile(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "Enter loadProfile"

    .line 2849
    invoke-static {v0}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_5d

    .line 2851
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5d

    .line 2856
    iget-boolean v0, p0, Lcom/honeywell/aidc/BarcodeReader;->mBarcodeReaderClosed:Z

    if-nez v0, :cond_55

    .line 2860
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2861
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "profile"

    .line 2863
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "scanner.loadProfile"

    .line 2864
    invoke-static {p1, v0}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->build(Ljava/lang/String;Ljava/util/Map;)Lcom/honeywell/Message;

    move-result-object p1

    .line 2865
    invoke-virtual {p0, p1}, Lcom/honeywell/aidc/BarcodeReader;->execute(Lcom/honeywell/Message;)Lcom/honeywell/Message;

    move-result-object p1

    .line 2866
    invoke-static {p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkRuntimeError(Lcom/honeywell/Message;)V

    .line 2871
    :try_start_2d
    new-instance v0, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/honeywell/Message;->action:Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "result"

    .line 2872
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "values"

    .line 2873
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "profileFound"

    .line 2874
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_46} :catch_4c

    const-string v0, "Exit loadProfile"

    .line 2880
    invoke-static {v0}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    return p1

    :catch_4c
    move-exception p1

    .line 2876
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "An error occurred while communicating with the scanner service."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 2857
    :cond_55
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "loadProfile, BarcodeReader is closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5d
    const-string p1, "loadProfile, profile param is empty"

    .line 2852
    invoke-static {p1}, Lcom/honeywell/aidc/DebugLog;->d(Ljava/lang/String;)V

    .line 2853
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "profile param is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public notify(Ljava/lang/String;)V
    .registers 4

    const-string v0, "scanner.notify"

    const-string v1, "notification"

    .line 3039
    invoke-static {v0, v1, p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/honeywell/Message;

    move-result-object p1

    .line 3040
    invoke-virtual {p0, p1}, Lcom/honeywell/aidc/BarcodeReader;->execute(Lcom/honeywell/Message;)Lcom/honeywell/Message;

    move-result-object p1

    .line 3041
    invoke-static {p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkRuntimeError(Lcom/honeywell/Message;)V

    return-void
.end method

.method public release()V
    .registers 3

    .line 2680
    iget-boolean v0, p0, Lcom/honeywell/aidc/BarcodeReader;->mBarcodeReaderClosed:Z

    if-nez v0, :cond_12

    const-string v0, "scanner.release"

    .line 2684
    invoke-static {v0}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->build(Ljava/lang/String;)Lcom/honeywell/Message;

    move-result-object v0

    .line 2685
    invoke-virtual {p0, v0}, Lcom/honeywell/aidc/BarcodeReader;->execute(Lcom/honeywell/Message;)Lcom/honeywell/Message;

    move-result-object v0

    .line 2686
    invoke-static {v0}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkRuntimeError(Lcom/honeywell/Message;)V

    return-void

    .line 2681
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BarcodeReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeBarcodeListener(Lcom/honeywell/aidc/BarcodeReader$BarcodeListener;)V
    .registers 3

    .line 2470
    const-class v0, Lcom/honeywell/aidc/BarcodeReader$BarcodeListener;

    invoke-direct {p0, p1, v0}, Lcom/honeywell/aidc/BarcodeReader;->removeListener(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public removeTriggerListener(Lcom/honeywell/aidc/BarcodeReader$TriggerListener;)V
    .registers 3

    .line 2480
    const-class v0, Lcom/honeywell/aidc/BarcodeReader$TriggerListener;

    invoke-direct {p0, p1, v0}, Lcom/honeywell/aidc/BarcodeReader;->removeListener(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public setProperties(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2795
    iget-boolean v0, p0, Lcom/honeywell/aidc/BarcodeReader;->mBarcodeReaderClosed:Z

    if-nez v0, :cond_1c

    .line 2799
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "values"

    .line 2800
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "scanner.setProperties"

    .line 2801
    invoke-static {p1, v0}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->build(Ljava/lang/String;Ljava/util/Map;)Lcom/honeywell/Message;

    move-result-object p1

    .line 2802
    invoke-virtual {p0, p1}, Lcom/honeywell/aidc/BarcodeReader;->execute(Lcom/honeywell/Message;)Lcom/honeywell/Message;

    move-result-object p1

    .line 2803
    invoke-static {p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkRuntimeError(Lcom/honeywell/Message;)V

    return-void

    .line 2796
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BarcodeReader is closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProperty(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/honeywell/aidc/UnsupportedPropertyException;
        }
    .end annotation

    .line 2729
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/honeywell/aidc/BarcodeReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2730
    invoke-virtual {p0, p1}, Lcom/honeywell/aidc/BarcodeReader;->getIntProperty(Ljava/lang/String;)I

    move-result p1

    if-ne p1, p2, :cond_e

    return-void

    .line 2732
    :cond_e
    new-instance p1, Lcom/honeywell/aidc/UnsupportedPropertyException;

    const-string p2, "Property was rejected by the scanner service."

    invoke-direct {p1, p2}, Lcom/honeywell/aidc/UnsupportedPropertyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/honeywell/aidc/UnsupportedPropertyException;
        }
    .end annotation

    .line 2769
    invoke-direct {p0, p1, p2}, Lcom/honeywell/aidc/BarcodeReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2770
    invoke-virtual {p0, p1}, Lcom/honeywell/aidc/BarcodeReader;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_18

    .line 2771
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_18

    .line 2772
    :cond_10
    new-instance p1, Lcom/honeywell/aidc/UnsupportedPropertyException;

    const-string p2, "Property was rejected by the scanner service."

    invoke-direct {p1, p2}, Lcom/honeywell/aidc/UnsupportedPropertyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    :goto_18
    return-void
.end method

.method public setProperty(Ljava/lang/String;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/honeywell/aidc/UnsupportedPropertyException;
        }
    .end annotation

    .line 2749
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/honeywell/aidc/BarcodeReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2750
    invoke-virtual {p0, p1}, Lcom/honeywell/aidc/BarcodeReader;->getBooleanProperty(Ljava/lang/String;)Z

    move-result p1

    if-ne p1, p2, :cond_e

    return-void

    .line 2752
    :cond_e
    new-instance p1, Lcom/honeywell/aidc/UnsupportedPropertyException;

    const-string p2, "Property was rejected by the scanner service."

    invoke-direct {p1, p2}, Lcom/honeywell/aidc/UnsupportedPropertyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public softwareTrigger(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/honeywell/aidc/ScannerNotClaimedException;,
            Lcom/honeywell/aidc/ScannerUnavailableException;
        }
    .end annotation

    .line 3098
    iget-boolean v0, p0, Lcom/honeywell/aidc/BarcodeReader;->mBarcodeReaderClosed:Z

    if-nez v0, :cond_1e

    .line 3101
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "internal.setTrigger"

    const-string v1, "state"

    invoke-static {v0, v1, p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/honeywell/Message;

    move-result-object p1

    .line 3102
    invoke-virtual {p0, p1}, Lcom/honeywell/aidc/BarcodeReader;->execute(Lcom/honeywell/Message;)Lcom/honeywell/Message;

    move-result-object p1

    .line 3103
    invoke-static {p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkScannerNotClaimedException(Lcom/honeywell/Message;)V

    .line 3104
    invoke-static {p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkScannerUnavailable(Lcom/honeywell/Message;)V

    .line 3105
    invoke-static {p1}, Lcom/honeywell/aidc/DcsJsonRpcHelper;->checkRuntimeError(Lcom/honeywell/Message;)V

    return-void

    .line 3099
    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BarcodeReader is closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startPropertyEditor(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 3063
    invoke-virtual {p0, p1, v0, v0}, Lcom/honeywell/aidc/BarcodeReader;->startPropertyEditor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startPropertyEditor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 3076
    iget-boolean v0, p0, Lcom/honeywell/aidc/BarcodeReader;->mBarcodeReaderClosed:Z

    if-nez v0, :cond_22

    .line 3080
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.honeywell.decode.intent.action.EDIT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "barcodeReader"

    .line 3081
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p2, :cond_17

    const-string v1, "propertyGroup"

    .line 3083
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_17
    if-eqz p3, :cond_1e

    const-string p2, "activityTitle"

    .line 3086
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3088
    :cond_1e
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 3077
    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "BarcodeReader is closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 3184
    iget-object p2, p0, Lcom/honeywell/aidc/BarcodeReader;->mExecutor:Lcom/honeywell/IExecutor;

    invoke-interface {p2}, Lcom/honeywell/IExecutor;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
