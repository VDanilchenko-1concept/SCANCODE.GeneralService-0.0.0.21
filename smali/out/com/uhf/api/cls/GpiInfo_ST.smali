.class public Lcom/uhf/api/cls/GpiInfo_ST;
.super Ljava/lang/Object;
.source "GpiInfo_ST.java"


# instance fields
.field public gpiCount:I

.field public gpiStats:[Lcom/uhf/api/cls/GpiState_ST;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [Lcom/uhf/api/cls/GpiState_ST;

    .line 8
    iput-object v1, p0, Lcom/uhf/api/cls/GpiInfo_ST;->gpiStats:[Lcom/uhf/api/cls/GpiState_ST;

    const/4 v1, 0x0

    :goto_a
    if-lt v1, v0, :cond_d

    return-void

    .line 10
    :cond_d
    iget-object v2, p0, Lcom/uhf/api/cls/GpiInfo_ST;->gpiStats:[Lcom/uhf/api/cls/GpiState_ST;

    new-instance v3, Lcom/uhf/api/cls/GpiState_ST;

    invoke-direct {v3}, Lcom/uhf/api/cls/GpiState_ST;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method
