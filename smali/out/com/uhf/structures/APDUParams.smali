.class public Lcom/uhf/structures/APDUParams;
.super Ljava/lang/Object;
.source "APDUParams.java"


# instance fields
.field public LE:I

.field public outData:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(I[B)V
    .registers 3

    .line 16
    iput p1, p0, Lcom/uhf/structures/APDUParams;->LE:I

    .line 17
    iput-object p2, p0, Lcom/uhf/structures/APDUParams;->outData:[B

    return-void
.end method
