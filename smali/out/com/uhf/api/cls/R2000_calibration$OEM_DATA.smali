.class public Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;
.super Ljava/lang/Object;
.source "R2000_calibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/R2000_calibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OEM_DATA"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;
    }
.end annotation


# instance fields
.field La:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;",
            ">;"
        }
    .end annotation
.end field

.field Lad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/uhf/api/cls/R2000_calibration;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/R2000_calibration;S)V
    .registers 3

    .line 260
    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->this$0:Lcom/uhf/api/cls/R2000_calibration;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->Lad:Ljava/util/List;

    .line 262
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/uhf/api/cls/R2000_calibration;SI)V
    .registers 4

    .line 252
    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->this$0:Lcom/uhf/api/cls/R2000_calibration;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->La:Ljava/util/List;

    .line 254
    new-instance p1, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;

    invoke-direct {p1, p0}, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;-><init>(Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;)V

    .line 255
    iput-short p2, p1, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;->addr:S

    .line 256
    iput p3, p1, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;->val:I

    .line 257
    iget-object p2, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->La:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/uhf/api/cls/R2000_calibration;[B)V
    .registers 12

    .line 266
    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->this$0:Lcom/uhf/api/cls/R2000_calibration;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    array-length p1, p2

    div-int/lit8 p1, p1, 0x6

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->La:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_12
    if-lt v1, p1, :cond_15

    return-void

    :cond_15
    const/4 v3, 0x2

    new-array v4, v3, [B

    const/4 v5, 0x4

    new-array v6, v5, [B

    .line 276
    invoke-static {p2, v2, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    .line 279
    invoke-static {p2, v2, v6, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v5

    .line 282
    new-instance v5, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;

    invoke-direct {v5, p0}, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;-><init>(Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;)V

    .line 283
    aget-byte v7, v4, v0

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    const/4 v8, 0x1

    .line 284
    aget-byte v4, v4, v8

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v0

    or-int/2addr v4, v7

    int-to-short v4, v4

    .line 283
    iput-short v4, v5, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;->addr:S

    .line 286
    aget-byte v4, v6, v0

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    .line 287
    aget-byte v7, v6, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v4, v7

    .line 288
    aget-byte v3, v6, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    const/4 v4, 0x3

    .line 289
    aget-byte v4, v6, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v0

    or-int/2addr v3, v4

    .line 286
    iput v3, v5, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;->val:I

    .line 291
    iget-object v3, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->La:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_12
.end method


# virtual methods
.method public AddTo(SI)V
    .registers 4

    .line 298
    iget-object v0, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->La:Ljava/util/List;

    if-eqz v0, :cond_13

    .line 300
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;

    invoke-direct {v0, p0}, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;-><init>(Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;)V

    .line 301
    iput-short p1, v0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;->addr:S

    .line 302
    iput p2, v0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;->val:I

    .line 303
    iget-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->La:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 305
    :cond_13
    iget-object p2, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->Lad:Ljava/util/List;

    if-eqz p2, :cond_1e

    .line 307
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    :goto_1e
    return-void
.end method

.method public GetAddr()[Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;
    .registers 3

    .line 244
    iget-object v0, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->La:Ljava/util/List;

    if-eqz v0, :cond_11

    .line 245
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;

    return-object v0

    :cond_11
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;

    return-object v0
.end method

.method public ToByteData()[B
    .registers 5

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 315
    iget-object v1, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->La:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_39

    const/4 v1, 0x0

    .line 317
    :goto_b
    iget-object v3, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->La:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_14

    goto :goto_39

    .line 320
    :cond_14
    iget-object v3, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->La:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;

    iget-short v3, v3, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;->addr:S

    invoke-static {v3}, Lcom/uhf/api/cls/R2000_calibration;->shortTolistbytes(S)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 321
    iget-object v3, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->La:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;

    iget v3, v3, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA$Adpair;->val:I

    invoke-static {v3}, Lcom/uhf/api/cls/R2000_calibration;->intTolistbytes(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 325
    :cond_39
    :goto_39
    iget-object v1, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->Lad:Ljava/util/List;

    if-eqz v1, :cond_5c

    .line 327
    :goto_3d
    iget-object v1, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->Lad:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v2, v1, :cond_46

    goto :goto_5c

    .line 329
    :cond_46
    iget-object v1, p0, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;->Lad:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-static {v1}, Lcom/uhf/api/cls/R2000_calibration;->shortTolistbytes(S)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 333
    :cond_5c
    :goto_5c
    invoke-static {v0}, Lcom/uhf/api/cls/R2000_calibration;->ListBtobytes(Ljava/util/List;)[B

    move-result-object v0

    return-object v0
.end method
