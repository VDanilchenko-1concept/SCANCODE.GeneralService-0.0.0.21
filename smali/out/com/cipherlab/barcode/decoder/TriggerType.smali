.class public final enum Lcom/cipherlab/barcode/decoder/TriggerType;
.super Ljava/lang/Enum;
.source "TriggerType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/barcode/decoder/TriggerType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AutoAimMode:Lcom/cipherlab/barcode/decoder/TriggerType;

.field public static final enum CombinedLevelandAimMode:Lcom/cipherlab/barcode/decoder/TriggerType;

.field public static final enum ContinuousMode:Lcom/cipherlab/barcode/decoder/TriggerType;

.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/TriggerType;

.field public static final enum LevelMode:Lcom/cipherlab/barcode/decoder/TriggerType;

.field public static final enum NotSupport:Lcom/cipherlab/barcode/decoder/TriggerType;

.field public static final enum PresentationMode:Lcom/cipherlab/barcode/decoder/TriggerType;

.field public static final enum ReleaseScanMode:Lcom/cipherlab/barcode/decoder/TriggerType;

.field public static final enum TypicalAimMode:Lcom/cipherlab/barcode/decoder/TriggerType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 4
    new-instance v0, Lcom/cipherlab/barcode/decoder/TriggerType;

    const/4 v1, 0x0

    const-string v2, "LevelMode"

    invoke-direct {v0, v2, v1, v1}, Lcom/cipherlab/barcode/decoder/TriggerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/TriggerType;->LevelMode:Lcom/cipherlab/barcode/decoder/TriggerType;

    .line 5
    new-instance v0, Lcom/cipherlab/barcode/decoder/TriggerType;

    const/4 v2, 0x1

    const/4 v3, 0x4

    const-string v4, "ContinuousMode"

    invoke-direct {v0, v4, v2, v3}, Lcom/cipherlab/barcode/decoder/TriggerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/TriggerType;->ContinuousMode:Lcom/cipherlab/barcode/decoder/TriggerType;

    .line 6
    new-instance v0, Lcom/cipherlab/barcode/decoder/TriggerType;

    const/4 v4, 0x2

    const/4 v5, 0x7

    const-string v6, "PresentationMode"

    invoke-direct {v0, v6, v4, v5}, Lcom/cipherlab/barcode/decoder/TriggerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/TriggerType;->PresentationMode:Lcom/cipherlab/barcode/decoder/TriggerType;

    .line 7
    new-instance v0, Lcom/cipherlab/barcode/decoder/TriggerType;

    const/4 v6, 0x3

    const-string v7, "AutoAimMode"

    const/16 v8, 0x9

    invoke-direct {v0, v7, v6, v8}, Lcom/cipherlab/barcode/decoder/TriggerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/TriggerType;->AutoAimMode:Lcom/cipherlab/barcode/decoder/TriggerType;

    .line 8
    new-instance v0, Lcom/cipherlab/barcode/decoder/TriggerType;

    const-string v7, "ReleaseScanMode"

    const/16 v8, 0x32

    invoke-direct {v0, v7, v3, v8}, Lcom/cipherlab/barcode/decoder/TriggerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/TriggerType;->ReleaseScanMode:Lcom/cipherlab/barcode/decoder/TriggerType;

    .line 9
    new-instance v0, Lcom/cipherlab/barcode/decoder/TriggerType;

    const/4 v7, 0x5

    const-string v8, "TypicalAimMode"

    const/16 v9, 0x33

    invoke-direct {v0, v8, v7, v9}, Lcom/cipherlab/barcode/decoder/TriggerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/TriggerType;->TypicalAimMode:Lcom/cipherlab/barcode/decoder/TriggerType;

    .line 10
    new-instance v0, Lcom/cipherlab/barcode/decoder/TriggerType;

    const/4 v8, 0x6

    const-string v9, "CombinedLevelandAimMode"

    const/16 v10, 0x34

    invoke-direct {v0, v9, v8, v10}, Lcom/cipherlab/barcode/decoder/TriggerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/TriggerType;->CombinedLevelandAimMode:Lcom/cipherlab/barcode/decoder/TriggerType;

    .line 11
    new-instance v0, Lcom/cipherlab/barcode/decoder/TriggerType;

    const-string v9, "NotSupport"

    const/16 v10, 0x63

    invoke-direct {v0, v9, v5, v10}, Lcom/cipherlab/barcode/decoder/TriggerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/TriggerType;->NotSupport:Lcom/cipherlab/barcode/decoder/TriggerType;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/cipherlab/barcode/decoder/TriggerType;

    .line 3
    sget-object v10, Lcom/cipherlab/barcode/decoder/TriggerType;->LevelMode:Lcom/cipherlab/barcode/decoder/TriggerType;

    aput-object v10, v9, v1

    sget-object v1, Lcom/cipherlab/barcode/decoder/TriggerType;->ContinuousMode:Lcom/cipherlab/barcode/decoder/TriggerType;

    aput-object v1, v9, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/TriggerType;->PresentationMode:Lcom/cipherlab/barcode/decoder/TriggerType;

    aput-object v1, v9, v4

    sget-object v1, Lcom/cipherlab/barcode/decoder/TriggerType;->AutoAimMode:Lcom/cipherlab/barcode/decoder/TriggerType;

    aput-object v1, v9, v6

    sget-object v1, Lcom/cipherlab/barcode/decoder/TriggerType;->ReleaseScanMode:Lcom/cipherlab/barcode/decoder/TriggerType;

    aput-object v1, v9, v3

    sget-object v1, Lcom/cipherlab/barcode/decoder/TriggerType;->TypicalAimMode:Lcom/cipherlab/barcode/decoder/TriggerType;

    aput-object v1, v9, v7

    sget-object v1, Lcom/cipherlab/barcode/decoder/TriggerType;->CombinedLevelandAimMode:Lcom/cipherlab/barcode/decoder/TriggerType;

    aput-object v1, v9, v8

    aput-object v0, v9, v5

    sput-object v9, Lcom/cipherlab/barcode/decoder/TriggerType;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/TriggerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lcom/cipherlab/barcode/decoder/TriggerType;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/cipherlab/barcode/decoder/TriggerType;
    .registers 2

    if-eqz p0, :cond_24

    const/4 v0, 0x4

    if-eq p0, v0, :cond_21

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1e

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1b

    packed-switch p0, :pswitch_data_28

    .line 40
    sget-object p0, Lcom/cipherlab/barcode/decoder/TriggerType;->NotSupport:Lcom/cipherlab/barcode/decoder/TriggerType;

    return-object p0

    .line 38
    :pswitch_12
    sget-object p0, Lcom/cipherlab/barcode/decoder/TriggerType;->CombinedLevelandAimMode:Lcom/cipherlab/barcode/decoder/TriggerType;

    return-object p0

    .line 36
    :pswitch_15
    sget-object p0, Lcom/cipherlab/barcode/decoder/TriggerType;->TypicalAimMode:Lcom/cipherlab/barcode/decoder/TriggerType;

    return-object p0

    .line 34
    :pswitch_18
    sget-object p0, Lcom/cipherlab/barcode/decoder/TriggerType;->ReleaseScanMode:Lcom/cipherlab/barcode/decoder/TriggerType;

    return-object p0

    .line 32
    :cond_1b
    sget-object p0, Lcom/cipherlab/barcode/decoder/TriggerType;->AutoAimMode:Lcom/cipherlab/barcode/decoder/TriggerType;

    return-object p0

    .line 30
    :cond_1e
    sget-object p0, Lcom/cipherlab/barcode/decoder/TriggerType;->PresentationMode:Lcom/cipherlab/barcode/decoder/TriggerType;

    return-object p0

    .line 28
    :cond_21
    sget-object p0, Lcom/cipherlab/barcode/decoder/TriggerType;->ContinuousMode:Lcom/cipherlab/barcode/decoder/TriggerType;

    return-object p0

    .line 26
    :cond_24
    sget-object p0, Lcom/cipherlab/barcode/decoder/TriggerType;->LevelMode:Lcom/cipherlab/barcode/decoder/TriggerType;

    return-object p0

    nop

    :pswitch_data_28
    .packed-switch 0x32
        :pswitch_18
        :pswitch_15
        :pswitch_12
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/barcode/decoder/TriggerType;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/barcode/decoder/TriggerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/barcode/decoder/TriggerType;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/barcode/decoder/TriggerType;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/barcode/decoder/TriggerType;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/TriggerType;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/barcode/decoder/TriggerType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 20
    iget v0, p0, Lcom/cipherlab/barcode/decoder/TriggerType;->value:I

    return v0
.end method

.method public value()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/cipherlab/barcode/decoder/TriggerType;->value:I

    return v0
.end method
