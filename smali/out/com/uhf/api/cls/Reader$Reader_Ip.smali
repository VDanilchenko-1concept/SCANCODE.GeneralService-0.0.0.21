.class public Lcom/uhf/api/cls/Reader$Reader_Ip;
.super Ljava/lang/Object;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Reader_Ip"
.end annotation


# instance fields
.field public gateway:[B

.field public ip:[B

.field public mask:[B

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/Reader;)V
    .registers 2

    .line 851
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$Reader_Ip;->this$0:Lcom/uhf/api/cls/Reader;

    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
