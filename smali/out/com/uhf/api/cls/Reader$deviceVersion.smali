.class public Lcom/uhf/api/cls/Reader$deviceVersion;
.super Ljava/lang/Object;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "deviceVersion"
.end annotation


# instance fields
.field public hardwareVer:Ljava/lang/String;

.field public softwareVer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 925
    iput-object v0, p0, Lcom/uhf/api/cls/Reader$deviceVersion;->hardwareVer:Ljava/lang/String;

    .line 926
    iput-object v0, p0, Lcom/uhf/api/cls/Reader$deviceVersion;->softwareVer:Ljava/lang/String;

    return-void
.end method
