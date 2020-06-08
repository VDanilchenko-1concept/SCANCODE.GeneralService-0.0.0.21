.class public Lcom/speedata/libutils/ReflectUtils;
.super Ljava/lang/Object;
.source "ReflectUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/speedata/libutils/ReflectUtils$ReflectException;,
        Lcom/speedata/libutils/ReflectUtils$NULL;
    }
.end annotation


# instance fields
.field private final object:Ljava/lang/Object;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p1}, Lcom/speedata/libutils/ReflectUtils;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/speedata/libutils/ReflectUtils;->type:Ljava/lang/Class;

    .line 34
    iput-object p2, p0, Lcom/speedata/libutils/ReflectUtils;->object:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/speedata/libutils/ReflectUtils;Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lcom/speedata/libutils/ReflectUtils;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/speedata/libutils/ReflectUtils;)Ljava/lang/Object;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/speedata/libutils/ReflectUtils;->object:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 23
    invoke-static {p0}, Lcom/speedata/libutils/ReflectUtils;->property(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/reflect/AccessibleObject;",
            ">(TT;)TT;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 409
    :cond_4
    instance-of v0, p1, Ljava/lang/reflect/Member;

    if-eqz v0, :cond_24

    .line 410
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Member;

    .line 411
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 412
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_24

    return-object p1

    .line 416
    :cond_24
    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_2e

    const/4 v0, 0x1

    .line 417
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_2e
    return-object p1
.end method

.method private exactMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 317
    invoke-direct {p0}, Lcom/speedata/libutils/ReflectUtils;->type()Ljava/lang/Class;

    move-result-object v0

    .line 319
    :try_start_4
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p1

    .line 323
    :catch_9
    :goto_9
    :try_start_9
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_d} :catch_e

    return-object p1

    .line 326
    :catch_e
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_15

    goto :goto_9

    .line 328
    :cond_15
    new-instance p1, Ljava/lang/NoSuchMethodException;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodException;-><init>()V

    goto :goto_1c

    :goto_1b
    throw p1

    :goto_1c
    goto :goto_1b
.end method

.method private static forName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 92
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 94
    new-instance v0, Lcom/speedata/libutils/ReflectUtils$ReflectException;

    invoke-direct {v0, p0}, Lcom/speedata/libutils/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static forName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 100
    :try_start_1
    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_5} :catch_6

    return-object p0

    :catch_6
    move-exception p0

    .line 102
    new-instance p1, Lcom/speedata/libutils/ReflectUtils$ReflectException;

    invoke-direct {p1, p0}, Lcom/speedata/libutils/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private getAccessibleField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5

    .line 241
    invoke-direct {p0}, Lcom/speedata/libutils/ReflectUtils;->type()Ljava/lang/Class;

    move-result-object v0

    .line 243
    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/speedata/libutils/ReflectUtils;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;
    :try_end_e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_e} :catch_f

    return-object v1

    :catch_f
    move-exception v1

    .line 247
    :goto_10
    :try_start_10
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/speedata/libutils/ReflectUtils;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_10 .. :try_end_1a} :catch_1b

    return-object v2

    :catch_1b
    nop

    .line 250
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_23

    goto :goto_10

    .line 252
    :cond_23
    new-instance p1, Lcom/speedata/libutils/ReflectUtils$ReflectException;

    invoke-direct {p1, v1}, Lcom/speedata/libutils/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2a

    :goto_29
    throw p1

    :goto_2a
    goto :goto_29
.end method

.method private varargs getArgsType([Ljava/lang/Object;)[Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_6

    new-array p1, v0, [Ljava/lang/Class;

    return-object p1

    .line 150
    :cond_6
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/Class;

    .line 151
    :goto_9
    array-length v2, p1

    if-ge v0, v2, :cond_1c

    .line 152
    aget-object v2, p1, v0

    if-nez v2, :cond_13

    .line 153
    const-class v2, Lcom/speedata/libutils/ReflectUtils$NULL;

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_17
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1c
    return-object v1
.end method

.method private getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 227
    invoke-direct {p0, p1}, Lcom/speedata/libutils/ReflectUtils;->getAccessibleField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 228
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_22

    .line 230
    :try_start_d
    const-class v0, Ljava/lang/reflect/Field;

    const-string v1, "modifiers"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 232
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, -0x11

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_22
    .catch Ljava/lang/NoSuchFieldException; {:try_start_d .. :try_end_22} :catch_22

    :catch_22
    :cond_22
    return-object p1
.end method

.method private isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 386
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 387
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/speedata/libutils/ReflectUtils;->match([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method private match([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 391
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_28

    const/4 v0, 0x0

    .line 392
    :goto_6
    array-length v1, p2

    if-ge v0, v1, :cond_26

    .line 393
    aget-object v1, p2, v0

    const-class v3, Lcom/speedata/libutils/ReflectUtils$NULL;

    if-eq v1, v3, :cond_23

    aget-object v1, p1, v0

    .line 394
    invoke-direct {p0, v1}, Lcom/speedata/libutils/ReflectUtils;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    aget-object v3, p2, v0

    invoke-direct {p0, v3}, Lcom/speedata/libutils/ReflectUtils;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_23

    :cond_22
    return v2

    :cond_23
    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_26
    const/4 p1, 0x1

    return p1

    :cond_28
    return v2
.end method

.method private varargs method(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/speedata/libutils/ReflectUtils;
    .registers 6

    .line 303
    :try_start_0
    invoke-direct {p0, p1}, Lcom/speedata/libutils/ReflectUtils;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    .line 304
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_13

    .line 305
    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    invoke-static {p2}, Lcom/speedata/libutils/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/speedata/libutils/ReflectUtils;

    move-result-object p1

    return-object p1

    .line 308
    :cond_13
    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/speedata/libutils/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/speedata/libutils/ReflectUtils;

    move-result-object p1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object p1

    :catch_1c
    move-exception p1

    .line 311
    new-instance p2, Lcom/speedata/libutils/ReflectUtils$ReflectException;

    invoke-direct {p2, p1}, Lcom/speedata/libutils/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private varargs newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lcom/speedata/libutils/ReflectUtils;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/speedata/libutils/ReflectUtils;"
        }
    .end annotation

    .line 181
    :try_start_0
    new-instance v0, Lcom/speedata/libutils/ReflectUtils;

    .line 182
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 183
    invoke-direct {p0, p1}, Lcom/speedata/libutils/ReflectUtils;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Constructor;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/speedata/libutils/ReflectUtils;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception p1

    .line 186
    new-instance p2, Lcom/speedata/libutils/ReflectUtils$ReflectException;

    invoke-direct {p2, p1}, Lcom/speedata/libutils/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static property(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 471
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    const-string p0, ""

    return-object p0

    :cond_9
    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 476
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 478
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static reflect(Ljava/lang/Class;)Lcom/speedata/libutils/ReflectUtils;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/speedata/libutils/ReflectUtils;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/speedata/libutils/ReflectUtils$ReflectException;
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/speedata/libutils/ReflectUtils;

    invoke-direct {v0, p0}, Lcom/speedata/libutils/ReflectUtils;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static reflect(Ljava/lang/Object;)Lcom/speedata/libutils/ReflectUtils;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/speedata/libutils/ReflectUtils$ReflectException;
        }
    .end annotation

    .line 87
    new-instance v0, Lcom/speedata/libutils/ReflectUtils;

    if-nez p0, :cond_7

    const-class v1, Ljava/lang/Object;

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_b
    invoke-direct {v0, v1, p0}, Lcom/speedata/libutils/ReflectUtils;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static reflect(Ljava/lang/String;)Lcom/speedata/libutils/ReflectUtils;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/speedata/libutils/ReflectUtils$ReflectException;
        }
    .end annotation

    .line 50
    invoke-static {p0}, Lcom/speedata/libutils/ReflectUtils;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/speedata/libutils/ReflectUtils;->reflect(Ljava/lang/Class;)Lcom/speedata/libutils/ReflectUtils;

    move-result-object p0

    return-object p0
.end method

.method public static reflect(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/speedata/libutils/ReflectUtils;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/speedata/libutils/ReflectUtils$ReflectException;
        }
    .end annotation

    .line 63
    invoke-static {p0, p1}, Lcom/speedata/libutils/ReflectUtils;->forName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/speedata/libutils/ReflectUtils;->reflect(Ljava/lang/Class;)Lcom/speedata/libutils/ReflectUtils;

    move-result-object p0

    return-object p0
.end method

.method private similarMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 334
    invoke-direct {p0}, Lcom/speedata/libutils/ReflectUtils;->type()Ljava/lang/Class;

    move-result-object v0

    .line 335
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 336
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v3, :cond_20

    aget-object v6, v2, v5

    .line 337
    invoke-direct {p0, v6, p1, p2}, Lcom/speedata/libutils/ReflectUtils;->isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 338
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 341
    :cond_20
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_30

    .line 342
    invoke-direct {p0, v1}, Lcom/speedata/libutils/ReflectUtils;->sortMethods(Ljava/util/List;)V

    .line 343
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Method;

    return-object p1

    .line 346
    :cond_30
    :goto_30
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v5, 0x0

    :goto_36
    if-ge v5, v3, :cond_46

    aget-object v6, v2, v5

    .line 347
    invoke-direct {p0, v6, p1, p2}, Lcom/speedata/libutils/ReflectUtils;->isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 348
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 351
    :cond_46
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_56

    .line 352
    invoke-direct {p0, v1}, Lcom/speedata/libutils/ReflectUtils;->sortMethods(Ljava/util/List;)V

    .line 353
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Method;

    return-object p1

    .line 355
    :cond_56
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_5d

    goto :goto_30

    .line 358
    :cond_5d
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No similar method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with params "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " could be found on type "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/speedata/libutils/ReflectUtils;->type()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    goto :goto_92

    :goto_91
    throw v0

    :goto_92
    goto :goto_91
.end method

.method private sortConstructors(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;)V"
        }
    .end annotation

    .line 159
    new-instance v0, Lcom/speedata/libutils/ReflectUtils$1;

    invoke-direct {v0, p0}, Lcom/speedata/libutils/ReflectUtils$1;-><init>(Lcom/speedata/libutils/ReflectUtils;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private sortMethods(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .line 363
    new-instance v0, Lcom/speedata/libutils/ReflectUtils$2;

    invoke-direct {v0, p0}, Lcom/speedata/libutils/ReflectUtils$2;-><init>(Lcom/speedata/libutils/ReflectUtils;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private type()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/speedata/libutils/ReflectUtils;->type:Ljava/lang/Class;

    return-object v0
.end method

.method private unwrap(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 257
    instance-of v0, p1, Lcom/speedata/libutils/ReflectUtils;

    if-eqz v0, :cond_a

    .line 258
    check-cast p1, Lcom/speedata/libutils/ReflectUtils;

    invoke-virtual {p1}, Lcom/speedata/libutils/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p1

    :cond_a
    return-object p1
.end method

.method private wrapper(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 489
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 490
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_11

    .line 491
    const-class p1, Ljava/lang/Boolean;

    return-object p1

    .line 492
    :cond_11
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_18

    .line 493
    const-class p1, Ljava/lang/Integer;

    return-object p1

    .line 494
    :cond_18
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_1f

    .line 495
    const-class p1, Ljava/lang/Long;

    return-object p1

    .line 496
    :cond_1f
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_26

    .line 497
    const-class p1, Ljava/lang/Short;

    return-object p1

    .line 498
    :cond_26
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_2d

    .line 499
    const-class p1, Ljava/lang/Byte;

    return-object p1

    .line 500
    :cond_2d
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_34

    .line 501
    const-class p1, Ljava/lang/Double;

    return-object p1

    .line 502
    :cond_34
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_3b

    .line 503
    const-class p1, Ljava/lang/Float;

    return-object p1

    .line 504
    :cond_3b
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_42

    .line 505
    const-class p1, Ljava/lang/Character;

    return-object p1

    .line 506
    :cond_42
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_48

    .line 507
    const-class p1, Ljava/lang/Void;

    :cond_48
    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 531
    instance-of v0, p1, Lcom/speedata/libutils/ReflectUtils;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/speedata/libutils/ReflectUtils;->object:Ljava/lang/Object;

    check-cast p1, Lcom/speedata/libutils/ReflectUtils;

    invoke-virtual {p1}, Lcom/speedata/libutils/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public field(Ljava/lang/String;)Lcom/speedata/libutils/ReflectUtils;
    .registers 5

    .line 202
    :try_start_0
    invoke-direct {p0, p1}, Lcom/speedata/libutils/ReflectUtils;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 203
    new-instance v0, Lcom/speedata/libutils/ReflectUtils;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/speedata/libutils/ReflectUtils;->object:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/speedata/libutils/ReflectUtils;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception p1

    .line 205
    new-instance v0, Lcom/speedata/libutils/ReflectUtils$ReflectException;

    invoke-direct {v0, p1}, Lcom/speedata/libutils/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public field(Ljava/lang/String;Ljava/lang/Object;)Lcom/speedata/libutils/ReflectUtils;
    .registers 4

    .line 218
    :try_start_0
    invoke-direct {p0, p1}, Lcom/speedata/libutils/ReflectUtils;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 219
    iget-object v0, p0, Lcom/speedata/libutils/ReflectUtils;->object:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/speedata/libutils/ReflectUtils;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p1

    .line 222
    new-instance p2, Lcom/speedata/libutils/ReflectUtils$ReflectException;

    invoke-direct {p2, p1}, Lcom/speedata/libutils/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lcom/speedata/libutils/ReflectUtils;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 526
    iget-object v0, p0, Lcom/speedata/libutils/ReflectUtils;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public method(Ljava/lang/String;)Lcom/speedata/libutils/ReflectUtils;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/speedata/libutils/ReflectUtils$ReflectException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 275
    invoke-virtual {p0, p1, v0}, Lcom/speedata/libutils/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/speedata/libutils/ReflectUtils;

    move-result-object p1

    return-object p1
.end method

.method public varargs method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/speedata/libutils/ReflectUtils;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/speedata/libutils/ReflectUtils$ReflectException;
        }
    .end annotation

    .line 287
    invoke-direct {p0, p2}, Lcom/speedata/libutils/ReflectUtils;->getArgsType([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    .line 289
    :try_start_4
    invoke-direct {p0, p1, v0}, Lcom/speedata/libutils/ReflectUtils;->exactMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 290
    iget-object v2, p0, Lcom/speedata/libutils/ReflectUtils;->object:Ljava/lang/Object;

    invoke-direct {p0, v1, v2, p2}, Lcom/speedata/libutils/ReflectUtils;->method(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/speedata/libutils/ReflectUtils;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_e} :catch_f

    return-object p1

    .line 293
    :catch_f
    :try_start_f
    invoke-direct {p0, p1, v0}, Lcom/speedata/libutils/ReflectUtils;->similarMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 294
    iget-object v0, p0, Lcom/speedata/libutils/ReflectUtils;->object:Ljava/lang/Object;

    invoke-direct {p0, p1, v0, p2}, Lcom/speedata/libutils/ReflectUtils;->method(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/speedata/libutils/ReflectUtils;

    move-result-object p1
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_19} :catch_1a

    return-object p1

    :catch_1a
    move-exception p1

    .line 296
    new-instance p2, Lcom/speedata/libutils/ReflectUtils$ReflectException;

    invoke-direct {p2, p1}, Lcom/speedata/libutils/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public newInstance()Lcom/speedata/libutils/ReflectUtils;
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 116
    invoke-virtual {p0, v0}, Lcom/speedata/libutils/ReflectUtils;->newInstance([Ljava/lang/Object;)Lcom/speedata/libutils/ReflectUtils;

    move-result-object v0

    return-object v0
.end method

.method public varargs newInstance([Ljava/lang/Object;)Lcom/speedata/libutils/ReflectUtils;
    .registers 11

    .line 126
    invoke-direct {p0, p1}, Lcom/speedata/libutils/ReflectUtils;->getArgsType([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    .line 128
    :try_start_4
    invoke-direct {p0}, Lcom/speedata/libutils/ReflectUtils;->type()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 129
    invoke-direct {p0, v1, p1}, Lcom/speedata/libutils/ReflectUtils;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lcom/speedata/libutils/ReflectUtils;

    move-result-object p1
    :try_end_10
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    move-exception v1

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 132
    invoke-direct {p0}, Lcom/speedata/libutils/ReflectUtils;->type()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_22
    if-ge v6, v4, :cond_36

    aget-object v7, v3, v6

    .line 133
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    invoke-direct {p0, v8, v0}, Lcom/speedata/libutils/ReflectUtils;->match([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_33

    .line 134
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_33
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 137
    :cond_36
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 140
    invoke-direct {p0, v2}, Lcom/speedata/libutils/ReflectUtils;->sortConstructors(Ljava/util/List;)V

    .line 141
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-direct {p0, v0, p1}, Lcom/speedata/libutils/ReflectUtils;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lcom/speedata/libutils/ReflectUtils;

    move-result-object p1

    return-object p1

    .line 138
    :cond_4a
    new-instance p1, Lcom/speedata/libutils/ReflectUtils$ReflectException;

    invoke-direct {p1, v1}, Lcom/speedata/libutils/ReflectUtils$ReflectException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_51

    :goto_50
    throw p1

    :goto_51
    goto :goto_50
.end method

.method public proxy(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/speedata/libutils/ReflectUtils;->object:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    .line 436
    new-instance v1, Lcom/speedata/libutils/ReflectUtils$3;

    invoke-direct {v1, p0, v0}, Lcom/speedata/libutils/ReflectUtils$3;-><init>(Lcom/speedata/libutils/ReflectUtils;Z)V

    .line 462
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 536
    iget-object v0, p0, Lcom/speedata/libutils/ReflectUtils;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
