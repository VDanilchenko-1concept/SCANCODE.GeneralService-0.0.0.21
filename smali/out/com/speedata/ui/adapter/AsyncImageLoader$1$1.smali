.class Lcom/speedata/ui/adapter/AsyncImageLoader$1$1;
.super Ljava/lang/Object;
.source "AsyncImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/speedata/ui/adapter/AsyncImageLoader$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/speedata/ui/adapter/AsyncImageLoader$1;

.field final synthetic val$drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/speedata/ui/adapter/AsyncImageLoader$1;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 87
    iput-object p1, p0, Lcom/speedata/ui/adapter/AsyncImageLoader$1$1;->this$1:Lcom/speedata/ui/adapter/AsyncImageLoader$1;

    iput-object p2, p0, Lcom/speedata/ui/adapter/AsyncImageLoader$1$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/speedata/ui/adapter/AsyncImageLoader$1$1;->this$1:Lcom/speedata/ui/adapter/AsyncImageLoader$1;

    iget-object v0, v0, Lcom/speedata/ui/adapter/AsyncImageLoader$1;->val$callback:Lcom/speedata/ui/adapter/AsyncImageLoader$ImageCallback;

    iget-object v1, p0, Lcom/speedata/ui/adapter/AsyncImageLoader$1$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/speedata/ui/adapter/AsyncImageLoader$ImageCallback;->imageLoaded(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
