.class Lcom/speedata/libutils/ReflectUtils$3;
.super Ljava/lang/Object;
.source "ReflectUtils.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/speedata/libutils/ReflectUtils;->proxy(Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/speedata/libutils/ReflectUtils;

.field final synthetic val$isMap:Z


# direct methods
.method constructor <init>(Lcom/speedata/libutils/ReflectUtils;Z)V
    .registers 3

    .line 436
    iput-object p1, p0, Lcom/speedata/libutils/ReflectUtils$3;->this$0:Lcom/speedata/libutils/ReflectUtils;

    iput-boolean p2, p0, Lcom/speedata/libutils/ReflectUtils$3;->val$isMap:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 440
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    .line 442
    :try_start_4
    iget-object p2, p0, Lcom/speedata/libutils/ReflectUtils$3;->this$0:Lcom/speedata/libutils/ReflectUtils;

    invoke-static {p2}, Lcom/speedata/libutils/ReflectUtils;->access$100(Lcom/speedata/libutils/ReflectUtils;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/speedata/libutils/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/speedata/libutils/ReflectUtils;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/speedata/libutils/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/speedata/libutils/ReflectUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/speedata/libutils/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_16
    .catch Lcom/speedata/libutils/ReflectUtils$ReflectException; {:try_start_4 .. :try_end_16} :catch_17

    return-object p1

    :catch_17
    move-exception p2

    .line 445
    iget-boolean v0, p0, Lcom/speedata/libutils/ReflectUtils$3;->val$isMap:Z

    if-eqz v0, :cond_74

    .line 446
    iget-object v0, p0, Lcom/speedata/libutils/ReflectUtils$3;->this$0:Lcom/speedata/libutils/ReflectUtils;

    invoke-static {v0}, Lcom/speedata/libutils/ReflectUtils;->access$100(Lcom/speedata/libutils/ReflectUtils;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez p3, :cond_29

    const/4 v2, 0x0

    goto :goto_2a

    .line 447
    :cond_29
    array-length v2, p3

    :goto_2a
    const/4 v3, 0x3

    if-nez v2, :cond_42

    const-string v4, "get"

    .line 449
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 450
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/speedata/libutils/ReflectUtils;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_42
    if-nez v2, :cond_5a

    const-string v4, "is"

    .line 451
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5a

    const/4 p2, 0x2

    .line 452
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/speedata/libutils/ReflectUtils;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5a
    const/4 v4, 0x1

    if-ne v2, v4, :cond_74

    const-string v2, "set"

    .line 453
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 454
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/speedata/libutils/ReflectUtils;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aget-object p2, p3, v1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1

    .line 458
    :cond_74
    throw p2
.end method
