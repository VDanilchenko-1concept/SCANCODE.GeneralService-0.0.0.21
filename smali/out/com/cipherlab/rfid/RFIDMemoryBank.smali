.class public final enum Lcom/cipherlab/rfid/RFIDMemoryBank;
.super Ljava/lang/Enum;
.source "RFIDMemoryBank.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/rfid/RFIDMemoryBank;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/rfid/RFIDMemoryBank;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/rfid/RFIDMemoryBank;

.field public static final enum EPC:Lcom/cipherlab/rfid/RFIDMemoryBank;

.field public static final enum Err:Lcom/cipherlab/rfid/RFIDMemoryBank;

.field public static final enum Reserved:Lcom/cipherlab/rfid/RFIDMemoryBank;

.field public static final enum TID:Lcom/cipherlab/rfid/RFIDMemoryBank;

.field public static final enum User:Lcom/cipherlab/rfid/RFIDMemoryBank;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 8
    new-instance v0, Lcom/cipherlab/rfid/RFIDMemoryBank;

    const/4 v1, 0x0

    const-string v2, "Reserved"

    invoke-direct {v0, v2, v1, v1}, Lcom/cipherlab/rfid/RFIDMemoryBank;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/RFIDMemoryBank;->Reserved:Lcom/cipherlab/rfid/RFIDMemoryBank;

    new-instance v0, Lcom/cipherlab/rfid/RFIDMemoryBank;

    const/4 v2, 0x1

    const-string v3, "EPC"

    invoke-direct {v0, v3, v2, v2}, Lcom/cipherlab/rfid/RFIDMemoryBank;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/RFIDMemoryBank;->EPC:Lcom/cipherlab/rfid/RFIDMemoryBank;

    new-instance v0, Lcom/cipherlab/rfid/RFIDMemoryBank;

    const/4 v3, 0x2

    const-string v4, "TID"

    invoke-direct {v0, v4, v3, v3}, Lcom/cipherlab/rfid/RFIDMemoryBank;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/RFIDMemoryBank;->TID:Lcom/cipherlab/rfid/RFIDMemoryBank;

    new-instance v0, Lcom/cipherlab/rfid/RFIDMemoryBank;

    const/4 v4, 0x3

    const-string v5, "User"

    invoke-direct {v0, v5, v4, v4}, Lcom/cipherlab/rfid/RFIDMemoryBank;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/RFIDMemoryBank;->User:Lcom/cipherlab/rfid/RFIDMemoryBank;

    new-instance v0, Lcom/cipherlab/rfid/RFIDMemoryBank;

    const/4 v5, 0x4

    const-string v6, "Err"

    invoke-direct {v0, v6, v5, v5}, Lcom/cipherlab/rfid/RFIDMemoryBank;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/RFIDMemoryBank;->Err:Lcom/cipherlab/rfid/RFIDMemoryBank;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/cipherlab/rfid/RFIDMemoryBank;

    sget-object v7, Lcom/cipherlab/rfid/RFIDMemoryBank;->Reserved:Lcom/cipherlab/rfid/RFIDMemoryBank;

    aput-object v7, v6, v1

    sget-object v1, Lcom/cipherlab/rfid/RFIDMemoryBank;->EPC:Lcom/cipherlab/rfid/RFIDMemoryBank;

    aput-object v1, v6, v2

    sget-object v1, Lcom/cipherlab/rfid/RFIDMemoryBank;->TID:Lcom/cipherlab/rfid/RFIDMemoryBank;

    aput-object v1, v6, v3

    sget-object v1, Lcom/cipherlab/rfid/RFIDMemoryBank;->User:Lcom/cipherlab/rfid/RFIDMemoryBank;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/cipherlab/rfid/RFIDMemoryBank;->ENUM$VALUES:[Lcom/cipherlab/rfid/RFIDMemoryBank;

    .line 37
    new-instance v0, Lcom/cipherlab/rfid/RFIDMemoryBank$1;

    invoke-direct {v0}, Lcom/cipherlab/rfid/RFIDMemoryBank$1;-><init>()V

    sput-object v0, Lcom/cipherlab/rfid/RFIDMemoryBank;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/cipherlab/rfid/RFIDMemoryBank;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/cipherlab/rfid/RFIDMemoryBank;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-eq p0, v0, :cond_12

    const/4 v0, 0x4

    if-eq p0, v0, :cond_f

    .line 24
    sget-object p0, Lcom/cipherlab/rfid/RFIDMemoryBank;->Reserved:Lcom/cipherlab/rfid/RFIDMemoryBank;

    return-object p0

    .line 32
    :cond_f
    sget-object p0, Lcom/cipherlab/rfid/RFIDMemoryBank;->Err:Lcom/cipherlab/rfid/RFIDMemoryBank;

    return-object p0

    .line 30
    :cond_12
    sget-object p0, Lcom/cipherlab/rfid/RFIDMemoryBank;->User:Lcom/cipherlab/rfid/RFIDMemoryBank;

    return-object p0

    .line 28
    :cond_15
    sget-object p0, Lcom/cipherlab/rfid/RFIDMemoryBank;->TID:Lcom/cipherlab/rfid/RFIDMemoryBank;

    return-object p0

    .line 26
    :cond_18
    sget-object p0, Lcom/cipherlab/rfid/RFIDMemoryBank;->EPC:Lcom/cipherlab/rfid/RFIDMemoryBank;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/rfid/RFIDMemoryBank;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/rfid/RFIDMemoryBank;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/rfid/RFIDMemoryBank;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/rfid/RFIDMemoryBank;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/rfid/RFIDMemoryBank;->ENUM$VALUES:[Lcom/cipherlab/rfid/RFIDMemoryBank;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/rfid/RFIDMemoryBank;

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
    iget v0, p0, Lcom/cipherlab/rfid/RFIDMemoryBank;->value:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 59
    invoke-virtual {p0}, Lcom/cipherlab/rfid/RFIDMemoryBank;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
