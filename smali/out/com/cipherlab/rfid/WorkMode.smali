.class public final enum Lcom/cipherlab/rfid/WorkMode;
.super Ljava/lang/Enum;
.source "WorkMode.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cipherlab/rfid/WorkMode;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cipherlab/rfid/WorkMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ComprehensiveMode:Lcom/cipherlab/rfid/WorkMode;

.field private static final synthetic ENUM$VALUES:[Lcom/cipherlab/rfid/WorkMode;

.field public static final enum Err:Lcom/cipherlab/rfid/WorkMode;

.field public static final enum MultiTagMode:Lcom/cipherlab/rfid/WorkMode;

.field public static final enum SingleTagMode:Lcom/cipherlab/rfid/WorkMode;

.field public static final enum UserDefine1:Lcom/cipherlab/rfid/WorkMode;

.field public static final enum UserDefine2:Lcom/cipherlab/rfid/WorkMode;

.field public static final enum UserDefine3:Lcom/cipherlab/rfid/WorkMode;

.field public static final enum UserDefine4:Lcom/cipherlab/rfid/WorkMode;

.field public static final enum UserDefine5:Lcom/cipherlab/rfid/WorkMode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 8
    new-instance v0, Lcom/cipherlab/rfid/WorkMode;

    const/4 v1, 0x0

    const-string v2, "ComprehensiveMode"

    invoke-direct {v0, v2, v1, v1}, Lcom/cipherlab/rfid/WorkMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/WorkMode;->ComprehensiveMode:Lcom/cipherlab/rfid/WorkMode;

    new-instance v0, Lcom/cipherlab/rfid/WorkMode;

    const/4 v2, 0x1

    const-string v3, "MultiTagMode"

    invoke-direct {v0, v3, v2, v2}, Lcom/cipherlab/rfid/WorkMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/WorkMode;->MultiTagMode:Lcom/cipherlab/rfid/WorkMode;

    new-instance v0, Lcom/cipherlab/rfid/WorkMode;

    const/4 v3, 0x2

    const-string v4, "SingleTagMode"

    invoke-direct {v0, v4, v3, v3}, Lcom/cipherlab/rfid/WorkMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/WorkMode;->SingleTagMode:Lcom/cipherlab/rfid/WorkMode;

    new-instance v0, Lcom/cipherlab/rfid/WorkMode;

    const/4 v4, 0x3

    const-string v5, "UserDefine1"

    invoke-direct {v0, v5, v4, v4}, Lcom/cipherlab/rfid/WorkMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/WorkMode;->UserDefine1:Lcom/cipherlab/rfid/WorkMode;

    new-instance v0, Lcom/cipherlab/rfid/WorkMode;

    const/4 v5, 0x4

    const-string v6, "UserDefine2"

    invoke-direct {v0, v6, v5, v5}, Lcom/cipherlab/rfid/WorkMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/WorkMode;->UserDefine2:Lcom/cipherlab/rfid/WorkMode;

    new-instance v0, Lcom/cipherlab/rfid/WorkMode;

    const/4 v6, 0x5

    const-string v7, "UserDefine3"

    invoke-direct {v0, v7, v6, v6}, Lcom/cipherlab/rfid/WorkMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/WorkMode;->UserDefine3:Lcom/cipherlab/rfid/WorkMode;

    new-instance v0, Lcom/cipherlab/rfid/WorkMode;

    const/4 v7, 0x6

    const-string v8, "UserDefine4"

    invoke-direct {v0, v8, v7, v7}, Lcom/cipherlab/rfid/WorkMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/WorkMode;->UserDefine4:Lcom/cipherlab/rfid/WorkMode;

    new-instance v0, Lcom/cipherlab/rfid/WorkMode;

    const/4 v8, 0x7

    const-string v9, "UserDefine5"

    invoke-direct {v0, v9, v8, v8}, Lcom/cipherlab/rfid/WorkMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/WorkMode;->UserDefine5:Lcom/cipherlab/rfid/WorkMode;

    new-instance v0, Lcom/cipherlab/rfid/WorkMode;

    const/16 v9, 0x8

    const-string v10, "Err"

    const/16 v11, 0x63

    invoke-direct {v0, v10, v9, v11}, Lcom/cipherlab/rfid/WorkMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cipherlab/rfid/WorkMode;->Err:Lcom/cipherlab/rfid/WorkMode;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/cipherlab/rfid/WorkMode;

    sget-object v11, Lcom/cipherlab/rfid/WorkMode;->ComprehensiveMode:Lcom/cipherlab/rfid/WorkMode;

    aput-object v11, v10, v1

    sget-object v1, Lcom/cipherlab/rfid/WorkMode;->MultiTagMode:Lcom/cipherlab/rfid/WorkMode;

    aput-object v1, v10, v2

    sget-object v1, Lcom/cipherlab/rfid/WorkMode;->SingleTagMode:Lcom/cipherlab/rfid/WorkMode;

    aput-object v1, v10, v3

    sget-object v1, Lcom/cipherlab/rfid/WorkMode;->UserDefine1:Lcom/cipherlab/rfid/WorkMode;

    aput-object v1, v10, v4

    sget-object v1, Lcom/cipherlab/rfid/WorkMode;->UserDefine2:Lcom/cipherlab/rfid/WorkMode;

    aput-object v1, v10, v5

    sget-object v1, Lcom/cipherlab/rfid/WorkMode;->UserDefine3:Lcom/cipherlab/rfid/WorkMode;

    aput-object v1, v10, v6

    sget-object v1, Lcom/cipherlab/rfid/WorkMode;->UserDefine4:Lcom/cipherlab/rfid/WorkMode;

    aput-object v1, v10, v7

    sget-object v1, Lcom/cipherlab/rfid/WorkMode;->UserDefine5:Lcom/cipherlab/rfid/WorkMode;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/cipherlab/rfid/WorkMode;->ENUM$VALUES:[Lcom/cipherlab/rfid/WorkMode;

    .line 45
    new-instance v0, Lcom/cipherlab/rfid/WorkMode$1;

    invoke-direct {v0}, Lcom/cipherlab/rfid/WorkMode$1;-><init>()V

    sput-object v0, Lcom/cipherlab/rfid/WorkMode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/cipherlab/rfid/WorkMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/cipherlab/rfid/WorkMode;
    .registers 2

    const/16 v0, 0x63

    if-eq p0, v0, :cond_1f

    packed-switch p0, :pswitch_data_22

    .line 24
    sget-object p0, Lcom/cipherlab/rfid/WorkMode;->ComprehensiveMode:Lcom/cipherlab/rfid/WorkMode;

    return-object p0

    .line 38
    :pswitch_a
    sget-object p0, Lcom/cipherlab/rfid/WorkMode;->UserDefine5:Lcom/cipherlab/rfid/WorkMode;

    return-object p0

    .line 36
    :pswitch_d
    sget-object p0, Lcom/cipherlab/rfid/WorkMode;->UserDefine4:Lcom/cipherlab/rfid/WorkMode;

    return-object p0

    .line 34
    :pswitch_10
    sget-object p0, Lcom/cipherlab/rfid/WorkMode;->UserDefine3:Lcom/cipherlab/rfid/WorkMode;

    return-object p0

    .line 32
    :pswitch_13
    sget-object p0, Lcom/cipherlab/rfid/WorkMode;->UserDefine2:Lcom/cipherlab/rfid/WorkMode;

    return-object p0

    .line 30
    :pswitch_16
    sget-object p0, Lcom/cipherlab/rfid/WorkMode;->UserDefine1:Lcom/cipherlab/rfid/WorkMode;

    return-object p0

    .line 28
    :pswitch_19
    sget-object p0, Lcom/cipherlab/rfid/WorkMode;->SingleTagMode:Lcom/cipherlab/rfid/WorkMode;

    return-object p0

    .line 26
    :pswitch_1c
    sget-object p0, Lcom/cipherlab/rfid/WorkMode;->MultiTagMode:Lcom/cipherlab/rfid/WorkMode;

    return-object p0

    .line 40
    :cond_1f
    sget-object p0, Lcom/cipherlab/rfid/WorkMode;->Err:Lcom/cipherlab/rfid/WorkMode;

    return-object p0

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cipherlab/rfid/WorkMode;
    .registers 2

    .line 1
    const-class v0, Lcom/cipherlab/rfid/WorkMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cipherlab/rfid/WorkMode;

    return-object p0
.end method

.method public static values()[Lcom/cipherlab/rfid/WorkMode;
    .registers 4

    .line 1
    sget-object v0, Lcom/cipherlab/rfid/WorkMode;->ENUM$VALUES:[Lcom/cipherlab/rfid/WorkMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/cipherlab/rfid/WorkMode;

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
    iget v0, p0, Lcom/cipherlab/rfid/WorkMode;->value:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 66
    iget p2, p0, Lcom/cipherlab/rfid/WorkMode;->value:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
