.class public Lcom/honeywell/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/honeywell/Message;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public action:Ljava/lang/String;

.field public extras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lcom/honeywell/Message$1;

    invoke-direct {v0}, Lcom/honeywell/Message$1;-><init>()V

    sput-object v0, Lcom/honeywell/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/honeywell/Message;->action:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/honeywell/Message;->extras:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/honeywell/Message;->action:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/honeywell/Message;->extras:Ljava/util/Map;

    .line 63
    iput-object p1, p0, Lcom/honeywell/Message;->action:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/honeywell/Message;->action:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/honeywell/Message;->extras:Ljava/util/Map;

    .line 73
    iput-object p1, p0, Lcom/honeywell/Message;->action:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/honeywell/Message;->extras:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 85
    iget-object p2, p0, Lcom/honeywell/Message;->action:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 86
    iget-object p2, p0, Lcom/honeywell/Message;->extras:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
