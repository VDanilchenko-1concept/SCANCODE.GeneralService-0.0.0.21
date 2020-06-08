.class public final enum Lcom/cipherlab/rfid/SLFlagSettings;
.super Ljava/lang/Enum;
.source "SLFlagSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/rfid/SLFlagSettings;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final enum All:Lcom/cipherlab/rfid/SLFlagSettings;

.field public static final enum Asserted:Lcom/cipherlab/rfid/SLFlagSettings;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/rfid/SLFlagSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Deasserted:Lcom/cipherlab/rfid/SLFlagSettings;

.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/rfid/SLFlagSettings;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 7
    new-instance v0, Lcom/cipherlab/rfid/SLFlagSettings;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "All"

    invoke-direct {v0, v3, v1, v2}, Lcom/cipherlab/rfid/SLFlagSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/SLFlagSettings;->All:Lcom/cipherlab/rfid/SLFlagSettings;

    new-instance v0, Lcom/cipherlab/rfid/SLFlagSettings;

    const/4 v3, 0x2

    const-string v4, "Deasserted"

    invoke-direct {v0, v4, v2, v3}, Lcom/cipherlab/rfid/SLFlagSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/SLFlagSettings;->Deasserted:Lcom/cipherlab/rfid/SLFlagSettings;

    new-instance v0, Lcom/cipherlab/rfid/SLFlagSettings;

    const/4 v4, 0x3

    const-string v5, "Asserted"

    invoke-direct {v0, v5, v3, v4}, Lcom/cipherlab/rfid/SLFlagSettings;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/SLFlagSettings;->Asserted:Lcom/cipherlab/rfid/SLFlagSettings;

    new-array v4, v4, [Lcom/cipherlab/rfid/SLFlagSettings;

    sget-object v5, Lcom/cipherlab/rfid/SLFlagSettings;->All:Lcom/cipherlab/rfid/SLFlagSettings;

    aput-object v5, v4, v1

    sget-object v1, Lcom/cipherlab/rfid/SLFlagSettings;->Deasserted:Lcom/cipherlab/rfid/SLFlagSettings;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/cipherlab/rfid/SLFlagSettings;->ENUM$VALUES:[Lcom/cipherlab/rfid/SLFlagSettings;

    .line 31
    new-instance v0, Lcom/cipherlab/rfid/SLFlagSettings$1;

    invoke-direct {v0}, Lcom/cipherlab/rfid/SLFlagSettings$1;-><init>()V

    sput-object v0, Lcom/cipherlab/rfid/SLFlagSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/cipherlab/rfid/SLFlagSettings;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/cipherlab/rfid/SLFlagSettings;
    .registers 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_9

    .line 23
    sget-object p0, Lcom/cipherlab/rfid/SLFlagSettings;->All:Lcom/cipherlab/rfid/SLFlagSettings;

    return-object p0

    .line 27
    :cond_9
    sget-object p0, Lcom/cipherlab/rfid/SLFlagSettings;->Asserted:Lcom/cipherlab/rfid/SLFlagSettings;

    return-object p0

    .line 25
    :cond_c
    sget-object p0, Lcom/cipherlab/rfid/SLFlagSettings;->Deasserted:Lcom/cipherlab/rfid/SLFlagSettings;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/rfid/SLFlagSettings;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/rfid/SLFlagSettings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/rfid/SLFlagSettings;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/rfid/SLFlagSettings;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/rfid/SLFlagSettings;->ENUM$VALUES:[Lcom/cipherlab/rfid/SLFlagSettings;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/rfid/SLFlagSettings;

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
    iget v0, p0, Lcom/cipherlab/rfid/SLFlagSettings;->value:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 53
    iget p2, p0, Lcom/cipherlab/rfid/SLFlagSettings;->value:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
