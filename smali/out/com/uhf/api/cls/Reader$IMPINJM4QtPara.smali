.class public Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;
.super Ljava/lang/Object;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IMPINJM4QtPara"
.end annotation


# instance fields
.field public AccessPwd:[B

.field public CmdType:I

.field public MemType:I

.field public PersistType:I

.field public RangeType:I

.field public TimeOut:S

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/Reader;)V
    .registers 2

    .line 736
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->this$0:Lcom/uhf/api/cls/Reader;

    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    new-array p1, p1, [B

    .line 737
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->AccessPwd:[B

    return-void
.end method
