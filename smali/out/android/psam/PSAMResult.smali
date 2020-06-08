.class public Landroid/psam/PSAMResult;
.super Ljava/lang/Object;
.source "PSAMResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/psam/PSAMResult;",
            ">;"
        }
    .end annotation
.end field

.field public static RET_ALREADY_POWERED_OFF:I = -0x7

.field public static RET_ALREADY_POWERED_ON:I = -0x6

.field public static RET_FAIL:I = -0x1

.field public static RET_MEM_FAIL:I = -0x4

.field public static RET_PARAM_ERR:I = -0x5

.field public static RET_REMOTE_EXCEPTION:I = -0x3

.field public static RET_SUCESS:I = 0x0

.field public static RET_TIMEOUT:I = -0x2


# instance fields
.field public msgBytes:[B

.field public resCode:I

.field public resLength:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    new-instance v0, Landroid/psam/PSAMResult$1;

    invoke-direct {v0}, Landroid/psam/PSAMResult$1;-><init>()V

    sput-object v0, Landroid/psam/PSAMResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    return-void
.end method
