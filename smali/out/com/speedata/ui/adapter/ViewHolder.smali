.class public Lcom/speedata/ui/adapter/ViewHolder;
.super Ljava/lang/Object;
.source "ViewHolder.java"


# instance fields
.field private mConvertView:Landroid/view/View;

.field private mPosition:I

.field private final mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V
    .registers 5

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p4, p0, Lcom/speedata/ui/adapter/ViewHolder;->mPosition:I

    .line 21
    new-instance p4, Landroid/util/SparseArray;

    invoke-direct {p4}, Landroid/util/SparseArray;-><init>()V

    iput-object p4, p0, Lcom/speedata/ui/adapter/ViewHolder;->mViews:Landroid/util/SparseArray;

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p2, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/speedata/ui/adapter/ViewHolder;->mConvertView:Landroid/view/View;

    .line 23
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public static get(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;II)Lcom/speedata/ui/adapter/ViewHolder;
    .registers 5

    if-nez p1, :cond_8

    .line 38
    new-instance p1, Lcom/speedata/ui/adapter/ViewHolder;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/speedata/ui/adapter/ViewHolder;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    return-object p1

    .line 40
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/speedata/ui/adapter/ViewHolder;

    .line 41
    iput p4, p0, Lcom/speedata/ui/adapter/ViewHolder;->mPosition:I

    return-object p0
.end method


# virtual methods
.method public getConvertView()Landroid/view/View;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/speedata/ui/adapter/ViewHolder;->mConvertView:Landroid/view/View;

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .line 67
    iget v0, p0, Lcom/speedata/ui/adapter/ViewHolder;->mPosition:I

    return v0
.end method

.method public getView(I)Landroid/view/View;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/speedata/ui/adapter/ViewHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_15

    .line 60
    iget-object v0, p0, Lcom/speedata/ui/adapter/ViewHolder;->mConvertView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/speedata/ui/adapter/ViewHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_15
    return-object v0
.end method

.method public setImageBitmap(II)Lcom/speedata/ui/adapter/ViewHolder;
    .registers 3

    .line 105
    invoke-virtual {p0, p1}, Lcom/speedata/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 106
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p0
.end method

.method public setImageResource(II)Lcom/speedata/ui/adapter/ViewHolder;
    .registers 3

    .line 91
    invoke-virtual {p0, p1}, Lcom/speedata/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 92
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p0
.end method

.method public setImageURL(ILjava/lang/String;)Lcom/speedata/ui/adapter/ViewHolder;
    .registers 4

    .line 118
    invoke-virtual {p0, p1}, Lcom/speedata/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 119
    new-instance v0, Lcom/speedata/ui/adapter/AsyncImageLoader;

    invoke-direct {v0}, Lcom/speedata/ui/adapter/AsyncImageLoader;-><init>()V

    .line 120
    invoke-virtual {v0, p2}, Lcom/speedata/ui/adapter/AsyncImageLoader;->loadImageFromUrl(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public setText(ILjava/lang/String;)Lcom/speedata/ui/adapter/ViewHolder;
    .registers 3

    .line 78
    invoke-virtual {p0, p1}, Lcom/speedata/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 79
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method
