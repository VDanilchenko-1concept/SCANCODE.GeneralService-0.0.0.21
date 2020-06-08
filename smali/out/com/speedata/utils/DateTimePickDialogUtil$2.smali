.class Lcom/speedata/utils/DateTimePickDialogUtil$2;
.super Ljava/lang/Object;
.source "DateTimePickDialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/speedata/utils/DateTimePickDialogUtil;->dateTimePicKDialog(Landroid/widget/TextView;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/speedata/utils/DateTimePickDialogUtil;

.field final synthetic val$inputDate:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/speedata/utils/DateTimePickDialogUtil;Landroid/widget/TextView;)V
    .registers 3

    .line 76
    iput-object p1, p0, Lcom/speedata/utils/DateTimePickDialogUtil$2;->this$0:Lcom/speedata/utils/DateTimePickDialogUtil;

    iput-object p2, p0, Lcom/speedata/utils/DateTimePickDialogUtil$2;->val$inputDate:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 78
    iget-object p1, p0, Lcom/speedata/utils/DateTimePickDialogUtil$2;->val$inputDate:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/speedata/utils/DateTimePickDialogUtil$2;->this$0:Lcom/speedata/utils/DateTimePickDialogUtil;

    invoke-static {p2}, Lcom/speedata/utils/DateTimePickDialogUtil;->access$000(Lcom/speedata/utils/DateTimePickDialogUtil;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
