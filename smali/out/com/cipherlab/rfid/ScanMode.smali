.class public final enum Lcom/cipherlab/rfid/ScanMode;
.super Ljava/lang/Enum;
.source "ScanMode.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/rfid/ScanMode;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/rfid/ScanMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Continuous:Lcom/cipherlab/rfid/ScanMode;

.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/rfid/ScanMode;

.field public static final enum Err:Lcom/cipherlab/rfid/ScanMode;

.field public static final enum Single:Lcom/cipherlab/rfid/ScanMode;

.field public static final enum Test:Lcom/cipherlab/rfid/ScanMode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 7
    new-instance v0, Lcom/cipherlab/rfid/ScanMode;

    const/4 v1, 0x0

    const-string v2, "Err"

    invoke-direct {v0, v2, v1, v1}, Lcom/cipherlab/rfid/ScanMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/ScanMode;->Err:Lcom/cipherlab/rfid/ScanMode;

    new-instance v0, Lcom/cipherlab/rfid/ScanMode;

    const/4 v2, 0x1

    const-string v3, "Single"

    const/4 v4, 0x6

    invoke-direct {v0, v3, v2, v4}, Lcom/cipherlab/rfid/ScanMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/ScanMode;->Single:Lcom/cipherlab/rfid/ScanMode;

    new-instance v0, Lcom/cipherlab/rfid/ScanMode;

    const/4 v3, 0x2

    const-string v4, "Test"

    const/4 v5, 0x7

    invoke-direct {v0, v4, v3, v5}, Lcom/cipherlab/rfid/ScanMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/ScanMode;->Test:Lcom/cipherlab/rfid/ScanMode;

    new-instance v0, Lcom/cipherlab/rfid/ScanMode;

    const/4 v4, 0x3

    const-string v5, "Continuous"

    const/16 v6, 0x9

    invoke-direct {v0, v5, v4, v6}, Lcom/cipherlab/rfid/ScanMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/ScanMode;->Continuous:Lcom/cipherlab/rfid/ScanMode;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/cipherlab/rfid/ScanMode;

    sget-object v6, Lcom/cipherlab/rfid/ScanMode;->Err:Lcom/cipherlab/rfid/ScanMode;

    aput-object v6, v5, v1

    sget-object v1, Lcom/cipherlab/rfid/ScanMode;->Single:Lcom/cipherlab/rfid/ScanMode;

    aput-object v1, v5, v2

    sget-object v1, Lcom/cipherlab/rfid/ScanMode;->Test:Lcom/cipherlab/rfid/ScanMode;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/cipherlab/rfid/ScanMode;->ENUM$VALUES:[Lcom/cipherlab/rfid/ScanMode;

    .line 33
    new-instance v0, Lcom/cipherlab/rfid/ScanMode$1;

    invoke-direct {v0}, Lcom/cipherlab/rfid/ScanMode$1;-><init>()V

    sput-object v0, Lcom/cipherlab/rfid/ScanMode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/cipherlab/rfid/ScanMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/cipherlab/rfid/ScanMode;
    .registers 2

    if-eqz p0, :cond_11

    const/4 v0, 0x6

    if-eq p0, v0, :cond_e

    const/4 v0, 0x7

    if-eq p0, v0, :cond_b

    .line 29
    sget-object p0, Lcom/cipherlab/rfid/ScanMode;->Continuous:Lcom/cipherlab/rfid/ScanMode;

    return-object p0

    .line 26
    :cond_b
    sget-object p0, Lcom/cipherlab/rfid/ScanMode;->Test:Lcom/cipherlab/rfid/ScanMode;

    return-object p0

    .line 24
    :cond_e
    sget-object p0, Lcom/cipherlab/rfid/ScanMode;->Single:Lcom/cipherlab/rfid/ScanMode;

    return-object p0

    .line 22
    :cond_11
    sget-object p0, Lcom/cipherlab/rfid/ScanMode;->Err:Lcom/cipherlab/rfid/ScanMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/rfid/ScanMode;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/rfid/ScanMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/rfid/ScanMode;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/rfid/ScanMode;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/rfid/ScanMode;->ENUM$VALUES:[Lcom/cipherlab/rfid/ScanMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/rfid/ScanMode;

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
    iget v0, p0, Lcom/cipherlab/rfid/ScanMode;->value:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 54
    iget p2, p0, Lcom/cipherlab/rfid/ScanMode;->value:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
