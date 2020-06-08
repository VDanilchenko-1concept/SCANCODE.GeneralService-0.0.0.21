.class public abstract Lcom/speedata/ui/adapter/CommonAdapter;
.super Landroid/widget/BaseAdapter;
.source "CommonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected layoutId:I

.field protected mContext:Landroid/content/Context;

.field protected mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/speedata/ui/adapter/CommonAdapter;->mContext:Landroid/content/Context;

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/speedata/ui/adapter/CommonAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 27
    iput-object p2, p0, Lcom/speedata/ui/adapter/CommonAdapter;->mDatas:Ljava/util/List;

    .line 28
    iput p3, p0, Lcom/speedata/ui/adapter/CommonAdapter;->layoutId:I

    return-void
.end method


# virtual methods
.method public abstract convert(Lcom/speedata/ui/adapter/ViewHolder;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/speedata/ui/adapter/ViewHolder;",
            "TT;)V"
        }
    .end annotation
.end method

.method public getCount()I
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/speedata/ui/adapter/CommonAdapter;->mDatas:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/speedata/ui/adapter/CommonAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 48
    iget-object v0, p0, Lcom/speedata/ui/adapter/CommonAdapter;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/speedata/ui/adapter/CommonAdapter;->layoutId:I

    invoke-static {v0, p2, p3, v1, p1}, Lcom/speedata/ui/adapter/ViewHolder;->get(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;II)Lcom/speedata/ui/adapter/ViewHolder;

    move-result-object p2

    .line 49
    invoke-virtual {p0, p1}, Lcom/speedata/ui/adapter/CommonAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/speedata/ui/adapter/CommonAdapter;->convert(Lcom/speedata/ui/adapter/ViewHolder;Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p2}, Lcom/speedata/ui/adapter/ViewHolder;->getConvertView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
