.class public Lorg/apache/commons/lang3/reflect/InheritanceUtils;
.super Ljava/lang/Object;
.source "InheritanceUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static distance(Ljava/lang/Class;Ljava/lang/Class;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p0, :cond_27

    if-nez p1, :cond_6

    goto :goto_27

    .line 54
    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 p0, 0x0

    return p0

    .line 58
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 59
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/lang3/BooleanUtils;->toInteger(Z)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    return v1

    .line 64
    :cond_1e
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/InheritanceUtils;->distance(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result p0

    add-int/2addr v1, p0

    if-lez v1, :cond_27

    add-int/lit8 v0, v1, 0x1

    :cond_27
    :goto_27
    return v0
.end method
