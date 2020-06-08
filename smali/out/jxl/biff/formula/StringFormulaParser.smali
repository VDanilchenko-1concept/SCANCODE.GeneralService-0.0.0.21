.class Ljxl/biff/formula/StringFormulaParser;
.super Ljava/lang/Object;
.source "StringFormulaParser.java"

# interfaces
.implements Ljxl/biff/formula/Parser;


# static fields
.field static synthetic class$jxl$biff$formula$StringFormulaParser:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private arguments:Ljava/util/Stack;

.field private externalSheet:Ljxl/biff/formula/ExternalSheet;

.field private formula:Ljava/lang/String;

.field private nameTable:Ljxl/biff/WorkbookMethods;

.field private parsedFormula:Ljava/lang/String;

.field private root:Ljxl/biff/formula/ParseItem;

.field private settings:Ljxl/WorkbookSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    sget-object v0, Ljxl/biff/formula/StringFormulaParser;->class$jxl$biff$formula$StringFormulaParser:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "jxl.biff.formula.StringFormulaParser"

    invoke-static {v0}, Ljxl/biff/formula/StringFormulaParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/StringFormulaParser;->class$jxl$biff$formula$StringFormulaParser:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/StringFormulaParser;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V
    .registers 5

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Ljxl/biff/formula/StringFormulaParser;->formula:Ljava/lang/String;

    .line 90
    iput-object p4, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    .line 91
    iput-object p2, p0, Ljxl/biff/formula/StringFormulaParser;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    .line 92
    iput-object p3, p0, Ljxl/biff/formula/StringFormulaParser;->nameTable:Ljxl/biff/WorkbookMethods;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    .line 41
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getTokens()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 258
    new-instance v1, Ljava/io/StringReader;

    iget-object v2, p0, Ljxl/biff/formula/StringFormulaParser;->formula:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 259
    new-instance v2, Ljxl/biff/formula/Yylex;

    invoke-direct {v2, v1}, Ljxl/biff/formula/Yylex;-><init>(Ljava/io/Reader;)V

    .line 260
    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    invoke-virtual {v2, v1}, Ljxl/biff/formula/Yylex;->setExternalSheet(Ljxl/biff/formula/ExternalSheet;)V

    .line 261
    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->nameTable:Ljxl/biff/WorkbookMethods;

    invoke-virtual {v2, v1}, Ljxl/biff/formula/Yylex;->setNameTable(Ljxl/biff/WorkbookMethods;)V

    .line 264
    :try_start_1b
    invoke-virtual {v2}, Ljxl/biff/formula/Yylex;->yylex()Ljxl/biff/formula/ParseItem;

    move-result-object v1

    :goto_1f
    if-eqz v1, :cond_55

    .line 267
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-virtual {v2}, Ljxl/biff/formula/Yylex;->yylex()Ljxl/biff/formula/ParseItem;

    move-result-object v1
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_28} :catch_4b
    .catch Ljava/lang/Error; {:try_start_1b .. :try_end_28} :catch_29

    goto :goto_1f

    .line 277
    :catch_29
    new-instance v0, Ljxl/biff/formula/FormulaException;

    sget-object v1, Ljxl/biff/formula/FormulaException;->LEXICAL_ERROR:Ljxl/biff/formula/FormulaException$FormulaMessage;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Ljxl/biff/formula/StringFormulaParser;->formula:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " at char  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljxl/biff/formula/Yylex;->getPos()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;Ljava/lang/String;)V

    throw v0

    :catch_4b
    move-exception v1

    .line 273
    sget-object v2, Ljxl/biff/formula/StringFormulaParser;->logger:Lcommon/Logger;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    :cond_55
    return-object v0
.end method

.method private handleFunction(Ljxl/biff/formula/StringFunction;Ljava/util/Iterator;Ljava/util/Stack;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 333
    invoke-direct {p0, p2}, Ljxl/biff/formula/StringFormulaParser;->parseCurrent(Ljava/util/Iterator;)Ljxl/biff/formula/ParseItem;

    move-result-object p2

    .line 336
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {p1, v0}, Ljxl/biff/formula/StringFunction;->getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object v0

    sget-object v1, Ljxl/biff/formula/Function;->UNKNOWN:Ljxl/biff/formula/Function;

    if-eq v0, v1, :cond_112

    .line 343
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {p1, v0}, Ljxl/biff/formula/StringFunction;->getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object v0

    sget-object v1, Ljxl/biff/formula/Function;->SUM:Ljxl/biff/formula/Function;

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    if-nez v0, :cond_2a

    .line 346
    new-instance v0, Ljxl/biff/formula/Attribute;

    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v0, p1, v1}, Ljxl/biff/formula/Attribute;-><init>(Ljxl/biff/formula/StringFunction;Ljxl/WorkbookSettings;)V

    .line 347
    invoke-virtual {v0, p2}, Ljxl/biff/formula/Attribute;->add(Ljxl/biff/formula/ParseItem;)V

    .line 348
    invoke-virtual {p3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 352
    :cond_2a
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {p1, v0}, Ljxl/biff/formula/StringFunction;->getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object v0

    sget-object v1, Ljxl/biff/formula/Function;->IF:Ljxl/biff/formula/Function;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_60

    .line 355
    new-instance p2, Ljxl/biff/formula/Attribute;

    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {p2, p1, v0}, Ljxl/biff/formula/Attribute;-><init>(Ljxl/biff/formula/StringFunction;Ljxl/WorkbookSettings;)V

    .line 359
    new-instance p1, Ljxl/biff/formula/VariableArgFunction;

    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {p1, v0}, Ljxl/biff/formula/VariableArgFunction;-><init>(Ljxl/WorkbookSettings;)V

    .line 360
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    :goto_49
    if-ge v2, v0, :cond_59

    .line 363
    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/formula/ParseItem;

    .line 364
    invoke-virtual {p1, v1}, Ljxl/biff/formula/VariableArgFunction;->add(Ljxl/biff/formula/ParseItem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 367
    :cond_59
    invoke-virtual {p2, p1}, Ljxl/biff/formula/Attribute;->setIfConditions(Ljxl/biff/formula/VariableArgFunction;)V

    .line 368
    invoke-virtual {p3, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 374
    :cond_60
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {p1, v0}, Ljxl/biff/formula/StringFunction;->getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/biff/formula/Function;->getNumArgs()I

    move-result v0

    const/16 v1, 0xff

    const/4 v3, 0x1

    if-ne v0, v1, :cond_c8

    .line 379
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    if-nez v0, :cond_8c

    if-eqz p2, :cond_76

    const/4 v2, 0x1

    .line 382
    :cond_76
    new-instance v0, Ljxl/biff/formula/VariableArgFunction;

    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {p1, v1}, Ljxl/biff/formula/StringFunction;->getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object p1

    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v0, p1, v2, v1}, Ljxl/biff/formula/VariableArgFunction;-><init>(Ljxl/biff/formula/Function;ILjxl/WorkbookSettings;)V

    if-eqz p2, :cond_88

    .line 387
    invoke-virtual {v0, p2}, Ljxl/biff/formula/VariableArgFunction;->add(Ljxl/biff/formula/ParseItem;)V

    .line 390
    :cond_88
    invoke-virtual {p3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c7

    .line 395
    :cond_8c
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result p2

    .line 396
    new-instance v0, Ljxl/biff/formula/VariableArgFunction;

    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {p1, v1}, Ljxl/biff/formula/StringFunction;->getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object p1

    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v0, p1, p2, v1}, Ljxl/biff/formula/VariableArgFunction;-><init>(Ljxl/biff/formula/Function;ILjxl/WorkbookSettings;)V

    .line 399
    new-array p1, p2, [Ljxl/biff/formula/ParseItem;

    const/4 v1, 0x0

    :goto_a0
    if-ge v1, p2, :cond_b2

    .line 402
    iget-object v4, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljxl/biff/formula/ParseItem;

    sub-int v5, p2, v1

    sub-int/2addr v5, v3

    .line 403
    aput-object v4, p1, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_a0

    :cond_b2
    :goto_b2
    if-ge v2, p2, :cond_bc

    .line 408
    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljxl/biff/formula/VariableArgFunction;->add(Ljxl/biff/formula/ParseItem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b2

    .line 410
    :cond_bc
    invoke-virtual {p3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object p1, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    const/4 p1, 0x0

    .line 412
    iput-object p1, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    :goto_c7
    return-void

    .line 418
    :cond_c8
    new-instance v0, Ljxl/biff/formula/BuiltInFunction;

    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {p1, v1}, Ljxl/biff/formula/StringFunction;->getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object v1

    iget-object v4, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v0, v1, v4}, Ljxl/biff/formula/BuiltInFunction;-><init>(Ljxl/biff/formula/Function;Ljxl/WorkbookSettings;)V

    .line 421
    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {p1, v1}, Ljxl/biff/formula/StringFunction;->getFunction(Ljxl/WorkbookSettings;)Ljxl/biff/formula/Function;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/biff/formula/Function;->getNumArgs()I

    move-result p1

    if-ne p1, v3, :cond_e5

    .line 425
    invoke-virtual {v0, p2}, Ljxl/biff/formula/BuiltInFunction;->add(Ljxl/biff/formula/ParseItem;)V

    goto :goto_10e

    .line 429
    :cond_e5
    iget-object p2, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    if-nez p2, :cond_eb

    if-nez p1, :cond_f6

    :cond_eb
    iget-object p2, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    if-eqz p2, :cond_fe

    invoke-virtual {p2}, Ljava/util/Stack;->size()I

    move-result p2

    if-ne p1, p2, :cond_f6

    goto :goto_fe

    .line 432
    :cond_f6
    new-instance p1, Ljxl/biff/formula/FormulaException;

    sget-object p2, Ljxl/biff/formula/FormulaException;->INCORRECT_ARGUMENTS:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {p1, p2}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;)V

    throw p1

    :cond_fe
    :goto_fe
    if-ge v2, p1, :cond_10e

    .line 439
    iget-object p2, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    invoke-virtual {p2, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljxl/biff/formula/ParseItem;

    .line 440
    invoke-virtual {v0, p2}, Ljxl/biff/formula/BuiltInFunction;->add(Ljxl/biff/formula/ParseItem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_fe

    .line 443
    :cond_10e
    :goto_10e
    invoke-virtual {p3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 338
    :cond_112
    new-instance p1, Ljxl/biff/formula/FormulaException;

    sget-object p2, Ljxl/biff/formula/FormulaException;->UNRECOGNIZED_FUNCTION:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {p1, p2}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;)V

    goto :goto_11b

    :goto_11a
    throw p1

    :goto_11b
    goto :goto_11a
.end method

.method private handleOperand(Ljxl/biff/formula/Operand;Ljava/util/Stack;)V
    .registers 6

    .line 526
    instance-of v0, p1, Ljxl/biff/formula/IntegerValue;

    if-nez v0, :cond_8

    .line 528
    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_8
    if-eqz v0, :cond_22

    .line 534
    check-cast p1, Ljxl/biff/formula/IntegerValue;

    .line 535
    invoke-virtual {p1}, Ljxl/biff/formula/IntegerValue;->isOutOfRange()Z

    move-result v0

    if-nez v0, :cond_16

    .line 537
    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 542
    :cond_16
    new-instance v0, Ljxl/biff/formula/DoubleValue;

    invoke-virtual {p1}, Ljxl/biff/formula/IntegerValue;->getValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljxl/biff/formula/DoubleValue;-><init>(D)V

    .line 543
    invoke-virtual {p2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    :goto_22
    return-void
.end method

.method private parseCurrent(Ljava/util/Iterator;)Ljxl/biff/formula/ParseItem;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 120
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move-object v5, v4

    .line 126
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c8

    if-nez v3, :cond_c8

    .line 128
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljxl/biff/formula/ParseItem;

    .line 130
    instance-of v7, v6, Ljxl/biff/formula/Operand;

    if-eqz v7, :cond_28

    .line 132
    move-object v5, v6

    check-cast v5, Ljxl/biff/formula/Operand;

    invoke-direct {p0, v5, v0}, Ljxl/biff/formula/StringFormulaParser;->handleOperand(Ljxl/biff/formula/Operand;Ljava/util/Stack;)V

    goto/16 :goto_c5

    .line 134
    :cond_28
    instance-of v7, v6, Ljxl/biff/formula/StringFunction;

    if-eqz v7, :cond_34

    .line 136
    move-object v5, v6

    check-cast v5, Ljxl/biff/formula/StringFunction;

    invoke-direct {p0, v5, p1, v0}, Ljxl/biff/formula/StringFormulaParser;->handleFunction(Ljxl/biff/formula/StringFunction;Ljava/util/Iterator;Ljava/util/Stack;)V

    goto/16 :goto_c5

    .line 138
    :cond_34
    instance-of v7, v6, Ljxl/biff/formula/Operator;

    if-eqz v7, :cond_80

    .line 140
    move-object v7, v6

    check-cast v7, Ljxl/biff/formula/Operator;

    .line 145
    instance-of v8, v7, Ljxl/biff/formula/StringOperator;

    if-eqz v8, :cond_55

    .line 147
    check-cast v7, Ljxl/biff/formula/StringOperator;

    .line 148
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_51

    instance-of v5, v5, Ljxl/biff/formula/Operator;

    if-eqz v5, :cond_4c

    goto :goto_51

    .line 154
    :cond_4c
    invoke-virtual {v7}, Ljxl/biff/formula/StringOperator;->getBinaryOperator()Ljxl/biff/formula/Operator;

    move-result-object v7

    goto :goto_55

    .line 150
    :cond_51
    :goto_51
    invoke-virtual {v7}, Ljxl/biff/formula/StringOperator;->getUnaryOperator()Ljxl/biff/formula/Operator;

    move-result-object v7

    .line 158
    :cond_55
    :goto_55
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 161
    invoke-virtual {v1, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c5

    .line 165
    :cond_5f
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljxl/biff/formula/Operator;

    .line 169
    invoke-virtual {v7}, Ljxl/biff/formula/Operator;->getPrecedence()I

    move-result v8

    invoke-virtual {v5}, Ljxl/biff/formula/Operator;->getPrecedence()I

    move-result v9

    if-gt v8, v9, :cond_73

    .line 171
    invoke-virtual {v1, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c5

    .line 177
    :cond_73
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 178
    invoke-virtual {v5, v0}, Ljxl/biff/formula/Operator;->getOperands(Ljava/util/Stack;)V

    .line 179
    invoke-virtual {v0, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-virtual {v1, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c5

    .line 184
    :cond_80
    instance-of v5, v6, Ljxl/biff/formula/ArgumentSeparator;

    if-eqz v5, :cond_a9

    .line 187
    :goto_84
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_97

    .line 189
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljxl/biff/formula/Operator;

    .line 190
    invoke-virtual {v5, v0}, Ljxl/biff/formula/Operator;->getOperands(Ljava/util/Stack;)V

    .line 191
    invoke-virtual {v0, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_84

    :cond_97
    if-nez v4, :cond_9e

    .line 199
    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    .line 202
    :cond_9e
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    goto :goto_c5

    .line 205
    :cond_a9
    instance-of v5, v6, Ljxl/biff/formula/OpenParentheses;

    if-eqz v5, :cond_c0

    .line 207
    invoke-direct {p0, p1}, Ljxl/biff/formula/StringFormulaParser;->parseCurrent(Ljava/util/Iterator;)Ljxl/biff/formula/ParseItem;

    move-result-object v5

    .line 208
    new-instance v7, Ljxl/biff/formula/Parenthesis;

    invoke-direct {v7}, Ljxl/biff/formula/Parenthesis;-><init>()V

    .line 209
    invoke-virtual {v5, v7}, Ljxl/biff/formula/ParseItem;->setParent(Ljxl/biff/formula/ParseItem;)V

    .line 210
    invoke-virtual {v7, v5}, Ljxl/biff/formula/Parenthesis;->add(Ljxl/biff/formula/ParseItem;)V

    .line 211
    invoke-virtual {v0, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c5

    .line 213
    :cond_c0
    instance-of v5, v6, Ljxl/biff/formula/CloseParentheses;

    if-eqz v5, :cond_c5

    const/4 v3, 0x1

    :cond_c5
    :goto_c5
    move-object v5, v6

    goto/16 :goto_e

    .line 221
    :cond_c8
    :goto_c8
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_db

    .line 223
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/biff/formula/Operator;

    .line 224
    invoke-virtual {p1, v0}, Ljxl/biff/formula/Operator;->getOperands(Ljava/util/Stack;)V

    .line 225
    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c8

    .line 228
    :cond_db
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result p1

    if-nez p1, :cond_e8

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljxl/biff/formula/ParseItem;

    :cond_e8
    if-eqz v4, :cond_ef

    if-eqz v2, :cond_ef

    .line 234
    invoke-virtual {v4, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_ef
    iput-object v4, p0, Ljxl/biff/formula/StringFormulaParser;->arguments:Ljava/util/Stack;

    .line 239
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result p1

    if-eqz p1, :cond_fd

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result p1

    if-nez p1, :cond_11a

    .line 241
    :cond_fd
    sget-object p1, Ljxl/biff/formula/StringFormulaParser;->logger:Lcommon/Logger;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Formula "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->formula:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " has a non-empty parse stack"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    :cond_11a
    return-object v2
.end method


# virtual methods
.method public adjustRelativeCellReferences(II)V
    .registers 4

    .line 454
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0, p1, p2}, Ljxl/biff/formula/ParseItem;->adjustRelativeCellReferences(II)V

    return-void
.end method

.method public columnInserted(IIZ)V
    .registers 5

    .line 469
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnInserted(IIZ)V

    return-void
.end method

.method public columnRemoved(IIZ)V
    .registers 5

    .line 485
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->columnRemoved(IIZ)V

    return-void
.end method

.method public getBytes()[B
    .registers 6

    .line 307
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0}, Ljxl/biff/formula/ParseItem;->getBytes()[B

    move-result-object v0

    .line 309
    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v1}, Ljxl/biff/formula/ParseItem;->isVolatile()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 311
    array-length v1, v0

    const/4 v2, 0x4

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 312
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    sget-object v0, Ljxl/biff/formula/Token;->ATTRIBUTE:Ljxl/biff/formula/Token;

    invoke-virtual {v0}, Ljxl/biff/formula/Token;->getCode()B

    move-result v0

    aput-byte v0, v1, v4

    const/4 v0, 0x1

    .line 314
    aput-byte v0, v1, v0

    move-object v0, v1

    :cond_24
    return-object v0
.end method

.method public getFormula()Ljava/lang/String;
    .registers 3

    .line 290
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->parsedFormula:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 292
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 293
    iget-object v1, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v1, v0}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    .line 294
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->parsedFormula:Ljava/lang/String;

    .line 297
    :cond_14
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->parsedFormula:Ljava/lang/String;

    return-object v0
.end method

.method public handleImportedCellReferences()Z
    .registers 2

    .line 556
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0}, Ljxl/biff/formula/ParseItem;->handleImportedCellReferences()V

    .line 557
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0}, Ljxl/biff/formula/ParseItem;->isValid()Z

    move-result v0

    return v0
.end method

.method public parse()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljxl/biff/formula/StringFormulaParser;->getTokens()Ljava/util/ArrayList;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 106
    invoke-direct {p0, v0}, Ljxl/biff/formula/StringFormulaParser;->parseCurrent(Ljava/util/Iterator;)Ljxl/biff/formula/ParseItem;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    return-void
.end method

.method public rowInserted(IIZ)V
    .registers 5

    .line 500
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowInserted(IIZ)V

    return-void
.end method

.method public rowRemoved(IIZ)V
    .registers 5

    .line 515
    iget-object v0, p0, Ljxl/biff/formula/StringFormulaParser;->root:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0, p1, p2, p3}, Ljxl/biff/formula/ParseItem;->rowRemoved(IIZ)V

    return-void
.end method
