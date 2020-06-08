.class public final Lcommon/Assert;
.super Ljava/lang/Object;
.source "Assert.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static verify(Z)V
    .registers 1

    if-eqz p0, :cond_3

    return-void

    .line 37
    :cond_3
    new-instance p0, Lcommon/AssertionFailed;

    invoke-direct {p0}, Lcommon/AssertionFailed;-><init>()V

    throw p0
.end method

.method public static verify(ZLjava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    .line 51
    :cond_3
    new-instance p0, Lcommon/AssertionFailed;

    invoke-direct {p0, p1}, Lcommon/AssertionFailed;-><init>(Ljava/lang/String;)V

    throw p0
.end method
