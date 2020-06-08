.class public final enum Lcom/cipherlab/rfid/InventoryStatusSettings;
.super Ljava/lang/Enum;
.source "InventoryStatusSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/rfid/InventoryStatusSettings;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final enum AB_FLIP:Lcom/cipherlab/rfid/InventoryStatusSettings;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/rfid/InventoryStatusSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/rfid/InventoryStatusSettings;

.field public static final enum STATE_A:Lcom/cipherlab/rfid/InventoryStatusSettings;

.field public static final enum STATE_B:Lcom/cipherlab/rfid/InventoryStatusSettings;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 8
    new-instance v0, Lcom/cipherlab/rfid/InventoryStatusSettings;

    const/4 v1, 0x0

    const-string v2, "STATE_A"

    invoke-direct {v0, v2, v1, v1}, Lcom/cipherlab/rfid/InventoryStatusSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/InventoryStatusSettings;->STATE_A:Lcom/cipherlab/rfid/InventoryStatusSettings;

    new-instance v0, Lcom/cipherlab/rfid/InventoryStatusSettings;

    const/4 v2, 0x1

    const-string v3, "STATE_B"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v2, v4}, Lcom/cipherlab/rfid/InventoryStatusSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/InventoryStatusSettings;->STATE_B:Lcom/cipherlab/rfid/InventoryStatusSettings;

    new-instance v0, Lcom/cipherlab/rfid/InventoryStatusSettings;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const-string v5, "AB_FLIP"

    invoke-direct {v0, v5, v4, v3}, Lcom/cipherlab/rfid/InventoryStatusSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/InventoryStatusSettings;->AB_FLIP:Lcom/cipherlab/rfid/InventoryStatusSettings;

    new-array v3, v3, [Lcom/cipherlab/rfid/InventoryStatusSettings;

    sget-object v5, Lcom/cipherlab/rfid/InventoryStatusSettings;->STATE_A:Lcom/cipherlab/rfid/InventoryStatusSettings;

    aput-object v5, v3, v1

    sget-object v1, Lcom/cipherlab/rfid/InventoryStatusSettings;->STATE_B:Lcom/cipherlab/rfid/InventoryStatusSettings;

    aput-object v1, v3, v2

    aput-object v0, v3, v4

    sput-object v3, Lcom/cipherlab/rfid/InventoryStatusSettings;->ENUM$VALUES:[Lcom/cipherlab/rfid/InventoryStatusSettings;

    .line 32
    new-instance v0, Lcom/cipherlab/rfid/InventoryStatusSettings$1;

    invoke-direct {v0}, Lcom/cipherlab/rfid/InventoryStatusSettings$1;-><init>()V

    sput-object v0, Lcom/cipherlab/rfid/InventoryStatusSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/cipherlab/rfid/InventoryStatusSettings;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/cipherlab/rfid/InventoryStatusSettings;
    .registers 2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    const/4 v0, 0x4

    if-eq p0, v0, :cond_9

    .line 24
    sget-object p0, Lcom/cipherlab/rfid/InventoryStatusSettings;->STATE_A:Lcom/cipherlab/rfid/InventoryStatusSettings;

    return-object p0

    .line 26
    :cond_9
    sget-object p0, Lcom/cipherlab/rfid/InventoryStatusSettings;->STATE_B:Lcom/cipherlab/rfid/InventoryStatusSettings;

    return-object p0

    .line 28
    :cond_c
    sget-object p0, Lcom/cipherlab/rfid/InventoryStatusSettings;->AB_FLIP:Lcom/cipherlab/rfid/InventoryStatusSettings;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/rfid/InventoryStatusSettings;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/rfid/InventoryStatusSettings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/rfid/InventoryStatusSettings;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/rfid/InventoryStatusSettings;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/rfid/InventoryStatusSettings;->ENUM$VALUES:[Lcom/cipherlab/rfid/InventoryStatusSettings;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/rfid/InventoryStatusSettings;

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

.method public getValue()I
    .registers 2

    .line 17
    iget v0, p0, Lcom/cipherlab/rfid/InventoryStatusSettings;->value:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 55
    iget p2, p0, Lcom/cipherlab/rfid/InventoryStatusSettings;->value:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
