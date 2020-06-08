.class public final Lcom/nlscan/android/scan/ScanSettings$Global;
.super Ljava/lang/Object;
.source "ScanSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nlscan/android/scan/ScanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Global"
.end annotation


# static fields
.field public static final AUTO_NEW_LINE:Ljava/lang/String;

.field public static final DEFAULT_EMULATE_OUTPUT_INTERVAL_TIME:J

.field public static final DEFAULT_SCAN_REPEAT_TIMEOUT:J

.field public static final DEFAULT_SCAN_TIMEOUT:J

.field public static final EMULATE_OUTPUT_INTERVAL_TIME:Ljava/lang/String;

.field public static final JS_CODE:Ljava/lang/String;

.field public static final JS_CODE_ENABLE:Ljava/lang/String;

.field public static final MAX_EMULATE_OUTPUT_INTERVAL_TIME:J

.field public static final MIN_SCAN_INTERVAL_TIME:J

.field public static final OUT_PUT_MODE:Ljava/lang/String;

.field public static final OUT_PUT_RECOVERABLE:Ljava/lang/String;

.field public static final PREFIX:Ljava/lang/String;

.field public static final PREFIX_ENABLE:Ljava/lang/String;

.field public static final SCAN_ENABLE:Ljava/lang/String;

.field public static final SCAN_ENCODE:Ljava/lang/String;

.field public static final SCAN_INTERVAL_TIME:Ljava/lang/String;

.field public static final SCAN_MODE:Ljava/lang/String;

.field public static final SCAN_PROMPT_LED:Ljava/lang/String;

.field public static final SCAN_PROMPT_SOUND:Ljava/lang/String;

.field public static final SCAN_PROMPT_VIBRATOR:Ljava/lang/String;

.field public static final SCAN_REPEAT_TIMEOUT:Ljava/lang/String;

.field public static final SCAN_RESULT_REPLACE_CONTENT:Ljava/lang/String;

.field public static final SCAN_SHOWSENNCMDVIEWNAME:Ljava/lang/String;

.field public static final SCAN_TIME_OUT:Ljava/lang/String;

.field public static final SCAN_TRIM_LIMITS:Ljava/lang/String;

.field public static final SUFFIX:Ljava/lang/String;

.field public static final SUFFIX_ENABLE:Ljava/lang/String;

.field public static final TRIGGER_MODE_BACK:Ljava/lang/String;

.field public static final TRIGGER_MODE_LEFT:Ljava/lang/String;

.field public static final TRIGGER_MODE_MAIN:Ljava/lang/String;

.field public static final TRIGGER_MODE_RIGHT:Ljava/lang/String;

.field public static final VALUE_AUTO_NEW_LINE_OFF:I

.field public static final VALUE_AUTO_NEW_LINE_ON:I

.field public static final VALUE_OUT_PUT_MODE_BROADCAST:I

.field public static final VALUE_OUT_PUT_MODE_EMULATE_KEY:I

.field public static final VALUE_OUT_PUT_MODE_FILLING:I

.field public static final VALUE_OUT_PUT_RECOVERABLE_OFF:I

.field public static final VALUE_OUT_PUT_RECOVERABLE_ON:I

.field public static final VALUE_PREFIX_DISABLE:I

.field public static final VALUE_PREFIX_ENABLE:I

.field public static final VALUE_SCAN_DISABLE:I

.field public static final VALUE_SCAN_ENABLE:I

.field public static final VALUE_SCAN_ENCODE_GBK:I

.field public static final VALUE_SCAN_ENCODE_ISO_8859_1:I

.field public static final VALUE_SCAN_ENCODE_UTF_8:I

.field public static final VALUE_SCAN_MODE_CONTINUE:I

.field public static final VALUE_SCAN_MODE_DOWN_UP:I

.field public static final VALUE_SCAN_MODE_REACTION:I

.field public static final VALUE_SCAN_MODE_TIME_OUT:I

.field public static final VALUE_SCAN_PROMPT_LED_OFF:I

.field public static final VALUE_SCAN_PROMPT_LED_ON:I

.field public static final VALUE_SCAN_PROMPT_SOUND_OFF:I

.field public static final VALUE_SCAN_PROMPT_SOUND_ON:I

.field public static final VALUE_SCAN_PROMPT_VIBRATOR_OFF:I

.field public static final VALUE_SCAN_PROMPT_VIBRATOR_ON:I

.field public static final VALUE_SUFFIX_DISABLE:I

.field public static final VALUE_SUFFIX_ENABLE:I

.field public static final VALUE_TRIGGER_OFF:I

.field public static final VALUE_TRIGGER_ON:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const-string v0, "SCAN_ENABLE"

    const-string v1, "scan_enable"

    .line 19
    invoke-static {v0, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nlscan/android/scan/ScanSettings$Global;->SCAN_ENABLE:Ljava/lang/String;

    const-string v0, "OUT_PUT_MODE"

    const-string v1, "output_mode"

    .line 22
    invoke-static {v0, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nlscan/android/scan/ScanSettings$Global;->OUT_PUT_MODE:Ljava/lang/String;

    const-string v0, "SCAN_MODE"

    const-string v1, "scan_mode"

    .line 24
    invoke-static {v0, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nlscan/android/scan/ScanSettings$Global;->SCAN_MODE:Ljava/lang/String;

    const-string v0, "TRIGGER_MODE_MAIN"

    const-string v1, "trigger_mode_main"

    .line 27
    invoke-static {v0, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nlscan/android/scan/ScanSettings$Global;->TRIGGER_MODE_MAIN:Ljava/lang/String;

    const-string v0, "TRIGGER_MODE_LEFT"

    const-string v1, "trigger_mode_left"

    .line 29
    invoke-static {v0, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nlscan/android/scan/ScanSettings$Global;->TRIGGER_MODE_LEFT:Ljava/lang/String;

    const-string v0, "TRIGGER_MODE_RIGHT"

    const-string v1, "trigger_mode_right"

    .line 31
    invoke-static {v0, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nlscan/android/scan/ScanSettings$Global;->TRIGGER_MODE_RIGHT:Ljava/lang/String;

    const-string v0, "TRIGGER_MODE_BACK"

    const-string v1, "trigger_mode_back"

    .line 33
    invoke-static {v0, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nlscan/android/scan/ScanSettings$Global;->TRIGGER_MODE_BACK:Ljava/lang/String;

    const-string v0, "PREFIX_ENABLE"

    const-string v1, "prefix_enable"

    .line 36
    invoke-static {v0, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nlscan/android/scan/ScanSettings$Global;->PREFIX_ENABLE:Ljava/lang/String;

    const-string v0, "SUFFIX_ENABLE"

    const-string v1, "suffix_enable"

    .line 38
    invoke-static {v0, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nlscan/android/scan/ScanSettings$Global;->SUFFIX_ENABLE:Ljava/lang/String;

    const-string v0, "PREFIX"

    const-string v1, "prefix"

    .line 40
    invoke-static {v0, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nlscan/android/scan/ScanSettings$Global;->PREFIX:Ljava/lang/String;

    const-string v0, "SUFFIX"

    const-string v1, "suffix"

    .line 42
    invoke-static {v0, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nlscan/android/scan/ScanSettings$Global;->SUFFIX:Ljava/lang/String;

    const-string v0, "SCAN_PROMPT_SOUND"

    const-string v1, "scan_prompt_sound"

    .line 44
    invoke-static {v0, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nlscan/android/scan/ScanSettings$Global;->SCAN_PROMPT_SOUND:Ljava/lang/String;

    const-string v0, "SCAN_PROMPT_VIBRATOR"

    const-string v1, "scan_prompt_vibrator"

    .line 46
    invoke-static {v0, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nlscan/android/scan/ScanSettings$Global;->SCAN_PROMPT_VIBRATOR:Ljava/lang/String;

    const-string v0, "SCAN_PROMPT_LED"

    const-string v1, "scan_prompt_led"

    .line 48
    invoke-static {v0, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nlscan/android/scan/ScanSettings$Global;->SCAN_PROMPT_LED:Ljava/lang/String;

    const-string v0, "SCAN_TIME_OUT"

    const-string v1, "scan_time_out"

    .line 51
    invoke-static {v0, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nlscan/android/scan/ScanSettings$Global;->SCAN_TIME_OUT:Ljava/lang/String;

    const-string v0, "SCAN_INTERVAL_TIME"

    const-string v1, "scan_interval_time"

    .line 53
    invoke-static {v0, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nlscan/android/scan/ScanSettings$Global;->SCAN_INTERVAL_TIME:Ljava/lang/String;

    const-string v0, "AUTO_NEW_LINE"

    const-string v1, "auto_new_line"

    .line 55
    invoke-static {v0, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nlscan/android/scan/ScanSettings$Global;->AUTO_NEW_LINE:Ljava/lang/String;

    const-string v0, "SCAN_ENCODE"

    const-string v1, "scan_encode"

    .line 57
    invoke-static {v0, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nlscan/android/scan/ScanSettings$Global;->SCAN_ENCODE:Ljava/lang/String;

    const-string v0, "SCAN_RESULT_REPLACE_CONTENT"

    const-string v1, "scan_result_replace_content"

    .line 60
    invoke-static {v0, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nlscan/android/scan/ScanSettings$Global;->SCAN_RESULT_REPLACE_CONTENT:Ljava/lang/String;

    const-string v0, "SCAN_TRIM_LIMITS"

    const-string v1, "scan_trim_limits"

    .line 62
    invoke-static {v0, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nlscan/android/scan/ScanSettings$Global;->SCAN_TRIM_LIMITS:Ljava/lang/String;

    const-string v0, "SCAN_SHOWSENNCMDVIEWNAME"

    const-string v1, "scan_showsendcmdname"

    .line 64
    invoke-static {v0, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nlscan/android/scan/ScanSettings$Global;->SCAN_SHOWSENNCMDVIEWNAME:Ljava/lang/String;

    const-string v0, "OUT_PUT_RECOVERABLE"

    const-string v1, "out_put_recoverable"

    .line 66
    invoke-static {v0, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nlscan/android/scan/ScanSettings$Global;->OUT_PUT_RECOVERABLE:Ljava/lang/String;

    const-string v0, "EMULATE_OUTPUT_INTERVAL_TIME"

    const-string v1, "emulate_output_interval_time"

    .line 68
    invoke-static {v0, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nlscan/android/scan/ScanSettings$Global;->EMULATE_OUTPUT_INTERVAL_TIME:Ljava/lang/String;

    const-string v0, "SCAN_REPEAT_TIMEOUT"

    const-string v1, "scan_repeat_timeout"

    .line 70
    invoke-static {v0, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nlscan/android/scan/ScanSettings$Global;->SCAN_REPEAT_TIMEOUT:Ljava/lang/String;

    const-string v0, "JS_CODE"

    const-string v1, "js_code"

    .line 73
    invoke-static {v0, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nlscan/android/scan/ScanSettings$Global;->JS_CODE:Ljava/lang/String;

    const-string v0, "JS_CODE_ENABLE"

    const-string v1, "js_code_enable"

    .line 75
    invoke-static {v0, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getStringFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nlscan/android/scan/ScanSettings$Global;->JS_CODE_ENABLE:Ljava/lang/String;

    const/4 v0, 0x3

    const-string v1, "VALUE_OUT_PUT_MODE_FILLING"

    .line 78
    invoke-static {v1, v0}, Lcom/nlscan/android/scan/ScanSettings$Global;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/nlscan/android/scan/ScanSettings$Global;->VALUE_OUT_PUT_MODE_FILLING:I

    const/4 v1, 0x1

    const-string v2, "VALUE_OUT_PUT_MODE_EMULATE_KEY"

    .line 80
    invoke-static {v2, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/nlscan/android/scan/ScanSettings$Global;->VALUE_OUT_PUT_MODE_EMULATE_KEY:I

    const/4 v2, 0x2

    const-string v3, "VALUE_OUT_PUT_MODE_BROADCAST"

    .line 82
    invoke-static {v3, v2}, Lcom/nlscan/android/scan/ScanSettings$Global;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/nlscan/android/scan/ScanSettings$Global;->VALUE_OUT_PUT_MODE_BROADCAST:I

    const-string v3, "VALUE_OUT_PUT_RECOVERABLE_ON"

    .line 85
    invoke-static {v3, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/nlscan/android/scan/ScanSettings$Global;->VALUE_OUT_PUT_RECOVERABLE_ON:I

    const/4 v3, 0x0

    const-string v4, "VALUE_OUT_PUT_RECOVERABLE_OFF"

    .line 87
    invoke-static {v4, v3}, Lcom/nlscan/android/scan/ScanSettings$Global;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/nlscan/android/scan/ScanSettings$Global;->VALUE_OUT_PUT_RECOVERABLE_OFF:I

    const-string v4, "VALUE_SCAN_MODE_DOWN_UP"

    .line 91
    invoke-static {v4, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/nlscan/android/scan/ScanSettings$Global;->VALUE_SCAN_MODE_DOWN_UP:I

    const-string v4, "VALUE_SCAN_MODE_CONTINUE"

    .line 93
    invoke-static {v4, v0}, Lcom/nlscan/android/scan/ScanSettings$Global;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/nlscan/android/scan/ScanSettings$Global;->VALUE_SCAN_MODE_CONTINUE:I

    const-string v4, "VALUE_SCAN_MODE_TIME_OUT"

    .line 95
    invoke-static {v4, v2}, Lcom/nlscan/android/scan/ScanSettings$Global;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/nlscan/android/scan/ScanSettings$Global;->VALUE_SCAN_MODE_TIME_OUT:I

    const-string v4, "VALUE_SCAN_MODE_REACTION"

    .line 97
    invoke-static {v4, v0}, Lcom/nlscan/android/scan/ScanSettings$Global;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/nlscan/android/scan/ScanSettings$Global;->VALUE_SCAN_MODE_REACTION:I

    const-string v4, "VALUE_TRIGGER_ON"

    .line 100
    invoke-static {v4, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/nlscan/android/scan/ScanSettings$Global;->VALUE_TRIGGER_ON:I

    const-string v4, "VALUE_TRIGGER_OFF"

    .line 102
    invoke-static {v4, v3}, Lcom/nlscan/android/scan/ScanSettings$Global;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/nlscan/android/scan/ScanSettings$Global;->VALUE_TRIGGER_OFF:I

    const-string v4, "VALUE_SCAN_PROMPT_SOUND_ON"

    .line 105
    invoke-static {v4, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/nlscan/android/scan/ScanSettings$Global;->VALUE_SCAN_PROMPT_SOUND_ON:I

    const-string v4, "VALUE_SCAN_PROMPT_SOUND_OFF"

    .line 107
    invoke-static {v4, v3}, Lcom/nlscan/android/scan/ScanSettings$Global;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/nlscan/android/scan/ScanSettings$Global;->VALUE_SCAN_PROMPT_SOUND_OFF:I

    const-string v4, "VALUE_SCAN_PROMPT_VIBRATOR_ON"

    .line 110
    invoke-static {v4, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/nlscan/android/scan/ScanSettings$Global;->VALUE_SCAN_PROMPT_VIBRATOR_ON:I

    const-string v4, "VALUE_SCAN_PROMPT_VIBRATOR_OFF"

    .line 112
    invoke-static {v4, v3}, Lcom/nlscan/android/scan/ScanSettings$Global;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/nlscan/android/scan/ScanSettings$Global;->VALUE_SCAN_PROMPT_VIBRATOR_OFF:I

    const-string v4, "VALUE_SCAN_PROMPT_LED_ON"

    .line 114
    invoke-static {v4, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/nlscan/android/scan/ScanSettings$Global;->VALUE_SCAN_PROMPT_LED_ON:I

    const-string v4, "VALUE_SCAN_PROMPT_LED_OFF"

    .line 116
    invoke-static {v4, v3}, Lcom/nlscan/android/scan/ScanSettings$Global;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/nlscan/android/scan/ScanSettings$Global;->VALUE_SCAN_PROMPT_LED_OFF:I

    const-string v4, "MIN_SCAN_INTERVAL_TIME"

    const-wide/16 v5, 0x32

    .line 120
    invoke-static {v4, v5, v6}, Lcom/nlscan/android/scan/ScanSettings$Global;->getLongFieldValue(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lcom/nlscan/android/scan/ScanSettings$Global;->MIN_SCAN_INTERVAL_TIME:J

    const-string v4, "DEFAULT_SCAN_TIMEOUT"

    const-wide/16 v5, 0xbb8

    .line 122
    invoke-static {v4, v5, v6}, Lcom/nlscan/android/scan/ScanSettings$Global;->getLongFieldValue(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lcom/nlscan/android/scan/ScanSettings$Global;->DEFAULT_SCAN_TIMEOUT:J

    const-string v4, "DEFAULT_EMULATE_OUTPUT_INTERVAL_TIME"

    const-wide/16 v5, 0x2

    .line 125
    invoke-static {v4, v5, v6}, Lcom/nlscan/android/scan/ScanSettings$Global;->getLongFieldValue(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lcom/nlscan/android/scan/ScanSettings$Global;->DEFAULT_EMULATE_OUTPUT_INTERVAL_TIME:J

    const-string v4, "MAX_EMULATE_OUTPUT_INTERVAL_TIME"

    const-wide/16 v5, 0x64

    .line 127
    invoke-static {v4, v5, v6}, Lcom/nlscan/android/scan/ScanSettings$Global;->getLongFieldValue(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lcom/nlscan/android/scan/ScanSettings$Global;->MAX_EMULATE_OUTPUT_INTERVAL_TIME:J

    const-string v4, "DEFAULT_SCAN_REPEAT_TIMEOUT"

    const-wide/16 v5, 0x0

    .line 129
    invoke-static {v4, v5, v6}, Lcom/nlscan/android/scan/ScanSettings$Global;->getLongFieldValue(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lcom/nlscan/android/scan/ScanSettings$Global;->DEFAULT_SCAN_REPEAT_TIMEOUT:J

    const-string v4, "VALUE_SCAN_ENABLE"

    .line 132
    invoke-static {v4, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/nlscan/android/scan/ScanSettings$Global;->VALUE_SCAN_ENABLE:I

    const-string v4, "VALUE_SCAN_DISABLE"

    .line 134
    invoke-static {v4, v3}, Lcom/nlscan/android/scan/ScanSettings$Global;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/nlscan/android/scan/ScanSettings$Global;->VALUE_SCAN_DISABLE:I

    const-string v4, "VALUE_PREFIX_ENABLE"

    .line 137
    invoke-static {v4, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/nlscan/android/scan/ScanSettings$Global;->VALUE_PREFIX_ENABLE:I

    const-string v4, "VALUE_PREFIX_DISABLE"

    .line 139
    invoke-static {v4, v3}, Lcom/nlscan/android/scan/ScanSettings$Global;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/nlscan/android/scan/ScanSettings$Global;->VALUE_PREFIX_DISABLE:I

    const-string v4, "VALUE_SUFFIX_ENABLE"

    .line 142
    invoke-static {v4, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/nlscan/android/scan/ScanSettings$Global;->VALUE_SUFFIX_ENABLE:I

    const-string v4, "VALUE_SUFFIX_DISABLE"

    .line 144
    invoke-static {v4, v3}, Lcom/nlscan/android/scan/ScanSettings$Global;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/nlscan/android/scan/ScanSettings$Global;->VALUE_SUFFIX_DISABLE:I

    const-string v4, "VALUE_AUTO_NEW_LINE_ON"

    .line 147
    invoke-static {v4, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/nlscan/android/scan/ScanSettings$Global;->VALUE_AUTO_NEW_LINE_ON:I

    const-string v4, "VALUE_AUTO_NEW_LINE_OFF"

    .line 149
    invoke-static {v4, v3}, Lcom/nlscan/android/scan/ScanSettings$Global;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/nlscan/android/scan/ScanSettings$Global;->VALUE_AUTO_NEW_LINE_OFF:I

    const-string v3, "VALUE_SCAN_ENCODE_UTF_8"

    .line 152
    invoke-static {v3, v1}, Lcom/nlscan/android/scan/ScanSettings$Global;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/nlscan/android/scan/ScanSettings$Global;->VALUE_SCAN_ENCODE_UTF_8:I

    const-string v1, "VALUE_SCAN_ENCODE_GBK"

    .line 154
    invoke-static {v1, v2}, Lcom/nlscan/android/scan/ScanSettings$Global;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/nlscan/android/scan/ScanSettings$Global;->VALUE_SCAN_ENCODE_GBK:I

    const-string v1, "VALUE_SCAN_ENCODE_ISO_8859_1"

    .line 156
    invoke-static {v1, v0}, Lcom/nlscan/android/scan/ScanSettings$Global;->getIntFieldValue(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/nlscan/android/scan/ScanSettings$Global;->VALUE_SCAN_ENCODE_ISO_8859_1:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getIntFieldValue(Ljava/lang/String;I)I
    .registers 3

    :try_start_0
    const-string v0, "com.nlscan.android.scan.ScanSettingValues"

    .line 161
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 162
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 163
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return p0

    :catch_f
    return p1
.end method

.method private static getLongFieldValue(Ljava/lang/String;J)J
    .registers 4

    :try_start_0
    const-string v0, "com.nlscan.android.scan.ScanSettingValues"

    .line 172
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 173
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 174
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-wide p0

    :catch_f
    move-exception p0

    const-string v0, "TAG"

    .line 176
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide p1
.end method

.method private static getStringFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "com.nlscan.android.scan.ScanSettingValues"

    .line 184
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 185
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 186
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    return-object p1
.end method
