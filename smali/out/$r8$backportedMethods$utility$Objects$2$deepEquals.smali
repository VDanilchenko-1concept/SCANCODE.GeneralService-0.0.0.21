.class public synthetic L$r8$backportedMethods$utility$Objects$2$deepEquals;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p0, :cond_8

    return v1

    :cond_8
    instance-of v2, p0, [Z

    if-eqz v2, :cond_1d

    instance-of v2, p1, [Z

    if-eqz v2, :cond_1b

    check-cast p0, [Z

    check-cast p1, [Z

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0

    :cond_1d
    instance-of v2, p0, [B

    if-eqz v2, :cond_32

    instance-of v2, p1, [B

    if-eqz v2, :cond_30

    check-cast p0, [B

    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_30

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    return v0

    :cond_32
    instance-of v2, p0, [C

    if-eqz v2, :cond_47

    instance-of v2, p1, [C

    if-eqz v2, :cond_45

    check-cast p0, [C

    check-cast p1, [C

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_45

    goto :goto_46

    :cond_45
    const/4 v0, 0x0

    :goto_46
    return v0

    :cond_47
    instance-of v2, p0, [D

    if-eqz v2, :cond_5c

    instance-of v2, p1, [D

    if-eqz v2, :cond_5a

    check-cast p0, [D

    check-cast p1, [D

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p0

    if-eqz p0, :cond_5a

    goto :goto_5b

    :cond_5a
    const/4 v0, 0x0

    :goto_5b
    return v0

    :cond_5c
    instance-of v2, p0, [F

    if-eqz v2, :cond_71

    instance-of v2, p1, [F

    if-eqz v2, :cond_6f

    check-cast p0, [F

    check-cast p1, [F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    if-eqz p0, :cond_6f

    goto :goto_70

    :cond_6f
    const/4 v0, 0x0

    :goto_70
    return v0

    :cond_71
    instance-of v2, p0, [I

    if-eqz v2, :cond_86

    instance-of v2, p1, [I

    if-eqz v2, :cond_84

    check-cast p0, [I

    check-cast p1, [I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-eqz p0, :cond_84

    goto :goto_85

    :cond_84
    const/4 v0, 0x0

    :goto_85
    return v0

    :cond_86
    instance-of v2, p0, [J

    if-eqz v2, :cond_9b

    instance-of v2, p1, [J

    if-eqz v2, :cond_99

    check-cast p0, [J

    check-cast p1, [J

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p0

    if-eqz p0, :cond_99

    goto :goto_9a

    :cond_99
    const/4 v0, 0x0

    :goto_9a
    return v0

    :cond_9b
    instance-of v2, p0, [S

    if-eqz v2, :cond_b0

    instance-of v2, p1, [S

    if-eqz v2, :cond_ae

    check-cast p0, [S

    check-cast p1, [S

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result p0

    if-eqz p0, :cond_ae

    goto :goto_af

    :cond_ae
    const/4 v0, 0x0

    :goto_af
    return v0

    :cond_b0
    instance-of v2, p0, [Ljava/lang/Object;

    if-eqz v2, :cond_c5

    instance-of v2, p1, [Ljava/lang/Object;

    if-eqz v2, :cond_c3

    check-cast p0, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c3

    goto :goto_c4

    :cond_c3
    const/4 v0, 0x0

    :goto_c4
    return v0

    :cond_c5
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
