.class public Lcom/uhf/api/cls/Reader$NXPEASAlarmResult;
.super Ljava/lang/Object;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NXPEASAlarmResult"
.end annotation


# instance fields
.field public EASdata:[B

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/Reader;)V
    .registers 2

    .line 778
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$NXPEASAlarmResult;->this$0:Lcom/uhf/api/cls/Reader;

    .line 777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x8

    new-array p1, p1, [B

    .line 779
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$NXPEASAlarmResult;->EASdata:[B

    return-void
.end method
