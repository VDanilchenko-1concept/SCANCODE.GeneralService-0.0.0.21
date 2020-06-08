.class public final enum Lcom/cipherlab/rfid/InventoryType;
.super Ljava/lang/Enum;
.source "InventoryType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/rfid/InventoryType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/rfid/InventoryType;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/rfid/InventoryType;

.field public static final enum EPC:Lcom/cipherlab/rfid/InventoryType;

.field public static final enum EPC_AND_TID:Lcom/cipherlab/rfid/InventoryType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 8
    new-instance v0, Lcom/cipherlab/rfid/InventoryType;

    const/4 v1, 0x0

    const-string v2, "EPC"

    invoke-direct {v0, v2, v1, v1}, Lcom/cipherlab/rfid/InventoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/InventoryType;->EPC:Lcom/cipherlab/rfid/InventoryType;

    new-instance v0, Lcom/cipherlab/rfid/InventoryType;

    const/4 v2, 0x1

    const-string v3, "EPC_AND_TID"

    invoke-direct {v0, v3, v2, v2}, Lcom/cipherlab/rfid/InventoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/InventoryType;->EPC_AND_TID:Lcom/cipherlab/rfid/InventoryType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/cipherlab/rfid/InventoryType;

    sget-object v4, Lcom/cipherlab/rfid/InventoryType;->EPC:Lcom/cipherlab/rfid/InventoryType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/cipherlab/rfid/InventoryType;->ENUM$VALUES:[Lcom/cipherlab/rfid/InventoryType;

    .line 32
    new-instance v0, Lcom/cipherlab/rfid/InventoryType$1;

    invoke-direct {v0}, Lcom/cipherlab/rfid/InventoryType$1;-><init>()V

    sput-object v0, Lcom/cipherlab/rfid/InventoryType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/cipherlab/rfid/InventoryType;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/cipherlab/rfid/InventoryType;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    .line 26
    sget-object p0, Lcom/cipherlab/rfid/InventoryType;->EPC:Lcom/cipherlab/rfid/InventoryType;

    return-object p0

    .line 28
    :cond_6
    sget-object p0, Lcom/cipherlab/rfid/InventoryType;->EPC_AND_TID:Lcom/cipherlab/rfid/InventoryType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/rfid/InventoryType;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/rfid/InventoryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/rfid/InventoryType;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/rfid/InventoryType;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/rfid/InventoryType;->ENUM$VALUES:[Lcom/cipherlab/rfid/InventoryType;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/rfid/InventoryType;

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

    .line 19
    iget v0, p0, Lcom/cipherlab/rfid/InventoryType;->value:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 57
    iget p2, p0, Lcom/cipherlab/rfid/InventoryType;->value:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
