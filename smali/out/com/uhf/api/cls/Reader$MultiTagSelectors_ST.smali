.class public Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;
.super Ljava/lang/Object;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MultiTagSelectors_ST"
.end annotation


# instance fields
.field public tagselectorcnt:I

.field public tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/Reader;)V
    .registers 6

    .line 890
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->this$0:Lcom/uhf/api/cls/Reader;

    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [Lcom/uhf/api/cls/Reader$TagSelector_ST;

    .line 891
    iput-object v1, p0, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    const/4 v1, 0x0

    :goto_c
    if-lt v1, v0, :cond_f

    return-void

    .line 893
    :cond_f
    iget-object v2, p0, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    new-instance v3, Lcom/uhf/api/cls/Reader$TagSelector_ST;

    invoke-direct {v3, p1}, Lcom/uhf/api/cls/Reader$TagSelector_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method
