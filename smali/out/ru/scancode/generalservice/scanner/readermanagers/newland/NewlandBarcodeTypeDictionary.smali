.class public Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;
.super Ljava/lang/Object;
.source "NewlandBarcodeTypeDictionary.java"


# static fields
.field public static dictNewLand:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 12
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "ZASETUP"

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "SETUP128"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "CODE128"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "UCCEAN128"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "AIM128"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "GS1_128"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "ISBT128"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "EAN8"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, "EAN13"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x9

    const-string v2, "UPCE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0xa

    const-string v2, "UPCA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0xb

    const-string v2, "ISBN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const-string v2, "ISSN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const-string v2, "CODE39"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const-string v2, "CODE93"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0xf

    const-string v2, "93I"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x10

    const-string v2, "CODABAR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x11

    const-string v2, "ITF"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x12

    const-string v2, "ITF6"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x13

    const-string v2, "ITF14"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x14

    const-string v2, "DPLEITCODE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x15

    const-string v2, "DPIDENTCODE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x16

    const-string v2, "CHNPOST25"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x17

    const-string v2, "STANDARD25"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const-string v2, "IATA25"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x18

    const-string v2, "MATRIX25"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x19

    const-string v2, "INDUSTRIAL25"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x1a

    const-string v2, "COOP25"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x1b

    const-string v2, "CODE11"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x1c

    const-string v2, "MSIPLESSEY"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x1d

    const-string v2, "PLESSEY"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x1e

    const-string v2, "RSS14"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x1f

    const-string v2, "RSSLIMITED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x20

    const-string v2, "RSSEXPANDED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x21

    const-string v2, "TELEPEN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x22

    const-string v2, "CHANNELCODE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x23

    const-string v2, "CODE32"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x24

    const-string v2, "CODEZ"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x25

    const-string v2, "CODABLOCKF"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x26

    const-string v2, "CODABLOCKA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x27

    const-string v2, "CODE49"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x28

    const-string v2, "CODE16K"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x29

    const-string v2, "HIBC128"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x2a

    const-string v2, "HIBC39"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x2b

    const-string v2, "RSSFAMILY"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x2c

    const-string v2, "TriopticCODE39"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x2d

    const-string v2, "UPC_E1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x100

    const-string v2, "PDF417"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x101

    const-string v2, "MICROPDF"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x102

    const-string v2, "QRCODE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x103

    const-string v2, "MICROQR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x104

    const-string v2, "AZTEC"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x105

    const-string v2, "DATAMATRIX"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x106

    const-string v2, "MAXICODE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x107

    const-string v2, "CSCODE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x108

    const-string v2, "GRIDMATRIX"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x109

    const-string v2, "EARMARK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x10a

    const-string v2, "VERICODE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x10b

    const-string v2, "CCA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x10c

    const-string v2, "CCB"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x10d

    const-string v2, "CCC"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x10e

    const-string v2, "COMPOSITE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x10f

    const-string v2, "HIBCAZT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x110

    const-string v2, "HIBCDM"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x111

    const-string v2, "HIBCMICROPDF"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x112

    const-string v2, "HIBCQR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x200

    const-string v2, "POSTNET"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x201

    const-string v2, "ONECODE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x202

    const-string v2, "RM4SCC"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x203

    const-string v2, "PLANET"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x204

    const-string v2, "KIX"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x205

    const-string v2, "APCUSTOM"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x206

    const-string v2, "APREDIRECT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x207

    const-string v2, "APREPLYPAID"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x208

    const-string v2, "APROUTING"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x300

    const-string v2, "NUMOCRB"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x301

    const-string v2, "PASSPORT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x302

    const-string v2, "TD1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x800

    const-string v2, "PRIVATE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const/16 v1, 0x801

    const-string v2, "ZZCODE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    sget-object v0, Lru/scancode/generalservice/scanner/readermanagers/newland/NewlandBarcodeTypeDictionary;->dictNewLand:Landroid/util/SparseArray;

    const v1, 0xffff

    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
