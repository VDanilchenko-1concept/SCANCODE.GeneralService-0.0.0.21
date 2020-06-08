.class public Lcom/uhf/api/cls/Reader$ConnAnts_ST;
.super Ljava/lang/Object;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnAnts_ST"
.end annotation


# instance fields
.field public antcnt:I

.field public connectedants:[I

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/Reader;)V
    .registers 2

    .line 912
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$ConnAnts_ST;->this$0:Lcom/uhf/api/cls/Reader;

    .line 911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    new-array p1, p1, [I

    .line 913
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$ConnAnts_ST;->connectedants:[I

    return-void
.end method
