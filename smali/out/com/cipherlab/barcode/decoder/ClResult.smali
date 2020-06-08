.class public final enum Lcom/cipherlab/barcode/decoder/ClResult;
.super Ljava/lang/Enum;
.source "ClResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/barcode/decoder/ClResult;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/ClResult;

.field public static final enum Err_InvalidParameter:Lcom/cipherlab/barcode/decoder/ClResult;

.field public static final enum Err_NotFindProfile:Lcom/cipherlab/barcode/decoder/ClResult;

.field public static final enum Err_NotSupport:Lcom/cipherlab/barcode/decoder/ClResult;

.field public static final enum S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

.field public static final enum S_OK:Lcom/cipherlab/barcode/decoder/ClResult;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 7
    new-instance v0, Lcom/cipherlab/barcode/decoder/ClResult;

    const/4 v1, 0x0

    const-string v2, "S_OK"

    invoke-direct {v0, v2, v1}, Lcom/cipherlab/barcode/decoder/ClResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/ClResult;->S_OK:Lcom/cipherlab/barcode/decoder/ClResult;

    .line 8
    new-instance v0, Lcom/cipherlab/barcode/decoder/ClResult;

    const/4 v2, 0x1

    const-string v3, "S_ERR"

    invoke-direct {v0, v3, v2}, Lcom/cipherlab/barcode/decoder/ClResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    .line 9
    new-instance v0, Lcom/cipherlab/barcode/decoder/ClResult;

    const/4 v3, 0x2

    const-string v4, "Err_InvalidParameter"

    invoke-direct {v0, v4, v3}, Lcom/cipherlab/barcode/decoder/ClResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/ClResult;->Err_InvalidParameter:Lcom/cipherlab/barcode/decoder/ClResult;

    .line 10
    new-instance v0, Lcom/cipherlab/barcode/decoder/ClResult;

    const/4 v4, 0x3

    const-string v5, "Err_NotSupport"

    invoke-direct {v0, v5, v4}, Lcom/cipherlab/barcode/decoder/ClResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/ClResult;->Err_NotSupport:Lcom/cipherlab/barcode/decoder/ClResult;

    .line 11
    new-instance v0, Lcom/cipherlab/barcode/decoder/ClResult;

    const/4 v5, 0x4

    const-string v6, "Err_NotFindProfile"

    invoke-direct {v0, v6, v5}, Lcom/cipherlab/barcode/decoder/ClResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/ClResult;->Err_NotFindProfile:Lcom/cipherlab/barcode/decoder/ClResult;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/cipherlab/barcode/decoder/ClResult;

    .line 6
    sget-object v7, Lcom/cipherlab/barcode/decoder/ClResult;->S_OK:Lcom/cipherlab/barcode/decoder/ClResult;

    aput-object v7, v6, v1

    sget-object v1, Lcom/cipherlab/barcode/decoder/ClResult;->S_ERR:Lcom/cipherlab/barcode/decoder/ClResult;

    aput-object v1, v6, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/ClResult;->Err_InvalidParameter:Lcom/cipherlab/barcode/decoder/ClResult;

    aput-object v1, v6, v3

    sget-object v1, Lcom/cipherlab/barcode/decoder/ClResult;->Err_NotSupport:Lcom/cipherlab/barcode/decoder/ClResult;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/cipherlab/barcode/decoder/ClResult;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/ClResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/barcode/decoder/ClResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/barcode/decoder/ClResult;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/barcode/decoder/ClResult;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/barcode/decoder/ClResult;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/ClResult;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/barcode/decoder/ClResult;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    return-void
.end method
