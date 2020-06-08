.class public final enum Lcom/cipherlab/rfid/RFIDMode;
.super Ljava/lang/Enum;
.source "RFIDMode.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/rfid/RFIDMode;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/rfid/RFIDMode;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/rfid/RFIDMode;

.field public static final enum Err:Lcom/cipherlab/rfid/RFIDMode;

.field public static final enum Inventory:Lcom/cipherlab/rfid/RFIDMode;

.field public static final enum Inventory_EPC_TID:Lcom/cipherlab/rfid/RFIDMode;

.field public static final enum ReadTag:Lcom/cipherlab/rfid/RFIDMode;

.field public static final enum WriteTag:Lcom/cipherlab/rfid/RFIDMode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 8
    new-instance v0, Lcom/cipherlab/rfid/RFIDMode;

    const/4 v1, 0x0

    const-string v2, "Inventory"

    invoke-direct {v0, v2, v1, v1}, Lcom/cipherlab/rfid/RFIDMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/RFIDMode;->Inventory:Lcom/cipherlab/rfid/RFIDMode;

    new-instance v0, Lcom/cipherlab/rfid/RFIDMode;

    const/4 v2, 0x1

    const-string v3, "ReadTag"

    invoke-direct {v0, v3, v2, v2}, Lcom/cipherlab/rfid/RFIDMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/RFIDMode;->ReadTag:Lcom/cipherlab/rfid/RFIDMode;

    new-instance v0, Lcom/cipherlab/rfid/RFIDMode;

    const/4 v3, 0x2

    const-string v4, "WriteTag"

    invoke-direct {v0, v4, v3, v3}, Lcom/cipherlab/rfid/RFIDMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/RFIDMode;->WriteTag:Lcom/cipherlab/rfid/RFIDMode;

    new-instance v0, Lcom/cipherlab/rfid/RFIDMode;

    const/4 v4, 0x3

    const-string v5, "Inventory_EPC_TID"

    invoke-direct {v0, v5, v4, v4}, Lcom/cipherlab/rfid/RFIDMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/RFIDMode;->Inventory_EPC_TID:Lcom/cipherlab/rfid/RFIDMode;

    new-instance v0, Lcom/cipherlab/rfid/RFIDMode;

    const/4 v5, 0x4

    const-string v6, "Err"

    invoke-direct {v0, v6, v5, v5}, Lcom/cipherlab/rfid/RFIDMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/RFIDMode;->Err:Lcom/cipherlab/rfid/RFIDMode;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/cipherlab/rfid/RFIDMode;

    sget-object v7, Lcom/cipherlab/rfid/RFIDMode;->Inventory:Lcom/cipherlab/rfid/RFIDMode;

    aput-object v7, v6, v1

    sget-object v1, Lcom/cipherlab/rfid/RFIDMode;->ReadTag:Lcom/cipherlab/rfid/RFIDMode;

    aput-object v1, v6, v2

    sget-object v1, Lcom/cipherlab/rfid/RFIDMode;->WriteTag:Lcom/cipherlab/rfid/RFIDMode;

    aput-object v1, v6, v3

    sget-object v1, Lcom/cipherlab/rfid/RFIDMode;->Inventory_EPC_TID:Lcom/cipherlab/rfid/RFIDMode;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/cipherlab/rfid/RFIDMode;->ENUM$VALUES:[Lcom/cipherlab/rfid/RFIDMode;

    .line 37
    new-instance v0, Lcom/cipherlab/rfid/RFIDMode$1;

    invoke-direct {v0}, Lcom/cipherlab/rfid/RFIDMode$1;-><init>()V

    sput-object v0, Lcom/cipherlab/rfid/RFIDMode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/cipherlab/rfid/RFIDMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/cipherlab/rfid/RFIDMode;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-eq p0, v0, :cond_12

    const/4 v0, 0x4

    if-eq p0, v0, :cond_f

    .line 25
    sget-object p0, Lcom/cipherlab/rfid/RFIDMode;->Inventory:Lcom/cipherlab/rfid/RFIDMode;

    return-object p0

    .line 33
    :cond_f
    sget-object p0, Lcom/cipherlab/rfid/RFIDMode;->Err:Lcom/cipherlab/rfid/RFIDMode;

    return-object p0

    .line 31
    :cond_12
    sget-object p0, Lcom/cipherlab/rfid/RFIDMode;->Inventory_EPC_TID:Lcom/cipherlab/rfid/RFIDMode;

    return-object p0

    .line 29
    :cond_15
    sget-object p0, Lcom/cipherlab/rfid/RFIDMode;->WriteTag:Lcom/cipherlab/rfid/RFIDMode;

    return-object p0

    .line 27
    :cond_18
    sget-object p0, Lcom/cipherlab/rfid/RFIDMode;->ReadTag:Lcom/cipherlab/rfid/RFIDMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/rfid/RFIDMode;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/rfid/RFIDMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/rfid/RFIDMode;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/rfid/RFIDMode;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/rfid/RFIDMode;->ENUM$VALUES:[Lcom/cipherlab/rfid/RFIDMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/rfid/RFIDMode;

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

    .line 18
    iget v0, p0, Lcom/cipherlab/rfid/RFIDMode;->value:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 59
    iget p2, p0, Lcom/cipherlab/rfid/RFIDMode;->value:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
