.class Ljxl/biff/formula/Minus;
.super Ljxl/biff/formula/StringOperator;
.source "Minus.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljxl/biff/formula/StringOperator;-><init>()V

    return-void
.end method


# virtual methods
.method getBinaryOperator()Ljxl/biff/formula/Operator;
    .registers 2

    .line 43
    new-instance v0, Ljxl/biff/formula/Subtract;

    invoke-direct {v0}, Ljxl/biff/formula/Subtract;-><init>()V

    return-object v0
.end method

.method getUnaryOperator()Ljxl/biff/formula/Operator;
    .registers 2

    .line 51
    new-instance v0, Ljxl/biff/formula/UnaryMinus;

    invoke-direct {v0}, Ljxl/biff/formula/UnaryMinus;-><init>()V

    return-object v0
.end method

.method handleImportedCellReferences()V
    .registers 1

    return-void
.end method
