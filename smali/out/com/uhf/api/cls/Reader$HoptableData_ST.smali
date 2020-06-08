.class public Lcom/uhf/api/cls/Reader$HoptableData_ST;
.super Ljava/lang/Object;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HoptableData_ST"
.end annotation


# instance fields
.field public htb:[I

.field public lenhtb:I

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/Reader;)V
    .registers 2

    .line 935
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$HoptableData_ST;->this$0:Lcom/uhf/api/cls/Reader;

    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x64

    new-array p1, p1, [I

    .line 936
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$HoptableData_ST;->htb:[I

    return-void
.end method
