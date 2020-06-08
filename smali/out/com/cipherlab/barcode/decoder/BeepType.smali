.class public final enum Lcom/cipherlab/barcode/decoder/BeepType;
.super Ljava/lang/Enum;
.source "BeepType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/barcode/decoder/BeepType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Alarm2:Lcom/cipherlab/barcode/decoder/BeepType;

.field public static final enum Alarm3:Lcom/cipherlab/barcode/decoder/BeepType;

.field public static final enum Default:Lcom/cipherlab/barcode/decoder/BeepType;

.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/BeepType;

.field public static final enum Hwandsw:Lcom/cipherlab/barcode/decoder/BeepType;

.field public static final enum LowBatt:Lcom/cipherlab/barcode/decoder/BeepType;

.field public static final enum MenuPop:Lcom/cipherlab/barcode/decoder/BeepType;

.field public static final enum MsgBox:Lcom/cipherlab/barcode/decoder/BeepType;

.field public static final enum Mute:Lcom/cipherlab/barcode/decoder/BeepType;

.field public static final enum Notify:Lcom/cipherlab/barcode/decoder/BeepType;

.field public static final enum VoicBeep:Lcom/cipherlab/barcode/decoder/BeepType;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 4
    new-instance v0, Lcom/cipherlab/barcode/decoder/BeepType;

    const/4 v1, 0x0

    const-string v2, "Mute"

    invoke-direct {v0, v2, v1}, Lcom/cipherlab/barcode/decoder/BeepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/BeepType;->Mute:Lcom/cipherlab/barcode/decoder/BeepType;

    .line 5
    new-instance v0, Lcom/cipherlab/barcode/decoder/BeepType;

    const/4 v2, 0x1

    const-string v3, "Default"

    invoke-direct {v0, v3, v2}, Lcom/cipherlab/barcode/decoder/BeepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/BeepType;->Default:Lcom/cipherlab/barcode/decoder/BeepType;

    .line 6
    new-instance v0, Lcom/cipherlab/barcode/decoder/BeepType;

    const/4 v3, 0x2

    const-string v4, "Hwandsw"

    invoke-direct {v0, v4, v3}, Lcom/cipherlab/barcode/decoder/BeepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/BeepType;->Hwandsw:Lcom/cipherlab/barcode/decoder/BeepType;

    .line 7
    new-instance v0, Lcom/cipherlab/barcode/decoder/BeepType;

    const/4 v4, 0x3

    const-string v5, "MenuPop"

    invoke-direct {v0, v5, v4}, Lcom/cipherlab/barcode/decoder/BeepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/BeepType;->MenuPop:Lcom/cipherlab/barcode/decoder/BeepType;

    .line 8
    new-instance v0, Lcom/cipherlab/barcode/decoder/BeepType;

    const/4 v5, 0x4

    const-string v6, "MsgBox"

    invoke-direct {v0, v6, v5}, Lcom/cipherlab/barcode/decoder/BeepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/BeepType;->MsgBox:Lcom/cipherlab/barcode/decoder/BeepType;

    .line 9
    new-instance v0, Lcom/cipherlab/barcode/decoder/BeepType;

    const/4 v6, 0x5

    const-string v7, "Notify"

    invoke-direct {v0, v7, v6}, Lcom/cipherlab/barcode/decoder/BeepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/BeepType;->Notify:Lcom/cipherlab/barcode/decoder/BeepType;

    .line 10
    new-instance v0, Lcom/cipherlab/barcode/decoder/BeepType;

    const/4 v7, 0x6

    const-string v8, "VoicBeep"

    invoke-direct {v0, v8, v7}, Lcom/cipherlab/barcode/decoder/BeepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/BeepType;->VoicBeep:Lcom/cipherlab/barcode/decoder/BeepType;

    .line 11
    new-instance v0, Lcom/cipherlab/barcode/decoder/BeepType;

    const/4 v8, 0x7

    const-string v9, "Alarm2"

    invoke-direct {v0, v9, v8}, Lcom/cipherlab/barcode/decoder/BeepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/BeepType;->Alarm2:Lcom/cipherlab/barcode/decoder/BeepType;

    .line 12
    new-instance v0, Lcom/cipherlab/barcode/decoder/BeepType;

    const/16 v9, 0x8

    const-string v10, "Alarm3"

    invoke-direct {v0, v10, v9}, Lcom/cipherlab/barcode/decoder/BeepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/BeepType;->Alarm3:Lcom/cipherlab/barcode/decoder/BeepType;

    .line 13
    new-instance v0, Lcom/cipherlab/barcode/decoder/BeepType;

    const/16 v10, 0x9

    const-string v11, "LowBatt"

    invoke-direct {v0, v11, v10}, Lcom/cipherlab/barcode/decoder/BeepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cipherlab/barcode/decoder/BeepType;->LowBatt:Lcom/cipherlab/barcode/decoder/BeepType;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/cipherlab/barcode/decoder/BeepType;

    .line 3
    sget-object v12, Lcom/cipherlab/barcode/decoder/BeepType;->Mute:Lcom/cipherlab/barcode/decoder/BeepType;

    aput-object v12, v11, v1

    sget-object v1, Lcom/cipherlab/barcode/decoder/BeepType;->Default:Lcom/cipherlab/barcode/decoder/BeepType;

    aput-object v1, v11, v2

    sget-object v1, Lcom/cipherlab/barcode/decoder/BeepType;->Hwandsw:Lcom/cipherlab/barcode/decoder/BeepType;

    aput-object v1, v11, v3

    sget-object v1, Lcom/cipherlab/barcode/decoder/BeepType;->MenuPop:Lcom/cipherlab/barcode/decoder/BeepType;

    aput-object v1, v11, v4

    sget-object v1, Lcom/cipherlab/barcode/decoder/BeepType;->MsgBox:Lcom/cipherlab/barcode/decoder/BeepType;

    aput-object v1, v11, v5

    sget-object v1, Lcom/cipherlab/barcode/decoder/BeepType;->Notify:Lcom/cipherlab/barcode/decoder/BeepType;

    aput-object v1, v11, v6

    sget-object v1, Lcom/cipherlab/barcode/decoder/BeepType;->VoicBeep:Lcom/cipherlab/barcode/decoder/BeepType;

    aput-object v1, v11, v7

    sget-object v1, Lcom/cipherlab/barcode/decoder/BeepType;->Alarm2:Lcom/cipherlab/barcode/decoder/BeepType;

    aput-object v1, v11, v8

    sget-object v1, Lcom/cipherlab/barcode/decoder/BeepType;->Alarm3:Lcom/cipherlab/barcode/decoder/BeepType;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lcom/cipherlab/barcode/decoder/BeepType;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/BeepType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/barcode/decoder/BeepType;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/barcode/decoder/BeepType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/barcode/decoder/BeepType;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/barcode/decoder/BeepType;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/barcode/decoder/BeepType;->ENUM$VALUES:[Lcom/cipherlab/barcode/decoder/BeepType;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/barcode/decoder/BeepType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
