.class abstract Ljxl/biff/formula/StringOperator;
.super Ljxl/biff/formula/Operator;
.source "StringOperator.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljxl/biff/formula/Operator;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustRelativeCellReferences(II)V
    .registers 3

    const/4 p1, 0x0

    .line 89
    invoke-static {p1}, Lcommon/Assert;->verify(Z)V

    return-void
.end method

.method columnInserted(IIZ)V
    .registers 4

    const/4 p1, 0x0

    .line 103
    invoke-static {p1}, Lcommon/Assert;->verify(Z)V

    return-void
.end method

.method columnRemoved(IIZ)V
    .registers 4

    const/4 p1, 0x0

    .line 118
    invoke-static {p1}, Lcommon/Assert;->verify(Z)V

    return-void
.end method

.method abstract getBinaryOperator()Ljxl/biff/formula/Operator;
.end method

.method getBytes()[B
    .registers 2

    const/4 v0, 0x0

    .line 69
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOperands(Ljava/util/Stack;)V
    .registers 2

    const/4 p1, 0x0

    .line 48
    invoke-static {p1}, Lcommon/Assert;->verify(Z)V

    return-void
.end method

.method getPrecedence()I
    .registers 2

    const/4 v0, 0x0

    .line 58
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    return v0
.end method

.method getString(Ljava/lang/StringBuffer;)V
    .registers 2

    const/4 p1, 0x0

    .line 78
    invoke-static {p1}, Lcommon/Assert;->verify(Z)V

    return-void
.end method

.method abstract getUnaryOperator()Ljxl/biff/formula/Operator;
.end method

.method rowInserted(IIZ)V
    .registers 4

    const/4 p1, 0x0

    .line 133
    invoke-static {p1}, Lcommon/Assert;->verify(Z)V

    return-void
.end method

.method rowRemoved(IIZ)V
    .registers 4

    const/4 p1, 0x0

    .line 148
    invoke-static {p1}, Lcommon/Assert;->verify(Z)V

    return-void
.end method
