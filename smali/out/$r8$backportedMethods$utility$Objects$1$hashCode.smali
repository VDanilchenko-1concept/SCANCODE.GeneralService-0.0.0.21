.class public synthetic L$r8$backportedMethods$utility$Objects$1$hashCode;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic hashCode(Ljava/lang/Object;)I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_8
    return p0
.end method
