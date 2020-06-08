.class public Lcom/uhf/api/cls/Reader$ALIENHiggs3BlockReadLockPara;
.super Ljava/lang/Object;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ALIENHiggs3BlockReadLockPara"
.end annotation


# instance fields
.field public AccessPwd:[B

.field public BlkBits:B

.field public TimeOut:S

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/Reader;)V
    .registers 2

    .line 790
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$ALIENHiggs3BlockReadLockPara;->this$0:Lcom/uhf/api/cls/Reader;

    .line 789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    new-array p1, p1, [B

    .line 791
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$ALIENHiggs3BlockReadLockPara;->AccessPwd:[B

    return-void
.end method
