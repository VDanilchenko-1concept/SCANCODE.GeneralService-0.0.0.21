.class public final enum Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;
.super Ljava/lang/Enum;
.source "ScannerManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/scancode/generalservice/scanner/ScannerManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SCANNER_MODELS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

.field public static final enum ANDROID_EMULATOR:Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

.field public static final enum CIPHER_LAB:Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

.field public static final enum GLOBAL_POS:Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

.field public static final enum HONEY_WELL:Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

.field public static final enum NEWLAND:Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

.field public static final enum SEUIC:Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

.field public static final enum SPEED_DATA:Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

.field public static final enum STUB_SCANNER:Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 61
    new-instance v0, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    const/4 v1, 0x0

    const-string v2, "CIPHER_LAB"

    invoke-direct {v0, v2, v1}, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;->CIPHER_LAB:Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    .line 62
    new-instance v0, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    const/4 v2, 0x1

    const-string v3, "HONEY_WELL"

    invoke-direct {v0, v3, v2}, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;->HONEY_WELL:Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    .line 63
    new-instance v0, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    const/4 v3, 0x2

    const-string v4, "GLOBAL_POS"

    invoke-direct {v0, v4, v3}, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;->GLOBAL_POS:Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    .line 64
    new-instance v0, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    const/4 v4, 0x3

    const-string v5, "SPEED_DATA"

    invoke-direct {v0, v5, v4}, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;->SPEED_DATA:Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    .line 65
    new-instance v0, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    const/4 v5, 0x4

    const-string v6, "NEWLAND"

    invoke-direct {v0, v6, v5}, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;->NEWLAND:Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    .line 66
    new-instance v0, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    const/4 v6, 0x5

    const-string v7, "SEUIC"

    invoke-direct {v0, v7, v6}, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;->SEUIC:Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    .line 67
    new-instance v0, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    const/4 v7, 0x6

    const-string v8, "ANDROID_EMULATOR"

    invoke-direct {v0, v8, v7}, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;->ANDROID_EMULATOR:Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    .line 68
    new-instance v0, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    const/4 v8, 0x7

    const-string v9, "STUB_SCANNER"

    invoke-direct {v0, v9, v8}, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;->STUB_SCANNER:Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    const/16 v9, 0x8

    new-array v9, v9, [Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    .line 60
    sget-object v10, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;->CIPHER_LAB:Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    aput-object v10, v9, v1

    sget-object v1, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;->HONEY_WELL:Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    aput-object v1, v9, v2

    sget-object v1, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;->GLOBAL_POS:Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    aput-object v1, v9, v3

    sget-object v1, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;->SPEED_DATA:Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    aput-object v1, v9, v4

    sget-object v1, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;->NEWLAND:Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    aput-object v1, v9, v5

    sget-object v1, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;->SEUIC:Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    aput-object v1, v9, v6

    sget-object v1, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;->ANDROID_EMULATOR:Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;->$VALUES:[Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;
    .registers 2

    .line 60
    const-class v0, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    return-object p0
.end method

.method public static values()[Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;
    .registers 1

    .line 60
    sget-object v0, Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;->$VALUES:[Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    invoke-virtual {v0}, [Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/scancode/generalservice/scanner/ScannerManagerFactory$SCANNER_MODELS;

    return-object v0
.end method
