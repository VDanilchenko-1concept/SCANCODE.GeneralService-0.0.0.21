.class public Lcom/uhf/structures/TagGroup;
.super Ljava/lang/Object;
.source "TagGroup.java"


# instance fields
.field public selected:I

.field public session:I

.field public target:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/uhf/structures/TagGroup;->selected:I

    .line 10
    iput p2, p0, Lcom/uhf/structures/TagGroup;->session:I

    .line 11
    iput p3, p0, Lcom/uhf/structures/TagGroup;->target:I

    return-void
.end method


# virtual methods
.method public setValue(III)V
    .registers 4

    .line 14
    iput p1, p0, Lcom/uhf/structures/TagGroup;->selected:I

    .line 15
    iput p2, p0, Lcom/uhf/structures/TagGroup;->session:I

    .line 16
    iput p3, p0, Lcom/uhf/structures/TagGroup;->target:I

    return-void
.end method
