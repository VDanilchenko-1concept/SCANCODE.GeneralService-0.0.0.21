.class public Lcom/uhf/structures/SelectCriteria;
.super Ljava/lang/Object;
.source "SelectCriteria.java"


# instance fields
.field public action:I

.field public bank:I

.field public jq:I

.field public length:I

.field public maskData:[B

.field public offset:I

.field public selectorIdx:I

.field public session:I

.field public status:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/uhf/structures/SelectCriteria;->selectorIdx:I

    .line 6
    iput v0, p0, Lcom/uhf/structures/SelectCriteria;->bank:I

    .line 7
    iput v0, p0, Lcom/uhf/structures/SelectCriteria;->status:I

    .line 8
    iput v0, p0, Lcom/uhf/structures/SelectCriteria;->offset:I

    .line 9
    iput v0, p0, Lcom/uhf/structures/SelectCriteria;->length:I

    .line 10
    iput v0, p0, Lcom/uhf/structures/SelectCriteria;->session:I

    .line 11
    iput v0, p0, Lcom/uhf/structures/SelectCriteria;->jq:I

    .line 12
    iput v0, p0, Lcom/uhf/structures/SelectCriteria;->action:I

    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 13
    iput-object v0, p0, Lcom/uhf/structures/SelectCriteria;->maskData:[B

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/uhf/structures/SelectCriteria;->selectorIdx:I

    .line 6
    iput v0, p0, Lcom/uhf/structures/SelectCriteria;->bank:I

    .line 7
    iput v0, p0, Lcom/uhf/structures/SelectCriteria;->status:I

    .line 8
    iput v0, p0, Lcom/uhf/structures/SelectCriteria;->offset:I

    .line 9
    iput v0, p0, Lcom/uhf/structures/SelectCriteria;->length:I

    .line 10
    iput v0, p0, Lcom/uhf/structures/SelectCriteria;->session:I

    .line 11
    iput v0, p0, Lcom/uhf/structures/SelectCriteria;->jq:I

    .line 12
    iput v0, p0, Lcom/uhf/structures/SelectCriteria;->action:I

    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 13
    iput-object v0, p0, Lcom/uhf/structures/SelectCriteria;->maskData:[B

    .line 21
    iput p1, p0, Lcom/uhf/structures/SelectCriteria;->status:I

    return-void
.end method


# virtual methods
.method public setValue(IIIIIIII[B)V
    .registers 10

    .line 27
    iput p1, p0, Lcom/uhf/structures/SelectCriteria;->selectorIdx:I

    .line 28
    iput p3, p0, Lcom/uhf/structures/SelectCriteria;->bank:I

    .line 29
    iput p2, p0, Lcom/uhf/structures/SelectCriteria;->status:I

    .line 30
    iput p4, p0, Lcom/uhf/structures/SelectCriteria;->offset:I

    .line 31
    iput p5, p0, Lcom/uhf/structures/SelectCriteria;->length:I

    .line 32
    iput p6, p0, Lcom/uhf/structures/SelectCriteria;->session:I

    .line 33
    iput p7, p0, Lcom/uhf/structures/SelectCriteria;->jq:I

    .line 34
    iput p8, p0, Lcom/uhf/structures/SelectCriteria;->action:I

    .line 35
    iput-object p9, p0, Lcom/uhf/structures/SelectCriteria;->maskData:[B

    return-void
.end method
