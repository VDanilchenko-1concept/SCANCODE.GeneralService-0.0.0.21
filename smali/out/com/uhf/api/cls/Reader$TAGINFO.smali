.class public Lcom/uhf/api/cls/Reader$TAGINFO;
.super Ljava/lang/Object;
.source "Reader.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TAGINFO"
.end annotation


# instance fields
.field public AntennaID:B

.field public CRC:[B

.field public EmbededData:[B

.field public EmbededDatalen:S

.field public EpcId:[B

.field public Epclen:S

.field public Frequency:I

.field public PC:[B

.field public Phase:I

.field public RSSI:I

.field public ReadCnt:I

.field public Res:[B

.field public TimeStamp:I

.field public protocol:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/Reader;)V
    .registers 4

    .line 695
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$TAGINFO;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 701
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededData:[B

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 702
    iput-object v1, p0, Lcom/uhf/api/cls/Reader$TAGINFO;->Res:[B

    new-array v1, v0, [B

    .line 704
    iput-object v1, p0, Lcom/uhf/api/cls/Reader$TAGINFO;->PC:[B

    new-array v0, v0, [B

    .line 705
    iput-object v0, p0, Lcom/uhf/api/cls/Reader$TAGINFO;->CRC:[B

    .line 706
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$TAGINFO;->EpcId:[B

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .line 715
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uhf/api/cls/Reader$TAGINFO;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    const/4 v0, 0x0

    return-object v0
.end method
