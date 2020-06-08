.class final Lcom/speedata/libuhf/UHFManager$3;
.super Ljava/lang/Object;
.source "UHFManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/speedata/libuhf/UHFManager;->stopUseUHF()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 219
    invoke-static {}, Lcom/speedata/libuhf/UHFManager;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_29

    .line 221
    invoke-static {}, Lcom/speedata/libuhf/UHFManager;->access$100()Landroid/content/Context;

    move-result-object v0

    const-string v2, "\u7535\u91cf\u4f4e\u6216\u6e29\u5ea6\u8fc7\u9ad8\u7981\u7528\u8d85\u9ad8\u9891"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_36

    .line 223
    :cond_29
    invoke-static {}, Lcom/speedata/libuhf/UHFManager;->access$100()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Low power or high temperature UHF is forbidden"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_36
    return-void
.end method
