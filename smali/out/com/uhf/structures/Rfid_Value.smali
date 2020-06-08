.class public Lcom/uhf/structures/Rfid_Value;
.super Ljava/lang/Object;
.source "Rfid_Value.java"


# instance fields
.field public value:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setValue(I)V
    .registers 2

    .line 9
    iput p1, p0, Lcom/uhf/structures/Rfid_Value;->value:I

    return-void
.end method
