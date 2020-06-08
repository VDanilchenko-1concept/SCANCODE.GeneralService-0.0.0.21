.class public Lcom/uhf/api/cls/R2000_calibration$MAC_DATA;
.super Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;
.source "R2000_calibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/R2000_calibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MAC_DATA"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uhf/api/cls/R2000_calibration;


# direct methods
.method public constructor <init>(Lcom/uhf/api/cls/R2000_calibration;S)V
    .registers 3

    .line 345
    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$MAC_DATA;->this$0:Lcom/uhf/api/cls/R2000_calibration;

    .line 346
    invoke-direct {p0, p1, p2}, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;-><init>(Lcom/uhf/api/cls/R2000_calibration;S)V

    return-void
.end method

.method public constructor <init>(Lcom/uhf/api/cls/R2000_calibration;SI)V
    .registers 4

    .line 340
    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$MAC_DATA;->this$0:Lcom/uhf/api/cls/R2000_calibration;

    .line 341
    invoke-direct {p0, p1, p2, p3}, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;-><init>(Lcom/uhf/api/cls/R2000_calibration;SI)V

    return-void
.end method

.method public constructor <init>(Lcom/uhf/api/cls/R2000_calibration;[B)V
    .registers 3

    .line 350
    iput-object p1, p0, Lcom/uhf/api/cls/R2000_calibration$MAC_DATA;->this$0:Lcom/uhf/api/cls/R2000_calibration;

    .line 351
    invoke-direct {p0, p1, p2}, Lcom/uhf/api/cls/R2000_calibration$OEM_DATA;-><init>(Lcom/uhf/api/cls/R2000_calibration;[B)V

    return-void
.end method
