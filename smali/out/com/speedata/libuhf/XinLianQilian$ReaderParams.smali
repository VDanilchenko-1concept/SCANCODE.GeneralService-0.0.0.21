.class public Lcom/speedata/libuhf/XinLianQilian$ReaderParams;
.super Ljava/lang/Object;
.source "XinLianQilian.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/speedata/libuhf/XinLianQilian;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReaderParams"
.end annotation


# instance fields
.field public adataq:I

.field public antq:I

.field public blf:I

.field public checkant:I

.field public emdadr:I

.field public emdbank:I

.field public emdbytec:I

.field public emdenable:I

.field public filadr:I

.field public filbank:I

.field public fildata:Ljava/lang/String;

.field public filenable:I

.field public filisinver:I

.field public frecys:[I

.field public frelen:I

.field public gen2code:I

.field public gen2tari:I

.field public invpro:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public invw:I

.field public iso6bblf:I

.field public iso6bdeep:I

.field public iso6bdel:I

.field public maxlen:I

.field public opant:I

.field public opro:Ljava/lang/String;

.field public optime:I

.field public option:I

.field public password:Ljava/lang/String;

.field public qv:I

.field public readtime:I

.field public region:I

.field public rhssi:I

.field public rpow:[I

.field public session:I

.field public sleep:I

.field public target:I

.field final synthetic this$0:Lcom/speedata/libuhf/XinLianQilian;

.field public uants:[I

.field public wmode:I

.field public wpow:[I


# direct methods
.method public constructor <init>(Lcom/speedata/libuhf/XinLianQilian;)V
    .registers 5

    .line 1881
    iput-object p1, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->this$0:Lcom/speedata/libuhf/XinLianQilian;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 1882
    iput p1, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->opant:I

    .line 1883
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->invpro:Ljava/util/List;

    const-string v1, "GEN2"

    .line 1884
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v0, p1, [I

    .line 1885
    iput-object v0, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->uants:[I

    const/4 v2, 0x0

    aput p1, v0, v2

    .line 1887
    iput v2, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->sleep:I

    const/16 v0, 0x32

    .line 1888
    iput v0, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->readtime:I

    const/16 v0, 0x3e8

    .line 1889
    iput v0, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->optime:I

    .line 1890
    iput-object v1, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->opro:Ljava/lang/String;

    .line 1891
    iput p1, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->checkant:I

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 1892
    fill-array-data v1, :array_74

    iput-object v1, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->rpow:[I

    new-array v0, v0, [I

    .line 1893
    fill-array-data v0, :array_80

    iput-object v0, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->wpow:[I

    .line 1894
    iput p1, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->region:I

    .line 1895
    iput v2, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->frelen:I

    .line 1896
    iput v2, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->session:I

    const/4 v0, -0x1

    .line 1897
    iput v0, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->qv:I

    .line 1898
    iput v2, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->wmode:I

    .line 1899
    iput v2, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->blf:I

    .line 1900
    iput v2, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->maxlen:I

    .line 1901
    iput v2, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->target:I

    const/4 v0, 0x2

    .line 1902
    iput v0, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->gen2code:I

    .line 1903
    iput v2, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->gen2tari:I

    const-string v0, ""

    .line 1905
    iput-object v0, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->fildata:Ljava/lang/String;

    const/16 v0, 0x20

    .line 1906
    iput v0, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->filadr:I

    .line 1907
    iput p1, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->filbank:I

    .line 1908
    iput v2, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->filisinver:I

    .line 1909
    iput v2, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->filenable:I

    .line 1911
    iput v2, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->emdadr:I

    .line 1912
    iput v2, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->emdbytec:I

    .line 1913
    iput p1, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->emdbank:I

    .line 1914
    iput v2, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->emdenable:I

    .line 1916
    iput v2, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->adataq:I

    .line 1917
    iput p1, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->rhssi:I

    .line 1918
    iput v2, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->invw:I

    .line 1919
    iput v2, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->iso6bdeep:I

    .line 1920
    iput v2, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->iso6bdel:I

    .line 1921
    iput v2, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->iso6bblf:I

    .line 1922
    iput v2, p0, Lcom/speedata/libuhf/XinLianQilian$ReaderParams;->option:I

    return-void

    nop

    :array_74
    .array-data 4
        0xa8c
        0x7d0
        0x7d0
        0x7d0
    .end array-data

    :array_80
    .array-data 4
        0x7d0
        0x7d0
        0x7d0
        0x7d0
    .end array-data
.end method
