.class Lorg/apache/commons/lang3/CharRange$CharacterIterator;
.super Ljava/lang/Object;
.source "CharRange.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/CharRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharacterIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# instance fields
.field private current:C

.field private hasNext:Z

.field private final range:Lorg/apache/commons/lang3/CharRange;


# direct methods
.method private constructor <init>(Lorg/apache/commons/lang3/CharRange;)V
    .registers 5

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p1, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang3/CharRange;

    const/4 v0, 0x1

    .line 280
    iput-boolean v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->hasNext:Z

    .line 282
    invoke-static {p1}, Lorg/apache/commons/lang3/CharRange;->access$100(Lorg/apache/commons/lang3/CharRange;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 283
    iget-object p1, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang3/CharRange;

    invoke-static {p1}, Lorg/apache/commons/lang3/CharRange;->access$200(Lorg/apache/commons/lang3/CharRange;)C

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_30

    .line 284
    iget-object p1, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang3/CharRange;

    invoke-static {p1}, Lorg/apache/commons/lang3/CharRange;->access$300(Lorg/apache/commons/lang3/CharRange;)C

    move-result p1

    const v2, 0xffff

    if-ne p1, v2, :cond_25

    .line 286
    iput-boolean v1, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->hasNext:Z

    goto :goto_3b

    .line 288
    :cond_25
    iget-object p1, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang3/CharRange;

    invoke-static {p1}, Lorg/apache/commons/lang3/CharRange;->access$300(Lorg/apache/commons/lang3/CharRange;)C

    move-result p1

    add-int/2addr p1, v0

    int-to-char p1, p1

    iput-char p1, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    goto :goto_3b

    .line 291
    :cond_30
    iput-char v1, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    goto :goto_3b

    .line 294
    :cond_33
    iget-object p1, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang3/CharRange;

    invoke-static {p1}, Lorg/apache/commons/lang3/CharRange;->access$200(Lorg/apache/commons/lang3/CharRange;)C

    move-result p1

    iput-char p1, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    :goto_3b
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/lang3/CharRange;Lorg/apache/commons/lang3/CharRange$1;)V
    .registers 3

    .line 266
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/CharRange$CharacterIterator;-><init>(Lorg/apache/commons/lang3/CharRange;)V

    return-void
.end method

.method private prepareNext()V
    .registers 5

    .line 302
    iget-object v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang3/CharRange;

    invoke-static {v0}, Lorg/apache/commons/lang3/CharRange;->access$100(Lorg/apache/commons/lang3/CharRange;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    .line 303
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    const v2, 0xffff

    if-ne v0, v2, :cond_13

    .line 304
    iput-boolean v1, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->hasNext:Z

    goto :goto_50

    :cond_13
    add-int/lit8 v0, v0, 0x1

    .line 305
    iget-object v3, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang3/CharRange;

    invoke-static {v3}, Lorg/apache/commons/lang3/CharRange;->access$200(Lorg/apache/commons/lang3/CharRange;)C

    move-result v3

    if-ne v0, v3, :cond_34

    .line 306
    iget-object v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang3/CharRange;

    invoke-static {v0}, Lorg/apache/commons/lang3/CharRange;->access$300(Lorg/apache/commons/lang3/CharRange;)C

    move-result v0

    if-ne v0, v2, :cond_28

    .line 307
    iput-boolean v1, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->hasNext:Z

    goto :goto_50

    .line 309
    :cond_28
    iget-object v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang3/CharRange;

    invoke-static {v0}, Lorg/apache/commons/lang3/CharRange;->access$300(Lorg/apache/commons/lang3/CharRange;)C

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    goto :goto_50

    .line 312
    :cond_34
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    goto :goto_50

    .line 314
    :cond_3c
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    iget-object v2, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang3/CharRange;

    invoke-static {v2}, Lorg/apache/commons/lang3/CharRange;->access$300(Lorg/apache/commons/lang3/CharRange;)C

    move-result v2

    if-ge v0, v2, :cond_4e

    .line 315
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    goto :goto_50

    .line 317
    :cond_4e
    iput-boolean v1, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->hasNext:Z

    :goto_50
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 328
    iget-boolean v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->hasNext:Z

    return v0
.end method

.method public next()Ljava/lang/Character;
    .registers 2

    .line 338
    iget-boolean v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->hasNext:Z

    if-eqz v0, :cond_e

    .line 341
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    .line 342
    invoke-direct {p0}, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->prepareNext()V

    .line 343
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    .line 339
    :cond_e
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 266
    invoke-virtual {p0}, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->next()Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .line 354
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
