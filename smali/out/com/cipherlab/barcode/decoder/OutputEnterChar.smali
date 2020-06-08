.class public final enum Lcom/cipherlab/barcode/decoder/OutputEnterChar;
.super Ljava/lang/Enum;
.source "OutputEnterChar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/barcode/decoder/OutputEnterChar;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Comma:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/OutputEnterChar;

.field public static final enum LF_Character:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

.field public static final enum None:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

.field public static final enum NotSupport:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

.field public static final enum Return:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

.field public static final enum Semicolon:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

.field public static final enum Space:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

.field public static final enum Tab:Lcom/cipherlab/barcode/decoder/OutputEnterChar;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 4
    new-instance v0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    const/4 v1, 0x0

    const-string v2, "None"

    invoke-direct {v0, v2, v1, v1}, Lcom/cipherlab/barcode/decoder/OutputEnterChar;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;->None:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    new-instance v0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    const/4 v2, 0x1

    const-string v3, "Return"

    const/16 v4, 0xd

    invoke-direct {v0, v3, v2, v4}, Lcom/cipherlab/barcode/decoder/OutputEnterChar;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;->Return:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    new-instance v0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    const/4 v3, 0x2

    const-string v4, "Tab"

    const/16 v5, 0x9

    invoke-direct {v0, v4, v3, v5}, Lcom/cipherlab/barcode/decoder/OutputEnterChar;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;->Tab:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    new-instance v0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    const/4 v4, 0x3

    const-string v5, "Space"

    const/16 v6, 0x20

    invoke-direct {v0, v5, v4, v6}, Lcom/cipherlab/barcode/decoder/OutputEnterChar;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;->Space:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    new-instance v0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    const/4 v5, 0x4

    const-string v6, "Comma"

    const/16 v7, 0x2c

    invoke-direct {v0, v6, v5, v7}, Lcom/cipherlab/barcode/decoder/OutputEnterChar;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;->Comma:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    new-instance v0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    const/4 v6, 0x5

    const-string v7, "Semicolon"

    const/16 v8, 0x3b

    invoke-direct {v0, v7, v6, v8}, Lcom/cipherlab/barcode/decoder/OutputEnterChar;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;->Semicolon:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    new-instance v0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    const/4 v7, 0x6

    const-string v8, "LF_Character"

    const/16 v9, 0x101

    invoke-direct {v0, v8, v7, v9}, Lcom/cipherlab/barcode/decoder/OutputEnterChar;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;->LF_Character:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    .line 5
    new-instance v0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    const/4 v8, 0x7

    const-string v9, "NotSupport"

    const/4 v10, -0x1

    invoke-direct {v0, v9, v8, v10}, Lcom/cipherlab/barcode/decoder/OutputEnterChar;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;->NotSupport:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    .line 3
    sget-object v10, Lcom/cipherlab/barcode/decoder/OutputEnterChar;->None:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    aput-object v10, v9, v1

    sget-object v1, Lcom/cipherlab/barcode/decoder/OutputEnterChar;->Return:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    aput-object v1, v9, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/OutputEnterChar;->Tab:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    aput-object v1, v9, v3

    sget-object v1, Lcom/cipherlab/barcode/decoder/OutputEnterChar;->Space:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    aput-object v1, v9, v4

    sget-object v1, Lcom/cipherlab/barcode/decoder/OutputEnterChar;->Comma:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    aput-object v1, v9, v5

    sget-object v1, Lcom/cipherlab/barcode/decoder/OutputEnterChar;->Semicolon:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    aput-object v1, v9, v6

    sget-object v1, Lcom/cipherlab/barcode/decoder/OutputEnterChar;->LF_Character:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/cipherlab/barcode/decoder/OutputEnterChar;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput p3, p0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/cipherlab/barcode/decoder/OutputEnterChar;
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_30

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2d

    const/16 v0, 0xd

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x20

    if-eq p0, v0, :cond_27

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_24

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_21

    const/16 v0, 0x101

    if-eq p0, v0, :cond_1e

    .line 39
    sget-object p0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;->None:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    return-object p0

    .line 30
    :cond_1e
    sget-object p0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;->LF_Character:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    return-object p0

    .line 28
    :cond_21
    sget-object p0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;->Semicolon:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    return-object p0

    .line 26
    :cond_24
    sget-object p0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;->Comma:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    return-object p0

    .line 24
    :cond_27
    sget-object p0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;->Space:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    return-object p0

    .line 22
    :cond_2a
    sget-object p0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;->Return:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    return-object p0

    .line 20
    :cond_2d
    sget-object p0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;->Tab:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    return-object p0

    .line 32
    :cond_30
    sget-object p0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;->NotSupport:Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/barcode/decoder/OutputEnterChar;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/barcode/decoder/OutputEnterChar;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/barcode/decoder/OutputEnterChar;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 14
    iget v0, p0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;->value:I

    return v0
.end method

.method public value()I
    .registers 2

    .line 44
    iget v0, p0, Lcom/cipherlab/barcode/decoder/OutputEnterChar;->value:I

    return v0
.end method
