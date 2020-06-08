.class Lcom/speedata/libuhf/FLX$TimeOutThread;
.super Ljava/lang/Thread;
.source "FLX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/speedata/libuhf/FLX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeOutThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/speedata/libuhf/FLX;


# direct methods
.method constructor <init>(Lcom/speedata/libuhf/FLX;)V
    .registers 2

    .line 1187
    iput-object p1, p0, Lcom/speedata/libuhf/FLX$TimeOutThread;->this$0:Lcom/speedata/libuhf/FLX;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1190
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const-wide/16 v0, 0x3e8

    .line 1191
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 1192
    iget-object v0, p0, Lcom/speedata/libuhf/FLX$TimeOutThread;->this$0:Lcom/speedata/libuhf/FLX;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/speedata/libuhf/FLX;->access$002(Lcom/speedata/libuhf/FLX;Z)Z

    return-void
.end method
