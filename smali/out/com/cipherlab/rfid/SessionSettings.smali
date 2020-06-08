.class public final enum Lcom/cipherlab/rfid/SessionSettings;
.super Ljava/lang/Enum;
.source "SessionSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/rfid/SessionSettings;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/rfid/SessionSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/rfid/SessionSettings;

.field public static final enum S0:Lcom/cipherlab/rfid/SessionSettings;

.field public static final enum S1:Lcom/cipherlab/rfid/SessionSettings;

.field public static final enum S2:Lcom/cipherlab/rfid/SessionSettings;

.field public static final enum S3:Lcom/cipherlab/rfid/SessionSettings;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 8
    new-instance v0, Lcom/cipherlab/rfid/SessionSettings;

    const/4 v1, 0x0

    const-string v2, "S0"

    invoke-direct {v0, v2, v1, v1}, Lcom/cipherlab/rfid/SessionSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/SessionSettings;->S0:Lcom/cipherlab/rfid/SessionSettings;

    new-instance v0, Lcom/cipherlab/rfid/SessionSettings;

    const/4 v2, 0x1

    const-string v3, "S1"

    invoke-direct {v0, v3, v2, v2}, Lcom/cipherlab/rfid/SessionSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/SessionSettings;->S1:Lcom/cipherlab/rfid/SessionSettings;

    new-instance v0, Lcom/cipherlab/rfid/SessionSettings;

    const/4 v3, 0x2

    const-string v4, "S2"

    invoke-direct {v0, v4, v3, v3}, Lcom/cipherlab/rfid/SessionSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/SessionSettings;->S2:Lcom/cipherlab/rfid/SessionSettings;

    new-instance v0, Lcom/cipherlab/rfid/SessionSettings;

    const/4 v4, 0x3

    const-string v5, "S3"

    invoke-direct {v0, v5, v4, v4}, Lcom/cipherlab/rfid/SessionSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/SessionSettings;->S3:Lcom/cipherlab/rfid/SessionSettings;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/cipherlab/rfid/SessionSettings;

    sget-object v6, Lcom/cipherlab/rfid/SessionSettings;->S0:Lcom/cipherlab/rfid/SessionSettings;

    aput-object v6, v5, v1

    sget-object v1, Lcom/cipherlab/rfid/SessionSettings;->S1:Lcom/cipherlab/rfid/SessionSettings;

    aput-object v1, v5, v2

    sget-object v1, Lcom/cipherlab/rfid/SessionSettings;->S2:Lcom/cipherlab/rfid/SessionSettings;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/cipherlab/rfid/SessionSettings;->ENUM$VALUES:[Lcom/cipherlab/rfid/SessionSettings;

    .line 34
    new-instance v0, Lcom/cipherlab/rfid/SessionSettings$1;

    invoke-direct {v0}, Lcom/cipherlab/rfid/SessionSettings$1;-><init>()V

    sput-object v0, Lcom/cipherlab/rfid/SessionSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/cipherlab/rfid/SessionSettings;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/cipherlab/rfid/SessionSettings;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    .line 24
    sget-object p0, Lcom/cipherlab/rfid/SessionSettings;->S0:Lcom/cipherlab/rfid/SessionSettings;

    return-object p0

    .line 30
    :cond_c
    sget-object p0, Lcom/cipherlab/rfid/SessionSettings;->S3:Lcom/cipherlab/rfid/SessionSettings;

    return-object p0

    .line 28
    :cond_f
    sget-object p0, Lcom/cipherlab/rfid/SessionSettings;->S2:Lcom/cipherlab/rfid/SessionSettings;

    return-object p0

    .line 26
    :cond_12
    sget-object p0, Lcom/cipherlab/rfid/SessionSettings;->S1:Lcom/cipherlab/rfid/SessionSettings;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/rfid/SessionSettings;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/rfid/SessionSettings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/rfid/SessionSettings;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/rfid/SessionSettings;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/rfid/SessionSettings;->ENUM$VALUES:[Lcom/cipherlab/rfid/SessionSettings;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/rfid/SessionSettings;

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
    iget v0, p0, Lcom/cipherlab/rfid/SessionSettings;->value:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 56
    iget p2, p0, Lcom/cipherlab/rfid/SessionSettings;->value:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
