.class public final synthetic Lru/scancode/generalservice/services/-$$Lambda$MainService$F7fm27pkxbue2jTAvYJtTCI8D18;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lru/scancode/generalservice/services/MainService;


# direct methods
.method public synthetic constructor <init>(Lru/scancode/generalservice/services/MainService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/scancode/generalservice/services/-$$Lambda$MainService$F7fm27pkxbue2jTAvYJtTCI8D18;->f$0:Lru/scancode/generalservice/services/MainService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lru/scancode/generalservice/services/-$$Lambda$MainService$F7fm27pkxbue2jTAvYJtTCI8D18;->f$0:Lru/scancode/generalservice/services/MainService;

    invoke-virtual {v0}, Lru/scancode/generalservice/services/MainService;->lambda$setTimeout$0$MainService()V

    return-void
.end method
