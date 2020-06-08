.class public Lcom/uhf/api/cls/Reader$TagSelector_ST;
.super Ljava/lang/Object;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TagSelector_ST"
.end annotation


# instance fields
.field public bank:I

.field public sdata:[B

.field public slen:I

.field public startaddr:I

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/Reader;)V
    .registers 2

    .line 880
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$TagSelector_ST;->this$0:Lcom/uhf/api/cls/Reader;

    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x18

    new-array p1, p1, [B

    .line 881
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$TagSelector_ST;->sdata:[B

    return-void
.end method
