.class public Lcom/speedata/libutils/ReadBean$UhfBean;
.super Lcom/speedata/bean/BaseBean;
.source "ReadBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/speedata/libutils/ReadBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UhfBean"
.end annotation


# instance fields
.field private module:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 264
    invoke-direct {p0}, Lcom/speedata/bean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getModule()Ljava/lang/String;
    .registers 2

    .line 269
    iget-object v0, p0, Lcom/speedata/libutils/ReadBean$UhfBean;->module:Ljava/lang/String;

    return-object v0
.end method

.method public setModule(Ljava/lang/String;)V
    .registers 2

    .line 273
    iput-object p1, p0, Lcom/speedata/libutils/ReadBean$UhfBean;->module:Ljava/lang/String;

    return-void
.end method
