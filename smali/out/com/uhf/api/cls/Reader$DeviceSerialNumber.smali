.class public Lcom/uhf/api/cls/Reader$DeviceSerialNumber;
.super Ljava/lang/Object;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceSerialNumber"
.end annotation


# instance fields
.field public serailNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/uhf/api/cls/Reader;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/Reader;)V
    .registers 2

    .line 2166
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$DeviceSerialNumber;->this$0:Lcom/uhf/api/cls/Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 2167
    iput-object p1, p0, Lcom/uhf/api/cls/Reader$DeviceSerialNumber;->serailNumber:Ljava/lang/String;

    return-void
.end method
