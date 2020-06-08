.class public final enum Lcom/cipherlab/rfid/DeviceResponse;
.super Ljava/lang/Enum;
.source "DeviceResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/rfid/DeviceResponse;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/rfid/DeviceResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DeviceBusy:Lcom/cipherlab/rfid/DeviceResponse;

.field public static final enum DeviceTimeOut:Lcom/cipherlab/rfid/DeviceResponse;

.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/rfid/DeviceResponse;

.field public static final enum OperationFail:Lcom/cipherlab/rfid/DeviceResponse;

.field public static final enum OperationFinish:Lcom/cipherlab/rfid/DeviceResponse;

.field public static final enum OperationSuccess:Lcom/cipherlab/rfid/DeviceResponse;

.field public static final enum TagLock:Lcom/cipherlab/rfid/DeviceResponse;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 7
    new-instance v0, Lcom/cipherlab/rfid/DeviceResponse;

    const/4 v1, 0x0

    const-string v2, "OperationSuccess"

    invoke-direct {v0, v2, v1, v1}, Lcom/cipherlab/rfid/DeviceResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/DeviceResponse;->OperationSuccess:Lcom/cipherlab/rfid/DeviceResponse;

    new-instance v0, Lcom/cipherlab/rfid/DeviceResponse;

    const/4 v2, 0x1

    const-string v3, "OperationFail"

    invoke-direct {v0, v3, v2, v2}, Lcom/cipherlab/rfid/DeviceResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/DeviceResponse;->OperationFail:Lcom/cipherlab/rfid/DeviceResponse;

    new-instance v0, Lcom/cipherlab/rfid/DeviceResponse;

    const/4 v3, 0x2

    const-string v4, "OperationFinish"

    invoke-direct {v0, v4, v3, v3}, Lcom/cipherlab/rfid/DeviceResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/DeviceResponse;->OperationFinish:Lcom/cipherlab/rfid/DeviceResponse;

    new-instance v0, Lcom/cipherlab/rfid/DeviceResponse;

    const/4 v4, 0x3

    const-string v5, "DeviceTimeOut"

    invoke-direct {v0, v5, v4, v4}, Lcom/cipherlab/rfid/DeviceResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/DeviceResponse;->DeviceTimeOut:Lcom/cipherlab/rfid/DeviceResponse;

    new-instance v0, Lcom/cipherlab/rfid/DeviceResponse;

    const/4 v5, 0x4

    const-string v6, "DeviceBusy"

    invoke-direct {v0, v6, v5, v5}, Lcom/cipherlab/rfid/DeviceResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/DeviceResponse;->DeviceBusy:Lcom/cipherlab/rfid/DeviceResponse;

    new-instance v0, Lcom/cipherlab/rfid/DeviceResponse;

    const/4 v6, 0x5

    const-string v7, "TagLock"

    invoke-direct {v0, v7, v6, v6}, Lcom/cipherlab/rfid/DeviceResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/DeviceResponse;->TagLock:Lcom/cipherlab/rfid/DeviceResponse;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/cipherlab/rfid/DeviceResponse;

    sget-object v8, Lcom/cipherlab/rfid/DeviceResponse;->OperationSuccess:Lcom/cipherlab/rfid/DeviceResponse;

    aput-object v8, v7, v1

    sget-object v1, Lcom/cipherlab/rfid/DeviceResponse;->OperationFail:Lcom/cipherlab/rfid/DeviceResponse;

    aput-object v1, v7, v2

    sget-object v1, Lcom/cipherlab/rfid/DeviceResponse;->OperationFinish:Lcom/cipherlab/rfid/DeviceResponse;

    aput-object v1, v7, v3

    sget-object v1, Lcom/cipherlab/rfid/DeviceResponse;->DeviceTimeOut:Lcom/cipherlab/rfid/DeviceResponse;

    aput-object v1, v7, v4

    sget-object v1, Lcom/cipherlab/rfid/DeviceResponse;->DeviceBusy:Lcom/cipherlab/rfid/DeviceResponse;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/cipherlab/rfid/DeviceResponse;->ENUM$VALUES:[Lcom/cipherlab/rfid/DeviceResponse;

    .line 37
    new-instance v0, Lcom/cipherlab/rfid/DeviceResponse$1;

    invoke-direct {v0}, Lcom/cipherlab/rfid/DeviceResponse$1;-><init>()V

    sput-object v0, Lcom/cipherlab/rfid/DeviceResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/cipherlab/rfid/DeviceResponse;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/cipherlab/rfid/DeviceResponse;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p0, v0, :cond_18

    const/4 v0, 0x4

    if-eq p0, v0, :cond_15

    const/4 v0, 0x5

    if-eq p0, v0, :cond_12

    .line 23
    sget-object p0, Lcom/cipherlab/rfid/DeviceResponse;->OperationSuccess:Lcom/cipherlab/rfid/DeviceResponse;

    return-object p0

    .line 33
    :cond_12
    sget-object p0, Lcom/cipherlab/rfid/DeviceResponse;->TagLock:Lcom/cipherlab/rfid/DeviceResponse;

    return-object p0

    .line 31
    :cond_15
    sget-object p0, Lcom/cipherlab/rfid/DeviceResponse;->DeviceBusy:Lcom/cipherlab/rfid/DeviceResponse;

    return-object p0

    .line 29
    :cond_18
    sget-object p0, Lcom/cipherlab/rfid/DeviceResponse;->DeviceTimeOut:Lcom/cipherlab/rfid/DeviceResponse;

    return-object p0

    .line 27
    :cond_1b
    sget-object p0, Lcom/cipherlab/rfid/DeviceResponse;->OperationFinish:Lcom/cipherlab/rfid/DeviceResponse;

    return-object p0

    .line 25
    :cond_1e
    sget-object p0, Lcom/cipherlab/rfid/DeviceResponse;->OperationFail:Lcom/cipherlab/rfid/DeviceResponse;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/rfid/DeviceResponse;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/rfid/DeviceResponse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/rfid/DeviceResponse;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/rfid/DeviceResponse;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/rfid/DeviceResponse;->ENUM$VALUES:[Lcom/cipherlab/rfid/DeviceResponse;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/rfid/DeviceResponse;

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

    .line 16
    iget v0, p0, Lcom/cipherlab/rfid/DeviceResponse;->value:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 59
    iget p2, p0, Lcom/cipherlab/rfid/DeviceResponse;->value:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
