.class public synthetic L$r8$backportedMethods$utility$Objects$2$toStringDefault;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_3

    goto :goto_7

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_7
    return-object p1
.end method
