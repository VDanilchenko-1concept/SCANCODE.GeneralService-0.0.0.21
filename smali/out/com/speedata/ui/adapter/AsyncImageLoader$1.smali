.class Lcom/speedata/ui/adapter/AsyncImageLoader$1;
.super Ljava/lang/Object;
.source "AsyncImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/speedata/ui/adapter/AsyncImageLoader;->loadDrawable(Ljava/lang/String;Lcom/speedata/ui/adapter/AsyncImageLoader$ImageCallback;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/speedata/ui/adapter/AsyncImageLoader;

.field final synthetic val$callback:Lcom/speedata/ui/adapter/AsyncImageLoader$ImageCallback;

.field final synthetic val$imageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/speedata/ui/adapter/AsyncImageLoader;Ljava/lang/String;Lcom/speedata/ui/adapter/AsyncImageLoader$ImageCallback;)V
    .registers 4

    .line 80
    iput-object p1, p0, Lcom/speedata/ui/adapter/AsyncImageLoader$1;->this$0:Lcom/speedata/ui/adapter/AsyncImageLoader;

    iput-object p2, p0, Lcom/speedata/ui/adapter/AsyncImageLoader$1;->val$imageUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/speedata/ui/adapter/AsyncImageLoader$1;->val$callback:Lcom/speedata/ui/adapter/AsyncImageLoader$ImageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 83
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/speedata/ui/adapter/AsyncImageLoader$1;->val$imageUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "image.jpg"

    .line 83
    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/speedata/ui/adapter/AsyncImageLoader$1;->this$0:Lcom/speedata/ui/adapter/AsyncImageLoader;

    iget-object v1, v1, Lcom/speedata/ui/adapter/AsyncImageLoader;->imageCache:Ljava/util/Map;

    iget-object v2, p0, Lcom/speedata/ui/adapter/AsyncImageLoader$1;->val$imageUrl:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v1, p0, Lcom/speedata/ui/adapter/AsyncImageLoader$1;->this$0:Lcom/speedata/ui/adapter/AsyncImageLoader;

    invoke-static {v1}, Lcom/speedata/ui/adapter/AsyncImageLoader;->access$000(Lcom/speedata/ui/adapter/AsyncImageLoader;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/speedata/ui/adapter/AsyncImageLoader$1$1;

    invoke-direct {v2, p0, v0}, Lcom/speedata/ui/adapter/AsyncImageLoader$1$1;-><init>(Lcom/speedata/ui/adapter/AsyncImageLoader$1;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    iget-object v1, p0, Lcom/speedata/ui/adapter/AsyncImageLoader$1;->this$0:Lcom/speedata/ui/adapter/AsyncImageLoader;

    iget-object v2, p0, Lcom/speedata/ui/adapter/AsyncImageLoader$1;->val$imageUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/speedata/ui/adapter/AsyncImageLoader;->saveFile(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    return-void

    :catch_35
    move-exception v0

    .line 94
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
