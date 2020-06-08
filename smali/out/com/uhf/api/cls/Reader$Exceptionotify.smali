.class Lcom/uhf/api/cls/Reader$Exceptionotify;
.super Ljava/lang/Object;
.source "Reader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Exceptionotify"
.end annotation


# instance fields
.field re:Lcom/uhf/api/cls/Reader$READER_ERR;

.field reader:Lcom/uhf/api/cls/Reader;

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)V
    .registers 4

    .line 2527
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$Exceptionotify;->this$0:Lcom/uhf/api/cls/Reader;

    .line 2526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2528
    iput-object p2, p0, Lcom/uhf/api/cls/Reader$Exceptionotify;->reader:Lcom/uhf/api/cls/Reader;

    .line 2529
    iput-object p3, p0, Lcom/uhf/api/cls/Reader$Exceptionotify;->re:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2532
    iget-object v0, p0, Lcom/uhf/api/cls/Reader$Exceptionotify;->this$0:Lcom/uhf/api/cls/Reader;

    iget-object v0, v0, Lcom/uhf/api/cls/Reader;->readExceptionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_f

    return-void

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uhf/api/cls/ReadExceptionListener;

    .line 2534
    iget-object v2, p0, Lcom/uhf/api/cls/Reader$Exceptionotify;->reader:Lcom/uhf/api/cls/Reader;

    iget-object v3, p0, Lcom/uhf/api/cls/Reader$Exceptionotify;->re:Lcom/uhf/api/cls/Reader$READER_ERR;

    invoke-interface {v1, v2, v3}, Lcom/uhf/api/cls/ReadExceptionListener;->tagReadException(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)V

    goto :goto_8
.end method
