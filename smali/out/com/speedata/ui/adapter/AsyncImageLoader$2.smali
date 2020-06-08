.class Lcom/speedata/ui/adapter/AsyncImageLoader$2;
.super Ljava/lang/Object;
.source "AsyncImageLoader.java"

# interfaces
.implements Lcom/speedata/ui/adapter/AsyncImageLoader$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/speedata/ui/adapter/AsyncImageLoader;->LoadImage(Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/speedata/ui/adapter/AsyncImageLoader;

.field final synthetic val$iv:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/speedata/ui/adapter/AsyncImageLoader;Landroid/widget/ImageView;)V
    .registers 3

    .line 125
    iput-object p1, p0, Lcom/speedata/ui/adapter/AsyncImageLoader$2;->this$0:Lcom/speedata/ui/adapter/AsyncImageLoader;

    iput-object p2, p0, Lcom/speedata/ui/adapter/AsyncImageLoader$2;->val$iv:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageLoaded(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/speedata/ui/adapter/AsyncImageLoader$2;->val$iv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
