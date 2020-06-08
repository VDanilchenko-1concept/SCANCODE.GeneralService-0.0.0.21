.class public Lcom/speedata/utils/ProgressDialogUtils;
.super Ljava/lang/Object;
.source "ProgressDialogUtils.java"


# static fields
.field private static mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismissProgressDialog()V
    .registers 1

    .line 32
    sget-object v0, Lcom/speedata/utils/ProgressDialogUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_a

    .line 33
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 34
    sput-object v0, Lcom/speedata/utils/ProgressDialogUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_a
    return-void
.end method

.method public static showProgressDialog(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .registers 3

    .line 20
    sget-object v0, Lcom/speedata/utils/ProgressDialogUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_d

    const-string v0, ""

    .line 21
    invoke-static {p0, v0, p1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object p0

    sput-object p0, Lcom/speedata/utils/ProgressDialogUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_15

    .line 23
    :cond_d
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 24
    sget-object p0, Lcom/speedata/utils/ProgressDialogUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    :goto_15
    return-void
.end method
