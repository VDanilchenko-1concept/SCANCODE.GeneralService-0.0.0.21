.class public final enum Lcom/cipherlab/rfid/RFLink;
.super Ljava/lang/Enum;
.source "RFLink.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/rfid/RFLink;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/rfid/RFLink;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DSB_ASK_FM0_400KHz:Lcom/cipherlab/rfid/RFLink;

.field public static final enum DSB_ASK_FM0_40KHz:Lcom/cipherlab/rfid/RFLink;

.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/rfid/RFLink;

.field public static final enum Err:Lcom/cipherlab/rfid/RFLink;

.field public static final enum PR_ASK_Miller4_250KHz:Lcom/cipherlab/rfid/RFLink;

.field public static final enum PR_ASK_Miller4_300KHz:Lcom/cipherlab/rfid/RFLink;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 7
    new-instance v0, Lcom/cipherlab/rfid/RFLink;

    const/4 v1, 0x0

    const-string v2, "DSB_ASK_FM0_40KHz"

    invoke-direct {v0, v2, v1, v1}, Lcom/cipherlab/rfid/RFLink;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/RFLink;->DSB_ASK_FM0_40KHz:Lcom/cipherlab/rfid/RFLink;

    new-instance v0, Lcom/cipherlab/rfid/RFLink;

    const/4 v2, 0x1

    const-string v3, "PR_ASK_Miller4_250KHz"

    invoke-direct {v0, v3, v2, v2}, Lcom/cipherlab/rfid/RFLink;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/RFLink;->PR_ASK_Miller4_250KHz:Lcom/cipherlab/rfid/RFLink;

    new-instance v0, Lcom/cipherlab/rfid/RFLink;

    const/4 v3, 0x2

    const-string v4, "PR_ASK_Miller4_300KHz"

    invoke-direct {v0, v4, v3, v3}, Lcom/cipherlab/rfid/RFLink;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/RFLink;->PR_ASK_Miller4_300KHz:Lcom/cipherlab/rfid/RFLink;

    new-instance v0, Lcom/cipherlab/rfid/RFLink;

    const/4 v4, 0x3

    const-string v5, "DSB_ASK_FM0_400KHz"

    invoke-direct {v0, v5, v4, v4}, Lcom/cipherlab/rfid/RFLink;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/RFLink;->DSB_ASK_FM0_400KHz:Lcom/cipherlab/rfid/RFLink;

    new-instance v0, Lcom/cipherlab/rfid/RFLink;

    const/4 v5, 0x4

    const-string v6, "Err"

    const/16 v7, 0x63

    invoke-direct {v0, v6, v5, v7}, Lcom/cipherlab/rfid/RFLink;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/RFLink;->Err:Lcom/cipherlab/rfid/RFLink;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/cipherlab/rfid/RFLink;

    sget-object v7, Lcom/cipherlab/rfid/RFLink;->DSB_ASK_FM0_40KHz:Lcom/cipherlab/rfid/RFLink;

    aput-object v7, v6, v1

    sget-object v1, Lcom/cipherlab/rfid/RFLink;->PR_ASK_Miller4_250KHz:Lcom/cipherlab/rfid/RFLink;

    aput-object v1, v6, v2

    sget-object v1, Lcom/cipherlab/rfid/RFLink;->PR_ASK_Miller4_300KHz:Lcom/cipherlab/rfid/RFLink;

    aput-object v1, v6, v3

    sget-object v1, Lcom/cipherlab/rfid/RFLink;->DSB_ASK_FM0_400KHz:Lcom/cipherlab/rfid/RFLink;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/cipherlab/rfid/RFLink;->ENUM$VALUES:[Lcom/cipherlab/rfid/RFLink;

    .line 36
    new-instance v0, Lcom/cipherlab/rfid/RFLink$1;

    invoke-direct {v0}, Lcom/cipherlab/rfid/RFLink$1;-><init>()V

    sput-object v0, Lcom/cipherlab/rfid/RFLink;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/cipherlab/rfid/RFLink;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/cipherlab/rfid/RFLink;
    .registers 2

    if-eqz p0, :cond_18

    const/4 v0, 0x1

    if-eq p0, v0, :cond_15

    const/4 v0, 0x2

    if-eq p0, v0, :cond_12

    const/16 v0, 0x63

    if-eq p0, v0, :cond_f

    .line 29
    sget-object p0, Lcom/cipherlab/rfid/RFLink;->DSB_ASK_FM0_400KHz:Lcom/cipherlab/rfid/RFLink;

    return-object p0

    .line 31
    :cond_f
    sget-object p0, Lcom/cipherlab/rfid/RFLink;->Err:Lcom/cipherlab/rfid/RFLink;

    return-object p0

    .line 26
    :cond_12
    sget-object p0, Lcom/cipherlab/rfid/RFLink;->PR_ASK_Miller4_300KHz:Lcom/cipherlab/rfid/RFLink;

    return-object p0

    .line 24
    :cond_15
    sget-object p0, Lcom/cipherlab/rfid/RFLink;->PR_ASK_Miller4_250KHz:Lcom/cipherlab/rfid/RFLink;

    return-object p0

    .line 22
    :cond_18
    sget-object p0, Lcom/cipherlab/rfid/RFLink;->DSB_ASK_FM0_40KHz:Lcom/cipherlab/rfid/RFLink;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/rfid/RFLink;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/rfid/RFLink;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/rfid/RFLink;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/rfid/RFLink;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/rfid/RFLink;->ENUM$VALUES:[Lcom/cipherlab/rfid/RFLink;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/rfid/RFLink;

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
    iget v0, p0, Lcom/cipherlab/rfid/RFLink;->value:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 57
    iget p2, p0, Lcom/cipherlab/rfid/RFLink;->value:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
