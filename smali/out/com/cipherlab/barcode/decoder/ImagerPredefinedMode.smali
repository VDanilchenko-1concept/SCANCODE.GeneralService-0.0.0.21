.class public final enum Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;
.super Ljava/lang/Enum;
.source "ImagerPredefinedMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BrightEnvironment_1D_2D:Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;

.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;

.field public static final enum NotSupport:Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;

.field public static final enum ReflectiveSurface_1D_2D:Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;

.field public static final enum Standard_1D:Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;

.field public static final enum Standard_1D_2D:Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 4
    new-instance v0, Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;

    const/4 v1, 0x0

    const-string v2, "Standard_1D"

    invoke-direct {v0, v2, v1}, Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;->Standard_1D:Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;

    .line 5
    new-instance v0, Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;

    const/4 v2, 0x1

    const-string v3, "Standard_1D_2D"

    invoke-direct {v0, v3, v2}, Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;->Standard_1D_2D:Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;

    .line 6
    new-instance v0, Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;

    const/4 v3, 0x2

    const-string v4, "BrightEnvironment_1D_2D"

    invoke-direct {v0, v4, v3}, Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;->BrightEnvironment_1D_2D:Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;

    .line 7
    new-instance v0, Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;

    const/4 v4, 0x3

    const-string v5, "ReflectiveSurface_1D_2D"

    invoke-direct {v0, v5, v4}, Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;->ReflectiveSurface_1D_2D:Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;

    .line 8
    new-instance v0, Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;

    const/4 v5, 0x4

    const-string v6, "NotSupport"

    invoke-direct {v0, v6, v5}, Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;->NotSupport:Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;

    .line 3
    sget-object v7, Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;->Standard_1D:Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;

    aput-object v7, v6, v1

    sget-object v1, Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;->Standard_1D_2D:Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;

    aput-object v1, v6, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;->BrightEnvironment_1D_2D:Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;

    aput-object v1, v6, v3

    sget-object v1, Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;->ReflectiveSurface_1D_2D:Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/barcode/decoder/ImagerPredefinedMode;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
