.class public final Lru/scancode/generalservice/scanner/readermanagers/honeywell/C0016c;
.super Ljava/lang/Object;
.source "C0016c.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final f98a:[Ljava/lang/String;

.field static final f99b:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "Code 128"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v4, "ISBT 128"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const-string v6, "Code 128/ ISBT128(J/C)"

    const/4 v7, 0x2

    aput-object v6, v1, v7

    .line 12
    sput-object v1, Lru/scancode/generalservice/scanner/readermanagers/honeywell/C0016c;->f98a:[Ljava/lang/String;

    const/16 v1, 0x57

    new-array v1, v1, [[Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/String;

    const-string v8, "2D PQA"

    aput-object v8, v6, v3

    const-string v8, ">"

    aput-object v8, v6, v5

    const-string v8, "0x3E"

    aput-object v8, v6, v7

    aput-object v6, v1, v3

    new-array v6, v0, [Ljava/lang/String;

    const-string v8, "Australian Post"

    aput-object v8, v6, v3

    const-string v8, "A"

    aput-object v8, v6, v5

    const-string v8, "0x41"

    aput-object v8, v6, v7

    aput-object v6, v1, v5

    new-array v6, v0, [Ljava/lang/String;

    const-string v8, "Auxiliary Port Input 1"

    aput-object v8, v6, v3

    const-string v8, "3"

    aput-object v8, v6, v5

    const-string v8, "0x33"

    aput-object v8, v6, v7

    aput-object v6, v1, v7

    new-array v6, v0, [Ljava/lang/String;

    const-string v8, "Auxiliary Port Input 2"

    aput-object v8, v6, v3

    const-string v8, "4"

    aput-object v8, v6, v5

    const-string v8, "0x34"

    aput-object v8, v6, v7

    aput-object v6, v1, v0

    new-array v6, v0, [Ljava/lang/String;

    const-string v8, "Aztec Code"

    aput-object v8, v6, v3

    const-string v8, "z"

    aput-object v8, v6, v5

    const-string v8, "0x7A"

    aput-object v8, v6, v7

    const/4 v8, 0x4

    aput-object v6, v1, v8

    new-array v6, v0, [Ljava/lang/String;

    const-string v8, "Aztec Mesas"

    aput-object v8, v6, v3

    const-string v8, "Z"

    aput-object v8, v6, v5

    const-string v8, "0x5A"

    aput-object v8, v6, v7

    const/4 v8, 0x5

    aput-object v6, v1, v8

    new-array v6, v0, [Ljava/lang/String;

    const-string v8, "BC412"

    aput-object v8, v6, v3

    const-string v8, "G"

    aput-object v8, v6, v5

    const-string v8, "0x47"

    aput-object v8, v6, v7

    const/4 v8, 0x6

    aput-object v6, v1, v8

    new-array v6, v0, [Ljava/lang/String;

    const-string v8, "British Post"

    aput-object v8, v6, v3

    const-string v8, "B"

    aput-object v8, v6, v5

    const-string v8, "0x42"

    aput-object v8, v6, v7

    const/4 v8, 0x7

    aput-object v6, v1, v8

    new-array v6, v0, [Ljava/lang/String;

    const-string v8, "Canadian Post"

    aput-object v8, v6, v3

    const-string v8, "C"

    aput-object v8, v6, v5

    const-string v8, "0x43"

    aput-object v8, v6, v7

    const/16 v8, 0x8

    aput-object v6, v1, v8

    new-array v6, v0, [Ljava/lang/String;

    const-string v8, "Channel Code"

    aput-object v8, v6, v3

    const-string v8, "p"

    aput-object v8, v6, v5

    const-string v8, "0x70"

    aput-object v8, v6, v7

    const/16 v8, 0x9

    aput-object v6, v1, v8

    new-array v6, v0, [Ljava/lang/String;

    const-string v8, "China Post"

    aput-object v8, v6, v3

    const-string v8, "Q"

    aput-object v8, v6, v5

    const-string v8, "0x51"

    aput-object v8, v6, v7

    const/16 v8, 0xa

    aput-object v6, v1, v8

    new-array v6, v0, [Ljava/lang/String;

    const-string v8, "Chinese Sensible Code (Han Xin Code)"

    aput-object v8, v6, v3

    const-string v8, "H"

    aput-object v8, v6, v5

    const-string v8, "0x48"

    aput-object v8, v6, v7

    const/16 v8, 0xb

    aput-object v6, v1, v8

    new-array v6, v0, [Ljava/lang/String;

    const-string v8, "Codabar"

    aput-object v8, v6, v3

    const-string v8, "a"

    aput-object v8, v6, v5

    const-string v8, "0x61"

    aput-object v8, v6, v7

    const/16 v8, 0xc

    aput-object v6, v1, v8

    new-array v6, v0, [Ljava/lang/String;

    const-string v8, "Codablock A"

    aput-object v8, v6, v3

    const-string v8, "V"

    aput-object v8, v6, v5

    const-string v8, "0x56"

    aput-object v8, v6, v7

    const/16 v8, 0xd

    aput-object v6, v1, v8

    new-array v6, v0, [Ljava/lang/String;

    const-string v8, "Codablock F"

    aput-object v8, v6, v3

    const-string v8, "q"

    aput-object v8, v6, v5

    const-string v8, "0x71"

    aput-object v8, v6, v7

    const/16 v8, 0xe

    aput-object v6, v1, v8

    new-array v6, v0, [Ljava/lang/String;

    const-string v8, "Code 11"

    aput-object v8, v6, v3

    const-string v8, "h"

    aput-object v8, v6, v5

    const-string v8, "0x68"

    aput-object v8, v6, v7

    const/16 v8, 0xf

    aput-object v6, v1, v8

    new-array v6, v0, [Ljava/lang/String;

    aput-object v2, v6, v3

    const-string v2, "j"

    aput-object v2, v6, v5

    const-string v8, "0x6A"

    aput-object v8, v6, v7

    const/16 v9, 0x10

    aput-object v6, v1, v9

    new-array v6, v0, [Ljava/lang/String;

    const-string v9, "GS1-128"

    aput-object v9, v6, v3

    const-string v9, "I"

    aput-object v9, v6, v5

    const-string v9, "0x49"

    aput-object v9, v6, v7

    const/16 v9, 0x11

    aput-object v6, v1, v9

    new-array v6, v0, [Ljava/lang/String;

    aput-object v4, v6, v3

    aput-object v2, v6, v5

    aput-object v8, v6, v7

    const/16 v2, 0x12

    aput-object v6, v1, v2

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "Code 16K"

    aput-object v4, v2, v3

    const-string v4, "o"

    aput-object v4, v2, v5

    const-string v4, "0x6F"

    aput-object v4, v2, v7

    const/16 v4, 0x13

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "Code 32"

    aput-object v4, v2, v3

    const-string v4, "<"

    aput-object v4, v2, v5

    const-string v4, "0x3C"

    aput-object v4, v2, v7

    const/16 v4, 0x14

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "Code 39"

    aput-object v4, v2, v3

    const-string v4, "b"

    aput-object v4, v2, v5

    const-string v4, "0x62"

    aput-object v4, v2, v7

    const/16 v4, 0x15

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "Code 49"

    aput-object v4, v2, v3

    const-string v4, "l"

    aput-object v4, v2, v5

    const-string v4, "0x6C"

    aput-object v4, v2, v7

    const/16 v4, 0x16

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "Code 93"

    aput-object v4, v2, v3

    const-string v4, "i"

    aput-object v4, v2, v5

    const-string v4, "0x69"

    aput-object v4, v2, v7

    const/16 v4, 0x17

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "Code One"

    aput-object v4, v2, v3

    const-string v4, "1"

    aput-object v4, v2, v5

    const-string v4, "0x31"

    aput-object v4, v2, v7

    const/16 v4, 0x18

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "Code Z"

    aput-object v4, v2, v3

    const-string v4, "u"

    aput-object v4, v2, v5

    const-string v4, "0x75"

    aput-object v4, v2, v7

    const/16 v4, 0x19

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "Data Matrix"

    aput-object v4, v2, v3

    const-string v4, "w"

    aput-object v4, v2, v5

    const-string v4, "0x77"

    aput-object v4, v2, v7

    const/16 v4, 0x1a

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "DotCode"

    aput-object v4, v2, v3

    const-string v4, "."

    aput-object v4, v2, v5

    const-string v4, "0x2E"

    aput-object v4, v2, v7

    const/16 v4, 0x1b

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "EAN13"

    aput-object v4, v2, v3

    const-string v4, "d"

    aput-object v4, v2, v5

    const-string v4, "0x64"

    aput-object v4, v2, v7

    const/16 v4, 0x1c

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "EAN8"

    aput-object v4, v2, v3

    const-string v4, "D"

    aput-object v4, v2, v5

    const-string v4, "0x44"

    aput-object v4, v2, v7

    const/16 v4, 0x1d

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "Grid Matrix Code"

    aput-object v4, v2, v3

    const-string v4, "X"

    aput-object v4, v2, v5

    const-string v4, "0x58"

    aput-object v4, v2, v7

    const/16 v4, 0x1e

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "GS1 DataMatrix"

    aput-object v4, v2, v3

    const-string v4, "y"

    aput-object v4, v2, v5

    const-string v6, "0x79"

    aput-object v6, v2, v7

    const/16 v8, 0x1f

    aput-object v2, v1, v8

    new-array v2, v0, [Ljava/lang/String;

    const-string v8, "GS1 Composite"

    aput-object v8, v2, v3

    aput-object v4, v2, v5

    aput-object v6, v2, v7

    const/16 v4, 0x20

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "GS1 DataBar"

    aput-object v4, v2, v3

    const-string v6, "{"

    aput-object v6, v2, v5

    const-string v6, "0x7B"

    aput-object v6, v2, v7

    const/16 v6, 0x21

    aput-object v2, v1, v6

    new-array v2, v0, [Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v4, "}"

    aput-object v4, v2, v5

    const-string v4, "0x7D"

    aput-object v4, v2, v7

    const/16 v4, 0x22

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "Host Command Response"

    aput-object v4, v2, v3

    const-string v4, "7"

    aput-object v4, v2, v5

    const-string v4, "0x37"

    aput-object v4, v2, v7

    const/16 v4, 0x23

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "Host Input"

    aput-object v4, v2, v3

    const-string v4, "8"

    aput-object v4, v2, v5

    const-string v4, "0x38"

    aput-object v4, v2, v7

    const/16 v4, 0x24

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "InfoMail"

    aput-object v4, v2, v3

    const-string v4, ","

    aput-object v4, v2, v5

    const-string v4, "0x2c"

    aput-object v4, v2, v7

    const/16 v4, 0x25

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "Intelligent Mail Barcode"

    aput-object v4, v2, v3

    const-string v4, "M"

    aput-object v4, v2, v5

    const-string v4, "0x4D"

    aput-object v4, v2, v7

    const/16 v4, 0x26

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "Interleaved 2 of 5"

    aput-object v4, v2, v3

    const-string v4, "e"

    aput-object v4, v2, v5

    const-string v4, "0x65"

    aput-object v4, v2, v7

    const/16 v4, 0x27

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "Japanese Post"

    aput-object v4, v2, v3

    const-string v4, "J"

    aput-object v4, v2, v5

    const-string v4, "0x4A"

    aput-object v4, v2, v7

    const/16 v4, 0x28

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "Keyboard"

    aput-object v4, v2, v3

    const-string v4, "k"

    aput-object v4, v2, v5

    const-string v4, "0x6B"

    aput-object v4, v2, v7

    const/16 v4, 0x29

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "KIX"

    aput-object v4, v2, v3

    const-string v4, "K"

    aput-object v4, v2, v5

    const-string v4, "0x4B"

    aput-object v4, v2, v7

    const/16 v4, 0x2a

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "Korea Post"

    aput-object v4, v2, v3

    const-string v4, "?"

    aput-object v4, v2, v5

    const-string v4, "0x3F"

    aput-object v4, v2, v7

    const/16 v4, 0x2b

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "Label Code"

    aput-object v4, v2, v3

    const-string v4, "F"

    aput-object v4, v2, v5

    const-string v4, "0x46"

    aput-object v4, v2, v7

    const/16 v4, 0x2c

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "Matrix 2 of 5"

    aput-object v4, v2, v3

    const-string v4, "m"

    aput-object v4, v2, v5

    const-string v4, "0x6D"

    aput-object v4, v2, v7

    const/16 v4, 0x2d

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "MaxiCode"

    aput-object v4, v2, v3

    const-string v4, "x"

    aput-object v4, v2, v5

    const-string v4, "0x78"

    aput-object v4, v2, v7

    const/16 v4, 0x2e

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "Menu Command Response"

    aput-object v4, v2, v3

    const-string v4, "6"

    aput-object v4, v2, v5

    const-string v4, "0x36"

    aput-object v4, v2, v7

    const/16 v4, 0x2f

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "Merged Coupon Code"

    aput-object v4, v2, v3

    const-string v4, ";"

    aput-object v4, v2, v5

    const-string v4, "0x3B"

    aput-object v4, v2, v7

    const/16 v4, 0x30

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "MICR CMC 7"

    aput-object v4, v2, v3

    const-string v4, "!"

    aput-object v4, v2, v5

    const-string v4, "0x21"

    aput-object v4, v2, v7

    const/16 v4, 0x31

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "MICR E 13 B"

    aput-object v4, v2, v3

    const-string v4, "\""

    aput-object v4, v2, v5

    const-string v4, "0x22"

    aput-object v4, v2, v7

    const/16 v4, 0x32

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "MicroPDF417"

    aput-object v4, v2, v3

    const-string v4, "R"

    aput-object v4, v2, v5

    const-string v4, "0x52"

    aput-object v4, v2, v7

    const/16 v4, 0x33

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "MSI"

    aput-object v4, v2, v3

    const-string v4, "g"

    aput-object v4, v2, v5

    const-string v4, "0x67"

    aput-object v4, v2, v7

    const/16 v4, 0x34

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "MSR AAMVA Track 1"

    aput-object v4, v2, v3

    const-string v4, "#"

    aput-object v4, v2, v5

    const-string v4, "0x23"

    aput-object v4, v2, v7

    const/16 v4, 0x35

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "MSR AAMVA Track 2"

    aput-object v4, v2, v3

    const-string v4, "$"

    aput-object v4, v2, v5

    const-string v4, "0x24"

    aput-object v4, v2, v7

    const/16 v4, 0x36

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "MSR AAMVA Track 3"

    aput-object v4, v2, v3

    const-string v4, "%"

    aput-object v4, v2, v5

    const-string v4, "0x25"

    aput-object v4, v2, v7

    const/16 v4, 0x37

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "MSR California Track 1"

    aput-object v4, v2, v3

    const-string v4, "&"

    aput-object v4, v2, v5

    const-string v4, "0x26"

    aput-object v4, v2, v7

    const/16 v4, 0x38

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "MSR California Track 2"

    aput-object v4, v2, v3

    const-string v4, "\'"

    aput-object v4, v2, v5

    const-string v4, "0x27"

    aput-object v4, v2, v7

    const/16 v4, 0x39

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "MSR California Track 3"

    aput-object v4, v2, v3

    const-string v4, "("

    aput-object v4, v2, v5

    const-string v4, "0x28"

    aput-object v4, v2, v7

    const/16 v4, 0x3a

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "MSR Track 1"

    aput-object v4, v2, v3

    const-string v4, ")"

    aput-object v4, v2, v5

    const-string v4, "0x29"

    aput-object v4, v2, v7

    const/16 v4, 0x3b

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "MSR Track 2"

    aput-object v4, v2, v3

    const-string v4, "*"

    aput-object v4, v2, v5

    const-string v4, "0x2A"

    aput-object v4, v2, v7

    const/16 v4, 0x3c

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "MSR Track 3"

    aput-object v4, v2, v3

    const-string v4, "+"

    aput-object v4, v2, v5

    const-string v4, "0x2B"

    aput-object v4, v2, v7

    const/16 v4, 0x3d

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "NEC 2 of 5"

    aput-object v4, v2, v3

    const-string v4, "Y"

    aput-object v4, v2, v5

    const-string v4, "0x59"

    aput-object v4, v2, v7

    const/16 v4, 0x3e

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "OCR MICR (E 13 B)"

    aput-object v4, v2, v3

    const-string v4, "O"

    aput-object v4, v2, v5

    const-string v6, "0x4F"

    aput-object v6, v2, v7

    const/16 v8, 0x3f

    aput-object v2, v1, v8

    new-array v2, v0, [Ljava/lang/String;

    const-string v8, "OCR SEMI Font"

    aput-object v8, v2, v3

    aput-object v4, v2, v5

    aput-object v6, v2, v7

    const/16 v8, 0x40

    aput-object v2, v1, v8

    new-array v2, v0, [Ljava/lang/String;

    const-string v8, "OCR US Money Font"

    aput-object v8, v2, v3

    aput-object v4, v2, v5

    aput-object v6, v2, v7

    const/16 v8, 0x41

    aput-object v2, v1, v8

    new-array v2, v0, [Ljava/lang/String;

    const-string v8, "OCR-A"

    aput-object v8, v2, v3

    aput-object v4, v2, v5

    aput-object v6, v2, v7

    const/16 v8, 0x42

    aput-object v2, v1, v8

    new-array v2, v0, [Ljava/lang/String;

    const-string v8, "OCR-B"

    aput-object v8, v2, v3

    aput-object v4, v2, v5

    aput-object v6, v2, v7

    const/16 v4, 0x43

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "PDF417"

    aput-object v4, v2, v3

    const-string v4, "r"

    aput-object v4, v2, v5

    const-string v4, "0x72"

    aput-object v4, v2, v7

    const/16 v4, 0x44

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "Planet Code"

    aput-object v4, v2, v3

    const-string v4, "L"

    aput-object v4, v2, v5

    const-string v4, "0x4C"

    aput-object v4, v2, v7

    const/16 v4, 0x45

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "Plessey Code"

    aput-object v4, v2, v3

    const-string v4, "n"

    aput-object v4, v2, v5

    const-string v4, "0x6E"

    aput-object v4, v2, v7

    const/16 v4, 0x46

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "PosiCode"

    aput-object v4, v2, v3

    const-string v4, "W"

    aput-object v4, v2, v5

    const-string v4, "0x57"

    aput-object v4, v2, v7

    const/16 v4, 0x47

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "Postal-4i"

    aput-object v4, v2, v3

    const-string v4, "N"

    aput-object v4, v2, v5

    const-string v4, "0x4E"

    aput-object v4, v2, v7

    const/16 v4, 0x48

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "Postnet"

    aput-object v4, v2, v3

    const-string v4, "P"

    aput-object v4, v2, v5

    const-string v4, "0x50"

    aput-object v4, v2, v7

    const/16 v4, 0x49

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "QR Code"

    aput-object v4, v2, v3

    const-string v4, "s"

    aput-object v4, v2, v5

    const-string v4, "0x73"

    aput-object v4, v2, v7

    const/16 v4, 0x4a

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "Micro QR"

    aput-object v4, v2, v3

    const-string v4, "-"

    aput-object v4, v2, v5

    const-string v4, "0x2D"

    aput-object v4, v2, v7

    const/16 v4, 0x4b

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "Quantity"

    aput-object v4, v2, v3

    const-string v4, "5"

    aput-object v4, v2, v5

    const-string v4, "0x35"

    aput-object v4, v2, v7

    const/16 v4, 0x4c

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "SecureCode"

    aput-object v4, v2, v3

    const-string v4, "S"

    aput-object v4, v2, v5

    const-string v4, "0x53"

    aput-object v4, v2, v7

    const/16 v4, 0x4d

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "Send From Script"

    aput-object v4, v2, v3

    const-string v4, "9"

    aput-object v4, v2, v5

    const-string v4, "0x39"

    aput-object v4, v2, v7

    const/16 v4, 0x4e

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "Straight 2 of 5"

    aput-object v4, v2, v3

    const-string v4, "f"

    aput-object v4, v2, v5

    const-string v4, "0x66"

    aput-object v4, v2, v7

    const/16 v4, 0x4f

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "TCIF Linked Code 39 (TLC39)"

    aput-object v4, v2, v3

    const-string v4, "T"

    aput-object v4, v2, v5

    const-string v4, "0x54"

    aput-object v4, v2, v7

    const/16 v4, 0x50

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "Telepen"

    aput-object v4, v2, v3

    const-string v4, "t"

    aput-object v4, v2, v5

    const-string v4, "0x74"

    aput-object v4, v2, v7

    const/16 v4, 0x51

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "Trioptic Code"

    aput-object v4, v2, v3

    const-string v4, "="

    aput-object v4, v2, v5

    const-string v4, "0x3D"

    aput-object v4, v2, v7

    const/16 v4, 0x52

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "Ultracode"

    aput-object v4, v2, v3

    const-string v4, "U"

    aput-object v4, v2, v5

    const-string v4, "0x55"

    aput-object v4, v2, v7

    const/16 v4, 0x53

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "UPC-A"

    aput-object v4, v2, v3

    const-string v4, "c"

    aput-object v4, v2, v5

    const-string v4, "0x63"

    aput-object v4, v2, v7

    const/16 v4, 0x54

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "UPC-E"

    aput-object v4, v2, v3

    const-string v4, "E"

    aput-object v4, v2, v5

    const-string v4, "0x45"

    aput-object v4, v2, v7

    const/16 v4, 0x55

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "Vericode"

    aput-object v2, v0, v3

    const-string v2, "v"

    aput-object v2, v0, v5

    const-string v2, "0x76"

    aput-object v2, v0, v7

    const/16 v2, 0x56

    aput-object v0, v1, v2

    .line 101
    sput-object v1, Lru/scancode/generalservice/scanner/readermanagers/honeywell/C0016c;->f99b:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
