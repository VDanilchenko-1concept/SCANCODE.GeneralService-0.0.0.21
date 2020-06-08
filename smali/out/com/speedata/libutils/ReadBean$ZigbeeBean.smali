.class public Lcom/speedata/libutils/ReadBean$ZigbeeBean;
.super Lcom/speedata/bean/BaseBean;
.source "ReadBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/speedata/libutils/ReadBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZigbeeBean"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 327
    invoke-direct {p0}, Lcom/speedata/bean/BaseBean;-><init>()V

    return-void
.end method
