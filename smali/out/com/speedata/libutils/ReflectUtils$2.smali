.class Lcom/speedata/libutils/ReflectUtils$2;
.super Ljava/lang/Object;
.source "ReflectUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/speedata/libutils/ReflectUtils;->sortMethods(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/speedata/libutils/ReflectUtils;


# direct methods
.method constructor <init>(Lcom/speedata/libutils/ReflectUtils;)V
    .registers 2

    .line 363
    iput-object p1, p0, Lcom/speedata/libutils/ReflectUtils$2;->this$0:Lcom/speedata/libutils/ReflectUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 363
    check-cast p1, Ljava/lang/reflect/Method;

    check-cast p2, Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1, p2}, Lcom/speedata/libutils/ReflectUtils$2;->compare(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I
    .registers 8

    .line 366
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    .line 367
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    .line 368
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_34

    .line 370
    aget-object v3, p1, v2

    aget-object v4, p2, v2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 371
    iget-object v0, p0, Lcom/speedata/libutils/ReflectUtils$2;->this$0:Lcom/speedata/libutils/ReflectUtils;

    aget-object p1, p1, v2

    invoke-static {v0, p1}, Lcom/speedata/libutils/ReflectUtils;->access$000(Lcom/speedata/libutils/ReflectUtils;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Lcom/speedata/libutils/ReflectUtils$2;->this$0:Lcom/speedata/libutils/ReflectUtils;

    aget-object p2, p2, v2

    invoke-static {v0, p2}, Lcom/speedata/libutils/ReflectUtils;->access$000(Lcom/speedata/libutils/ReflectUtils;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2f

    const/4 p1, 0x1

    return p1

    :cond_2f
    const/4 p1, -0x1

    return p1

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_34
    return v1
.end method
