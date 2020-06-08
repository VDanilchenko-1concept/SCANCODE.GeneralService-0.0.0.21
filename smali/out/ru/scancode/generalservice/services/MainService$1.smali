.class Lru/scancode/generalservice/services/MainService$1;
.super Ljava/lang/Object;
.source "MainService.java"

# interfaces
.implements Lru/scancode/generalservice/rfid/IRfidManager$IRfidCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/scancode/generalservice/services/MainService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/scancode/generalservice/services/MainService;


# direct methods
.method constructor <init>(Lru/scancode/generalservice/services/MainService;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lru/scancode/generalservice/services/MainService$1;->this$0:Lru/scancode/generalservice/services/MainService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .registers 3

    .line 127
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    const-string v1, "rfid reader connected"

    invoke-virtual {v0, v1}, Lru/scancode/generalservice/utils/App;->info(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 4

    .line 137
    invoke-static {}, Lru/scancode/generalservice/utils/App;->getInstance()Lru/scancode/generalservice/utils/App;

    move-result-object v0

    iget-object v1, p0, Lru/scancode/generalservice/services/MainService$1;->this$0:Lru/scancode/generalservice/services/MainService;

    invoke-static {v1}, Lru/scancode/generalservice/services/MainService;->access$300(Lru/scancode/generalservice/services/MainService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lru/scancode/generalservice/utils/App;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetTag(Lru/scancode/generalservice/utils/RfidTag;)V
    .registers 3

    .line 132
    iget-object v0, p0, Lru/scancode/generalservice/services/MainService$1;->this$0:Lru/scancode/generalservice/services/MainService;

    invoke-static {v0, p1}, Lru/scancode/generalservice/services/MainService;->access$200(Lru/scancode/generalservice/services/MainService;Lru/scancode/generalservice/utils/RfidTag;)V

    return-void
.end method

.method public onReaded(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/scancode/generalservice/utils/RfidTag;",
            ">;)V"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lru/scancode/generalservice/services/MainService$1;->this$0:Lru/scancode/generalservice/services/MainService;

    invoke-static {v0, p1}, Lru/scancode/generalservice/services/MainService;->access$100(Lru/scancode/generalservice/services/MainService;Ljava/util/List;)V

    return-void
.end method

.method public onReaded(Lru/scancode/generalservice/utils/RfidTag;)V
    .registers 3

    .line 117
    iget-object v0, p0, Lru/scancode/generalservice/services/MainService$1;->this$0:Lru/scancode/generalservice/services/MainService;

    invoke-static {v0, p1}, Lru/scancode/generalservice/services/MainService;->access$000(Lru/scancode/generalservice/services/MainService;Lru/scancode/generalservice/utils/RfidTag;)V

    return-void
.end method

.method public onWriteComplete()V
    .registers 3

    .line 142
    iget-object v0, p0, Lru/scancode/generalservice/services/MainService$1;->this$0:Lru/scancode/generalservice/services/MainService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/scancode/generalservice/services/MainService;->access$400(Lru/scancode/generalservice/services/MainService;Ljava/lang/String;)V

    return-void
.end method
