.class public Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;
.super Ljava/lang/Object;
.source "SymbologyDictionary.java"


# static fields
.field private static dictionary:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "."

    const-string v2, "DOTCODE"

    .line 18
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "1"

    const-string v2, "CODE1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, ";"

    const-string v2, "MERGED_COUPON"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "<"

    const-string v2, "CODE39_BASE32, CODE32, ITALIAN PHARMACODE, PARAF"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, ">"

    const-string v2, "LABELCODE_IV"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "="

    const-string v2, "TRIOPTIC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "?"

    const-string v2, "KOREA_POST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, ","

    const-string v2, "INFOMAIL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "`"

    const-string v2, "EAN13_ISBN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "["

    const-string v2, "SWEEDISH_POST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "|"

    const-string v2, "RM_MAILMARK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "]"

    const-string v2, "BRAZIL_POST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "A"

    const-string v2, "AUS_POST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "B"

    const-string v2, "BRITISH_POST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "C"

    const-string v2, "CANADIAN_POST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "D"

    const-string v2, "EAN8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "E"

    const-string v2, "UPCE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "G"

    const-string v2, "BC412"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "H"

    const-string v2, "HAN_XIN_CODE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "I"

    const-string v2, "GS1_128"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "J"

    const-string v2, "JAPAN_POST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "K"

    const-string v2, "KIX_CODE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "L"

    const-string v2, "PLANET_CODE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "M"

    const-string v2, "USPS_4_STATE, INTELLIGENT_MAIL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "N"

    const-string v2, "UPU_4_STATE, ID_TAGS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "O"

    const-string v2, "OCR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "P"

    const-string v2, "POSTNET"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "Q"

    const-string v2, "HK25, CHINA_POST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "R"

    const-string v2, "MICROPDF"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "S"

    const-string v2, "SECURE_CODE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "T"

    const-string v2, "TLC39"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "U"

    const-string v2, "ULTRACODE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "V"

    const-string v2, "CODABLOCK_A"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "W"

    const-string v2, "POSICODE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "X"

    const-string v2, "GRID_MATRIX"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "Y"

    const-string v2, "NEC25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "Z"

    const-string v2, "MESA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "a"

    const-string v2, "CODABAR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "b"

    const-string v2, "CODE39"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "c"

    const-string v2, "UPCA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "d"

    const-string v2, "EAN13"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "e"

    const-string v2, "I25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "f"

    const-string v2, "S25 (2BAR and 3BAR)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "g"

    const-string v2, "MSI"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "h"

    const-string v2, "CODE11"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "i"

    const-string v2, "CODE93"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "j"

    const-string v2, "CODE128"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "k"

    const-string v2, "UNUSED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "l"

    const-string v2, "CODE49"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "m"

    const-string v2, "M25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "n"

    const-string v2, "PLESSEY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "o"

    const-string v2, "CODE16K"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "p"

    const-string v2, "CHANNELCODE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "q"

    const-string v2, "CODABLOCK_F"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "r"

    const-string v2, "PDF417"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "s"

    const-string v2, "QRCODE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "-"

    const-string v2, "MICROQR_ALT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "t"

    const-string v2, "TELEPEN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "u"

    const-string v2, "CODEZ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "v"

    const-string v2, "VERICODE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "w"

    const-string v2, "DATAMATRIX"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "x"

    const-string v2, "MAXICODE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "y"

    const-string v2, "RSS, COMPOSITE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "z"

    const-string v2, "GS1_DATABAR, AZTEC_CODE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "{"

    const-string v2, "GS1_DATABAR_LIM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    const-string v1, "}"

    const-string v2, "GS1_DATABAR_EXP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 87
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/honeywell/SymbologyDictionary;->dictionary:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
